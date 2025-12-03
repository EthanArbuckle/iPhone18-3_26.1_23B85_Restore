@interface SDRPNearFieldController
+ (id)supportedApplicationLabels;
- (BOOL)supportsApplicationLabel:(id)label;
- (NSString)currentApplicationLabel;
- (SDRPNearFieldController)initWithDispatchQueue:(id)queue delegate:(id)delegate;
- (SDRPNearFieldControllerDelegate)delegate;
- (SDRPNearFieldTransaction)currentTransaction;
- (int64_t)currentPreferredPollingType;
- (void)invalidate;
- (void)invalidateTransaction:(id)transaction updatedPkData:(id)data bonjourListenerUUID:(id)d;
- (void)startPolling:(int64_t)polling applicationLabel:(id)label pkData:(id)data bonjourListenerUUID:(id)d;
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

- (BOOL)supportsApplicationLabel:(id)label
{
  labelCopy = label;
  supportedApplicationLabels = [objc_opt_class() supportedApplicationLabels];
  v5 = [supportedApplicationLabels containsObject:labelCopy];

  return v5;
}

- (SDRPNearFieldController)initWithDispatchQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
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

    objc_storeStrong(&v9->_dispatchQueue, queue);
    v11 = [[RPNearFieldController alloc] initWithDispatchQueue:queueCopy delegate:delegateCopy];
    nearFieldController = v9->_nearFieldController;
    v9->_nearFieldController = v11;
  }

  return v9;
}

- (SDRPNearFieldControllerDelegate)delegate
{
  nearFieldController = [(SDRPNearFieldController *)self nearFieldController];
  delegate = [nearFieldController delegate];

  return delegate;
}

- (int64_t)currentPreferredPollingType
{
  nearFieldController = [(SDRPNearFieldController *)self nearFieldController];
  currentPreferredPollingType = [nearFieldController currentPreferredPollingType];

  return currentPreferredPollingType;
}

- (NSString)currentApplicationLabel
{
  nearFieldController = [(SDRPNearFieldController *)self nearFieldController];
  currentApplicationLabel = [nearFieldController currentApplicationLabel];

  return currentApplicationLabel;
}

- (SDRPNearFieldTransaction)currentTransaction
{
  nearFieldController = [(SDRPNearFieldController *)self nearFieldController];
  currentTransaction = [nearFieldController currentTransaction];

  return currentTransaction;
}

- (void)startPolling:(int64_t)polling applicationLabel:(id)label pkData:(id)data bonjourListenerUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  labelCopy = label;
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
    v17 = [v15 initWithApplicationLabel:labelCopy supportedApplicationLabels:v16 pkData:dataCopy bonjourListenerUUID:dCopy];
  }

  else
  {
    v17 = [v14 initWithApplicationLabel:labelCopy pkData:dataCopy bonjourListenerUUID:dCopy];
  }

  [(SDRPNearFieldController *)self setCurrentApplicationLabel:labelCopy];

  [(RPNearFieldController *)self->_nearFieldController startPolling:polling context:v17];
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

- (void)invalidateTransaction:(id)transaction updatedPkData:(id)data bonjourListenerUUID:(id)d
{
  dCopy = d;
  dataCopy = data;
  transactionCopy = transaction;
  v11 = [RPNearFieldContext alloc];
  if (objc_opt_respondsToSelector())
  {
    currentApplicationLabel2 = v11;
    currentApplicationLabel = [(SDRPNearFieldController *)self currentApplicationLabel];
    v14 = +[SDRPNearFieldController supportedApplicationLabels];
    v17 = [currentApplicationLabel2 initWithApplicationLabel:currentApplicationLabel supportedApplicationLabels:v14 pkData:dataCopy bonjourListenerUUID:dCopy];

    v15 = dataCopy;
    dCopy = v14;
    dataCopy = currentApplicationLabel;
  }

  else
  {
    nearFieldController = self->_nearFieldController;
    v15 = v11;
    currentApplicationLabel2 = [(RPNearFieldController *)nearFieldController currentApplicationLabel];
    v17 = [v15 initWithApplicationLabel:currentApplicationLabel2 pkData:dataCopy bonjourListenerUUID:dCopy];
  }

  [(RPNearFieldController *)self->_nearFieldController invalidateTransaction:transactionCopy context:v17];
}

@end