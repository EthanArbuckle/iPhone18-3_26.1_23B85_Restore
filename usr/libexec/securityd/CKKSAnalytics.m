@interface CKKSAnalytics
+ (id)databasePath;
+ (id)logger;
- (BOOL)isCKPartialError:(id)a3;
- (id)createErrorAttributes:(id)a3 depth:(unint64_t)a4 attributes:(id)a5;
- (id)dateOfLastSuccessForEvent:(id)a3 zoneName:(id)a4;
- (id)datePropertyForKey:(id)a3 zoneName:(id)a4;
- (id)errorChain:(id)a3 depth:(unint64_t)a4;
- (void)addCKPartialError:(id)a3 error:(id)a4 depth:(unint64_t)a5;
- (void)logRecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5;
- (void)logRecoverableError:(id)a3 forEvent:(id)a4 zoneName:(id)a5 withAttributes:(id)a6;
- (void)logSuccessForEvent:(id)a3 zoneName:(id)a4;
- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5;
- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 zoneName:(id)a5 withAttributes:(id)a6;
- (void)noteEvent:(id)a3 zoneName:(id)a4;
- (void)noteMetric:(id)a3 count:(int64_t)a4;
- (void)recordRecoveredTLKMetrics:(id)a3 tlkRecoveryResults:(id)a4 uniqueTLKsRecoveredEvent:(id)a5 totalSharesRecoveredEvent:(id)a6 totalRecoverableTLKSharesEvent:(id)a7 totalRecoverableTLKsEvent:(id)a8 totalViewsWithSharesEvent:(id)a9;
- (void)setDateProperty:(id)a3 forKey:(id)a4 zoneName:(id)a5;
@end

@implementation CKKSAnalytics

- (void)recordRecoveredTLKMetrics:(id)a3 tlkRecoveryResults:(id)a4 uniqueTLKsRecoveredEvent:(id)a5 totalSharesRecoveredEvent:(id)a6 totalRecoverableTLKSharesEvent:(id)a7 totalRecoverableTLKsEvent:(id)a8 totalViewsWithSharesEvent:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v36 = a9;
  v19 = [v15 successfulKeysRecovered];
  v38 = v16;
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", v16, [v19 count]);

  v39 = v15;
  v37 = v17;
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", v17, [v15 totalTLKSharesRecovered]);
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", v18, [v14 count]);
  v20 = +[NSMutableSet set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v44 + 1) + 8 * i) tlkUUID];
        [v20 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v23);
  }

  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", v18, [v20 count]);
  v27 = +[NSMutableDictionary dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v21;
  v29 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v41;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v40 + 1) + 8 * j);
        v34 = [v33 zoneID];
        v35 = [v33 zoneID];
        [v27 setObject:v34 forKeyedSubscript:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v30);
  }

  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", v36, [v27 count]);
}

- (void)noteMetric:(id)a3 count:(int64_t)a4
{
  v6 = a3;
  v9 = [NSString stringWithFormat:@"%@%lld", v6, a4];
  [(CKKSAnalytics *)self logResultForEvent:v9 hardFailure:0 result:0];
  v7 = +[NSDate date];
  [(CKKSAnalytics *)self setDateProperty:v7 forKey:v9];

  v8 = [[NSNumber alloc] initWithLong:a4];
  [(CKKSAnalytics *)self setNumberProperty:v8 forKey:v6];
}

- (id)datePropertyForKey:(id)a3 zoneName:(id)a4
{
  v5 = [NSString stringWithFormat:@"%@-%@", a3, a4];
  v6 = [(CKKSAnalytics *)self datePropertyForKey:v5];

  return v6;
}

- (void)setDateProperty:(id)a3 forKey:(id)a4 zoneName:(id)a5
{
  v8 = a3;
  v9 = [NSString stringWithFormat:@"%@-%@", a4, a5];
  [(CKKSAnalytics *)self setDateProperty:v8 forKey:v9];
}

- (id)dateOfLastSuccessForEvent:(id)a3 zoneName:(id)a4
{
  v5 = [NSString stringWithFormat:@"last_success_%@-%@", a4, a3];
  v6 = [(CKKSAnalytics *)self datePropertyForKey:v5];

  return v6;
}

- (void)noteEvent:(id)a3 zoneName:(id)a4
{
  v5 = [NSString stringWithFormat:@"%@-%@", a4, a3];
  [(CKKSAnalytics *)self noteEventNamed:v5];
}

- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = a4;
    v10 = a3;
    v11 = +[NSMutableDictionary dictionary];
    v12 = v11;
    if (v8)
    {
      [v11 setValuesForKeysWithDictionary:v8];
    }

    v13 = [v10 userInfo];
    v14 = [v13 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v15 = [(CKKSAnalytics *)self errorChain:v14 depth:0];
    [v12 setObject:v15 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v12 error:v10 depth:0];
    v20[0] = @"recoverableError";
    v20[1] = @"zone";
    v21[0] = &__kCFBooleanFalse;
    v21[1] = @"OTBottledPeer";
    v20[2] = @"errorDomain";
    v16 = [v10 domain];
    v21[2] = v16;
    v20[3] = @"errorCode";
    v17 = [v10 code];

    v18 = [NSNumber numberWithInteger:v17];
    v21[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    [v12 setValuesForKeysWithDictionary:v19];

    [(CKKSAnalytics *)self logHardFailureForEventNamed:v9 withAttributes:v12];
  }
}

