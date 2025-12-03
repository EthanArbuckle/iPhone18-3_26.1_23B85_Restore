@interface MOEventMotionActivity
+ (id)descriptionOfMotionType:(unint64_t)type;
- (MOEventMotionActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventMotionActivity

+ (id)descriptionOfMotionType:(unint64_t)type
{
  if (type > 6)
  {
    return @"Invalid";
  }

  else
  {
    return off_100336DD0[type];
  }
}

- (void)encodeWithCoder:(id)coder
{
  motionStepCount = self->_motionStepCount;
  coderCopy = coder;
  [coderCopy encodeObject:motionStepCount forKey:@"motionStepCount"];
  [coderCopy encodeInteger:self->_motionType forKey:@"motionType"];
  [(NSNumber *)self->_motionDistance doubleValue];
  [coderCopy encodeDouble:@"motionDistance" forKey:?];
}

- (MOEventMotionActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOEventMotionActivity;
  v5 = [(MOEventMotionActivity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"motionStepCount"];
    motionStepCount = v5->_motionStepCount;
    v5->_motionStepCount = v6;

    v5->_motionType = [coderCopy decodeIntForKey:@"motionType"];
    [coderCopy decodeDoubleForKey:@"motionDistance"];
    v8 = [NSNumber numberWithDouble:?];
    motionDistance = v5->_motionDistance;
    v5->_motionDistance = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventMotionActivity);
  v4->_motionType = self->_motionType;
  objc_storeStrong(&v4->_motionStepCount, self->_motionStepCount);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [MOEventMotionActivity descriptionOfMotionType:[(MOEventMotionActivity *)self motionType]];
  v5 = [v3 initWithFormat:@"motion type, %@", v4];

  return v5;
}

@end