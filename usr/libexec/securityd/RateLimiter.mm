@interface RateLimiter
- (BOOL)isEqual:(id)a3;
- (RateLimiter)initWithCoder:(id)a3;
- (RateLimiter)initWithConfig:(id)a3;
- (id)consumeTokenFromBucket:(id)a3 config:(id)a4 name:(id)a5 at:(id)a6;
- (id)diagnostics;
- (id)getPropertyValue:(id)a3 object:(id)a4;
- (int64_t)judge:(id)a3 at:(id)a4 limitTime:(id *)a5;
- (unint64_t)stateSize;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)trim:(id)a3;
@end

@implementation RateLimiter

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_groups forKey:@"RLgroups"];
  [v4 encodeObject:self->_overloadUntil forKey:@"RLoverloadedUntil"];
  [v4 encodeObject:self->_lastJudgment forKey:@"RLlastJudgment"];
  [v4 encodeObject:self->_assetType forKey:@"RLassetType"];
  if (!self->_assetType)
  {
    [v4 encodeObject:self->_config forKey:@"RLconfig"];
  }
}

- (id)getPropertyValue:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSString *)v6 isEqualToString:@"accessGroup"]|| [(NSString *)v6 isEqualToString:@"uuid"])
  {
    v8 = NSSelectorFromString(v6);
    v9 = ([v7 methodForSelector:v8])(v7, v8);
  }

  else
  {
    v10 = sub_100006274("SecCritical");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(RateLimiter *)self config];
      v12 = [v11 objectForKeyedSubscript:@"general"];
      v13 = [v12 objectForKeyedSubscript:@"name"];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RateLimter[%@]: %@ is not an approved selector string", &v15, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)diagnostics
{
  v3 = [(RateLimiter *)self config];
  v4 = [v3 objectForKeyedSubscript:@"general"];
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = [(RateLimiter *)self config];
  v7 = [(RateLimiter *)self groups];
  v8 = [(RateLimiter *)self overloadUntil];
  v9 = [(RateLimiter *)self lastJudgment];
  v10 = [NSString stringWithFormat:@"RateLimiter[%@]\nconfig:%@\ngroups:%@\noverloaded:%@\nlastJudgment:%@", v5, v6, v7, v8, v9];

  return v10;
}

- (unint64_t)stateSize
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(RateLimiter *)self groups];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trim:(id)a3
{
  v35 = a3;
  v4 = [(RateLimiter *)self config];
  v5 = [v4 objectForKeyedSubscript:@"general"];
  v6 = [v5 objectForKeyedSubscript:@"maxItemAge"];
  v7 = [v6 intValue];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(RateLimiter *)self groups];
  v8 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000EA0F8;
        v36[3] = &unk_100336D00;
        v37 = v35;
        v38 = v7;
        v13 = [v12 keysOfEntriesPassingTest:v36];
        v14 = [v13 allObjects];
        [v12 removeObjectsForKeys:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v9);
  }

  v15 = [(RateLimiter *)self stateSize];
  v16 = [(RateLimiter *)self config];
  v17 = [v16 objectForKeyedSubscript:@"general"];
  v18 = [v17 objectForKeyedSubscript:@"maxStateSize"];
  v19 = [v18 unsignedIntegerValue];

  if (v15 <= v19)
  {
    [(RateLimiter *)self setOverloadUntil:0];
  }

  else
  {
    v20 = [(RateLimiter *)self config];
    v21 = [v20 objectForKeyedSubscript:@"general"];
    v22 = [v21 objectForKeyedSubscript:@"overloadDuration"];
    v23 = [v35 dateByAddingTimeInterval:{objc_msgSend(v22, "unsignedIntValue")}];
    [(RateLimiter *)self setOverloadUntil:v23];

    v24 = sub_100019104(@"ratelimiter", 0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      obja = [(RateLimiter *)self config];
      v25 = [obja objectForKeyedSubscript:@"general"];
      v26 = [v25 objectForKeyedSubscript:@"name"];
      v27 = [(RateLimiter *)self stateSize];
      v28 = [(RateLimiter *)self config];
      v29 = [v28 objectForKeyedSubscript:@"general"];
      v30 = [v29 objectForKeyedSubscript:@"maxStateSize"];
      v31 = [v30 unsignedLongValue];
      v32 = [(RateLimiter *)self overloadUntil];
      *buf = 138413058;
      v44 = v26;
      v45 = 2048;
      v46 = v27;
      v47 = 2048;
      v48 = v31;
      v49 = 2112;
      v50 = v32;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "RateLimiter[%@] state size %lu exceeds max %lu, overloaded until %@", buf, 0x2Au);
    }
  }
}

