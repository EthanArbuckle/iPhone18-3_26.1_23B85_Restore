@interface ASCSInterface
- (ASCSInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (AcceptorInterface)acceptor;
- (BOOL)allASEInSameState:(unsigned __int8)a3 forSinkASE:(id)a4 forSourceASE:(id)a5;
- (id)aseReasonCodeToString:(unsigned __int8)a3;
- (id)aseResponseCodeToString:(unsigned __int8)a3;
- (id)audioContextToString:(unsigned __int16)a3;
- (id)getAudioStreamEndpoints;
- (id)getConfiguredASEInfo;
- (id)sampleFreqString:(unsigned int)a3;
- (unsigned)determineChannelCountForASE:(unsigned int)a3;
- (unsigned)getLowestBitSet:(unsigned int)a3;
- (unsigned)sendConfigQoSRequestForDirection:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5;
- (unsigned)sendDisableRequestForASE:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5;
- (unsigned)sendEnableRequestForDirection:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5;
- (unsigned)sendReceiverStartReadyRequestOptionalASE:(id *)a3 withLTVData:(id *)a4 withEnabledSinkASE:(char *)a5;
- (unsigned)sendReceiverStopReadyRequestOptionalASE:(id *)a3 withLTVData:(id *)a4;
- (unsigned)sendReleaseRequestForASE:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5;
- (unsigned)sendUpdateMetadataRequestForDirection:(BOOL)a3 OptionalASE:(id)a4 withMetadata:(id)a5 withLTVData:(id *)a6;
- (void)handleASEUpdate:(id)a3 withType:(BOOL)a4;
- (void)handleCodecConfiguredForAse:(id)a3 dataStream:(id)a4;
- (void)handleControlPointUpdate;
- (void)handleDisablingStateForASE:(id)a3;
- (void)handleEnablingResponseForAse:(id)a3 dataStream:(id)a4;
- (void)handleIdleStateForASE:(id)a3;
- (void)handleQoSConfiguredForAse:(id)a3 dataStream:(id)a4;
- (void)handleReleasingStateForASE:(id)a3;
- (void)handleStreamingStateForASE:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readSinkASE:(unsigned __int8)a3;
- (void)readSourceASE:(unsigned __int8)a3;
- (void)registerASEUpdateHandler:(id)a3;
- (void)registerControlPointHandler:(id)a3;
- (void)requestRemoveDataPathForASE:(id)a3;
- (void)sendControlPointOperation:(id)a3;
- (void)start;
- (void)stop;
- (void)writeASEControlPoint;
@end

@implementation ASCSInterface

- (ASCSInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v21.receiver = self;
  v21.super_class = ASCSInterface;
  v4 = [(ServiceInterface *)&v21 initWithPeripheral:a3 service:a4];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    v6 = objc_alloc_init(NSMutableDictionary);
    sinkASEMap = v5->_sinkASEMap;
    v5->_sinkASEMap = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    sourceASEMap = v5->_sourceASEMap;
    v5->_sourceASEMap = v8;

    v10 = objc_alloc_init(NSMutableArray);
    sinkASECharacteristic = v5->_sinkASECharacteristic;
    v5->_sinkASECharacteristic = v10;

    v12 = objc_alloc_init(NSMutableArray);
    sourceASECharacteristic = v5->_sourceASECharacteristic;
    v5->_sourceASECharacteristic = v12;

    v14 = objc_alloc_init(NSMutableSet);
    pendingSinkASEList = v5->_pendingSinkASEList;
    v5->_pendingSinkASEList = v14;

    v16 = objc_alloc_init(NSMutableSet);
    pendingSourceASEList = v5->_pendingSourceASEList;
    v5->_pendingSourceASEList = v16;

    controlPointHandler = v5->_controlPointHandler;
    v5->_controlPointHandler = 0;

    aseUpdateHandler = v5->_aseUpdateHandler;
    v5->_aseUpdateHandler = 0;
  }

  return v5;
}

- (void)registerControlPointHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  controlPointHandler = self->_controlPointHandler;
  self->_controlPointHandler = v4;

  _objc_release_x1();
}

- (void)registerASEUpdateHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  aseUpdateHandler = self->_aseUpdateHandler;
  self->_aseUpdateHandler = v4;

  _objc_release_x1();
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = ASCSInterface;
  [(ServiceInterface *)&v9 start];
  v3 = [CBUUID UUIDWithString:CBUUIDSinkASECharacteristicString];
  v10[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDSourceASECharacteristicString];
  v10[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDASEControlPointCharacteristicString];
  v10[2] = v5;
  v6 = [NSArray arrayWithObjects:v10 count:3];

  v7 = [(ServiceInterface *)self peripheral];
  v8 = [(ServiceInterface *)self service];
  [v7 discoverCharacteristics:v6 forService:v8];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = ASCSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)sendControlPointOperation:(id)a3
{
  v4 = a3;
  v6 = [(ServiceInterface *)self peripheral];
  v5 = [(ASCSInterface *)self ASEControlPointCharacteristic];
  [v6 writeValue:v4 forCharacteristic:v5 type:1];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  if (!a5)
  {
    v32 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [a4 characteristics];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v36;
    v12 = CBUUIDSinkASECharacteristicString;
    v33 = CBUUIDSourceASECharacteristicString;
    v31 = CBUUIDASEControlPointCharacteristicString;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [v14 UUID];
        v16 = [CBUUID UUIDWithString:v12];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v18 = [(ASCSInterface *)self sinkASECharacteristic];
          v19 = [v18 count];

          if (v19 > 3)
          {
            continue;
          }

          v20 = [(ASCSInterface *)self sinkASECharacteristic];
LABEL_13:
          v26 = v20;
          [v20 addObject:v14];

          if (([v14 properties] & 0x10) != 0)
          {
            [v32 setNotifyValue:1 forCharacteristic:v14];
          }

          [v32 readValueForCharacteristic:v14];
          continue;
        }

        v21 = [v14 UUID];
        v22 = [CBUUID UUIDWithString:v33];
        v23 = [v21 isEqual:v22];

        if (v23)
        {
          v24 = [(ASCSInterface *)self sourceASECharacteristic];
          v25 = [v24 count];

          if (v25 > 3)
          {
            continue;
          }

          v20 = [(ASCSInterface *)self sourceASECharacteristic];
          goto LABEL_13;
        }

        v27 = [(ASCSInterface *)self ASEControlPointCharacteristic];
        if (v27)
        {
        }

        else
        {
          v28 = [v14 UUID];
          v29 = [CBUUID UUIDWithString:v31];
          v30 = [v28 isEqual:v29];

          if (v30)
          {
            [(ASCSInterface *)self setASEControlPointCharacteristic:v14];
            if (([v14 properties] & 0x10) != 0)
            {
              [v32 setNotifyValue:1 forCharacteristic:v14];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v10)
      {
LABEL_23:

        [(ServiceInterface *)self notifyDidStart];
        v8 = v32;
        break;
      }
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A38C(v11);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(ASCSInterface *)self sinkASECharacteristic];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (*(*(&v27 + 1) + 8 * i) == v9)
        {
          v22 = self;
LABEL_23:
          [ASCSInterface handleASEUpdate:v22 withType:"handleASEUpdate:withType:"];

          goto LABEL_24;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(ASCSInterface *)self sourceASECharacteristic];
  v17 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    while (2)
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v12);
        }

        if (*(*(&v23 + 1) + 8 * j) == v9)
        {
          v22 = self;
          goto LABEL_23;
        }
      }

      v18 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = [(ASCSInterface *)self ASEControlPointCharacteristic];

  if (v21 == v9)
  {
    [(ASCSInterface *)self handleControlPointUpdate];
  }

