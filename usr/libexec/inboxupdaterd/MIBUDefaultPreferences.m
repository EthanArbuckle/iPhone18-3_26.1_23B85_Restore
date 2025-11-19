@interface MIBUDefaultPreferences
+ (BOOL)setObject:(id)a3 forKey:(id)a4;
+ (id)dictionaryRepresentation;
+ (id)objectForKey:(id)a3;
@end

@implementation MIBUDefaultPreferences

+ (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - Setting %{public}@ for key %{public}@", &v12, 0x20u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setObject:v5 forKey:v6];
  v9 = [v8 synchronize];
  if ((v9 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C608();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C630(v5, v6, v10);
    }
  }

  return v9;
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (id)dictionaryRepresentation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

@end