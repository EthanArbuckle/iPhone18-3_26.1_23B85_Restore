@interface SDAutoUnlockWiFiRequest
- (SDAutoUnlockWiFiRequest)initWithAwdlInfo:(id)a3 isRangingInitiator:(BOOL)a4 rangingPeer:(id)a5 queueAvailableHandler:(id)a6 awdlStartedHandler:(id)a7 peerFoundHandler:(id)a8 rangingStartedHandler:(id)a9 rangingCompletedHandler:(id)a10 invalidationHandler:(id)a11;
- (unint64_t)hash;
- (void)_invalidate;
@end

@implementation SDAutoUnlockWiFiRequest

- (SDAutoUnlockWiFiRequest)initWithAwdlInfo:(id)a3 isRangingInitiator:(BOOL)a4 rangingPeer:(id)a5 queueAvailableHandler:(id)a6 awdlStartedHandler:(id)a7 peerFoundHandler:(id)a8 rangingStartedHandler:(id)a9 rangingCompletedHandler:(id)a10 invalidationHandler:(id)a11
{
  v42 = a3;
  v41 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v43.receiver = self;
  v43.super_class = SDAutoUnlockWiFiRequest;
  v23 = [(SDAutoUnlockWiFiRequest *)&v43 init];
  if (v23)
  {
    v24 = +[NSUUID UUID];
    v25 = [v24 UUIDString];
    identifier = v23->_identifier;
    v23->_identifier = v25;

    objc_storeStrong(&v23->_awdlInfo, a3);
    v23->_isRangingInitiator = a4;
    objc_storeStrong(&v23->_rangingPeer, a5);
    v27 = [v17 copy];
    queueAvailableHandler = v23->_queueAvailableHandler;
    v23->_queueAvailableHandler = v27;

    v29 = [v18 copy];
    awdlStartedHandler = v23->_awdlStartedHandler;
    v23->_awdlStartedHandler = v29;

    v31 = [v19 copy];
    peerFoundHandler = v23->_peerFoundHandler;
    v23->_peerFoundHandler = v31;

    v33 = [v20 copy];
    rangingStartedHandler = v23->_rangingStartedHandler;
    v23->_rangingStartedHandler = v33;

    v35 = [v21 copy];
    rangingCompletedHandler = v23->_rangingCompletedHandler;
    v23->_rangingCompletedHandler = v35;

    v37 = [v22 copy];
    invalidationHandler = v23->_invalidationHandler;
    v23->_invalidationHandler = v37;
  }

  return v23;
}

- (void)_invalidate
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SDAutoUnlockWiFiRequest _invalidate]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  [(SDAutoUnlockWiFiRequest *)self setInvalidated:1];
  v4 = [(SDAutoUnlockWiFiRequest *)self invalidationHandler];

  if (v4)
  {
    v5 = [(SDAutoUnlockWiFiRequest *)self invalidationHandler];
    v5[2]();
  }

  [(SDAutoUnlockWiFiRequest *)self setInvalidationHandler:0];
  [(SDAutoUnlockWiFiRequest *)self setQueueAvailableHandler:0];
  [(SDAutoUnlockWiFiRequest *)self setAwdlStartedHandler:0];
  [(SDAutoUnlockWiFiRequest *)self setPeerFoundHandler:0];
  [(SDAutoUnlockWiFiRequest *)self setRangingStartedHandler:0];
  [(SDAutoUnlockWiFiRequest *)self setRangingCompletedHandler:0];
}

- (unint64_t)hash
{
  v2 = [(SDAutoUnlockWiFiRequest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end