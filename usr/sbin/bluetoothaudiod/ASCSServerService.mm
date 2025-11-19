@interface ASCSServerService
- (ASCSServerService)init;
- (unint64_t)subscriptionCount;
- (void)codecConfigRequest:(id)a3;
- (void)dealloc;
- (void)enableRequest:(id)a3;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)qosConfigRequest:(id)a3;
- (void)receiveObjectMessage:(unsigned __int8)a3 withEventObject:(id)a4;
- (void)receivedCharacteristicReadRequest:(id)a3;
- (void)receivedWriteRequest:(id)a3;
- (void)receiverStartReadyRequest:(id)a3;
- (void)respondToRequest:(id)a3 withResult:(int64_t)a4;
- (void)sendStreamingNotification;
@end

@implementation ASCSServerService

- (ASCSServerService)init
{
  v23.receiver = self;
  v23.super_class = ASCSServerService;
  v2 = [(ASCSServerService *)&v23 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDSinkASECharacteristicString];
    v5 = [v3 initWithType:v4 properties:1042 value:0 permissions:5];
    sinkASECharacteristic = v2->_sinkASECharacteristic;
    v2->_sinkASECharacteristic = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDSourceASECharacteristicString];
    v9 = [v7 initWithType:v8 properties:1042 value:0 permissions:5];
    sourceASECharacteristic = v2->_sourceASECharacteristic;
    v2->_sourceASECharacteristic = v9;

    v11 = [CBMutableCharacteristic alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDASEControlPointCharacteristicString];
    v13 = [v11 initWithType:v12 properties:1052 value:0 permissions:34];
    ASEControlPointCharacteristic = v2->_ASEControlPointCharacteristic;
    v2->_ASEControlPointCharacteristic = v13;

    v15 = [CBMutableService alloc];
    v16 = [CBUUID UUIDWithString:CBUUIDAudioStreamControlServiceString];
    v17 = [v15 initWithType:v16 primary:1];
    [(Service *)v2 setService:v17];

    v24[0] = v2->_sinkASECharacteristic;
    v24[1] = v2->_sourceASECharacteristic;
    v24[2] = v2->_ASEControlPointCharacteristic;
    v18 = [NSArray arrayWithObjects:v24 count:3];
    v19 = [(Service *)v2 service];
    [v19 setCharacteristics:v18];

    v20 = [[AudioStreamEndpoint alloc] initWithAudioEnpointType:0 aseID:1];
    sinkASE = v2->_sinkASE;
    v2->_sinkASE = v20;

    [(AudioStreamEndpoint *)v2->_sinkASE setFraming:0];
    [(AudioStreamEndpoint *)v2->_sinkASE setPreferredPhy:2];
    [(AudioStreamEndpoint *)v2->_sinkASE setPreferredRetransmissionNumber:5];
    [(AudioStreamEndpoint *)v2->_sinkASE setMaxTransportLatency:10];
    [(AudioStreamEndpoint *)v2->_sinkASE setMinSupportedPresentationDelay:10000];
    [(AudioStreamEndpoint *)v2->_sinkASE setMaxSupportedPresentationDelay:40000];
    [(AudioStreamEndpoint *)v2->_sinkASE setMinPreferredPresentationDelay:10000];
    [(AudioStreamEndpoint *)v2->_sinkASE setMaxPreferredPresentationDelay:40000];
    [(AudioStreamEndpoint *)v2->_sinkASE setTargetLatency:0];
  }

  return v2;
}

