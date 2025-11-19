@interface DataStreamHAPTransport
- (BOOL)_isRunning;
- (DataStreamHAPTransport)initWithAccessory:(id)a3 sessionIdentifier:(int64_t)a4 maxControllerTransportMTU:(unint64_t)a5 workQueue:(id)a6 logIdentifier:(id)a7;
- (DataStreamTransportDelegate)delegate;
- (HAPAccessory)accessory;
- (id)_buildWriteRequestWithError:(id *)a3 shouldForceClose:(BOOL)a4;
- (id)_getPendingWritesUpToLength:(unint64_t)a3;
- (void)_cancelAllPendingWritesWithError:(id)a3;
- (void)_doNextWriteOperation;
- (void)_handleCompletionWithResponseTuples:(id)a3;
- (void)_handleInterruptCharacteristicValue:(id)a3;
- (void)_handleReceivedData:(id)a3;
- (void)_notifyDelegateDidClose;
- (void)_notifyDelegateDidFailWithError:(id)a3;
- (void)_notifyDelegateDidOpen;
- (void)_notifyDelegateDidReceiveFrame:(id)a3;
- (void)_notifyWriteOperation:(id)a3 didCompleteWithError:(id)a4;
- (void)_registerForMessages;
- (void)_removeAndMarkCompleteAllCompletedWrites;
- (void)_stopWithError:(id)a3;
- (void)_teardownSessionWithError:(id)a3;
- (void)_writeCharacteristicRequests:(id)a3 completion:(id)a4;
- (void)close;
- (void)connect;
- (void)dealloc;
- (void)sendRawFrame:(id)a3 completion:(id)a4;
@end

@implementation DataStreamHAPTransport

- (DataStreamHAPTransport)initWithAccessory:(id)a3 sessionIdentifier:(int64_t)a4 maxControllerTransportMTU:(unint64_t)a5 workQueue:(id)a6 logIdentifier:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v26.receiver = self;
  v26.super_class = DataStreamHAPTransport;
  v15 = [(DataStreamHAPTransport *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a6);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = [NSNumber numberWithInteger:a4];
    sessionIdentifier = v16->_sessionIdentifier;
    v16->_sessionIdentifier = v17;

    v16->_maxControllerTransportMTU = a5;
    v19 = objc_opt_new();
    byteReader = v16->_byteReader;
    v16->_byteReader = v19;

    v21 = [v14 copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v21;

    v23 = +[NSMutableArray array];
    pendingWrites = v16->_pendingWrites;
    v16->_pendingWrites = v23;
  }

  return v16;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DataStreamHAPTransport;
  [(DataStreamHAPTransport *)&v2 dealloc];
}

- (BOOL)_isRunning
{
  v2 = [(DataStreamHAPTransport *)self transportCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (void)connect
{
  if ([(DataStreamHAPTransport *)self _isRunning])
  {
    v3 = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(v3);
      v19 = 138543362;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Connect called on an already-running transport", &v19, 0xCu);
LABEL_19:
    }
  }

  else
  {
    v6 = [(DataStreamHAPTransport *)self accessory];
    v3 = v6;
    if (v6)
    {
      v4 = [(DataStreamHAPTransport *)v6 characteristicOfType:@"00000138-0000-1000-8000-4D69736D6574" serviceType:@"00000129-0000-1000-8000-4D69736D6574"];
      if (v4)
      {
        v5 = [(DataStreamHAPTransport *)v3 characteristicOfType:@"00000139-0000-1000-8000-4D69736D6574" serviceType:@"00000129-0000-1000-8000-4D69736D6574"];
        v7 = self;
        v8 = sub_10007FAA0();
        v9 = v8;
        if (v5)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v10 = sub_10007FAFC(v7);
            v19 = 138543362;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@[Connect] All good; connected!", &v19, 0xCu);
          }

          [(DataStreamHAPTransport *)v7 setTransportCharacteristic:v4];
          [(DataStreamHAPTransport *)v7 setInterruptCharacteristic:v5];
          [(DataStreamHAPTransport *)v7 _registerForMessages];
          [(DataStreamHAPTransport *)v7 _notifyDelegateDidOpen];
        }

        else
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_10007FAFC(v7);
            v19 = 138543362;
            v20 = v17;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Interrupt Characteristic does not exist)", &v19, 0xCu);
          }

          v18 = [NSError dkErrorWithCode:4];
          [(DataStreamHAPTransport *)v7 _teardownSessionWithError:v18];
        }
      }

      else
      {
        v14 = self;
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sub_10007FAFC(v14);
          v19 = 138543362;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Transport Characteristic does not exist)", &v19, 0xCu);
        }

        v5 = [NSError dkErrorWithCode:4];
        [(DataStreamHAPTransport *)v14 _teardownSessionWithError:v5];
      }

      goto LABEL_19;
    }

    v11 = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v11);
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Connect called but accessory is no longer valid", &v19, 0xCu);
    }

    v4 = [NSError errorWithDomain:@"DKErrorDomain" code:38 userInfo:0];
    [(DataStreamHAPTransport *)v11 _teardownSessionWithError:v4];
  }
}

