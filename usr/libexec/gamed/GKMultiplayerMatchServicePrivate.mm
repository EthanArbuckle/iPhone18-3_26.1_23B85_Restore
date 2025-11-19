@interface GKMultiplayerMatchServicePrivate
- (void)invitePlayersV2:(id)a3 toGame:(id)a4 handler:(id)a5;
@end

@implementation GKMultiplayerMatchServicePrivate

- (void)invitePlayersV2:(id)a3 toGame:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 2447, "[GKMultiplayerMatchServicePrivate invitePlayersV2:toGame:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DEAE0;
  v23[3] = &unk_100361348;
  v13 = v9;
  v24 = v13;
  v25 = v12;
  v26 = v8;
  v14 = v8;
  v15 = v12;
  [v15 performOnManagedObjectContext:v23];
  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DECD8;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = v10;
  v18 = v13;
  v19 = v10;
  [v15 notifyOnQueue:v17 block:v20];
}

@end