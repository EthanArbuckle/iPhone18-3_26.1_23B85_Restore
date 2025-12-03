@interface NRDevicePairingManagerContext
- (NSString)description;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
@end

@implementation NRDevicePairingManagerContext

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

  (*(responseBlockCopy + 2))(responseBlockCopy, 0, 0, 0);
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  if (managerCopy)
  {
    if (disconnectCopy)
    {
      peer = [disconnectCopy peer];
      identifier = [peer identifier];

      if (identifier)
      {
        v12 = sub_1001232AC(&self->super.isa, identifier);
        if (v12)
        {
          v13 = v12;
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs();
          }

          if (sub_100123380(v13) && (sub_100123434(v13) & 1) == 0)
          {
            sub_1001234B8(v13);
          }

          else
          {
            sub_10012357C(v13);
          }
        }

        else
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs();
          }

          v13 = 0;
        }
      }

      else
      {
        v18 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          identifier = 0;
          goto LABEL_23;
        }

        v13 = sub_100123258();
        _NRLogWithArgs();
      }

LABEL_23:
      goto LABEL_24;
    }

    v16 = sub_100123258();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_30:
      identifier = sub_100123258();
      _NRLogWithArgs();
      goto LABEL_23;
    }
  }

  else
  {
    v14 = sub_100123258();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      goto LABEL_30;
    }
  }