LABEL_24:
}

- (id)getAudioStreamEndpoints
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ASCSInterface *)self sinkASEMap];
  v5 = [v4 allValues];
  [v3 addObjectsFromArray:v5];

  v6 = [(ASCSInterface *)self sourceASEMap];
  v7 = [v6 allValues];
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (id)getConfiguredASEInfo
{
  v23 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_alloc_init(NSMutableDictionary);
  v24 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(ASCSInterface *)self sinkASEMap];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [(ASCSInterface *)self sinkASEMap];
        v11 = [v10 objectForKey:v9];

        if ([v11 state])
        {
          v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v11 state]);
          [v3 setObject:v12 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(ASCSInterface *)self sourceASEMap];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        v19 = [(ASCSInterface *)self sourceASEMap];
        v20 = [v19 objectForKey:v18];

        if ([v20 state])
        {
          v21 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v20 state]);
          [v24 setObject:v21 forKey:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  [v23 setObject:v3 forKey:@"ConfiguredSinkASE"];
  [v23 setObject:v24 forKey:@"ConfiguredSourceASE"];

  return v23;
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [a4 description];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didWriteValueForCharacteristic: %@", &v9, 0xCu);
  }
}

- (unsigned)sendConfigQoSRequestForDirection:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5
{
  v7 = a3;
  if (a3)
  {
    v9 = [(ASCSInterface *)self sinkASEMap];
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    v9 = [(ASCSInterface *)self sourceASEMap];
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v46 = ;
  if ([*a4 count])
  {
    v10 = *a4;
  }

  else
  {
    v11 = [v9 allKeys];
    v10 = [v11 mutableCopy];
  }

  v44 = *a5;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (!v12)
  {
    v47 = 0;
    v17 = obj;
    goto LABEL_43;
  }

  v14 = v12;
  v47 = 0;
  v15 = *v58;
  v16 = @"Sink";
  if (!v7)
  {
    v16 = @"Source";
  }

  v43 = v16;
  *&v13 = 67109376;
  v42 = v13;
  v17 = obj;
  do
  {
    v18 = 0;
    do
    {
      if (*v58 != v15)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v57 + 1) + 8 * v18);
      v20 = [DataOutputStream outputStreamWithByteOrder:1, v42];
      v21 = [v9 objectForKeyedSubscript:v19];
      v22 = v21;
      if (v21 && [v21 state])
      {
        if ([v22 state] != 1 && objc_msgSend(v22, "state") != 2)
        {
          v34 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          *buf = 138412290;
          *v62 = v19;
          v32 = v34;
          v33 = "ASE ID %@ is not in right state";
          goto LABEL_39;
        }

        if ([v22 cigID] == 255 || objc_msgSend(v22, "cisID") == 255)
        {
          v31 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
LABEL_31:
            [v22 description];
            goto LABEL_34;
          }

          *buf = 138412290;
          *v62 = v19;
          v32 = v31;
          v33 = "ASE ID %@ invalid CIG/CIS ID";
LABEL_39:
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
          goto LABEL_31;
        }

        [v46 addObject:v19];
        v23 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v62 = v19;
          *&v62[8] = 2112;
          v63 = v43;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ASE ID %@ added to %@ pending list", buf, 0x16u);
        }

        v56 = [v19 intValue];
        [v20 writeBytes:&v56 length:1];
        v55 = [v22 cigID];
        [v20 writeBytes:&v55 length:1];
        v54 = [v22 cisID];
        [v20 writeBytes:&v54 length:1];
        v53 = [v22 clientSduInterval];
        [v20 writeBytes:&v53 length:3];
        if (![v22 clientFraming] && (objc_msgSend(v22, "framing") & 1) != 0)
        {
          v36 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            v38 = [v22 framing];
            v39 = [v22 clientFraming];
            *buf = v42;
            *v62 = v38;
            *&v62[4] = 1024;
            *&v62[6] = v39;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Frame Value Error. Server Frame: 0x%x Frame Value 0x%x", buf, 0xEu);
          }
        }

        else
        {
          v52 = [v22 clientFraming];
          [v20 writeBytes:&v52 length:1];
          v51 = 2;
          [v20 writeBytes:&v51 length:1];
          v50 = [v22 clientMaxSdu];
          [v20 writeBytes:&v50 length:2];
          v49 = [v22 clientRetransmissionNumber];
          [v20 writeBytes:&v49 length:1];
          v48 = [v22 clientMaxTransportLatency];
          [v20 writeBytes:&v48 length:2];
          v24 = [v22 maxSupportedPresentationDelay];
          if (v24 >= [v22 clientPresentationDelay] || (v25 = objc_msgSend(v22, "minSupportedPresentationDelay"), v25 <= objc_msgSend(v22, "clientPresentationDelay")))
          {
            *buf = [v22 clientPresentationDelay];
            [v20 writeBytes:buf length:3];
            v35 = [v20 data];
            [v44 writeData:v35];

            ++v47;
          }

          else
          {
            v26 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              v27 = v26;
              v28 = [v22 maxSupportedPresentationDelay];
              v29 = [v22 minSupportedPresentationDelay];
              v30 = [v22 clientPresentationDelay];
              *buf = 67109632;
              *v62 = v28;
              *&v62[4] = 1024;
              *&v62[6] = v29;
              LOWORD(v63) = 1024;
              *(&v63 + 2) = v30;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Pres Delay Error: Max Pres. Delay: %u Min Pres. Delay: %u                         Client Pres. Delay: %u", buf, 0x14u);
            }
          }

          v17 = obj;
        }
      }

