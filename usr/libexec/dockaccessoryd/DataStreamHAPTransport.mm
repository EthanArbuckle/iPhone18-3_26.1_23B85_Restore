@interface DataStreamHAPTransport
- (BOOL)_isRunning;
- (DataStreamHAPTransport)initWithAccessory:(id)accessory sessionIdentifier:(int64_t)identifier maxControllerTransportMTU:(unint64_t)u workQueue:(id)queue logIdentifier:(id)logIdentifier;
- (DataStreamTransportDelegate)delegate;
- (HAPAccessory)accessory;
- (id)_buildWriteRequestWithError:(id *)error shouldForceClose:(BOOL)close;
- (id)_getPendingWritesUpToLength:(unint64_t)length;
- (void)_cancelAllPendingWritesWithError:(id)error;
- (void)_doNextWriteOperation;
- (void)_handleCompletionWithResponseTuples:(id)tuples;
- (void)_handleInterruptCharacteristicValue:(id)value;
- (void)_handleReceivedData:(id)data;
- (void)_notifyDelegateDidClose;
- (void)_notifyDelegateDidFailWithError:(id)error;
- (void)_notifyDelegateDidOpen;
- (void)_notifyDelegateDidReceiveFrame:(id)frame;
- (void)_notifyWriteOperation:(id)operation didCompleteWithError:(id)error;
- (void)_registerForMessages;
- (void)_removeAndMarkCompleteAllCompletedWrites;
- (void)_stopWithError:(id)error;
- (void)_teardownSessionWithError:(id)error;
- (void)_writeCharacteristicRequests:(id)requests completion:(id)completion;
- (void)close;
- (void)connect;
- (void)dealloc;
- (void)sendRawFrame:(id)frame completion:(id)completion;
@end

@implementation DataStreamHAPTransport

- (DataStreamHAPTransport)initWithAccessory:(id)accessory sessionIdentifier:(int64_t)identifier maxControllerTransportMTU:(unint64_t)u workQueue:(id)queue logIdentifier:(id)logIdentifier
{
  accessoryCopy = accessory;
  queueCopy = queue;
  logIdentifierCopy = logIdentifier;
  v26.receiver = self;
  v26.super_class = DataStreamHAPTransport;
  v15 = [(DataStreamHAPTransport *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeWeak(&v16->_accessory, accessoryCopy);
    v17 = [NSNumber numberWithInteger:identifier];
    sessionIdentifier = v16->_sessionIdentifier;
    v16->_sessionIdentifier = v17;

    v16->_maxControllerTransportMTU = u;
    v19 = objc_opt_new();
    byteReader = v16->_byteReader;
    v16->_byteReader = v19;

    v21 = [logIdentifierCopy copy];
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
  transportCharacteristic = [(DataStreamHAPTransport *)self transportCharacteristic];
  v3 = transportCharacteristic != 0;

  return v3;
}

- (void)connect
{
  if ([(DataStreamHAPTransport *)self _isRunning])
  {
    selfCopy = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(selfCopy);
      v19 = 138543362;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Connect called on an already-running transport", &v19, 0xCu);
LABEL_19:
    }
  }

  else
  {
    accessory = [(DataStreamHAPTransport *)self accessory];
    selfCopy = accessory;
    if (accessory)
    {
      v4 = [(DataStreamHAPTransport *)accessory characteristicOfType:@"00000138-0000-1000-8000-4D69736D6574" serviceType:@"00000129-0000-1000-8000-4D69736D6574"];
      if (v4)
      {
        v5 = [(DataStreamHAPTransport *)selfCopy characteristicOfType:@"00000139-0000-1000-8000-4D69736D6574" serviceType:@"00000129-0000-1000-8000-4D69736D6574"];
        selfCopy2 = self;
        v8 = sub_10007FAA0();
        v9 = v8;
        if (v5)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v10 = sub_10007FAFC(selfCopy2);
            v19 = 138543362;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@[Connect] All good; connected!", &v19, 0xCu);
          }

          [(DataStreamHAPTransport *)selfCopy2 setTransportCharacteristic:v4];
          [(DataStreamHAPTransport *)selfCopy2 setInterruptCharacteristic:v5];
          [(DataStreamHAPTransport *)selfCopy2 _registerForMessages];
          [(DataStreamHAPTransport *)selfCopy2 _notifyDelegateDidOpen];
        }

        else
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_10007FAFC(selfCopy2);
            v19 = 138543362;
            v20 = v17;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Interrupt Characteristic does not exist)", &v19, 0xCu);
          }

          v18 = [NSError dkErrorWithCode:4];
          [(DataStreamHAPTransport *)selfCopy2 _teardownSessionWithError:v18];
        }
      }

      else
      {
        selfCopy3 = self;
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sub_10007FAFC(selfCopy3);
          v19 = 138543362;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Transport Characteristic does not exist)", &v19, 0xCu);
        }

        v5 = [NSError dkErrorWithCode:4];
        [(DataStreamHAPTransport *)selfCopy3 _teardownSessionWithError:v5];
      }

      goto LABEL_19;
    }

    selfCopy4 = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(selfCopy4);
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Connect called but accessory is no longer valid", &v19, 0xCu);
    }

    v4 = [NSError errorWithDomain:@"DKErrorDomain" code:38 userInfo:0];
    [(DataStreamHAPTransport *)selfCopy4 _teardownSessionWithError:v4];
  }
}