- (void)close
{
  v3 = [(DataStreamHAPTransport *)self _isRunning];
  v4 = self;
  v5 = sub_10007FAA0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = sub_10007FAFC(v4);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream transport closing.", &v9, 0xCu);
    }

    [(DataStreamHAPTransport *)v4 _teardownSessionWithError:0];
  }

  else
  {
    if (v6)
    {
      v8 = sub_10007FAFC(v4);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket invoked closed but nothing to clean up.", &v9, 0xCu);
    }
  }
}

- (void)_stopWithError:(id)a3
{
  v4 = a3;
  if ([(DataStreamHAPTransport *)self _isRunning])
  {
    [(DataStreamHAPTransport *)self _deregisterForMessages];
  }

  [(DataStreamHAPTransport *)self setTransportCharacteristic:0];
  [(DataStreamHAPTransport *)self setInterruptCharacteristic:0];
  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    v5 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
  }

  [(DataStreamHAPTransport *)self _cancelAllPendingWritesWithError:v5];
  [(DataStreamHAPTransport *)self setIsWriteInProgress:0];
  if (v6)
  {
    [(DataStreamHAPTransport *)self _notifyDelegateDidFailWithError:v6];
  }

  else
  {
    [(DataStreamHAPTransport *)self _notifyDelegateDidClose];
  }
}

- (void)_teardownSessionWithError:(id)a3
{
  v4 = a3;
  if ([(DataStreamHAPTransport *)self _isRunning])
  {
    v13 = 0;
    v5 = [(DataStreamHAPTransport *)self _buildWriteRequestWithError:&v13 shouldForceClose:1];
    v6 = v13;
    if (v5)
    {
      objc_initWeak(location, self);
      v14 = v5;
      v7 = [NSArray arrayWithObjects:&v14 count:1];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002ADAC;
      v11[3] = &unk_1002736D0;
      objc_copyWeak(&v12, location);
      [(DataStreamHAPTransport *)self _writeCharacteristicRequests:v7 completion:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_10007FAFC(v8);
        *location = 138543618;
        *&location[4] = v10;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: Closing after session force close failed; error=%@", location, 0x16u);
      }

      [(DataStreamHAPTransport *)v8 _stopWithError:v4];
    }
  }

  else
  {
    [(DataStreamHAPTransport *)self _stopWithError:v4];
  }
}

- (void)_registerForMessages
{
  v3 = [(DataStreamHAPTransport *)self accessory];
  v4 = [v3 server];

  v5 = [(DataStreamHAPTransport *)self interruptCharacteristic];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002AF50;
  v8[3] = &unk_1002736F8;
  v8[4] = self;
  v7 = [(DataStreamHAPTransport *)self workQueue];
  [v4 enableEvents:1 forCharacteristics:v6 withCompletionHandler:v8 queue:v7];
}

- (void)_notifyDelegateDidOpen
{
  v3 = [(DataStreamHAPTransport *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B178;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyDelegateDidClose
{
  v3 = [(DataStreamHAPTransport *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B254;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyDelegateDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamHAPTransport *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B35C;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_notifyDelegateDidReceiveFrame:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamHAPTransport *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B464;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sendRawFrame:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[DataStreamHAPPendingWrite alloc] initWithData:v7 completion:v6];

  v8 = [(DataStreamHAPTransport *)self pendingWrites];
  [v8 addObject:v9];

  [(DataStreamHAPTransport *)self _doNextWriteOperation];
}

- (id)_getPendingWritesUpToLength:(unint64_t)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(DataStreamHAPTransport *)self pendingWrites];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v18;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) popNextFrameUpToMaxLength:a3];
        if (![v11 length])
        {
          goto LABEL_13;
        }

        if (v7)
        {
          v12 = v7;
LABEL_11:
          [v12 appendData:v11];
          goto LABEL_12;
        }

        if (v8)
        {
          v12 = [NSMutableData dataWithData:v8];
          v7 = v12;
          goto LABEL_11;
        }

        v8 = v11;
        v7 = 0;
LABEL_12:
        a3 -= [v11 length];
        if (!a3)
        {

          goto LABEL_20;
        }

LABEL_13:

        v10 = v10 + 1;
      }

      while (v6 != v10);
      v13 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_20:

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  return v14;
}

