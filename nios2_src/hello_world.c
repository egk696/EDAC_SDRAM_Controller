#include <stdio.h>
#include <stdlib.h>
#include "altera_avalon_performance_counter.h"
#include "avalon_sdram_ctrl_tmr_regs.h"

#ifndef LCD_0_NAME
/* Some hardware is not present because of system or because of simulation */
#define LCD_CLOSE(x) /* Do Nothing */
#define LCD_OPEN() NULL
#define LCD_PRINTF(lcd, args...) /* Do Nothing */
#else
/* With hardware devices present, use these definitions */
#define LCD_CLOSE(x) fclose((x))
#define LCD_OPEN() fopen("/dev/lcd_0", "w")
#define LCD_PRINTF fprintf
#endif

/* Cursor movement on the LCD */
/* Clear */
#define ESC 27
/* Position cursor at row 1, column 1 of LCD. */
#define ESC_CLEAR "K"
/* Position cursor at row1, column 5 of LCD. */
#define ESC_COL1_INDENT5 "[1;5H"
/* Position cursor at row2, column 5 of LCD. */
#define ESC_COL2_INDENT5 "[2;5H"
/* Integer ASCII value of the ESC character. */
#define ESC_TOP_LEFT "[1;0H"

#define DEBUG

#define SECTION_1 1
#define SECTION_2 2
#define SECTION_3 3

//volatile unsigned int* timer = (volatile unsigned int*) TIMER_0_BASE; 
char testStrBuffer[1024] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mauris sit amet purus sagittis lacinia ac eu tellus. Nullam faucibus ultrices odio, in volutpat arcu. Quisque id justo pretium, porta tellus et, consectetur felis. Ut rhoncus, neque at auctor iaculis, odio lacus mattis tortor, ac auctor nibh massa vel libero. Curabitur ornare, diam eu consectetur pellentesque, arcu mi imperdiet erat, vel ornare ex nibh feugiat justo. Aliquam erat volutpat. Vestibulum accumsan ligula nec eros fermentum, a tincidunt metus aliquam. Vivamus suscipit tincidunt ipsum sit amet efficitur. Phasellus egestas nisi maximus, aliquam leo nec, suscipit risus. Praesent enim diam, accumsan vitae odio in, pharetra rutrum tortor. Nullam odio felis, hendrerit at purus sed, suscipit vestibulum metus. Nunc sed lobortis turpis.Fusce finibus vestibulum ipsum quis tincidunt. Fusce posuere turpis a mauris bibendum ultricies. Fusce porttitor, ante eu gravida pulvinar, nunc diam sodales mauris, tincidunt varius ligula ex in lacus. In amet.";
char tempStrBuffer[1025];
//alt_u32 begin = 0;
//float elapsedTime = 0;

int Fibonacci(int n)
{
   if ( n == 0 )
      return 0;
   else if ( n == 1 )
      return 1;
   else
      return ( Fibonacci(n-1) + Fibonacci(n-2) );
}

void memtest_init_nontmr_space(unsigned int* startAddress, unsigned int value){
    unsigned int* address=startAddress;
    //PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, SECTION_3);
    while(address < (unsigned int*)UNSAFE_ADDRESS_SPAN){
        *(address) = value;
        address++;
    }
    //PERF_END (PERFORMANCE_COUNTER_0_BASE, SECTION_3);
    printf("initiliazed from %p to %p with %u\n", startAddress, address, value);
}

int memtest_check_nontmr_space(unsigned int* startAddress, unsigned int value){
    unsigned int* address=startAddress;
    unsigned int err = 0x0;
    while(address < (unsigned int*)UNSAFE_ADDRESS_SPAN){ //address < (unsigned int*)memSpan
        unsigned int rd_value = *(address);
        if(rd_value !=  value){
            err+=1;
            //printf("!error in %p\tvalue=%d\n", address, rd_value);
            printf("!");
        }
        address++;
    }
    printf("Found %d error, from %p to %p with %u\n", err, startAddress, address, value);
    return err;
}

void memtest_init_tmr_space(unsigned int* startAddress){
    unsigned int* address=startAddress;
    unsigned int i = 0x0;
    PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, SECTION_1);
    while(address < (unsigned int*)TMRSAFE_ADDRESS_SPAN){ //address < (unsigned int*)memSpan
        PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, SECTION_2);
        *(address) = i;
        //IOWR(SEUD_SDRAM_CTRL_AVALON_0_BASE, address, i);
        PERF_END (PERFORMANCE_COUNTER_0_BASE, SECTION_2);
        address++;
        i++;
    }
    PERF_END (PERFORMANCE_COUNTER_0_BASE, SECTION_1);
    printf("initiliazed from %p to %p with %u\n", startAddress, address, i);
}

