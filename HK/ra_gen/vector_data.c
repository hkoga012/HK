/* generated vector source file - do not edit */
#include "bsp_api.h"
/* Do not build these data structures if no interrupts are currently allocated because IAR will have build errors. */
#if VECTOR_DATA_IRQ_COUNT > 0
        BSP_DONT_REMOVE const fsp_vector_t g_vector_table[BSP_ICU_VECTOR_MAX_ENTRIES] BSP_PLACE_IN_SECTION(BSP_SECTION_APPLICATION_VECTORS) =
        {
                        [0] = sci_uart_rxi_isr, /* SCI1 RXI (Received data full) */
            [1] = sci_uart_txi_isr, /* SCI1 TXI (Transmit data empty) */
            [2] = sci_uart_tei_isr, /* SCI1 TEI (Transmit end) */
            [3] = agt_int_isr, /* AGT0 INT (AGT interrupt) */
            [4] = sci_uart_rxi_isr, /* SCI2 RXI (Receive data full) */
            [5] = sci_uart_txi_isr, /* SCI2 TXI (Transmit data empty) */
            [6] = sci_uart_tei_isr, /* SCI2 TEI (Transmit end) */
            [7] = sci_uart_eri_isr, /* SCI2 ERI (Receive error) */
            [8] = sci_uart_rxi_isr, /* SCI3 RXI (Receive data full) */
            [9] = sci_uart_txi_isr, /* SCI3 TXI (Transmit data empty) */
            [10] = sci_uart_tei_isr, /* SCI3 TEI (Transmit end) */
            [11] = sci_uart_eri_isr, /* SCI1 ERI (Receive error) */
            [12] = spi_rxi_isr, /* SPI1 RXI (Receive buffer full) */
            [13] = spi_txi_isr, /* SPI1 TXI (Transmit buffer empty) */
            [14] = spi_tei_isr, /* SPI1 TEI (Transmission complete event) */
            [15] = spi_eri_isr, /* SPI1 ERI (Error) */
            [16] = gpt_counter_overflow_isr, /* GPT3 COUNTER OVERFLOW (Overflow) */
            [17] = sci_uart_txi_isr, /* SCI0 TXI (Transmit data empty) */
            [18] = sci_uart_tei_isr, /* SCI0 TEI (Transmit end) */
            [19] = sci_uart_eri_isr, /* SCI3 ERI (Receive error) */
            [20] = sci_uart_rxi_isr, /* SCI0 RXI (Receive data full) */
            [21] = r_icu_isr, /* ICU IRQ1 (External pin interrupt 1) */
            [22] = fcu_frdyi_isr, /* FCU FRDYI (Flash ready interrupt) */
            [23] = sci_uart_eri_isr, /* SCI0 ERI (Receive error) */
            [24] = agt_int_isr, /* AGT1 INT (AGT interrupt) */
        };
        const bsp_interrupt_event_t g_interrupt_event_link_select[BSP_ICU_VECTOR_MAX_ENTRIES] =
        {
            [0] = BSP_PRV_IELS_ENUM(EVENT_SCI1_RXI), /* SCI1 RXI (Received data full) */
            [1] = BSP_PRV_IELS_ENUM(EVENT_SCI1_TXI), /* SCI1 TXI (Transmit data empty) */
            [2] = BSP_PRV_IELS_ENUM(EVENT_SCI1_TEI), /* SCI1 TEI (Transmit end) */
            [3] = BSP_PRV_IELS_ENUM(EVENT_AGT0_INT), /* AGT0 INT (AGT interrupt) */
            [4] = BSP_PRV_IELS_ENUM(EVENT_SCI2_RXI), /* SCI2 RXI (Receive data full) */
            [5] = BSP_PRV_IELS_ENUM(EVENT_SCI2_TXI), /* SCI2 TXI (Transmit data empty) */
            [6] = BSP_PRV_IELS_ENUM(EVENT_SCI2_TEI), /* SCI2 TEI (Transmit end) */
            [7] = BSP_PRV_IELS_ENUM(EVENT_SCI2_ERI), /* SCI2 ERI (Receive error) */
            [8] = BSP_PRV_IELS_ENUM(EVENT_SCI3_RXI), /* SCI3 RXI (Receive data full) */
            [9] = BSP_PRV_IELS_ENUM(EVENT_SCI3_TXI), /* SCI3 TXI (Transmit data empty) */
            [10] = BSP_PRV_IELS_ENUM(EVENT_SCI3_TEI), /* SCI3 TEI (Transmit end) */
            [11] = BSP_PRV_IELS_ENUM(EVENT_SCI1_ERI), /* SCI1 ERI (Receive error) */
            [12] = BSP_PRV_IELS_ENUM(EVENT_SPI1_RXI), /* SPI1 RXI (Receive buffer full) */
            [13] = BSP_PRV_IELS_ENUM(EVENT_SPI1_TXI), /* SPI1 TXI (Transmit buffer empty) */
            [14] = BSP_PRV_IELS_ENUM(EVENT_SPI1_TEI), /* SPI1 TEI (Transmission complete event) */
            [15] = BSP_PRV_IELS_ENUM(EVENT_SPI1_ERI), /* SPI1 ERI (Error) */
            [16] = BSP_PRV_IELS_ENUM(EVENT_GPT3_COUNTER_OVERFLOW), /* GPT3 COUNTER OVERFLOW (Overflow) */
            [17] = BSP_PRV_IELS_ENUM(EVENT_SCI0_TXI), /* SCI0 TXI (Transmit data empty) */
            [18] = BSP_PRV_IELS_ENUM(EVENT_SCI0_TEI), /* SCI0 TEI (Transmit end) */
            [19] = BSP_PRV_IELS_ENUM(EVENT_SCI3_ERI), /* SCI3 ERI (Receive error) */
            [20] = BSP_PRV_IELS_ENUM(EVENT_SCI0_RXI), /* SCI0 RXI (Receive data full) */
            [21] = BSP_PRV_IELS_ENUM(EVENT_ICU_IRQ1), /* ICU IRQ1 (External pin interrupt 1) */
            [22] = BSP_PRV_IELS_ENUM(EVENT_FCU_FRDYI), /* FCU FRDYI (Flash ready interrupt) */
            [23] = BSP_PRV_IELS_ENUM(EVENT_SCI0_ERI), /* SCI0 ERI (Receive error) */
            [24] = BSP_PRV_IELS_ENUM(EVENT_AGT1_INT), /* AGT1 INT (AGT interrupt) */
        };
        #endif