LABEL_24:
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  if (managerCopy)
  {
    if (connectCopy)
    {
      peer = [connectCopy peer];
      identifier = [peer identifier];

      if (!identifier)
      {
        v45 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          identifier = 0;
          goto LABEL_33;
        }

        v10 = sub_100123258();
        _NRLogWithArgs();
        goto LABEL_32;
      }

      v9 = sub_1001232AC(&self->super.isa, identifier);
      if (!v9)
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs();
        }

        v10 = 0;
        goto LABEL_32;
      }

      v10 = v9;
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      v11 = connectCopy;
      if (*(v10 + 12))
      {
        sub_10012357C(v10);
      }

      if (sub_100123380(v10) && (*(v10 + 8) & 1) == 0)
      {
        *(v10 + 8) = 1;
        WeakRetained = objc_loadWeakRetained(v10 + 2);
        sub_100126038(WeakRetained, *(v10 + 4));
      }

      objc_storeStrong(v10 + 12, connect);
      channel = [v11 channel];
      *(v10 + 13) = channel;
      if (channel)
      {
        os_channel_ring_id();
        v14 = *(v10 + 13);
        v15 = os_channel_rx_ring();
        *(v10 + 14) = v15;
        if (v15)
        {
          v16 = *(v10 + 13);
          os_channel_ring_id();
          v17 = *(v10 + 13);
          v18 = os_channel_tx_ring();
          *(v10 + 15) = v18;
          if (v18)
          {
            v19 = *(v10 + 13);
            fd = os_channel_get_fd();
            if ((fd & 0x80000000) != 0)
            {
              v53 = sub_100123258();
              v54 = _NRLogIsLevelEnabled();

              if (v54)
              {
                v55 = sub_100123258();
                _NRLogWithArgs();
              }

              goto LABEL_24;
            }

            v21 = fd;
            v22 = *(v10 + 3);
            v23 = dispatch_source_create(&_dispatch_source_type_read, v21, 0, v22);
            v24 = *(v10 + 16);
            *(v10 + 16) = v23;

            v25 = *(v10 + 16);
            if (v25)
            {
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_1001264E4;
              handler[3] = &unk_1001FD3C8;
              handler[4] = v10;
              dispatch_source_set_event_handler(v25, handler);
              v26 = *(v10 + 16);
              v67[0] = _NSConcreteStackBlock;
              v67[1] = 3221225472;
              v67[2] = nullsub_13;
              v67[3] = &unk_1001FD3C8;
              v27 = v11;
              v68 = v27;
              dispatch_source_set_cancel_handler(v26, v67);
              dispatch_resume(*(v10 + 16));
              v28 = *(v10 + 3);
              v29 = dispatch_source_create(&_dispatch_source_type_write, v21, 0, v28);
              v30 = *(v10 + 17);
              *(v10 + 17) = v29;

              v31 = *(v10 + 17);
              if (v31)
              {
                v66[0] = _NSConcreteStackBlock;
                v66[1] = 3221225472;
                v66[2] = sub_1001266AC;
                v66[3] = &unk_1001FD3C8;
                v66[4] = v10;
                dispatch_source_set_event_handler(v31, v66);
                v32 = *(v10 + 17);
                v64[0] = _NSConcreteStackBlock;
                v64[1] = 3221225472;
                v64[2] = nullsub_14;
                v64[3] = &unk_1001FD3C8;
                v65 = v27;
                dispatch_source_set_cancel_handler(v32, v64);
                dispatch_resume(*(v10 + 17));
                *(v10 + 9) = 0;
                v33 = [NRDeviceIdentifier alloc];
                uuid = [*(v10 + 4) uuid];
                v35 = [v33 initWithUUID:uuid];

                v36 = [[NRBluetoothPacketParser alloc] initWithDeviceIdentifier:v35 queue:*(v10 + 3)];
                [v36 setDirect:1];
                [v36 setControlOnly:1];
                v37 = [v36 createReadContextForPriority:1 readAvailableCallback:nullsub_15 readAvailableContext:v10];
                v38 = [v36 createWriteContextForPriority:1 writeOutputCallback:sub_10012D3D4 writeOutputContext:v10];
                v63[0] = _NSConcreteStackBlock;
                v63[1] = 3221225472;
                v63[2] = sub_100126718;
                v63[3] = &unk_1001FBF78;
                v63[4] = v10;
                [v36 setReceiveXPCCommDictionaryHandler:v63];
                v39 = *(v10 + 18);
                *(v10 + 18) = v36;
                v40 = v36;

                *(v10 + 19) = v37;
                *(v10 + 20) = v38;
                [v40 start];
                [v40 sendXPCCommDictionary:&off_10020A178];
                sub_100126844(v10);
                sub_100127188(v10);
              }

              else
              {
                v59 = sub_100123258();
                v60 = _NRLogIsLevelEnabled();

                if (v60)
                {
                  v61 = sub_100123258();
                  _NRLogWithArgs();
                }
              }

              goto LABEL_24;
            }

            v56 = sub_100123258();
            v57 = _NRLogIsLevelEnabled();

            if (v57)
            {
              goto LABEL_52;
            }

LABEL_24:

LABEL_32:
LABEL_33:

            goto LABEL_34;
          }

          v51 = sub_100123258();
          v52 = _NRLogIsLevelEnabled();

          if (!v52)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v49 = sub_100123258();
          v50 = _NRLogIsLevelEnabled();

          if (!v50)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v47 = sub_100123258();
        v48 = _NRLogIsLevelEnabled();

        if (!v48)
        {
          goto LABEL_24;
        }
      }

LABEL_52:
      v58 = sub_100123258();
      _NRLogWithArgs();

      goto LABEL_24;
    }

    v43 = sub_100123258();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
LABEL_40:
      identifier = sub_100123258();
      _NRLogWithArgs();
      goto LABEL_33;
    }
  }

  else
  {
    v41 = sub_100123258();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      goto LABEL_40;
    }
  }

