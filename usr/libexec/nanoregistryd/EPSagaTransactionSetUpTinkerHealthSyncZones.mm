@interface EPSagaTransactionSetUpTinkerHealthSyncZones
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionSetUpTinkerHealthSyncZones

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  v6 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v7 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  queue = [entryCopy queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  currentTimer = self->_currentTimer;
  self->_currentTimer = v9;

  v11 = self->_currentTimer;
  v12 = dispatch_time(0, 600000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v13 = self->_currentTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100011680;
  handler[3] = &unk_100175598;
  handler[4] = self;
  v23 = entryCopy;
  v14 = entryCopy;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(self->_currentTimer);
  v15 = objc_alloc_init(FAFetchFamilyCircleRequest);
  [v15 setPromptUserToResolveAuthenticatonFailure:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011820;
  v18[3] = &unk_100175BB8;
  v19 = v7;
  v20 = v6;
  selfCopy = self;
  v16 = v6;
  v17 = v7;
  [v15 startRequestWithCompletionHandler:v18];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end