LABEL_34:

      v18 = v18 + 1;
    }

    while (v14 != v18);
    v40 = [v17 countByEnumeratingWithState:&v57 objects:v64 count:16];
    v14 = v40;
  }

  while (v40);
LABEL_43:

  return v47;
}

- (unsigned)sendEnableRequestForDirection:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5
{
  v49 = a3;
  if (a3)
  {
    v55 = [(ASCSInterface *)self sinkASEMap];
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    v55 = [(ASCSInterface *)self sourceASEMap];
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v53 = ;
  if ([*a4 count])
  {
    v8 = *a4;
  }

  else
  {
    v9 = [v55 allKeys];
    v8 = [v9 mutableCopy];
  }

  v10 = *a5;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v62;
    if (v49)
    {
      v16 = @"Sink";
    }

    else
    {
      v16 = @"Source";
    }

    v48 = v16;
    *&v12 = 138412546;
    v47 = v12;
    v17 = v55;
    v56 = v10;
    v52 = *v62;
    do
    {
      v18 = 0;
      v54 = v13;
      do
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * v18);
        v20 = [v17 objectForKeyedSubscript:{v19, v47}];
        v21 = v20;
        if (v20 && [v20 state] == 2)
        {
          v58 = v14;
          [v53 addObject:v19];
          v22 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v47;
            *v66 = v19;
            *&v66[8] = 2112;
            v67 = v48;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ASE ID %@ added to %@ pending list", buf, 0x16u);
          }

          v60 = [v19 intValue];
          [v10 writeBytes:&v60 length:1];
          v59 = 0;
          v23 = [v21 metadata];
          if (v23)
          {
            v24 = [v21 metadata];
            v25 = [v24 contextType];
            v26 = v25;
            v27 = v25 >> 8;
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          v28 = v26 | (v27 << 8);
          if (v28)
          {
            v59 += 4;
          }

          v29 = [v21 metadata];
          if (v29)
          {
            v30 = v29;
            v31 = [v21 metadata];
            v32 = [v31 ccidList];
            v33 = [v32 count];

            if (v33)
            {
              v34 = 0;
              v35 = v33 + 1;
              v59 += v33 + 2;
            }

            else
            {
              v33 = 0;
              v35 = 0;
              v34 = 1;
            }

            v28 = v26 | (v27 << 8);
            v17 = v55;
          }

          else
          {
            v33 = 0;
            v35 = 0;
            v34 = 1;
          }

          v10 = v56;
          [v56 writeBytes:&v59 length:1];
          if (v28)
          {
            *buf = 515;
            buf[2] = v26;
            buf[3] = v27;
            [v56 writeBytes:buf length:4];
          }

          if ((v34 & 1) == 0)
          {
            v51 = v28;
            v36 = v35;
            v37 = malloc_type_malloc(v35 + 1, 0x39EA8A34uLL);
            v38 = v35;
            v39 = v37;
            v50 = v38;
            *v37 = v38;
            v37[1] = 5;
            if (v33)
            {
              v40 = 0;
              v41 = v33;
              do
              {
                v42 = [v21 metadata];
                v43 = [v42 ccidList];
                v44 = [v43 objectAtIndexedSubscript:v40];
                v39[v40 + 2] = [v44 unsignedCharValue];

                ++v40;
              }

              while (v41 != v40);
            }

            v10 = v56;
            [v56 writeBytes:v39 length:v36 + 1];
            free(v39);
            v17 = v55;
            v28 = v51;
            v35 = v50;
          }

          v45 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            *v66 = v60;
            *&v66[4] = 1024;
            *&v66[6] = v28;
            LOWORD(v67) = 1024;
            *(&v67 + 2) = v35;
            HIWORD(v67) = 1024;
            v68 = v49;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "ASE ID %d contextTypes: 0x%02X CCID size: %d isSink: %d", buf, 0x1Au);
          }

          v14 = v58 + 1;
          v13 = v54;
          v15 = v52;
        }

        v18 = v18 + 1;
      }

      while (v18 != v13);
      v13 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
    v17 = v55;
  }

  return v14;
}

- (unsigned)sendUpdateMetadataRequestForDirection:(BOOL)a3 OptionalASE:(id)a4 withMetadata:(id)a5 withLTVData:(id *)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v72 = v8;
  if (v8)
  {
    v12 = [(ASCSInterface *)self sinkASEMap];
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    v12 = [(ASCSInterface *)self sourceASEMap];
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v13 = ;
  if ([v10 count])
  {
    v14 = v10;
  }

  else
  {
    v15 = [v12 allKeys];
    v14 = [v15 mutableCopy];
  }

  v16 = *a6;
  v17 = [v14 count];
  v18 = v14;
  v67 = v10;
  if (v17 != [v11 count])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005A43C();
    }

    goto LABEL_40;
  }

  if (![v14 count])
  {
LABEL_40:
    LOBYTE(v21) = 0;
    goto LABEL_41;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = @"Source";
  if (v72)
  {
    v23 = @"Sink";
  }

  v66 = v23;
  *&v19 = 67109378;
  v65 = v19;
  v70 = v12;
  v71 = v11;
  v68 = v18;
  v69 = v13;
  v75 = v16;
  do
  {
    v24 = [v18 objectAtIndexedSubscript:{v20, v65, v66, v67}];
    v25 = [v12 objectForKeyedSubscript:v24];

    if (v25 && [v25 state])
    {
      if ([v25 state] == 3 || objc_msgSend(v25, "state") == 4)
      {
        v73 = v21;
        v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 ASE_ID]);
        [v13 addObject:v26];

        v27 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = [v25 ASE_ID];
          *buf = v65;
          v79 = v29;
          v80 = 2112;
          *v81 = v66;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ASE ID %u added to %@ pending list", buf, 0x12u);
        }

        v77 = [v25 ASE_ID];
        [v16 writeBytes:&v77 length:1];
        v76 = 0;
        v30 = [v11 objectAtIndexedSubscript:v20];
        v31 = [v30 contextType];
        v32 = [v25 metadata];
        [v32 setContextType:v31];

        v33 = [v25 metadata];
        v34 = [v33 ccidList];
        [v34 removeAllObjects];

        v35 = [v25 metadata];
        v36 = [v35 ccidList];
        v37 = [v11 objectAtIndexedSubscript:v20];
        v38 = [v37 ccidList];
        [v36 addObjectsFromArray:v38];

        v39 = [v25 metadata];
        v40 = [v39 contextType];

        if (v40)
        {
          v76 += 4;
        }

        v41 = [v25 metadata];
        v42 = [v41 ccidList];
        v43 = [v42 count];

        if (v43)
        {
          v44 = [v25 metadata];
          v45 = [v44 ccidList];
          v46 = [v45 count];
          v74 = v46 + 1;

          v76 += v46 + 2;
        }

        else
        {
          v74 = 0;
        }

        [v75 writeBytes:&v76 length:1];
        if (v40)
        {
          *buf = 515;
          *&buf[2] = v40;
          [v75 writeBytes:buf length:4];
        }

        v47 = [v25 metadata];
        v48 = [v47 ccidList];
        v49 = [v48 count];

        if (v49)
        {
          v50 = malloc_type_malloc(v74 + 1, 0x7100B1A9uLL);
          *v50 = v74;
          v50[1] = 5;
          v51 = [v25 metadata];
          v52 = [v51 ccidList];
          v53 = [v52 count];

          if (v53)
          {
            v54 = 0;
            v55 = 0;
            do
            {
              v56 = [v25 metadata];
              v57 = [v56 ccidList];
              v58 = [v57 objectAtIndexedSubscript:v54];
              v50[v54 + 2] = [v58 unsignedCharValue];

              v54 = ++v55;
              v59 = [v25 metadata];
              v60 = [v59 ccidList];
              v61 = [v60 count];
            }

            while (v61 > v55);
          }

          [v75 writeBytes:v50 length:v74 + 1];
          free(v50);
          v12 = v70;
          v11 = v71;
          v18 = v68;
          v13 = v69;
        }

        v62 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v79 = v77;
          v80 = 1024;
          *v81 = v40;
          *&v81[4] = 1024;
          *&v81[6] = v74;
          v82 = 1024;
          v83 = v72;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "ASE ID %d contextTypes: 0x%02X CCID size: %d isSink: %d", buf, 0x1Au);
        }

        v21 = v73 + 1;
        v16 = v75;
      }

      else
      {
        v63 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005A4F0(v84, v63, v25, v85);
        }

        [v25 description];
      }
    }

    v20 = ++v22;
  }

  while ([v18 count] > v22);
