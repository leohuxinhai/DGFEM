!---------------Linear Regresion f90----------------------------

      SUBROUTINE linreg(J8,J9,CONST,SLOPE,CORR,X,Y)
      DOUBLE PRECISION X(100),Y(100),AX,AY,AX2,AY2,AXY
      DOUBLE PRECISION CONST,SLOPE,CORR
      INTEGER I1,J8,J9,I

      I1=J8
      J8=J8-J9
      AX=0.0D00
      AY=0.0D00
      AX2=0.0D00
      AY2=0.0D00
      AXY=0.0D00

      do I=1,J8
      AX=AX+X(I)
      AY=AY+Y(I)
      AXY=AXY+X(I)*Y(I)
      AX2=AX2+X(I)*X(I)
      AY2=AY2+Y(I)*Y(I)
      enddo

      CONST=(AY*AX2-AX*AXY)/(J8*AX2-AX*AX)
      SLOPE=((J8*AXY-AX*AY)/(J8*AX2-AX*AX))
      CORR=(J8*AXY-AX*AY)/(DSQRT((J8*AX2-AX*AX)*(J8*AY2-AY*AY)))
      J8=I1

      RETURN
      END SUBROUTINE linreg