- (void)dealloc
{
  [(ASCSServerService *)self stopNotifications];
  v3.receiver = self;
  v3.super_class = ASCSServerService;
  [(ASCSServerService *)&v3 dealloc];
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v5 = [a4 firstObject];
  [(ASCSServerService *)self receivedWriteRequest:v5];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v9 = a5;
  v6 = [(ASCSServerService *)self sinkASECharacteristic];
  if (v6 != v9)
  {
    v7 = [(ASCSServerService *)self sourceASECharacteristic];
    if (v7 != v9)
    {
      v8 = [(ASCSServerService *)self ASEControlPointCharacteristic];

      if (v8 != v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  if ([(ASCSServerService *)self subscriptionCount]== 1)
  {
    [(ASCSServerService *)self startNotifications];
  }

LABEL_9:
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v9 = a5;
  v6 = [(ASCSServerService *)self sinkASECharacteristic];
  if (v6 != v9)
  {
    v7 = [(ASCSServerService *)self sourceASECharacteristic];
    if (v7 != v9)
    {
      v8 = [(ASCSServerService *)self ASEControlPointCharacteristic];

      if (v8 != v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  if (![(ASCSServerService *)self subscriptionCount])
  {
    [(ASCSServerService *)self stopNotifications];
  }

LABEL_9:
}

- (void)receivedWriteRequest:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 characteristic];
    v8 = [v4 value];
    v19 = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ASCS received write request for characteristic %@ with data %@", &v19, 0x16u);
  }

  v9 = [v4 characteristic];
  v10 = [v9 UUID];
  v11 = [CBUUID UUIDWithString:CBUUIDASEControlPointCharacteristicString];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v4 value];
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ASCS received write request for characteristic CBUUIDASEControlPointCharacteristicString with data %@", &v19, 0xCu);
    }

    v16 = [v4 value];
    v17 = [DataInputStream inputStreamWithData:v16 byteOrder:1];

    LOBYTE(v19) = 0;
    [v17 readUint8:&v19];
    if (v19 <= 4u)
    {
      if (v19 <= 2u)
      {
        if (v19 == 1)
        {
          [(ASCSServerService *)self codecConfigRequest:v17];
        }

        else if (v19 == 2)
        {
          [(ASCSServerService *)self qosConfigRequest:v17];
        }

        goto LABEL_29;
      }

      if (v19 == 3)
      {
        v18 = [v4 value];
        [(ASCSServerService *)self enableRequest:v18];
        goto LABEL_28;
      }

      if (v19 == 4)
      {
        v18 = [v4 value];
        [(ASCSServerService *)self receiverStartReadyRequest:v18];
        goto LABEL_28;
      }
    }

    else if (v19 <= 6u)
    {
      if (v19 == 5)
      {
        v18 = [v4 value];
        [(ASCSServerService *)self disableRequest:v18];
        goto LABEL_28;
      }

      if (v19 == 6)
      {
        v18 = [v4 value];
        [(ASCSServerService *)self receiverStopReadyRequest:v18];
        goto LABEL_28;
      }
    }

    else
    {
      switch(v19)
      {
        case 7u:
          v18 = [v4 value];
          [(ASCSServerService *)self updateMetadataRequest:v18];
          goto LABEL_28;
        case 8u:
          v18 = [v4 value];
          [(ASCSServerService *)self releaseRequest:v18];
          goto LABEL_28;
        case 9u:
          v18 = [v4 value];
          [(ASCSServerService *)self releasedRequest:v18];
LABEL_28:

          break;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  [(ASCSServerService *)self respondToRequest:v4 withResult:10];
LABEL_30:
}

- (void)receivedCharacteristicReadRequest:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 characteristic];
    v22 = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ASCS received read request for characteristic %@", &v22, 0xCu);
  }

  v8 = [v4 characteristic];
  v9 = [v8 UUID];
  v10 = [CBUUID UUIDWithString:CBUUIDSinkASECharacteristicString];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [(AudioStreamEndpoint *)self->_sinkASE ASE_ID];
    v13 = [DataOutputStream outputStreamWithByteOrder:1];
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      sinkASE = self->_sinkASE;
      v16 = v14;
      v17 = [AudioStreamEndpoint stateToString:[(AudioStreamEndpoint *)sinkASE state]];
      v18 = [(AudioStreamEndpoint *)self->_sinkASE ASE_ID];
      v22 = 138412546;
      v23 = v17;
      v24 = 1024;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sink ASE state: %@, ase ID: %d", &v22, 0x12u);
    }

    [v13 writeUint8:v12];
    v19 = [(AudioStreamEndpoint *)self->_sinkASE state];
    if (v19 - 1 >= 6)
    {
      if (v19)
      {
        v20 = 10;
        goto LABEL_8;
      }

      [v13 writeUint8:0];
    }

    v20 = 0;
LABEL_8:
    v21 = [v13 data];
    [v4 setValue:v21];

    [(ASCSServerService *)self respondToRequest:v4 withResult:v20];
  }
}