LABEL_41:

  return v21;
}

- (unsigned)sendReceiverStartReadyRequestOptionalASE:(id *)a3 withLTVData:(id *)a4 withEnabledSinkASE:(char *)a5
{
  if ([*a3 count])
  {
    v9 = *a3;
  }

  else
  {
    v10 = [(ASCSInterface *)self sourceASEMap];
    v11 = [v10 allKeys];
    v9 = [v11 mutableCopy];
  }

  v12 = *a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = 0;
    v16 = *v46;
    v37 = 138412290;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        v19 = [(ASCSInterface *)self sourceASEMap];
        v20 = [v19 objectForKeyedSubscript:v18];

        if (v20 && [v20 state])
        {
          if ([v20 state] == 3)
          {
            v21 = [(ASCSInterface *)self pendingSourceASEList];
            [v21 addObject:v18];

            v22 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [v20 ASE_ID];
              *buf = 67109120;
              LODWORD(v51) = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ASE ID %u added to Source pending list", buf, 8u);
            }

            buf[0] = [v18 intValue];
            [v12 writeBytes:buf length:1];
            ++v40;
          }

          else
          {
            v25 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v51 = v18;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "ASE ID %@ is not in right state", buf, 0xCu);
            }

            [v20 description];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v15);
  }

  else
  {
    v40 = 0;
  }

  v39 = v12;
  v38 = v13;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = [(ASCSInterface *)self sinkASEMap];
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v41 + 1) + 8 * j);
        v32 = [(ASCSInterface *)self sinkASEMap];
        v33 = [v32 objectForKeyedSubscript:v31];
        v34 = [v33 state];

        if (v34 == 3)
        {
          ++*a5;
          v35 = [(ASCSInterface *)self pendingSinkASEList];
          [v35 addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v28);
  }

  return v40;
}

- (unsigned)sendReceiverStopReadyRequestOptionalASE:(id *)a3 withLTVData:(id *)a4
{
  if ([*a3 count])
  {
    v7 = *a3;
  }

  else
  {
    v8 = [(ASCSInterface *)self sourceASEMap];
    v9 = [v8 allKeys];
    v7 = [v9 mutableCopy];
  }

  v27 = *a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v29;
    *&v12 = 138412290;
    v26 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [(ASCSInterface *)self sourceASEMap];
        v19 = [v18 objectForKeyedSubscript:v17];

        if (v19 && [v19 state])
        {
          if ([v19 state] == 5)
          {
            v20 = [(ASCSInterface *)self pendingSourceASEList];
            [v20 addObject:v17];

            v21 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v21;
              v23 = [v19 ASE_ID];
              *buf = 67109120;
              LODWORD(v33) = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ASE ID %u added to Source pending list for Rx Stop Ready request", buf, 8u);
            }

            buf[0] = [v17 intValue];
            [v27 writeBytes:buf length:1];
            ++v14;
          }

          else
          {
            v24 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              *buf = v26;
              v33 = v17;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "ASE ID %@ is not in right state", buf, 0xCu);
            }

            [v19 description];
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unsigned)sendDisableRequestForASE:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5
{
  v7 = a3;
  if (a3)
  {
    [(ASCSInterface *)self sinkASEMap];
  }

  else
  {
    [(ASCSInterface *)self sourceASEMap];
  }
  v9 = ;
  if ([*a4 count])
  {
    v10 = *a4;
  }

  else
  {
    v11 = [v9 allKeys];
    v10 = [v11 mutableCopy];
  }

  if (v7)
  {
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v29 = ;
  v12 = *a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = *v32;
    v19 = @"Sink";
    if (!v7)
    {
      v19 = @"Source";
    }

    v28 = v19;
    *&v15 = 138412290;
    v27 = v15;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v9 objectForKeyedSubscript:{v21, v27}];
        v23 = v22;
        if (v22 && [v22 state])
        {
          if ([v23 state] == 4 || objc_msgSend(v23, "state") == 3)
          {
            v30 = [v21 intValue];
            [v12 writeBytes:&v30 length:1];
            [v29 addObject:v21];
            v24 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v36 = v21;
              v37 = 2112;
              v38 = v28;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ASE ID %@ added to %@ pending list", buf, 0x16u);
            }

            ++v17;
          }

          else
          {
            v25 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v36 = v21;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "ASE ID %@ is not in right state", buf, 0xCu);
            }

            [v23 description];
          }
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unsigned)sendReleaseRequestForASE:(BOOL)a3 OptionalASE:(id *)a4 withLTVData:(id *)a5
{
  v7 = a3;
  if (a3)
  {
    [(ASCSInterface *)self sinkASEMap];
  }

  else
  {
    [(ASCSInterface *)self sourceASEMap];
  }
  v9 = ;
  if ([*a4 count])
  {
    v10 = *a4;
  }

  else
  {
    v11 = [v9 allKeys];
    v10 = [v11 mutableCopy];
  }

  if (v7)
  {
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v29 = ;
  v28 = *a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = *v32;
    v18 = @"Sink";
    if (!v7)
    {
      v18 = @"Source";
    }

    v27 = v18;
    *&v14 = 138412290;
    v26 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v9 objectForKeyedSubscript:{v20, v26}];
        v22 = v21;
        if (v21 && [v21 inUse] && objc_msgSend(v22, "state"))
        {
          if ([v22 state] == 6)
          {
            v23 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              *buf = v26;
              v36 = v20;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "ASE ID %@ is not in right state", buf, 0xCu);
            }

            [v22 description];
          }

          else
          {
            v30 = [v20 intValue];
            [v28 writeBytes:&v30 length:1];
            [v29 addObject:v20];
            v24 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v36 = v20;
              v37 = 2112;
              v38 = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ASE ID %@ added to %@ pending list", buf, 0x16u);
            }

            ++v16;
          }
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unsigned)determineChannelCountForASE:(unsigned int)a3
{
  v3.i32[0] = a3;
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (a3)
  {
    return v4.i32[0];
  }

  else
  {
    return 1;
  }
}

