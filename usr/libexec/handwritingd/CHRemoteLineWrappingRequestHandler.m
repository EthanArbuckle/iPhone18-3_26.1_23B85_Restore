@interface CHRemoteLineWrappingRequestHandler
- (BOOL)_isValidRemoteLineWrappingRequest:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (CHRemoteLineWrappingRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5;
- (void)_checkInLineWrapper;
- (void)_checkOutLineWrapper;
- (void)_stageEvictionOfLineWrapperWithTargetIdleLifetime:(double)a3;
- (void)handleRequest:(id)a3 withReply:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation CHRemoteLineWrappingRequestHandler

- (CHRemoteLineWrappingRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CHRemoteLineWrappingRequestHandler;
  v11 = [(CHRemoteProcessingRequestHandler *)&v15 initWithServerQueue:v8 lowPriorityQueue:v9 highPriorityQueue:v10];
  v12 = v11;
  if (v11)
  {
    v11->_activeRequestCount = 0;
    v11->_targetIdleLifetime = 120.0;
    +[NSDate timeIntervalSinceReferenceDate];
    v12->_lastActiveTimestamp = v13;
  }

  return v12;
}

- (void)_stageEvictionOfLineWrapperWithTargetIdleLifetime:(double)a3
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v5 = qword_10002AD00;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Line wrapper for eviction with idle lifetime=%1.2f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014AFC;
  v6[3] = &unk_100024B10;
  v6[4] = self;
  *&v6[5] = a3;
  [(CHRemoteBasicRequestHandler *)self _stageEvictionOfResourceWithTargetLifetime:v6 block:a3];
}

- (void)_checkOutLineWrapper
{
  ++self->_activeRequestCount;
  if (!self->_lineWrapper)
  {
    v3 = objc_alloc_init(CHLineWrapper);
    lineWrapper = self->_lineWrapper;
    self->_lineWrapper = v3;

    if (qword_10002AD20 == -1)
    {
      v5 = qword_10002AD00;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v5 = qword_10002AD00;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }
    }

    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Loaded line wrapper", &v8, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v6 = qword_10002AD00;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = qword_10002AD00;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    activeRequestCount = self->_activeRequestCount;
    v8 = 134217984;
    v9 = activeRequestCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Currently active line wrapping requests: %li", &v8, 0xCu);
  }

LABEL_9:
}

- (void)_checkInLineWrapper
{
  --self->_activeRequestCount;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastActiveTimestamp = v3;
  if (self->_activeRequestCount < 0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v4 = qword_10002ACA8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Line wrapper is already fully checked in.", buf, 2u);
    }

    if (self->_activeRequestCount < 0)
    {
      if (qword_10002AD20 == -1)
      {
        v5 = qword_10002ACA8;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v5 = qword_10002ACA8;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Line wrapper is already fully checked in.", v6, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  [(CHRemoteLineWrappingRequestHandler *)self _stageEvictionOfLineWrapperWithTargetIdleLifetime:self->_targetIdleLifetime];
}

- (BOOL)_isValidRemoteLineWrappingRequest:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"The line wrapping request is invalid" value:&stru_100025778 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Remote line wrapping cannot process an empty request" value:&stru_100025778 table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Submit a new valid line wrapping request" value:&stru_100025778 table:0];

    v9 = [objc_opt_class() invalidInputErrorWithDescription:v13 failureReason:v15 recoverySuggestion:v17 errorCode:-1002];

    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a5)
  {
LABEL_3:
    v10 = v9;
    *a5 = v9;
  }

LABEL_4:

  return v7 != 0;
}

- (void)handleRequest:(id)a3 withReply:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000152DC;
  v15[3] = &unk_100024BB0;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(v11, v15);
}

@end