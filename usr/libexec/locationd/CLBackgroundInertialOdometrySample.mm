@interface CLBackgroundInertialOdometrySample
- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp sampleInterval:(double)interval CMOdometry:(id)odometry;
- (id)initWithCLPIOSample:(CLPIOSample *)sample;
@end

@implementation CLBackgroundInertialOdometrySample

- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp sampleInterval:(double)interval CMOdometry:(id)odometry
{
  if ([odometry deltaPositionX] && objc_msgSend(odometry, "deltaPositionY") && objc_msgSend(odometry, "deltaPositionZ"))
  {
    v7 = [CLBIO_DeltaPosition alloc];
    [objc_msgSend(odometry "deltaPositionX")];
    v9 = v8;
    [objc_msgSend(odometry "deltaPositionY")];
    v11 = v10;
    [objc_msgSend(odometry "deltaPositionZ")];
    v13 = [v7 initWithX:v9 Y:v11 Z:v12];
  }

  else
  {
    v13 = 0;
  }

  if ([odometry deltaVelocityX] && objc_msgSend(odometry, "deltaVelocityY") && objc_msgSend(odometry, "deltaVelocityZ"))
  {
    v14 = [CLBIO_DeltaVelocity alloc];
    [objc_msgSend(odometry "deltaVelocityX")];
    v16 = v15;
    [objc_msgSend(odometry "deltaVelocityY")];
    v18 = v17;
    [objc_msgSend(odometry "deltaVelocityZ")];
    v20 = [v14 initWithX:v16 Y:v18 Z:v19];
  }

  else
  {
    v20 = 0;
  }

  if ([odometry quaternionX] && objc_msgSend(odometry, "quaternionY") && objc_msgSend(odometry, "quaternionZ") && objc_msgSend(odometry, "quaternionW"))
  {
    v21 = [CLBIO_Quaternion alloc];
    [objc_msgSend(odometry "quaternionX")];
    v23 = v22;
    [objc_msgSend(odometry "quaternionY")];
    v25 = v24;
    [objc_msgSend(odometry "quaternionZ")];
    v27 = v26;
    [objc_msgSend(odometry "quaternionW")];
    v29 = [v21 initWithX:v23 Y:v25 Z:v27 W:v28];
  }

  else
  {
    v29 = 0;
  }

  referenceFrame = [odometry referenceFrame];
  staticFlag = [odometry staticFlag];
  if (staticFlag == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2 * (staticFlag == 2);
  }

  v33 = 1;
  if ([odometry isMounted])
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if ([odometry isZUPT])
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  if ([odometry isDOTBiasChangePossible])
  {
    v33 = 2;
  }

  if (referenceFrame == 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = 8;
  }

  [odometry timestamp];
  return [CLBackgroundInertialOdometrySample initWithTimestamp:"initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:" machContinuousTimestamp:timestamp sampleInterval:v13 deltaPosition:v20 deltaVelocity:v29 quaternion:0 referenceFrameContinuity:v36 referenceFrame:v32 staticFlag:v34 mountState:v35 zupt:v33 dotBiasChange:0 calibration:?];
}

- (id)initWithCLPIOSample:(CLPIOSample *)sample
{
  var29 = sample->var29;
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

  v23 = [[CLBIO_DeltaPosition alloc] initWithX:sample->var4 Y:sample->var5 Z:sample->var6];
  var29 = sample->var29;
  if ((var29 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [[CLBIO_DeltaVelocity alloc] initWithX:sample->var7 Y:sample->var8 Z:sample->var9];
  var29 = sample->var29;
  if ((var29 & 4) != 0)
  {
LABEL_4:
    v6 = [[CLBIO_Quaternion alloc] initWithX:sample->var10 Y:sample->var11 Z:sample->var12 W:sample->var13];
    var29 = sample->var29;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  var24 = sample->var24;
  var23 = sample->var23;
  var25 = sample->var25;
  var26 = sample->var26;
  var27 = sample->var27;
  var28 = sample->var28;
  if ((~var29 & 0x18) != 0)
  {
    v16 = 0;
  }

  else
  {
    v13 = [CLBIO_Calibration alloc];
    *&v14 = sample->var14;
    *&v15 = sample->var16;
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

  return -[CLBackgroundInertialOdometrySample initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:](self, "initWithTimestamp:machContinuousTimestamp:sampleInterval:deltaPosition:deltaVelocity:quaternion:referenceFrameContinuity:referenceFrame:staticFlag:mountState:zupt:dotBiasChange:calibration:", [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:sample->var0], v23, v5, v6, var24 == 1, v21, sample->var1, sample->var3, v20, v19, v18, v17, v16);
}

@end