- (void)codecConfigRequest:(id)a3
{
  v4 = a3;
  v67 = 0;
  [v4 readUint8:&v67];
  v66 = 0;
  v65 = 0;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[ASCSServerService codecConfigRequest:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    v69 = 1024;
    v70 = v67;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Codec Config bytes %@ with %u ASE", buf, 0x1Cu);
  }

  if (v67)
  {
    v6 = 0;
    while (1)
    {
      v64 = 0;
      [v4 readUint8:&v64];
      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Configuring Codec for ASE %u", buf, 8u);
      }

      v63 = 0;
      [v4 readUint8:&v63];
      v8 = v63;
      v9 = [(ASCSServerService *)self sinkASE];
      [v9 setTargetLatency:v8];

      v62 = 0;
      [v4 readUint8:&v62];
      v10 = v62;
      v11 = [(ASCSServerService *)self sinkASE];
      [v11 setPreferredPhy:v10];

      *buf = 0;
      [v4 readUint40:buf];
      v12 = *buf;
      v13 = [(ASCSServerService *)self sinkASE];
      [v13 setCodecID:v12];

      v61 = 0;
      [v4 readUint8:&v61];
      v14 = objc_alloc_init(NSMutableData);
      [v4 readNumBytes:v61 toData:v14];
      v15 = [v14 bytes];
      if (v61)
      {
        break;
      }

LABEL_23:

      if (++v6 >= v67)
      {
        goto LABEL_24;
      }
    }

    v16 = v15;
    v17 = 0;
    v18 = v15 + 1;
    while (1)
    {
      v19 = v17 + 2;
      v20 = v18[v17];
      if (v20 <= 2)
      {
        if (v20 == 1)
        {
          v22 = v17 + 3;
          v27 = v16[v19];
          v24 = [(ASCSServerService *)self sinkASE];
          [v24 setSamplingFrequency:v27];
          goto LABEL_21;
        }

        if (v20 == 2)
        {
          v22 = v17 + 3;
          v25 = v16[v19];
          v24 = [(ASCSServerService *)self sinkASE];
          [v24 setFrameDuration:v25];
          goto LABEL_21;
        }
      }

      else
      {
        v21 = v16[v17];
        switch(v20)
        {
          case 3u:
            v60 = 0;
            __memcpy_chk();
            v26 = [(ASCSServerService *)self sinkASE];
            [v26 setAudioChanAllocMask:0];
LABEL_19:

            LODWORD(v19) = v19 + v21;
            break;
          case 4u:
            LOWORD(v60) = 0;
            __memcpy_chk();
            v26 = [(ASCSServerService *)self sinkASE];
            [v26 setOctetsPerCodecFrame:0];
            goto LABEL_19;
          case 5u:
            v22 = v17 + 3;
            v23 = v16[v19];
            v24 = [(ASCSServerService *)self sinkASE];
            [v24 setCodecFramePerSdu:v23];
LABEL_21:

            LODWORD(v19) = v22;
            break;
        }
      }

      v17 = v19;
      if (v19 >= v61)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  p_info = &OBJC_METACLASS___BluetoothAudiodXPCObject.info;
  v29 = [DataOutputStream outputStreamWithByteOrder:1];
  *buf = 0;
  if (v67)
  {
    do
    {
      LOBYTE(v60) = 1;
      v30 = objc_alloc_init(NSMutableData);
      [v30 appendBytes:&v60 length:1];
      [v30 appendBytes:&v67 length:1];
      [v30 appendBytes:buf length:1];
      [v30 appendBytes:&v66 length:1];
      [v30 appendBytes:&v65 length:1];
      [v29 writeBytes:objc_msgSend(v30 length:{"bytes"), objc_msgSend(v30, "length")}];

      ++*buf;
    }

    while (*buf < v67);
  }

  v31 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Notifying after Codec Config Request", buf, 2u);
  }

  v32 = +[ServerCommonAudioProfile instance];
  v33 = [v29 data];
  v34 = [(ASCSServerService *)self ASEControlPointCharacteristic];
  [v32 updateValue:v33 forCharacteristic:v34 onSubscribedCentrals:0];

  if (v67)
  {
    v35 = 0;
    do
    {
      v59 = v35;
      v36 = [(ASCSServerService *)self sinkASE];
      [v36 setState:1];

      v37 = [p_info + 56 outputStreamWithByteOrder:1];

      v38 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint8:{objc_msgSend(v38, "ASE_ID")}];

      v39 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint8:{objc_msgSend(v39, "state")}];

      v40 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint8:{objc_msgSend(v40, "framing")}];

      v41 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint8:{objc_msgSend(v41, "preferredPhy")}];

      v42 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint8:{objc_msgSend(v42, "preferredRetransmissionNumber")}];

      v43 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint16:{objc_msgSend(v43, "maxTransportLatency")}];

      v44 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint24:{objc_msgSend(v44, "minSupportedPresentationDelay")}];

      v45 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint24:{objc_msgSend(v45, "maxSupportedPresentationDelay")}];

      v46 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint24:{objc_msgSend(v46, "minPreferredPresentationDelay")}];

      v47 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint24:{objc_msgSend(v47, "maxPreferredPresentationDelay")}];

      v48 = [(ASCSServerService *)self sinkASE];
      [v37 writeUint40:{objc_msgSend(v48, "codecID")}];

      v49 = [(ASCSServerService *)self sinkASE];
      v50 = [v49 audioChanAllocMask];

      v51 = [(ASCSServerService *)self sinkASE];
      v52 = [v51 octetsPerCodecFrame];

      memset(&buf[2], 0, 17);
      *buf = 258;
      v53 = [(ASCSServerService *)self sinkASE];
      buf[2] = [v53 samplingFrequency];
      *&buf[3] = 514;
      v54 = [(ASCSServerService *)self sinkASE];
      buf[5] = [v54 frameDuration];
      *&buf[6] = 773;
      *&buf[8] = v50;
      p_info = (&OBJC_METACLASS___BluetoothAudiodXPCObject + 32);
      *&buf[12] = 1027;
      *&buf[14] = v52;
      *&buf[16] = 1281;
      v55 = [(ASCSServerService *)self sinkASE];
      buf[18] = [v55 codecFramePerSdu];

      [v37 writeUint8:19];
      [v37 writeBytes:buf length:19];
      v56 = +[ServerCommonAudioProfile instance];
      v57 = [v37 data];
      v58 = [(ASCSServerService *)self sinkASECharacteristic];
      [v56 updateValue:v57 forCharacteristic:v58 onSubscribedCentrals:0];

      v35 = v59 + 1;
      v29 = v37;
    }

    while (v59 + 1 < v67);
  }

  else
  {
    v37 = v29;
  }
}

