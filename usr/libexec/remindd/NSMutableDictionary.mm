@interface NSMutableDictionary
- (void)ic_addZoneID:(id)d forAccountID:(id)iD;
- (void)ic_removeZoneID:(id)d forAccountID:(id)iD;
- (void)ic_setNonNilObject:(id)object forKey:(id)key;
@end

@implementation NSMutableDictionary

- (void)ic_setNonNilObject:(id)object forKey:(id)key
{
  if (object)
  {
    [(NSMutableDictionary *)self setObject:object forKeyedSubscript:key];
  }
}

- (void)ic_addZoneID:(id)d forAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (!iDCopy)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1007600D0();
    }

    goto LABEL_13;
  }

  if (![iDCopy length])
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10076009C();
    }

    goto LABEL_13;
  }

  if (!dCopy)
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
  [v9 addObject:dCopy];

LABEL_14:
}

- (void)ic_removeZoneID:(id)d forAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (iDCopy)
  {
    if ([iDCopy length])
    {
      v9 = [(NSMutableDictionary *)self objectForKeyedSubscript:v8];
      v10 = v9;
      if (v9)
      {
        [v9 removeObject:dCopy];
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