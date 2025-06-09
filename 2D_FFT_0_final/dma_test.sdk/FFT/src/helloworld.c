#include <stdio.h>
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include "data.h"

// ������������
#define DMA_DEV_ID          XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR       XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define TX_BUFFER_BASE      (DDR_BASE_ADDR + 0x01000000)
#define RX_BUFFER_BASE      (DDR_BASE_ADDR + 0x02000000)
#define TIMEOUT_LIMIT       0x1000000

// ȫ�ֱ�������
XAxiDma AxiDma;
u32 *TxBufferPtr = (u32 *)TX_BUFFER_BASE;  // ����ȫ�ַ�Χ
u32 *RxBufferPtr = (u32 *)RX_BUFFER_BASE;  // ����ȫ�ַ�Χ

static int init_dma(void)
{
    XAxiDma_Config *Config;
    int Status;
    Config = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!Config) {
        xil_printf("No config found for %d\r\n", DMA_DEV_ID);
        return XST_FAILURE;
    }
    Status = XAxiDma_CfgInitialize(&AxiDma, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }
    if(XAxiDma_HasSg(&AxiDma)){
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }
    XAxiDma_Reset(&AxiDma);
    while (!XAxiDma_ResetIsDone(&AxiDma)) {}
    return XST_SUCCESS;
}

int main(void)
{
    int Status;
    volatile int Timeout;
    
    // ��ʼ��DMA
    Status = init_dma();
    if (Status != XST_SUCCESS) {
        xil_printf("DMA init failed\r\n");
        return XST_FAILURE;
    }
    
    // ׼����������
    for(int i = 0; i < TOTAL_POINTS; i++) {
        TxBufferPtr[i] = ((u32)(sarData[i].real & 0xFFFF) << 16) |
                         (sarData[i].imag & 0xFFFF);
    }
    
    // ˢ�»���
    Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, TOTAL_POINTS * sizeof(u32));
    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, TOTAL_POINTS * sizeof(u32));
    
    // ���ý���
    Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RxBufferPtr,
                                   TOTAL_POINTS * sizeof(u32),
                                   XAXIDMA_DEVICE_TO_DMA);
    if (Status != XST_SUCCESS) {
        xil_printf("RX transfer setup failed\r\n");
        return XST_FAILURE;
    }
    
    // ���÷���
    Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)TxBufferPtr,
                                   TOTAL_POINTS * sizeof(u32),
                                   XAXIDMA_DMA_TO_DEVICE);
    if (Status != XST_SUCCESS) {
        xil_printf("TX transfer setup failed\r\n");
        return XST_FAILURE;
    }
    
    // �ȴ��������
    Timeout = TIMEOUT_LIMIT;
    while (Timeout) {
        if (!(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE) ||
              XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA))) {
            break;
        }
        Timeout--;
    }
    
    if (!Timeout) {
        xil_printf("Transfer timeout\r\n");
        return XST_FAILURE;
    }
    
    // ��Ч������
    Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, TOTAL_POINTS * sizeof(u32));
    
    // MATLAB�Ѻø�ʽ���
    xil_printf("result = [\n");
    for(int i = 0; i < TOTAL_POINTS; i++) {
        int16_t real = (int16_t)(RxBufferPtr[i] >> 16);
        int16_t imag = (int16_t)(RxBufferPtr[i] & 0xFFFF);
        xil_printf("%d %d", imag, real);
        if(i < TOTAL_POINTS-1) {
            xil_printf(";\n");
        } else {
            xil_printf("\n");
        }
    }
    xil_printf("];\n");
    xil_printf("result_matrix = reshape(result, [256, 16]);\n");
    xil_printf("complex_data = complex(result_matrix(:,1), result_matrix(:,2));\n");
    
    return XST_SUCCESS;
}