@interface WiFiPdrMonitor
- (WiFiPdrMonitor)initWithFenceIdentifier:(id)a3 queue:(id)a4 radiusInMeters:(id)a5;
- (void)_handleFenceCross:(id)a3 error:(id)a4;
- (void)_handleStatusUpdate:(id)a3 withError:(id)a4;
- (void)_handleStatusUpdateError:(id)a3;
- (void)clearFence;
- (void)endSession;
- (void)setFence;
- (void)setFenceCrossCallback:(id)a3 context:(void *)a4;
- (void)startSession;
@end

@implementation WiFiPdrMonitor

- (WiFiPdrMonitor)initWithFenceIdentifier:(id)a3 queue:(id)a4 radiusInMeters:(id)a5
{
  if (self)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [@"com.apple.wifi.CMPDRFenceManager." stringByAppendingString:v10];
    [(WiFiPdrMonitor *)self setFenceId:v11];

    [(WiFiPdrMonitor *)self setFenceName:v10];
    v12 = objc_opt_new();
    [(WiFiPdrMonitor *)self setPdrManager:v12];

    [(WiFiPdrMonitor *)self setQueue:v9];
    [(WiFiPdrMonitor *)self setRadius:v8];
  }

  return self;
}

- (void)startSession
{
  v3 = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  if ([(WiFiPdrMonitor *)self isSessionStarted])
  {
    NSLog(@"wifipdr Session is already started");
  }

  else
  {
    v4 = [(WiFiPdrMonitor *)self pdrManager];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10006EA00;
    v8 = &unk_1002606B0;
    objc_copyWeak(&v9, &location);
    [v4 startSessionWithStatusHandler:&v5];

    [(WiFiPdrMonitor *)self setIsSessionStarted:1, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)endSession
{
  v3 = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(WiFiPdrMonitor *)self isSessionStarted])
  {
    if ([(WiFiPdrMonitor *)self isFenceActive])
    {
      [(WiFiPdrMonitor *)self clearFence];
    }

    v4 = [(WiFiPdrMonitor *)self pdrManager];
    [v4 endSession];

    NSLog(@"wifipdr Ending PDR session");

    [(WiFiPdrMonitor *)self setIsSessionStarted:0];
  }
}

- (void)setFence
{
  v3 = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  if (![(WiFiPdrMonitor *)self isSessionStarted])
  {
    NSLog(@"wifipdr Requested PDR fence without an active session! starting session");
    [(WiFiPdrMonitor *)self startSession];
  }

  if ([(WiFiPdrMonitor *)self isFenceActive])
  {
    v4 = [(WiFiPdrMonitor *)self pdrManager];
    v5 = [(WiFiPdrMonitor *)self fenceId];
    [v4 clearFence:v5];
  }

  [(WiFiPdrMonitor *)self setIsFenceActive:1];
  v6 = [(WiFiPdrMonitor *)self pdrManager];
  v7 = [(WiFiPdrMonitor *)self fenceId];
  v8 = [(WiFiPdrMonitor *)self radius];
  [v8 floatValue];
  v10 = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006ED34;
  v12[3] = &unk_1002606D8;
  objc_copyWeak(&v13, &location);
  LODWORD(v11) = v10;
  [v6 setFence:v7 withRadius:v12 withCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)clearFence
{
  v3 = [(WiFiPdrMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(WiFiPdrMonitor *)self isFenceActive])
  {
    v4 = [(WiFiPdrMonitor *)self pdrManager];
    v5 = [(WiFiPdrMonitor *)self fenceId];
    [v4 clearFence:v5];

    [(WiFiPdrMonitor *)self setIsFenceActive:0];
    NSLog(@"wifipdr Clearing PDR fence, with identifier: %@", self->_fenceId);
  }

  else
  {
    NSLog(@"wifipdr No fence active -- ignoring request to clear fence");
  }
}

- (void)_handleFenceCross:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  NSLog(@"wifipdr PDR fence callback ");
  if (v6)
  {
    v7 = [v6 localizedDescription];
    NSLog(@"wifipdr PDR fence completion error: %@ and identifier %@", v7, v10);
  }

  else
  {
    NSLog(@"wifipdr PDR fence completed sucessfully, with identifier: %@", v10);
    v8 = [(WiFiPdrMonitor *)self onFenceCross];
    v9 = +[NSDate now];
    (v8)[2](v8, v9, [(WiFiPdrMonitor *)self wifimContext]);

    [(WiFiPdrMonitor *)self setIsFenceActive:0];
  }
}

- (void)_handleStatusUpdateError:(id)a3
{
  v4 = [a3 localizedDescription];
  v5 = [(WiFiPdrMonitor *)self fenceId];
  v6 = [NSNumber numberWithBool:[(WiFiPdrMonitor *)self isSessionStarted]];
  v7 = [NSNumber numberWithBool:[(WiFiPdrMonitor *)self isFenceActive]];
  NSLog(@"wifipdr PDR fence error, PDR fence cleared with error: %@ and identifier %@, session is started: %@, fence is active: %@", v4, v5, v6, v7);

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

- (void)_handleStatusUpdate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v9 = v6;
  if (a4)
  {
    [(WiFiPdrMonitor *)self _handleStatusUpdateError:a4];
  }

  else
  {
    NSLog(@"wifipdr get PDR status: %@", v6);
    v7 = [NSMutableDictionary dictionaryWithDictionary:v9];
    v8 = [(WiFiPdrMonitor *)self fenceName];
    [v7 setObject:&stru_1002680F8 forKeyedSubscript:v8];
  }
}

- (void)setFenceCrossCallback:(id)a3 context:(void *)a4
{
  [(WiFiPdrMonitor *)self setOnFenceCross:a3];

  [(WiFiPdrMonitor *)self setWifimContext:a4];
}

@end