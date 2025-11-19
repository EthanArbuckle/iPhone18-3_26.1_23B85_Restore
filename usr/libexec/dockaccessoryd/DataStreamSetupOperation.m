@interface DataStreamSetupOperation
- (BOOL)removeBulkSendListener:(id)a3;
- (DataStreamSetupOperation)initWithAccessory:(id)a3 queue:(id)a4 logIdentifier:(id)a5 transferManagementService:(id)a6;
- (DataStreamSetupOperationDelegate)delegate;
- (void)_clearPendingBulkSendListeners;
- (void)addBulkSendListener:(id)a3 fileType:(id)a4;
- (void)continueStreamSetupWithResponse:(id)a3;
- (void)dealloc;
- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)a3;
- (void)postDidFailWithError:(id)a3;
- (void)postDidSucceedWithTransport:(id)a3 sessionEncryption:(id)a4;
- (void)processTransportSetupResponse:(id)a3;
- (void)startSetup;
@end

@implementation DataStreamSetupOperation

- (DataStreamSetupOperation)initWithAccessory:(id)a3 queue:(id)a4 logIdentifier:(id)a5 transferManagementService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = DataStreamSetupOperation;
  v15 = [(DataStreamSetupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessory, a3);
    objc_storeStrong(&v16->_queue, a4);
    objc_storeStrong(&v16->_logIdentifier, a5);
    objc_storeStrong(&v16->_transferManagementService, a6);
    v17 = +[NSMutableSet set];
    pendingBulkSendListeners = v16->_pendingBulkSendListeners;
    v16->_pendingBulkSendListeners = v17;
  }

  return v16;
}

- (void)dealloc
{
  [(DataStreamSetupOperation *)self _clearPendingBulkSendListeners];
  v3.receiver = self;
  v3.super_class = DataStreamSetupOperation;
  [(DataStreamSetupOperation *)&v3 dealloc];
}

- (void)postDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamSetupOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002DB30;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)postDidSucceedWithTransport:(id)a3 sessionEncryption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamSetupOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DC5C;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)continueStreamSetupWithResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    *buf = 138543362;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] Parsing accessory response", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v49 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v48 + 1) + 8 * v12);
      v14 = [v13 characteristic];
      v15 = [v14 type];
      v16 = [v15 isEqualToString:@"00000131-0000-1000-8000-4D69736D6574"];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v17 = v13;

    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = [v17 error];

    if (v18)
    {
      v19 = v5;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(v19);
        v22 = [v17 error];
        *buf = 138543618;
        v53 = v21;
        v54 = 2112;
        v55 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply errored out: %@", buf, 0x16u);
      }

      v23 = [v17 error];
      [(DataStreamSetupOperation *)v19 postDidFailWithError:v23];

      goto LABEL_20;
    }

    v27 = [v17 value];
    v47 = 0;
    v28 = [HAPDataStreamTransportSetupResponse parsedFromData:v27 error:&v47];
    v29 = v47;

    if (v29 || !v28)
    {
      v34 = v5;
      v35 = sub_10007FAA0();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = sub_10007FAFC(v34);
        *buf = 138543618;
        v53 = v36;
        v54 = 2112;
        v55 = v29;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply could not be parsed (error=%@)", buf, 0x16u);
      }

      v37 = [NSError dkErrorWithCode:36];
      [(DataStreamSetupOperation *)v34 postDidFailWithError:v37];

      goto LABEL_42;
    }

    v30 = [v28 status];

    if (!v30)
    {
      v38 = v5;
      v39 = sub_10007FAA0();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = sub_10007FAFC(v38);
        *buf = 138543362;
        v53 = v40;
        v41 = "%{public}@[Start Stream] The setup transfer write reply did not have status";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
      }

LABEL_33:

      v29 = [NSError dkErrorWithCode:36];
LABEL_41:
      [(DataStreamSetupOperation *)v38 postDidFailWithError:v29];
LABEL_42:

LABEL_43:
      goto LABEL_20;
    }

    v31 = [v28 status];
    v32 = [v31 value];
    if (v32 == 1)
    {
      v33 = 10;
    }

    else
    {
      if (v32 != 2)
      {
        v29 = 0;
LABEL_37:

        if (v29)
        {
          v38 = v5;
          v42 = sub_10007FAA0();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = sub_10007FAFC(v38);
            v44 = [v28 status];
            v45 = HAPDataStreamTransportCommandStatusAsString([v44 value]);
            *buf = 138543618;
            v53 = v43;
            v54 = 2112;
            v55 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write failed with status %@", buf, 0x16u);
          }

          goto LABEL_41;
        }

        v46 = [v28 parameters];

        if (v46)
        {
          [(DataStreamSetupOperation *)v5 processTransportSetupResponse:v28];
          goto LABEL_43;
        }

        v38 = v5;
        v39 = sub_10007FAA0();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = sub_10007FAFC(v38);
          *buf = 138543362;
          v53 = v40;
          v41 = "%{public}@[Start Stream] The setup transfer write reply did not contain setup parameters";
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v33 = 21;
    }

    v29 = [NSError dkErrorWithCode:v33];
    goto LABEL_37;
  }

LABEL_11:

LABEL_17:
  v24 = v5;
  v25 = sub_10007FAA0();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = sub_10007FAFC(v24);
    *buf = 138543362;
    v53 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply does not contain a response", buf, 0xCu);
  }

  v17 = [NSError dkErrorWithCode:36];
  [(DataStreamSetupOperation *)v24 postDidFailWithError:v17];
LABEL_20:
}

- (void)_clearPendingBulkSendListeners
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) listener];
        if (v8)
        {
          v9 = [(DataStreamSetupOperation *)self accessory];
          [v8 accessoryDidCloseDataStream:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [v10 removeAllObjects];
}

- (void)startSetup
{
  v2 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[DataStreamSetupOperation startSetup]"];
  v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)processTransportSetupResponse:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[DataStreamSetupOperation processTransportSetupResponse:]"];
  v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)addBulkSendListener:(id)a3 fileType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(v8);

  v10 = [[DKPendingBulkSendListener alloc] initWithListener:v7 fileType:v6];
  v9 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [v9 addObject:v10];
}

- (BOOL)removeBulkSendListener:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 listener];

        if (v12 == v4)
        {
          v14 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
          [v14 removeObject:v11];

          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 listener];
        if (v12)
        {
          v13 = [v11 fileType];
          [v4 addListener:v12 fileType:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [v14 removeAllObjects];
}

- (DataStreamSetupOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end