@interface _DASCollectTelemetryActivityContext
- (_DASCollectTelemetryActivityContext)init;
- (id)description;
- (void)updateWithtask:(id)a3 prewarmingStartDate:(id)a4 launchStartDate:(id)a5;
@end

@implementation _DASCollectTelemetryActivityContext

- (_DASCollectTelemetryActivityContext)init
{
  v8.receiver = self;
  v8.super_class = _DASCollectTelemetryActivityContext;
  v2 = [(_DASCollectTelemetryActivityContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    task = v2->_task;
    v2->_task = 0;

    prewarmingDataCollectionStartDate = v3->_prewarmingDataCollectionStartDate;
    v3->_prewarmingDataCollectionStartDate = 0;

    launchDataCollectionStartDate = v3->_launchDataCollectionStartDate;
    v3->_launchDataCollectionStartDate = 0;

    v3->_wasDeferred = 0;
  }

  return v3;
}

- (void)updateWithtask:(id)a3 prewarmingStartDate:(id)a4 launchStartDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  task = self->_task;
  self->_task = v8;
  v12 = v8;

  prewarmingDataCollectionStartDate = self->_prewarmingDataCollectionStartDate;
  self->_prewarmingDataCollectionStartDate = v9;
  v14 = v9;

  launchDataCollectionStartDate = self->_launchDataCollectionStartDate;
  self->_launchDataCollectionStartDate = v10;

  self->_wasDeferred = 0;
}

- (id)description
{
  v3 = objc_opt_class();
  launchDataCollectionStartDate = self->_launchDataCollectionStartDate;
  if (self->_wasDeferred)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@: %@, %@, %@, deferred: %@>", v3, *&self->_task, self->_launchDataCollectionStartDate, v5];
}

@end