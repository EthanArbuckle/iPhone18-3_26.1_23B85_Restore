@interface GKService
+ (Class)interfaceClass;
+ (id)serviceForBundleID:(id)d localPlayer:(id)player;
+ (id)serviceFromService:(id)service;
+ (id)serviceWithTransport:(id)transport forClient:(id)client credential:(id)credential;
+ (id)serviceWithTransport:(id)transport forClient:(id)client localPlayer:(id)player;
+ (unint64_t)requiredEntitlements;
- (GKService)initWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential;
- (GKService)initWithoutCredentialWithTransport:(id)transport forClient:(id)client;
- (id)managedObjectContextBypassingMultiUser;
- (id)playerIDBypassingMultiUser;
- (id)transactionGroupBypassingMultiUserWithName:(id)name;
- (id)transactionGroupWithName:(id)name;
- (id)transactionGroupWithName:(id)name forPlayerID:(id)d;
- (void)_coreInitWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential;
@end

@implementation GKService

- (void)_coreInitWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential
{
  transportCopy = transport;
  clientCopy = client;
  playerCopy = player;
  credentialCopy = credential;
  objc_storeStrong(&self->_clientProxy, client);
  objc_storeStrong(&self->_localPlayer, player);
  objc_storeStrong(&self->_credential, credential);
  if (!transportCopy)
  {
    transportCopy = [clientCopy transportWithCredential:credentialCopy];
  }

  credential = self->_credential;
  if (credential)
  {
    credential = [(GKDataTransport *)transportCopy credential];

    if (credential != credential)
    {
      storeBag = [(GKDataTransport *)transportCopy storeBag];
      clientProxy = [(GKDataTransport *)transportCopy clientProxy];
      v17 = [GKDataTransport transportWithBag:storeBag clientProxy:clientProxy credential:self->_credential];

      transportCopy = v17;
    }
  }

  transport = self->_transport;
  self->_transport = transportCopy;
}

- (GKService)initWithoutCredentialWithTransport:(id)transport forClient:(id)client
{
  transportCopy = transport;
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = GKService;
  v8 = [(GKService *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKService *)v8 _coreInitWithTransport:transportCopy forClient:clientCopy localPlayer:0 credential:0];
  }

  return v9;
}

- (GKService)initWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential
{
  transportCopy = transport;
  clientCopy = client;
  playerCopy = player;
  credentialCopy = credential;
  v22.receiver = self;
  v22.super_class = GKService;
  v14 = [(GKService *)&v22 init];
  if (v14)
  {
    if (!credentialCopy)
    {
      accountName = [playerCopy accountName];

      if (accountName)
      {
        v16 = +[GKPlayerCredentialController sharedController];
        accountName2 = [playerCopy accountName];
        credentialCopy = [v16 credentialForUsername:accountName2 environment:{objc_msgSend(clientCopy, "environment")}];

        if (!playerCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }

      credential = [transportCopy credential];

      if (!credential)
      {
        v20 = +[GKPlayerCredentialController sharedController];
        credentialCopy = [v20 primaryCredentialForEnvironment:{objc_msgSend(clientCopy, "environment")}];

        playerInternal = [credentialCopy playerInternal];

        playerCopy = playerInternal;
        if (playerInternal)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      credentialCopy = [transportCopy credential];
    }

    if (!playerCopy)
    {
LABEL_9:
      playerCopy = [credentialCopy playerInternal];
    }

LABEL_10:
    [(GKService *)v14 _coreInitWithTransport:transportCopy forClient:clientCopy localPlayer:playerCopy credential:credentialCopy];
  }

  return v14;
}

+ (id)serviceWithTransport:(id)transport forClient:(id)client credential:(id)credential
{
  credentialCopy = credential;
  clientCopy = client;
  transportCopy = transport;
  v10 = objc_alloc(objc_opt_class());
  playerInternal = [credentialCopy playerInternal];
  v12 = [v10 initWithTransport:transportCopy forClient:clientCopy localPlayer:playerInternal credential:credentialCopy];

  return v12;
}

+ (id)serviceWithTransport:(id)transport forClient:(id)client localPlayer:(id)player
{
  playerCopy = player;
  clientCopy = client;
  transportCopy = transport;
  v10 = [objc_alloc(objc_opt_class()) initWithTransport:transportCopy forClient:clientCopy localPlayer:playerCopy credential:0];

  return v10;
}

+ (id)serviceFromService:(id)service
{
  serviceCopy = service;
  v4 = objc_alloc(objc_opt_class());
  transport = [serviceCopy transport];
  clientProxy = [serviceCopy clientProxy];
  localPlayer = [serviceCopy localPlayer];
  credential = [serviceCopy credential];

  v9 = [v4 initWithTransport:transport forClient:clientProxy localPlayer:localPlayer credential:credential];

  return v9;
}

+ (id)serviceForBundleID:(id)d localPlayer:(id)player
{
  playerCopy = player;
  v7 = [GKClientProxy clientForBundleID:d];
  v8 = [self serviceWithTransport:0 forClient:v7 localPlayer:playerCopy];

  return v8;
}

+ (unint64_t)requiredEntitlements
{
  v2 = [NSString stringWithFormat:@"Subclasses must override +requiredEntitlements."];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKService.m"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKService requiredEntitlements]", [lastPathComponent UTF8String], 111);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

+ (Class)interfaceClass
{
  v2 = [NSString stringWithFormat:@"Subclasses must override +interfaceClass."];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKService.m"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKService interfaceClass]", [lastPathComponent UTF8String], 117);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

- (id)playerIDBypassingMultiUser
{
  localPlayer = [(GKService *)self localPlayer];
  playerID = [localPlayer playerID];

  return playerID;
}

- (id)transactionGroupBypassingMultiUserWithName:(id)name
{
  nameCopy = name;
  playerIDBypassingMultiUser = [(GKService *)self playerIDBypassingMultiUser];
  v6 = [(GKService *)self transactionGroupWithName:nameCopy forPlayerID:playerIDBypassingMultiUser];

  return v6;
}

- (id)managedObjectContextBypassingMultiUser
{
  clientProxy = [(GKService *)self clientProxy];
  playerIDBypassingMultiUser = [(GKService *)self playerIDBypassingMultiUser];
  v5 = [clientProxy managedObjectContextForPlayerID:playerIDBypassingMultiUser];

  return v5;
}

- (id)transactionGroupWithName:(id)name
{
  nameCopy = name;
  localPlayer = [(GKService *)self localPlayer];
  playerID = [localPlayer playerID];
  v7 = [(GKService *)self transactionGroupWithName:nameCopy forPlayerID:playerID];

  return v7;
}

- (id)transactionGroupWithName:(id)name forPlayerID:(id)d
{
  dCopy = d;
  nameCopy = name;
  clientProxy = [(GKService *)self clientProxy];
  v9 = [clientProxy transactionGroupWithName:nameCopy forPlayerID:dCopy];

  return v9;
}

@end