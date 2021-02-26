        PROGRAM WEGSTEIN
        !FORTRAN PROGRAM TO IMPLEMENT WEGSTEIN METHOD
        
        G(X) = (X)**2-1 !Choose whatever g(x)
        PRINT*,"ENTER VALUE OF X1: "; READ* ,X1
        PRINT*,"NUMBER OF ITERATIONS: "; READ*,N 
       
        X2 = G(X1) ! Xn
        PRINT*,X1  ! Xn-1
        PRINT*,X2
        DO 100 I=1,N
        XX = (X1*G(X2)-X2*G(X1))/(X1+G(X2)-X2-G(X1))
        PRINT*,XX; PRINT*, " ERROR: "; PRINT*,(ABS(X2-XX))
        X1 = X2
        X2 = XX
 100    CONTINUE
      
        STOP
        END PROGRAM WEGSTEIN
