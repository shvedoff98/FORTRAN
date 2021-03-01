        !FORTRAM PROGRAM TO IMPLEMENT SIMPSON METHOD
        PROGRAM SIMPSON
        IMPLICIT NONE
        
        REAL :: X,F,H,A,B,RESULT_SUM,SUMA,SUMB,Xn
        INTEGER :: PTS,I
        F(X) = EXP(X)

        PRINT*,"ENTER THE X0 AND Xn OF INTERPOLATED FUCTION"
        READ*,A 
        READ*,B
200     PRINT*,"ENTER THE NUMBER OF X POINTS";READ*,PTS 
        IF(MOD(PTS,2)==0)THEN
                GOTO 100
        ELSE
                GOTO 200
        ENDIF
        
100     H = B / PTS
        SUMA = 0.5*F(A)
        SUMB = 0.5*F(B)
        IF(SUMA .GE. 0.0)THEN
                SUMB = SUMB + SUMA
        ENDIF
        IF(SUMB .GE . 0.0)THEN
                RESULT_SUM = RESULT_SUM + SUMB
        ENDIF

        Xn = H
        DO 300 I=2,PTS-2
        Xn = Xn + H
        IF(MOD(I,2)==0)THEN
                RESULT_SUM = RESULT_SUM + 2*F(Xn)
        ELSE
                RESULT_SUM = RESULT_SUM + F(Xn)

        ENDIF
300     CONTINUE
        RESULT_SUM = RESULT_SUM * (2*H)/3
        PRINT*,RESULT_SUM
             
        END PROGRAM SIMPSON


        

