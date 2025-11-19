@interface NFRemoteAdminRedirectState
- (NFRemoteAdminRedirectState)initWithCoder:(id)a3;
- (NFRemoteAdminRedirectState)initWithDictionary:(id)a3 sourceURL:(id)a4 originator:(id)a5 initialStep:(unint64_t)a6;
- (id)_extractAidsFromStringArray:(id)a3;
- (id)_redirectResult;
- (id)description;
- (id)redirectResponse;
- (void)encodeWithCoder:(id)a3;
- (void)incrementLongRetry;
- (void)incrementStep;
- (void)save;
@end

@implementation NFRemoteAdminRedirectState

- (id)_extractAidsFromStringArray:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    if ([v4 count])
    {
      v6 = 0;
      v7 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      do
      {
        v8 = v7[193];
        v9 = [v4 objectAtIndex:v6];
        v10 = [v8 NF_dataWithHexString:v9];

        if (v10)
        {
          [v5 addObject:v10];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v12 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v17 = [v4 objectAtIndex:v6];
            v18 = 45;
            if (isMetaClass)
            {
              v18 = 43;
            }

            v12(3, "%c[%{public}s %{public}s]:%i Invalid aid: %{public}@", v18, ClassName, Name, 95, v17);

            v7 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = object_getClass(self);
            if (class_isMetaClass(v20))
            {
              v21 = 43;
            }

            else
            {
              v21 = 45;
            }

            v22 = object_getClassName(self);
            v23 = sel_getName(a2);
            v24 = [v4 objectAtIndex:v6];
            *buf = 67110146;
            v28 = v21;
            v29 = 2082;
            v30 = v22;
            v7 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
            v31 = 2082;
            v32 = v23;
            v33 = 1024;
            v34 = 95;
            v35 = 2114;
            v36 = v24;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid aid: %{public}@", buf, 0x2Cu);
          }
        }

        ++v6;
      }

      while ([v4 count] > v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NFRemoteAdminRedirectState)initWithDictionary:(id)a3 sourceURL:(id)a4 originator:(id)a5 initialStep:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = +[NSDate date];
  v34.receiver = self;
  v34.super_class = NFRemoteAdminRedirectState;
  v14 = [(NFRemoteAdminState *)&v34 initWithIdentifier:v11 sourceURL:v12 retryDate:v13];

  if (v14)
  {
    v14->_step = a6;
    v15 = [v10 NF_stringForKey:@"kBatchId"];
    batchId = v14->_batchId;
    v14->_batchId = v15;

    v17 = [v10 NF_stringForKey:@"kTaskId"];
    taskId = v14->_taskId;
    v14->_taskId = v17;

    v19 = [v10 NF_stringForKey:@"targetSEID"];
    seid = v14->_seid;
    v14->_seid = v19;

    v21 = [v10 NF_dictionaryForKey:@"redirectRequest"];
    v22 = [v21 NF_arrayForKey:@"whitelistedInstances"];
    if (!v22)
    {
      v22 = [v10 NF_arrayForKey:@"whitelistedInstances"];
    }

    v23 = [(NFRemoteAdminRedirectState *)v14 _extractAidsFromStringArray:v22];
    whitelistedInstances = v14->_whitelistedInstances;
    v14->_whitelistedInstances = v23;

    if (v21)
    {
      v25 = [v21 NF_stringForKey:@"targetURL"];
      redirectUrl = v14->_redirectUrl;
      v14->_redirectUrl = v25;

      v27 = [v21 NF_dictionaryForKey:@"forwardData"];
      forwardDataToSP = v14->_forwardDataToSP;
      v14->_forwardDataToSP = v27;

      v29 = [v21 NF_numberForKey:@"version"];
      version = v14->_version;
      v14->_version = v29;
    }

    v31 = objc_alloc_init(NFRemoteAdminRedirectStatePerformanceMetrics);
    performanceMetrics = v14->_performanceMetrics;
    v14->_performanceMetrics = v31;
  }

  return v14;
}

