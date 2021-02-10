!FORTRAN PROGRAM TO IMPLEMENT REGULA FALSI METHOD
        F(A,B,C,D,E,X) = A*(X**4) + B*(X**3) + C*(X**2) + D*(X) + E
        PRINT*,"A IN A*(X**4): ";READ*,A
        PRINT*,"B IN B*(X**3): ";READ*,B
        PRINT*,"C IN C*(X**2): ";READ*,C
        PRINT*,"D IN D*(X): ";READ*,D
        PRINT*,"E: ";READ*,E
        PRINT*,"ENTER VALUES OF INITIAL APPRIXIMATIONS: "
        PRINT*,"X0: "; READ*,X0
        PRINT*,"X1: "; READ*,X1
        PRINT*,"NUMBER OF ITERATIONS: "; READ*,N 
        DO 100 I=1,N
        FX1 = F(A,B,C,D,E,X1)
        FX0 = F(A,B,C,D,E,X0)
        X2 = ( X0 * FX1 - X1 * FX0 ) / ( FX1 - FX0 )
        IF ( FX1 * FX0  .LT. 0.0)THEN
                X0 = X2
        ELSE
                X1 = X2
        ENDIF
        PRINT*, 'ITERATIONS NO.' ,I, ' VALUE OF X2 ' ,X2
 100    CONTINUE
        PRINT*,'TOTAL NUMBER OF ITERATIONS ',I, 'FINAL ROOT=' ,X2
        READ*
        STOP
        END
