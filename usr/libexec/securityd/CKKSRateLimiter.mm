@interface CKKSRateLimiter
- (BOOL)isEqual:(id)equal;
- (CKKSRateLimiter)initWithCoder:(id)coder;
- (id)diagnostics;
- (id)topOffendingAccessGroups:(unint64_t)groups;
- (int)capacity:(int)capacity;
- (int)judge:(id)judge at:(id)at limitTime:(id *)time;
- (int)rate:(int)rate;
- (unint64_t)stateSize;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)trim:(id)trim;
@end

@implementation CKKSRateLimiter

- (id)topOffendingAccessGroups:(unint64_t)groups
{
  v5 = +[NSDate date];
  buckets = [(CKKSRateLimiter *)self buckets];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A2B90;
  v21[3] = &unk_1003363F8;
  v7 = v5;
  v22 = v7;
  v8 = [buckets keysOfEntriesPassingTest:v21];

  if ([v8 count])
  {
    buckets2 = [(CKKSRateLimiter *)self buckets];
    allObjects = [v8 allObjects];
    v11 = +[NSDate date];
    v12 = [buckets2 objectsForKeys:allObjects notFoundMarker:v11];
    allObjects2 = [v8 allObjects];
    v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:allObjects2];

    v15 = [v14 keysSortedByValueUsingSelector:"compare:"];
    reverseObjectEnumerator = [v15 reverseObjectEnumerator];
    allObjects3 = [reverseObjectEnumerator allObjects];

    if ([allObjects3 count] <= groups)
    {
      v18 = allObjects3;
    }

    else
    {
      v18 = [allObjects3 subarrayWithRange:{0, groups}];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)diagnostics
{
  config = [(CKKSRateLimiter *)self config];
  v4 = [config description];
  v5 = [NSMutableString stringWithFormat:@"RateLimiter config: %@\n", v4];

  overloadUntil = [(CKKSRateLimiter *)self overloadUntil];

  if (overloadUntil)
  {
    overloadUntil2 = [(CKKSRateLimiter *)self overloadUntil];
    buckets = [(CKKSRateLimiter *)self buckets];
    [v5 appendFormat:@"Overloaded until %@, %lu total buckets\n", overloadUntil2, objc_msgSend(buckets, "count")];
  }

  else
  {
    overloadUntil2 = [(CKKSRateLimiter *)self buckets];
    [v5 appendFormat:@"Not overloaded, %lu total buckets\n", objc_msgSend(overloadUntil2, "count")];
  }

  v9 = [(CKKSRateLimiter *)self topOffendingAccessGroups:10];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 count];
    buckets2 = [(CKKSRateLimiter *)self buckets];
    v13 = [v10 objectAtIndexedSubscript:0];
    v14 = [buckets2 objectForKeyedSubscript:v13];
    buckets3 = [(CKKSRateLimiter *)self buckets];
    v16 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
    v17 = [buckets3 objectForKeyedSubscript:v16];
    [v5 appendFormat:@"%lu congested buckets. Top offenders: \n%@ range %@ to %@\n", v11, v10, v14, v17];
  }

  else
  {
    [v5 appendString:@"No buckets congested"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  buckets = [(CKKSRateLimiter *)self buckets];
  [coderCopy encodeObject:buckets forKey:@"buckets"];
}

- (void)trim:(id)trim
{
  trimCopy = trim;
  config = [(CKKSRateLimiter *)self config];
  v6 = [config objectForKeyedSubscript:@"trimTime"];
  intValue = [v6 intValue];

  buckets = [(CKKSRateLimiter *)self buckets];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000A30D4;
  v21 = &unk_100336D00;
  v22 = trimCopy;
  v23 = intValue;
  v9 = trimCopy;
  v10 = [buckets keysOfEntriesPassingTest:&v18];

  if ([v10 count])
  {
    [(CKKSRateLimiter *)self setOverloadUntil:0];
    buckets2 = [(CKKSRateLimiter *)self buckets];
    allObjects = [v10 allObjects];
    [buckets2 removeObjectsForKeys:allObjects];
LABEL_5:

    goto LABEL_6;
  }

  buckets3 = [(CKKSRateLimiter *)self buckets];
  v14 = [buckets3 objectForKeyedSubscript:@"All"];
  config2 = [(CKKSRateLimiter *)self config];
  v16 = [config2 objectForKeyedSubscript:@"overloadDuration"];
  v17 = [v14 dateByAddingTimeInterval:{objc_msgSend(v16, "unsignedIntValue")}];
  [(CKKSRateLimiter *)self setOverloadUntil:v17];

  buckets2 = sub_100006274("SecCritical");
  if (os_log_type_enabled(buckets2, OS_LOG_TYPE_DEFAULT))
  {
    allObjects = [(CKKSRateLimiter *)self overloadUntil];
    *buf = 138412290;
    v25 = allObjects;
    _os_log_impl(&_mh_execute_header, buckets2, OS_LOG_TYPE_DEFAULT, "RateLimiter overloaded until %@", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)reset
{
  v3 = objc_opt_new();
  [(CKKSRateLimiter *)self setBuckets:v3];

  [(CKKSRateLimiter *)self setOverloadUntil:0];
}

- (unint64_t)stateSize
{
  buckets = [(CKKSRateLimiter *)self buckets];
  v3 = [buckets count];

  return v3;
}

- (int)judge:(id)judge at:(id)at limitTime:(id *)time
{
  judgeCopy = judge;
  atCopy = at;
  overloadUntil = [(CKKSRateLimiter *)self overloadUntil];

  if (overloadUntil)
  {
    overloadUntil2 = [(CKKSRateLimiter *)self overloadUntil];
    [atCopy timeIntervalSinceDate:overloadUntil2];
    v14 = v13;

    if (v14 >= 0.0)
    {
      [(CKKSRateLimiter *)self trim:atCopy];
    }

    overloadUntil3 = [(CKKSRateLimiter *)self overloadUntil];

    if (overloadUntil3)
    {
      overloadUntil4 = [(CKKSRateLimiter *)self overloadUntil];
      *time = [overloadUntil4 copy];
LABEL_17:
      v27 = 5;
      goto LABEL_31;
    }
  }

  buckets = [(CKKSRateLimiter *)self buckets];
  overloadUntil4 = [buckets objectForKeyedSubscript:@"All"];

  timeCopy = time;
  if (!overloadUntil4)
  {
    v41 = judgeCopy;
    goto LABEL_11;
  }

  [atCopy timeIntervalSinceDate:overloadUntil4];
  v19 = v18;
  buckets = [(CKKSRateLimiter *)self config];
  v5 = [buckets objectForKeyedSubscript:@"trimTime"];
  if (v19 <= [v5 intValue])
  {
    v41 = judgeCopy;
LABEL_11:
    buckets2 = [(CKKSRateLimiter *)self buckets];
    v21 = [buckets2 count];
    config = [(CKKSRateLimiter *)self config];
    v23 = [config objectForKeyedSubscript:@"trimSize"];
    unsignedIntValue = [v23 unsignedIntValue];

    if (overloadUntil4)
    {
    }

    v25 = v21 >= unsignedIntValue;
    judgeCopy = v41;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_15:
  [(CKKSRateLimiter *)self trim:atCopy];
  overloadUntil5 = [(CKKSRateLimiter *)self overloadUntil];

  if (overloadUntil5)
  {
    *timeCopy = [(CKKSRateLimiter *)self overloadUntil];
    goto LABEL_17;
  }

LABEL_18:
  v28 = [(CKKSRateLimiter *)self consumeTokenFromBucket:@"All" type:0 at:atCopy];
  v27 = v28 != 0;
  accessgroup = [judgeCopy accessgroup];
  v30 = [NSString stringWithFormat:@"G:%@", accessgroup];
  v31 = [(CKKSRateLimiter *)self consumeTokenFromBucket:v30 type:1 at:atCopy];

  if (v31)
  {
    if (v28)
    {
      v32 = [v28 laterDate:v31];

      v28 = v32;
    }

    else
    {
      v28 = v31;
    }

    v33 = [atCopy dateByAddingTimeInterval:{(2 * -[CKKSRateLimiter rate:](self, "rate:", 1))}];
    [v31 timeIntervalSinceDate:v33];
    if (v34 >= 0.0)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }
  }

  uuid = [judgeCopy uuid];
  v36 = [NSString stringWithFormat:@"U:%@", uuid];
  v37 = [(CKKSRateLimiter *)self consumeTokenFromBucket:v36 type:2 at:atCopy];

  if (v37)
  {
    if (v28)
    {
      v38 = [v28 laterDate:v37];

      v27 = 4;
      v28 = v38;
    }

    else
    {
      v28 = v37;
      v27 = 4;
    }
  }

  v39 = v28;
  *timeCopy = v28;

LABEL_31:
  return v27;
}

- (int)capacity:(int)capacity
{
  if (capacity <= 2)
  {
    v3 = *(&off_100336430 + capacity);
    config = [(CKKSRateLimiter *)self config];
    v5 = [config objectForKeyedSubscript:v3];
    intValue = [v5 intValue];

    LODWORD(self) = intValue;
  }

  return self;
}

- (int)rate:(int)rate
{
  if (rate <= 2)
  {
    v3 = *(&off_100336418 + rate);
    config = [(CKKSRateLimiter *)self config];
    v5 = [config objectForKeyedSubscript:v3];
    intValue = [v5 intValue];

    LODWORD(self) = intValue;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    config = [(CKKSRateLimiter *)self config];
    config2 = [v5 config];
    if (![config isEqual:config2])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    buckets = [(CKKSRateLimiter *)self buckets];
    buckets2 = [v5 buckets];
    if (![buckets isEqual:buckets2])
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    overloadUntil = [(CKKSRateLimiter *)self overloadUntil];
    if (overloadUntil || ([v5 overloadUntil], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      overloadUntil2 = [(CKKSRateLimiter *)self overloadUntil];
      overloadUntil3 = [v5 overloadUntil];
      v13 = [overloadUntil2 isEqual:overloadUntil3];

      if (overloadUntil)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
      v13 = 1;
    }

    goto LABEL_13;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (CKKSRateLimiter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CKKSRateLimiter;
  v5 = [(CKKSRateLimiter *)&v31 init];
  if (v5)
  {
    v6 = &swift_errorRelease_ptr;
    if (coderCopy)
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"buckets"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_18:

        v25 = 0;
        goto LABEL_19;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v10;
      v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * v15);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSMutableDictionary *)v11 objectForKeyedSubscript:v16], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, (isKindOfClass & 1) == 0))
            {

              goto LABEL_18;
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
          v6 = &swift_errorRelease_ptr;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v19 = [(NSMutableDictionary *)v11 mutableCopy];
      buckets = v5->_buckets;
      v5->_buckets = v19;
    }

    else
    {
      v21 = objc_opt_new();
      v11 = v5->_buckets;
      v5->_buckets = v21;
    }

    overloadUntil = v5->_overloadUntil;
    v5->_overloadUntil = 0;

    v23 = [v6[362] dictionaryWithObjectsAndKeys:{&off_1003643D8, @"rateAll", &off_1003643F0, @"rateGroup", &off_100364408, @"rateUUID", &off_100364420, @"capacityAll", &off_100364438, @"capacityGroup", &off_100364450, @"capacityUUID", &off_100364468, @"trimSize", &off_100364480, @"trimTime", &off_100364498, @"overloadDuration", 0}];
    config = v5->_config;
    v5->_config = v23;
  }

  v25 = v5;
LABEL_19:

  return v25;
}

@end