@interface CLSerializableWalkingSpeedStrideCal
- (CLSerializableWalkingSpeedStrideCal)initWithCoder:(id)coder;
- (CLSerializableWalkingSpeedStrideCal)initWithWalkingSpeedStrideCal:(const WalkingSpeedStrideCal *)cal;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)getWalkingSpeedStrideCal:(WalkingSpeedStrideCal *)cal;
@end

@implementation CLSerializableWalkingSpeedStrideCal

- (CLSerializableWalkingSpeedStrideCal)initWithWalkingSpeedStrideCal:(const WalkingSpeedStrideCal *)cal
{
  v7.receiver = self;
  v7.super_class = CLSerializableWalkingSpeedStrideCal;
  result = [(CLSerializableWalkingSpeedStrideCal *)&v7 init];
  if (result)
  {
    v5 = *&cal->startTime;
    v6 = *&cal->cadenceWatch;
    *&result->_strideCal.meanWalkingSpeed = *&cal->meanWalkingSpeed;
    *&result->_strideCal.cadenceWatch = v6;
    *&result->_strideCal.startTime = v5;
  }

  return result;
}

- (void)getWalkingSpeedStrideCal:(WalkingSpeedStrideCal *)cal
{
  v3 = *&self->_strideCal.startTime;
  v4 = *&self->_strideCal.meanWalkingSpeed;
  *&cal->cadenceWatch = *&self->_strideCal.cadenceWatch;
  *&cal->meanWalkingSpeed = v4;
  *&cal->startTime = v3;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"startTime" forKey:self->_strideCal.startTime];
  [coder encodeDouble:@"endTime" forKey:self->_strideCal.endTime];
  [coder encodeDouble:@"cadenceWatch" forKey:self->_strideCal.cadenceWatch];
  [coder encodeDouble:@"cadenceGaitCycle" forKey:self->_strideCal.cadenceGaitCycle];
  [coder encodeDouble:@"meanWalkingSpeed" forKey:self->_strideCal.meanWalkingSpeed];
  gaitCycleYield = self->_strideCal.gaitCycleYield;

  [coder encodeDouble:@"gaitCycleYield" forKey:gaitCycleYield];
}

- (CLSerializableWalkingSpeedStrideCal)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CLSerializableWalkingSpeedStrideCal;
  v4 = [(CLSerializableWalkingSpeedStrideCal *)&v12 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"startTime"];
    v4->_strideCal.startTime = v5;
    [coder decodeDoubleForKey:@"endTime"];
    v4->_strideCal.endTime = v6;
    [coder decodeDoubleForKey:@"cadenceWatch"];
    v4->_strideCal.cadenceWatch = v7;
    [coder decodeDoubleForKey:@"cadenceGaitCycle"];
    v4->_strideCal.cadenceGaitCycle = v8;
    [coder decodeDoubleForKey:@"meanWalkingSpeed"];
    v4->_strideCal.meanWalkingSpeed = v9;
    [coder decodeDoubleForKey:@"gaitCycleYield"];
    v4->_strideCal.gaitCycleYield = v10;
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end