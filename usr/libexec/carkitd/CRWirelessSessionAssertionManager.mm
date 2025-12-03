@interface CRWirelessSessionAssertionManager
+ (id)_descriptionForTransportType:(unint64_t)type;
- (CRSessionStoredVehicleProviding)storedVehicleProvider;
- (CRWirelessSessionAssertionManager)initWithSessionStatus:(id)status connectionTimeServiceAgent:(id)agent messagingConnector:(id)connector;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)dealloc;
- (void)handleTimeout:(id)timeout;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startTimeoutTimer;
- (void)startWaitingForConnection;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
- (void)stopTimeoutTimer;
- (void)stopWaitingForConnection;
@end

@implementation CRWirelessSessionAssertionManager

- (CRWirelessSessionAssertionManager)initWithSessionStatus:(id)status connectionTimeServiceAgent:(id)agent messagingConnector:(id)connector
{
  statusCopy = status;
  agentCopy = agent;
  connectorCopy = connector;
  v15.receiver = self;
  v15.super_class = CRWirelessSessionAssertionManager;
  v12 = [(CRWirelessSessionAssertionManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionStatus, status);
    [statusCopy addSessionObserver:v13];
    objc_storeStrong(&v13->_connectionTimeService, agent);
    objc_storeStrong(&v13->_messagingConnector, connector);
    [(CRWirelessSessionAssertionManager *)v13 setTimeoutTimer:0];
    [(CRWirelessSessionAssertionManager *)v13 setProcessTransaction:0];
  }

  return v13;
}

- (void)dealloc
{
  [(CRWirelessSessionAssertionManager *)self setSessionStatus:0];
  [(CRWirelessSessionAssertionManager *)self stopTimeoutTimer];
  [(CRWirelessSessionAssertionManager *)self setProcessTransaction:0];
  v3.receiver = self;
  v3.super_class = CRWirelessSessionAssertionManager;
  [(CRWirelessSessionAssertionManager *)&v3 dealloc];
}

- (void)startTimeoutTimer
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "assertion manager starting re-evaluation timer", v6, 2u);
  }

  timeoutTimer = [(CRWirelessSessionAssertionManager *)self timeoutTimer];

  if (!timeoutTimer)
  {
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"handleTimeout:" selector:0 userInfo:0 repeats:60.0];
    [(CRWirelessSessionAssertionManager *)self setTimeoutTimer:v5];
  }
}

- (void)stopTimeoutTimer
{
  timeoutTimer = [(CRWirelessSessionAssertionManager *)self timeoutTimer];
  [timeoutTimer invalidate];

  [(CRWirelessSessionAssertionManager *)self setTimeoutTimer:0];
}

- (void)handleTimeout:(id)timeout
{
  sessionStatus = [(CRWirelessSessionAssertionManager *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  if (currentSession && ([currentSession configuration], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "transportType"), v6, v7 == 3))
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100088CDC(v8);
    }
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100088D20(v8);
    }
  }

  [(CRWirelessSessionAssertionManager *)self stopWaitingForConnection];
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100067B24;
    v11[3] = &unk_1000DD480;
    v11[4] = self;
    dispatch_async(&_dispatch_main_q, v11);
  }

  v5 = [CRWirelessSessionAssertionManager _descriptionForTransportType:transport];
  v6 = CARCarKitTransportEvent;
  v7 = +[NSDate date];
  v12 = @"transportType";
  v13 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [CARConnectionEvent eventWithName:v6 type:4 date:v7 payload:v8];

  connectionTimeService = self->_connectionTimeService;
  if (connectionTimeService)
  {
    [(CARConnectionTimeServiceAgent *)connectionTimeService recordConnectionEvent:v9 completion:&stru_1000DFC90];
  }
}

+ (id)_descriptionForTransportType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000DFCB0 + type - 1);
  }
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067C3C;
    block[3] = &unk_1000DD480;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionDidConnect:(id)connect
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067CDC;
  v5[3] = &unk_1000DD580;
  connectCopy = connect;
  selfCopy = self;
  v4 = connectCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067E04;
  v5[3] = &unk_1000DD580;
  disconnectCopy = disconnect;
  selfCopy = self;
  v4 = disconnectCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)startWaitingForConnection
{
  v3 = os_transaction_create();
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "opening 'com.apple.carkit.active-session' transaction %@", &v5, 0xCu);
  }

  [(CRWirelessSessionAssertionManager *)self setProcessTransaction:v3];
  [(CRWirelessSessionAssertionManager *)self startTimeoutTimer];
}

- (void)stopWaitingForConnection
{
  processTransaction = [(CRWirelessSessionAssertionManager *)self processTransaction];

  if (processTransaction)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "closing 'com.apple.carkit.active-session' transaction", v5, 2u);
    }
  }

  [(CRWirelessSessionAssertionManager *)self setProcessTransaction:0];
  [(CRWirelessSessionAssertionManager *)self stopTimeoutTimer];
}

- (CRSessionStoredVehicleProviding)storedVehicleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storedVehicleProvider);

  return WeakRetained;
}

@end