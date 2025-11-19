@interface CLHarvestDataMotionActivity
- (CLHarvestDataMotionActivity)initWithCoder:(id)a3;
- (CLHarvestDataMotionActivity)initWithMotionActivity:(CLMotionActivity *)a3;
- (CLMotionActivity)activity;
- (void)encodeWithCoder:(id)a3;
- (void)setActivity:(CLMotionActivity *)a3;
@end

@implementation CLHarvestDataMotionActivity

- (CLHarvestDataMotionActivity)initWithMotionActivity:(CLMotionActivity *)a3
{
  v20.receiver = self;
  v20.super_class = CLHarvestDataMotionActivity;
  result = [(CLHarvestDataMotionActivity *)&v20 init:a3];
  if (result)
  {
    *&result->_activity.type = *&a3->type;
    v14 = *&a3->mountedConfidence;
    v15 = *&a3->isStanding;
    v16 = *&a3->isVehicleConnected;
    *&result->_activity.vehicleType = *&a3->vehicleType;
    *&result->_activity.isVehicleConnected = v16;
    *&result->_activity.isStanding = v15;
    *&result->_activity.mountedConfidence = v14;
    v17 = *&a3[1].type;
    v18 = *&a3[1].mountedConfidence;
    v19 = *&a3[1].isStanding;
    result[1]._activity.timestamp = *&a3[1].isVehicleConnected;
    *&result[1]._activity.conservativeMountedProbability = v19;
    *&result[1]._activity.source = v18;
    *&result[1].super.isa = v17;
  }

  return result;
}

- (CLHarvestDataMotionActivity)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLHarvestDataMotionActivity;
  v4 = [(CLHarvestDataMotionActivity *)&v10 init];
  if (v4)
  {
    v4->_activity.type = [a3 decodeIntForKey:@"TypeKey"];
    v4->_activity.confidence = [a3 decodeIntForKey:@"ConfidenceKey"];
    v4->_activity.mountedState = [a3 decodeIntForKey:@"MountedStateKey"];
    v4->_activity.mountedConfidence = [a3 decodeIntForKey:@"MountedConfidenceKey"];
    v4->_activity.isStanding = [a3 decodeBoolForKey:@"StandingKey"];
    [a3 decodeFloatForKey:@"TiltKey"];
    v4->_activity.tilt = v5;
    [a3 decodeDoubleForKey:@"TimestampKey"];
    v4->_activity.timestamp = v6;
    v4->_activity.isVehicleConnected = [a3 decodeBoolForKey:@"VehicleConnectedKey"];
    v4->_activity.exitState = [a3 decodeIntForKey:@"ExitStateKey"];
    [a3 decodeDoubleForKey:@"ExtExitTimeKey"];
    v4->_activity.estExitTime = v7;
    [a3 decodeDoubleForKey:@"StartTimeKey"];
    v4[1].super.isa = v8;
    v4[1]._activity.type = [a3 decodeIntForKey:@"RawTypeKey"];
    v4[1]._activity.confidence = [a3 decodeIntForKey:@"kRawConfidenceKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_activity.type forKey:@"TypeKey"];
  [a3 encodeInt:self->_activity.confidence forKey:@"ConfidenceKey"];
  [a3 encodeInt:self->_activity.mountedState forKey:@"MountedStateKey"];
  [a3 encodeInt:self->_activity.mountedConfidence forKey:@"MountedConfidenceKey"];
  [a3 encodeBool:self->_activity.isStanding forKey:@"StandingKey"];
  *&v5 = self->_activity.tilt;
  [a3 encodeFloat:@"TiltKey" forKey:v5];
  [a3 encodeDouble:@"TimestampKey" forKey:self->_activity.timestamp];
  [a3 encodeBool:self->_activity.isVehicleConnected forKey:@"VehicleConnectedKey"];
  [a3 encodeInt:self->_activity.exitState forKey:@"ExitStateKey"];
  [a3 encodeDouble:@"ExtExitTimeKey" forKey:self->_activity.estExitTime];
  [a3 encodeDouble:@"StartTimeKey" forKey:*&self[1].super.isa];
  [a3 encodeInt:self[1]._activity.type forKey:@"RawTypeKey"];
  confidence = self[1]._activity.confidence;

  [a3 encodeInt:confidence forKey:@"kRawConfidenceKey"];
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

- (void)setActivity:(CLMotionActivity *)a3
{
  *&self->_activity.type = *&a3->type;
  v12 = *&a3->mountedConfidence;
  v13 = *&a3->isStanding;
  v14 = *&a3->isVehicleConnected;
  *&self->_activity.vehicleType = *&a3->vehicleType;
  *&self->_activity.isVehicleConnected = v14;
  *&self->_activity.isStanding = v13;
  *&self->_activity.mountedConfidence = v12;
  v15 = *&a3[1].type;
  v16 = *&a3[1].mountedConfidence;
  v17 = *&a3[1].isStanding;
  self[1]._activity.timestamp = *&a3[1].isVehicleConnected;
  *&self[1]._activity.conservativeMountedProbability = v17;
  *&self[1]._activity.source = v16;
  *&self[1].super.isa = v15;
}

@end