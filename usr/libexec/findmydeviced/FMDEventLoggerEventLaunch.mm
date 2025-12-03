@interface FMDEventLoggerEventLaunch
- (FMDEventLoggerEventLaunch)initWithCoder:(id)coder;
- (FMDEventLoggerEventLaunch)initWithEventName:(id)name;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)coder;
- (void)setLaunchReason:(id)reason;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDEventLoggerEventLaunch

- (FMDEventLoggerEventLaunch)initWithEventName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = FMDEventLoggerEventLaunch;
  v5 = [(FMDEventLoggerEventLaunch *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventLaunch *)v5 setEventName:nameCopy];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventLaunch *)v6 setMutableDictionary:v7];

    mutableDictionary = [(FMDEventLoggerEventLaunch *)v6 mutableDictionary];
    [mutableDictionary setObject:&off_1002E78D0 forKeyedSubscript:@"FMDEventLoggerFacilityDataPeekCompoundScalarValue"];
  }

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy || !keyCopy)
  {
    if (!keyCopy)
    {
      goto LABEL_7;
    }

    mutableDictionary = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
    [mutableDictionary fm_safelySetObject:objectCopy forKey:keyCopy];
  }

  else
  {
    mutableDictionary = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
    [mutableDictionary removeObjectForKey:keyCopy];
  }

LABEL_7:
}

- (void)setLaunchReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v7 = reasonCopy;
    objc_storeStrong(&self->_launchReason, reason);
    v6 = [NSString stringWithFormat:@"%@.%@", @"FMDDaemonLaunchEvent", v7];
    [(FMDEventLoggerEventLaunch *)self setEventName:v6];

    reasonCopy = v7;
  }
}

- (id)userInfo
{
  mutableDictionary = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  v3 = [mutableDictionary copy];

  return v3;
}

- (NSString)description
{
  mutableDictionary = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  v3 = [mutableDictionary description];

  return v3;
}

- (FMDEventLoggerEventLaunch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLaunch;
  v5 = [(FMDEventLoggerEventLaunch *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventLaunch *)v5 setMutableDictionary:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventLaunch *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(FMDEventLoggerEventLaunch *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  mutableDictionary = [(FMDEventLoggerEventLaunch *)self mutableDictionary];
  [coderCopy encodeObject:mutableDictionary forKey:@"mutableDictionary"];
}

@end