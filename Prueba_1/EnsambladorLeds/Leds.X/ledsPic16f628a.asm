__CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_ON & _LVP_OFF & _CPD_OFF & _CP_OFF
    LIST P=16F628A
    #include <P16F628A.INC>
    org 0x00
    bsf STATUS,5    ;IR AL BANCO 1
    bcf TRISB,0	    ;RB0 ES LA SALIDA
    bsf TRISB,7	    ;RB7 COMO ENTRADA
    bcf STATUS,5    ;IR AL BANCO 0
ini	bcf PORTB,0  ;RB0 APAGADO
    btfss PORTB,7   
    goto $-1
    bsf PORTB,0
    btfsc PORTB,7
    goto $-1
    goto ini
    end


