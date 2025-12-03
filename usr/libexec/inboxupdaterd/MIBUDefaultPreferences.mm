@interface MIBUDefaultPreferences
+ (BOOL)setObject:(id)object forKey:(id)key;
+ (id)dictionaryRepresentation;
+ (id)objectForKey:(id)key;
@end

@implementation MIBUDefaultPreferences

+ (BOOL)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C5F4();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "+[MIBUDefaultPreferences setObject:forKey:]";
    v14 = 2114;
    v15 = objectCopy;
    v16 = 2114;
    v17 = keyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - Setting %{public}@ for key %{public}@", &v12, 0x20u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setObject:objectCopy forKey:keyCopy];
  synchronize = [v8 synchronize];
  if ((synchronize & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C608();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C630(objectCopy, keyCopy, v10);
    }
  }

  return synchronize;
}

+ (id)objectForKey:(id)key
{
  keyCopy = key;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

+ (id)dictionaryRepresentation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  dictionaryRepresentation = [v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

@end