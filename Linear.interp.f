        !PROGRAM TO IMPLEMETN LINEAR_INTERP
        
        FX = LOG(X)

        PRINT*,"ENTER FIRST POINT:";READ*,X0; Y0 = LOG(X0)
        PRINT*,Y0;
        PRINT*,"ENTER SECOND POINT:";READ*,X1; Y1 = LOG(X1)
        PRINT*,Y1 
        PRINT*,"ENTER THE X PPOINT TO INTERPOLATE";READ*,XP

        YP = Y0 + ((Y1-Y0)/(X1-X0)) * (XP-X0)
        
        FX = LOG(XP);PRINT*,"THE INITIAL F(XP) IS",FX
        
        PRINT*,"THE INTORPOLATED  G(XP) IS",YP
        ERROR = FX-YP;PRINT*,"ERROR IS ",ERROR
        STOP
        END

