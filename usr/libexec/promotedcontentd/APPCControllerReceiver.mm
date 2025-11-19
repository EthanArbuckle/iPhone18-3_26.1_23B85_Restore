@interface APPCControllerReceiver
- (id)_coordinatorForRequester:(id)a3 clientInfo:(id)a4;
- (void)_finishedWithAllRequests;
- (void)_finishedWithRequestsForCoordinator:(id)a3;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForExportedInterface:(id)a3;
- (void)extendCollectionClassesForRemoteInterface:(id)a3;
- (void)finishedWithRequestsForRequester:(id)a3 logID:(unint64_t)a4;
- (void)preWarm:(id)a3 logID:(unint64_t)a4 completion:(id)a5;
- (void)proxyURLWithLogID:(unint64_t)a3 completionHandler:(id)a4;
- (void)requestPromotedContentOfTypes:(id)a3 forRequester:(id)a4 forContext:(id)a5 withClientInfo:(id)a6 deliverEntireBatch:(BOOL)a7 logID:(unint64_t)a8 completionHandler:(id)a9;
- (void)sendAndRankContent:(id)a3 forContext:(id)a4 placement:(unint64_t)a5 logID:(unint64_t)a6 completionHandler:(id)a7;
- (void)setConnection:(id)a3;
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

  v4 = [(APPCControllerReceiver *)self lock];
  [v4 lock];

  v5 = [(APPCControllerReceiver *)self coordinators];
  [v5 removeAllObjects];

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136642819;
    v10 = "[APPCControllerReceiver _finishedWithAllRequests]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{sensitive}s: Invalidating APXPCConnection", &v9, 0xCu);
  }

  v7 = [(APPCControllerReceiver *)self connection];
  [v7 invalidate];

  [(APPCControllerReceiver *)self setConnection:0];
  v8 = [(APPCControllerReceiver *)self lock];
  [v8 unlock];
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

- (void)requestPromotedContentOfTypes:(id)a3 forRequester:(id)a4 forContext:(id)a5 withClientInfo:(id)a6 deliverEntireBatch:(BOOL)a7 logID:(unint64_t)a8 completionHandler:(id)a9
{
  v35 = a7;
  v38 = a3;
  v37 = a4;
  v14 = a5;
  v39 = a6;
  v15 = a9;
  v16 = APPerfLogForCategory();
  v17 = v16;
  if (a8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, a8, "xpcDelay", "", buf, 2u);
  }

  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v14 identifier];
    *buf = 138543362;
    v46 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Received request to fetch ad for context %{public}@", buf, 0xCu);
  }

  v36 = [v14 identifier];
  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    *buf = 138478595;
    v46 = v21;
    v47 = 2114;
    v48 = v36;
    v49 = 2114;
    v50 = v36;
    v51 = 2114;
    v52 = v38;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{private}@ %{public}@] Prefetching promoted content for context %{public}@ with requested Ad types %{public}@", buf, 0x2Au);
  }

  objc_initWeak(&location, self);
  v23 = APLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = objc_loadWeakRetained(&location);
    v25 = v24;
    v26 = [v25 connection];
    v27 = objc_loadWeakRetained(&location);
    v28 = [v27 connection];
    v29 = [v28 bundleID];
    *buf = 136643587;
    v46 = "[APPCControllerReceiver requestPromotedContentOfTypes:forRequester:forContext:withClientInfo:deliverEntireBatch:logID:completionHandler:]";
    v47 = 2050;
    v48 = v24;
    v49 = 2050;
    v50 = v26;
    v51 = 2114;
    v52 = v29;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{sensitive}s: controller (weakSelf) %{public}p connection %{public}p bundleID is %{public}@.", buf, 0x2Au);
  }

  v30 = [(APPCControllerReceiver *)self _coordinatorForRequester:v37 clientInfo:v39];
  v31 = [(APPCControllerReceiver *)self connection];
  v32 = [v31 bundleID];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100379490;
  v40[3] = &unk_1004806A0;
  objc_copyWeak(&v43, &location);
  v33 = v30;
  v41 = v33;
  v34 = v15;
  v42 = v34;
  sub_1003959BC(v33, v38, v14, v32, v39, v35, v40);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)_finishedWithRequestsForCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(APPCControllerReceiver *)self lock];
  [v5 lock];

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = sub_10039440C(v4);
    v12 = 138478083;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{private}@] Finished with requests for coordinator %{public}@", &v12, 0x16u);
  }

  v10 = [(APPCControllerReceiver *)self coordinators];
  [v10 removeObject:v4];

  v11 = [(APPCControllerReceiver *)self lock];
  [v11 unlock];
}

