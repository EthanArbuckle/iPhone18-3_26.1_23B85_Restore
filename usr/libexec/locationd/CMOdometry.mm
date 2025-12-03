@interface CMOdometry
- (CMOdometry)initWithCoder:(id)coder;
- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 isDOTBiasChangePossible:(BOOL)self5 isMounted:(BOOL)self6 isZUPT:(BOOL)self7 timestamp:(double)self8;
- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 timestamp:(double)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)rotateArbitraryToTrueNorth;
@end

@implementation CMOdometry

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometry;
  [(CMLogItem *)&v3 dealloc];
}

- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 isDOTBiasChangePossible:(BOOL)self5 isMounted:(BOOL)self6 isZUPT:(BOOL)self7 timestamp:(double)self8
{
  v27.receiver = self;
  v27.super_class = CMOdometry;
  v25 = [(CMLogItem *)&v27 initWithTimestamp:timestamp];
  if (v25)
  {
    v25->_deltaPositionX = x;
    v25->_deltaPositionY = y;
    v25->_deltaPositionZ = z;
    v25->_deltaVelocityX = velocityX;
    v25->_deltaVelocityY = velocityY;
    v25->_deltaVelocityZ = velocityZ;
    v25->_quaternionX = quaternionX;
    v25->_quaternionY = quaternionY;
    v25->_quaternionZ = quaternionZ;
    v25->_quaternionW = w;
    v25->_referenceFrame = 1;
    v25->_rotationArbitraryToTrueNorth = north;
    v25->_staticFlag = flag;
    v25->_isDOTBiasChangePossible = possible;
    v25->_isMounted = mounted;
    v25->_isZUPT = t;
  }

  return v25;
}

- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 timestamp:(double)self5
{
  BYTE2(v16) = 0;
  LOWORD(v16) = 0;
  return [CMOdometry initWithDeltaPositionX:"initWithDeltaPositionX:deltaPositionY:deltaPositionZ:deltaVelocityX:deltaVelocityY:deltaVelocityZ:quaternionX:quaternionY:quaternionZ:quaternionW:rotationArbitraryToTrueNorth:staticFlag:isDOTBiasChangePossible:isMounted:isZUPT:timestamp:" deltaPositionY:x deltaPositionZ:y deltaVelocityX:z deltaVelocityY:velocityX deltaVelocityZ:velocityY quaternionX:velocityZ quaternionY:quaternionX quaternionZ:quaternionY quaternionW:quaternionZ rotationArbitraryToTrueNorth:w staticFlag:flag isDOTBiasChangePossible:v16 isMounted:? isZUPT:? timestamp:?];
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

- (CMOdometry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CMOdometry;
  v4 = [(CMLogItem *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_deltaPositionX = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionX"];
    v4->_deltaPositionY = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionY"];
    v4->_deltaPositionZ = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaPositionZ"];
    v4->_deltaVelocityX = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityX"];
    v4->_deltaVelocityY = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityY"];
    v4->_deltaVelocityZ = [coder decodeObjectForKey:@"kCMOdometryCodingKeyDeltaVelocityZ"];
    v4->_quaternionX = [coder decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionX"];
    v4->_quaternionY = [coder decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionY"];
    v4->_quaternionZ = [coder decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionZ"];
    v4->_quaternionW = [coder decodeObjectForKey:@"kCMOdometryCodingKeyQuaternionW"];
    [coder decodeFloatForKey:@"kCMOdometryCodingKeyReferenceFrame"];
    v4->_referenceFrame = v5;
    [coder decodeFloatForKey:@"kCMOdometryCodingKeyRotationArbitraryToTrueNort"];
    v4->_rotationArbitraryToTrueNorth = v6;
    v4->_staticFlag = [objc_msgSend(coder decodeObjectForKey:{@"kCMOdometryCodingKeyStaticFlag", "integerValue"}];
    v4->_isDOTBiasChangePossible = [coder decodeBoolForKey:@"kCMOdometryCodingKeyIsDOTBiasChangePossible"];
    v4->_isMounted = [coder decodeBoolForKey:@"kCMOdometryCodingKeyIsMounted"];
    v4->_isZUPT = [coder decodeBoolForKey:@"kCMOdometryCodingKeyIsZUPT"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMOdometry;
  [(CMLogItem *)&v7 encodeWithCoder:?];
  [coder encodeObject:self->_deltaPositionX forKey:@"kCMOdometryCodingKeyDeltaPositionX"];
  [coder encodeObject:self->_deltaPositionY forKey:@"kCMOdometryCodingKeyDeltaPositionY"];
  [coder encodeObject:self->_deltaPositionZ forKey:@"kCMOdometryCodingKeyDeltaPositionZ"];
  [coder encodeObject:self->_deltaVelocityX forKey:@"kCMOdometryCodingKeyDeltaVelocityX"];
  [coder encodeObject:self->_deltaVelocityY forKey:@"kCMOdometryCodingKeyDeltaVelocityY"];
  [coder encodeObject:self->_deltaVelocityZ forKey:@"kCMOdometryCodingKeyDeltaVelocityZ"];
  [coder encodeObject:self->_quaternionX forKey:@"kCMOdometryCodingKeyQuaternionX"];
  [coder encodeObject:self->_quaternionY forKey:@"kCMOdometryCodingKeyQuaternionY"];
  [coder encodeObject:self->_quaternionZ forKey:@"kCMOdometryCodingKeyQuaternionZ"];
  [coder encodeObject:self->_quaternionW forKey:@"kCMOdometryCodingKeyQuaternionW"];
  *&v5 = self->_referenceFrame;
  [coder encodeFloat:@"kCMOdometryCodingKeyReferenceFrame" forKey:v5];
  *&v6 = self->_rotationArbitraryToTrueNorth;
  [coder encodeFloat:@"kCMOdometryCodingKeyRotationArbitraryToTrueNort" forKey:v6];
  [coder encodeObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", self->_staticFlag), @"kCMOdometryCodingKeyStaticFlag"}];
  [coder encodeBool:self->_isDOTBiasChangePossible forKey:@"kCMOdometryCodingKeyIsDOTBiasChangePossible"];
  [coder encodeBool:self->_isMounted forKey:@"kCMOdometryCodingKeyIsMounted"];
  [coder encodeBool:self->_isZUPT forKey:@"kCMOdometryCodingKeyIsZUPT"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CMOdometry;
  v5 = [(CMLogItem *)&v7 copyWithZone:?];
  if (v5)
  {
    v5[3] = [(NSNumber *)self->_deltaPositionX copyWithZone:zone];
    v5[4] = [(NSNumber *)self->_deltaPositionY copyWithZone:zone];
    v5[5] = [(NSNumber *)self->_deltaPositionZ copyWithZone:zone];
    v5[6] = [(NSNumber *)self->_deltaVelocityX copyWithZone:zone];
    v5[7] = [(NSNumber *)self->_deltaVelocityY copyWithZone:zone];
    v5[8] = [(NSNumber *)self->_deltaVelocityZ copyWithZone:zone];
    v5[9] = [(NSNumber *)self->_quaternionX copyWithZone:zone];
    v5[10] = [(NSNumber *)self->_quaternionY copyWithZone:zone];
    v5[11] = [(NSNumber *)self->_quaternionZ copyWithZone:zone];
    v5[12] = [(NSNumber *)self->_quaternionW copyWithZone:zone];
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