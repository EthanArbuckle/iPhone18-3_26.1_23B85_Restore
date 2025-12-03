@interface APPCControllerReceiver
- (id)_coordinatorForRequester:(id)requester clientInfo:(id)info;
- (void)_finishedWithAllRequests;
- (void)_finishedWithRequestsForCoordinator:(id)coordinator;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)extendCollectionClassesForRemoteInterface:(id)interface;
- (void)finishedWithRequestsForRequester:(id)requester logID:(unint64_t)d;
- (void)preWarm:(id)warm logID:(unint64_t)d completion:(id)completion;
- (void)proxyURLWithLogID:(unint64_t)d completionHandler:(id)handler;
- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context withClientInfo:(id)info deliverEntireBatch:(BOOL)batch logID:(unint64_t)d completionHandler:(id)handler;
- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement logID:(unint64_t)d completionHandler:(id)handler;
- (void)setConnection:(id)connection;
@end

@implementation APPCControllerReceiver

- (void)_finishedWithAllRequests
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 136642819;
    v10 = "[APPCControllerReceiver _finishedWithAllRequests]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{sensitive}s: Removing all coordinators and setting APXPCConnection to nil", &v9, 0xCu);
  }

  lock = [(APPCControllerReceiver *)self lock];
  [lock lock];

  coordinators = [(APPCControllerReceiver *)self coordinators];
  [coordinators removeAllObjects];

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136642819;
    v10 = "[APPCControllerReceiver _finishedWithAllRequests]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{sensitive}s: Invalidating APXPCConnection", &v9, 0xCu);
  }

  connection = [(APPCControllerReceiver *)self connection];
  [connection invalidate];

  [(APPCControllerReceiver *)self setConnection:0];
  lock2 = [(APPCControllerReceiver *)self lock];
  [lock2 unlock];
}

- (void)connectionInvalidated
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 141558274;
    v6 = 1752392040;
    v7 = 2112;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{mask.hash}@] Connection from client has been invalidated.", &v5, 0x16u);
  }

  [(APPCControllerReceiver *)self _finishedWithAllRequests];
}

- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context withClientInfo:(id)info deliverEntireBatch:(BOOL)batch logID:(unint64_t)d completionHandler:(id)handler
{
  batchCopy = batch;
  typesCopy = types;
  requesterCopy = requester;
  contextCopy = context;
  infoCopy = info;
  handlerCopy = handler;
  v16 = APPerfLogForCategory();
  v17 = v16;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, d, "xpcDelay", "", buf, 2u);
  }

  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    identifier = [contextCopy identifier];
    *buf = 138543362;
    v46 = identifier;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Received request to fetch ad for context %{public}@", buf, 0xCu);
  }

  identifier2 = [contextCopy identifier];
  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    *buf = 138478595;
    v46 = v21;
    v47 = 2114;
    v48 = identifier2;
    v49 = 2114;
    v50 = identifier2;
    v51 = 2114;
    v52 = typesCopy;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{private}@ %{public}@] Prefetching promoted content for context %{public}@ with requested Ad types %{public}@", buf, 0x2Au);
  }

  objc_initWeak(&location, self);
  v23 = APLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = objc_loadWeakRetained(&location);
    v25 = v24;
    connection = [v25 connection];
    v27 = objc_loadWeakRetained(&location);
    connection2 = [v27 connection];
    bundleID = [connection2 bundleID];
    *buf = 136643587;
    v46 = "[APPCControllerReceiver requestPromotedContentOfTypes:forRequester:forContext:withClientInfo:deliverEntireBatch:logID:completionHandler:]";
    v47 = 2050;
    v48 = v24;
    v49 = 2050;
    v50 = connection;
    v51 = 2114;
    v52 = bundleID;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{sensitive}s: controller (weakSelf) %{public}p connection %{public}p bundleID is %{public}@.", buf, 0x2Au);
  }

  v30 = [(APPCControllerReceiver *)self _coordinatorForRequester:requesterCopy clientInfo:infoCopy];
  connection3 = [(APPCControllerReceiver *)self connection];
  bundleID2 = [connection3 bundleID];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100379490;
  v40[3] = &unk_1004806A0;
  objc_copyWeak(&v43, &location);
  v33 = v30;
  v41 = v33;
  v34 = handlerCopy;
  v42 = v34;
  sub_1003959BC(v33, typesCopy, contextCopy, bundleID2, infoCopy, batchCopy, v40);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)_finishedWithRequestsForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  lock = [(APPCControllerReceiver *)self lock];
  [lock lock];

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = sub_10039440C(coordinatorCopy);
    v12 = 138478083;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{private}@] Finished with requests for coordinator %{public}@", &v12, 0x16u);
  }

  coordinators = [(APPCControllerReceiver *)self coordinators];
  [coordinators removeObject:coordinatorCopy];

  lock2 = [(APPCControllerReceiver *)self lock];
  [lock2 unlock];
}

