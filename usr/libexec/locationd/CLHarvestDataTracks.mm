@interface CLHarvestDataTracks
- (CLMotionActivity)dominantMotionActivity;
- (CLMotionActivity)motionActivity;
- (CLMotionActivity)rawMotionActivity;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation CLHarvestDataTracks

- (id).cxx_construct
{
  *(self + 120) = 0xFFFF;
  *(self + 484) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *(self + 500) = xmmword_101C75BF0;
  *(self + 516) = _Q2;
  *(self + 532) = _Q2;
  *(self + 548) = _Q2;
  *(self + 141) = 0;
  *(self + 71) = 0xBFF0000000000000;
  *(self + 36) = 0u;
  *(self + 148) = 0;
  *(self + 596) = 0xBFF0000000000000;
  *(self + 151) = 0x7FFFFFFF;
  *(self + 76) = 0;
  *(self + 78) = 0;
  *(self + 77) = 0;
  *(self + 632) = 0;
  return self;
}

- (CLMotionActivity)rawMotionActivity
{
  v10 = *&self[1].fsmTransitionData.fConsecStatic;
  v11 = *&self[2].conservativeMountedProbability;
  *&retstr[1].mountedConfidence = *&self[2].source;
  *&retstr[1].isStanding = v11;
  *&retstr[1].isVehicleConnected = self[2].timestamp;
  v12 = *&self[1].source;
  v13 = *&self[1].timestamp;
  *&retstr->isStanding = *&self[1].conservativeMountedProbability;
  *&retstr->isVehicleConnected = v13;
  *&retstr->vehicleType = *&self[1].estExitTime;
  *&retstr[1].type = v10;
  *&retstr->type = *&self->fsmTransitionData.fConsecStatic;
  *&retstr->mountedConfidence = v12;
  return self;
}

- (CLMotionActivity)motionActivity
{
  v10 = *&self[4].type;
  *&retstr[1].mountedConfidence = *&self[3].vehicleType;
  *&retstr[1].isStanding = v10;
  *&retstr[1].isVehicleConnected = *&self[4].mountedConfidence;
  v11 = *&self[3].mountedConfidence;
  *&retstr->isStanding = *&self[3].type;
  *&retstr->isVehicleConnected = v11;
  v12 = *&self[3].isVehicleConnected;
  *&retstr->vehicleType = *&self[3].isStanding;
  *&retstr[1].type = v12;
  v13 = *&self[2].vehicleType;
  *&retstr->type = *&self[2].isVehicleConnected;
  *&retstr->mountedConfidence = v13;
  return self;
}

- (CLMotionActivity)dominantMotionActivity
{
  *&retstr[1].isVehicleConnected = *&self[5].fsmTransitionData.fConsecStatic;
  v10 = *&self[5].estExitTime;
  *&retstr[1].mountedConfidence = *&self[5].timestamp;
  *&retstr[1].isStanding = v10;
  v11 = *&self[4].fsmTransitionData.fConsecStatic;
  *&retstr->isStanding = *&self[4].estExitTime;
  *&retstr->isVehicleConnected = v11;
  v12 = *&self[5].conservativeMountedProbability;
  *&retstr->vehicleType = *&self[5].source;
  *&retstr[1].type = v12;
  v13 = *&self[4].timestamp;
  *&retstr->type = *&self[4].conservativeMountedProbability;
  *&retstr->mountedConfidence = v13;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHarvestDataTracks;
  [(CLHarvestDataTracks *)&v3 dealloc];
}

@end