- (void)handleASEUpdate:(id)a3 withType:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A568(v7);
  }

  v8 = &OBJC_IVAR___ASCSInterface__sourceASEMap;
  if (v4)
  {
    v8 = &OBJC_IVAR___ASCSInterface__sinkASEMap;
  }

  v9 = *(&self->super.super.isa + *v8);
  if (v4)
  {
    [(ASCSInterface *)self pendingSinkASEList];
  }

  else
  {
    [(ASCSInterface *)self pendingSourceASEList];
  }
  v10 = ;
  v11 = [v6 value];
  v12 = [DataInputStream inputStreamWithData:v11 byteOrder:1];

  v50 = 0;
  if ([v12 readUint8:&v50])
  {
    v13 = [NSNumber numberWithInt:v50];
    v14 = [v9 allKeys];
    v15 = [v14 containsObject:v13];

    v47 = v13;
    v48 = v10;
    if (v15)
    {
      v16 = [NSNumber numberWithInt:v50];
      v17 = [v9 objectForKeyedSubscript:v16];

      v18 = [v10 containsObject:v13];
      if (v18)
      {
        [v10 removeObject:v13];
      }

      v19 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v18;
        v21 = v50;
        v22 = v19;
        v23 = [(AudioStreamEndpoint *)v17 ASE_ID];
        *buf = 67109376;
        *v52 = v21;
        v18 = v20;
        *&v52[4] = 1024;
        *&v52[6] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pulled ASE ID %d out of ASE Map and that has ase.ASE_ID %d", buf, 0xEu);
      }
    }

    else
    {
      v24 = [AudioStreamEndpoint alloc];
      v17 = [(AudioStreamEndpoint *)v24 initWithAudioEnpointType:!v4 aseID:v50];
      v25 = [(ServiceInterface *)self peripheral];
      v26 = [v25 identifier];
      [(AudioStreamEndpoint *)v17 setPeripheralID:v26];

      v27 = [NSNumber numberWithInt:v50];
      [v9 setObject:v17 forKey:v27];

      v28 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v50;
        v30 = v28;
        v31 = [(AudioStreamEndpoint *)v17 ASE_ID];
        *buf = 67109376;
        *v52 = v29;
        *&v52[4] = 1024;
        *&v52[6] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating ASE with ID %d and the ase.ASE_ID is %d", buf, 0xEu);
      }

      v18 = 0;
    }

    v32 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v33 = @"Source";
      if (v4)
      {
        v33 = @"Sink";
      }

      *buf = 138412546;
      *v52 = v33;
      *&v52[8] = 1024;
      LODWORD(v53) = v50;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Received %@ ASE characteristic for ASE ID: %u", buf, 0x12u);
    }

    [(AudioStreamEndpoint *)v17 setPreviousState:[(AudioStreamEndpoint *)v17 state]];
    v49 = 0;
    v34 = v47;
    v10 = v48;
    if (![v12 readUint8:&v49])
    {
      goto LABEL_50;
    }

    v35 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v18;
      v36 = v49;
      v37 = v35;
      v38 = [AudioStreamEndpoint stateToString:v36];
      v39 = [AudioStreamEndpoint stateToString:[(AudioStreamEndpoint *)v17 previousState]];
      *buf = 138412546;
      *v52 = v38;
      *&v52[8] = 2112;
      v53 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "handleASEUpdate current state %@ previous state %@", buf, 0x16u);

      v34 = v47;
      v10 = v48;

      v18 = v46;
    }

    if (v49 <= 2u)
    {
      if (!v49)
      {
        [(AudioStreamEndpoint *)v17 setState:0];
        [(ASCSInterface *)self handleIdleStateForASE:v17];
        goto LABEL_45;
      }

      if (v49 == 1)
      {
        [(AudioStreamEndpoint *)v17 setState:1];
        [(ASCSInterface *)self handleCodecConfiguredForAse:v17 dataStream:v12];
        goto LABEL_45;
      }

      if (v49 != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v49 <= 4u)
      {
        if (v49 != 3)
        {
          if (v49 == 4)
          {
            [(AudioStreamEndpoint *)v17 setState:4];
            [(ASCSInterface *)self handleStreamingStateForASE:v17];
            goto LABEL_45;
          }

LABEL_38:
          v40 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005A610(v40);
          }

          goto LABEL_45;
        }

        [(AudioStreamEndpoint *)v17 setState:3];
        [(ASCSInterface *)self handleEnablingResponseForAse:v17 dataStream:v12];
LABEL_45:
        v41 = [(ASCSInterface *)self aseUpdateHandler];

        if (v41)
        {
          v42 = [(ASCSInterface *)self pendingSinkASEList];
          if ([v42 count])
          {
            v43 = 0;
          }

          else
          {
            v44 = [(ASCSInterface *)self pendingSourceASEList];
            v43 = [v44 count] == 0;
          }

          v45 = [(ASCSInterface *)self aseUpdateHandler];
          (v45)[2](v45, [(AudioStreamEndpoint *)v17 state], [(AudioStreamEndpoint *)v17 previousState], v43, [(AudioStreamEndpoint *)v17 type]== 0);
        }

LABEL_50:

        goto LABEL_51;
      }

      if (v49 != 5)
      {
        if (v49 == 6)
        {
          [(AudioStreamEndpoint *)v17 setState:6];
          [(ASCSInterface *)self handleReleasingStateForASE:v17];
          if (v18)
          {
            [v10 addObject:v34];
          }

          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if ([(AudioStreamEndpoint *)v17 type])
      {
        [(AudioStreamEndpoint *)v17 setState:5];
        [(ASCSInterface *)self handleDisablingStateForASE:v17];
        goto LABEL_45;
      }
    }

    [(AudioStreamEndpoint *)v17 setState:2];
    [(ASCSInterface *)self handleQoSConfiguredForAse:v17 dataStream:v12];
    goto LABEL_45;
  }

