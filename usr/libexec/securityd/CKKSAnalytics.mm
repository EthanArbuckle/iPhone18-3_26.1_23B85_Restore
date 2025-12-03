@interface CKKSAnalytics
+ (id)databasePath;
+ (id)logger;
- (BOOL)isCKPartialError:(id)error;
- (id)createErrorAttributes:(id)attributes depth:(unint64_t)depth attributes:(id)a5;
- (id)dateOfLastSuccessForEvent:(id)event zoneName:(id)name;
- (id)datePropertyForKey:(id)key zoneName:(id)name;
- (id)errorChain:(id)chain depth:(unint64_t)depth;
- (void)addCKPartialError:(id)error error:(id)a4 depth:(unint64_t)depth;
- (void)logRecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes;
- (void)logRecoverableError:(id)error forEvent:(id)event zoneName:(id)name withAttributes:(id)attributes;
- (void)logSuccessForEvent:(id)event zoneName:(id)name;
- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes;
- (void)logUnrecoverableError:(id)error forEvent:(id)event zoneName:(id)name withAttributes:(id)attributes;
- (void)noteEvent:(id)event zoneName:(id)name;
- (void)noteMetric:(id)metric count:(int64_t)count;
- (void)recordRecoveredTLKMetrics:(id)metrics tlkRecoveryResults:(id)results uniqueTLKsRecoveredEvent:(id)event totalSharesRecoveredEvent:(id)recoveredEvent totalRecoverableTLKSharesEvent:(id)sharesEvent totalRecoverableTLKsEvent:(id)ksEvent totalViewsWithSharesEvent:(id)withSharesEvent;
- (void)setDateProperty:(id)property forKey:(id)key zoneName:(id)name;
@end

@implementation CKKSAnalytics

- (void)recordRecoveredTLKMetrics:(id)metrics tlkRecoveryResults:(id)results uniqueTLKsRecoveredEvent:(id)event totalSharesRecoveredEvent:(id)recoveredEvent totalRecoverableTLKSharesEvent:(id)sharesEvent totalRecoverableTLKsEvent:(id)ksEvent totalViewsWithSharesEvent:(id)withSharesEvent
{
  metricsCopy = metrics;
  resultsCopy = results;
  eventCopy = event;
  recoveredEventCopy = recoveredEvent;
  ksEventCopy = ksEvent;
  withSharesEventCopy = withSharesEvent;
  successfulKeysRecovered = [resultsCopy successfulKeysRecovered];
  v38 = eventCopy;
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", eventCopy, [successfulKeysRecovered count]);

  v39 = resultsCopy;
  v37 = recoveredEventCopy;
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", recoveredEventCopy, [resultsCopy totalTLKSharesRecovered]);
  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", ksEventCopy, [metricsCopy count]);
  v20 = +[NSMutableSet set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = metricsCopy;
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

        tlkUUID = [*(*(&v44 + 1) + 8 * i) tlkUUID];
        [v20 addObject:tlkUUID];
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v23);
  }

  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", ksEventCopy, [v20 count]);
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
        zoneID = [v33 zoneID];
        zoneID2 = [v33 zoneID];
        [v27 setObject:zoneID forKeyedSubscript:zoneID2];
      }

      v30 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v30);
  }

  -[CKKSAnalytics noteMetric:count:](self, "noteMetric:count:", withSharesEventCopy, [v27 count]);
}

- (void)noteMetric:(id)metric count:(int64_t)count
{
  metricCopy = metric;
  v9 = [NSString stringWithFormat:@"%@%lld", metricCopy, count];
  [(CKKSAnalytics *)self logResultForEvent:v9 hardFailure:0 result:0];
  v7 = +[NSDate date];
  [(CKKSAnalytics *)self setDateProperty:v7 forKey:v9];

  v8 = [[NSNumber alloc] initWithLong:count];
  [(CKKSAnalytics *)self setNumberProperty:v8 forKey:metricCopy];
}

- (id)datePropertyForKey:(id)key zoneName:(id)name
{
  name = [NSString stringWithFormat:@"%@-%@", key, name];
  v6 = [(CKKSAnalytics *)self datePropertyForKey:name];

  return v6;
}

