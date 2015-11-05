
/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de las rutinas de atencion de interrupciones
*/

#include "defines.h"
#include "idt.h"
#include "isr.h"

#include "tss.h"

idt_entry idt[255] = { };

idt_descriptor IDT_DESC = {
    sizeof(idt) - 1,
    (unsigned int) &idt
};

/*
    La siguiente es una macro de EJEMPLO para ayudar a armar entradas de
    interrupciones. Para usar, descomentar y completar CORRECTAMENTE los
    atributos y el registro de segmento. Invocarla desde idt_inicializar() de
    la siguiene manera:

    void idt_inicializar() {
        IDT_ENTRY(0, 0);
        ...
        IDT_ENTRY(19, 0);

        ...
    }
*/


// descomentar para usar, seteando segsel y attr segun corresponda

#define IDT_ENTRY(numero, dpl)                                                                                   \
    idt[numero].offset_0_15 = (unsigned short) ((unsigned int)(&_isr ## numero) & (unsigned int) 0xFFFF);        \
    idt[numero].segsel = (unsigned short) 0x40;                                                                  \
    idt[numero].attr = (unsigned short) 0x8E00 | (((unsigned short)(dpl & 0x3)) << 13);                          \
    idt[numero].offset_16_31 = (unsigned short) ((unsigned int)(&_isr ## numero) >> 16 & (unsigned int) 0xFFFF);

/* Attributes = 0x8E00 = 10001110 00000000b
 * El primer byte 10001110, corresponde con [P | DPL | S | GateType] 
 * o como esta en los slides de la practica [P | DPL | 0 | D 1 1 0 ]
 * P = Present, va en 1
 * DPL = Descriptor Privilege Level, va en 00 (de por si el macro toca esto)
 * S = Storage selector, va en 0 ya que es una puerta de interrupcion
 * Gatetype = 110, 80386 interrupt gate
 * El segundo byte se llena de zeros (donde la parte baja esta reservada)
 * http://wiki.osdev.org/Interrupt_Descriptor_Table

 * Segsel apunta a el de código nivel 0, (8 << 3)h = 0x40
*/ 


void idt_inicializar() {
    // Excepciones
    IDT_ENTRY(0, 0);     /* Divide error                  */
    IDT_ENTRY(2, 0);     /* NMI Interrupt                 */
    IDT_ENTRY(3, 0);     /* Breakpoint - INT 3            */
    IDT_ENTRY(4, 0);     /* Overflow                      */
    IDT_ENTRY(5, 0);     /* BOUND Range Exceeded          */
    IDT_ENTRY(6, 0);     /* Invalid opcode                */
    IDT_ENTRY(7, 0);     /* Device Not Available          */
    IDT_ENTRY(8, 0);     /* Double Fault                  */
    IDT_ENTRY(9, 0);     /* Coprocessor segment overrun   */
    IDT_ENTRY(10, 0);    /* Invalid TSS                   */
    IDT_ENTRY(11, 0);    /* Segment not present           */
    IDT_ENTRY(12, 0);    /* Stack-Segment Fault           */
    IDT_ENTRY(13, 0);    /* General Protection            */
    IDT_ENTRY(14, 0);    /* Page Fault                    */
    IDT_ENTRY(16, 0);    /* x87 FPU Floating-Point Error  */
    IDT_ENTRY(17, 0);    /* Alignment Check               */
    IDT_ENTRY(18, 0);    /* Machine Check                 */
    IDT_ENTRY(19, 0);    /* SIMD Floating-Point Exception */
    IDT_ENTRY(32, 0);    /*  User defined  */                
    IDT_ENTRY(33, 0);    /* User defined   */         
    IDT_ENTRY(46, 0);            
}
    