- (id)_buildWriteRequestWithError:(id *)a3 shouldForceClose:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [(DataStreamHAPTransport *)self _getPendingWritesUpToLength:[(DataStreamHAPTransport *)self maxControllerTransportMTU]];
  if ([v7 length] || -[DataStreamHAPTransport lastAccessoryRequestToSendFlag](self, "lastAccessoryRequestToSendFlag"))
  {
LABEL_5:
    v8 = [HAPTLVUnsignedNumberValue alloc];
    v9 = [(DataStreamHAPTransport *)self sessionIdentifier];
    v10 = [(HAPTLVNumberValueBase *)v8 initWithValue:v9];

    if (v4)
    {
      v11 = [HAPTLVUnsignedNumberValue alloc];
      v12 = [NSNumber numberWithBool:1];
      v13 = [(HAPTLVNumberValueBase *)v11 initWithValue:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = [[HAPDataStreamHAPControllerPayload alloc] initWithPayload:v7 sessionIdentifier:v10 forceClose:v13];
    v15 = [(HAPDataStreamHAPControllerPayload *)v14 serializeWithError:a3];
    v16 = *a3;
    v17 = self;
    v18 = sub_10007FAA0();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10007FAFC(v17);
        v25 = 138543362;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Error: failed to serialize Controller Payload; should not happen!", &v25, 0xCu);
      }

      v21 = 0;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = sub_10007FAFC(v17);
        v25 = 138543874;
        v26 = v22;
        v27 = 1024;
        v28 = [v7 length];
        v29 = 1024;
        v30 = [(DataStreamHAPTransport *)v17 lastAccessoryRequestToSendFlag];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}@Writing: %u bytes (rts=%d)", &v25, 0x18u);
      }

      v17 = [(DataStreamHAPTransport *)v17 transportCharacteristic];
      v21 = [HAPCharacteristicWriteRequestTuple writeRequestTupleForCharacteristic:v17 value:v15 authorizationData:0 timedWrite:0 responseValue:1 type:0];
    }

    goto LABEL_16;
  }

  v10 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v24 = sub_10007FAFC(v10);
    v25 = 138543362;
    v26 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Writing: nothing to write", &v25, 0xCu);
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)_writeCharacteristicRequests:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DataStreamHAPTransport *)self accessory];
  v8 = [(DataStreamHAPTransport *)self workQueue];
  [v9 writeCharacteristicValues:v7 timeout:v8 completionQueue:v6 completionHandler:0.0];
}

- (void)_doNextWriteOperation
{
  if (![(DataStreamHAPTransport *)self isWriteInProgress])
  {
    v3 = [(DataStreamHAPTransport *)self pendingWrites];
    if ([v3 hmf_isEmpty])
    {
      v4 = [(DataStreamHAPTransport *)self lastAccessoryRequestToSendFlag];

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    if ([(DataStreamHAPTransport *)self _isRunning])
    {
      v5 = [(DataStreamHAPTransport *)self accessory];
      if (v5)
      {
        [(DataStreamHAPTransport *)self setIsWriteInProgress:1];
        v20 = 0;
        v6 = [(DataStreamHAPTransport *)self _buildWriteRequestWithError:&v20 shouldForceClose:0];
        v7 = v20;
        if (v7)
        {
          v8 = self;
          v9 = sub_10007FAA0();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = sub_10007FAFC(v8);
            *buf = 138543362;
            v23 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: building next payload failed and should not do that; closing.", buf, 0xCu);
          }

          [(DataStreamHAPTransport *)v8 _stopTransportForWriteFailureError:v7];
        }

        else if (v6)
        {
          objc_initWeak(buf, self);
          v21 = v6;
          v17 = [NSArray arrayWithObjects:&v21 count:1];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10002BE80;
          v18[3] = &unk_1002736D0;
          objc_copyWeak(&v19, buf);
          [(DataStreamHAPTransport *)self _writeCharacteristicRequests:v17 completion:v18];

          objc_destroyWeak(&v19);
          objc_destroyWeak(buf);
        }

        else
        {
          [(DataStreamHAPTransport *)self _removeAndMarkCompleteAllCompletedWrites];
          [(DataStreamHAPTransport *)self _doNextWriteOperation];
        }
      }

      else
      {
        v14 = self;
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sub_10007FAFC(v14);
          *buf = 138543362;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: HAPAccessory is no longer active; closing.", buf, 0xCu);
        }

        v7 = [NSError dkErrorWithCode:40];
        [(DataStreamHAPTransport *)v14 _stopTransportForWriteFailureError:v7];
      }
    }

    else
    {
      v11 = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10007FAFC(v11);
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: transport already closed.", buf, 0xCu);
      }

      v5 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
      [(DataStreamHAPTransport *)v11 _cancelAllPendingWritesWithError:v5];
    }
  }
}

