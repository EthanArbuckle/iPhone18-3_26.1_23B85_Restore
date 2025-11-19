@interface CMOdometry
- (CMOdometry)initWithCoder:(id)a3;
- (CMOdometry)initWithDeltaPositionX:(id)a3 deltaPositionY:(id)a4 deltaPositionZ:(id)a5 deltaVelocityX:(id)a6 deltaVelocityY:(id)a7 deltaVelocityZ:(id)a8 quaternionX:(id)a9 quaternionY:(id)a10 quaternionZ:(id)a11 quaternionW:(id)a12 rotationArbitraryToTrueNorth:(float)a13 staticFlag:(int64_t)a14 isDOTBiasChangePossible:(BOOL)a15 isMounted:(BOOL)a16 isZUPT:(BOOL)a17 timestamp:(double)a18;
- (CMOdometry)initWithDeltaPositionX:(id)a3 deltaPositionY:(id)a4 deltaPositionZ:(id)a5 deltaVelocityX:(id)a6 deltaVelocityY:(id)a7 deltaVelocityZ:(id)a8 quaternionX:(id)a9 quaternionY:(id)a10 quaternionZ:(id)a11 quaternionW:(id)a12 rotationArbitraryToTrueNorth:(float)a13 staticFlag:(int64_t)a14 timestamp:(double)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)rotateArbitraryToTrueNorth;
@end

@implementation CMOdometry

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometry;
  [(CMLogItem *)&v3 dealloc];
}

- (CMOdometry)initWithDeltaPositionX:(id)a3 deltaPositionY:(id)a4 deltaPositionZ:(id)a5 deltaVelocityX:(id)a6 deltaVelocityY:(id)a7 deltaVelocityZ:(id)a8 quaternionX:(id)a9 quaternionY:(id)a10 quaternionZ:(id)a11 quaternionW:(id)a12 rotationArbitraryToTrueNorth:(float)a13 staticFlag:(int64_t)a14 isDOTBiasChangePossible:(BOOL)a15 isMounted:(BOOL)a16 isZUPT:(BOOL)a17 timestamp:(double)a18
{
  v27.receiver = self;
  v27.super_class = CMOdometry;
  v25 = [(CMLogItem *)&v27 initWithTimestamp:a18];
  if (v25)
  {
    v25->_deltaPositionX = a3;
    v25->_deltaPositionY = a4;
    v25->_deltaPositionZ = a5;
    v25->_deltaVelocityX = a6;
    v25->_deltaVelocityY = a7;
    v25->_deltaVelocityZ = a8;
    v25->_quaternionX = a9;
    v25->_quaternionY = a10;
    v25->_quaternionZ = a11;
    v25->_quaternionW = a12;
    v25->_referenceFrame = 1;
    v25->_rotationArbitraryToTrueNorth = a13;
    v25->_staticFlag = a14;
    v25->_isDOTBiasChangePossible = a15;
    v25->_isMounted = a16;
    v25->_isZUPT = a17;
  }

  return v25;
}

- (CMOdometry)initWithDeltaPositionX:(id)a3 deltaPositionY:(id)a4 deltaPositionZ:(id)a5 deltaVelocityX:(id)a6 deltaVelocityY:(id)a7 deltaVelocityZ:(id)a8 quaternionX:(id)a9 quaternionY:(id)a10 quaternionZ:(id)a11 quaternionW:(id)a12 rotationArbitraryToTrueNorth:(float)a13 staticFlag:(int64_t)a14 timestamp:(double)a15
{
  BYTE2(v16) = 0;
  LOWORD(v16) = 0;
  return [CMOdometry initWithDeltaPositionX:"initWithDeltaPositionX:deltaPositionY:deltaPositionZ:deltaVelocityX:deltaVelocityY:deltaVelocityZ:quaternionX:quaternionY:quaternionZ:quaternionW:rotationArbitraryToTrueNorth:staticFlag:isDOTBiasChangePossible:isMounted:isZUPT:timestamp:" deltaPositionY:a3 deltaPositionZ:a4 deltaVelocityX:a5 deltaVelocityY:a6 deltaVelocityZ:a7 quaternionX:a8 quaternionY:a9 quaternionZ:a10 quaternionW:a11 rotationArbitraryToTrueNorth:a12 staticFlag:a14 isDOTBiasChangePossible:v16 isMounted:? isZUPT:? timestamp:?];
}

