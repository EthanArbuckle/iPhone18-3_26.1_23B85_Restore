@interface DataStreamHAPSetupOperation
- (DataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required;
- (void)_readRequiredTransportCharacteristics;
- (void)processTransportSetupResponse:(id)response;
- (void)setMaxControllerTransportMTU:(unint64_t)u;
- (void)startSetup;
@end

@implementation DataStreamHAPSetupOperation

- (DataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required
{
  requiredCopy = required;
  v13.receiver = self;
  v13.super_class = DataStreamHAPSetupOperation;
  v10 = [(DataStreamSetupOperation *)&v13 initWithAccessory:accessory queue:queue logIdentifier:identifier transferManagementService:service];
  v11 = v10;
  if (v10)
  {
    v10->_maxControllerTransportMTU = u;
    if (requiredCopy)
    {
      [(DataStreamHAPSetupOperation *)v10 _readRequiredTransportCharacteristics];
    }
  }

  return v11;
}

- (void)setMaxControllerTransportMTU:(unint64_t)u
{
  if (!self->_maxControllerTransportMTU)
  {
    self->_maxControllerTransportMTU = u;
  }
}

- (void)_readRequiredTransportCharacteristics
{
  transferManagementService = [(DataStreamSetupOperation *)self transferManagementService];
  v4 = [transferManagementService characteristicsOfType:@"00000130-0000-1000-8000-4D69736D6574"];
  v5 = [v4 objectAtIndexedSubscript:0];

  if (v5)
  {
    v20 = v5;
    v6 = [NSArray arrayWithObjects:&v20 count:1];
    objc_initWeak(location, self);
    accessory = [(DataStreamSetupOperation *)self accessory];
    queue = [(DataStreamSetupOperation *)self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002EDC0;
    v17[3] = &unk_1002736D0;
    objc_copyWeak(&v18, location);
    [accessory readCharacteristicValues:v6 timeout:queue completionQueue:v17 completionHandler:0.0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    selfCopy = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(selfCopy);
      accessory2 = [(DataStreamSetupOperation *)selfCopy accessory];
      name = [accessory2 name];
      accessory3 = [(DataStreamSetupOperation *)selfCopy accessory];
      identifier = [accessory3 identifier];
      *location = 138543874;
      *&location[4] = v11;
      v22 = 2112;
      v23 = name;
      v24 = 2112;
      v25 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@HDS characteristic(s) not found configuration/version (%@/%@)", location, 0x20u);
    }

    queue2 = [(DataStreamSetupOperation *)selfCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002ED20;
    block[3] = &unk_100273348;
    block[4] = selfCopy;
    dispatch_async(queue2, block);
  }
}

- (void)startSetup
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Creating new DataStream using HAP", buf, 0xCu);
  }

  v5 = [[HAPDataStreamTransportCommandWrapper alloc] initWithValue:0];
  v6 = [[HAPDataStreamTransportProtocolWrapper alloc] initWithValue:1];
  v7 = [[HAPDataStreamTransportSetup alloc] initWithCommand:v5 transportType:v6 controllerKeySalt:0];

  v22 = 0;
  v8 = [(HAPDataStreamTransportSetup *)v7 serializeWithError:&v22];
  v9 = v22;
  if (v8)
  {
    transferManagementService = [(DataStreamSetupOperation *)selfCopy transferManagementService];
    v11 = [transferManagementService characteristicsOfType:@"00000131-0000-1000-8000-4D69736D6574"];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [HAPCharacteristicWriteRequestTuple writeRequestTupleForCharacteristic:v12 value:v8 authorizationData:0 timedWrite:0 responseValue:1 type:0];
    objc_initWeak(buf, selfCopy);
    accessory = [(DataStreamSetupOperation *)selfCopy accessory];
    v23 = v13;
    v15 = [NSArray arrayWithObjects:&v23 count:1];
    queue = [(DataStreamSetupOperation *)selfCopy queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002F1D8;
    v20[3] = &unk_1002736D0;
    objc_copyWeak(&v21, buf);
    [accessory writeCharacteristicValues:v15 timeout:queue completionQueue:v20 completionHandler:0.0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = selfCopy;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; cannot serialize request (%@)", buf, 0x16u);
    }

    [(DataStreamSetupOperation *)v17 postDidFailWithError:v9];
  }
}

- (void)processTransportSetupResponse:(id)response
{
  responseCopy = response;
  parameters = [responseCopy parameters];
  sessionIdentifier = [parameters sessionIdentifier];

  selfCopy = self;
  v8 = sub_10007FAA0();
  v9 = v8;
  if (sessionIdentifier)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_10007FAFC(selfCopy);
      parameters2 = [responseCopy parameters];
      sessionIdentifier2 = [parameters2 sessionIdentifier];
      v27 = 138543618;
      v28 = v10;
      v29 = 2112;
      v30 = sessionIdentifier2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] The setup transfer succeeded; will use session identifier %@", &v27, 0x16u);
    }

    parameters3 = [responseCopy parameters];
    sessionIdentifier3 = [parameters3 sessionIdentifier];
    value = [sessionIdentifier3 value];
    -[DataStreamHAPSetupOperation setSessionIdentifier:](selfCopy, "setSessionIdentifier:", [value integerValue]);

    v16 = selfCopy;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(v16);
      v27 = 138543362;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] DataStream configuration valid; starting stream", &v27, 0xCu);
    }

    v19 = [DataStreamHAPTransport alloc];
    accessory = [(DataStreamSetupOperation *)v16 accessory];
    sessionIdentifier4 = [(DataStreamHAPSetupOperation *)v16 sessionIdentifier];
    maxControllerTransportMTU = [(DataStreamHAPSetupOperation *)v16 maxControllerTransportMTU];
    queue = [(DataStreamSetupOperation *)v16 queue];
    logIdentifier = [(DataStreamSetupOperation *)v16 logIdentifier];
    v25 = [(DataStreamHAPTransport *)v19 initWithAccessory:accessory sessionIdentifier:sessionIdentifier4 maxControllerTransportMTU:maxControllerTransportMTU workQueue:queue logIdentifier:logIdentifier];

    [(DataStreamSetupOperation *)v16 postDidSucceedWithTransport:v25 sessionEncryption:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_10007FAFC(selfCopy);
      v27 = 138543362;
      v28 = v26;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply did not contain a session identifier", &v27, 0xCu);
    }

    v25 = [NSError dkErrorWithCode:36];
    [(DataStreamSetupOperation *)selfCopy postDidFailWithError:v25];
  }
}

@end