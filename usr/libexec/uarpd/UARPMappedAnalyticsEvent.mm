@interface UARPMappedAnalyticsEvent
- (UARPMappedAnalyticsEvent)init;
- (UARPMappedAnalyticsEvent)initWithCoder:(id)a3;
- (UARPMappedAnalyticsEvent)initWithEventFields:(id)a3 eventID:(unsigned int)a4 endian:(id)a5;
- (id)expandMticData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPMappedAnalyticsEvent

- (UARPMappedAnalyticsEvent)init
{
  [(UARPMappedAnalyticsEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPMappedAnalyticsEvent)initWithEventFields:(id)a3 eventID:(unsigned int)a4 endian:(id)a5
{
  v8 = a3;
  v9 = a5;
  v57.receiver = self;
  v57.super_class = UARPMappedAnalyticsEvent;
  v10 = [(UARPMappedAnalyticsEvent *)&v57 init];
  if (!v10)
  {
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v11 = os_log_create("com.apple.uarp", "tmap");
  log = v10->_log;
  v10->_log = v11;

  v10->_eventID = a4;
  v13 = [v8 objectForKeyedSubscript:@"EventName"];
  v14 = [v13 copy];
  eventName = v10->_eventName;
  v10->_eventName = v14;

  if (!v10->_eventName)
  {
    v27 = v10->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10007A600(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = v10->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10007A510(v35, v36, v37, v38, v39, v40, v41, v42);
    }

    goto LABEL_17;
  }

  v16 = objc_alloc_init(NSMutableArray);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = v8;
  v17 = [v8 objectForKeyedSubscript:@"EventFields"];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v54;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = v10->_log;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_10007A588(v44, v45, v46, v47, v48, v49, v50, v51);
          }

          v26 = 0;
          goto LABEL_22;
        }

        v23 = [[UARPMappedAnalyticsTLV alloc] initWithDictionary:v22 endian:v9];
        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v24 = [NSArray arrayWithArray:v16];
  eventFields = v10->_eventFields;
  v10->_eventFields = v24;

  v26 = v10;
LABEL_22:
  v8 = v52;

LABEL_18:
  return v26;
}

- (UARPMappedAnalyticsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UARPMappedAnalyticsEvent;
  v5 = [(UARPMappedAnalyticsEvent *)&v16 init];
  if (v5)
  {
    v5->_eventID = [v4 decodeIntForKey:@"EventID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v17 count:2];
    v9 = [NSSet setWithArray:v8];

    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"EventFields"];
    eventFields = v5->_eventFields;
    v5->_eventFields = v10;

    v12 = os_log_create("com.apple.uarp", "tmap");
    log = v5->_log;
    v5->_log = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeInteger:eventID forKey:@"EventID"];
  [v5 encodeObject:self->_eventName forKey:@"EventName"];
  [v5 encodeObject:self->_eventFields forKey:@"EventFields"];
}

- (id)expandMticData:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_eventName copy];
  [v5 setObject:v6 forKeyedSubscript:@"EventName"];

  v7 = MGGetBoolAnswer();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_eventFields;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (((v7 & 1) != 0 || ([*(*(&v19 + 1) + 8 * i) isFieldPrivacyRestricted] & 1) == 0) && !objc_msgSend(v14, "expandFieldData:withOffset:inCoreAnalytics:", v4, v11, v5) || (v18 = 0, !objc_msgSend(v14, "getNextOffset:fromStart:", &v18, v11)))
        {

          goto LABEL_19;
        }

        v11 = v18;
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 == [v4 length])
  {
    v15 = [v5 copy];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A678(log, v4, v11);
    }

LABEL_19:
    v15 = 0;
  }

  return v15;
}

@end