LABEL_34:
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self)
  {
    if (self->_pipeManager != stateCopy)
    {
      goto LABEL_18;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_18;
  }

  state = [(CBScalablePipeManager *)stateCopy state];
  if (state)
  {
    if (state == 5)
    {
      if (self)
      {
        pipeManager = self->_pipeManager;
      }

      else
      {
        pipeManager = 0;
      }

      v21[0] = CBScalablePipeOptionTransport;
      v21[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v22[0] = &off_100209D28;
      v22[1] = &__kCFBooleanTrue;
      v21[2] = CBScalablePipeOptionRequiresEncryption;
      v22[2] = &__kCFBooleanFalse;
      v8 = pipeManager;
      v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
      [(CBScalablePipeManager *)v8 registerEndpoint:@"com.apple.terminusPairing" type:1 priority:2 options:v9];
    }

    else
    {
      if (self)
      {
        [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:@"com.apple.terminusPairing"];
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        pairingCandidates = self->_pairingCandidates;
      }

      else
      {
        [0 unregisterEndpoint:@"com.apple.terminusPairing"];
        pairingCandidates = 0;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
      }

      v9 = pairingCandidates;
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = sub_100125108(&self->super.isa, *(*(&v16 + 1) + 8 * i));
            sub_10012357C(v15);
          }

          v12 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

LABEL_18:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    if (self->_centralManager != manager)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      goto LABEL_25;
    }
  }

  else if (manager)
  {
    goto LABEL_3;
  }

  identifier = [peripheralCopy identifier];
  v10 = sub_1001232AC(&self->super.isa, identifier);

  if (v10)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    sub_10012DB18(&self->super.isa, v10);
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }
  }

LABEL_25:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    if (self->_centralManager != manager)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      goto LABEL_25;
    }
  }

  else if (manager)
  {
    goto LABEL_3;
  }

  identifier = [peripheralCopy identifier];
  v10 = sub_1001232AC(&self->super.isa, identifier);

  if (v10)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    sub_10012DB18(&self->super.isa, v10);
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }
  }

LABEL_25:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (self)
  {
    centralManager = self->_centralManager;
  }

  else
  {
    centralManager = 0;
  }

  v10 = peripheralCopy;
  if (centralManager == manager)
  {
    identifier = [peripheralCopy identifier];
    v9 = sub_1001232AC(&self->super.isa, identifier);

    if (v9)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_21;
      }

      if (qword_1002291E8 == -1)
      {
LABEL_20:
        _NRLogWithArgs();
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_21;
      }

      if (qword_1002291E8 == -1)
      {
        goto LABEL_20;
      }
    }

    dispatch_once(&qword_1002291E8, &stru_1001FC218);
    goto LABEL_20;
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