- (void)setDateProperty:(id)property forKey:(id)key zoneName:(id)name
{
  propertyCopy = property;
  name = [NSString stringWithFormat:@"%@-%@", key, name];
  [(CKKSAnalytics *)self setDateProperty:propertyCopy forKey:name];
}

- (id)dateOfLastSuccessForEvent:(id)event zoneName:(id)name
{
  event = [NSString stringWithFormat:@"last_success_%@-%@", name, event];
  v6 = [(CKKSAnalytics *)self datePropertyForKey:event];

  return v6;
}

- (void)noteEvent:(id)event zoneName:(id)name
{
  event = [NSString stringWithFormat:@"%@-%@", name, event];
  [(CKKSAnalytics *)self noteEventNamed:event];
}

- (void)logUnrecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (error)
  {
    eventCopy = event;
    errorCopy = error;
    v11 = +[NSMutableDictionary dictionary];
    v12 = v11;
    if (attributesCopy)
    {
      [v11 setValuesForKeysWithDictionary:attributesCopy];
    }

    userInfo = [errorCopy userInfo];
    v14 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v15 = [(CKKSAnalytics *)self errorChain:v14 depth:0];
    [v12 setObject:v15 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v12 error:errorCopy depth:0];
    v20[0] = @"recoverableError";
    v20[1] = @"zone";
    v21[0] = &__kCFBooleanFalse;
    v21[1] = @"OTBottledPeer";
    v20[2] = @"errorDomain";
    domain = [errorCopy domain];
    v21[2] = domain;
    v20[3] = @"errorCode";
    code = [errorCopy code];

    v18 = [NSNumber numberWithInteger:code];
    v21[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    [v12 setValuesForKeysWithDictionary:v19];

    [(CKKSAnalytics *)self logHardFailureForEventNamed:eventCopy withAttributes:v12];
  }
}

- (void)logUnrecoverableError:(id)error forEvent:(id)event zoneName:(id)name withAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (error)
  {
    nameCopy = name;
    eventCopy = event;
    errorCopy = error;
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (attributesCopy)
    {
      [v14 setValuesForKeysWithDictionary:attributesCopy];
    }

    userInfo = [errorCopy userInfo];
    v17 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v18 = [(CKKSAnalytics *)self errorChain:v17 depth:0];
    [v15 setObject:v18 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v15 error:errorCopy depth:0];
    v23[0] = @"recoverableError";
    v23[1] = @"zone";
    v24[0] = &__kCFBooleanFalse;
    v24[1] = nameCopy;
    v23[2] = @"errorDomain";
    domain = [errorCopy domain];
    v24[2] = domain;
    v23[3] = @"errorCode";
    code = [errorCopy code];

    v21 = [NSNumber numberWithInteger:code];
    v24[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

    [v15 setValuesForKeysWithDictionary:v22];
    [(CKKSAnalytics *)self logHardFailureForEventNamed:eventCopy withAttributes:v15];
  }
}

- (void)logRecoverableError:(id)error forEvent:(id)event withAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (error)
  {
    eventCopy = event;
    errorCopy = error;
    v11 = +[NSMutableDictionary dictionary];
    v12 = v11;
    if (attributesCopy)
    {
      [v11 setValuesForKeysWithDictionary:attributesCopy];
    }

    v21[0] = &__kCFBooleanTrue;
    v20[0] = @"recoverableError";
    v20[1] = @"errorDomain";
    domain = [errorCopy domain];
    v21[1] = domain;
    v20[2] = @"errorCode";
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v21[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    [v12 setValuesForKeysWithDictionary:v15];

    userInfo = [errorCopy userInfo];
    v17 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v18 = [(CKKSAnalytics *)self errorChain:v17 depth:0];
    [v12 setObject:v18 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v12 error:errorCopy depth:0];
    v19.receiver = self;
    v19.super_class = CKKSAnalytics;
    [(CKKSAnalytics *)&v19 logSoftFailureForEventNamed:eventCopy withAttributes:v12];
  }
}

