01 WS-DATA-COUT PIC 9(08) VALUE ZEROS. 
01 WS-DATA-COU PIC 9(08) VALUE ZEROS. 
01 WS-DATA-COU-R PIC S9(07) VALUE ZEROS.  
***********************************************************************************************************************************
ACCEPT WS-DATA-COUT FROM DATE YYYYMMDD. 
COMPUTE WS-DATA-COU-R =        FUNCTION INTEGER-OF-DATE(WS-DATA-COUT) 
SUBTRACT 40 FROM WS-DATA-COU-R 
COMPUTE WS-DATA-COU =          FUNCTION DATE-OF-INTEGER(WS-DATA-COU-R)   
***********************************************************************************************************************************
          COMPUTE WRK-DATA-CALCULADA 
                                  = FUNCTION DATE-OF-INTEGER 
                                   (FUNCTION INTEGER-OF-DATE 
                                   (DTPROC-DT-FECHA) 
                                  - WS-QTDE-DIAS)
***********************************************************************************************************************************