LABEL_22:
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self)
  {
    if (self->_centralManager != stateCopy)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      goto LABEL_26;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_3;
  }

  state = [(CBCentralManager *)stateCopy state];
  if (state)
  {
    if (state == 5)
    {
      if (self)
      {
        pairingCriteria = [(NRDevicePairingManagerInfo *)self->_info pairingCriteria];
        migrationPairing = [pairingCriteria migrationPairing];

        if (migrationPairing)
        {
          sub_10012DBA8(&self->super.isa);
        }
      }

      sub_100124A48(&self->super.isa);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      if (self)
      {
        pairingCandidates = self->_pairingCandidates;
      }

      else
      {
        pairingCandidates = 0;
      }

      v10 = pairingCandidates;
      v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = sub_100125108(&self->super.isa, *(*(&v16 + 1) + 8 * i));
            sub_1001242E0(v15, 1);
          }

          v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

LABEL_26:
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v3 = qword_1002291E0;
    [stateCopy state];
    _NRLogWithArgs();
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (self)
  {
    if (self->_pairingAgent == agentCopy)
    {
      goto LABEL_3;
    }
  }

  else if (!agentCopy)
  {
LABEL_3:
    identifier = [pairingCopy identifier];
    v13 = sub_1001232AC(&self->super.isa, identifier);

    if (!v13)
    {
      v42 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v44 = sub_100123258();
        identifier2 = [pairingCopy identifier];
        _NRLogWithArgs();
      }

      goto LABEL_56;
    }

    if (sub_100123434(v13))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      *(v13 + 11) = 0;
      v84 = errorCopy;
      v14 = errorCopy;
      v15 = v14;
      if (v14 && [v14 code] == 1)
      {
        v16 = CBInternalErrorDomain;
        domain = [v15 domain];
        identifier = [domain isEqualToString:v16];

        if (identifier)
        {
          userInfo = [v15 userInfo];
          domain = [userInfo objectForKeyedSubscript:CBOriginalPeerIdentifierErrorKey];

          v82 = domain;
          if (!domain)
          {
            v58 = sub_100123258();
            v59 = _NRLogIsLevelEnabled();

            if (v59)
            {
              v60 = sub_100123258();
              _NRLogWithArgs();
            }

            sub_10012B2F8(self, 0xFFFFFFFFFFFFF442);

            goto LABEL_55;
          }

          identifier = &v80;
          v18 = xpc_dictionary_create(0, 0, 0);
          if (v18)
          {
            v19 = nrXPCKeyUnderlyingError;
            v83 = v18;
            v20 = v15;
            if (v19)
            {
              *uuid = 0;
              v81 = v20;
              v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:uuid];
              v22 = *uuid;
              if (v22 || ![v21 length])
              {
                v69 = sub_100123258();
                v70 = _NRLogIsLevelEnabled();

                if (v70)
                {
                  v71 = sub_100123258();
                  _NRLogWithArgs();
                }
              }

              else
              {
                bytes = [v21 bytes];
                v24 = [v21 length];
                xpc_dictionary_set_data(v83, v19, bytes, v24);
              }

              v20 = v81;
            }

            else
            {
              v63 = sub_100123258();
              v64 = _NRLogIsLevelEnabled();

              if (v64)
              {
                v65 = sub_100123258();
                _NRLogWithArgs();
              }
            }

            v25 = v83;
            v26 = nrXPCKeyBluetoothUUID;
            v27 = v25;
            if (v26)
            {
              *uuid = 0;
              v86 = 0;
              v28 = v82;
              [v82 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v27, v26, uuid);
            }

            else
            {
              v66 = sub_100123258();
              v67 = _NRLogIsLevelEnabled();

              v28 = v82;
              if (v67)
              {
                v68 = sub_100123258();
                _NRLogWithArgs();
              }
            }

            v29 = sub_100168BE8(NRDLocalDevice, v28, 0);
            if (!v29)
            {
              goto LABEL_34;
            }

            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              _NRLogWithArgs();
            }

            v30 = nrXPCKeyNRUUID;
            v31 = v29->_nrUUID;
            v32 = v27;
            v33 = v31;
            v34 = v33;
            if (v30)
            {
              if (v33)
              {
                *uuid = 0;
                v86 = 0;
                [(NSUUID *)v33 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v32, v30, uuid);
LABEL_33:

                v28 = v82;
LABEL_34:
                if (self)
                {
                  sub_1001246D8(self, 0xFFFFFFFFFFFFF442, 0xCuLL, v27);
                  sub_100129A18(self);
                }

LABEL_55:
                errorCopy = v84;
                goto LABEL_56;
              }

              v74 = sub_100123258();
              v75 = _NRLogIsLevelEnabled();

              if (!v75)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v72 = sub_100123258();
              v73 = _NRLogIsLevelEnabled();

              if (!v73)
              {
                goto LABEL_33;
              }
            }

            v76 = sub_100123258();
            _NRLogWithArgs();

            goto LABEL_33;
          }

          v61 = sub_100123258();
          v62 = _NRLogIsLevelEnabled();

          if (!v62)
          {
            goto LABEL_63;
          }

          v47 = sub_100123258();
          goto LABEL_62;
        }
      }

      else
      {
      }

      v38 = xpc_dictionary_create(0, 0, 0);
      if (v38)
      {
        v39 = nrXPCKeyUnderlyingError;
        identifier = v38;
        domain = v15;
        if (v39)
        {
          if (v15)
          {
            *uuid = 0;
            v40 = [NSKeyedArchiver archivedDataWithRootObject:domain requiringSecureCoding:1 error:uuid];
            v41 = *uuid;
            if (v41 || ![v40 length])
            {
              v55 = sub_100123258();
              v56 = _NRLogIsLevelEnabled();

              if (v56)
              {
                v57 = sub_100123258();
                _NRLogWithArgs();
              }
            }

            else
            {
              xpc_dictionary_set_data(identifier, v39, [v40 bytes], objc_msgSend(v40, "length"));
            }

            goto LABEL_52;
          }

          v53 = sub_100123258();
          v54 = _NRLogIsLevelEnabled();

          if (v54)
          {
            v52 = sub_100123258();
            goto LABEL_68;
          }

LABEL_52:

          if (self)
          {
            sub_1001246D8(self, 0xFFFFFFFFFFFFF442, 0xCuLL, identifier);
            sub_100129A18(self);
          }

          goto LABEL_55;
        }

LABEL_64:
        v50 = sub_100123258();
        v51 = _NRLogIsLevelEnabled();

        if (v51)
        {
          v52 = sub_100123258();
LABEL_68:
          _NRLogWithArgs();

          goto LABEL_52;
        }

        goto LABEL_52;
      }

      v45 = sub_100123258();
      v46 = _NRLogIsLevelEnabled();

      if (!v46)
      {
LABEL_63:
        agentCopy = _os_log_pack_size();
        pairingCopy = &v80 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        sub_1000F4320(v49, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
        goto LABEL_64;
      }

      v47 = sub_100123258();
LABEL_62:
      _NRLogWithArgs();

      goto LABEL_63;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_56;
    }

    if (qword_1002291E8 == -1)
    {
      v35 = qword_1002291E0;
      if (!self)
      {
        goto LABEL_43;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v35 = qword_1002291E0;
      if (!self)
      {
        goto LABEL_43;
      }
    }

    inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_43:
    v37 = v35;
    _NRLogWithArgs();

    goto LABEL_56;
  }

  v77 = sub_100123258();
  v78 = _NRLogIsLevelEnabled();

  if (!v78)
  {
    goto LABEL_57;
  }

  v13 = sub_100123258();
  _NRLogWithArgs();
