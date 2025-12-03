@interface FMDEventLoggerEventError
- (FMDEventLoggerEventError)initWithCoder:(id)coder;
- (FMDEventLoggerEventError)initWithEventName:(id)name;
- (id)dictionaryForError:(id)error;
- (id)userInfo;
- (void)_populateInfo;
- (void)encodeWithCoder:(id)coder;
- (void)setError:(id)error;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDEventLoggerEventError

- (FMDEventLoggerEventError)initWithEventName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = FMDEventLoggerEventError;
  v5 = [(FMDEventLoggerEventError *)&v8 init];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(FMDEventLoggerEventError *)v5 setMutableDictionary:v6];

    [(FMDEventLoggerEventError *)v5 setEventName:nameCopy];
  }

  return v5;
}

- (void)setError:(id)error
{
  objc_storeStrong(&self->_error, error);

  [(FMDEventLoggerEventError *)self _populateInfo];
}

- (void)_populateInfo
{
  v3 = +[NSMutableArray array];
  error = [(FMDEventLoggerEventError *)self error];
  v5 = [(FMDEventLoggerEventError *)self dictionaryForError:error];
  [v3 addObject:v5];

  error2 = [(FMDEventLoggerEventError *)self error];
  userInfo = [error2 userInfo];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015FD28;
  v12[3] = &unk_1002CDDC0;
  v13 = v3;
  selfCopy = self;
  v8 = v3;
  [userInfo enumerateKeysAndObjectsUsingBlock:v12];

  v15 = @"errors";
  v16 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  mutableDictionary = [(FMDEventLoggerEventError *)self mutableDictionary];
  eventName = [(FMDEventLoggerEventError *)self eventName];
  [mutableDictionary fm_safelySetObject:v9 forKey:eventName];
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

    mutableDictionary = [(FMDEventLoggerEventError *)self mutableDictionary];
    [mutableDictionary fm_safelySetObject:objectCopy forKey:keyCopy];
  }

  else
  {
    mutableDictionary = [(FMDEventLoggerEventError *)self mutableDictionary];
    [mutableDictionary removeObjectForKey:keyCopy];
  }

LABEL_7:
}

- (id)userInfo
{
  mutableDictionary = [(FMDEventLoggerEventError *)self mutableDictionary];
  v3 = [mutableDictionary copy];

  return v3;
}

- (id)dictionaryForError:(id)error
{
  errorCopy = error;
  v4 = +[NSMutableDictionary dictionary];
  domain = [errorCopy domain];
  [v4 fm_safelyMapKey:@"domain" toObject:domain];

  code = [errorCopy code];
  v7 = [NSNumber numberWithInteger:code];
  [v4 fm_safelyMapKey:@"code" toObject:v7];

  return v4;
}

- (FMDEventLoggerEventError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDEventLoggerEventError;
  v5 = [(FMDEventLoggerEventError *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutableDictionary"];
    [(FMDEventLoggerEventError *)v5 setMutableDictionary:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    [(FMDEventLoggerEventError *)v5 setEventName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(FMDEventLoggerEventError *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  mutableDictionary = [(FMDEventLoggerEventError *)self mutableDictionary];
  [coderCopy encodeObject:mutableDictionary forKey:@"mutableDictionary"];
}

@end