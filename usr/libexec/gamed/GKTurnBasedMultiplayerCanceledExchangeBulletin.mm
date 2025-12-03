@interface GKTurnBasedMultiplayerCanceledExchangeBulletin
- (void)loadBulletinMessageWithHandler:(id)handler;
- (void)loadDataWithHandler:(id)handler;
@end

@implementation GKTurnBasedMultiplayerCanceledExchangeBulletin

- (void)loadDataWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerCanceledExchangeBulletin loadDataWithHandler:", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 944, "[GKTurnBasedMultiplayerCanceledExchangeBulletin loadDataWithHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = +[GKClientProxy gameCenterClient];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10018D0E4;
  v20[3] = &unk_100360FF0;
  v20[4] = self;
  v10 = v8;
  v21 = v10;
  [v10 perform:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018D264;
  v18[3] = &unk_100360FF0;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  [v11 perform:v18];
  replyQueue = [v9 replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018D3B0;
  v15[3] = &unk_100360EB0;
  v16 = v11;
  v17 = handlerCopy;
  v13 = v11;
  v14 = handlerCopy;
  [v13 notifyOnQueue:replyQueue block:v15];
}

- (void)loadBulletinMessageWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerCanceledExchangeBulletin loadBulletinMessageWithHandler:", buf, 2u);
  }

  [GKDispatchGroup dispatchGroupWithName:@"loadBulletinMessageWithHandler"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018D5B0;
  v11[3] = &unk_100360FF0;
  v7 = v11[4] = self;
  v12 = v7;
  [v7 perform:v11];
  if (handlerCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10018DA78;
    v8[3] = &unk_100360EB0;
    v10 = handlerCopy;
    v9 = v7;
    [v9 notifyOnMainQueueWithBlock:v8];
  }
}

@end