LABEL_51:
}

- (void)handleIdleStateForASE:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServiceInterface *)self peripheral];
    v8 = [v7 identifier];
    v9 = 138412546;
    v10 = v8;
    v11 = 1024;
    v12 = [v4 ASE_ID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleIdleStateForASE for peripheral %@ ASE ID: %u", &v9, 0x12u);
  }

  [v4 setCisID:255];
  [v4 setCigID:255];
  [v4 setInUse:0];
  if ([v4 previousState])
  {
    [v4 description];
  }
}

- (void)handleCodecConfiguredForAse:(id)a3 dataStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(ServiceInterface *)self peripheral];
    v11 = [v10 identifier];
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    v34 = [v6 ASE_ID];
    v35 = 1024;
    v36 = [v6 cisID];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleCodecConfiguredForAse for peripheral %@ ASE ID: %u with CIS ID %d", buf, 0x18u);
  }

  [v6 setCisID:255];
  [v6 setCigID:255];
  if ([v6 previousState] == 6)
  {
    [v6 setInUse:0];
  }

  v32 = 0;
  if ([v7 readUint8:&v32])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A654(&v32);
    }

    [v6 setFraming:v32];
  }

  v31 = 0;
  if ([v7 readUint8:&v31])
  {
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A6BC(&v31, v12);
    }

    [v6 setPreferredPhy:v31];
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A770(&v31, v13);
    }
  }

  v30 = 0;
  if ([v7 readUint8:&v30])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A824(&v30);
    }

    [v6 setPreferredRetransmissionNumber:v30];
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A88C(v14);
    }
  }

  v29 = 0;
  if ([v7 readUint16:&v29])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A91C(&v29);
    }

    [v6 setMaxTransportLatency:v29];
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A988(v15);
    }
  }

  v28 = 0;
  if ([v7 readUint24:&v28])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AA18(&v28);
    }

    [v6 setMinSupportedPresentationDelay:v28];
  }

  if ([v7 readUint24:&v28])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AA80(&v28);
    }

    [v6 setMaxSupportedPresentationDelay:v28];
  }

  if ([v7 readUint24:&v28])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AAE8(&v28);
    }

    [v6 setMinPreferredPresentationDelay:v28];
  }

  if ([v7 readUint24:&v28])
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AB50(&v28);
    }

    [v6 setMaxPreferredPresentationDelay:v28];
  }

  v28 = [v6 clientPresentationDelay];
  if (v28 >= [v6 minSupportedPresentationDelay])
  {
    v16 = v28;
  }

  else
  {
    v16 = [v6 minSupportedPresentationDelay];
    v28 = v16;
  }

  if (v16 > [v6 maxSupportedPresentationDelay])
  {
    v28 = [v6 maxSupportedPresentationDelay];
  }

  v17 = [v6 clientPresentationDelay];
  if (v17 != v28)
  {
    [v6 setClientPresentationDelay:?];
    v18 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v28;
      v20 = v18;
      v21 = [v6 ASE_ID];
      *buf = 67109376;
      *&buf[4] = v19;
      *&buf[8] = 1024;
      *&buf[10] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Presentation Delay changed to: %u for ASE ID: %d", buf, 0xEu);
    }
  }

  *buf = 0;
  if ([v7 readUint40:buf])
  {
    [v6 setCodecID:*buf];
  }

  v27 = 0;
  if ([v7 readUint8:&v27] && v27)
  {
    v22 = 0;
    do
    {
      v26 = 0;
      [v7 readUint8:&v26];
      v25 = 0;
      [v7 readUint8:&v25];
      v23 = v22 + 2;
      if (v25 <= 2u)
      {
        if (v25 == 1)
        {
          LOBYTE(v24) = 0;
          [v7 readUint8:&v24];
          [v6 setSamplingFrequency:v24];
          goto LABEL_64;
        }

        if (v25 == 2)
        {
          LOBYTE(v24) = 0;
          [v7 readUint8:&v24];
          [v6 setFrameDuration:v24];
          goto LABEL_64;
        }
      }

      else
      {
        switch(v25)
        {
          case 3u:
            v24 = 0;
            [v7 readUint32:&v24];
            [v6 setAudioChanAllocMask:v24];
            goto LABEL_64;
          case 4u:
            LOWORD(v24) = 0;
            [v7 readUint16:&v24];
            [v6 setOctetsPerCodecFrame:v24];
            goto LABEL_64;
          case 5u:
            LOBYTE(v24) = 0;
            [v7 readUint8:&v24];
            [v6 setCodecFramePerSdu:v24];
LABEL_64:
            v23 = v22 + v26 + 3;
            break;
        }
      }

      v22 = v23;
    }

    while (v27 > v23);
  }

  [v6 description];
}

- (void)handleQoSConfiguredForAse:(id)a3 dataStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(ServiceInterface *)self peripheral];
    v11 = [v10 identifier];
    *buf = 138412546;
    v23 = v11;
    v24 = 1024;
    v25 = [v6 ASE_ID];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleQoSConfiguredForAse for peripheral %@ ASE ID: %u", buf, 0x12u);
  }

  v12 = [v6 type];
  v13 = [v6 previousState];
  if (v12 == 1)
  {
    if (v13 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v13 == 3 || [v6 previousState] == 4)
  {
LABEL_8:
    [(ASCSInterface *)self requestRemoveDataPathForASE:v6];
  }

LABEL_9:
  v21 = 0;
  if ([v7 readUint8:&v21] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005ABB8(&v21);
  }

  v20 = 0;
  if ([v7 readUint8:&v20] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AC20(&v20);
  }

  *buf = 0;
  if ([v7 readUint24:buf] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AC88();
  }

  v19 = 0;
  if ([v7 readUint8:&v19] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AD20();
  }

  v18 = 0;
  if ([v7 readUint8:&v18] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005ADB8();
  }

  v17 = 0;
  if ([v7 readUint16:&v17] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AE50();
  }

  v16 = 0;
  if ([v7 readUint8:&v16] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AEE8();
  }

  v15 = 0;
  if ([v7 readUint16:&v15] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005AF80();
  }

  v14 = 0;
  if ([v7 readUint24:&v14] && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B018();
  }

  [v6 description];
}