- (void)reset
{
  v12 = objc_opt_new();
  v3 = [(RateLimiter *)self config];
  v4 = [v3 objectForKeyedSubscript:@"groups"];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = objc_opt_new();
      [v12 addObject:v7];

      ++v6;
      v8 = [(RateLimiter *)self config];
      v9 = [v8 objectForKeyedSubscript:@"groups"];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }

  [(RateLimiter *)self setGroups:v12];
  v11 = +[NSDate distantPast];
  [(RateLimiter *)self setLastJudgment:v11];

  [(RateLimiter *)self setOverloadUntil:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RateLimiter *)self config];
    v7 = [v5 config];
    if (![v6 isEqual:v7])
    {
      v15 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v8 = [(RateLimiter *)self groups];
    v9 = [v5 groups];
    if (![v8 isEqual:v9])
    {
      v15 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v10 = [(RateLimiter *)self lastJudgment];
    v11 = [v5 lastJudgment];
    v29 = v10;
    if (![v10 isEqual:v11])
    {
      v15 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v12 = [(RateLimiter *)self overloadUntil];
    if (v12 || ([v5 overloadUntil], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(RateLimiter *)self overloadUntil];
      v27 = [v5 overloadUntil];
      v28 = v13;
      if (![v13 isEqual:?])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v26 = v12;
      v14 = 1;
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v14 = 0;
    }

    v16 = [(RateLimiter *)self assetType];
    if (v16 || ([v5 assetType], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v14;
      v25 = v11;
      v17 = [(RateLimiter *)self assetType:v21];
      v18 = [v5 assetType];
      v15 = [v17 isEqualToString:v18];

      if (v16)
      {

        v11 = v25;
        if (v24)
        {
          v12 = v26;
          goto LABEL_24;
        }

        v12 = v26;
LABEL_25:
        if (!v12)
        {
        }

        goto LABEL_28;
      }

      v11 = v25;
      LOBYTE(v14) = v24;
      v19 = v22;
    }

    else
    {
      v19 = 0;
      v15 = 1;
    }

    v12 = v26;
    if (v14)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v15 = 0;
LABEL_31:

  return v15;
}

- (id)consumeTokenFromBucket:(id)a3 config:(id)a4 name:(id)a5 at:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:@"capacity"];
  v14 = [v13 intValue];
  v15 = [v10 objectForKeyedSubscript:@"rate"];
  v16 = [v12 dateByAddingTimeInterval:{-(v14 * objc_msgSend(v15, "intValue"))}];

  v17 = [v9 objectForKeyedSubscript:v11];
  v18 = v17;
  if (!v17 || ([v17 timeIntervalSinceDate:v16], v19 < 0.0))
  {
    v20 = v16;

    v18 = v20;
  }

  v21 = [v10 objectForKeyedSubscript:@"rate"];
  v22 = [v18 dateByAddingTimeInterval:{objc_msgSend(v21, "intValue")}];

  [v9 setObject:v22 forKeyedSubscript:v11];
  [v22 timeIntervalSinceDate:v12];
  if (v23 > 0.0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (int64_t)judge:(id)a3 at:(id)a4 limitTime:(id *)a5
{
  v10 = a3;
  v57 = a4;
  v11 = CFPreferencesCopyValue(@"DisableKeychainRateLimiting", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 BOOLValue])
  {
    if (qword_10039DE48 != -1)
    {
      dispatch_once(&qword_10039DE48, &stru_100336CB8);
    }

    dispatch_source_merge_data(qword_10039DE50, 1uLL);
    v12 = 0;
    *a5 = 0;
    goto LABEL_37;
  }

  v13 = [(RateLimiter *)self overloadUntil];

  if (v13)
  {
    v14 = [(RateLimiter *)self overloadUntil];
    [v57 timeIntervalSinceDate:v14];
    v16 = v15;

    if (v16 >= 0.0)
    {
      [(RateLimiter *)self trim:v57];
    }

    v17 = [(RateLimiter *)self overloadUntil];

    if (v17)
    {
      *a5 = [(RateLimiter *)self overloadUntil];
LABEL_21:
      v12 = 4;
      goto LABEL_37;
    }
  }

  v53 = a5;
  v18 = [(RateLimiter *)self lastJudgment];
  v54 = v10;
  v52 = v11;
  if (!v18)
  {
LABEL_16:
    v22 = [(RateLimiter *)self stateSize];
    v23 = [(RateLimiter *)self config];
    v24 = [v23 objectForKeyedSubscript:@"general"];
    v25 = [v24 objectForKeyedSubscript:@"maxStateSize"];
    v26 = [v25 unsignedIntegerValue];

    if (v18)
    {
    }

    v10 = v54;
    if (v22 <= v26)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  a5 = [(RateLimiter *)self lastJudgment];
  [v57 timeIntervalSinceDate:a5];
  v20 = v19;
  v21 = [(RateLimiter *)self config];
  v5 = [v21 objectForKeyedSubscript:@"general"];
  v6 = [v5 objectForKeyedSubscript:@"maxItemAge"];
  if (v20 <= [v6 intValue])
  {
    v55 = v21;
    goto LABEL_16;
  }

LABEL_19:
  [(RateLimiter *)self trim:v57, v52];
  v27 = [(RateLimiter *)self overloadUntil];

  if (v27)
  {
    [(RateLimiter *)self overloadUntil];
    *v53 = v11 = v52;
    goto LABEL_21;
  }

LABEL_22:
  v28 = +[NSDate distantPast];
  v29 = [(RateLimiter *)self groups];
  v30 = [v29 count];

  if (!v30)
  {
    goto LABEL_35;
  }

  v12 = 0;
  v31 = 0;
  do
  {
    v32 = [(RateLimiter *)self config];
    v33 = [v32 objectForKeyedSubscript:@"groups"];
    v34 = [v33 objectAtIndexedSubscript:v31];

    v35 = [v34 objectForKeyedSubscript:@"property"];
    if (v31)
    {
      v36 = [(RateLimiter *)self getPropertyValue:v35 object:v10];

      v35 = v36;
    }

    if (v35)
    {
      v37 = [(RateLimiter *)self groups];
      v38 = [v37 objectAtIndexedSubscript:v31];
      v39 = [(RateLimiter *)self consumeTokenFromBucket:v38 config:v34 name:v35 at:v57];

      if (v39)
      {
        v40 = [v28 laterDate:v39];

        v41 = [v34 objectForKeyedSubscript:@"badness"];
        v42 = [v41 intValue];

        if (v12 <= v42)
        {
          v12 = v42;
        }

        v28 = v40;
      }
    }

    else
    {
      v39 = sub_100019104(@"ratelimiter", 0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(RateLimiter *)self config];
        v56 = v12;
        v44 = v43 = v28;
        v45 = [v44 objectForKeyedSubscript:@"general"];
        v46 = [v45 objectForKeyedSubscript:@"name"];
        v47 = [v34 objectForKeyedSubscript:@"property"];
        *buf = 138412546;
        v59 = v46;
        v60 = 2112;
        v61 = v47;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "RateLimiter[%@]: Got nil instead of property named %@", buf, 0x16u);

        v10 = v54;
        v28 = v43;
        v12 = v56;
      }
    }

    ++v31;
    v48 = [(RateLimiter *)self groups];
    v49 = [v48 count];
  }

  while (v31 < v49);
  v50 = v28;
  if (!v12)
  {
LABEL_35:
    v12 = 0;
    v50 = 0;
  }

  *v53 = v50;
  [(RateLimiter *)self setLastJudgment:v57];

  v11 = v52;
LABEL_37:

  return v12;
}

- (RateLimiter)initWithCoder:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v27.receiver = self;
    v27.super_class = RateLimiter;
    v5 = [(RateLimiter *)&v27 init];
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"RLgroups"];
      groups = v5->_groups;
      v5->_groups = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RLoverLoadedUntil"];
      overloadUntil = v5->_overloadUntil;
      v5->_overloadUntil = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RLlastJudgment"];
      lastJudgment = v5->_lastJudgment;
      v5->_lastJudgment = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RLassetType"];
      assetType = v5->_assetType;
      v5->_assetType = v16;

      if (!v5->_assetType)
      {
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v20 = objc_opt_class();
        v21 = objc_opt_class();
        v22 = [NSSet setWithObjects:v18, v19, v20, v21, objc_opt_class(), 0];
        v23 = [v4 decodeObjectOfClasses:v22 forKey:@"RLconfig"];
        config = v5->_config;
        v5->_config = v23;
      }
    }

    self = v5;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (RateLimiter)initWithConfig:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RateLimiter;
  v6 = [(RateLimiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    assetType = v7->_assetType;
    v7->_assetType = 0;

    [(RateLimiter *)v7 reset];
  }

  return v7;
}

@end