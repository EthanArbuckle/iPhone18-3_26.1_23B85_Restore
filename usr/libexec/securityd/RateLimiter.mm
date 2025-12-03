@interface RateLimiter
- (BOOL)isEqual:(id)equal;
- (RateLimiter)initWithCoder:(id)coder;
- (RateLimiter)initWithConfig:(id)config;
- (id)consumeTokenFromBucket:(id)bucket config:(id)config name:(id)name at:(id)at;
- (id)diagnostics;
- (id)getPropertyValue:(id)value object:(id)object;
- (int64_t)judge:(id)judge at:(id)at limitTime:(id *)time;
- (unint64_t)stateSize;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)trim:(id)trim;
@end

@implementation RateLimiter

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_groups forKey:@"RLgroups"];
  [coderCopy encodeObject:self->_overloadUntil forKey:@"RLoverloadedUntil"];
  [coderCopy encodeObject:self->_lastJudgment forKey:@"RLlastJudgment"];
  [coderCopy encodeObject:self->_assetType forKey:@"RLassetType"];
  if (!self->_assetType)
  {
    [coderCopy encodeObject:self->_config forKey:@"RLconfig"];
  }
}

- (id)getPropertyValue:(id)value object:(id)object
{
  valueCopy = value;
  objectCopy = object;
  if ([(NSString *)valueCopy isEqualToString:@"accessGroup"]|| [(NSString *)valueCopy isEqualToString:@"uuid"])
  {
    v8 = NSSelectorFromString(valueCopy);
    v9 = ([objectCopy methodForSelector:v8])(objectCopy, v8);
  }

  else
  {
    v10 = sub_100006274("SecCritical");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      config = [(RateLimiter *)self config];
      v12 = [config objectForKeyedSubscript:@"general"];
      v13 = [v12 objectForKeyedSubscript:@"name"];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = valueCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RateLimter[%@]: %@ is not an approved selector string", &v15, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)diagnostics
{
  config = [(RateLimiter *)self config];
  v4 = [config objectForKeyedSubscript:@"general"];
  v5 = [v4 objectForKeyedSubscript:@"name"];
  config2 = [(RateLimiter *)self config];
  groups = [(RateLimiter *)self groups];
  overloadUntil = [(RateLimiter *)self overloadUntil];
  lastJudgment = [(RateLimiter *)self lastJudgment];
  v10 = [NSString stringWithFormat:@"RateLimiter[%@]\nconfig:%@\ngroups:%@\noverloaded:%@\nlastJudgment:%@", v5, config2, groups, overloadUntil, lastJudgment];

  return v10;
}

- (unint64_t)stateSize
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  groups = [(RateLimiter *)self groups];
  v3 = [groups countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(groups);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [groups countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trim:(id)trim
{
  trimCopy = trim;
  config = [(RateLimiter *)self config];
  v5 = [config objectForKeyedSubscript:@"general"];
  v6 = [v5 objectForKeyedSubscript:@"maxItemAge"];
  intValue = [v6 intValue];

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
        v37 = trimCopy;
        v38 = intValue;
        v13 = [v12 keysOfEntriesPassingTest:v36];
        allObjects = [v13 allObjects];
        [v12 removeObjectsForKeys:allObjects];
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v9);
  }

  stateSize = [(RateLimiter *)self stateSize];
  config2 = [(RateLimiter *)self config];
  v17 = [config2 objectForKeyedSubscript:@"general"];
  v18 = [v17 objectForKeyedSubscript:@"maxStateSize"];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  if (stateSize <= unsignedIntegerValue)
  {
    [(RateLimiter *)self setOverloadUntil:0];
  }

  else
  {
    config3 = [(RateLimiter *)self config];
    v21 = [config3 objectForKeyedSubscript:@"general"];
    v22 = [v21 objectForKeyedSubscript:@"overloadDuration"];
    v23 = [trimCopy dateByAddingTimeInterval:{objc_msgSend(v22, "unsignedIntValue")}];
    [(RateLimiter *)self setOverloadUntil:v23];

    v24 = sub_100019104(@"ratelimiter", 0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      obja = [(RateLimiter *)self config];
      v25 = [obja objectForKeyedSubscript:@"general"];
      v26 = [v25 objectForKeyedSubscript:@"name"];
      stateSize2 = [(RateLimiter *)self stateSize];
      config4 = [(RateLimiter *)self config];
      v29 = [config4 objectForKeyedSubscript:@"general"];
      v30 = [v29 objectForKeyedSubscript:@"maxStateSize"];
      unsignedLongValue = [v30 unsignedLongValue];
      overloadUntil = [(RateLimiter *)self overloadUntil];
      *buf = 138413058;
      v44 = v26;
      v45 = 2048;
      v46 = stateSize2;
      v47 = 2048;
      v48 = unsignedLongValue;
      v49 = 2112;
      v50 = overloadUntil;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "RateLimiter[%@] state size %lu exceeds max %lu, overloaded until %@", buf, 0x2Au);
    }
  }
}

- (void)reset
{
  v12 = objc_opt_new();
  config = [(RateLimiter *)self config];
  v4 = [config objectForKeyedSubscript:@"groups"];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = objc_opt_new();
      [v12 addObject:v7];

      ++v6;
      config2 = [(RateLimiter *)self config];
      v9 = [config2 objectForKeyedSubscript:@"groups"];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }

  [(RateLimiter *)self setGroups:v12];
  v11 = +[NSDate distantPast];
  [(RateLimiter *)self setLastJudgment:v11];

  [(RateLimiter *)self setOverloadUntil:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    config = [(RateLimiter *)self config];
    config2 = [v5 config];
    if (![config isEqual:config2])
    {
      v15 = 0;
LABEL_30:

      goto LABEL_31;
    }

    groups = [(RateLimiter *)self groups];
    groups2 = [v5 groups];
    if (![groups isEqual:groups2])
    {
      v15 = 0;
LABEL_29:

      goto LABEL_30;
    }

    lastJudgment = [(RateLimiter *)self lastJudgment];
    lastJudgment2 = [v5 lastJudgment];
    v29 = lastJudgment;
    if (![lastJudgment isEqual:lastJudgment2])
    {
      v15 = 0;
LABEL_28:

      goto LABEL_29;
    }

    overloadUntil = [(RateLimiter *)self overloadUntil];
    if (overloadUntil || ([v5 overloadUntil], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      overloadUntil2 = [(RateLimiter *)self overloadUntil];
      overloadUntil3 = [v5 overloadUntil];
      v28 = overloadUntil2;
      if (![overloadUntil2 isEqual:?])
      {
        v15 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v26 = overloadUntil;
      v14 = 1;
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v14 = 0;
    }

    assetType = [(RateLimiter *)self assetType];
    if (assetType || ([v5 assetType], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v14;
      v25 = lastJudgment2;
      v17 = [(RateLimiter *)self assetType:v21];
      assetType2 = [v5 assetType];
      v15 = [v17 isEqualToString:assetType2];

      if (assetType)
      {

        lastJudgment2 = v25;
        if (v24)
        {
          overloadUntil = v26;
          goto LABEL_24;
        }

        overloadUntil = v26;
LABEL_25:
        if (!overloadUntil)
        {
        }

        goto LABEL_28;
      }

      lastJudgment2 = v25;
      LOBYTE(v14) = v24;
      v19 = v22;
    }

    else
    {
      v19 = 0;
      v15 = 1;
    }

    overloadUntil = v26;
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

- (id)consumeTokenFromBucket:(id)bucket config:(id)config name:(id)name at:(id)at
{
  bucketCopy = bucket;
  configCopy = config;
  nameCopy = name;
  atCopy = at;
  v13 = [configCopy objectForKeyedSubscript:@"capacity"];
  intValue = [v13 intValue];
  v15 = [configCopy objectForKeyedSubscript:@"rate"];
  v16 = [atCopy dateByAddingTimeInterval:{-(intValue * objc_msgSend(v15, "intValue"))}];

  v17 = [bucketCopy objectForKeyedSubscript:nameCopy];
  v18 = v17;
  if (!v17 || ([v17 timeIntervalSinceDate:v16], v19 < 0.0))
  {
    v20 = v16;

    v18 = v20;
  }

  v21 = [configCopy objectForKeyedSubscript:@"rate"];
  v22 = [v18 dateByAddingTimeInterval:{objc_msgSend(v21, "intValue")}];

  [bucketCopy setObject:v22 forKeyedSubscript:nameCopy];
  [v22 timeIntervalSinceDate:atCopy];
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

- (int64_t)judge:(id)judge at:(id)at limitTime:(id *)time
{
  judgeCopy = judge;
  atCopy = at;
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
    *time = 0;
    goto LABEL_37;
  }

  overloadUntil = [(RateLimiter *)self overloadUntil];

  if (overloadUntil)
  {
    overloadUntil2 = [(RateLimiter *)self overloadUntil];
    [atCopy timeIntervalSinceDate:overloadUntil2];
    v16 = v15;

    if (v16 >= 0.0)
    {
      [(RateLimiter *)self trim:atCopy];
    }

    overloadUntil3 = [(RateLimiter *)self overloadUntil];

    if (overloadUntil3)
    {
      *time = [(RateLimiter *)self overloadUntil];
LABEL_21:
      v12 = 4;
      goto LABEL_37;
    }
  }

  timeCopy = time;
  lastJudgment = [(RateLimiter *)self lastJudgment];
  v54 = judgeCopy;
  v52 = v11;
  if (!lastJudgment)
  {
LABEL_16:
    stateSize = [(RateLimiter *)self stateSize];
    config = [(RateLimiter *)self config];
    v24 = [config objectForKeyedSubscript:@"general"];
    v25 = [v24 objectForKeyedSubscript:@"maxStateSize"];
    unsignedIntegerValue = [v25 unsignedIntegerValue];

    if (lastJudgment)
    {
    }

    judgeCopy = v54;
    if (stateSize <= unsignedIntegerValue)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  time = [(RateLimiter *)self lastJudgment];
  [atCopy timeIntervalSinceDate:time];
  v20 = v19;
  config2 = [(RateLimiter *)self config];
  v5 = [config2 objectForKeyedSubscript:@"general"];
  v6 = [v5 objectForKeyedSubscript:@"maxItemAge"];
  if (v20 <= [v6 intValue])
  {
    v55 = config2;
    goto LABEL_16;
  }

LABEL_19:
  [(RateLimiter *)self trim:atCopy, v52];
  overloadUntil4 = [(RateLimiter *)self overloadUntil];

  if (overloadUntil4)
  {
    [(RateLimiter *)self overloadUntil];
    *timeCopy = v11 = v52;
    goto LABEL_21;
  }

LABEL_22:
  v28 = +[NSDate distantPast];
  groups = [(RateLimiter *)self groups];
  v30 = [groups count];

  if (!v30)
  {
    goto LABEL_35;
  }

  v12 = 0;
  v31 = 0;
  do
  {
    config3 = [(RateLimiter *)self config];
    v33 = [config3 objectForKeyedSubscript:@"groups"];
    v34 = [v33 objectAtIndexedSubscript:v31];

    v35 = [v34 objectForKeyedSubscript:@"property"];
    if (v31)
    {
      v36 = [(RateLimiter *)self getPropertyValue:v35 object:judgeCopy];

      v35 = v36;
    }

    if (v35)
    {
      groups2 = [(RateLimiter *)self groups];
      v38 = [groups2 objectAtIndexedSubscript:v31];
      v39 = [(RateLimiter *)self consumeTokenFromBucket:v38 config:v34 name:v35 at:atCopy];

      if (v39)
      {
        v40 = [v28 laterDate:v39];

        v41 = [v34 objectForKeyedSubscript:@"badness"];
        intValue = [v41 intValue];

        if (v12 <= intValue)
        {
          v12 = intValue;
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

        judgeCopy = v54;
        v28 = v43;
        v12 = v56;
      }
    }

    ++v31;
    groups3 = [(RateLimiter *)self groups];
    v49 = [groups3 count];
  }

  while (v31 < v49);
  v50 = v28;
  if (!v12)
  {
LABEL_35:
    v12 = 0;
    v50 = 0;
  }

  *timeCopy = v50;
  [(RateLimiter *)self setLastJudgment:atCopy];

  v11 = v52;
LABEL_37:

  return v12;
}

- (RateLimiter)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
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
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"RLgroups"];
      groups = v5->_groups;
      v5->_groups = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RLoverLoadedUntil"];
      overloadUntil = v5->_overloadUntil;
      v5->_overloadUntil = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RLlastJudgment"];
      lastJudgment = v5->_lastJudgment;
      v5->_lastJudgment = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RLassetType"];
      assetType = v5->_assetType;
      v5->_assetType = v16;

      if (!v5->_assetType)
      {
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v20 = objc_opt_class();
        v21 = objc_opt_class();
        v22 = [NSSet setWithObjects:v18, v19, v20, v21, objc_opt_class(), 0];
        v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"RLconfig"];
        config = v5->_config;
        v5->_config = v23;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RateLimiter)initWithConfig:(id)config
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = RateLimiter;
  v6 = [(RateLimiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    assetType = v7->_assetType;
    v7->_assetType = 0;

    [(RateLimiter *)v7 reset];
  }

  return v7;
}

@end