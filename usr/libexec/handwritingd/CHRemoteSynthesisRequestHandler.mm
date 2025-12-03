@interface CHRemoteSynthesisRequestHandler
+ (BOOL)isValidRemoteSynthesisRequest:(id)request bundleIdentifier:(id)identifier error:(id *)error;
+ (BOOL)shouldFreezeCharacterInventory;
- (BOOL)clearInventory;
- (CHRemoteSynthesisRequestHandler)initWithServerQueue:(id)queue recognitionHandler:(id)handler;
- (id)_createDebugViewOfInventory;
- (void)_asyncUpdateInventoryStylePredictions;
- (void)_handleCharacterInventoryRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)_waitForStyleInventoryIdleAndReplyWithStatus:(id)status;
- (void)checkInStyleInventory;
- (void)checkInTextSynthesizer;
- (void)checkOutStyleInventory;
- (void)checkOutTextSynthesizer;
- (void)evictInventory;
- (void)evictTextSynthesizer;
- (void)handleAwaitInventoryIdleRequestWithReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleInventoryContainingSampleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleInventoryRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleInventoryStatusRequestWithReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleSynthesisStringChunkingRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)optimizeResourceUsage;
- (void)stageEvictionOfStyleInventoryWithTargetIdleLifetime:(double)lifetime;
- (void)stageEvictionOfTextSynthesizerWithTargetIdleLifetime:(double)lifetime;
@end

@implementation CHRemoteSynthesisRequestHandler

- (CHRemoteSynthesisRequestHandler)initWithServerQueue:(id)queue recognitionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CHRemoteSynthesisRequestHandler;
  v8 = [(CHRemoteBasicRequestHandler *)&v18 initWithServerQueue:queueCopy];
  v9 = v8;
  if (v8)
  {
    v8->_activeRequestCount = 0;
    v8->_targetIdleLifetime = 120.0;
    +[NSDate timeIntervalSinceReferenceDate];
    v9->_lastActiveTimestamp = v10;
    v9->_lastInventorySynthesisTimestamp = 0.0;
    objc_storeStrong(&v9->_recognitionRequestHandler, handler);
    v11 = [CHSynthesisRequestConcreteHandler alloc];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010ED0;
    v16[3] = &unk_100024AA0;
    v12 = v9;
    v17 = v12;
    v13 = [v11 initWithStyleComputeBlock:v16];
    concreteHandler = v12->_concreteHandler;
    v12->_concreteHandler = v13;
  }

  return v9;
}

