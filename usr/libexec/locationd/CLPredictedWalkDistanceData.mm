@interface CLPredictedWalkDistanceData
- (CLPredictedWalkDistanceData)initWithCoder:(id)coder;
- (CLPredictedWalkDistanceData)initWithPredictedWalkDistanceBoutEntry:(const CLPredictedWalkDistanceBoutEntry *)entry;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPredictedWalkDistanceData

- (CLPredictedWalkDistanceData)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CLPredictedWalkDistanceData;
  v4 = [(CLPredictedWalkDistanceData *)&v11 init];
  if (v4)
  {
    v4->_recordId = [coder decodeIntForKey:@"recordId"];
    [coder decodeDoubleForKey:@"startTime"];
    v4->_startTime = v5;
    [coder decodeDoubleForKey:@"endTime"];
    v4->_endTime = v6;
    v4->_stepCount = [coder decodeInt32ForKey:@"stepCount"];
    [coder decodeDoubleForKey:@"distance"];
    v4->_distance = v7;
    [coder decodeDoubleForKey:@"activeTime"];
    v4->_activeTime = v8;
    v4->_elevationAscended = [coder decodeInt32ForKey:@"elevationAscended"];
    v4->_elevationDescended = [coder decodeInt32ForKey:@"elevationDescended"];
    v4->_stepCountGPS = [coder decodeInt32ForKey:@"stepCountGPS"];
    [coder decodeDoubleForKey:@"distanceGPS"];
    v4->_distanceGPS = v9;
    v4->_boutType = [coder decodeIntForKey:@"boutType"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_recordId forKey:@"recordId"];
  [coder encodeDouble:@"startTime" forKey:self->_startTime];
  [coder encodeDouble:@"endTime" forKey:self->_endTime];
  [coder encodeInt32:self->_stepCount forKey:@"stepCount"];
  [coder encodeDouble:@"distance" forKey:self->_distance];
  [coder encodeDouble:@"activeTime" forKey:self->_activeTime];
  [coder encodeInt32:self->_elevationAscended forKey:@"elevationAscended"];
  [coder encodeInt32:self->_elevationDescended forKey:@"elevationDescended"];
  [coder encodeInt32:self->_stepCountGPS forKey:@"stepCountGPS"];
  [coder encodeDouble:@"distanceGPS" forKey:self->_distanceGPS];
  boutType = self->_boutType;

  [coder encodeInt:boutType forKey:@"boutType"];
}

- (CLPredictedWalkDistanceData)initWithPredictedWalkDistanceBoutEntry:(const CLPredictedWalkDistanceBoutEntry *)entry
{
  v7.receiver = self;
  v7.super_class = CLPredictedWalkDistanceData;
  result = [(CLPredictedWalkDistanceData *)&v7 init];
  if (result)
  {
    result->_recordId = entry->recordId;
    result->_startTime = entry->startTime;
    result->_endTime = entry->endTime;
    result->_stepCount = entry->stepCount;
    result->_distance = entry->distance;
    result->_activeTime = entry->activeTime;
    result->_elevationAscended = entry->elevationAscended;
    result->_elevationDescended = entry->elevationDescended;
    stepCountGPS = entry->stepCountGPS;
    result->_distanceGPS = entry->distanceGPS;
    boutType = entry->boutType;
    result->_stepCountGPS = stepCountGPS;
    result->_boutType = boutType;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  recordId = [(CLPredictedWalkDistanceData *)self recordId];
  [(CLPredictedWalkDistanceData *)self startTime];
  v7 = v6;
  [(CLPredictedWalkDistanceData *)self endTime];
  v9 = v8;
  stepCount = [(CLPredictedWalkDistanceData *)self stepCount];
  [(CLPredictedWalkDistanceData *)self distance];
  v12 = v11;
  [(CLPredictedWalkDistanceData *)self activeTime];
  v14 = v13;
  elevationAscended = [(CLPredictedWalkDistanceData *)self elevationAscended];
  elevationDescended = [(CLPredictedWalkDistanceData *)self elevationDescended];
  stepCountGPS = [(CLPredictedWalkDistanceData *)self stepCountGPS];
  [(CLPredictedWalkDistanceData *)self distanceGPS];
  return [NSString stringWithFormat:@"%@, <recordId %d, startTime %f, endTime %f, stepCount %u, distance %f, activeTime %f, elevationAscended %u, elevationDescended %u, stepCountGPS %u, distanceGPS %f, boutType %d>", v4, recordId, v7, v9, stepCount, v12, v14, elevationAscended, elevationDescended, stepCountGPS, v18, [(CLPredictedWalkDistanceData *)self boutType]];
}

@end