- (id)_redirectResult
{
  v3 = objc_opt_new();
  [(NFRemoteAdminRedirectStatePerformanceMetrics *)self->_performanceMetrics totalAPDUTime];
  v5 = [NSNumber numberWithInteger:(v4 * 1000.0)];
  [v3 setObject:v5 forKeyedSubscript:@"totalRedirectAPDUResponseTimeInMS"];

  [(NFRemoteAdminRedirectStatePerformanceMetrics *)self->_performanceMetrics totalSessionTime];
  v7 = [NSNumber numberWithInteger:(v6 * 1000.0)];
  [v3 setObject:v7 forKeyedSubscript:@"totalSessionTimeInMS"];

  v8 = objc_opt_new();
  v9 = v8;
  httpStatus = self->_httpStatus;
  if (httpStatus)
  {
    [v8 setObject:httpStatus forKeyedSubscript:@"HTTPStatusCode"];
  }

  spStatusCode = self->_spStatusCode;
  if (spStatusCode)
  {
    [v9 setObject:spStatusCode forKeyedSubscript:@"SPStatusCode"];
  }

  incompleteReason = self->_incompleteReason;
  if (incompleteReason)
  {
    [v9 setObject:incompleteReason forKeyedSubscript:@"clientIncompleteReason"];
  }

  forwardDataToSMP = self->_forwardDataToSMP;
  if (forwardDataToSMP)
  {
    [v9 setObject:forwardDataToSMP forKeyedSubscript:@"forwardData"];
  }

  notification = self->_notification;
  if (notification)
  {
    [v9 setObject:notification forKeyedSubscript:@"kNotification"];
  }

  v15 = [(NFRemoteAdminState *)self unsentScriptResponse];

  if (v15)
  {
    v16 = [(NFRemoteAdminState *)self unsentScriptResponse];
    [v9 setObject:v16 forKeyedSubscript:@"pendingSPResponse"];
  }

  v17 = [(NFRemoteAdminRedirectStatePerformanceMetrics *)self->_performanceMetrics asDictionary];
  [v9 addEntriesFromDictionary:v17];

  [v3 setObject:v9 forKeyedSubscript:@"redirectResponse"];

  return v3;
}

- (id)redirectResponse
{
  v3 = objc_opt_new();
  [v3 setObject:&off_100057360 forKeyedSubscript:@"kVersion"];
  taskId = self->_taskId;
  if (taskId)
  {
    [v3 setObject:taskId forKeyedSubscript:@"kTaskId"];
  }

  batchId = self->_batchId;
  if (batchId)
  {
    [v3 setObject:batchId forKeyedSubscript:@"kBatchId"];
  }

  v6 = [(NFRemoteAdminRedirectState *)self _redirectResult];
  [v3 addEntriesFromDictionary:v6];

  return v3;
}

- (void)incrementStep
{
  step = self->_step;
  if (step <= 2)
  {
    self->_step = step + 1;
  }
}

- (void)incrementLongRetry
{
  v4 = [(NFRemoteAdminState *)self retryInterval];
  v6 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v7 = *(v4 + 8);
  if (v7 <= 0x18)
  {
    *(v4 + 8) = v7 + 1;
LABEL_4:
    LODWORD(v5) = dword_100040818[v7];
    v9 = [NSDate dateWithTimeIntervalSinceNow:v5];
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v8, v9, 16);
    }

    [(NFRemoteAdminState *)self updateNextRetryInterval:v6];
    goto LABEL_17;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(3, "%c[%{public}s %{public}s]:%i Retried too many times.  Giving up.", v15, ClassName, Name, 199);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    *buf = 67109890;
    v21 = v18;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 199;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Retried too many times.  Giving up.", buf, 0x22u);
  }

  self->_step = 3;
LABEL_17:
}

- (void)save
{
  v2 = sub_100033310();
  sub_100035A3C(v2);
}

