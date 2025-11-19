@interface CKKSRateLimiter
- (BOOL)isEqual:(id)a3;
- (CKKSRateLimiter)initWithCoder:(id)a3;
- (id)diagnostics;
- (id)topOffendingAccessGroups:(unint64_t)a3;
- (int)capacity:(int)a3;
- (int)judge:(id)a3 at:(id)a4 limitTime:(id *)a5;
- (int)rate:(int)a3;
- (unint64_t)stateSize;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)trim:(id)a3;
@end

@implementation CKKSRateLimiter

- (id)topOffendingAccessGroups:(unint64_t)a3
{
  v5 = +[NSDate date];
  v6 = [(CKKSRateLimiter *)self buckets];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A2B90;
  v21[3] = &unk_1003363F8;
  v7 = v5;
  v22 = v7;
  v8 = [v6 keysOfEntriesPassingTest:v21];

  if ([v8 count])
  {
    v9 = [(CKKSRateLimiter *)self buckets];
    v10 = [v8 allObjects];
    v11 = +[NSDate date];
    v12 = [v9 objectsForKeys:v10 notFoundMarker:v11];
    v13 = [v8 allObjects];
    v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13];

    v15 = [v14 keysSortedByValueUsingSelector:"compare:"];
    v16 = [v15 reverseObjectEnumerator];
    v17 = [v16 allObjects];

    if ([v17 count] <= a3)
    {
      v18 = v17;
    }

    else
    {
      v18 = [v17 subarrayWithRange:{0, a3}];
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
  v3 = [(CKKSRateLimiter *)self config];
  v4 = [v3 description];
  v5 = [NSMutableString stringWithFormat:@"RateLimiter config: %@\n", v4];

  v6 = [(CKKSRateLimiter *)self overloadUntil];

  if (v6)
  {
    v7 = [(CKKSRateLimiter *)self overloadUntil];
    v8 = [(CKKSRateLimiter *)self buckets];
    [v5 appendFormat:@"Overloaded until %@, %lu total buckets\n", v7, objc_msgSend(v8, "count")];
  }

  else
  {
    v7 = [(CKKSRateLimiter *)self buckets];
    [v5 appendFormat:@"Not overloaded, %lu total buckets\n", objc_msgSend(v7, "count")];
  }

  v9 = [(CKKSRateLimiter *)self topOffendingAccessGroups:10];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 count];
    v12 = [(CKKSRateLimiter *)self buckets];
    v13 = [v10 objectAtIndexedSubscript:0];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = [(CKKSRateLimiter *)self buckets];
    v16 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
    v17 = [v15 objectForKeyedSubscript:v16];
    [v5 appendFormat:@"%lu congested buckets. Top offenders: \n%@ range %@ to %@\n", v11, v10, v14, v17];
  }

  else
  {
    [v5 appendString:@"No buckets congested"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSRateLimiter *)self buckets];
  [v4 encodeObject:v5 forKey:@"buckets"];
}

- (void)trim:(id)a3
{
  v4 = a3;
  v5 = [(CKKSRateLimiter *)self config];
  v6 = [v5 objectForKeyedSubscript:@"trimTime"];
  v7 = [v6 intValue];

  v8 = [(CKKSRateLimiter *)self buckets];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000A30D4;
  v21 = &unk_100336D00;
  v22 = v4;
  v23 = v7;
  v9 = v4;
  v10 = [v8 keysOfEntriesPassingTest:&v18];

  if ([v10 count])
  {
    [(CKKSRateLimiter *)self setOverloadUntil:0];
    v11 = [(CKKSRateLimiter *)self buckets];
    v12 = [v10 allObjects];
    [v11 removeObjectsForKeys:v12];
LABEL_5:

    goto LABEL_6;
  }

  v13 = [(CKKSRateLimiter *)self buckets];
  v14 = [v13 objectForKeyedSubscript:@"All"];
  v15 = [(CKKSRateLimiter *)self config];
  v16 = [v15 objectForKeyedSubscript:@"overloadDuration"];
  v17 = [v14 dateByAddingTimeInterval:{objc_msgSend(v16, "unsignedIntValue")}];
  [(CKKSRateLimiter *)self setOverloadUntil:v17];

  v11 = sub_100006274("SecCritical");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CKKSRateLimiter *)self overloadUntil];
    *buf = 138412290;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RateLimiter overloaded until %@", buf, 0xCu);
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
  v2 = [(CKKSRateLimiter *)self buckets];
  v3 = [v2 count];

  return v3;
}