- (void)handleEnablingResponseForAse:(id)a3 dataStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(ServiceInterface *)self peripheral];
    v11 = [v10 identifier];
    *buf = 138412546;
    v21 = v11;
    v22 = 1024;
    v23 = [v6 ASE_ID];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleEnablingForAse for peripheral %@ ASE ID: %u", buf, 0x12u);
  }

  buf[0] = 0;
  if ([v7 readUint8:buf])
  {
    [v6 setCigID:buf[0]];
  }

  v19 = 0;
  if ([v7 readUint8:&v19])
  {
    [v6 setCisID:v19];
  }

  if ([v6 type] == 1)
  {
    v12 = [v6 associatedCIS];
    if (![v12 established])
    {
LABEL_11:

      goto LABEL_12;
    }

    v13 = [v6 associatedCIS];
    v14 = [v13 outputDataPathCreated];

    if ((v14 & 1) == 0)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v15 = [NSNumber numberWithBool:0];
      [v12 setValue:v15 forKey:@"kLEAudioXPCMsgArgDirection"];

      v16 = [NSNumber numberWithUnsignedInt:buf[0]];
      [v12 setValue:v16 forKey:@"kLEAudioXPCMsgArgCigID"];

      v17 = [NSNumber numberWithUnsignedInt:v19];
      [v12 setValue:v17 forKey:@"kLEAudioXPCMsgArgCisID"];

      v18 = [(ServiceInterface *)self serviceEventHandler];
      (v18)[2](v18, 2, v12);

      goto LABEL_11;
    }
  }

LABEL_12:
  [v6 description];
}

- (void)handleStreamingStateForASE:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServiceInterface *)self peripheral];
    v8 = [v7 identifier];
    v16 = 136315394;
    v17 = "[ASCSInterface handleStreamingStateForASE:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s for peripherial %@", &v16, 0x16u);
  }

  if (![v4 type])
  {
    v9 = [v4 associatedCIS];
    if (![v9 established])
    {
LABEL_7:

      goto LABEL_8;
    }

    v10 = [v4 associatedCIS];
    v11 = [v10 inputDataPathCreated];

    if ((v11 & 1) == 0)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v12 = [NSNumber numberWithBool:1];
      [v9 setValue:v12 forKey:@"kLEAudioXPCMsgArgDirection"];

      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 cigID]);
      [v9 setValue:v13 forKey:@"kLEAudioXPCMsgArgCigID"];

      v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 cisID]);
      [v9 setValue:v14 forKey:@"kLEAudioXPCMsgArgCisID"];

      v15 = [(ServiceInterface *)self serviceEventHandler];
      (v15)[2](v15, 2, v9);

      goto LABEL_7;
    }
  }

LABEL_8:
  [v4 description];
}

- (void)handleDisablingStateForASE:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServiceInterface *)self peripheral];
    v8 = [v7 identifier];
    v9 = 136315394;
    v10 = "[ASCSInterface handleDisablingStateForASE:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s for peripherial %@", &v9, 0x16u);
  }

  [v4 description];
}

- (void)handleReleasingStateForASE:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServiceInterface *)self peripheral];
    v8 = [v7 identifier];
    v9 = 136315394;
    v10 = "[ASCSInterface handleReleasingStateForASE:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s going to remove ISO Path for peripheral %@", &v9, 0x16u);
  }

  [(ASCSInterface *)self requestRemoveDataPathForASE:v4];
  [v4 description];
}

- (void)requestRemoveDataPathForASE:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServiceInterface *)self peripheral];
    v8 = [v7 identifier];
    v29 = 136315394;
    v30 = "[ASCSInterface requestRemoveDataPathForASE:]";
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s for peripheral %@", &v29, 0x16u);
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 cigID]);
  [v9 setValue:v10 forKey:@"kLEAudioXPCMsgArgCigID"];

  v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 cisID]);
  [v9 setValue:v11 forKey:@"kLEAudioXPCMsgArgCisID"];

  v12 = [v4 associatedCIS];
  v13 = [v12 sourceASE];
  v14 = v13;
  if (v13 == v4)
  {
  }

  else
  {
    v15 = [v12 sinkASE];

    if (v15 != v4)
    {
      goto LABEL_25;
    }
  }

  if ([v12 inputDataPathCreated])
  {
    v16 = [v12 sinkASE];

    if (v16 == v4)
    {
      v17 = [NSNumber numberWithBool:1];
      [v9 setValue:v17 forKey:@"kLEAudioXPCMsgArgDirection"];

      [v12 setInputDataPathCreated:0];
    }
  }

  if ([v12 outputDataPathCreated])
  {
    v18 = [v12 sourceASE];

    if (v18 == v4)
    {
      v19 = [NSNumber numberWithBool:0];
      [v9 setValue:v19 forKey:@"kLEAudioXPCMsgArgDirection"];

      [v12 setOutputDataPathCreated:0];
    }
  }

  v20 = [(ServiceInterface *)self serviceEventHandler];
  if (v20)
  {
    v21 = v20;
    v22 = [v9 objectForKey:@"kLEAudioXPCMsgArgDirection"];

    if (v22)
    {
      v23 = [(ServiceInterface *)self serviceEventHandler];
      (v23)[2](v23, 3, v9);
    }
  }

  if ([v12 established] && (objc_msgSend(v4, "state") == 1 || objc_msgSend(v4, "state") == 6) && (objc_msgSend(v12, "inputDataPathCreated") & 1) == 0 && (objc_msgSend(v12, "outputDataPathCreated") & 1) == 0)
  {
    v24 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [v4 cisID];
      v29 = 67109120;
      LODWORD(v30) = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Disconnecting CIS %u", &v29, 8u);
    }

    v27 = [(ServiceInterface *)self serviceEventHandler];

    if (v27)
    {
      v28 = [(ServiceInterface *)self serviceEventHandler];
      (v28)[2](v28, 4, v9);
    }
  }

LABEL_25:
}

