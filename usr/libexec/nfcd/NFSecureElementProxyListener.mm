@interface NFSecureElementProxyListener
- (NFSecureElementProxyListener)initWithDriverWrapper:(id)wrapper;
- (id)transceiveWithData:(id)data outError:(id *)error;
@end

@implementation NFSecureElementProxyListener

- (NFSecureElementProxyListener)initWithDriverWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = NFSecureElementProxyListener;
  v6 = [(NFSecureElementProxyListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_driverWrapper, wrapper);
  }

  return v7;
}

- (id)transceiveWithData:(id)data outError:(id *)error
{
  dataCopy = data;
  driverWrapper = [(NFSecureElementProxyListener *)self driverWrapper];
  v8 = sub_100016848(driverWrapper, 1, dataCopy, 1, error);

  return v8;
}

@end