- (void)finishedWithRequestsForRequester:(id)a3 logID:(unint64_t)a4
{
  v6 = a3;
  v7 = APPerfLogForCategory();
  v8 = v7;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, a4, "xpcDelay", "", buf, 2u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100379870;
  v19[3] = &unk_1004806C8;
  v9 = v6;
  v20 = v9;
  v10 = [NSPredicate predicateWithBlock:v19];
  v11 = [(APPCControllerReceiver *)self lock];
  [v11 lock];

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

  v15 = [(APPCControllerReceiver *)self coordinators];
  [v15 filterUsingPredicate:v10];

  v16 = [(APPCControllerReceiver *)self lock];
  [v16 unlock];

  v17 = [(APPCControllerReceiver *)self coordinators];
  v18 = [v17 count];

  if (!v18)
  {
    [(APPCControllerReceiver *)self _finishedWithAllRequests];
  }
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_connection, a3);
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    v8 = 136643075;
    v9 = "[APPCControllerReceiver setConnection:]";
    v10 = 2114;
    v11 = connection;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{sensitive}s: APXPCConnection set to %{public}@", &v8, 0x16u);
  }
}

- (void)proxyURLWithLogID:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = APPerfLogForCategory();
  v7 = v6;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, a3, "xpcDelay", "", &v22, 2u);
  }

  if (v5)
  {
    v8 = +[APProxySettings settings];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 resourceConnectProxyURL];
      v11 = APLogForCategory();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v22 = 138478083;
          v23 = v13;
          v24 = 2114;
          v25 = v10;
          v14 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{private}@] Retrieved APProxySettings, resourceConnectProxyURL is %{public}@", &v22, 0x16u);
        }

        v5[2](v5, v10);
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

        v5[2](v5, 0);
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

      v5[2](v5, 0);
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

- (void)preWarm:(id)a3 logID:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = APPerfLogForCategory();
  v10 = v9;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, a4, "xpcDelay", "", v12, 2u);
  }

  v11 = [APPromotedContentControllerDaemonModule didPrewarm:v8];
  v7[2](v7, v11);
}

- (void)sendAndRankContent:(id)a3 forContext:(id)a4 placement:(unint64_t)a5 logID:(unint64_t)a6 completionHandler:(id)a7
{
  v8 = a7;
  v9 = APPerfLogForCategory();
  v10 = v9;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, a6, "xpcDelay", "", v11, 2u);
  }

  (*(v8 + 2))(v8, 0, 0);
}

- (id)_coordinatorForRequester:(id)a3 clientInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_loadWeakRetained(&location);
    v10 = v9;
    v11 = [v10 connection];
    v12 = objc_loadWeakRetained(&location);
    v13 = [v12 connection];
    v14 = [v13 bundleID];
    *buf = 136643587;
    v36 = "[APPCControllerReceiver _coordinatorForRequester:clientInfo:]";
    v37 = 2050;
    v38 = v9;
    v39 = 2050;
    v40 = v11;
    v41 = 2114;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{sensitive}s: controller (weakSelf) %{public}p connection %{public}p bundleID is %{public}@.", buf, 0x2Au);
  }

  v15 = [APPCControllerCoordinator alloc];
  v16 = [(APPCControllerReceiver *)self connection];
  v17 = [v16 bundleID];
  v18 = [(APPCControllerReceiver *)self identifierProvider];
  v19 = [(APPCControllerReceiver *)self connection];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10037A124;
  v30 = &unk_1004806F0;
  v20 = v7;
  v31 = v20;
  objc_copyWeak(&v33, &location);
  v21 = v6;
  v32 = v21;
  v22 = sub_1003957D4(v15, v17, v21, v18, v19, &v27);

  v23 = [(APPCControllerReceiver *)self lock:v27];
  [v23 lock];

  v24 = [(APPCControllerReceiver *)self coordinators];
  [v24 addObject:v22];

  v25 = [(APPCControllerReceiver *)self lock];
  [v25 unlock];

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

- (void)extendCollectionClassesForExportedInterface:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"sendAndRankContent:forContext:placement:logID:completionHandler:" argumentIndex:0 ofReply:0];
  [v3 setClasses:v5 forSelector:"sendAndRankContent:forContext:placement:logID:completionHandler:" argumentIndex:0 ofReply:1];
}

- (void)extendCollectionClassesForRemoteInterface:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"contentResponses:requester:" argumentIndex:0 ofReply:0];
}

@end