- (void)qosConfigRequest:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v64 = "[ASCSServerService qosConfigRequest:]";
    v65 = 2112;
    v66 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s QoS Config bytes %@", buf, 0x16u);
  }

  v6 = [DataOutputStream outputStreamWithByteOrder:1];
  v62 = 0;
  [v4 readUint8:&v62];
  v61 = 0;
  [v4 readUint8:&v61];
  v58 = 258;
  v7 = [(ASCSServerService *)self sinkASE];
  v59 = [v7 ASE_ID];
  v60 = 0;

  if (v62)
  {
    v9 = 0;
    *&v8 = 67109120;
    v49 = v8;
    do
    {
      [v6 writeBytes:&v58 length:{5, v49}];
      v10 = +[ServerCommonAudioProfile instance];
      v11 = [v6 data];
      v12 = [(ASCSServerService *)self ASEControlPointCharacteristic];
      [v10 updateValue:v11 forCharacteristic:v12 onSubscribedCentrals:0];

      v13 = [(ASCSServerService *)self sinkASE];
      [v13 setState:2];

      v57 = 0;
      [v4 readUint8:&v57];
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v49;
        LODWORD(v64) = v57;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "qosConfigRequest read CIG %d", buf, 8u);
      }

      v15 = v57;
      v16 = [(ASCSServerService *)self sinkASE];
      [v16 setCigID:v15];

      v56 = 0;
      [v4 readUint8:&v56];
      v17 = v56;
      v18 = [(ASCSServerService *)self sinkASE];
      [v18 setCisID:v17];

      *buf = 0;
      [v4 readUint24:buf];
      v19 = *buf;
      v20 = [(ASCSServerService *)self sinkASE];
      [v20 setClientSduInterval:v19];

      v55 = 0;
      [v4 readUint8:&v55];
      v21 = v55;
      v22 = [(ASCSServerService *)self sinkASE];
      [v22 setFraming:v21];

      v54 = 0;
      [v4 readUint8:&v54];
      v23 = v54;
      v24 = [(ASCSServerService *)self sinkASE];
      [v24 setClientPHY:v23];

      v53 = 0;
      [v4 readUint16:&v53];
      v25 = v53;
      v26 = [(ASCSServerService *)self sinkASE];
      [v26 setClientMaxSdu:v25];

      v52 = 0;
      [v4 readUint8:&v52];
      v27 = v52;
      v28 = [(ASCSServerService *)self sinkASE];
      [v28 setClientRetransmissionNumber:v27];

      v51 = 0;
      [v4 readUint16:&v51];
      v29 = v51;
      v30 = [(ASCSServerService *)self sinkASE];
      [v30 setMaxTransportLatency:v29];

      v50 = 0;
      [v4 readUint24:&v50];
      v31 = v50;
      v32 = [(ASCSServerService *)self sinkASE];
      [v32 setClientPresentationDelay:v31];

      ++v9;
    }

    while (v9 < v62);
  }

  v33 = [DataOutputStream outputStreamWithByteOrder:1];

  if (v62)
  {
    for (i = 0; i < v62; ++i)
    {
      v35 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v35, "ASE_ID")}];

      v36 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v36, "state")}];

      v37 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v37, "cigID")}];

      v38 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v38, "cisID")}];

      v39 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint24:{objc_msgSend(v39, "clientSduInterval")}];

      v40 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v40, "framing")}];

      v41 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v41, "clientPHY")}];

      v42 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint16:{objc_msgSend(v42, "clientMaxSdu")}];

      v43 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint8:{objc_msgSend(v43, "clientRetransmissionNumber")}];

      v44 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint16:{objc_msgSend(v44, "maxTransportLatency")}];

      v45 = [(ASCSServerService *)self sinkASE];
      [v33 writeUint24:{objc_msgSend(v45, "clientPresentationDelay")}];

      v46 = +[ServerCommonAudioProfile instance];
      v47 = [v33 data];
      v48 = [(ASCSServerService *)self sinkASECharacteristic];
      [v46 updateValue:v47 forCharacteristic:v48 onSubscribedCentrals:0];
    }
  }
}