LABEL_56:

LABEL_57:
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  v7 = pairingCopy;
  if (self)
  {
    if (self->_pairingAgent == agent)
    {
      goto LABEL_3;
    }
  }

  else if (!agent)
  {
LABEL_3:
    identifier = [pairingCopy identifier];
    v9 = sub_1001232AC(&self->super.isa, identifier);

    if (!v9)
    {
      v19 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_25;
      }

      v18 = sub_100123258();
      identifier2 = [v7 identifier];
      _NRLogWithArgs();

      goto LABEL_24;
    }

    if (sub_100123434(v9))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v25 = 1175;
        v26 = v9;
        v23 = "";
        v24 = "[NRDevicePairingManagerContext pairingAgent:peerDidCompletePairing:]";
        _NRLogWithArgs();
      }

      *(v9 + 11) = 0;
      sub_100172950(NRDLocalDevice, *(v9 + 248));
      identifier3 = [v7 identifier];
      sub_10017440C(NRDLocalDevice, identifier3, *(v9 + 248));

      if (self)
      {
        pairingAgent = self->_pairingAgent;
        if (pairingAgent)
        {
          [(CBPairingAgent *)pairingAgent setDelegate:0];
          v12 = self->_pairingAgent;
          self->_pairingAgent = 0;
        }
      }

      [v7 tag:{@"IsAppleWatch", v23, v24, v25, v26}];
      sub_100128FC4(v9);
      objc_initWeak(&location, self);
      v13 = dispatch_time(0, 200000000);
      if (self)
      {
        queue = self->_queue;
      }

      else
      {
        queue = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012FDA8;
      block[3] = &unk_1001FD0D8;
      v15 = queue;
      objc_copyWeak(&v30, &location);
      v29 = v9;
      dispatch_after(v13, v15, block);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_25;
    }

    if (qword_1002291E8 == -1)
    {
      v16 = qword_1002291E0;
      if (!self)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v16 = qword_1002291E0;
      if (!self)
      {
        goto LABEL_23;
      }
    }

    inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_23:
    v18 = v16;
    _NRLogWithArgs();
LABEL_24:

    goto LABEL_25;
  }

  v21 = sub_100123258();
  v22 = _NRLogIsLevelEnabled();

  if (!v22)
  {
    goto LABEL_26;
  }

  v9 = sub_100123258();
  _NRLogWithArgs();