- (void)_handleCompletionWithResponseTuples:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamHAPTransport *)self isWriteInProgress];
  v6 = self;
  v7 = sub_10007FAA0();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(v6);
      *buf = 138543618;
      v50 = v9;
      v51 = 2112;
      v52 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@[Transport] Handling responses: %@", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = v4;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        v16 = [v15 characteristic];
        v17 = [v16 type];
        v18 = [v17 isEqualToString:@"00000138-0000-1000-8000-4D69736D6574"];

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v20 = v15;

      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = [(DataStreamHAPTransport *)v20 error];

      if (v21)
      {
        v22 = v6;
        v23 = sub_10007FAA0();
        v4 = v42;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sub_10007FAFC(v22);
          v25 = [(DataStreamHAPTransport *)v20 error];
          *buf = 138543618;
          v50 = v24;
          v51 = 2112;
          v52 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write response errored out: %@", buf, 0x16u);
        }

        v26 = [(DataStreamHAPTransport *)v20 error];
        [(DataStreamHAPTransport *)v22 _stopTransportForWriteFailureError:v26];
      }

      else
      {
        v30 = [(DataStreamHAPTransport *)v20 value];
        v43 = 0;
        v31 = [HAPDataStreamHAPAccessoryPayload parsedFromData:v30 error:&v43];
        v32 = v43;

        if (v32 || !v31)
        {
          v36 = v6;
          v37 = sub_10007FAA0();
          v4 = v42;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = sub_10007FAFC(v36);
            *buf = 138543618;
            v50 = v38;
            v51 = 2112;
            v52 = v32;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply could not be parsed (error=%@)", buf, 0x16u);
          }

          v39 = [NSError dkErrorWithCode:36];
          [(DataStreamHAPTransport *)v36 _stopTransportForWriteFailureError:v39];
        }

        else
        {
          v33 = [v31 accessoryRequestToSend];

          v4 = v42;
          if (v33)
          {
            v34 = [v31 accessoryRequestToSend];
            v35 = [v34 value];
            -[DataStreamHAPTransport setLastAccessoryRequestToSendFlag:](v6, "setLastAccessoryRequestToSendFlag:", [v35 BOOLValue]);
          }

          else
          {
            [(DataStreamHAPTransport *)v6 setLastAccessoryRequestToSendFlag:0];
          }

          [(DataStreamHAPTransport *)v6 _removeAndMarkCompleteAllCompletedWrites];
          v40 = [v31 payload];

          if (v40)
          {
            v41 = [v31 payload];
            [(DataStreamHAPTransport *)v6 _handleReceivedData:v41];
          }

          [(DataStreamHAPTransport *)v6 _doNextWriteOperation];
        }
      }

      v6 = v20;
    }

    else
    {
LABEL_12:

LABEL_21:
      v27 = v6;
      v28 = sub_10007FAA0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = sub_10007FAFC(v27);
        *buf = 138543362;
        v50 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write-response contained no response; weird. Erroring out.", buf, 0xCu);
      }

      v6 = [NSError dkErrorWithCode:1];
      [(DataStreamHAPTransport *)v27 _stopTransportForWriteFailureError:v6];
      v4 = v42;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v6);
      *buf = 138543362;
      v50 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write-response returned but nothing in progress; stale reply? Ignoring", buf, 0xCu);
    }
  }
}