- (void)rotateArbitraryToTrueNorth
{
  if (self->_referenceFrame == 1)
  {
    if (self->_quaternionX)
    {
      if (self->_quaternionY)
      {
        if (self->_quaternionZ)
        {
          if (self->_quaternionW)
          {
            rotationArbitraryToTrueNorth = self->_rotationArbitraryToTrueNorth;
            if (rotationArbitraryToTrueNorth != 0.0)
            {
              v44 = 0;
              v45 = rotationArbitraryToTrueNorth;
              [(NSNumber *)self->_quaternionX floatValue:sub_10011AD94(&v43];
              v5 = v4;
              [(NSNumber *)self->_quaternionY floatValue];
              v7 = v6;
              [(NSNumber *)self->_quaternionZ floatValue];
              v9 = v8;
              [(NSNumber *)self->_quaternionW floatValue];
              v42.i64[0] = __PAIR64__(v7, v5);
              v42.i64[1] = __PAIR64__(v10.u32[0], v9);
              v11 = sub_10011E648(&v42, v10);
              v42.i32[0] = sub_100AEA694(&v42, v43.f32, v11);
              *(v42.i64 + 4) = __PAIR64__(v13, v12);
              v42.i32[3] = v14;

              v15 = [NSNumber alloc];
              LODWORD(v16) = v42.i32[0];
              self->_quaternionX = [v15 initWithFloat:v16];
              v17 = [NSNumber alloc];
              LODWORD(v18) = v42.i32[1];
              self->_quaternionY = [v17 initWithFloat:v18];
              v19 = [NSNumber alloc];
              LODWORD(v20) = v42.i32[2];
              self->_quaternionZ = [v19 initWithFloat:v20];
              v21 = [NSNumber alloc];
              LODWORD(v22) = v42.i32[3];
              self->_quaternionW = [v21 initWithFloat:v22];
              deltaPositionX = self->_deltaPositionX;
              if (deltaPositionX && self->_deltaPositionY)
              {
                [(NSNumber *)deltaPositionX floatValue];
                v25 = v24;
                [(NSNumber *)self->_deltaPositionY floatValue];
                v39 = v25;
                v40 = v26;
                v41 = 0;
                sub_100AEA80C(v43.f32, &v39);

                v27 = [NSNumber alloc];
                LODWORD(v28) = v39;
                self->_deltaPositionX = [v27 initWithFloat:v28];
                v29 = [NSNumber alloc];
                LODWORD(v30) = v40;
                self->_deltaPositionY = [v29 initWithFloat:v30];
              }

              else
              {

                self->_deltaPositionX = 0;
                self->_deltaPositionY = 0;
              }

              deltaVelocityX = self->_deltaVelocityX;
              if (deltaVelocityX && self->_deltaVelocityY)
              {
                [(NSNumber *)deltaVelocityX floatValue];
                v33 = v32;
                [(NSNumber *)self->_deltaVelocityY floatValue];
                v39 = v33;
                v40 = v34;
                v41 = 0;
                sub_100AEA80C(v43.f32, &v39);

                v35 = [NSNumber alloc];
                LODWORD(v36) = v39;
                self->_deltaVelocityX = [v35 initWithFloat:v36];
                v37 = [NSNumber alloc];
                LODWORD(v38) = v40;
                self->_deltaVelocityY = [v37 initWithFloat:v38];
              }

              else
              {

                self->_deltaVelocityX = 0;
                self->_deltaVelocityY = 0;
              }

              self->_referenceFrame = 8;
            }
          }
        }
      }
    }
  }
}

- (CMOdometry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMOdometry;
  v4 = [(CMLogItem *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_deltaPositionX = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionX"];
    v4->_deltaPositionY = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionY"];
    v4->_deltaPositionZ = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionZ"];
    v4->_deltaVelocityX = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityX"];
    v4->_deltaVelocityY = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityY"];
    v4->_deltaVelocityZ = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityZ"];
    v4->_quaternionX = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionX"];
    v4->_quaternionY = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionY"];
    v4->_quaternionZ = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionZ"];
    v4->_quaternionW = [a3 decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionW"];
    [a3 decodeFloatForKey:@"kCMOdometryCodingKeyReferenceFrame"];
    v4->_referenceFrame = v5;
    [a3 decodeFloatForKey:@"kCMOdometryCodingKeyRotationArbitraryToTrueNort"];
    v4->_rotationArbitraryToTrueNorth = v6;
    v4->_staticFlag = [objc_msgSend(a3 decodeObjectForKey:{@"kCMOdometryCodingKeyStaticFlag", "integerValue"}];
    v4->_isDOTBiasChangePossible = [a3 decodeBoolForKey:@"kCMOdometryCodingKeyIsDOTBiasChangePossible"];
    v4->_isMounted = [a3 decodeBoolForKey:@"kCMOdometryCodingKeyIsMounted"];
    v4->_isZUPT = [a3 decodeBoolForKey:@"kCMOdometryCodingKeyIsZUPT"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMOdometry;
  [(CMLogItem *)&v7 encodeWithCoder:?];
  [a3 encodeObject:self->_deltaPositionX forKey:@"kCMOdometryCodingKeyDeltaPositionX"];
  [a3 encodeObject:self->_deltaPositionY forKey:@"kCMOdometryCodingKeyDeltaPositionY"];
  [a3 encodeObject:self->_deltaPositionZ forKey:@"kCMOdometryCodingKeyDeltaPositionZ"];
  [a3 encodeObject:self->_deltaVelocityX forKey:@"kCMOdometryCodingKeyDeltaVelocityX"];
  [a3 encodeObject:self->_deltaVelocityY forKey:@"kCMOdometryCodingKeyDeltaVelocityY"];
  [a3 encodeObject:self->_deltaVelocityZ forKey:@"kCMOdometryCodingKeyDeltaVelocityZ"];
  [a3 encodeObject:self->_quaternionX forKey:@"kCMOdometryCodingKeyQuaternionX"];
  [a3 encodeObject:self->_quaternionY forKey:@"kCMOdometryCodingKeyQuaternionY"];
  [a3 encodeObject:self->_quaternionZ forKey:@"kCMOdometryCodingKeyQuaternionZ"];
  [a3 encodeObject:self->_quaternionW forKey:@"kCMOdometryCodingKeyQuaternionW"];
  *&v5 = self->_referenceFrame;
  [a3 encodeFloat:@"kCMOdometryCodingKeyReferenceFrame" forKey:v5];
  *&v6 = self->_rotationArbitraryToTrueNorth;
  [a3 encodeFloat:@"kCMOdometryCodingKeyRotationArbitraryToTrueNort" forKey:v6];
  [a3 encodeObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", self->_staticFlag), @"kCMOdometryCodingKeyStaticFlag"}];
  [a3 encodeBool:self->_isDOTBiasChangePossible forKey:@"kCMOdometryCodingKeyIsDOTBiasChangePossible"];
  [a3 encodeBool:self->_isMounted forKey:@"kCMOdometryCodingKeyIsMounted"];
  [a3 encodeBool:self->_isZUPT forKey:@"kCMOdometryCodingKeyIsZUPT"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CMOdometry;
  v5 = [(CMLogItem *)&v7 copyWithZone:?];
  if (v5)
  {
    v5[3] = [(NSNumber *)self->_deltaPositionX copyWithZone:a3];
    v5[4] = [(NSNumber *)self->_deltaPositionY copyWithZone:a3];
    v5[5] = [(NSNumber *)self->_deltaPositionZ copyWithZone:a3];
    v5[6] = [(NSNumber *)self->_deltaVelocityX copyWithZone:a3];
    v5[7] = [(NSNumber *)self->_deltaVelocityY copyWithZone:a3];
    v5[8] = [(NSNumber *)self->_deltaVelocityZ copyWithZone:a3];
    v5[9] = [(NSNumber *)self->_quaternionX copyWithZone:a3];
    v5[10] = [(NSNumber *)self->_quaternionY copyWithZone:a3];
    v5[11] = [(NSNumber *)self->_quaternionZ copyWithZone:a3];
    v5[12] = [(NSNumber *)self->_quaternionW copyWithZone:a3];
    v5[13] = self->_referenceFrame;
    *(v5 + 5) = LODWORD(self->_rotationArbitraryToTrueNorth);
    v5[14] = self->_staticFlag;
    *(v5 + 16) = self->_isDOTBiasChangePossible;
    *(v5 + 17) = self->_isMounted;
    *(v5 + 18) = self->_isZUPT;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CMOdometry;
  [(CMLogItem *)&v4 timestamp];
  return [NSString stringWithFormat:@"Timestamp, %@, DeltaPositionXYZ, %@, %@, %@, DeltaVelocityXYZ, %@, %@, %@, QuaternionXYZW, %@, %@, %@, %@, ReferenceFrame, %d, StaticFlag, %d", [NSNumber numberWithDouble:?], self->_deltaPositionX, self->_deltaPositionY, self->_deltaPositionZ, self->_deltaVelocityX, self->_deltaVelocityY, self->_deltaVelocityZ, self->_quaternionX, self->_quaternionY, self->_quaternionZ, self->_quaternionW, self->_referenceFrame, self->_staticFlag];
}

@end