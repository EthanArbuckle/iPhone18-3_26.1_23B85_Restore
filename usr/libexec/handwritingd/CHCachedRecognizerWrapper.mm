@interface CHCachedRecognizerWrapper
- (CHCachedRecognizerWrapper)initWithRecognizer:(id)recognizer;
- (void)checkInRecognizer;
- (void)dealloc;
@end

@implementation CHCachedRecognizerWrapper

- (CHCachedRecognizerWrapper)initWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v10.receiver = self;
  v10.super_class = CHCachedRecognizerWrapper;
  v6 = [(CHCachedRecognizerWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recognizer, recognizer);
    v7->_activeRequestCount = 0;
    +[NSDate timeIntervalSinceReferenceDate];
    v7->_lastActiveTimestamp = v8;
    v7->_targetIdleLifetime = 120.0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [recognizerCopy recognitionMode] == 6)
    {
      v7->_targetIdleLifetime = 12.0;
    }
  }

  return v7;
}

- (void)checkInRecognizer
{
  activeRequestCount = self->_activeRequestCount;
  self->_activeRequestCount = activeRequestCount - 1;
  if (activeRequestCount <= 0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v4 = qword_10002ACA8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Recognizer is already fully checked in.", buf, 2u);
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

      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Recognizer is already fully checked in.", v7, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastActiveTimestamp = v6;
}

- (void)dealloc
{
  recognizer = self->_recognizer;
  self->_recognizer = 0;

  v4.receiver = self;
  v4.super_class = CHCachedRecognizerWrapper;
  [(CHCachedRecognizerWrapper *)&v4 dealloc];
}

@end