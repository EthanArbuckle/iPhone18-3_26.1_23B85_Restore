@interface CLSerializableWalkingSpeedStrideCal
- (CLSerializableWalkingSpeedStrideCal)initWithCoder:(id)a3;
- (CLSerializableWalkingSpeedStrideCal)initWithWalkingSpeedStrideCal:(const WalkingSpeedStrideCal *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
- (void)getWalkingSpeedStrideCal:(WalkingSpeedStrideCal *)a3;
@end

@implementation CLSerializableWalkingSpeedStrideCal

- (CLSerializableWalkingSpeedStrideCal)initWithWalkingSpeedStrideCal:(const WalkingSpeedStrideCal *)a3
{
  v7.receiver = self;
  v7.super_class = CLSerializableWalkingSpeedStrideCal;
  result = [(CLSerializableWalkingSpeedStrideCal *)&v7 init];
  if (result)
  {
    v5 = *&a3->startTime;
    v6 = *&a3->cadenceWatch;
    *&result->_strideCal.meanWalkingSpeed = *&a3->meanWalkingSpeed;
    *&result->_strideCal.cadenceWatch = v6;
    *&result->_strideCal.startTime = v5;
  }

  return result;
}

- (void)getWalkingSpeedStrideCal:(WalkingSpeedStrideCal *)a3
{
  v3 = *&self->_strideCal.startTime;
  v4 = *&self->_strideCal.meanWalkingSpeed;
  *&a3->cadenceWatch = *&self->_strideCal.cadenceWatch;
  *&a3->meanWalkingSpeed = v4;
  *&a3->startTime = v3;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"startTime" forKey:self->_strideCal.startTime];
  [a3 encodeDouble:@"endTime" forKey:self->_strideCal.endTime];
  [a3 encodeDouble:@"cadenceWatch" forKey:self->_strideCal.cadenceWatch];
  [a3 encodeDouble:@"cadenceGaitCycle" forKey:self->_strideCal.cadenceGaitCycle];
  [a3 encodeDouble:@"meanWalkingSpeed" forKey:self->_strideCal.meanWalkingSpeed];
  gaitCycleYield = self->_strideCal.gaitCycleYield;

  [a3 encodeDouble:@"gaitCycleYield" forKey:gaitCycleYield];
}

- (CLSerializableWalkingSpeedStrideCal)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLSerializableWalkingSpeedStrideCal;
  v4 = [(CLSerializableWalkingSpeedStrideCal *)&v12 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"startTime"];
    v4->_strideCal.startTime = v5;
    [a3 decodeDoubleForKey:@"endTime"];
    v4->_strideCal.endTime = v6;
    [a3 decodeDoubleForKey:@"cadenceWatch"];
    v4->_strideCal.cadenceWatch = v7;
    [a3 decodeDoubleForKey:@"cadenceGaitCycle"];
    v4->_strideCal.cadenceGaitCycle = v8;
    [a3 decodeDoubleForKey:@"meanWalkingSpeed"];
    v4->_strideCal.meanWalkingSpeed = v9;
    [a3 decodeDoubleForKey:@"gaitCycleYield"];
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