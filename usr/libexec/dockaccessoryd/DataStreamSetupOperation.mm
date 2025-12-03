@interface DataStreamSetupOperation
- (BOOL)removeBulkSendListener:(id)listener;
- (DataStreamSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service;
- (DataStreamSetupOperationDelegate)delegate;
- (void)_clearPendingBulkSendListeners;
- (void)addBulkSendListener:(id)listener fileType:(id)type;
- (void)continueStreamSetupWithResponse:(id)response;
- (void)dealloc;
- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)protocol;
- (void)postDidFailWithError:(id)error;
- (void)postDidSucceedWithTransport:(id)transport sessionEncryption:(id)encryption;
- (void)processTransportSetupResponse:(id)response;
- (void)startSetup;
@end

@implementation DataStreamSetupOperation

- (DataStreamSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service
{
  accessoryCopy = accessory;
  queueCopy = queue;
  identifierCopy = identifier;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = DataStreamSetupOperation;
  v15 = [(DataStreamSetupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessory, accessory);
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_logIdentifier, identifier);
    objc_storeStrong(&v16->_transferManagementService, service);
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

- (void)postDidFailWithError:(id)error
{
  errorCopy = error;
  queue = [(DataStreamSetupOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002DB30;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)postDidSucceedWithTransport:(id)transport sessionEncryption:(id)encryption
{
  transportCopy = transport;
  encryptionCopy = encryption;
  queue = [(DataStreamSetupOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DC5C;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = transportCopy;
  v13 = encryptionCopy;
  v9 = encryptionCopy;
  v10 = transportCopy;
  dispatch_async(queue, block);
}

- (void)continueStreamSetupWithResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] Parsing accessory response", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = responseCopy;
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
      characteristic = [v13 characteristic];
      type = [characteristic type];
      v16 = [type isEqualToString:@"00000131-0000-1000-8000-4D69736D6574"];

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

    error = [v17 error];

    if (error)
    {
      v19 = selfCopy;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(v19);
        error2 = [v17 error];
        *buf = 138543618;
        v53 = v21;
        v54 = 2112;
        v55 = error2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply errored out: %@", buf, 0x16u);
      }

      error3 = [v17 error];
      [(DataStreamSetupOperation *)v19 postDidFailWithError:error3];

      goto LABEL_20;
    }

    value = [v17 value];
    v47 = 0;
    v28 = [HAPDataStreamTransportSetupResponse parsedFromData:value error:&v47];
    v29 = v47;

    if (v29 || !v28)
    {
      v34 = selfCopy;
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

    status = [v28 status];

    if (!status)
    {
      v38 = selfCopy;
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

    status2 = [v28 status];
    value2 = [status2 value];
    if (value2 == 1)
    {
      v33 = 10;
    }

    else
    {
      if (value2 != 2)
      {
        v29 = 0;
LABEL_37:

        if (v29)
        {
          v38 = selfCopy;
          v42 = sub_10007FAA0();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = sub_10007FAFC(v38);
            status3 = [v28 status];
            v45 = HAPDataStreamTransportCommandStatusAsString([status3 value]);
            *buf = 138543618;
            v53 = v43;
            v54 = 2112;
            v55 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write failed with status %@", buf, 0x16u);
          }

          goto LABEL_41;
        }

        parameters = [v28 parameters];

        if (parameters)
        {
          [(DataStreamSetupOperation *)selfCopy processTransportSetupResponse:v28];
          goto LABEL_43;
        }

        v38 = selfCopy;
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
  v24 = selfCopy;
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
  pendingBulkSendListeners = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v4 = [pendingBulkSendListeners countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        listener = [*(*(&v11 + 1) + 8 * v7) listener];
        if (listener)
        {
          accessory = [(DataStreamSetupOperation *)self accessory];
          [listener accessoryDidCloseDataStream:accessory];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [pendingBulkSendListeners countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  pendingBulkSendListeners2 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners2 removeAllObjects];
}

- (void)startSetup
{
  v2 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[DataStreamSetupOperation startSetup]"];
  v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)processTransportSetupResponse:(id)response
{
  responseCopy = response;
  v4 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[DataStreamSetupOperation processTransportSetupResponse:]"];
  v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)addBulkSendListener:(id)listener fileType:(id)type
{
  typeCopy = type;
  listenerCopy = listener;
  queue = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [[DKPendingBulkSendListener alloc] initWithListener:listenerCopy fileType:typeCopy];
  pendingBulkSendListeners = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners addObject:v10];
}

- (BOOL)removeBulkSendListener:(id)listener
{
  listenerCopy = listener;
  queue = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  pendingBulkSendListeners = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [pendingBulkSendListeners countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        listener = [v11 listener];

        if (listener == listenerCopy)
        {
          pendingBulkSendListeners2 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
          [pendingBulkSendListeners2 removeObject:v11];

          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [pendingBulkSendListeners countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)protocol
{
  protocolCopy = protocol;
  queue = [(DataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingBulkSendListeners = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [pendingBulkSendListeners countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        listener = [v11 listener];
        if (listener)
        {
          fileType = [v11 fileType];
          [protocolCopy addListener:listener fileType:fileType];
        }
      }

      v8 = [pendingBulkSendListeners countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  pendingBulkSendListeners2 = [(DataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners2 removeAllObjects];
}

- (DataStreamSetupOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end