int memtest_check_tmr_space(unsigned int* startAddress){
    unsigned int* address=startAddress;
    unsigned int i = 0x0;
    unsigned int err = 0x0;
    while(address < (unsigned int*)TMRSAFE_ADDRESS_SPAN){ //address < (unsigned int*)memSpan
        PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, SECTION_3);
        unsigned int rd_value = *(address);
        //unsigned int rd_value = (unsigned) IORD(SEUD_SDRAM_CTRL_AVALON_0_BASE, address);
        PERF_END (PERFORMANCE_COUNTER_0_BASE, SECTION_3);
        if(rd_value !=  i){
            err+=1;
            printf("!error in %p\tvalue=%d\n", address, rd_value);
        }
        address++;
        i++;
    }
    printf("Found %d error, from %p to %p with %u\n", err, startAddress, address, i);
    return err;
}

int main()
{ 
    FILE * lcd;
    unsigned int errors=0;
    unsigned int i=0, j=0;
    unsigned int state=0;
    unsigned int mode=0;
    /* Reset Performance Counter */
    PERF_RESET(PERFORMANCE_COUNTER_0_BASE);  
    
    /* Start Program */
    printf("Hello from SEUD SDRAM NiosII Test!\n\n");
    lcd = LCD_OPEN();
    if(lcd != NULL){
        LCD_PRINTF(lcd, "%c%sSDRAM SEUD Test", ESC, ESC_TOP_LEFT);
        LCD_PRINTF(lcd, "%c%sInit...", ESC, ESC_COL2_INDENT5);
    } else {
        printf("error: lcd not found!");
    }
    
    printf("Memory is split into 2 sections with base: %p\n", SEUD_SDRAM_CTRL_AVALON_0_BASE);
    printf("--\tTMR Protected section spans from %p to %p\n", TMRSAFE_ADDRESS_START, TMRSAFE_ADDRESS_SPAN);
    printf("--\tUn-Protected section spans from %p to %p\n", UNSAFE_ADDRESS_START, UNSAFE_ADDRESS_SPAN);
    
    /*BEGIN*/
    PERF_START_MEASURING (PERFORMANCE_COUNTER_0_BASE);
    printf("Scrubbing is=%u\n", SDRAM_CHK_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE));
    printf("Error injection is=%u\n", SDRAM_CHK_ERRINJ(SEUD_SDRAM_CTRL_AVALON_0_BASE));
    printf("[SDRAM SEUs count=%u]\n", SDRAM_READ_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE));
    printf("o--Reset SEUD counter--o\n");
    SDRAM_RESET_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE);
    printf("[SDRAM SEUs count=%u]\n", SDRAM_READ_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE));
    
   // while(SDRAM_READ_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE) == 0){
        
        SDRAM_DISABLE_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE);
        printf("[DISABLED scrubbing=%u]\n", SDRAM_CHK_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE));
        
        printf("o--Initiliaze protected memory content--o\n");
        memtest_init_tmr_space(TMRSAFE_ADDRESS_START);
        
        printf("o--Verity protected memory content--o\n");
        errors += memtest_check_tmr_space(TMRSAFE_ADDRESS_START);
        
        SDRAM_ENABLE_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE);
        printf("[ENABLED scrubbing=%u]\n", SDRAM_CHK_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE));
        
        printf("[SDRAM SEUs count=%u]\n", SDRAM_READ_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE));
        
        printf("o--Initiliaze non-protected memory content--o\n");
        memtest_init_nontmr_space(UNSAFE_ADDRESS_START, 0x00ABCDEF);
        
        SDRAM_DISABLE_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE);
        printf("o--Verify non-protected memory content--o\n");
        errors += memtest_check_nontmr_space(UNSAFE_ADDRESS_START, 0x00ABCDEF);
        SDRAM_ENABLE_SCRUB(SEUD_SDRAM_CTRL_AVALON_0_BASE);
        
        printf("[SDRAM SEUs count=%u]\n", SDRAM_READ_SEU_COUNTER(SEUD_SDRAM_CTRL_AVALON_0_BASE));
        
        printf("o--Monitoring--o\n");
        for(i=0; i<5; i++){
            state = (unsigned int) SDRAM_CTRL_STATUS(SEUD_SDRAM_CTRL_AVALON_0_BASE);
            printf("--SDRAM_Ctrl is in state=%d - %s\n", state & STATE_MASK, convert_state_to_str((state & STATE_MASK)>>2));
            printf("--SDRAM Mode is in mode =%d - %s\n", state & MODE_MASK, convert_scrub_state_to_str(state & MODE_MASK));
        } //delay
        printf("\n");
    //}
    
    PERF_STOP_MEASURING (PERFORMANCE_COUNTER_0_BASE);
    /* END */
    printf("FINISHED\n\n");
    LCD_CLOSE(lcd);
    printf("CPU @ %d Hz\n", alt_get_cpu_freq()); 
    perf_print_formatted_report(PERFORMANCE_COUNTER_0_BASE, ALT_CPU_FREQ, 3, "MemInitTMR", "SingleTMRWrite", "SingleTMRRead");
    return 0;
}

