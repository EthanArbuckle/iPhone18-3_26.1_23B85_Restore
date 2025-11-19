@interface GKService
+ (Class)interfaceClass;
+ (id)serviceForBundleID:(id)a3 localPlayer:(id)a4;
+ (id)serviceFromService:(id)a3;
+ (id)serviceWithTransport:(id)a3 forClient:(id)a4 credential:(id)a5;
+ (id)serviceWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5;
+ (unint64_t)requiredEntitlements;
- (GKService)initWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6;
- (GKService)initWithoutCredentialWithTransport:(id)a3 forClient:(id)a4;
- (id)managedObjectContextBypassingMultiUser;
- (id)playerIDBypassingMultiUser;
- (id)transactionGroupBypassingMultiUserWithName:(id)a3;
- (id)transactionGroupWithName:(id)a3;
- (id)transactionGroupWithName:(id)a3 forPlayerID:(id)a4;
- (void)_coreInitWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6;
@end

@implementation GKService

- (void)_coreInitWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6
{
  v10 = a3;
  v19 = a4;
  v11 = a5;
  v12 = a6;
  objc_storeStrong(&self->_clientProxy, a4);
  objc_storeStrong(&self->_localPlayer, a5);
  objc_storeStrong(&self->_credential, a6);
  if (!v10)
  {
    v10 = [v19 transportWithCredential:v12];
  }

  credential = self->_credential;
  if (credential)
  {
    v14 = [(GKDataTransport *)v10 credential];

    if (credential != v14)
    {
      v15 = [(GKDataTransport *)v10 storeBag];
      v16 = [(GKDataTransport *)v10 clientProxy];
      v17 = [GKDataTransport transportWithBag:v15 clientProxy:v16 credential:self->_credential];

      v10 = v17;
    }
  }

  transport = self->_transport;
  self->_transport = v10;
}

- (GKService)initWithoutCredentialWithTransport:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKService;
  v8 = [(GKService *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKService *)v8 _coreInitWithTransport:v6 forClient:v7 localPlayer:0 credential:0];
  }

  return v9;
}

- (GKService)initWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = GKService;
  v14 = [(GKService *)&v22 init];
  if (v14)
  {
    if (!v13)
    {
      v15 = [v12 accountName];

      if (v15)
      {
        v16 = +[GKPlayerCredentialController sharedController];
        v17 = [v12 accountName];
        v13 = [v16 credentialForUsername:v17 environment:{objc_msgSend(v11, "environment")}];

        if (!v12)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      v18 = [v10 credential];

      if (!v18)
      {
        v20 = +[GKPlayerCredentialController sharedController];
        v13 = [v20 primaryCredentialForEnvironment:{objc_msgSend(v11, "environment")}];

        v21 = [v13 playerInternal];

        v12 = v21;
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v13 = [v10 credential];
    }

    if (!v12)
    {
LABEL_9:
      v12 = [v13 playerInternal];
    }

LABEL_10:
    [(GKService *)v14 _coreInitWithTransport:v10 forClient:v11 localPlayer:v12 credential:v13];
  }

  return v14;
}

+ (id)serviceWithTransport:(id)a3 forClient:(id)a4 credential:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  v11 = [v7 playerInternal];
  v12 = [v10 initWithTransport:v9 forClient:v8 localPlayer:v11 credential:v7];

  return v12;
}

+ (id)serviceWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithTransport:v9 forClient:v8 localPlayer:v7 credential:0];

  return v10;
}

+ (id)serviceFromService:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 transport];
  v6 = [v3 clientProxy];
  v7 = [v3 localPlayer];
  v8 = [v3 credential];

  v9 = [v4 initWithTransport:v5 forClient:v6 localPlayer:v7 credential:v8];

  return v9;
}

+ (id)serviceForBundleID:(id)a3 localPlayer:(id)a4
{
  v6 = a4;
  v7 = [GKClientProxy clientForBundleID:a3];
  v8 = [a1 serviceWithTransport:0 forClient:v7 localPlayer:v6];

  return v8;
}

+ (unint64_t)requiredEntitlements
{
  v2 = [NSString stringWithFormat:@"Subclasses must override +requiredEntitlements."];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKService.m"];
  v4 = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKService requiredEntitlements]", [v4 UTF8String], 111);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

+ (Class)interfaceClass
{
  v2 = [NSString stringWithFormat:@"Subclasses must override +interfaceClass."];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKService.m"];
  v4 = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKService interfaceClass]", [v4 UTF8String], 117);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

- (id)playerIDBypassingMultiUser
{
  v2 = [(GKService *)self localPlayer];
  v3 = [v2 playerID];

  return v3;
}

- (id)transactionGroupBypassingMultiUserWithName:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self playerIDBypassingMultiUser];
  v6 = [(GKService *)self transactionGroupWithName:v4 forPlayerID:v5];

  return v6;
}

- (id)managedObjectContextBypassingMultiUser
{
  v3 = [(GKService *)self clientProxy];
  v4 = [(GKService *)self playerIDBypassingMultiUser];
  v5 = [v3 managedObjectContextForPlayerID:v4];

  return v5;
}

- (id)transactionGroupWithName:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self localPlayer];
  v6 = [v5 playerID];
  v7 = [(GKService *)self transactionGroupWithName:v4 forPlayerID:v6];

  return v7;
}

- (id)transactionGroupWithName:(id)a3 forPlayerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 transactionGroupWithName:v7 forPlayerID:v6];

  return v9;
}

@end