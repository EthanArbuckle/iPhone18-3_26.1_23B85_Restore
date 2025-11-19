@interface NFSecureElementProxyListener
- (NFSecureElementProxyListener)initWithDriverWrapper:(id)a3;
- (id)transceiveWithData:(id)a3 outError:(id *)a4;
@end

@implementation NFSecureElementProxyListener

- (NFSecureElementProxyListener)initWithDriverWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NFSecureElementProxyListener;
  v6 = [(NFSecureElementProxyListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_driverWrapper, a3);
  }

  return v7;
}

- (id)transceiveWithData:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(NFSecureElementProxyListener *)self driverWrapper];
  v8 = sub_100016848(v7, 1, v6, 1, a4);

  return v8;
}

@end