LABEL_25:

LABEL_26:
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  v13 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    typeCopy2 = type;
    v40 = pairingCopy;
    v37 = 1091;
    selfCopy6 = self;
    v35 = "";
    v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
    _NRLogWithArgs();
  }

  if (self)
  {
    if (self->_pairingAgent == agentCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!agentCopy)
  {
LABEL_9:
    if (type != 5)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        selfCopy6 = self;
        typeCopy2 = type;
        v37 = 1144;
        v35 = "";
        v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
        _NRLogWithArgs();
      }

      goto LABEL_38;
    }

    identifier = [pairingCopy identifier];
    v15 = sub_1001232AC(&self->super.isa, identifier);

    if (!v15)
    {
      v25 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_37;
      }

      v24 = sub_100123258();
      [pairingCopy identifier];
      typeCopy2 = selfCopy6 = self;
      v37 = 1104;
      v35 = "";
      v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
      _NRLogWithArgs();

LABEL_36:
LABEL_37:

LABEL_38:
      if (v13[61] != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (v13[61] != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        selfCopy6 = self;
        typeCopy2 = pairingCopy;
        v37 = 1149;
        v35 = "";
        v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
        _NRLogWithArgs();
      }

      [(CBPairingAgent *)agentCopy respondToPairingRequest:pairingCopy type:type accept:0 data:0, v35, v36, v37, selfCopy6, typeCopy2, v40];
      goto LABEL_45;
    }

    if (sub_100123434(&v15->super.isa))
    {
      peripheralManager = v15[1]._peripheralManager;
      if (peripheralManager)
      {
        v17 = sub_100163B2C(NRDLocalDevice, peripheralManager, 0);
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 104);
          if (v19)
          {
            v20 = v19;
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              selfCopy6 = v15;
              typeCopy2 = pairingCopy;
              v37 = 1129;
              v35 = "";
              v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
              _NRLogWithArgs();
            }

            v41 = CBPairingAgentPairingDataOOBTKKey;
            v42 = v20;
            v21 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, v35, v36, v37, selfCopy6, typeCopy2, v40];
            [(CBPairingAgent *)agentCopy respondToPairingRequest:pairingCopy type:5 accept:1 data:v21];

            goto LABEL_45;
          }
        }

        v32 = sub_100123258();
        v33 = _NRLogIsLevelEnabled();

        if (v33)
        {
          v34 = sub_100123258();
          v37 = 1141;
          selfCopy6 = self;
          v35 = "";
          v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
          _NRLogWithArgs();
        }

        v13 = &qword_100229000;
        goto LABEL_38;
      }

      v27 = sub_100123258();
      v28 = _NRLogIsLevelEnabled();

      if (!v28)
      {
        goto LABEL_37;
      }

      v24 = sub_100123258();
      selfCopy6 = self;
      typeCopy2 = v15;
      v37 = 1122;
      v35 = "";
      v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
      goto LABEL_35;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_37;
    }

    if (qword_1002291E8 == -1)
    {
      v22 = qword_1002291E0;
      if (self)
      {
LABEL_33:
        inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_34:
        v24 = v22;
        selfCopy6 = self;
        typeCopy2 = inProgressPairingCandidateIdentifier;
        v37 = 1117;
        v35 = "";
        v36 = "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]";
LABEL_35:
        _NRLogWithArgs();
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v22 = qword_1002291E0;
      if (self)
      {
        goto LABEL_33;
      }
    }

    inProgressPairingCandidateIdentifier = 0;
    goto LABEL_34;
  }

  v29 = sub_100123258();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = sub_100123258();
    _NRLogWithArgs();
  }

LABEL_45:
}

- (NSString)description
{
  if (self)
  {
    self = self->_info;
  }

  return [(NRDevicePairingManagerContext *)self description];
}

- (void)dealloc
{
  sub_100130704(self);
  v3.receiver = self;
  v3.super_class = NRDevicePairingManagerContext;
  [(NRDevicePairingManagerContext *)&v3 dealloc];
}

@end