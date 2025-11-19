@interface NEKCapabilities
+ (id)instance;
- (BOOL)_query:(id)a3;
- (BOOL)canUseDataTransfer;
- (BOOL)canUseLzfse;
- (NEKCapabilities)init;
- (void)_changed:(id)a3;
- (void)dealloc;
@end

@implementation NEKCapabilities

+ (id)instance
{
  if (qword_1000D1820 != -1)
  {
    sub_1000722B4();
  }

  v3 = qword_1000D1828;

  return v3;
}

- (NEKCapabilities)init
{
  v6.receiver = self;
  v6.super_class = NEKCapabilities;
  v2 = [(NEKCapabilities *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_changed:" name:NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification object:0];
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
    [(NEKCapabilities *)v2 setCache:v4];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NEKCapabilities;
  [(NEKCapabilities *)&v4 dealloc];
}

- (BOOL)canUseLzfse
{
  v3 = [[NSUUID alloc] initWithUUIDString:@"E8CD02C1-B7C0-4E12-8A44-AB54B5F52E5F"];
  LOBYTE(self) = [(NEKCapabilities *)self _query:v3];

  return self;
}

- (BOOL)canUseDataTransfer
{
  v3 = [[NSUUID alloc] initWithUUIDString:@"E58F9466-0386-4DE7-B6CE-537A8B54C9B7"];
  LOBYTE(self) = [(NEKCapabilities *)self _query:v3];

  return self;
}

- (BOOL)_query:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NEKCapabilities *)self cache];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 getActivePairedDevice];

    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 supportsCapability:v4]);
    v9 = [(NEKCapabilities *)self cache];
    [v9 setObject:v6 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v6 BOOLValue];

  return v10;
}

- (void)_changed:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NEKCapabilities *)self cache];
  [v4 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

@end