@interface CLHarvestDataMotionActivity
- (CLHarvestDataMotionActivity)initWithCoder:(id)coder;
- (CLHarvestDataMotionActivity)initWithMotionActivity:(CLMotionActivity *)activity;
- (CLMotionActivity)activity;
- (void)encodeWithCoder:(id)coder;
- (void)setActivity:(CLMotionActivity *)activity;
@end

@implementation CLHarvestDataMotionActivity

- (CLHarvestDataMotionActivity)initWithMotionActivity:(CLMotionActivity *)activity
{
  v20.receiver = self;
  v20.super_class = CLHarvestDataMotionActivity;
  result = [(CLHarvestDataMotionActivity *)&v20 init:activity];
  if (result)
  {
    *&result->_activity.type = *&activity->type;
    v14 = *&activity->mountedConfidence;
    v15 = *&activity->isStanding;
    v16 = *&activity->isVehicleConnected;
    *&result->_activity.vehicleType = *&activity->vehicleType;
    *&result->_activity.isVehicleConnected = v16;
    *&result->_activity.isStanding = v15;
    *&result->_activity.mountedConfidence = v14;
    v17 = *&activity[1].type;
    v18 = *&activity[1].mountedConfidence;
    v19 = *&activity[1].isStanding;
    result[1]._activity.timestamp = *&activity[1].isVehicleConnected;
    *&result[1]._activity.conservativeMountedProbability = v19;
    *&result[1]._activity.source = v18;
    *&result[1].super.isa = v17;
  }

  return result;
}

- (CLHarvestDataMotionActivity)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CLHarvestDataMotionActivity;
  v4 = [(CLHarvestDataMotionActivity *)&v10 init];
  if (v4)
  {
    v4->_activity.type = [coder decodeIntForKey:@"TypeKey"];
    v4->_activity.confidence = [coder decodeIntForKey:@"ConfidenceKey"];
    v4->_activity.mountedState = [coder decodeIntForKey:@"MountedStateKey"];
    v4->_activity.mountedConfidence = [coder decodeIntForKey:@"MountedConfidenceKey"];
    v4->_activity.isStanding = [coder decodeBoolForKey:@"StandingKey"];
    [coder decodeFloatForKey:@"TiltKey"];
    v4->_activity.tilt = v5;
    [coder decodeDoubleForKey:@"TimestampKey"];
    v4->_activity.timestamp = v6;
    v4->_activity.isVehicleConnected = [coder decodeBoolForKey:@"VehicleConnectedKey"];
    v4->_activity.exitState = [coder decodeIntForKey:@"ExitStateKey"];
    [coder decodeDoubleForKey:@"ExtExitTimeKey"];
    v4->_activity.estExitTime = v7;
    [coder decodeDoubleForKey:@"StartTimeKey"];
    v4[1].super.isa = v8;
    v4[1]._activity.type = [coder decodeIntForKey:@"RawTypeKey"];
    v4[1]._activity.confidence = [coder decodeIntForKey:@"kRawConfidenceKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_activity.type forKey:@"TypeKey"];
  [coder encodeInt:self->_activity.confidence forKey:@"ConfidenceKey"];
  [coder encodeInt:self->_activity.mountedState forKey:@"MountedStateKey"];
  [coder encodeInt:self->_activity.mountedConfidence forKey:@"MountedConfidenceKey"];
  [coder encodeBool:self->_activity.isStanding forKey:@"StandingKey"];
  *&v5 = self->_activity.tilt;
  [coder encodeFloat:@"TiltKey" forKey:v5];
  [coder encodeDouble:@"TimestampKey" forKey:self->_activity.timestamp];
  [coder encodeBool:self->_activity.isVehicleConnected forKey:@"VehicleConnectedKey"];
  [coder encodeInt:self->_activity.exitState forKey:@"ExitStateKey"];
  [coder encodeDouble:@"ExtExitTimeKey" forKey:self->_activity.estExitTime];
  [coder encodeDouble:@"StartTimeKey" forKey:*&self[1].super.isa];
  [coder encodeInt:self[1]._activity.type forKey:@"RawTypeKey"];
  confidence = self[1]._activity.confidence;

  [coder encodeInt:confidence forKey:@"kRawConfidenceKey"];
}

- (CLMotionActivity)activity
{
  v10 = *&self[1].source;
  v11 = *&self[1].timestamp;
  *&retstr[1].mountedConfidence = *&self[1].conservativeMountedProbability;
  *&retstr[1].isStanding = v11;
  *&retstr[1].isVehicleConnected = self[1].estExitTime;
  v12 = *&self->conservativeMountedProbability;
  v13 = *&self->estExitTime;
  *&retstr->isStanding = *&self->timestamp;
  *&retstr->isVehicleConnected = v13;
  *&retstr->vehicleType = *&self->fsmTransitionData.fConsecStatic;
  *&retstr[1].type = v10;
  *&retstr->type = *&self->source;
  *&retstr->mountedConfidence = v12;
  return self;
}

- (void)setActivity:(CLMotionActivity *)activity
{
  *&self->_activity.type = *&activity->type;
  v12 = *&activity->mountedConfidence;
  v13 = *&activity->isStanding;
  v14 = *&activity->isVehicleConnected;
  *&self->_activity.vehicleType = *&activity->vehicleType;
  *&self->_activity.isVehicleConnected = v14;
  *&self->_activity.isStanding = v13;
  *&self->_activity.mountedConfidence = v12;
  v15 = *&activity[1].type;
  v16 = *&activity[1].mountedConfidence;
  v17 = *&activity[1].isStanding;
  self[1]._activity.timestamp = *&activity[1].isVehicleConnected;
  *&self[1]._activity.conservativeMountedProbability = v17;
  *&self[1]._activity.source = v16;
  *&self[1].super.isa = v15;
}

@end