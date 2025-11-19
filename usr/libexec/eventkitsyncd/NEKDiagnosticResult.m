@interface NEKDiagnosticResult
- (NEKDiagnosticResult)initWithFirstFoundKey:(id)a3;
- (double)updateFirstFoundToNotSetOrNewTimestamp:(double)a3 ifConditionMet:(BOOL)a4;
- (id)formattedFirstFoundDate;
- (id)formattedLastDiagnosticDate;
@end

@implementation NEKDiagnosticResult

- (NEKDiagnosticResult)initWithFirstFoundKey:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NEKDiagnosticResult;
  v6 = [(NEKDiagnosticResult *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_firstFoundKey, a3);
    v8 = objc_alloc_init(NSISO8601DateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    v10 = +[NSCalendar currentCalendar];
    v11 = [v10 timeZone];
    [(NSISO8601DateFormatter *)v7->_dateFormatter setTimeZone:v11];
  }

  return v7;
}

- (double)updateFirstFoundToNotSetOrNewTimestamp:(double)a3 ifConditionMet:(BOOL)a4
{
  v4 = a4;
  v7 = +[NEKEnvironment instance];
  v8 = [v7 tinyStore];

  if (v4)
  {
    [v8 getDoubleValueForKey:self->_firstFoundKey default:*&qword_1000D1130];
    if (v9 == *&qword_1000D1130)
    {
      [v8 setDoubleValue:self->_firstFoundKey forKey:a3];
    }

    else
    {
      a3 = v9;
    }
  }

  else
  {
    [v8 setDoubleValue:self->_firstFoundKey forKey:*&qword_1000D1130];
    a3 = *&qword_1000D1130;
  }

  return a3;
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