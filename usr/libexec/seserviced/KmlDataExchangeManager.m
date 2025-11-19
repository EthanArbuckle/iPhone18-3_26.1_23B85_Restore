@interface KmlDataExchangeManager
- (void)handleIncomingApdu:(id)a3 error:(id)a4;
- (void)handleSessionEndResult:(id)a3;
- (void)handleSessionPauseResult:(id)a3;
- (void)handleSessionResumeResult:(id)a3;
- (void)handleSessionStartResult:(id)a3;
- (void)handleTransactionEndResult:(id)a3;
- (void)handleTransactionStartResult:(id)a3;
@end

@implementation KmlDataExchangeManager

- (void)handleSessionStartResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlDataExchangeManager handleSessionStartResult:]";
    v12 = 1024;
    v13 = 624;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received session start result", buf, 0x12u);
  }

  dxManagerQueue = self->_dxManagerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10036CA38;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dxManagerQueue, v8);
}

- (void)handleSessionResumeResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlDataExchangeManager handleSessionResumeResult:]";
    v12 = 1024;
    v13 = 646;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received session resume result.", buf, 0x12u);
  }

  dxManagerQueue = self->_dxManagerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10036CDD8;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dxManagerQueue, v8);
}

- (void)handleSessionPauseResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[KmlDataExchangeManager handleSessionPauseResult:]";
    v13 = 1024;
    v14 = 671;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received session pause result.", buf, 0x12u);
  }

  dxManagerQueue = self->_dxManagerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10036D1A4;
  v8[3] = &unk_1004C22F0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dxManagerQueue, v8);
}

- (void)handleSessionEndResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[KmlDataExchangeManager handleSessionEndResult:]";
    v13 = 1024;
    v14 = 694;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received session end result.", buf, 0x12u);
  }

  dxManagerQueue = self->_dxManagerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10036D390;
  v8[3] = &unk_1004C22F0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dxManagerQueue, v8);
}

- (void)handleTransactionStartResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[KmlDataExchangeManager handleTransactionStartResult:]";
    v13 = 1024;
    v14 = 717;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received transaction session start result: %@", buf, 0x1Cu);
  }

  dxManagerQueue = self->_dxManagerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10036D584;
  v8[3] = &unk_1004C22F0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dxManagerQueue, v8);
}

- (void)handleTransactionEndResult:(id)a3
{
  v4 = a3;
  dxManagerQueue = self->_dxManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036D688;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dxManagerQueue, v7);
}

- (void)handleIncomingApdu:(id)a3 error:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[KmlDataExchangeManager handleIncomingApdu:error:]";
      v14 = 1024;
      v15 = 758;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Currently we don't do anything on error while reading APDU's.", buf, 0x12u);
    }
  }

  dxManagerQueue = self->_dxManagerQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10036DE70;
  v10[3] = &unk_1004C22F0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(dxManagerQueue, v10);
}

@end