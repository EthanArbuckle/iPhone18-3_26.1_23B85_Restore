@interface FMDEventLoggerEventStat
- (FMDEventLoggerEventStat)initWithCoder:(id)coder;
- (FMDEventLoggerEventStat)initWithEventName:(id)name;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)coder;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDEventLoggerEventStat

- (FMDEventLoggerEventStat)initWithEventName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventStat;
  v5 = [(FMDEventLoggerEventStat *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventStat *)v5 setEventName:nameCopy];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventStat *)v6 setMutableDictionary:v7];
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

    mutableDictionary = [(FMDEventLoggerEventStat *)self mutableDictionary];
    [mutableDictionary fm_safelySetObject:objectCopy forKey:keyCopy];
  }

  else
  {
    mutableDictionary = [(FMDEventLoggerEventStat *)self mutableDictionary];
    [mutableDictionary removeObjectForKey:keyCopy];
  }

LABEL_7:
}

- (id)userInfo
{
  mutableDictionary = [(FMDEventLoggerEventStat *)self mutableDictionary];
  v3 = [mutableDictionary copy];

  return v3;
}

- (NSString)description
{
  eventName = [(FMDEventLoggerEventStat *)self eventName];
  statValue = [(FMDEventLoggerEventStat *)self statValue];
  groupValue = [(FMDEventLoggerEventStat *)self groupValue];
  [groupValue doubleValue];
  v7 = [NSString stringWithFormat:@"%@ : %@ %f", eventName, statValue, v6];

  return v7;
}

- (FMDEventLoggerEventStat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FMDEventLoggerEventStat;
  v5 = [(FMDEventLoggerEventStat *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventStat *)v5 setMutableDictionary:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventStat *)v5 setEventName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statValue"];
    [(FMDEventLoggerEventStat *)v5 setStatValue:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupValue"];
    [(FMDEventLoggerEventStat *)v5 setGroupValue:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(FMDEventLoggerEventStat *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  mutableDictionary = [(FMDEventLoggerEventStat *)self mutableDictionary];
  [coderCopy encodeObject:mutableDictionary forKey:@"mutableDictionary"];

  statValue = [(FMDEventLoggerEventStat *)self statValue];
  [coderCopy encodeObject:statValue forKey:@"statValue"];

  groupValue = [(FMDEventLoggerEventStat *)self groupValue];
  [coderCopy encodeObject:groupValue forKey:@"groupValue"];
}

@end