- (void)close
{
  _isRunning = [(DataStreamHAPTransport *)self _isRunning];
  selfCopy = self;
  v5 = sub_10007FAA0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (_isRunning)
  {
    if (v6)
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream transport closing.", &v9, 0xCu);
    }

    [(DataStreamHAPTransport *)selfCopy _teardownSessionWithError:0];
  }

  else
  {
    if (v6)
    {
      v8 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket invoked closed but nothing to clean up.", &v9, 0xCu);
    }
  }
}

- (void)_stopWithError:(id)error
{
  errorCopy = error;
  if ([(DataStreamHAPTransport *)self _isRunning])
  {
    [(DataStreamHAPTransport *)self _deregisterForMessages];
  }

  [(DataStreamHAPTransport *)self setTransportCharacteristic:0];
  [(DataStreamHAPTransport *)self setInterruptCharacteristic:0];
  v5 = errorCopy;
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

- (void)_teardownSessionWithError:(id)error
{
  errorCopy = error;
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
      selfCopy = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_10007FAFC(selfCopy);
        *location = 138543618;
        *&location[4] = v10;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: Closing after session force close failed; error=%@", location, 0x16u);
      }

      [(DataStreamHAPTransport *)selfCopy _stopWithError:errorCopy];
    }
  }

  else
  {
    [(DataStreamHAPTransport *)self _stopWithError:errorCopy];
  }
}

- (void)_registerForMessages
{
  accessory = [(DataStreamHAPTransport *)self accessory];
  server = [accessory server];

  interruptCharacteristic = [(DataStreamHAPTransport *)self interruptCharacteristic];
  v9 = interruptCharacteristic;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002AF50;
  v8[3] = &unk_1002736F8;
  v8[4] = self;
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  [server enableEvents:1 forCharacteristics:v6 withCompletionHandler:v8 queue:workQueue];
}

