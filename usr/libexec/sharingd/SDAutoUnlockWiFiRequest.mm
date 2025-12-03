@interface SDAutoUnlockWiFiRequest
- (SDAutoUnlockWiFiRequest)initWithAwdlInfo:(id)info isRangingInitiator:(BOOL)initiator rangingPeer:(id)peer queueAvailableHandler:(id)handler awdlStartedHandler:(id)startedHandler peerFoundHandler:(id)foundHandler rangingStartedHandler:(id)rangingStartedHandler rangingCompletedHandler:(id)self0 invalidationHandler:(id)self1;
- (unint64_t)hash;
- (void)_invalidate;
@end

@implementation SDAutoUnlockWiFiRequest

- (SDAutoUnlockWiFiRequest)initWithAwdlInfo:(id)info isRangingInitiator:(BOOL)initiator rangingPeer:(id)peer queueAvailableHandler:(id)handler awdlStartedHandler:(id)startedHandler peerFoundHandler:(id)foundHandler rangingStartedHandler:(id)rangingStartedHandler rangingCompletedHandler:(id)self0 invalidationHandler:(id)self1
{
  infoCopy = info;
  peerCopy = peer;
  handlerCopy = handler;
  startedHandlerCopy = startedHandler;
  foundHandlerCopy = foundHandler;
  rangingStartedHandlerCopy = rangingStartedHandler;
  completedHandlerCopy = completedHandler;
  invalidationHandlerCopy = invalidationHandler;
  v43.receiver = self;
  v43.super_class = SDAutoUnlockWiFiRequest;
  v23 = [(SDAutoUnlockWiFiRequest *)&v43 init];
  if (v23)
  {
    v24 = +[NSUUID UUID];
    uUIDString = [v24 UUIDString];
    identifier = v23->_identifier;
    v23->_identifier = uUIDString;

    objc_storeStrong(&v23->_awdlInfo, info);
    v23->_isRangingInitiator = initiator;
    objc_storeStrong(&v23->_rangingPeer, peer);
    v27 = [handlerCopy copy];
    queueAvailableHandler = v23->_queueAvailableHandler;
    v23->_queueAvailableHandler = v27;

    v29 = [startedHandlerCopy copy];
    awdlStartedHandler = v23->_awdlStartedHandler;
    v23->_awdlStartedHandler = v29;

    v31 = [foundHandlerCopy copy];
    peerFoundHandler = v23->_peerFoundHandler;
    v23->_peerFoundHandler = v31;

    v33 = [rangingStartedHandlerCopy copy];
    rangingStartedHandler = v23->_rangingStartedHandler;
    v23->_rangingStartedHandler = v33;

    v35 = [completedHandlerCopy copy];
    rangingCompletedHandler = v23->_rangingCompletedHandler;
    v23->_rangingCompletedHandler = v35;

    v37 = [invalidationHandlerCopy copy];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  [(SDAutoUnlockWiFiRequest *)self setInvalidated:1];
  invalidationHandler = [(SDAutoUnlockWiFiRequest *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(SDAutoUnlockWiFiRequest *)self invalidationHandler];
    invalidationHandler2[2]();
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
  identifier = [(SDAutoUnlockWiFiRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end