- (void)_removeAndMarkCompleteAllCompletedWrites
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(DataStreamHAPTransport *)self pendingWrites];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  while (2)
  {
    v8 = 0;
    v9 = v6;
    v6 += v5;
    do
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v11 + 1) + 8 * v8);
      if (![v10 isComplete])
      {
        v6 = v9;
        goto LABEL_11;
      }

      [(DataStreamHAPTransport *)self _notifyWriteOperation:v10 didCompleteWithError:0];
      ++v9;
      v8 = v8 + 1;
    }

    while (v5 != v8);
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (v6)
  {
    v3 = [(DataStreamHAPTransport *)self pendingWrites];
    [v3 removeObjectsInRange:{0, v6}];
LABEL_13:
  }

  [(DataStreamHAPTransport *)self setIsWriteInProgress:0];
}

- (void)_cancelAllPendingWritesWithError:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(DataStreamHAPTransport *)self pendingWrites];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DataStreamHAPTransport *)self _notifyWriteOperation:*(*(&v11 + 1) + 8 * v9) didCompleteWithError:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(DataStreamHAPTransport *)self pendingWrites];
  [v10 removeAllObjects];
}

- (void)_notifyWriteOperation:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a4;
  v7 = [a3 completion];
  v8 = [(DataStreamHAPTransport *)self workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C7D0;
  v11[3] = &unk_100273720;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

- (void)_handleReceivedData:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = dispatch_data_create([v4 bytes], objc_msgSend(v4, "length"), 0, 0);
  v7 = [(DataStreamHAPTransport *)self byteReader];
  [v7 pushFrameData:v6];

  v8 = [(DataStreamHAPTransport *)self byteReader];
  v9 = [v8 hasFailed];

  if (v9)
  {
    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = sub_10007FAFC(v10);
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@DataStream has encountered irrecoverable framing issue. Closing stream.", &v20, 0xCu);
    }

    v13 = [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
    [(DataStreamHAPTransport *)v10 _teardownSessionWithError:v13];
  }

  else
  {
    v14 = [(DataStreamHAPTransport *)self byteReader];
    v15 = [v14 hasCompleteFrame];

    if (v15)
    {
      do
      {
        v16 = [(DataStreamHAPTransport *)self byteReader];
        v17 = [v16 popRawFrame];

        if (v17)
        {
          [(DataStreamHAPTransport *)self _notifyDelegateDidReceiveFrame:v17];
        }

        v18 = [(DataStreamHAPTransport *)self byteReader];
        v19 = [v18 hasCompleteFrame];
      }

      while ((v19 & 1) != 0);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_handleInterruptCharacteristicValue:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamHAPTransport *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    v10 = self;
    v9 = sub_10007FAA0();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v18 = sub_10007FAFC(v10);
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] Received interrupt value but it was not of the expected type; IGNORING.", buf, 0xCu);
LABEL_18:

    goto LABEL_19;
  }

  v24 = 0;
  v9 = [HAPDataStreamTransportInterruptPayload parsedFromData:v8 error:&v24];
  v10 = v24;
  if (v10 || !v9)
  {
    v18 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(v18);
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] The interrupt value could not be parsed (error=%@)", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v11 = [v9 requestToSendIdentifiers];
  v12 = [v11 bytes];

  v13 = [v9 requestToSendIdentifiers];
  v14 = [v13 length];

  v15 = [(DataStreamHAPTransport *)self sessionIdentifier];
  v16 = [v15 intValue];

  v17 = memchr(v12, v16, v14);
  v18 = self;
  v19 = sub_10007FAA0();
  v20 = v19;
  if (!v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = sub_10007FAFC(v18);
      *buf = 138543618;
      v26 = v23;
      v27 = 1024;
      LODWORD(v28) = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@[Interrupt] The interrupt value does not contain any Request To Send (0x%x)", buf, 0x12u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = sub_10007FAFC(v18);
    *buf = 138543618;
    v26 = v21;
    v27 = 1024;
    LODWORD(v28) = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@[Interrupt] The interrupt value contains valid accessory Request To Send (0x%x)", buf, 0x12u);
  }

  [(DataStreamHAPTransport *)v18 setLastAccessoryRequestToSendFlag:1];
  [(DataStreamHAPTransport *)v18 _doNextWriteOperation];
LABEL_19:
}

- (DataStreamTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (HAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end