@interface CLBackgroundInertialOdometrySample
- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)a3 sampleInterval:(double)a4 CMOdometry:(id)a5;
- (id)initWithCLPIOSample:(CLPIOSample *)a3;
@end

@implementation CLBackgroundInertialOdometrySample

- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)a3 sampleInterval:(double)a4 CMOdometry:(id)a5
{
  if ([a5 deltaPositionX] && objc_msgSend(a5, "deltaPositionY") && objc_msgSend(a5, "deltaPositionZ"))
  {
    v7 = [CLBIO_DeltaPosition alloc];
    [objc_msgSend(a5 "deltaPositionX")];
    v9 = v8;
    [objc_msgSend(a5 "deltaPositionY")];
    v11 = v10;
    [objc_msgSend(a5 "deltaPositionZ")];
    v13 = [v7 initWithX:v9 Y:v11 Z:v12];
  }

  else
  {
    v13 = 0;
  }

  if ([a5 deltaVelocityX] && objc_msgSend(a5, "deltaVelocityY") && objc_msgSend(a5, "deltaVelocityZ"))
  {
    v14 = [CLBIO_DeltaVelocity alloc];
    [objc_msgSend(a5 "deltaVelocityX")];
    v16 = v15;
    [objc_msgSend(a5 "deltaVelocityY")];
    v18 = v17;
    [objc_msgSend(a5 "deltaVelocityZ")];
    v20 = [v14 initWithX:v16 Y:v18 Z:v19];
  }

  else
  {
    v20 = 0;
  }

  if ([a5 quaternionX] && objc_msgSend(a5, "quaternionY") && objc_msgSend(a5, "quaternionZ") && objc_msgSend(a5, "quaternionW"))
  {
    v21 = [CLBIO_Quaternion alloc];
    [objc_msgSend(a5 "quaternionX")];
    v23 = v22;
    [objc_msgSend(a5 "quaternionY")];
    v25 = v24;
    [objc_msgSend(a5 "quaternionZ")];
    v27 = v26;
    [objc_msgSend(a5 "quaternionW")];
    v29 = [v21 initWithX:v23 Y:v25 Z:v27 W:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = [a5 referenceFrame];
  v31 = [a5 staticFlag];
  if (v31 == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2 * (v31 == 2);
  }

  v33 = 1;
  if ([a5 isMounted])
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if ([a5 isZUPT])
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  if ([a5 isDOTBiasChangePossible])
  {
    v33 = 2;
  }

  if (v30 == 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = 8;
  }

  [a5 timestamp];
  return [CLBackgroundInertialOdometrySample initWithTimestamp:"initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:" machContinuousTimestamp:a3 sampleInterval:v13 deltaPosition:v20 deltaVelocity:v29 quaternion:0 referenceFrameContinuity:v36 referenceFrame:v32 staticFlag:v34 mountState:v35 zupt:v33 dotBiasChange:0 calibration:?];
}

- (id)initWithCLPIOSample:(CLPIOSample *)a3
{
  var29 = a3->var29;
  if ((var29 & 1) == 0)
  {
    v23 = 0;
    if ((var29 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((var29 & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = [[CLBIO_DeltaPosition alloc] initWithX:a3->var4 Y:a3->var5 Z:a3->var6];
  var29 = a3->var29;
  if ((var29 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [[CLBIO_DeltaVelocity alloc] initWithX:a3->var7 Y:a3->var8 Z:a3->var9];
  var29 = a3->var29;
  if ((var29 & 4) != 0)
  {
LABEL_4:
    v6 = [[CLBIO_Quaternion alloc] initWithX:a3->var10 Y:a3->var11 Z:a3->var12 W:a3->var13];
    var29 = a3->var29;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  var24 = a3->var24;
  var23 = a3->var23;
  var25 = a3->var25;
  var26 = a3->var26;
  var27 = a3->var27;
  var28 = a3->var28;
  if ((~var29 & 0x18) != 0)
  {
    v16 = 0;
  }

  else
  {
    v13 = [CLBIO_Calibration alloc];
    *&v14 = a3->var14;
    *&v15 = a3->var16;
    v16 = [v13 initWithRotationToTrueNorth:v14 scaleFactor:v15];
  }

  if (var28 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = var28 == 1;
  }

  if (var27 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = var27 == 1;
  }

  if (var26 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = var26 == 1;
  }

  if (var25 == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = var25 == 1;
  }

  if (var23 == 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = 1;
  }

  return -[CLBackgroundInertialOdometrySample initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:](self, "initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:", [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:a3->var0], v23, v5, v6, var24 == 1, v21, a3->var1, a3->var3, v20, v19, v18, v17, v16);
}

@end