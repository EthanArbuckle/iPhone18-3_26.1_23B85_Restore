@interface IndoorProtocolProxy
- (CLIndoorDelegateProtocol)delegate;
- (IndoorProtocolProxy)initWithDelegate:(id)a3;
- (void)indoorAssetDownloadProgress:(float)a3;
- (void)indoorDidFailWithError:(id)a3;
- (void)indoorDidShutdown:(id)a3;
- (void)indoorDidUpdateToLocation:(id)a3 fromLocation:(id)a4;
- (void)indoorGivesUpWithLocation:(id)a3;
- (void)indoorIsUncertainWithLocation:(id)a3;
@end

@implementation IndoorProtocolProxy

- (IndoorProtocolProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IndoorProtocolProxy;
  v5 = [(IndoorProtocolProxy *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v9 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"no delegate" userInfo:0];
      objc_exception_throw(v9);
    }

    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (void)indoorDidUpdateToLocation:(id)a3 fromLocation:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(IndoorProtocolProxy *)self delegate];
  [v7 indoorDidUpdateToLocation:v8 fromLocation:v6];
}

- (void)indoorIsUncertainWithLocation:(id)a3
{
  v5 = a3;
  v4 = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 indoorIsUncertainWithLocation:v5];
  }
}

- (void)indoorGivesUpWithLocation:(id)a3
{
  v5 = a3;
  v4 = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 indoorGivesUpWithLocation:v5];
  }
}

- (void)indoorAssetDownloadProgress:(float)a3
{
  v5 = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [v5 indoorAssetDownloadProgress:v4];
  }
}

- (void)indoorDidFailWithError:(id)a3
{
  v5 = a3;
  v4 = [(IndoorProtocolProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 indoorDidFailWithError:v5];
  }
}

- (void)indoorDidShutdown:(id)a3
{
  v4 = a3;
  if (v4)
  {
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = v4;
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