+ (BOOL)isValidRemoteSynthesisRequest:(id)request bundleIdentifier:(id)identifier error:(id *)error
{
  requestCopy = request;
  identifierCopy = identifier;
  if (requestCopy)
  {
    if ([requestCopy requestType] == 1 && (objc_msgSend(requestCopy, "drawing"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v24 = +[NSBundle mainBundle];
      v15 = [v24 localizedStringForKey:@"The synthesis request is invalid" value:&stru_100025778 table:0];

      v25 = +[NSBundle mainBundle];
      v17 = [v25 localizedStringForKey:@"Cannot refine an empty drawing" value:&stru_100025778 table:0];

      v26 = +[NSBundle mainBundle];
      v19 = [v26 localizedStringForKey:@"Submit a request with .drawing!=nil or .refinementRequest=NO" value:&stru_100025778 table:0];

      v20 = [objc_opt_class() invalidInputErrorWithDescription:v15 failureReason:v17 recoverySuggestion:v19 errorCode:-1002];
    }

    else
    {
      if ([requestCopy requestType] && objc_msgSend(requestCopy, "requestType") != 2 || (objc_msgSend(requestCopy, "string"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
      {
        v12 = 0;
        v13 = 1;
        if (!error)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v21 = +[NSBundle mainBundle];
      v15 = [v21 localizedStringForKey:@"The synthesis request is invalid" value:&stru_100025778 table:0];

      v22 = +[NSBundle mainBundle];
      v17 = [v22 localizedStringForKey:@"Cannot generate ink for an empty string" value:&stru_100025778 table:0];

      v23 = +[NSBundle mainBundle];
      v19 = [v23 localizedStringForKey:@"Submit a request with .string != " value:&stru_100025778 table:0];

      v20 = [objc_opt_class() invalidInputErrorWithDescription:v15 failureReason:v17 recoverySuggestion:v19 errorCode:-1002];
    }
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"The synthesis request is invalid" value:&stru_100025778 table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Remote synthesis cannot process an empty request" value:&stru_100025778 table:0];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Submit a new valid synthesis request" value:&stru_100025778 table:0];

    v20 = [objc_opt_class() invalidInputErrorWithDescription:v15 failureReason:v17 recoverySuggestion:v19 errorCode:-1002];
  }

  v12 = v20;

  v13 = 0;
  if (error)
  {
LABEL_13:
    v27 = v12;
    *error = v12;
  }

LABEL_14:

  return v13;
}

+ (BOOL)shouldFreezeCharacterInventory
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 dictionaryForKey:@"com.apple.corehandwriting"];

    v5 = [v4 objectForKey:@"kCHFreezeCharacterInventory"];
    bOOLValue = [v5 BOOLValue];

    LOBYTE(has_internal_diagnostics) = bOOLValue;
  }

  return has_internal_diagnostics;
}

- (void)evictTextSynthesizer
{
  [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler unsafeEvictTextSynthesizer];
  self->_activeRequestCount = 0;

  [(CHRemoteBasicRequestHandler *)self setIdle];
}

- (void)checkOutTextSynthesizer
{
  ++self->_activeRequestCount;
  [(CHRemoteSynthesisRequestHandler *)self checkOutStyleInventory];
  [(CHRemoteBasicRequestHandler *)self setDirty];
  [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler unsafeCheckOutTextSynthesizer];
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v3 = qword_10002ACF0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    activeRequestCount = self->_activeRequestCount;
    v5 = 134217984;
    v6 = activeRequestCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Currently active synthesis requests: %li", &v5, 0xCu);
  }
}

- (void)checkInTextSynthesizer
{
  --self->_activeRequestCount;
  [(CHRemoteSynthesisRequestHandler *)self checkInStyleInventory];
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastActiveTimestamp = v3;
  if (self->_activeRequestCount < 0)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v4 = qword_10002ACA8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Synthesizer is already fully checked in.", buf, 2u);
    }

    if (self->_activeRequestCount < 0)
    {
      if (qword_10002AD20 == -1)
      {
        v5 = qword_10002ACA8;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v5 = qword_10002ACA8;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Synthesizer is already fully checked in.", v6, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  [(CHRemoteSynthesisRequestHandler *)self stageEvictionOfTextSynthesizerWithTargetIdleLifetime:self->_targetIdleLifetime];
}

- (void)stageEvictionOfTextSynthesizerWithTargetIdleLifetime:(double)lifetime
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v5 = qword_10002ACF0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    lifetimeCopy = lifetime;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Staging synthesizer for eviction with idle lifetime=%1.2f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000118E8;
  v6[3] = &unk_100024B10;
  v6[4] = self;
  *&v6[5] = lifetime;
  [(CHRemoteBasicRequestHandler *)self _stageEvictionOfResourceWithTargetLifetime:v6 block:lifetime];
}

- (void)evictInventory
{
  [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler saveStyleInventoryIfNeeded];
  [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler unsafeEvictStyleInventory];
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v3 = qword_10002ACF0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Evicted style inventory", v4, 2u);
  }
}

- (void)checkOutStyleInventory
{
  if (CHHasPersonalizedSynthesisSupport())
  {
    ++self->_activeStyleInventoryRequestCount;
    [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler unsafeCheckOutStyleInventory];
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v3 = qword_10002ACF0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      activeStyleInventoryRequestCount = self->_activeStyleInventoryRequestCount;
      v5 = 134217984;
      v6 = activeStyleInventoryRequestCount;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Currently active style inventory requests: %li", &v5, 0xCu);
    }
  }
}

