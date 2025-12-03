@interface IOSNearbyObject
- (IOSNearbyObject)init;
- (IOSNearbyObject)initWithType:(int)type reducedRate:(BOOL)rate;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
- (void)start;
- (void)stop;
@end

@implementation IOSNearbyObject

- (IOSNearbyObject)init
{
  [(IOSNearbyObject *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IOSNearbyObject)initWithType:(int)type reducedRate:(BOOL)rate
{
  v5.receiver = self;
  v5.super_class = IOSNearbyObject;
  if ([(IOSNearbyObject *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (void)start
{
  if (qword_10045B050 != -1)
  {
    sub_100387484();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    updateRate = self->_updateRate;
    if (self->_type == 1)
    {
      v5 = "anchor";
    }

    else
    {
      v5 = "mobile";
    }

    *buf = 136380931;
    v17 = v5;
    v18 = 1025;
    v19 = updateRate;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Start ranging as %{private}s, rate %{private}d", buf, 0x12u);
  }

  v6 = [NIRegionPredicate alloc];
  LODWORD(v7) = 1112014848;
  v8 = [v6 initWithName:@"LargeRange" radius:self->_updateRate preferredUpdateRate:v7];
  v9 = [NIHomeDeviceConfiguration alloc];
  v15 = v8;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [v9 initWithRegions:v10];

  [v11 setAnchor:self->_type == 1];
  [v11 setAllowedDevices:2];
  self->_running = 1;
  discoveryToken = [(NISession *)self->_session discoveryToken];
  LOBYTE(v10) = discoveryToken == 0;

  if ((v10 & 1) == 0)
  {
    [(NISession *)self->_session invalidate];
  }

  v13 = objc_alloc_init(NISession);
  session = self->_session;
  self->_session = v13;

  [(NISession *)self->_session setDelegate:self];
  [(NISession *)self->_session runWithConfiguration:v11];
}

- (void)stop
{
  if (qword_10045B050 != -1)
  {
    sub_100387484();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stop ranging", v4, 2u);
  }

LABEL_4:
  self->_running = 0;
  [(NISession *)self->_session invalidate];
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  session;
  objectsCopy = objects;
  v5 = sub_1001CA2CC();
  v31 = sub_10010C758();
  v6 = sub_1001CA208();
  Current = CFAbsoluteTimeGetCurrent();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = objectsCopy;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v8)
  {
    v35 = *v44;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        while (1)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          sub_10008B558(&v36);
          [v10 distance];
          v42 |= 8u;
          v39 = v11;
          if (([v10 relationship] & 2) != 0)
          {
            v42 |= 4u;
            v13 = 2;
          }

          else
          {
            relationship = [v10 relationship];
            v42 |= 4u;
            v13 = relationship & 1;
          }

          LODWORD(v41) = v13;
          discoveryToken = [v10 discoveryToken];
          rawToken = [discoveryToken rawToken];
          v16 = rawToken;
          bytes = [rawToken bytes];
          discoveryToken2 = [v10 discoveryToken];
          rawToken2 = [discoveryToken2 rawToken];
          v20 = [rawToken2 length];
          v42 |= 1u;
          if (v37 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          std::string::assign(v37, bytes, v20);

          discoveryToken3 = [v10 discoveryToken];
          v22 = [discoveryToken3 hash];
          v42 |= 2u;
          v38 = v22;

          v42 |= 0x10u;
          v23 = v40;
          if (!v40)
          {
            operator new();
          }

          [v10 direction];
          *(v23 + 48) |= 2u;
          *(v23 + 16) = v24;
          v42 |= 0x10u;
          v25 = v40;
          if (!v40)
          {
            operator new();
          }

          [v10 direction];
          *(v25 + 48) |= 4u;
          *(v25 + 24) = v26;
          v42 |= 0x10u;
          v27 = v40;
          if (!v40)
          {
            operator new();
          }

          [v10 direction];
          *(v27 + 48) |= 8u;
          *(v27 + 32) = v28;
          v29 = v48;
          if (v48 < v49)
          {
            break;
          }

          v48 = sub_10030D61C(&v47, &v36);
          sub_10008C4C4(&v36);
          i = i + 1;
          if (v8 == i)
          {
            goto LABEL_20;
          }
        }

        sub_10008C408(v48, &v36);
        v48 = v29 + 88;
        sub_10008C4C4(&v36);
      }

LABEL_20:
      v8 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  ptr = self->_sensor.__ptr_;
  sub_100324A00(&v36, v31, &v47, v5, v6, Current);
  operator new();
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  sessionCopy = session;
  objectsCopy = objects;
  if (qword_10045B050 != -1)
  {
    sub_100387484();
    v8 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Ranging removed objects", v9, 2u);
  }

LABEL_4:
}

- (void)sessionWasSuspended:(id)suspended
{
  suspendedCopy = suspended;
  if (qword_10045B050 != -1)
  {
    sub_100387484();
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Ranging suspended", v5, 2u);
  }

LABEL_4:
}

- (void)sessionSuspensionEnded:(id)ended
{
  endedCopy = ended;
  if (qword_10045B050 == -1)
  {
    v5 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387484();
  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Ranging suspension ended", v6, 2u);
  }

LABEL_4:
  if (self->_running)
  {
    [(IOSNearbyObject *)self start];
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (qword_10045B050 == -1)
  {
    v8 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387484();
  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Ranging invalidated", v9, 2u);
  }

LABEL_4:
  if (self->_running)
  {
    [(IOSNearbyObject *)self start];
  }
}

@end