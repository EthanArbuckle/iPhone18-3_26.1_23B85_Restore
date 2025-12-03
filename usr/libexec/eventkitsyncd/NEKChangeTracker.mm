@interface NEKChangeTracker
- (id)initForSessionAction:(int)action withSessionIdentifier:(id)identifier;
- (void)logChanges;
- (void)recordChange:(id)change;
@end

@implementation NEKChangeTracker

- (id)initForSessionAction:(int)action withSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = NEKChangeTracker;
  v8 = [(NEKChangeTracker *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionAction = action;
    objc_storeStrong(&v8->_sessionIdentifier, identifier);
    v10 = objc_alloc_init(NSMutableDictionary);
    changeCounts = v9->_changeCounts;
    v9->_changeCounts = v10;
  }

  return v9;
}

- (void)recordChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = changeCopy;
    nekStoreType = [v5 nekStoreType];
    if (nekStoreType)
    {
      if (nekStoreType == 1)
      {
        v7 = @"REMStore";
      }

      else
      {
        v7 = [NSString stringWithFormat:@"Unknown Store [%ld]", nekStoreType];
      }
    }

    else
    {
      v7 = @"EKEventStore";
    }

    nekWrapperType = [v5 nekWrapperType];
    if (nekWrapperType >= 5)
    {
      v10 = [NSString stringWithFormat:@"Unknown Wrapper [%ld]", nekWrapperType];
    }

    else
    {
      v10 = *(&off_1000B6110 + nekWrapperType);
    }

    nekChangeType = [v5 nekChangeType];
    if (nekChangeType < 5 && ((0x17u >> nekChangeType) & 1) != 0)
    {
      v12 = *(&off_1000B6138 + nekChangeType);
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v12 = [NSString stringWithFormat:@"Unspecified [%ld]", nekChangeType];
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    if (v10 && v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        type = [v5 type];
        if (type > 4)
        {
          v17 = [NSString stringWithFormat:@"Unknown Deletion Item [%ld]", type];

          v10 = v17;
          if (!v17)
          {
            v21 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100075F0C(self, v21);
            }

            goto LABEL_27;
          }
        }

        else
        {
          v14 = *(&off_1000B6160 + type);

          v10 = v14;
        }
      }

      v18 = [NSString stringWithFormat:@"%@%@%@%@%@", v7, @"|", v10, @"|", v12];
      v19 = [(NSMutableDictionary *)self->_changeCounts objectForKeyedSubscript:v18];
      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 integerValue] + 1);
      [(NSMutableDictionary *)self->_changeCounts setObject:v20 forKeyedSubscript:v18];

LABEL_26:
LABEL_27:

      goto LABEL_28;
    }

LABEL_22:
    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sessionIdentifier = self->_sessionIdentifier;
      *buf = 138544130;
      v23 = sessionIdentifier;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v12;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Session: %{public}@] Unable to record change, a description was nil [%@] [%@] [%@]", buf, 0x2Au);
    }

    goto LABEL_26;
  }

  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100075E4C(self, v8);
  }

LABEL_28:
}

- (void)logChanges
{
  v24 = objc_alloc_init(NSMutableDictionary);
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_changeCounts allKeys];
  v4 = [allKeys sortedArrayUsingSelector:"compare:"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = 0;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_changeCounts objectForKeyedSubscript:v9];
        integerValue = [v10 integerValue];

        if (integerValue)
        {
          v12 = [v9 componentsSeparatedByString:@"|"];
          v13 = [v12 objectAtIndexedSubscript:0];
          v14 = [v12 objectAtIndexedSubscript:1];
          v15 = [v12 objectAtIndexedSubscript:2];
          v16 = [v24 objectForKeyedSubscript:v13];
          if (!v16)
          {
            v16 = objc_alloc_init(NSMutableDictionary);
            [v24 setObject:v16 forKeyedSubscript:v13];
          }

          v17 = [v16 objectForKeyedSubscript:v14];
          if (v17)
          {
            v18 = v17;
            [v17 appendString:{@", "}];
          }

          else
          {
            v18 = objc_alloc_init(NSMutableString);
            [v16 setObject:v18 forKeyedSubscript:v14];
          }

          v26 += integerValue;
          [v18 appendFormat:@"(%ld) %@", integerValue, v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    v26 = 0;
  }

  v19 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = selfCopy->_sessionIdentifier;
    sessionAction = selfCopy->_sessionAction;
    if (sessionAction)
    {
      if (sessionAction == 1)
      {
        v22 = @"applyChanges";
      }

      else
      {
        v22 = [NSString stringWithFormat:@"unknownAction [%d]", selfCopy->_sessionAction];
      }
    }

    else
    {
      v22 = @"enqueueChanges";
    }

    *buf = 138544130;
    v32 = sessionIdentifier;
    v33 = 2114;
    v34 = v22;
    v35 = 2050;
    v36 = v26;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] %{public}@ [%{public}ld] %@", buf, 0x2Au);
  }
}

@end