- (void)enableRequest:(id)a3
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received enableRequest sending response now", v18, 2u);
  }

  v5 = [DataOutputStream outputStreamWithByteOrder:1];
  [v5 writeUint8:3];
  [v5 writeUint8:1];
  [v5 writeUint8:0];
  [v5 writeUint8:0];
  v6 = +[ServerCommonAudioProfile instance];
  v7 = [v5 data];
  v8 = [(ASCSServerService *)self ASEControlPointCharacteristic];
  [v6 updateValue:v7 forCharacteristic:v8 onSubscribedCentrals:0];

  v9 = [(ASCSServerService *)self sinkASE];
  [v9 setState:3];

  v10 = [(ASCSServerService *)self sinkASE];
  [v10 description];

  v11 = [DataOutputStream outputStreamWithByteOrder:1];

  v12 = [(ASCSServerService *)self sinkASE];
  [v11 writeUint8:{objc_msgSend(v12, "ASE_ID")}];

  [v11 writeUint8:3];
  v13 = [(ASCSServerService *)self sinkASE];
  [v11 writeUint8:{objc_msgSend(v13, "cigID")}];

  v14 = [(ASCSServerService *)self sinkASE];
  [v11 writeUint8:{objc_msgSend(v14, "cisID")}];

  v15 = +[ServerCommonAudioProfile instance];
  v16 = [v11 data];
  v17 = [(ASCSServerService *)self sinkASECharacteristic];
  [v15 updateValue:v16 forCharacteristic:v17 onSubscribedCentrals:0];
}

- (void)receiverStartReadyRequest:(id)a3
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received receiverStartReadyRequest sending response now", v5, 2u);
  }

  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint8:4];
  [v4 writeUint8:1];
  [v4 writeUint8:0];
  [v4 writeUint8:0];
}

- (void)sendStreamingNotification
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Send Sink ASE Streaming notification", v12, 2u);
  }

  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  v5 = [(ASCSServerService *)self sinkASE];
  [v4 writeUint8:{objc_msgSend(v5, "ASE_ID")}];

  [v4 writeUint8:4];
  v6 = [(ASCSServerService *)self sinkASE];
  [v4 writeUint8:{objc_msgSend(v6, "cigID")}];

  v7 = [(ASCSServerService *)self sinkASE];
  [v4 writeUint8:{objc_msgSend(v7, "cisID")}];

  v8 = [(ASCSServerService *)self sinkASE];
  [v8 setState:4];

  v9 = +[ServerCommonAudioProfile instance];
  v10 = [v4 data];
  v11 = [(ASCSServerService *)self sinkASECharacteristic];
  [v9 updateValue:v10 forCharacteristic:v11 onSubscribedCentrals:0];
}

- (void)receiveObjectMessage:(unsigned __int8)a3 withEventObject:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ASCSServerService receiveObjectMessage:withEventObject:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  if (v4 == 1)
  {
    [(ASCSServerService *)self sendStreamingNotification];
  }

  else
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005CB50(v8);
    }
  }
}

- (unint64_t)subscriptionCount
{
  v3 = [(ASCSServerService *)self sinkASECharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];
  v6 = [(ASCSServerService *)self sourceASECharacteristic];
  v7 = [v6 subscribedCentrals];
  v8 = &v5[[v7 count]];
  v9 = [(ASCSServerService *)self ASEControlPointCharacteristic];
  v10 = [v9 subscribedCentrals];
  v11 = [v10 count];

  return v11 + v8;
}

- (void)respondToRequest:(id)a3 withResult:(int64_t)a4
{
  v5 = a3;
  v6 = +[ServerCommonAudioProfile instance];
  [v6 respondToRequest:v5 withResult:a4];
}

@end