- (void)checkInStyleInventory
{
  if (CHHasPersonalizedSynthesisSupport())
  {
    [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler unsafeCheckInStyleInventory];
    --self->_activeStyleInventoryRequestCount;
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastActiveStyleInventoryTimestamp = v3;
    if ((self->_activeStyleInventoryRequestCount & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v4 = qword_10002ACA8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Style inventory is already fully checked in.", buf, 2u);
    }

    if ((self->_activeStyleInventoryRequestCount & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    if (qword_10002AD20 == -1)
    {
      v5 = qword_10002ACA8;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

LABEL_12:
        [(CHRemoteSynthesisRequestHandler *)self stageEvictionOfStyleInventoryWithTargetIdleLifetime:self->_targetIdleLifetime];
        return;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v5 = qword_10002ACA8;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Style inventory is already fully checked in.", v6, 2u);
    goto LABEL_11;
  }
}

- (void)stageEvictionOfStyleInventoryWithTargetIdleLifetime:(double)lifetime
{
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v5 = qword_10002ACF0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    lifetimeCopy = lifetime;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Staging style inventory for eviction with idle lifetime=%1.2f", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011EE4;
  v6[3] = &unk_100024B10;
  v6[4] = self;
  *&v6[5] = lifetime;
  [(CHRemoteBasicRequestHandler *)self _stageEvictionOfResourceWithTargetLifetime:v6 block:lifetime];
}

- (BOOL)clearInventory
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    if ([objc_opt_class() shouldFreezeCharacterInventory])
    {
      if (qword_10002AD20 != -1)
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
      }

      v4 = qword_10002ACF0;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: character inventory is frozen. Ignoring clear inventory request", buf, 2u);
      }

      LOBYTE(has_internal_diagnostics) = 0;
    }

    else
    {
      serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100012190;
      block[3] = &unk_100024AA0;
      block[4] = self;
      dispatch_sync(serverQueue, block);

      LOBYTE(has_internal_diagnostics) = 1;
    }
  }

  return has_internal_diagnostics;
}

- (void)_handleCharacterInventoryRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  identifierCopy = identifier;
  if (![objc_opt_class() shouldFreezeCharacterInventory])
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v12 = qword_10002ACF0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: start _handleCharacterInventoryRequest", buf, 2u);
    }

    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001265C;
    block[3] = &unk_100024C28;
    block[4] = self;
    v25 = requestCopy;
    v26 = buf;
    v27 = &v28;
    dispatch_sync(serverQueue, block);

    if (v33[24] != 1)
    {
      goto LABEL_16;
    }

    if (qword_10002AD20 == -1)
    {
      v14 = qword_10002ACF0;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        serverQueue2 = [(CHRemoteBasicRequestHandler *)self serverQueue];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100012C58;
        v22[3] = &unk_100024AA0;
        v22[4] = self;
        dispatch_sync(serverQueue2, v22);

        [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler createPersonalizationCandidatesForAll:*(v29 + 24)];
        concreteHandler = self->_concreteHandler;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100012C94;
        v19[3] = &unk_100024CB8;
        v19[4] = self;
        v21 = &stru_100024C68;
        v20 = identifierCopy;
        [(CHSynthesisRequestConcreteHandler *)concreteHandler enumeratePersonalizedCandidatesWithBlock:v19];
        serverQueue3 = [(CHRemoteBasicRequestHandler *)self serverQueue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100013094;
        v18[3] = &unk_100024AA0;
        v18[4] = self;
        dispatch_async(serverQueue3, v18);

LABEL_16:
        (*(replyCopy + 2))(replyCopy, 0, 0);

        _Block_object_dispose(&v28, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v14 = qword_10002ACF0;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }
    }

    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: starting shouldStartSynthesis block", v23, 2u);
    goto LABEL_15;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v11 = qword_10002ACF0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CHRemoteSynthesisRequestHandler: character inventory is frozen. Ignoring _handleCharacterInventoryRequest", buf, 2u);
  }

LABEL_17:
}

