@interface _DASTaskCheckpointPair
- (_DASTaskCheckpointPair)initWithCoder:(id)a3;
- (_DASTaskCheckpointPair)initWithParams:(id)a3 terminalEvent:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASTaskCheckpointPair

- (_DASTaskCheckpointPair)initWithParams:(id)a3 terminalEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DASTaskCheckpointPair;
  v9 = [(_DASTaskCheckpointPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startEvent, a3);
    objc_storeStrong(&v10->_terminalEvent, a4);
  }

  return v10;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(_DASTaskCheckpointPair *)self description];
  v6 = [NSString stringWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)description
{
  v2 = [(_DASTaskCheckpointPair *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(_DASTaskCheckpointPair *)self startEvent];

  if (v4)
  {
    v5 = [(_DASTaskCheckpointPair *)self startEvent];
    v6 = [v5 metricKeysAndValues];
    v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

    [v5 monotonicTimestamp];
    v8 = [NSNumber numberWithDouble:?];
    [v7 setObject:v8 forKeyedSubscript:@"monotonicTimeStamp"];

    [v5 epochTimestamp];
    v9 = [NSNumber numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"epoch"];

    [v3 setObject:v7 forKeyedSubscript:@"Start Event"];
  }

  v10 = [(_DASTaskCheckpointPair *)self terminalEvent];

  if (v10)
  {
    v11 = [(_DASTaskCheckpointPair *)self terminalEvent];
    v12 = [v11 metricKeysAndValues];
    v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

    [v11 monotonicTimestamp];
    v14 = [NSNumber numberWithDouble:?];
    [v13 setObject:v14 forKeyedSubscript:@"monotonicTimeStamp"];

    [v11 epochTimestamp];
    v15 = [NSNumber numberWithDouble:?];
    [v13 setObject:v15 forKeyedSubscript:@"epoch"];

    [v3 setObject:v13 forKeyedSubscript:@"Terminal Event"];
  }

  return v3;
}

- (_DASTaskCheckpointPair)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DASTaskCheckpointPair;
  v5 = [(_DASTaskCheckpointPair *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:sub_10010219C() forKey:@"startEvent"];
    startEvent = v5->_startEvent;
    v5->_startEvent = v6;

    v8 = [v4 decodeObjectOfClass:sub_10010219C() forKey:@"terminalEvent"];
    terminalEvent = v5->_terminalEvent;
    v5->_terminalEvent = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startEvent = self->_startEvent;
  v5 = a3;
  [v5 encodeObject:startEvent forKey:@"startEvent"];
  [v5 encodeObject:self->_terminalEvent forKey:@"terminalEvent"];
}

@end