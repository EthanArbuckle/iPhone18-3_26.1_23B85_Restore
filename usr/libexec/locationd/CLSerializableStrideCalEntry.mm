@interface CLSerializableStrideCalEntry
- (CLSerializableStrideCalEntry)initWithCoder:(id)a3;
- (CLSerializableStrideCalEntry)initWithStrideCalEntry:(const CLStrideCalEntry *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getStrideCalEntry:(CLStrideCalEntry *)a3;
@end

@implementation CLSerializableStrideCalEntry

- (CLSerializableStrideCalEntry)initWithStrideCalEntry:(const CLStrideCalEntry *)a3
{
  v11.receiver = self;
  v11.super_class = CLSerializableStrideCalEntry;
  result = [(CLSerializableStrideCalEntry *)&v11 init];
  if (result)
  {
    v5 = *&a3->recordId;
    v6 = *&a3->pacebin;
    v7 = *&a3->kvalueTrack;
    *&result->_entry.endTime = *&a3->endTime;
    *&result->_entry.kvalueTrack = v7;
    *&result->_entry.pacebin = v6;
    *&result->_entry.recordId = v5;
    v8 = *&a3->steps;
    v9 = *&a3->percentGrade;
    v10 = *&a3->timestamp;
    *&result->_entry.runningFormStrideLengthMetrics = *&a3->runningFormStrideLengthMetrics;
    *&result->_entry.timestamp = v10;
    *&result->_entry.percentGrade = v9;
    *&result->_entry.steps = v8;
  }

  return result;
}

- (void)getStrideCalEntry:(CLStrideCalEntry *)a3
{
  v3 = *&self->_entry.recordId;
  v4 = *&self->_entry.pacebin;
  v5 = *&self->_entry.endTime;
  *&a3->kvalueTrack = *&self->_entry.kvalueTrack;
  *&a3->endTime = v5;
  *&a3->recordId = v3;
  *&a3->pacebin = v4;
  v6 = *&self->_entry.steps;
  v7 = *&self->_entry.percentGrade;
  v8 = *&self->_entry.timestamp;
  *&a3->runningFormStrideLengthMetrics = *&self->_entry.runningFormStrideLengthMetrics;
  *&a3->percentGrade = v7;
  *&a3->timestamp = v8;
  *&a3->steps = v6;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_entry.recordId forKey:@"recordId"];
  [a3 encodeDouble:@"startTime" forKey:self->_entry.startTime];
  [a3 encodeDouble:@"endTime" forKey:self->_entry.endTime];
  [a3 encodeInt:self->_entry.pacebin forKey:@"pacebin"];
  [a3 encodeDouble:@"kvalue" forKey:self->_entry.kvalue];
  [a3 encodeDouble:@"kvalueTrack" forKey:self->_entry.kvalueTrack];
  [a3 encodeDouble:@"score" forKey:self->_entry.score];
  [a3 encodeDouble:@"distance" forKey:self->_entry.distance];
  [a3 encodeInt:self->_entry.steps forKey:@"steps"];
  [a3 encodeInt:self->_entry.session forKey:@"session"];
  [a3 encodeDouble:@"speed" forKey:self->_entry.speed];
  [a3 encodeDouble:@"percentGrade" forKey:self->_entry.percentGrade];
  [a3 encodeInt:self->_entry.gpsSource forKey:@"gpsSource"];
  [a3 encodeDouble:@"timestamp" forKey:self->_entry.timestamp];
  [a3 encodeDouble:@"runningFormStrideLength" forKey:self->_entry.runningFormStrideLength];
  runningFormStrideLengthMetrics = self->_entry.runningFormStrideLengthMetrics;

  [a3 encodeInt:runningFormStrideLengthMetrics forKey:@"runningFormStrideLengthMetrics"];
}

- (CLSerializableStrideCalEntry)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CLSerializableStrideCalEntry;
  v4 = [(CLSerializableStrideCalEntry *)&v16 init];
  if (v4)
  {
    v4->_entry.recordId = [a3 decodeIntForKey:@"recordId"];
    [a3 decodeDoubleForKey:@"startTime"];
    v4->_entry.startTime = v5;
    [a3 decodeDoubleForKey:@"endTime"];
    v4->_entry.endTime = v6;
    v4->_entry.pacebin = [a3 decodeIntForKey:@"pacebin"];
    [a3 decodeDoubleForKey:@"kvalue"];
    v4->_entry.kvalue = v7;
    [a3 decodeDoubleForKey:@"kvalueTrack"];
    v4->_entry.kvalueTrack = v8;
    [a3 decodeDoubleForKey:@"score"];
    v4->_entry.score = v9;
    [a3 decodeDoubleForKey:@"distance"];
    v4->_entry.distance = v10;
    v4->_entry.steps = [a3 decodeIntForKey:@"steps"];
    v4->_entry.session = [a3 decodeIntForKey:@"session"];
    [a3 decodeDoubleForKey:@"speed"];
    v4->_entry.speed = v11;
    [a3 decodeDoubleForKey:@"percentGrade"];
    v4->_entry.percentGrade = v12;
    v4->_entry.gpsSource = [a3 decodeIntForKey:@"gpsSource"];
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_entry.timestamp = v13;
    [a3 decodeDoubleForKey:@"runningFormStrideLength"];
    v4->_entry.runningFormStrideLength = v14;
    v4->_entry.runningFormStrideLengthMetrics = [a3 decodeIntForKey:@"runningFormStrideLengthMetrics"];
  }

  return v4;
}

@end