- (id)description
{
  v3 = [(NFRemoteAdminState *)self retryInterval];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v4[2];
      [v6 timeIntervalSinceNow];
      v8 = v7;

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = 0;
LABEL_6:

  v18 = [NSString alloc];
  v19.receiver = self;
  v19.super_class = NFRemoteAdminRedirectState;
  v9 = [(NFRemoteAdminState *)&v19 description];
  v10 = [(NFRemoteAdminRedirectState *)self batchId];
  v11 = [(NFRemoteAdminRedirectState *)self taskId];
  v12 = [(NFRemoteAdminRedirectState *)self redirectUrl];
  v13 = [(NFRemoteAdminRedirectState *)self version];
  v14 = [(NFRemoteAdminRedirectState *)self httpStatus];
  v15 = [(NFRemoteAdminRedirectState *)self spStatusCode];
  v16 = [v18 initWithFormat:@"%@ { batchId=%@ taskid=%@ redirectUrl=%@ version=%@ httpStatus=%@ spStatus=%@ step=%d retryAfter=%f pendingImmediateRetry=%d}", v9, v10, v11, v12, v13, v14, v15, -[NFRemoteAdminRedirectState step](self, "step"), v8, -[NFRemoteAdminState pendingImmediateRetry](self, "pendingImmediateRetry")];

  return v16;
}

- (NFRemoteAdminRedirectState)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = NFRemoteAdminRedirectState;
  v5 = [(NFRemoteAdminState *)&v40 initWithCoder:v4];
  if (v5)
  {
    v6 = [NSSet alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 initWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchId"];
    batchId = v5->_batchId;
    v5->_batchId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redirectUrl"];
    redirectUrl = v5->_redirectUrl;
    v5->_redirectUrl = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v18;

    v20 = [v4 decodeObjectOfClasses:v11 forKey:@"forwardDataToSMP"];
    forwardDataToSMP = v5->_forwardDataToSMP;
    v5->_forwardDataToSMP = v20;

    v22 = [v4 decodeObjectOfClasses:v11 forKey:@"forwardDataToSP"];
    forwardDataToSP = v5->_forwardDataToSP;
    v5->_forwardDataToSP = v22;

    v24 = [v4 decodeObjectOfClasses:v11 forKey:@"notification"];
    notification = v5->_notification;
    v5->_notification = v24;

    v26 = [NFNSCheckedDecoder coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"whitelistedInstances"];
    whitelistedInstances = v5->_whitelistedInstances;
    v5->_whitelistedInstances = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"incompleteReason"];
    incompleteReason = v5->_incompleteReason;
    v5->_incompleteReason = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"httpStatus"];
    httpStatus = v5->_httpStatus;
    v5->_httpStatus = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spStatusCode"];
    spStatusCode = v5->_spStatusCode;
    v5->_spStatusCode = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"step"];
    v5->_step = [v34 integerValue];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"performanceMetrics"];
    performanceMetrics = v5->_performanceMetrics;
    v5->_performanceMetrics = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seid"];
    seid = v5->_seid;
    v5->_seid = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NFRemoteAdminRedirectState;
  v4 = a3;
  [(NFRemoteAdminState *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_batchId forKey:{@"batchId", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_taskId forKey:@"taskId"];
  [v4 encodeObject:self->_redirectUrl forKey:@"redirectUrl"];
  [v4 encodeObject:self->_version forKey:@"version"];
  [v4 encodeObject:self->_forwardDataToSMP forKey:@"forwardDataToSMP"];
  [v4 encodeObject:self->_forwardDataToSP forKey:@"forwardDataToSP"];
  [v4 encodeObject:self->_incompleteReason forKey:@"incompleteReason"];
  [v4 encodeObject:self->_notification forKey:@"notification"];
  [v4 encodeObject:self->_httpStatus forKey:@"httpStatus"];
  [v4 encodeObject:self->_spStatusCode forKey:@"spStatusCode"];
  v5 = [NSNumber numberWithInteger:self->_step];
  [v4 encodeObject:v5 forKey:@"step"];

  [v4 encodeObject:self->_performanceMetrics forKey:@"performanceMetrics"];
  [v4 encodeObject:self->_whitelistedInstances forKey:@"whitelistedInstances"];
  [v4 encodeObject:self->_seid forKey:@"seid"];
}

@end