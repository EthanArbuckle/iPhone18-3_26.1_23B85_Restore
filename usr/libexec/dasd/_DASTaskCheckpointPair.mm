@interface _DASTaskCheckpointPair
- (_DASTaskCheckpointPair)initWithCoder:(id)coder;
- (_DASTaskCheckpointPair)initWithParams:(id)params terminalEvent:(id)event;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASTaskCheckpointPair

- (_DASTaskCheckpointPair)initWithParams:(id)params terminalEvent:(id)event
{
  paramsCopy = params;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = _DASTaskCheckpointPair;
  v9 = [(_DASTaskCheckpointPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startEvent, params);
    objc_storeStrong(&v10->_terminalEvent, event);
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
  dictionaryRepresentation = [(_DASTaskCheckpointPair *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  startEvent = [(_DASTaskCheckpointPair *)self startEvent];

  if (startEvent)
  {
    startEvent2 = [(_DASTaskCheckpointPair *)self startEvent];
    metricKeysAndValues = [startEvent2 metricKeysAndValues];
    v7 = [NSMutableDictionary dictionaryWithDictionary:metricKeysAndValues];

    [startEvent2 monotonicTimestamp];
    v8 = [NSNumber numberWithDouble:?];
    [v7 setObject:v8 forKeyedSubscript:@"monotonicTimeStamp"];

    [startEvent2 epochTimestamp];
    v9 = [NSNumber numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"epoch"];

    [v3 setObject:v7 forKeyedSubscript:@"Start Event"];
  }

  terminalEvent = [(_DASTaskCheckpointPair *)self terminalEvent];

  if (terminalEvent)
  {
    terminalEvent2 = [(_DASTaskCheckpointPair *)self terminalEvent];
    metricKeysAndValues2 = [terminalEvent2 metricKeysAndValues];
    v13 = [NSMutableDictionary dictionaryWithDictionary:metricKeysAndValues2];

    [terminalEvent2 monotonicTimestamp];
    v14 = [NSNumber numberWithDouble:?];
    [v13 setObject:v14 forKeyedSubscript:@"monotonicTimeStamp"];

    [terminalEvent2 epochTimestamp];
    v15 = [NSNumber numberWithDouble:?];
    [v13 setObject:v15 forKeyedSubscript:@"epoch"];

    [v3 setObject:v13 forKeyedSubscript:@"Terminal Event"];
  }

  return v3;
}

- (_DASTaskCheckpointPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _DASTaskCheckpointPair;
  v5 = [(_DASTaskCheckpointPair *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:sub_10010219C() forKey:@"startEvent"];
    startEvent = v5->_startEvent;
    v5->_startEvent = v6;

    v8 = [coderCopy decodeObjectOfClass:sub_10010219C() forKey:@"terminalEvent"];
    terminalEvent = v5->_terminalEvent;
    v5->_terminalEvent = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startEvent = self->_startEvent;
  coderCopy = coder;
  [coderCopy encodeObject:startEvent forKey:@"startEvent"];
  [coderCopy encodeObject:self->_terminalEvent forKey:@"terminalEvent"];
}

@end