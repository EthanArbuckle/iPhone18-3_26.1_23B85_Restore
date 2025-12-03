@interface FMDEventLoggerEventLocate
- (FMDEventLoggerEventLocate)initWithCoder:(id)coder;
- (FMDEventLoggerEventLocate)initWithEventName:(id)name;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)coder;
- (void)setLocation:(id)location reason:(id)reason;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDEventLoggerEventLocate

- (FMDEventLoggerEventLocate)initWithEventName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLocate;
  v5 = [(FMDEventLoggerEventLocate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventLocate *)v5 setEventName:nameCopy];
    [(FMDEventLoggerEventLocate *)v6 setGroupByKey:@"FMDEventLoggerEventLocateTimestampKey"];
    [(FMDEventLoggerEventLocate *)v6 setPrecision:&off_1002E7CF0];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventLocate *)v6 setMutableDictionary:v7];
  }

  return v6;
}

- (void)setLocation:(id)location reason:(id)reason
{
  locationCopy = location;
  v10 = +[NSMutableDictionary dictionary];
  dictionaryValue = [locationCopy dictionaryValue];
  [v10 addEntriesFromDictionary:dictionaryValue];

  timeStamp = [locationCopy timeStamp];

  [timeStamp timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [v10 setObject:v8 forKeyedSubscript:@"FMDEventLoggerEventLocateTimestampKey"];

  mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  [mutableDictionary addEntriesFromDictionary:v10];
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

    mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
    [mutableDictionary fm_safelySetObject:objectCopy forKey:keyCopy];
  }

  else
  {
    mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
    [mutableDictionary removeObjectForKey:keyCopy];
  }

LABEL_7:
}

- (id)userInfo
{
  mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  v3 = [mutableDictionary copy];

  return v3;
}

- (NSString)description
{
  mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  v3 = [mutableDictionary description];

  return v3;
}

- (FMDEventLoggerEventLocate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventLocate;
  v5 = [(FMDEventLoggerEventLocate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventLocate *)v5 setMutableDictionary:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventLocate *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(FMDEventLoggerEventLocate *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  mutableDictionary = [(FMDEventLoggerEventLocate *)self mutableDictionary];
  [coderCopy encodeObject:mutableDictionary forKey:@"mutableDictionary"];
}

@end