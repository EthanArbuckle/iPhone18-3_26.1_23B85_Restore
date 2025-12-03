@interface FMDEventLoggerEventScalar
- (FMDEventLoggerEventScalar)initWithCoder:(id)coder;
- (FMDEventLoggerEventScalar)initWithEventName:(id)name;
- (NSString)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)coder;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDEventLoggerEventScalar

- (FMDEventLoggerEventScalar)initWithEventName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = FMDEventLoggerEventScalar;
  v5 = [(FMDEventLoggerEventScalar *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(FMDEventLoggerEventScalar *)v5 setEventName:nameCopy];
    v7 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventScalar *)v6 setMutableDictionary:v7];

    mutableDictionary = [(FMDEventLoggerEventScalar *)v6 mutableDictionary];
    [mutableDictionary setObject:&off_1002E7C60 forKeyedSubscript:@"FMDEventLoggerFacilityDataPeekCompoundScalarValue"];
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

    mutableDictionary = [(FMDEventLoggerEventScalar *)self mutableDictionary];
    [mutableDictionary fm_safelySetObject:objectCopy forKey:keyCopy];
  }

  else
  {
    mutableDictionary = [(FMDEventLoggerEventScalar *)self mutableDictionary];
    [mutableDictionary removeObjectForKey:keyCopy];
  }

LABEL_7:
}

- (id)userInfo
{
  mutableDictionary = [(FMDEventLoggerEventScalar *)self mutableDictionary];
  v3 = [mutableDictionary copy];

  return v3;
}

- (NSString)description
{
  mutableDictionary = [(FMDEventLoggerEventScalar *)self mutableDictionary];
  v3 = [mutableDictionary description];

  return v3;
}

- (FMDEventLoggerEventScalar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventScalar;
  v5 = [(FMDEventLoggerEventScalar *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventScalar *)v5 setMutableDictionary:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventScalar *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(FMDEventLoggerEventScalar *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  mutableDictionary = [(FMDEventLoggerEventScalar *)self mutableDictionary];
  [coderCopy encodeObject:mutableDictionary forKey:@"mutableDictionary"];
}

@end