- (void)_notifyDelegateDidOpen
{
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B178;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_notifyDelegateDidClose
{
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B254;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_notifyDelegateDidFailWithError:(id)error
{
  errorCopy = error;
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B35C;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(workQueue, v7);
}

- (void)_notifyDelegateDidReceiveFrame:(id)frame
{
  frameCopy = frame;
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B464;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = frameCopy;
  v6 = frameCopy;
  dispatch_async(workQueue, v7);
}

- (void)sendRawFrame:(id)frame completion:(id)completion
{
  completionCopy = completion;
  frameCopy = frame;
  v9 = [[DataStreamHAPPendingWrite alloc] initWithData:frameCopy completion:completionCopy];

  pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
  [pendingWrites addObject:v9];

  [(DataStreamHAPTransport *)self _doNextWriteOperation];
}

- (id)_getPendingWritesUpToLength:(unint64_t)length
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
  v5 = [pendingWrites countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(pendingWrites);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) popNextFrameUpToMaxLength:length];
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
        length -= [v11 length];
        if (!length)
        {

          goto LABEL_20;
        }

LABEL_13:

        v10 = v10 + 1;
      }

      while (v6 != v10);
      v13 = [pendingWrites countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)_buildWriteRequestWithError:(id *)error shouldForceClose:(BOOL)close
{
  closeCopy = close;
  if (close)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [(DataStreamHAPTransport *)self _getPendingWritesUpToLength:[(DataStreamHAPTransport *)self maxControllerTransportMTU]];
  if ([v7 length] || -[DataStreamHAPTransport lastAccessoryRequestToSendFlag](self, "lastAccessoryRequestToSendFlag"))
  {
LABEL_5:
    v8 = [HAPTLVUnsignedNumberValue alloc];
    sessionIdentifier = [(DataStreamHAPTransport *)self sessionIdentifier];
    selfCopy2 = [(HAPTLVNumberValueBase *)v8 initWithValue:sessionIdentifier];

    if (closeCopy)
    {
      v11 = [HAPTLVUnsignedNumberValue alloc];
      v12 = [NSNumber numberWithBool:1];
      v13 = [(HAPTLVNumberValueBase *)v11 initWithValue:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = [[HAPDataStreamHAPControllerPayload alloc] initWithPayload:v7 sessionIdentifier:selfCopy2 forceClose:v13];
    v15 = [(HAPDataStreamHAPControllerPayload *)v14 serializeWithError:error];
    v16 = *error;
    selfCopy = self;
    v18 = sub_10007FAA0();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10007FAFC(selfCopy);
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
        v22 = sub_10007FAFC(selfCopy);
        v25 = 138543874;
        v26 = v22;
        v27 = 1024;
        v28 = [v7 length];
        v29 = 1024;
        lastAccessoryRequestToSendFlag = [(DataStreamHAPTransport *)selfCopy lastAccessoryRequestToSendFlag];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}@Writing: %u bytes (rts=%d)", &v25, 0x18u);
      }

      selfCopy = [(DataStreamHAPTransport *)selfCopy transportCharacteristic];
      v21 = [HAPCharacteristicWriteRequestTuple writeRequestTupleForCharacteristic:selfCopy value:v15 authorizationData:0 timedWrite:0 responseValue:1 type:0];
    }

    goto LABEL_16;
  }

  selfCopy2 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v24 = sub_10007FAFC(selfCopy2);
    v25 = 138543362;
    v26 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Writing: nothing to write", &v25, 0xCu);
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)_writeCharacteristicRequests:(id)requests completion:(id)completion
{
  completionCopy = completion;
  requestsCopy = requests;
  accessory = [(DataStreamHAPTransport *)self accessory];
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  [accessory writeCharacteristicValues:requestsCopy timeout:workQueue completionQueue:completionCopy completionHandler:0.0];
}

