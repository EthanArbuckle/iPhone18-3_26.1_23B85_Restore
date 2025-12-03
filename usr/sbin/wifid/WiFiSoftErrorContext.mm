@interface WiFiSoftErrorContext
- (WiFiSoftErrorContext)initWithErrorType:(int)type deviceContext:(void *)context;
- (id)fetchSoftErrorContextData;
- (void)addStatsRecord:(id)record;
@end

@implementation WiFiSoftErrorContext

- (WiFiSoftErrorContext)initWithErrorType:(int)type deviceContext:(void *)context
{
  v14.receiver = self;
  v14.super_class = WiFiSoftErrorContext;
  v6 = [(WiFiSoftErrorContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_errorType = type;
    v6->_errorState = 0;
    v8 = 24;
    if (type == 1)
    {
      v8 = 16;
    }

    *(&v6->super.isa + v8) = context;
    v6->_triggerTime = CFAbsoluteTimeGetCurrent();
    v7->_detectionTime = 0.0;
    v9 = objc_alloc_init(NSMutableArray);
    errorContextData = v7->_errorContextData;
    v7->_errorContextData = v9;

    v11 = objc_alloc_init(NSMutableArray);
    statsRecordData = v7->_statsRecordData;
    v7->_statsRecordData = v11;
  }

  else
  {
    sub_10013A0DC();
  }

  return v7;
}

- (void)addStatsRecord:(id)record
{
  statsRecordData = self->_statsRecordData;
  if (statsRecordData)
  {
    [(NSMutableArray *)statsRecordData addObject:record];
  }
}

- (id)fetchSoftErrorContextData
{
  p_errorContextData = &self->_errorContextData;
  errorContextData = self->_errorContextData;
  if (!errorContextData)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *p_errorContextData;
    *p_errorContextData = v4;

    errorContextData = *p_errorContextData;
    if (!*p_errorContextData)
    {
      sub_10013A13C(p_errorContextData, &v7);
      errorContextData = v7;
    }
  }

  return errorContextData;
}

@end