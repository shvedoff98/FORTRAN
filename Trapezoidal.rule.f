        PROGRAM TRAPEZIA_INTEGRAL
        F(X) = LOG(X)
600     PRINT*,"CHOOSE THE INTERVAL";READ*,A,B;
        PRINT*,"CHOOSE THE DELTA X";READ*,DELTA_X
        ABSOLUTE = ABS(A-B)
        POINTS = ABSOLUTE/DELTA_X
        !IF(MOD(ABSOLUTE,DELTA_X)==0)THEN 
        !        POINTS = ABSOLUTE/DELTA_X
        !        GOTO 500
        !ELSE
        !        GOTO 600
        !ENDIF
       
        
        
500     PRINT*,"POINTS", POINTS-1
        RESULT_SUM = 0;
        Xn = A;
        DO 700 I=1,POINTS-1
        Sn =((F(Xn) + F(Xn+DELTA_X))/2) * DELTA_X
        IF(Sn .GE. 0.0)THEN
                RESULT_SUM = RESULT_SUM + Sn
        ELSE
                GOTO 800
        ENDIF
800     Xn = Xn + DELTA_X
        PRINT*,RESULT_SUM
700     CONTINUE
        PRINT*,"THE SUM OF THE INTEGRAL IS", RESULT_SUM
        STOP
        END
