@interface SDRPNearFieldController
+ (id)supportedApplicationLabels;
- (BOOL)supportsApplicationLabel:(id)a3;
- (NSString)currentApplicationLabel;
- (SDRPNearFieldController)initWithDispatchQueue:(id)a3 delegate:(id)a4;
- (SDRPNearFieldControllerDelegate)delegate;
- (SDRPNearFieldTransaction)currentTransaction;
- (int64_t)currentPreferredPollingType;
- (void)invalidate;
- (void)invalidateTransaction:(id)a3 updatedPkData:(id)a4 bonjourListenerUUID:(id)a5;
- (void)startPolling:(int64_t)a3 applicationLabel:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6;
- (void)stop;
@end

@implementation SDRPNearFieldController

+ (id)supportedApplicationLabels
{
  if (qword_100989D78 != -1)
  {
    sub_100109C68();
  }

  v3 = qword_100989D70;

  return v3;
}

- (BOOL)supportsApplicationLabel:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() supportedApplicationLabels];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (SDRPNearFieldController)initWithDispatchQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SDRPNearFieldController;
  v9 = [(SDRPNearFieldController *)&v15 init];
  if (v9)
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SDRPNearFieldController init", v14, 2u);
    }

    objc_storeStrong(&v9->_dispatchQueue, a3);
    v11 = [[RPNearFieldController alloc] initWithDispatchQueue:v7 delegate:v8];
    nearFieldController = v9->_nearFieldController;
    v9->_nearFieldController = v11;
  }

  return v9;
}

- (SDRPNearFieldControllerDelegate)delegate
{
  v2 = [(SDRPNearFieldController *)self nearFieldController];
  v3 = [v2 delegate];

  return v3;
}

- (int64_t)currentPreferredPollingType
{
  v2 = [(SDRPNearFieldController *)self nearFieldController];
  v3 = [v2 currentPreferredPollingType];

  return v3;
}

- (NSString)currentApplicationLabel
{
  v2 = [(SDRPNearFieldController *)self nearFieldController];
  v3 = [v2 currentApplicationLabel];

  return v3;
}

- (SDRPNearFieldTransaction)currentTransaction
{
  v2 = [(SDRPNearFieldController *)self nearFieldController];
  v3 = [v2 currentTransaction];

  return v3;
}

- (void)startPolling:(int64_t)a3 applicationLabel:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = airdrop_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SDRPNearFieldController start", v18, 2u);
  }

  v14 = [RPNearFieldContext alloc];
  if (objc_opt_respondsToSelector())
  {
    v15 = v14;
    v16 = +[SDRPNearFieldController supportedApplicationLabels];
    v17 = [v15 initWithApplicationLabel:v12 supportedApplicationLabels:v16 pkData:v10 bonjourListenerUUID:v11];
  }

  else
  {
    v17 = [v14 initWithApplicationLabel:v12 pkData:v10 bonjourListenerUUID:v11];
  }

  [(SDRPNearFieldController *)self setCurrentApplicationLabel:v12];

  [(RPNearFieldController *)self->_nearFieldController startPolling:a3 context:v17];
}

- (void)stop
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDRPNearFieldController stop", v4, 2u);
  }

  [(RPNearFieldController *)self->_nearFieldController stop];
  [(SDRPNearFieldController *)self setCurrentApplicationLabel:0];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDRPNearFieldController invalidate", v4, 2u);
  }

  [(RPNearFieldController *)self->_nearFieldController invalidate];
  [(SDRPNearFieldController *)self setCurrentApplicationLabel:0];
}

- (void)invalidateTransaction:(id)a3 updatedPkData:(id)a4 bonjourListenerUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [RPNearFieldContext alloc];
  if (objc_opt_respondsToSelector())
  {
    v12 = v11;
    v13 = [(SDRPNearFieldController *)self currentApplicationLabel];
    v14 = +[SDRPNearFieldController supportedApplicationLabels];
    v17 = [v12 initWithApplicationLabel:v13 supportedApplicationLabels:v14 pkData:v9 bonjourListenerUUID:v8];

    v15 = v9;
    v8 = v14;
    v9 = v13;
  }

  else
  {
    nearFieldController = self->_nearFieldController;
    v15 = v11;
    v12 = [(RPNearFieldController *)nearFieldController currentApplicationLabel];
    v17 = [v15 initWithApplicationLabel:v12 pkData:v9 bonjourListenerUUID:v8];
  }

  [(RPNearFieldController *)self->_nearFieldController invalidateTransaction:v10 context:v17];
}

@end