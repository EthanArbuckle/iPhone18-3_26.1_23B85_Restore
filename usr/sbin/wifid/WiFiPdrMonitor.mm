@interface WiFiPdrMonitor
- (WiFiPdrMonitor)initWithFenceIdentifier:(id)identifier queue:(id)queue radiusInMeters:(id)meters;
- (void)_handleFenceCross:(id)cross error:(id)error;
- (void)_handleStatusUpdate:(id)update withError:(id)error;
- (void)_handleStatusUpdateError:(id)error;
- (void)clearFence;
- (void)endSession;
- (void)setFence;
- (void)setFenceCrossCallback:(id)callback context:(void *)context;
- (void)startSession;
@end

@implementation WiFiPdrMonitor

- (WiFiPdrMonitor)initWithFenceIdentifier:(id)identifier queue:(id)queue radiusInMeters:(id)meters
{
  if (self)
  {
    metersCopy = meters;
    queueCopy = queue;
    identifierCopy = identifier;
    v11 = [@"com.apple.wifi.CMPDRFenceManager." stringByAppendingString:identifierCopy];
    [(WiFiPdrMonitor *)self setFenceId:v11];

    [(WiFiPdrMonitor *)self setFenceName:identifierCopy];
    v12 = objc_opt_new();
    [(WiFiPdrMonitor *)self setPdrManager:v12];

    [(WiFiPdrMonitor *)self setQueue:queueCopy];
    [(WiFiPdrMonitor *)self setRadius:metersCopy];
  }

  return self;
}

- (void)startSession
{
  queue = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([(WiFiPdrMonitor *)self isSessionStarted])
  {
    NSLog(@"wifipdr Session is already started");
  }

  else
  {
    pdrManager = [(WiFiPdrMonitor *)self pdrManager];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10006EA00;
    v8 = &unk_1002606B0;
    objc_copyWeak(&v9, &location);
    [pdrManager startSessionWithStatusHandler:&v5];

    [(WiFiPdrMonitor *)self setIsSessionStarted:1, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)endSession
{
  queue = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(WiFiPdrMonitor *)self isSessionStarted])
  {
    if ([(WiFiPdrMonitor *)self isFenceActive])
    {
      [(WiFiPdrMonitor *)self clearFence];
    }

    pdrManager = [(WiFiPdrMonitor *)self pdrManager];
    [pdrManager endSession];

    NSLog(@"wifipdr Ending PDR session");

    [(WiFiPdrMonitor *)self setIsSessionStarted:0];
  }
}

- (void)setFence
{
  queue = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if (![(WiFiPdrMonitor *)self isSessionStarted])
  {
    NSLog(@"wifipdr Requested PDR fence without an active session! starting session");
    [(WiFiPdrMonitor *)self startSession];
  }

  if ([(WiFiPdrMonitor *)self isFenceActive])
  {
    pdrManager = [(WiFiPdrMonitor *)self pdrManager];
    fenceId = [(WiFiPdrMonitor *)self fenceId];
    [pdrManager clearFence:fenceId];
  }

  [(WiFiPdrMonitor *)self setIsFenceActive:1];
  pdrManager2 = [(WiFiPdrMonitor *)self pdrManager];
  fenceId2 = [(WiFiPdrMonitor *)self fenceId];
  radius = [(WiFiPdrMonitor *)self radius];
  [radius floatValue];
  v10 = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006ED34;
  v12[3] = &unk_1002606D8;
  objc_copyWeak(&v13, &location);
  LODWORD(v11) = v10;
  [pdrManager2 setFence:fenceId2 withRadius:v12 withCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)clearFence
{
  queue = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(WiFiPdrMonitor *)self isFenceActive])
  {
    pdrManager = [(WiFiPdrMonitor *)self pdrManager];
    fenceId = [(WiFiPdrMonitor *)self fenceId];
    [pdrManager clearFence:fenceId];

    [(WiFiPdrMonitor *)self setIsFenceActive:0];
    NSLog(@"wifipdr Clearing PDR fence, with identifier: %@", self->_fenceId);
  }

  else
  {
    NSLog(@"wifipdr No fence active -- ignoring request to clear fence");
  }
}

- (void)_handleFenceCross:(id)cross error:(id)error
{
  crossCopy = cross;
  errorCopy = error;
  NSLog(@"wifipdr PDR fence callback ");
  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    NSLog(@"wifipdr PDR fence completion error: %@ and identifier %@", localizedDescription, crossCopy);
  }

  else
  {
    NSLog(@"wifipdr PDR fence completed sucessfully, with identifier: %@", crossCopy);
    onFenceCross = [(WiFiPdrMonitor *)self onFenceCross];
    v9 = +[NSDate now];
    (onFenceCross)[2](onFenceCross, v9, [(WiFiPdrMonitor *)self wifimContext]);

    [(WiFiPdrMonitor *)self setIsFenceActive:0];
  }
}

- (void)_handleStatusUpdateError:(id)error
{
  localizedDescription = [error localizedDescription];
  fenceId = [(WiFiPdrMonitor *)self fenceId];
  v6 = [NSNumber numberWithBool:[(WiFiPdrMonitor *)self isSessionStarted]];
  v7 = [NSNumber numberWithBool:[(WiFiPdrMonitor *)self isFenceActive]];
  NSLog(@"wifipdr PDR fence error, PDR fence cleared with error: %@ and identifier %@, session is started: %@, fence is active: %@", localizedDescription, fenceId, v6, v7);

  if ([(WiFiPdrMonitor *)self isFenceActive])
  {
    [(WiFiPdrMonitor *)self clearFence];
  }

  if ([(WiFiPdrMonitor *)self isSessionStarted])
  {
    [(WiFiPdrMonitor *)self endSession];

    [(WiFiPdrMonitor *)self startSession];
  }
}

- (void)_handleStatusUpdate:(id)update withError:(id)error
{
  updateCopy = update;
  v9 = updateCopy;
  if (error)
  {
    [(WiFiPdrMonitor *)self _handleStatusUpdateError:error];
  }

  else
  {
    NSLog(@"wifipdr get PDR status: %@", updateCopy);
    v7 = [NSMutableDictionary dictionaryWithDictionary:v9];
    fenceName = [(WiFiPdrMonitor *)self fenceName];
    [v7 setObject:&stru_1002680F8 forKeyedSubscript:fenceName];
  }
}

- (void)setFenceCrossCallback:(id)callback context:(void *)context
{
  [(WiFiPdrMonitor *)self setOnFenceCross:callback];

  [(WiFiPdrMonitor *)self setWifimContext:context];
}

@end