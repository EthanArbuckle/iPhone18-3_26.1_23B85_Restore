@interface SDManagedBrowser
+ (id)sharedBrowser;
- (SDManagedBrowser)init;
- (void)setServers:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SDManagedBrowser

+ (id)sharedBrowser
{
  if (qword_10098A258 != -1)
  {
    sub_1001FC58C();
  }

  v3 = qword_10098A260;

  return v3;
}

- (SDManagedBrowser)init
{
  v6.receiver = self;
  v6.super_class = SDManagedBrowser;
  v2 = [(SDManagedBrowser *)&v6 init];
  v3 = v2;
  if (v2)
  {
    servers = v2->_servers;
    v2->_servers = 0;

    v3->_clientCount = 0;
    v3->_sendNotification = 0;
  }

  return v3;
}

- (void)setServers:(id)a3
{
  v5 = a3;
  if (sub_100118058(self->_servers, v5))
  {
    objc_storeStrong(&self->_servers, a3);
    self->_sendNotification = 1;
  }
}

- (void)start
{
  clientCount = self->_clientCount;
  self->_clientCount = clientCount + 1;
  if (!clientCount)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001FC558;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)stop
{
  v2 = self->_clientCount - 1;
  self->_clientCount = v2;
  if (!v2)
  {
    servers = self->_servers;
    self->_servers = 0;
  }
}

@end