- (void)finishedWithRequestsForRequester:(id)requester logID:(unint64_t)d
{
  requesterCopy = requester;
  v7 = APPerfLogForCategory();
  v8 = v7;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, d, "xpcDelay", "", buf, 2u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100379870;
  v19[3] = &unk_1004806C8;
  v9 = requesterCopy;
  v20 = v9;
  v10 = [NSPredicate predicateWithBlock:v19];
  lock = [(APPCControllerReceiver *)self lock];
  [lock lock];

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138478083;
    v22 = v13;
    v23 = 2114;
    v24 = v9;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@] Finished with requests for %{public}@", buf, 0x16u);
  }

  coordinators = [(APPCControllerReceiver *)self coordinators];
  [coordinators filterUsingPredicate:v10];

  lock2 = [(APPCControllerReceiver *)self lock];
  [lock2 unlock];

  coordinators2 = [(APPCControllerReceiver *)self coordinators];
  v18 = [coordinators2 count];

  if (!v18)
  {
    [(APPCControllerReceiver *)self _finishedWithAllRequests];
  }
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_connection, connection);
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    v8 = 136643075;
    v9 = "[APPCControllerReceiver setConnection:]";
    v10 = 2114;
    connectionCopy2 = connection;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{sensitive}s: APXPCConnection set to %{public}@", &v8, 0x16u);
  }
}

- (void)proxyURLWithLogID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = APPerfLogForCategory();
  v7 = v6;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, d, "xpcDelay", "", &v22, 2u);
  }

  if (handlerCopy)
  {
    v8 = +[APProxySettings settings];
    v9 = v8;
    if (v8)
    {
      resourceConnectProxyURL = [v8 resourceConnectProxyURL];
      v11 = APLogForCategory();
      v12 = v11;
      if (resourceConnectProxyURL)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v22 = 138478083;
          v23 = v13;
          v24 = 2114;
          v25 = resourceConnectProxyURL;
          v14 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{private}@] Retrieved APProxySettings, resourceConnectProxyURL is %{public}@", &v22, 0x16u);
        }

        handlerCopy[2](handlerCopy, resourceConnectProxyURL);
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v22 = 138477827;
          v23 = v20;
          v21 = v20;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{private}@] resourceConnectProxyURL not found in proxySettings.", &v22, 0xCu);
        }

        handlerCopy[2](handlerCopy, 0);
      }
    }

    else
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v22 = 138477827;
        v23 = v18;
        v19 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{private}@] Error reading proxySettings.", &v22, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v22 = 138477827;
      v23 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{private}@] completionHandler not present", &v22, 0xCu);
    }
  }
}

- (void)preWarm:(id)warm logID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  warmCopy = warm;
  v9 = APPerfLogForCategory();
  v10 = v9;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, d, "xpcDelay", "", v12, 2u);
  }

  v11 = [APPromotedContentControllerDaemonModule didPrewarm:warmCopy];
  completionCopy[2](completionCopy, v11);
}

- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement logID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = APPerfLogForCategory();
  v10 = v9;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, d, "xpcDelay", "", v11, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (id)_coordinatorForRequester:(id)requester clientInfo:(id)info
{
  requesterCopy = requester;
  infoCopy = info;
  objc_initWeak(&location, self);
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_loadWeakRetained(&location);
    v10 = v9;
    connection = [v10 connection];
    v12 = objc_loadWeakRetained(&location);
    connection2 = [v12 connection];
    bundleID = [connection2 bundleID];
    *buf = 136643587;
    v36 = "[APPCControllerReceiver _coordinatorForRequester:clientInfo:]";
    v37 = 2050;
    v38 = v9;
    v39 = 2050;
    v40 = connection;
    v41 = 2114;
    v42 = bundleID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{sensitive}s: controller (weakSelf) %{public}p connection %{public}p bundleID is %{public}@.", buf, 0x2Au);
  }

  v15 = [APPCControllerCoordinator alloc];
  connection3 = [(APPCControllerReceiver *)self connection];
  bundleID2 = [connection3 bundleID];
  identifierProvider = [(APPCControllerReceiver *)self identifierProvider];
  connection4 = [(APPCControllerReceiver *)self connection];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10037A124;
  v30 = &unk_1004806F0;
  v20 = infoCopy;
  v31 = v20;
  objc_copyWeak(&v33, &location);
  v21 = requesterCopy;
  v32 = v21;
  v22 = sub_1003957D4(v15, bundleID2, v21, identifierProvider, connection4, &v27);

  v23 = [(APPCControllerReceiver *)self lock:v27];
  [v23 lock];

  coordinators = [(APPCControllerReceiver *)self coordinators];
  [coordinators addObject:v22];

  lock = [(APPCControllerReceiver *)self lock];
  [lock unlock];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return v22;
}

- (void)connectionInterrupted
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558274;
    v6 = 1752392040;
    v7 = 2112;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] Connection from client has been interrupted.", &v5, 0x16u);
  }

  [(APPCControllerReceiver *)self _finishedWithAllRequests];
}

- (void)extendCollectionClassesForExportedInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [interfaceCopy setClasses:v5 forSelector:"sendAndRankContent:forContext:placement:logID:completionHandler:" argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v5 forSelector:"sendAndRankContent:forContext:placement:logID:completionHandler:" argumentIndex:0 ofReply:1];
}

- (void)extendCollectionClassesForRemoteInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [interfaceCopy setClasses:v5 forSelector:"contentResponses:requester:" argumentIndex:0 ofReply:0];
}

@end