- (void)logUnrecoverableError:(id)a3 forEvent:(id)a4 zoneName:(id)a5 withAttributes:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (v10)
    {
      [v14 setValuesForKeysWithDictionary:v10];
    }

    v16 = [v13 userInfo];
    v17 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v18 = [(CKKSAnalytics *)self errorChain:v17 depth:0];
    [v15 setObject:v18 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v15 error:v13 depth:0];
    v23[0] = @"recoverableError";
    v23[1] = @"zone";
    v24[0] = &__kCFBooleanFalse;
    v24[1] = v11;
    v23[2] = @"errorDomain";
    v19 = [v13 domain];
    v24[2] = v19;
    v23[3] = @"errorCode";
    v20 = [v13 code];

    v21 = [NSNumber numberWithInteger:v20];
    v24[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

    [v15 setValuesForKeysWithDictionary:v22];
    [(CKKSAnalytics *)self logHardFailureForEventNamed:v12 withAttributes:v15];
  }
}

- (void)logRecoverableError:(id)a3 forEvent:(id)a4 withAttributes:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = a4;
    v10 = a3;
    v11 = +[NSMutableDictionary dictionary];
    v12 = v11;
    if (v8)
    {
      [v11 setValuesForKeysWithDictionary:v8];
    }

    v21[0] = &__kCFBooleanTrue;
    v20[0] = @"recoverableError";
    v20[1] = @"errorDomain";
    v13 = [v10 domain];
    v21[1] = v13;
    v20[2] = @"errorCode";
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v21[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    [v12 setValuesForKeysWithDictionary:v15];

    v16 = [v10 userInfo];
    v17 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v18 = [(CKKSAnalytics *)self errorChain:v17 depth:0];
    [v12 setObject:v18 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v12 error:v10 depth:0];
    v19.receiver = self;
    v19.super_class = CKKSAnalytics;
    [(CKKSAnalytics *)&v19 logSoftFailureForEventNamed:v9 withAttributes:v12];
  }
}

- (void)logRecoverableError:(id)a3 forEvent:(id)a4 zoneName:(id)a5 withAttributes:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (v10)
    {
      [v14 setValuesForKeysWithDictionary:v10];
    }

    v23[0] = @"recoverableError";
    v23[1] = @"zone";
    v24[0] = &__kCFBooleanTrue;
    v24[1] = v11;
    v23[2] = @"errorDomain";
    v16 = [v13 domain];
    v24[2] = v16;
    v23[3] = @"errorCode";
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 code]);
    v24[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    [v15 setValuesForKeysWithDictionary:v18];

    v19 = [v13 userInfo];
    v20 = [v19 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v21 = [(CKKSAnalytics *)self errorChain:v20 depth:0];
    [v15 setObject:v21 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v15 error:v13 depth:0];
    v22.receiver = self;
    v22.super_class = CKKSAnalytics;
    [(CKKSAnalytics *)&v22 logSoftFailureForEventNamed:v12 withAttributes:v15];
  }
}

- (id)createErrorAttributes:(id)a3 depth:(unint64_t)a4 attributes:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setValuesForKeysWithDictionary:v7];
  }

  v19[0] = &__kCFBooleanTrue;
  v18[0] = @"recoverableError";
  v18[1] = @"errorDomain";
  v11 = [v8 domain];
  v19[1] = v11;
  v18[2] = @"errorCode";
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v10 setValuesForKeysWithDictionary:v13];

  v14 = [v8 userInfo];
  v15 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];
  v16 = [(CKKSAnalytics *)self errorChain:v15 depth:0];
  [v10 setObject:v16 forKeyedSubscript:@"errorChain"];

  [(CKKSAnalytics *)self addCKPartialError:v10 error:v8 depth:0];

  return v10;
}

- (id)errorChain:(id)a3 depth:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15[0] = @"domain";
    v7 = [v6 domain];
    v15[1] = @"code";
    v16[0] = v7;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v16[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [v9 mutableCopy];

    v11 = [v6 userInfo];
    v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v13 = [(CKKSAnalytics *)self errorChain:v12 depth:a4 + 1];
    [v10 setObject:v13 forKeyedSubscript:@"child"];

    [(CKKSAnalytics *)self addCKPartialError:v10 error:v6 depth:a4 + 1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addCKPartialError:(id)a3 error:(id)a4 depth:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (![(CKKSAnalytics *)self isCKPartialError:v8])
  {
    goto LABEL_20;
  }

  v9 = [v8 userInfo];
  v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = v8;
  v23 = v7;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v10;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v26;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v26 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = [v11 objectForKeyedSubscript:{*(*(&v25 + 1) + 8 * i), v21, v22}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 domain];
        if ([v17 isEqualToString:CKErrorDomain])
        {
          v18 = [v16 code];

          if (v18 == 22)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v19 = [(CKKSAnalytics *)self errorChain:v16 depth:a5 + 1];
        if (v19)
        {
          v20 = v19;
          [v23 setObject:v19 forKeyedSubscript:@"oneCloudKitPartialFailure"];

          goto LABEL_18;
        }
      }

LABEL_14:
    }

    v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v8 = v22;
  v7 = v23;
  v10 = v21;
LABEL_19:

LABEL_20:
}

- (BOOL)isCKPartialError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:CKErrorDomain])
  {
    v5 = [v3 code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logSuccessForEvent:(id)a3 zoneName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  [(CKKSAnalytics *)self logSuccessForEventNamed:v8];

  v10 = +[NSDate date];
  v9 = [NSString stringWithFormat:@"last_success_%@-%@", v6, v7];

  [(CKKSAnalytics *)self setDateProperty:v10 forKey:v9];
}

+ (id)logger
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CKKSAnalytics;
  v2 = objc_msgSendSuper2(&v4, "logger");

  return v2;
}

+ (id)databasePath
{
  if (qword_10039E1C0 != -1)
  {
    dispatch_once(&qword_10039E1C0, &stru_100343500);
  }

  return [CKKSAnalytics defaultAnalyticsDatabasePath:@"ckks_analytics"];
}

@end