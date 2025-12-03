@interface _DASCollectTelemetryActivityContext
- (_DASCollectTelemetryActivityContext)init;
- (id)description;
- (void)updateWithtask:(id)withtask prewarmingStartDate:(id)date launchStartDate:(id)startDate;
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

- (void)updateWithtask:(id)withtask prewarmingStartDate:(id)date launchStartDate:(id)startDate
{
  withtaskCopy = withtask;
  dateCopy = date;
  startDateCopy = startDate;
  task = self->_task;
  self->_task = withtaskCopy;
  v12 = withtaskCopy;

  prewarmingDataCollectionStartDate = self->_prewarmingDataCollectionStartDate;
  self->_prewarmingDataCollectionStartDate = dateCopy;
  v14 = dateCopy;

  launchDataCollectionStartDate = self->_launchDataCollectionStartDate;
  self->_launchDataCollectionStartDate = startDateCopy;

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