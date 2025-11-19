@interface FMDEventLoggerEventLaunch
- (FMDEventLoggerEventLaunch)initWithCoder:(id)a3;
- (FMDEventLoggerEventLaunch)initWithEventName:(id)a3;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)a3;
- (void)setLaunchReason:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FMDEventLoggerEventLaunch

- (FMDEventLoggerEventLaunch)initWithEventName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDEventLoggerEventLaunch;
  v5 = [(FMDEventLoggerEventLaunch *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventLaunch *)v5 setEventName:v4];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventLaunch *)v6 setMutableDictionary:v7];

    v8 = [(FMDEventLoggerEventLaunch *)v6 mutableDictionary];
    [v8 setObject:&off_1002E78D0 forKeyedSubscript:@"FMDEventLoggerFacilityDataPeekCompoundScalarValue"];
  }

  return v6;
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

    v7 = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
    [v7 fm_safelySetObject:v8 forKey:v6];
  }

  else
  {
    v7 = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
    [v7 removeObjectForKey:v6];
  }

LABEL_7:
}

- (void)setLaunchReason:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_launchReason, a3);
    v6 = [NSString stringWithFormat:@"%@.%@", @"FMDDaemonLaunchEvent", v7];
    [(FMDEventLoggerEventLaunch *)self setEventName:v6];

    v5 = v7;
  }
}

- (id)userInfo
{
  v2 = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSString)description
{
  v2 = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  v3 = [v2 description];

  return v3;
}

- (FMDEventLoggerEventLaunch)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLaunch;
  v5 = [(FMDEventLoggerEventLaunch *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventLaunch *)v5 setMutableDictionary:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventLaunch *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDEventLoggerEventLaunch *)self eventName];
  [v4 encodeObject:v5 forKey:@"eventName"];

  v6 = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  [v4 encodeObject:v6 forKey:@"mutableDictionary"];
}

@end