- (void)_doNextWriteOperation
{
  if (![(DataStreamHAPTransport *)self isWriteInProgress])
  {
    pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
    if ([pendingWrites hmf_isEmpty])
    {
      lastAccessoryRequestToSendFlag = [(DataStreamHAPTransport *)self lastAccessoryRequestToSendFlag];

      if ((lastAccessoryRequestToSendFlag & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    if ([(DataStreamHAPTransport *)self _isRunning])
    {
      accessory = [(DataStreamHAPTransport *)self accessory];
      if (accessory)
      {
        [(DataStreamHAPTransport *)self setIsWriteInProgress:1];
        v20 = 0;
        v6 = [(DataStreamHAPTransport *)self _buildWriteRequestWithError:&v20 shouldForceClose:0];
        v7 = v20;
        if (v7)
        {
          selfCopy = self;
          v9 = sub_10007FAA0();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = sub_10007FAFC(selfCopy);
            *buf = 138543362;
            v23 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: building next payload failed and should not do that; closing.", buf, 0xCu);
          }

          [(DataStreamHAPTransport *)selfCopy _stopTransportForWriteFailureError:v7];
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
        selfCopy2 = self;
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sub_10007FAFC(selfCopy2);
          *buf = 138543362;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: HAPAccessory is no longer active; closing.", buf, 0xCu);
        }

        v7 = [NSError dkErrorWithCode:40];
        [(DataStreamHAPTransport *)selfCopy2 _stopTransportForWriteFailureError:v7];
      }
    }

    else
    {
      selfCopy3 = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10007FAFC(selfCopy3);
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: transport already closed.", buf, 0xCu);
      }

      accessory = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
      [(DataStreamHAPTransport *)selfCopy3 _cancelAllPendingWritesWithError:accessory];
    }
  }
}

- (void)_handleCompletionWithResponseTuples:(id)tuples
{
  tuplesCopy = tuples;
  isWriteInProgress = [(DataStreamHAPTransport *)self isWriteInProgress];
  selfCopy = self;
  v7 = sub_10007FAA0();
  v8 = v7;
  if (isWriteInProgress)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v50 = v9;
      v51 = 2112;
      v52 = tuplesCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@[Transport] Handling responses: %@", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = tuplesCopy;
    v10 = tuplesCopy;
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
        characteristic = [v15 characteristic];
        type = [characteristic type];
        v18 = [type isEqualToString:@"00000138-0000-1000-8000-4D69736D6574"];

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

      error = [(DataStreamHAPTransport *)v20 error];

      if (error)
      {
        v22 = selfCopy;
        v23 = sub_10007FAA0();
        tuplesCopy = v42;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sub_10007FAFC(v22);
          error2 = [(DataStreamHAPTransport *)v20 error];
          *buf = 138543618;
          v50 = v24;
          v51 = 2112;
          v52 = error2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write response errored out: %@", buf, 0x16u);
        }

        error3 = [(DataStreamHAPTransport *)v20 error];
        [(DataStreamHAPTransport *)v22 _stopTransportForWriteFailureError:error3];
      }

      else
      {
        value = [(DataStreamHAPTransport *)v20 value];
        v43 = 0;
        v31 = [HAPDataStreamHAPAccessoryPayload parsedFromData:value error:&v43];
        v32 = v43;

        if (v32 || !v31)
        {
          v36 = selfCopy;
          v37 = sub_10007FAA0();
          tuplesCopy = v42;
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
          accessoryRequestToSend = [v31 accessoryRequestToSend];

          tuplesCopy = v42;
          if (accessoryRequestToSend)
          {
            accessoryRequestToSend2 = [v31 accessoryRequestToSend];
            value2 = [accessoryRequestToSend2 value];
            -[DataStreamHAPTransport setLastAccessoryRequestToSendFlag:](selfCopy, "setLastAccessoryRequestToSendFlag:", [value2 BOOLValue]);
          }

          else
          {
            [(DataStreamHAPTransport *)selfCopy setLastAccessoryRequestToSendFlag:0];
          }

          [(DataStreamHAPTransport *)selfCopy _removeAndMarkCompleteAllCompletedWrites];
          payload = [v31 payload];

          if (payload)
          {
            payload2 = [v31 payload];
            [(DataStreamHAPTransport *)selfCopy _handleReceivedData:payload2];
          }

          [(DataStreamHAPTransport *)selfCopy _doNextWriteOperation];
        }
      }

      selfCopy = v20;
    }

    else
    {
LABEL_12:

LABEL_21:
      v27 = selfCopy;
      v28 = sub_10007FAA0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = sub_10007FAFC(v27);
        *buf = 138543362;
        v50 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write-response contained no response; weird. Erroring out.", buf, 0xCu);
      }

      selfCopy = [NSError dkErrorWithCode:1];
      [(DataStreamHAPTransport *)v27 _stopTransportForWriteFailureError:selfCopy];
      tuplesCopy = v42;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy);
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
  pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
  v4 = [pendingWrites countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(pendingWrites);
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
    v5 = [pendingWrites countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (v6)
  {
    pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
    [pendingWrites removeObjectsInRange:{0, v6}];
LABEL_13:
  }

  [(DataStreamHAPTransport *)self setIsWriteInProgress:0];
}

- (void)_cancelAllPendingWritesWithError:(id)error
{
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pendingWrites = [(DataStreamHAPTransport *)self pendingWrites];
  v6 = [pendingWrites countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pendingWrites);
        }

        [(DataStreamHAPTransport *)self _notifyWriteOperation:*(*(&v11 + 1) + 8 * v9) didCompleteWithError:errorCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [pendingWrites countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  pendingWrites2 = [(DataStreamHAPTransport *)self pendingWrites];
  [pendingWrites2 removeAllObjects];
}

- (void)_notifyWriteOperation:(id)operation didCompleteWithError:(id)error
{
  errorCopy = error;
  completion = [operation completion];
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C7D0;
  v11[3] = &unk_100273720;
  v12 = errorCopy;
  v13 = completion;
  v9 = errorCopy;
  v10 = completion;
  dispatch_async(workQueue, v11);
}

- (void)_handleReceivedData:(id)data
{
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  v6 = dispatch_data_create([dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0);
  byteReader = [(DataStreamHAPTransport *)self byteReader];
  [byteReader pushFrameData:v6];

  byteReader2 = [(DataStreamHAPTransport *)self byteReader];
  hasFailed = [byteReader2 hasFailed];

  if (hasFailed)
  {
    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = sub_10007FAFC(selfCopy);
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@DataStream has encountered irrecoverable framing issue. Closing stream.", &v20, 0xCu);
    }

    v13 = [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
    [(DataStreamHAPTransport *)selfCopy _teardownSessionWithError:v13];
  }

  else
  {
    byteReader3 = [(DataStreamHAPTransport *)self byteReader];
    hasCompleteFrame = [byteReader3 hasCompleteFrame];

    if (hasCompleteFrame)
    {
      do
      {
        byteReader4 = [(DataStreamHAPTransport *)self byteReader];
        popRawFrame = [byteReader4 popRawFrame];

        if (popRawFrame)
        {
          [(DataStreamHAPTransport *)self _notifyDelegateDidReceiveFrame:popRawFrame];
        }

        byteReader5 = [(DataStreamHAPTransport *)self byteReader];
        hasCompleteFrame2 = [byteReader5 hasCompleteFrame];
      }

      while ((hasCompleteFrame2 & 1) != 0);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_handleInterruptCharacteristicValue:(id)value
{
  valueCopy = value;
  workQueue = [(DataStreamHAPTransport *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = valueCopy;
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
    selfCopy = self;
    v9 = sub_10007FAA0();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    selfCopy3 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v26 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] Received interrupt value but it was not of the expected type; IGNORING.", buf, 0xCu);
LABEL_18:

    goto LABEL_19;
  }

  v24 = 0;
  v9 = [HAPDataStreamTransportInterruptPayload parsedFromData:v8 error:&v24];
  selfCopy = v24;
  if (selfCopy || !v9)
  {
    selfCopy3 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(selfCopy3);
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = selfCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] The interrupt value could not be parsed (error=%@)", buf, 0x16u);
    }

    goto LABEL_17;
  }

  requestToSendIdentifiers = [v9 requestToSendIdentifiers];
  bytes = [requestToSendIdentifiers bytes];

  requestToSendIdentifiers2 = [v9 requestToSendIdentifiers];
  v14 = [requestToSendIdentifiers2 length];

  sessionIdentifier = [(DataStreamHAPTransport *)self sessionIdentifier];
  intValue = [sessionIdentifier intValue];

  v17 = memchr(bytes, intValue, v14);
  selfCopy3 = self;
  v19 = sub_10007FAA0();
  v20 = v19;
  if (!v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = sub_10007FAFC(selfCopy3);
      *buf = 138543618;
      v26 = v23;
      v27 = 1024;
      LODWORD(v28) = intValue;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@[Interrupt] The interrupt value does not contain any Request To Send (0x%x)", buf, 0x12u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = sub_10007FAFC(selfCopy3);
    *buf = 138543618;
    v26 = v21;
    v27 = 1024;
    LODWORD(v28) = intValue;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@[Interrupt] The interrupt value contains valid accessory Request To Send (0x%x)", buf, 0x12u);
  }

  [(DataStreamHAPTransport *)selfCopy3 setLastAccessoryRequestToSendFlag:1];
  [(DataStreamHAPTransport *)selfCopy3 _doNextWriteOperation];
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