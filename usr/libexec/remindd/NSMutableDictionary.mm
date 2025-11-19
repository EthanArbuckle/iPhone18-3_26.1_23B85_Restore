@interface NSMutableDictionary
- (void)ic_addZoneID:(id)a3 forAccountID:(id)a4;
- (void)ic_removeZoneID:(id)a3 forAccountID:(id)a4;
- (void)ic_setNonNilObject:(id)a3 forKey:(id)a4;
@end

@implementation NSMutableDictionary

- (void)ic_setNonNilObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self setObject:a3 forKeyedSubscript:a4];
  }
}

- (void)ic_addZoneID:(id)a3 forAccountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1007600D0();
    }

    goto LABEL_13;
  }

  if (![v7 length])
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10076009C();
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100760060();
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = [(NSMutableDictionary *)self objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = +[NSMutableSet set];
  }

  [(NSMutableDictionary *)self setObject:v9 forKeyedSubscript:v8];
  [v9 addObject:v6];

LABEL_14:
}

- (void)ic_removeZoneID:(id)a3 forAccountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if ([v7 length])
    {
      v9 = [(NSMutableDictionary *)self objectForKeyedSubscript:v8];
      v10 = v9;
      if (v9)
      {
        [v9 removeObject:v6];
      }
    }

    else
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100760104();
      }
    }
  }

  else
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100760138();
    }
  }
}

@end