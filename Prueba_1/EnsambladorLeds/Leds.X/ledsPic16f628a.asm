__CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_ON & _LVP_OFF & _CPD_OFF & _CP_OFF
    LIST P=16F628A
    #include <P16F628A.INC>
    org 0x00
    bsf STATUS,5    ;IR AL BANCO 1
    bcf TRISB,0	    ;RB0 ES LA SALIDA
    bcf TRISB,1	    ;RB1 ES LA SALIDA
    bcf TRISB,2	    ;RB2 ES LA SALIDA
    bcf TRISB,3	    ;RB3 ES LA SALIDA
    bsf TRISB,7	    ;RB7 COMO ENTRADA
    bcf STATUS,5    ;IR AL BANCO 0
ini	bcf PORTB,0  ;RB0 APAGADO
	bcf PORTB,1  ;RB1 APAGADO
	bcf PORTB,2  ;RB2 APAGADO
	bcf PORTB,3  ;RB3 APAGADO
    btfss PORTB,7   
    goto $-1
    bsf PORTB,0	    
    bsf PORTB,1 
    bsf PORTB,2
    bsf	PORTB,3
    btfsc PORTB,7
    goto $-1
    goto ini
    end


