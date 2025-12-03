@interface NEKDiagnosticResult
- (NEKDiagnosticResult)initWithFirstFoundKey:(id)key;
- (double)updateFirstFoundToNotSetOrNewTimestamp:(double)timestamp ifConditionMet:(BOOL)met;
- (id)formattedFirstFoundDate;
- (id)formattedLastDiagnosticDate;
@end

@implementation NEKDiagnosticResult

- (NEKDiagnosticResult)initWithFirstFoundKey:(id)key
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = NEKDiagnosticResult;
  v6 = [(NEKDiagnosticResult *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_firstFoundKey, key);
    v8 = objc_alloc_init(NSISO8601DateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    v10 = +[NSCalendar currentCalendar];
    timeZone = [v10 timeZone];
    [(NSISO8601DateFormatter *)v7->_dateFormatter setTimeZone:timeZone];
  }

  return v7;
}

- (double)updateFirstFoundToNotSetOrNewTimestamp:(double)timestamp ifConditionMet:(BOOL)met
{
  metCopy = met;
  v7 = +[NEKEnvironment instance];
  tinyStore = [v7 tinyStore];

  if (metCopy)
  {
    [tinyStore getDoubleValueForKey:self->_firstFoundKey default:*&qword_1000D1130];
    if (v9 == *&qword_1000D1130)
    {
      [tinyStore setDoubleValue:self->_firstFoundKey forKey:timestamp];
    }

    else
    {
      timestamp = v9;
    }
  }

  else
  {
    [tinyStore setDoubleValue:self->_firstFoundKey forKey:*&qword_1000D1130];
    timestamp = *&qword_1000D1130;
  }

  return timestamp;
}

- (id)formattedFirstFoundDate
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_firstFoundTimestamp];
  v4 = [(NSISO8601DateFormatter *)self->_dateFormatter stringFromDate:v3];

  return v4;
}

- (id)formattedLastDiagnosticDate
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_lastDiagnosticTimestamp];
  v4 = [(NSISO8601DateFormatter *)self->_dateFormatter stringFromDate:v3];

  return v4;
}

@end