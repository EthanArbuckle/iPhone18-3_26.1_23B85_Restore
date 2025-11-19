@interface FMDEventLoggerEventLocate
- (FMDEventLoggerEventLocate)initWithCoder:(id)a3;
- (FMDEventLoggerEventLocate)initWithEventName:(id)a3;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)a3;
- (void)setLocation:(id)a3 reason:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FMDEventLoggerEventLocate

- (FMDEventLoggerEventLocate)initWithEventName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLocate;
  v5 = [(FMDEventLoggerEventLocate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventLocate *)v5 setEventName:v4];
    [(FMDEventLoggerEventLocate *)v6 setGroupByKey:@"FMDEventLoggerEventLocateTimestampKey"];
    [(FMDEventLoggerEventLocate *)v6 setPrecision:&off_1002E7CF0];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventLocate *)v6 setMutableDictionary:v7];
  }

  return v6;
}

- (void)setLocation:(id)a3 reason:(id)a4
{
  v5 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v6 = [v5 dictionaryValue];
  [v10 addEntriesFromDictionary:v6];

  v7 = [v5 timeStamp];

  [v7 timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [v10 setObject:v8 forKeyedSubscript:@"FMDEventLoggerEventLocateTimestampKey"];

  v9 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  [v9 addEntriesFromDictionary:v10];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 || !v6)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
    [v7 fm_safelySetObject:v8 forKey:v6];
  }

  else
  {
    v7 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
    [v7 removeObjectForKey:v6];
  }

LABEL_7:
}

- (id)userInfo
{
  v2 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSString)description
{
  v2 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  v3 = [v2 description];

  return v3;
}

- (FMDEventLoggerEventLocate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLocate;
  v5 = [(FMDEventLoggerEventLocate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventLocate *)v5 setMutableDictionary:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventLocate *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDEventLoggerEventLocate *)self eventName];
  [v4 encodeObject:v5 forKey:@"eventName"];

  v6 = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  [v4 encodeObject:v6 forKey:@"mutableDictionary"];
}

@end