- (int)judge:(id)a3 at:(id)a4 limitTime:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(CKKSRateLimiter *)self overloadUntil];

  if (v11)
  {
    v12 = [(CKKSRateLimiter *)self overloadUntil];
    [v10 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v14 >= 0.0)
    {
      [(CKKSRateLimiter *)self trim:v10];
    }

    v15 = [(CKKSRateLimiter *)self overloadUntil];

    if (v15)
    {
      v16 = [(CKKSRateLimiter *)self overloadUntil];
      *a5 = [v16 copy];
LABEL_17:
      v27 = 5;
      goto LABEL_31;
    }
  }

  v17 = [(CKKSRateLimiter *)self buckets];
  v16 = [v17 objectForKeyedSubscript:@"All"];

  v42 = a5;
  if (!v16)
  {
    v41 = v9;
    goto LABEL_11;
  }

  [v10 timeIntervalSinceDate:v16];
  v19 = v18;
  v17 = [(CKKSRateLimiter *)self config];
  v5 = [v17 objectForKeyedSubscript:@"trimTime"];
  if (v19 <= [v5 intValue])
  {
    v41 = v9;
LABEL_11:
    v20 = [(CKKSRateLimiter *)self buckets];
    v21 = [v20 count];
    v22 = [(CKKSRateLimiter *)self config];
    v23 = [v22 objectForKeyedSubscript:@"trimSize"];
    v24 = [v23 unsignedIntValue];

    if (v16)
    {
    }

    v25 = v21 >= v24;
    v9 = v41;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_15:
  [(CKKSRateLimiter *)self trim:v10];
  v26 = [(CKKSRateLimiter *)self overloadUntil];

  if (v26)
  {
    *v42 = [(CKKSRateLimiter *)self overloadUntil];
    goto LABEL_17;
  }

LABEL_18:
  v28 = [(CKKSRateLimiter *)self consumeTokenFromBucket:@"All" type:0 at:v10];
  v27 = v28 != 0;
  v29 = [v9 accessgroup];
  v30 = [NSString stringWithFormat:@"G:%@", v29];
  v31 = [(CKKSRateLimiter *)self consumeTokenFromBucket:v30 type:1 at:v10];

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

    v33 = [v10 dateByAddingTimeInterval:{(2 * -[CKKSRateLimiter rate:](self, "rate:", 1))}];
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

  v35 = [v9 uuid];
  v36 = [NSString stringWithFormat:@"U:%@", v35];
  v37 = [(CKKSRateLimiter *)self consumeTokenFromBucket:v36 type:2 at:v10];

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
  *v42 = v28;

LABEL_31:
  return v27;
}

- (int)capacity:(int)a3
{
  if (a3 <= 2)
  {
    v3 = *(&off_100336430 + a3);
    v4 = [(CKKSRateLimiter *)self config];
    v5 = [v4 objectForKeyedSubscript:v3];
    v6 = [v5 intValue];

    LODWORD(self) = v6;
  }

  return self;
}

- (int)rate:(int)a3
{
  if (a3 <= 2)
  {
    v3 = *(&off_100336418 + a3);
    v4 = [(CKKSRateLimiter *)self config];
    v5 = [v4 objectForKeyedSubscript:v3];
    v6 = [v5 intValue];

    LODWORD(self) = v6;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSRateLimiter *)self config];
    v7 = [v5 config];
    if (![v6 isEqual:v7])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v8 = [(CKKSRateLimiter *)self buckets];
    v9 = [v5 buckets];
    if (![v8 isEqual:v9])
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v10 = [(CKKSRateLimiter *)self overloadUntil];
    if (v10 || ([v5 overloadUntil], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(CKKSRateLimiter *)self overloadUntil];
      v12 = [v5 overloadUntil];
      v13 = [v11 isEqual:v12];

      if (v10)
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

- (CKKSRateLimiter)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CKKSRateLimiter;
  v5 = [(CKKSRateLimiter *)&v31 init];
  if (v5)
  {
    v6 = &swift_errorRelease_ptr;
    if (v4)
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"buckets"];

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