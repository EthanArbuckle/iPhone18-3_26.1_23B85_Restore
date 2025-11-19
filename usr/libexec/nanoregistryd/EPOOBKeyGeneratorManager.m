@interface EPOOBKeyGeneratorManager
- (EPOOBKeyGeneratorManager)init;
- (id)newResourceWithDelegate:(id)a3;
- (void)clear;
- (void)createResource;
- (void)destroyResource;
- (void)setKey:(id)a3;
- (void)update;
@end

@implementation EPOOBKeyGeneratorManager

- (EPOOBKeyGeneratorManager)init
{
  v3 = +[EPFactory queue];
  v4 = [(EPResourceManager *)self initWithQueue:v3];

  if (v4)
  {
    v5 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009098C;
    block[3] = &unk_100175660;
    v8 = v4;
    dispatch_async(v5, block);
  }

  return v4;
}

- (id)newResourceWithDelegate:(id)a3
{
  v13.receiver = self;
  v13.super_class = EPOOBKeyGeneratorManager;
  v4 = [(EPResourceManager *)&v13 newResourceWithDelegate:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = +[EPFactory queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100090A80;
    v10[3] = &unk_100175598;
    v11 = v6;
    v12 = self;
    v8 = v6;
    dispatch_async(v7, v10);
  }

  return v5;
}

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPOOBKeyGeneratorManager;
  [(EPResourceManager *)&v7 createResource];
  v3 = +[EPFactory sharedFactory];
  v4 = [v3 agentManager];
  v5 = [v4 newAgentWithDelegate:self fromCentral:0];
  agent = self->_agent;
  self->_agent = v5;

  [(EPOOBKeyGeneratorManager *)self update];
}

- (void)destroyResource
{
  v5.receiver = self;
  v5.super_class = EPOOBKeyGeneratorManager;
  [(EPResourceManager *)&v5 destroyResource];
  key = self->_key;
  self->_key = 0;

  agent = self->_agent;
  self->_agent = 0;
}

- (void)update
{
  if ([(EPResource *)self->_agent availability]== 1)
  {
    v3 = [(EPOOBKeyGeneratorManager *)self key];

    if (!v3)
    {
      v4 = sub_1000A98C0();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v6 = sub_1000A98C0();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent retrieveOOBDataForPeer:", &v12, 2u);
        }
      }

      v7 = [(EPPairingAgent *)self->_agent agent];
      v8 = [v7 retrieveOOBDataForPeer:0];
      [(EPOOBKeyGeneratorManager *)self setKey:v8];

      v9 = sub_1000A98C0();
      LODWORD(v8) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v10 = sub_1000A98C0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(EPOOBKeyGeneratorManager *)self key];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreBluetooth CBPairingAgent retrieveOOBDataForPeer: completed %@", &v12, 0xCu);
        }
      }

      [(EPResourceManager *)self setAvailability:1 withError:0];
    }
  }

  else
  {

    [(EPOOBKeyGeneratorManager *)self setKey:0];
  }
}

- (void)setKey:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_key, a3);
  if (!v5)
  {
    [(EPResourceManager *)self setAvailability:0 withError:0];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100090E6C;
  v6[3] = &unk_1001786C0;
  v6[4] = self;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v6];
  if (v5)
  {
    [(EPResourceManager *)self setAvailability:1 withError:0];
  }
}

- (void)clear
{
  [(EPOOBKeyGeneratorManager *)self setKey:0];

  [(EPOOBKeyGeneratorManager *)self update];
}

@end