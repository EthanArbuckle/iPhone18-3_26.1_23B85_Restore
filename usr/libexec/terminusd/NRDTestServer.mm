@interface NRDTestServer
- (void)dealloc;
@end

@implementation NRDTestServer

- (void)dealloc
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    v9 = 237;
    selfCopy = self;
    v7 = "";
    v8 = "[NRDTestServer dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    udpInputSource = self->_udpInputSource;
    if (udpInputSource)
    {
      dispatch_source_cancel(udpInputSource);
      v4 = self->_udpInputSource;
      self->_udpInputSource = 0;
    }

    udpInputSourceCloud = self->_udpInputSourceCloud;
    if (udpInputSourceCloud)
    {
      dispatch_source_cancel(udpInputSourceCloud);
      v6 = self->_udpInputSourceCloud;
      self->_udpInputSourceCloud = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = NRDTestServer;
  [(NRDTestServer *)&v11 dealloc:v7];
}

@end