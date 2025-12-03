@interface IndoorProtocolProxy
- (CLIndoorDelegateProtocol)delegate;
- (IndoorProtocolProxy)initWithDelegate:(id)delegate;
- (void)indoorAssetDownloadProgress:(float)progress;
- (void)indoorDidFailWithError:(id)error;
- (void)indoorDidShutdown:(id)shutdown;
- (void)indoorDidUpdateToLocation:(id)location fromLocation:(id)fromLocation;
- (void)indoorGivesUpWithLocation:(id)location;
- (void)indoorIsUncertainWithLocation:(id)location;
@end

@implementation IndoorProtocolProxy

- (IndoorProtocolProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = IndoorProtocolProxy;
  v5 = [(IndoorProtocolProxy *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (!delegateCopy)
    {
      v9 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"no delegate" userInfo:0];
      objc_exception_throw(v9);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (void)indoorDidUpdateToLocation:(id)location fromLocation:(id)fromLocation
{
  locationCopy = location;
  fromLocationCopy = fromLocation;
  delegate = [(IndoorProtocolProxy *)self delegate];
  [delegate indoorDidUpdateToLocation:locationCopy fromLocation:fromLocationCopy];
}

- (void)indoorIsUncertainWithLocation:(id)location
{
  locationCopy = location;
  delegate = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indoorIsUncertainWithLocation:locationCopy];
  }
}

- (void)indoorGivesUpWithLocation:(id)location
{
  locationCopy = location;
  delegate = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indoorGivesUpWithLocation:locationCopy];
  }
}

- (void)indoorAssetDownloadProgress:(float)progress
{
  delegate = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v4 = progress;
    [delegate indoorAssetDownloadProgress:v4];
  }
}

- (void)indoorDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indoorDidFailWithError:errorCopy];
  }
}

- (void)indoorDidShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  if (shutdownCopy)
  {
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = shutdownCopy;
  }

  else
  {
    NSLog(@"ERROR - didn't get a reason for shutting down");
    v6 = [[NSError alloc] initWithDomain:@"com.apple.pipelined" code:-1 userInfo:&off_10044F158];
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = v6;
  }
}

- (CLIndoorDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end