- (id)_createDebugViewOfInventory
{
  if (os_variant_has_internal_diagnostics())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100010AEC;
    v12 = sub_100010AFC;
    v13 = 0;
    serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100013230;
    v7[3] = &unk_100024CE0;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(serverQueue, v7);

    v4 = v9[5];
    _Block_object_dispose(&v8, 8);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  identifierCopy = identifier;
  options = [requestCopy options];
  synthesizeCharacterInventoryBehavior = [options synthesizeCharacterInventoryBehavior];

  if (!synthesizeCharacterInventoryBehavior)
  {
    options2 = [requestCopy options];
    styleInventoryQuery = [options2 styleInventoryQuery];

    if (!styleInventoryQuery)
    {
      *buf = 0;
      v26 = buf;
      v27 = 0x3032000000;
      v28 = sub_100010AEC;
      v29 = sub_100010AFC;
      v30 = 0;
      serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013670;
      block[3] = &unk_100024D30;
      block[4] = self;
      v21 = requestCopy;
      v22 = identifierCopy;
      v23 = replyCopy;
      v24 = buf;
      dispatch_sync(serverQueue, block);

      _Block_object_dispose(buf, 8);
      goto LABEL_17;
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v16 = qword_10002ACF0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request triggered creation of style inventory debug view", buf, 2u);
    }

    _createDebugViewOfInventory = [(CHRemoteSynthesisRequestHandler *)self _createDebugViewOfInventory];
    if (qword_10002AD20 == -1)
    {
      v18 = qword_10002ACF0;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_15:

        (*(replyCopy + 2))(replyCopy, _createDebugViewOfInventory, 0);
        (*(replyCopy + 2))(replyCopy, 0, 0);

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v18 = qword_10002ACF0;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Style inventory debug view unsupported", buf, 2u);
    goto LABEL_15;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v13 = qword_10002ACF0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remote synthesis request will go through fast path synthesis", buf, 2u);
  }

  [(CHRemoteSynthesisRequestHandler *)self _handleCharacterInventoryRequest:requestCopy withReply:replyCopy bundleIdentifier:identifierCopy];
LABEL_17:
}

- (void)handleInventoryRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013BFC;
  block[3] = &unk_100024B38;
  block[4] = self;
  v10 = requestCopy;
  v13 = v10;
  v11 = replyCopy;
  v14 = v11;
  dispatch_async(serverQueue, block);

  [(CHRemoteSynthesisRequestHandler *)self _asyncUpdateInventoryStylePredictions];
}

- (void)handleInventoryStatusRequestWithReply:(id)reply bundleIdentifier:(id)identifier
{
  replyCopy = reply;
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013E98;
  v8[3] = &unk_100024980;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(serverQueue, v8);
}

- (void)handleAwaitInventoryIdleRequestWithReply:(id)reply bundleIdentifier:(id)identifier
{
  replyCopy = reply;
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013FF0;
  v8[3] = &unk_100024980;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(serverQueue, v8);
}

- (void)_waitForStyleInventoryIdleAndReplyWithStatus:(id)status
{
  statusCopy = status;
  if (self->_activeStyleInventoryRequestCount < 1)
  {
    [(CHRemoteSynthesisRequestHandler *)self checkOutStyleInventory];
    inventoryStatus = [(CHSynthesisRequestConcreteHandler *)self->_concreteHandler inventoryStatus];
    [(CHRemoteSynthesisRequestHandler *)self checkInStyleInventory];
    statusCopy[2](statusCopy, inventoryStatus, 0);
  }

  else
  {
    v5 = dispatch_time(0, 100000000);
    serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001417C;
    v8[3] = &unk_100024980;
    v8[4] = self;
    v9 = statusCopy;
    dispatch_after(v5, serverQueue, v8);
  }
}

- (void)handleInventoryContainingSampleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  if ((os_variant_has_internal_diagnostics() & 1) == 0)
  {
    v9 = [NSNumber numberWithBool:0];
    replyCopy[2](replyCopy, v9, 0);
  }

  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000142D0;
  block[3] = &unk_100024B38;
  block[4] = self;
  v14 = requestCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = requestCopy;
  dispatch_async(serverQueue, block);
}

- (void)handleSynthesisStringChunkingRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v9 = qword_10002ACF0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    string = [requestCopy string];
    string2 = [requestCopy string];
    *buf = 138740227;
    v19 = string;
    v20 = 1024;
    v21 = [string2 length];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CHRemoteRequestHandlers: handleSynthesisStringChunkingRequest content %{sensitive}@ length %d", buf, 0x12u);
  }

  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001457C;
  block[3] = &unk_100024B38;
  block[4] = self;
  v16 = requestCopy;
  v17 = replyCopy;
  v13 = replyCopy;
  v14 = requestCopy;
  dispatch_async(serverQueue, block);
}

- (void)_asyncUpdateInventoryStylePredictions
{
  if ([(CHSynthesisRequestConcreteHandler *)self->_concreteHandler hasPersonalizationAvailable])
  {
    serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000146B0;
    block[3] = &unk_100024AA0;
    block[4] = self;
    dispatch_async(serverQueue, block);
  }
}

- (void)optimizeResourceUsage
{
  [(CHRemoteSynthesisRequestHandler *)self stageEvictionOfTextSynthesizerWithTargetIdleLifetime:5.0];

  [(CHRemoteSynthesisRequestHandler *)self stageEvictionOfStyleInventoryWithTargetIdleLifetime:5.0];
}

@end