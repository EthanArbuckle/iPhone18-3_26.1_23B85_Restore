@interface CHRemoteDocumentLayoutAnalysisRequestHandler
- (BOOL)_isValidRemoteDocumentLayoutAnalysisRequest:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (CHRemoteDocumentLayoutAnalysisRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5;
- (id)_queueForRequest:(id)a3;
- (void)_checkInDocumentLayoutAnalyzer;
- (void)_checkOutDocumentLayoutAnalyzer;
- (void)_stageEvictionOfDocumentLayoutAnalyzerWithTargetIdleLifetime:(double)a3;
- (void)handleRequest:(id)a3 withReply:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation CHRemoteDocumentLayoutAnalysisRequestHandler

- (CHRemoteDocumentLayoutAnalysisRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CHRemoteDocumentLayoutAnalysisRequestHandler;
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

- (id)_queueForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 priority];
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = [(CHRemoteProcessingRequestHandler *)self highPriorityQueue];
    goto LABEL_6;
  }

  if (v5 == 2)
  {
LABEL_4:
    v6 = [(CHRemoteProcessingRequestHandler *)self lowPriorityQueue];
LABEL_6:
    v7 = v6;
    goto LABEL_12;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v8 = qword_10002ACC8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid recognition request priority specified", v10, 2u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)_stageEvictionOfDocumentLayoutAnalyzerWithTargetIdleLifetime:(double)a3
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v5 = qword_10002AD10;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Document layout analyzer for eviction with idle lifetime=%1.2f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AF30;
  v6[3] = &unk_100024B10;
  v6[4] = self;
  *&v6[5] = a3;
  [(CHRemoteBasicRequestHandler *)self _stageEvictionOfResourceWithTargetLifetime:v6 block:a3];
}

- (void)_checkOutDocumentLayoutAnalyzer
{
  ++self->_activeRequestCount;
  if (!self->_documentLayoutAnalyzer)
  {
    v3 = objc_alloc_init(CHDocumentLayoutAnalyzer);
    documentLayoutAnalyzer = self->_documentLayoutAnalyzer;
    self->_documentLayoutAnalyzer = v3;

    if (qword_10002AD20 == -1)
    {
      v5 = qword_10002AD10;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v5 = qword_10002AD10;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }
    }

    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Loaded document layout analyzer", &v8, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v6 = qword_10002AD10;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = qword_10002AD10;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    activeRequestCount = self->_activeRequestCount;
    v8 = 134217984;
    v9 = activeRequestCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Currently active document layout analysis requests: %li", &v8, 0xCu);
  }

LABEL_9:
}

- (void)_checkInDocumentLayoutAnalyzer
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Document layout analyzer is already fully checked in.", buf, 2u);
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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Document layout analyzer is already fully checked in.", v6, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  [(CHRemoteDocumentLayoutAnalysisRequestHandler *)self _stageEvictionOfDocumentLayoutAnalyzerWithTargetIdleLifetime:self->_targetIdleLifetime];
}

- (BOOL)_isValidRemoteDocumentLayoutAnalysisRequest:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [v7 drawing];

    if (v9)
    {
      v10 = 0;
      v11 = 1;
      if (!a5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v19 = +[NSBundle mainBundle];
    v13 = [v19 localizedStringForKey:@"The input drawing is invalid" value:&stru_100025778 table:0];

    v20 = +[NSBundle mainBundle];
    v15 = [v20 localizedStringForKey:@"Remote document layout analysis cannot handle empty input drawings" value:&stru_100025778 table:0];

    v21 = +[NSBundle mainBundle];
    v17 = [v21 localizedStringForKey:@"Submit valid drawings with one or more strokes for document layout analysis" value:&stru_100025778 table:0];

    v18 = [objc_opt_class() invalidInputErrorWithDescription:v13 failureReason:v15 recoverySuggestion:v17 errorCode:-1001];
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"The document layout analysis request is invalid" value:&stru_100025778 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Remote document layout analyzer cannot process an empty request" value:&stru_100025778 table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Submit a new valid document layout analysis request" value:&stru_100025778 table:0];

    v18 = [objc_opt_class() invalidInputErrorWithDescription:v13 failureReason:v15 recoverySuggestion:v17 errorCode:-1002];
  }

  v10 = v18;

  v11 = 0;
  if (a5)
  {
LABEL_8:
    v22 = v10;
    *a5 = v10;
  }

LABEL_9:

  return v11;
}

- (void)handleRequest:(id)a3 withReply:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B8C0;
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