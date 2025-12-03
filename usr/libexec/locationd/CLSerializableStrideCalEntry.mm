@interface CLSerializableStrideCalEntry
- (CLSerializableStrideCalEntry)initWithCoder:(id)coder;
- (CLSerializableStrideCalEntry)initWithStrideCalEntry:(const CLStrideCalEntry *)entry;
- (void)encodeWithCoder:(id)coder;
- (void)getStrideCalEntry:(CLStrideCalEntry *)entry;
@end

@implementation CLSerializableStrideCalEntry

- (CLSerializableStrideCalEntry)initWithStrideCalEntry:(const CLStrideCalEntry *)entry
{
  v11.receiver = self;
  v11.super_class = CLSerializableStrideCalEntry;
  result = [(CLSerializableStrideCalEntry *)&v11 init];
  if (result)
  {
    v5 = *&entry->recordId;
    v6 = *&entry->pacebin;
    v7 = *&entry->kvalueTrack;
    *&result->_entry.endTime = *&entry->endTime;
    *&result->_entry.kvalueTrack = v7;
    *&result->_entry.pacebin = v6;
    *&result->_entry.recordId = v5;
    v8 = *&entry->steps;
    v9 = *&entry->percentGrade;
    v10 = *&entry->timestamp;
    *&result->_entry.runningFormStrideLengthMetrics = *&entry->runningFormStrideLengthMetrics;
    *&result->_entry.timestamp = v10;
    *&result->_entry.percentGrade = v9;
    *&result->_entry.steps = v8;
  }

  return result;
}

- (void)getStrideCalEntry:(CLStrideCalEntry *)entry
{
  v3 = *&self->_entry.recordId;
  v4 = *&self->_entry.pacebin;
  v5 = *&self->_entry.endTime;
  *&entry->kvalueTrack = *&self->_entry.kvalueTrack;
  *&entry->endTime = v5;
  *&entry->recordId = v3;
  *&entry->pacebin = v4;
  v6 = *&self->_entry.steps;
  v7 = *&self->_entry.percentGrade;
  v8 = *&self->_entry.timestamp;
  *&entry->runningFormStrideLengthMetrics = *&self->_entry.runningFormStrideLengthMetrics;
  *&entry->percentGrade = v7;
  *&entry->timestamp = v8;
  *&entry->steps = v6;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_entry.recordId forKey:@"recordId"];
  [coder encodeDouble:@"startTime" forKey:self->_entry.startTime];
  [coder encodeDouble:@"endTime" forKey:self->_entry.endTime];
  [coder encodeInt:self->_entry.pacebin forKey:@"pacebin"];
  [coder encodeDouble:@"kvalue" forKey:self->_entry.kvalue];
  [coder encodeDouble:@"kvalueTrack" forKey:self->_entry.kvalueTrack];
  [coder encodeDouble:@"score" forKey:self->_entry.score];
  [coder encodeDouble:@"distance" forKey:self->_entry.distance];
  [coder encodeInt:self->_entry.steps forKey:@"steps"];
  [coder encodeInt:self->_entry.session forKey:@"session"];
  [coder encodeDouble:@"speed" forKey:self->_entry.speed];
  [coder encodeDouble:@"percentGrade" forKey:self->_entry.percentGrade];
  [coder encodeInt:self->_entry.gpsSource forKey:@"gpsSource"];
  [coder encodeDouble:@"timestamp" forKey:self->_entry.timestamp];
  [coder encodeDouble:@"runningFormStrideLength" forKey:self->_entry.runningFormStrideLength];
  runningFormStrideLengthMetrics = self->_entry.runningFormStrideLengthMetrics;

  [coder encodeInt:runningFormStrideLengthMetrics forKey:@"runningFormStrideLengthMetrics"];
}

- (CLSerializableStrideCalEntry)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = CLSerializableStrideCalEntry;
  v4 = [(CLSerializableStrideCalEntry *)&v16 init];
  if (v4)
  {
    v4->_entry.recordId = [coder decodeIntForKey:@"recordId"];
    [coder decodeDoubleForKey:@"startTime"];
    v4->_entry.startTime = v5;
    [coder decodeDoubleForKey:@"endTime"];
    v4->_entry.endTime = v6;
    v4->_entry.pacebin = [coder decodeIntForKey:@"pacebin"];
    [coder decodeDoubleForKey:@"kvalue"];
    v4->_entry.kvalue = v7;
    [coder decodeDoubleForKey:@"kvalueTrack"];
    v4->_entry.kvalueTrack = v8;
    [coder decodeDoubleForKey:@"score"];
    v4->_entry.score = v9;
    [coder decodeDoubleForKey:@"distance"];
    v4->_entry.distance = v10;
    v4->_entry.steps = [coder decodeIntForKey:@"steps"];
    v4->_entry.session = [coder decodeIntForKey:@"session"];
    [coder decodeDoubleForKey:@"speed"];
    v4->_entry.speed = v11;
    [coder decodeDoubleForKey:@"percentGrade"];
    v4->_entry.percentGrade = v12;
    v4->_entry.gpsSource = [coder decodeIntForKey:@"gpsSource"];
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_entry.timestamp = v13;
    [coder decodeDoubleForKey:@"runningFormStrideLength"];
    v4->_entry.runningFormStrideLength = v14;
    v4->_entry.runningFormStrideLengthMetrics = [coder decodeIntForKey:@"runningFormStrideLengthMetrics"];
  }

  return v4;
}

@end