- (void)handleControlPointUpdate
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B0B0(v3, self);
  }

  v4 = [(ASCSInterface *)self ASEControlPointCharacteristic];
  v5 = [v4 value];
  v6 = [DataInputStream inputStreamWithData:v5];

  v33 = 0;
  [v6 readUint8:&v33 + 1];
  [v6 readUint8:&v33];
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B1A8(&v33 + 1, &v33);
  }

  v7 = v33;
  if (v33)
  {
    if (v33 == 255)
    {
      LOBYTE(v33) = 1;
    }

    v8 = 0;
    v7 = 0;
    v9 = 0;
    while (1)
    {
      v32 = 0;
      v31 = 0;
      [v6 readUint8:&v32 + 1];
      [v6 readUint8:&v32];
      [v6 readUint8:&v31];
      v10 = [NSNumber numberWithInt:HIBYTE(v32)];
      if (v32 - 3 > 0xFFFFFFFD)
      {
        v14 = 0;
      }

      else
      {
        v11 = [(ASCSInterface *)self sinkASEMap];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          v13 = [(ASCSInterface *)self sinkASEMap];
          v14 = [v13 objectForKeyedSubscript:v10];

          v15 = [(ASCSInterface *)self pendingSinkASEList];
        }

        else
        {
          v16 = [(ASCSInterface *)self sourceASEMap];
          v17 = [v16 objectForKeyedSubscript:v10];

          if (!v17)
          {
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
            {
              sub_10005B234();
            }

            goto LABEL_25;
          }

          v18 = [(ASCSInterface *)self sourceASEMap];
          v14 = [v18 objectForKeyedSubscript:v10];

          v15 = [(ASCSInterface *)self pendingSourceASEList];
        }

        v19 = v15;

        v8 = v19;
      }

      [v14 setResponseCode:v32];
      [v14 setResponseReason:v31];
      [v14 setCurrentOpcode:HIBYTE(v33)];
      v20 = v32;
      if (v32)
      {
        v21 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          log = v21;
          v30 = [(ServiceInterface *)self peripheral];
          v28 = [v30 identifier];
          v22 = [v28 UUIDString];
          v25 = HIBYTE(v32);
          v27 = [(ASCSInterface *)self aseResponseCodeToString:v32];
          v26 = [(ASCSInterface *)self aseReasonCodeToString:v31];
          *buf = 138413058;
          v35 = v22;
          v36 = 1024;
          v37 = v25;
          v38 = 2112;
          v39 = v27;
          v40 = 2112;
          v41 = v26;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Peripheral %@ ASE ID: %d failed with response code: %@ with reason: %@", buf, 0x26u);
        }

        [v14 description];
        [v8 removeObject:v10];
      }

      v7 += v20;

      if (++v9 >= v33)
      {
        goto LABEL_23;
      }
    }
  }

  v8 = 0;
LABEL_23:
  v23 = [(ASCSInterface *)self controlPointHandler];

  if (v23)
  {
    v24 = [(ASCSInterface *)self controlPointHandler];
    v24[2](v24, HIBYTE(v33), v7);
  }

LABEL_25:
}

- (unsigned)getLowestBitSet:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    result = v3;
    v3 *= 2;
  }

  while ((result & a3) == 0);
  return result;
}

- (BOOL)allASEInSameState:(unsigned __int8)a3 forSinkASE:(id)a4 forSourceASE:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [(ASCSInterface *)self sinkASEMap];
        v17 = [v16 objectForKeyedSubscript:v15];
        v18 = [v17 state];

        if (v18 != v6)
        {
          v28 = 0;
          v19 = v10;
          goto LABEL_22;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v30 = v9;
    v22 = *v32;
    while (2)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * j);
        v25 = [(ASCSInterface *)self sourceASEMap];
        v26 = [v25 objectForKeyedSubscript:v24];
        v27 = [v26 state];

        if (v27 != v6)
        {
          v28 = 0;
          goto LABEL_20;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v28 = 1;
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_20:
    v9 = v30;
  }

  else
  {
    v28 = 1;
  }

LABEL_22:

  return v28;
}

- (void)readSinkASE:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(ASCSInterface *)self sinkASECharacteristic];
  v6 = [v5 count];

  if (v6 > v3)
  {
    v7 = [(ASCSInterface *)self sinkASECharacteristic];
    v9 = [v7 objectAtIndex:v3];

    if (v9)
    {
      v8 = [(ServiceInterface *)self peripheral];
      [v8 readValueForCharacteristic:v9];
    }
  }
}

- (void)readSourceASE:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(ASCSInterface *)self sourceASECharacteristic];
  v6 = [v5 count];

  if (v6 > v3)
  {
    v7 = [(ASCSInterface *)self sourceASECharacteristic];
    v9 = [v7 objectAtIndex:v3];

    if (v9)
    {
      v8 = [(ServiceInterface *)self peripheral];
      [v8 readValueForCharacteristic:v9];
    }
  }
}

- (void)writeASEControlPoint
{
  v3 = [(ASCSInterface *)self ASEControlPointCharacteristic];

  if (v3)
  {
    v6 = [DataOutputStream outputStreamWithByteOrder:1];
    [v6 writeUint8:1];
    v4 = [v6 data];
    v5 = [v4 mutableCopy];

    [(ASCSInterface *)self sendControlPointOperation:v5];
  }
}

- (id)sampleFreqString:(unsigned int)a3
{
  if (a3 - 1 > 0xC)
  {
    return @"Unknown Sample Freq";
  }

  else
  {
    return *(&off_100094958 + a3 - 1);
  }
}

- (id)audioContextToString:(unsigned __int16)a3
{
  if (a3 <= 31)
  {
    if (a3 > 3)
    {
      switch(a3)
      {
        case 4u:
          return @"Media";
        case 8u:
          return @"Game";
        case 0x10u:
          return @"Instructional";
      }
    }

    else
    {
      switch(a3)
      {
        case 0u:
          return @"Prohibited";
        case 1u:
          return @"Unspecified";
        case 2u:
          return @"Conversational";
      }
    }
  }

  else if (a3 <= 255)
  {
    switch(a3)
    {
      case 0x20u:
        return @"Voice Assistant";
      case 0x40u:
        return @"Live";
      case 0x80u:
        return @"Sound Effects";
    }
  }

  else if (a3 > 1023)
  {
    if (a3 == 1024)
    {
      return @"Alert";
    }

    if (a3 == 2048)
    {
      return @"Emergency Alarm";
    }
  }

  else
  {
    if (a3 == 256)
    {
      return @"Notification";
    }

    if (a3 == 512)
    {
      return @"Ringtone";
    }
  }

  return @"Unknown Context";
}

- (id)aseResponseCodeToString:(unsigned __int8)a3
{
  if (a3 > 0xEu)
  {
    return @"Unknown Response Code";
  }

  else
  {
    return *(&off_1000949C0 + a3);
  }
}

- (id)aseReasonCodeToString:(unsigned __int8)a3
{
  if (a3 > 0xAu)
  {
    return @"Unknown Reason Code";
  }

  else
  {
    return *(&off_100094A38 + a3);
  }
}

- (AcceptorInterface)acceptor
{
  WeakRetained = objc_loadWeakRetained(&self->_acceptor);

  return WeakRetained;
}

@end