- (void)logRecoverableError:(id)error forEvent:(id)event zoneName:(id)name withAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (error)
  {
    nameCopy = name;
    eventCopy = event;
    errorCopy = error;
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (attributesCopy)
    {
      [v14 setValuesForKeysWithDictionary:attributesCopy];
    }

    v23[0] = @"recoverableError";
    v23[1] = @"zone";
    v24[0] = &__kCFBooleanTrue;
    v24[1] = nameCopy;
    v23[2] = @"errorDomain";
    domain = [errorCopy domain];
    v24[2] = domain;
    v23[3] = @"errorCode";
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v24[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    [v15 setValuesForKeysWithDictionary:v18];

    userInfo = [errorCopy userInfo];
    v20 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v21 = [(CKKSAnalytics *)self errorChain:v20 depth:0];
    [v15 setObject:v21 forKeyedSubscript:@"errorChain"];

    [(CKKSAnalytics *)self addCKPartialError:v15 error:errorCopy depth:0];
    v22.receiver = self;
    v22.super_class = CKKSAnalytics;
    [(CKKSAnalytics *)&v22 logSoftFailureForEventNamed:eventCopy withAttributes:v15];
  }
}

- (id)createErrorAttributes:(id)attributes depth:(unint64_t)depth attributes:(id)a5
{
  v7 = a5;
  attributesCopy = attributes;
  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setValuesForKeysWithDictionary:v7];
  }

  v19[0] = &__kCFBooleanTrue;
  v18[0] = @"recoverableError";
  v18[1] = @"errorDomain";
  domain = [attributesCopy domain];
  v19[1] = domain;
  v18[2] = @"errorCode";
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [attributesCopy code]);
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v10 setValuesForKeysWithDictionary:v13];

  userInfo = [attributesCopy userInfo];
  v15 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  v16 = [(CKKSAnalytics *)self errorChain:v15 depth:0];
  [v10 setObject:v16 forKeyedSubscript:@"errorChain"];

  [(CKKSAnalytics *)self addCKPartialError:v10 error:attributesCopy depth:0];

  return v10;
}

- (id)errorChain:(id)chain depth:(unint64_t)depth
{
  chainCopy = chain;
  if (depth <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15[0] = @"domain";
    domain = [chainCopy domain];
    v15[1] = @"code";
    v16[0] = domain;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [chainCopy code]);
    v16[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [v9 mutableCopy];

    userInfo = [chainCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v13 = [(CKKSAnalytics *)self errorChain:v12 depth:depth + 1];
    [v10 setObject:v13 forKeyedSubscript:@"child"];

    [(CKKSAnalytics *)self addCKPartialError:v10 error:chainCopy depth:depth + 1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addCKPartialError:(id)error error:(id)a4 depth:(unint64_t)depth
{
  errorCopy = error;
  v8 = a4;
  if (![(CKKSAnalytics *)self isCKPartialError:v8])
  {
    goto LABEL_20;
  }

  userInfo = [v8 userInfo];
  v10 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = v8;
  v23 = errorCopy;
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
        domain = [v16 domain];
        if ([domain isEqualToString:CKErrorDomain])
        {
          code = [v16 code];

          if (code == 22)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v19 = [(CKKSAnalytics *)self errorChain:v16 depth:depth + 1];
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
  errorCopy = v23;
  v10 = v21;
LABEL_19:

LABEL_20:
}

- (BOOL)isCKPartialError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    v5 = [errorCopy code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logSuccessForEvent:(id)event zoneName:(id)name
{
  nameCopy = name;
  eventCopy = event;
  eventCopy = [NSString stringWithFormat:@"%@-%@", nameCopy, eventCopy];
  [(CKKSAnalytics *)self logSuccessForEventNamed:eventCopy];

  v10 = +[NSDate date];
  eventCopy2 = [NSString stringWithFormat:@"last_success_%@-%@", nameCopy, eventCopy];

  [(CKKSAnalytics *)self setDateProperty:v10 forKey:eventCopy2];
}

+ (id)logger
{
  v4.receiver = self;
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