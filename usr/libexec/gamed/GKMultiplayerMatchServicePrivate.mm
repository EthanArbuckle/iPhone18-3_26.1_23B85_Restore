@interface GKMultiplayerMatchServicePrivate
- (void)invitePlayersV2:(id)v2 toGame:(id)game handler:(id)handler;
@end

@implementation GKMultiplayerMatchServicePrivate

- (void)invitePlayersV2:(id)v2 toGame:(id)game handler:(id)handler
{
  v2Copy = v2;
  gameCopy = game;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 2447, "[GKMultiplayerMatchServicePrivate invitePlayersV2:toGame:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DEAE0;
  v23[3] = &unk_100361348;
  v13 = gameCopy;
  v24 = v13;
  v25 = v12;
  v26 = v2Copy;
  v14 = v2Copy;
  v15 = v12;
  [v15 performOnManagedObjectContext:v23];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DECD8;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = handlerCopy;
  v18 = v13;
  v19 = handlerCopy;
  [v15 notifyOnQueue:replyQueue block:v20];
}

@end