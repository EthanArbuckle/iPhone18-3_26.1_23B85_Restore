@interface NRLinkManagerBluetooth
- (id)copyStatusString;
- (void)cancel;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
- (void)peripheral:(id)a3 didCloseL2CAPChannel:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didCloseL2CAPChannel:(id)a4;
- (void)peripheralManager:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didStopAdvertisingWithError:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5;
- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5;
- (void)scalablePipeManagerDidUpdateState:(id)a3;
@end

@implementation NRLinkManagerBluetooth

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (self)
  {
    v10 = self->_centralManager;
    if (v10)
    {
      centralManager = self->_centralManager;

      if (centralManager == v12)
      {
        [(NRLinkManager *)self reportEvent:4004 detailsFormat:@"peripheral %@ error %@", v8, v9];
        sub_10002DB64(&self->super.super.isa);
      }
    }
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (self)
  {
    v10 = self->_centralManager;
    if (v10)
    {
      centralManager = self->_centralManager;

      if (centralManager == v17)
      {
        [(NRLinkManager *)self reportEvent:4002 detailsFormat:@"peripheral %@ error %@", v8, v9];
        v12 = v9;
        v13 = v12;
        if (v12 && [(NRAnalyticsLinkManagerBluetooth *)v12 code]== 14)
        {
          v14 = [(NRAnalyticsLinkManagerBluetooth *)v13 domain];
          v15 = [v14 isEqualToString:CBErrorDomain];

          if (!v15)
          {
LABEL_11:
            sub_10002DB64(&self->super.super.isa);
            goto LABEL_12;
          }

          [(NRLinkManager *)self reportEvent:4015 detailsFormat:@"peripheral %@", v8];
          v16 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
          v13 = v16;
          if (v16)
          {
            v16->_peerRemovedPairingInformation = 1;
          }

          [(NRAnalyticsLinkManagerBluetooth *)v16 submit];
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self)
  {
    v7 = self->_centralManager;
    if (v7)
    {
      centralManager = self->_centralManager;

      if (centralManager == v10)
      {
        v9 = [v6 description];
        [(NRLinkManager *)self reportEvent:4001 details:v9];

        sub_10002E6F4(self);
        sub_10002E8E0(&self->super.super.isa, v6);
      }
    }
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v6 = a3;
  if (self)
  {
    v4 = self->_centralManager;
    if (v4)
    {
      centralManager = self->_centralManager;

      if (centralManager == v6)
      {
        sub_10002FEC4(self, [(CBCentralManager *)v6 state]);
      }
    }
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v41 = a4;
  v9 = a5;
  if (!self)
  {
    if (a3)
    {
      goto LABEL_53;
    }

    v10 = objc_alloc_init(NSMutableArray);
    goto LABEL_5;
  }

  if (self->_centralManager != a3)
  {
    goto LABEL_53;
  }

  if (!self->_discoveredPeripherals)
  {
    v10 = objc_alloc_init(NSMutableArray);
    objc_storeStrong(&self->_discoveredPeripherals, v10);
LABEL_5:
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    v36 = 2839;
    v37 = v41;
    v34 = "";
    v35 = "[NRLinkManagerBluetooth centralManager:didDiscoverPeripheral:advertisementData:RSSI:]";
    _NRLogWithArgs();
  }

  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
    if ([v11 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v38 = v9;
      if (self)
      {
        scanRequests = self->_scanRequests;
      }

      else
      {
        scanRequests = 0;
      }

      obj = scanRequests;
      v13 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v40 = *v47;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v47 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            if (self)
            {
              v18 = self->_scanRequests;
            }

            else
            {
              v18 = 0;
            }

            v19 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * i), v34, v35, v36, v37];
            v20 = v19;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            if (v19)
            {
              v21 = *(v19 + 8);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v43;
              while (2)
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v43 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  if ([v11 containsObject:*(*(&v42 + 1) + 8 * j)])
                  {
                    if (self)
                    {
                      l2CAPMonitorRequests = self->_l2CAPMonitorRequests;
                    }

                    else
                    {
                      l2CAPMonitorRequests = 0;
                    }

                    v28 = [(NSMutableDictionary *)l2CAPMonitorRequests objectForKeyedSubscript:v17];
                    v29 = v28;
                    if (v28)
                    {
                      v30 = *(v28 + 16);
                    }

                    else
                    {
                      v30 = 0;
                    }

                    v31 = v30;
                    v32 = [v41 identifier];
                    if (v29)
                    {
                      v33 = v29[4];
                    }

                    else
                    {
                      v33 = 0;
                    }

                    (v30)[2](v31, 1, v32, v33);

                    if (self)
                    {
                      discoveredPeripherals = self->_discoveredPeripherals;
                    }

                    else
                    {
                      discoveredPeripherals = 0;
                    }

                    [(NSMutableArray *)discoveredPeripherals addObject:v41];

                    goto LABEL_22;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

LABEL_22:
          }

          v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v14);
      }

      v9 = v38;
    }
  }

LABEL_53:
}

- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v60 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_85;
    }

LABEL_89:
    v64 = sub_10002D6B4();
    _NRLogWithArgs();

    goto LABEL_85;
  }

  if (!v9)
  {
    v62 = sub_10002D6B4();
    v63 = _NRLogIsLevelEnabled();

    if (!v63)
    {
      goto LABEL_85;
    }

    goto LABEL_89;
  }

  v11 = [v9 peer];
  v12 = [v11 identifier];

  if (!v12)
  {
    v65 = sub_10002D6B4();
    v66 = _NRLogIsLevelEnabled();

    if (v66)
    {
      v67 = sub_10002D6B4();
      _NRLogWithArgs();
    }

    goto LABEL_84;
  }

  v13 = v12;
  objc_opt_self();
  v14 = sub_100168BE8(NRDLocalDevice, v13, 1);
  obj = v13;

  if ((sub_10003615C(self, v14) & 1) == 0)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_83;
    }

    if (qword_100228F70 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_92;
  }

  v76 = v10;
  v15 = [v9 priority];
  v16 = [v9 type];
  if ((v15 - 1) >= 3)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_83;
    }

    if (qword_100228F70 == -1)
    {
      goto LABEL_29;
    }

LABEL_92:
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
LABEL_29:
    _NRLogWithArgs();
    goto LABEL_83;
  }

  v75 = v9;
  if (!self)
  {
    goto LABEL_93;
  }

  v17 = v16;
  v18 = dword_100196520[(v15 - 1)];
  v19 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
  if (v16 == 2)
  {
    v19 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
  }

  v20 = *(&self->super.super.isa + *v19);
  v21 = [NSNumber numberWithInteger:v15];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
LABEL_93:
    v68 = sub_10002D6B4();
    v69 = _NRLogIsLevelEnabled();

    v9 = v75;
    v10 = v76;
    if (v69)
    {
      v70 = sub_10002D6B4();
      _NRLogWithArgs();
    }

    goto LABEL_83;
  }

  v23 = v18;
  v9 = v75;
  [(NRLinkManager *)self reportEvent:v23 detailsFormat:@"pipe %@ bluetoothUUID %@ error %@", v75, obj, v76];
  [*(v22 + 16) removeObject:v75];
  sub_100038C64(self, v15, v17 == 2);
  v73 = v14;
  v74 = v12;
  v72 = v22;
  if (v15 == 3)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v24 = self->_links;
    v34 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v88;
      do
      {
        v37 = 0;
        do
        {
          if (*v88 != v36)
          {
            objc_enumerationMutation(v24);
          }

          v38 = *(*(&v87 + 1) + 8 * v37);
          if (v38)
          {
            v39 = *(v38 + 391);
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;
          v41 = [v40 isEqual:obj];

          if (v41)
          {
            sub_1000AE684(v38, 0);
            goto LABEL_75;
          }

          v37 = v37 + 1;
        }

        while (v35 != v37);
        v42 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v87 objects:v97 count:16];
        v35 = v42;
      }

      while (v42);
    }
  }

  else
  {
    if (v15 != 2)
    {
      v71 = v8;
      v43 = objc_alloc_init(NSMutableArray);
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v44 = self->_links;
      v45 = [(NSMutableSet *)v44 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v84;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v84 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v83 + 1) + 8 * i);
            if (v49)
            {
              v50 = *(v49 + 391);
            }

            else
            {
              v50 = 0;
            }

            v51 = v50;
            v52 = [v51 isEqual:obj];

            if (v52)
            {
              [v43 addObject:v49];
            }
          }

          v46 = [(NSMutableSet *)v44 countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v46);
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obja = v43;
      v53 = [obja countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v80;
        do
        {
          for (j = 0; j != v54; j = j + 1)
          {
            if (*v80 != v55)
            {
              objc_enumerationMutation(obja);
            }

            v57 = *(*(&v79 + 1) + 8 * j);
            v58 = [v57 nrUUID];
            if (v57)
            {
              [v57 setNoTransport:1];
              v57[273] = 1;
              [v57 cancelWithReason:@"Bluetooth Pipe Disconnected"];
            }

            WeakRetained = objc_loadWeakRetained(&self->_bluetoothManagerDelegate);
            [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v58];

            sub_100037950(self, v58);
          }

          v54 = [obja countByEnumeratingWithState:&v79 objects:v95 count:16];
        }

        while (v54);
      }

      v8 = v71;
      v9 = v75;
      v10 = v76;
      v14 = v73;
      v12 = v74;
      if (self->_peripheralManager)
      {
        if (!v73 || (~LODWORD(v73->_databaseFlags) & 3) != 0)
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            _NRLogWithArgs();
          }
        }

        else
        {
          sub_1000347A4(self);
        }
      }

      goto LABEL_83;
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v24 = self->_links;
    v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v91 objects:v98 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v92;
      do
      {
        v28 = 0;
        do
        {
          if (*v92 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v91 + 1) + 8 * v28);
          if (v29)
          {
            v30 = *(v29 + 391);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v32 = [v31 isEqual:obj];

          if (v32)
          {
            sub_1000AF784(v29, 0);
            goto LABEL_75;
          }

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v33 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v91 objects:v98 count:16];
        v26 = v33;
      }

      while (v33);
    }
  }

LABEL_75:

  v10 = v76;
  v14 = v73;
LABEL_83:

LABEL_84:
LABEL_85:
}

- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v24 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    v26 = sub_10002D6B4();
    v27 = _NRLogIsLevelEnabled();

    if (!v27)
    {
      goto LABEL_23;
    }

LABEL_27:
    v10 = sub_10002D6B4();
    _NRLogWithArgs();
    goto LABEL_22;
  }

  v9 = [v7 peer];
  v10 = [v9 identifier];

  if (!v10)
  {
    v28 = sub_10002D6B4();
    v29 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      goto LABEL_22;
    }

    v12 = sub_10002D6B4();
    goto LABEL_20;
  }

  v11 = v10;
  objc_opt_self();
  v12 = sub_100168BE8(NRDLocalDevice, v11, 1);

  if ((sub_10003615C(self, v12) & 1) == 0)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_21;
    }

    if (qword_100228F70 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  self->_noBTCallbackSimCrashGenerated = 0;
  v13 = [v8 priority];
  v14 = [v8 type];
  if ((v13 - 1) < 3)
  {
    v15 = dword_100196514[(v13 - 1)];
    v16 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
    if (v14 == 2)
    {
      v16 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
    }

    v17 = *(&self->super.super.isa + *v16);
    v18 = [NSNumber numberWithInteger:v13];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      [v19[2] addObject:v8];
      v20 = [v8 peer];
      v21 = [v20 identifier];
      [(NRLinkManager *)self reportEvent:v15 detailsFormat:@"pipe %@ bluetoothUUID %@", v8, v21];

      objc_initWeak(&location, v19);
      v22 = dispatch_time(0x8000000000000000, 500000000);
      v23 = self->super._queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000391F4;
      block[3] = &unk_1001FB8D8;
      objc_copyWeak(&v36, &location);
      v34 = v8;
      v35 = self;
      dispatch_after(v22, v23, block);

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    else
    {
      v30 = sub_10002D6B4();
      v31 = _NRLogIsLevelEnabled();

      if (v31)
      {
        v32 = sub_10002D6B4();
        _NRLogWithArgs();
      }
    }

    goto LABEL_21;
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_21;
  }

  if (qword_100228F70 != -1)
  {
LABEL_32:
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

LABEL_20:
  _NRLogWithArgs();
LABEL_21:

LABEL_22:
LABEL_23:
}

- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4
{
  v25 = a4;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v7 = queue;
  dispatch_assert_queue_V2(v7);

  if (a3)
  {
    if (v25)
    {
      v8 = v25;
      v9 = v8;
      if (!self)
      {
LABEL_20:

        goto LABEL_21;
      }

      if ([v8 isEqualToString:@"com.apple.terminusLink"])
      {
        v10 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AA0];
        v11 = v10;
        if (v10)
        {
          *(v10 + 8) = 0;
        }

        [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "Medium", "pipe"];
        sub_100038C64(self, 1, 0);

        sub_10002F840(self, 2, 0);
        sub_10002F840(self, 3, 0);
        goto LABEL_20;
      }

      if ([v9 isEqualToString:@"com.apple.terminusLink.urgent"])
      {
        v12 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AB8];
        v13 = v12;
        if (v12)
        {
          *(v12 + 8) = 0;
        }

        [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "High", "pipe"];
        v14 = self;
        v15 = 2;
      }

      else
      {
        if (![v9 isEqualToString:@"com.apple.terminusLink.datagram"])
        {
          if ([v9 isEqualToString:@"com.apple.terminusLink.p2p"])
          {
            v18 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AA0];
            v13 = v18;
            if (v18)
            {
              *(v18 + 8) = 0;
            }

            [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "Medium", "p2pPipe"];
            v14 = self;
            v15 = 1;
            v17 = 1;
          }

          else if ([v9 isEqualToString:@"com.apple.terminusLink.urgent.p2p"])
          {
            v19 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AB8];
            v13 = v19;
            if (v19)
            {
              *(v19 + 8) = 0;
            }

            [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "High", "p2pPipe"];
            v14 = self;
            v15 = 2;
            v17 = 1;
          }

          else
          {
            if (![v9 isEqualToString:@"com.apple.terminusLink.datagram.p2p"])
            {
              [(NRLinkManager *)self reportEvent:4208 details:v9];
              goto LABEL_20;
            }

            v20 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AD0];
            v13 = v20;
            if (v20)
            {
              *(v20 + 8) = 0;
            }

            [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "Isochronous", "p2pPipe"];
            v14 = self;
            v15 = 3;
            v17 = 1;
          }

          goto LABEL_19;
        }

        v16 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AD0];
        v13 = v16;
        if (v16)
        {
          *(v16 + 8) = 0;
        }

        [(NRLinkManager *)self reportEvent:4207 detailsFormat:@"%s %s", "Isochronous", "pipe"];
        v14 = self;
        v15 = 3;
      }

      v17 = 0;
LABEL_19:
      sub_100038C64(v14, v15, v17);

      goto LABEL_20;
    }

    v23 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_40:
      v9 = sub_10002D6B4();
      _NRLogWithArgs();
      goto LABEL_20;
    }
  }

  else
  {
    v21 = sub_10002D6B4();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      goto LABEL_40;
    }
  }

LABEL_21:
}

- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5
{
  v33 = a4;
  v8 = a5;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v10 = queue;
  dispatch_assert_queue_V2(v10);

  if (a3)
  {
    if (v33)
    {
      v11 = v33;
      v12 = v8;
      if (!self)
      {
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      if ([v11 isEqualToString:@"com.apple.terminusLink"])
      {
        v13 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AA0];
        v14 = v13;
        if (v12)
        {
          if (v13)
          {
            *(v13 + 8) = 0;
          }

          v15 = [v12 localizedDescription];
          v32 = v15;
          v16 = "pipe";
LABEL_11:
          [(NRLinkManager *)self reportEvent:4204 detailsFormat:@"%s %s error %@", "Medium", v16, v32];
LABEL_25:

LABEL_49:
          goto LABEL_50;
        }

        if (v13)
        {
          *(v13 + 8) = 2;
        }

        v22 = "pipe";
LABEL_29:
        [(NRLinkManager *)self reportEvent:4202 detailsFormat:@"%s %s", "Medium", v22];

        sub_10002E6F4(self);
        goto LABEL_50;
      }

      if ([v11 isEqualToString:@"com.apple.terminusLink.urgent"])
      {
        v17 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AB8];
        v14 = v17;
        if (v12)
        {
          if (v17)
          {
            *(v17 + 8) = 0;
          }

          v18 = [v12 localizedDescription];
          v15 = v18;
          v19 = "pipe";
LABEL_17:
          v20 = "High";
LABEL_24:
          [(NRLinkManager *)self reportEvent:4204 detailsFormat:@"%s %s error %@", v20, v19, v18];
          goto LABEL_25;
        }

        if (v17)
        {
          *(v17 + 8) = 2;
        }

        v24 = "pipe";
LABEL_38:
        v25 = "High";
LABEL_48:
        [(NRLinkManager *)self reportEvent:4202 detailsFormat:@"%s %s", v25, v24];
        goto LABEL_49;
      }

      if ([v11 isEqualToString:@"com.apple.terminusLink.datagram"])
      {
        v21 = [(NSMutableDictionary *)self->_pipeRegistrations objectForKeyedSubscript:&off_100209AD0];
        v14 = v21;
        if (v12)
        {
          if (v21)
          {
            *(v21 + 8) = 0;
          }

          v18 = [v12 localizedDescription];
          v15 = v18;
          v19 = "pipe";
LABEL_23:
          v20 = "Isochronous";
          goto LABEL_24;
        }

        if (v21)
        {
          *(v21 + 8) = 2;
        }

        v24 = "pipe";
      }

      else
      {
        if ([v11 isEqualToString:@"com.apple.terminusLink.p2p"])
        {
          v23 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AA0];
          v14 = v23;
          if (v12)
          {
            if (v23)
            {
              *(v23 + 8) = 0;
            }

            v15 = [v12 localizedDescription];
            v32 = v15;
            v16 = "p2pPipe";
            goto LABEL_11;
          }

          if (v23)
          {
            *(v23 + 8) = 2;
          }

          v22 = "p2pPipe";
          goto LABEL_29;
        }

        if ([v11 isEqualToString:@"com.apple.terminusLink.urgent.p2p"])
        {
          v26 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AB8];
          v14 = v26;
          if (v12)
          {
            if (v26)
            {
              *(v26 + 8) = 0;
            }

            v18 = [v12 localizedDescription];
            v15 = v18;
            v19 = "p2pPipe";
            goto LABEL_17;
          }

          if (v26)
          {
            *(v26 + 8) = 2;
          }

          v24 = "p2pPipe";
          goto LABEL_38;
        }

        if (![v11 isEqualToString:@"com.apple.terminusLink.datagram.p2p"])
        {
          if (!v12)
          {
            [(NRLinkManager *)self reportEvent:4203 detailsFormat:@"%@", v11];
            goto LABEL_50;
          }

          v14 = [v12 localizedDescription];
          [(NRLinkManager *)self reportEvent:4205 detailsFormat:@"%@ error %@", v11, v14];
          goto LABEL_49;
        }

        v27 = [(NSMutableDictionary *)self->_p2pPipeRegistrations objectForKeyedSubscript:&off_100209AD0];
        v14 = v27;
        if (v12)
        {
          if (v27)
          {
            *(v27 + 8) = 0;
          }

          v18 = [v12 localizedDescription];
          v15 = v18;
          v19 = "p2pPipe";
          goto LABEL_23;
        }

        if (v27)
        {
          *(v27 + 8) = 2;
        }

        v24 = "p2pPipe";
      }

      v25 = "Isochronous";
      goto LABEL_48;
    }

    v30 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_75:
      v11 = sub_10002D6B4();
      _NRLogWithArgs();
      goto LABEL_51;
    }
  }

  else
  {
    v28 = sub_10002D6B4();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      goto LABEL_75;
    }
  }

LABEL_52:
}

- (void)scalablePipeManagerDidUpdateState:(id)a3
{
  v4 = [a3 state];
  v5 = v4;
  if (v4 >= 6)
  {
    v6 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", v4];
  }

  else
  {
    v6 = *(&off_1001FA940 + v4);
  }

  [(NRLinkManager *)self reportEvent:4200 details:v6];

  sub_100032164(self, v5);
}

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    peripherals = self->_peripherals;
  }

  else
  {
    peripherals = 0;
  }

  if ([(NSArray *)peripherals containsObject:v8])
  {
    -[NRLinkManager reportEvent:detailsFormat:](self, "reportEvent:detailsFormat:", 4017, @"(central) psm %u, error: %@", [v9 PSM], v10);
    if (v10)
    {
      v12 = CBInternalErrorDomain;
      v13 = v10;
      if ([v13 code] == 24)
      {
        v14 = [v13 domain];
        v15 = [v14 isEqualToString:v12];

        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v16 = v13;
      if ([v16 code] == 22)
      {
        v17 = [v16 domain];
        v18 = [v17 isEqualToString:v12];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v19 = dispatch_time(0, 2000000000);
      if (self)
      {
        queue = self->super._queue;
      }

      else
      {
        queue = 0;
      }

      v21 = queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003A6CC;
      block[3] = &unk_1001FD060;
      block[4] = self;
      v23 = v8;
      dispatch_after(v19, v21, block);
    }

    else
    {
      sub_10003583C(&self->super.super.isa, v9);
    }
  }

LABEL_17:
}

- (void)peripheral:(id)a3 didCloseL2CAPChannel:(id)a4
{
  v6 = a3;
  sub_10003A738(&self->super.super.isa, a4);
  sub_10002E8E0(&self->super.super.isa, v6);
}

- (void)peripheralManager:(id)a3 didCloseL2CAPChannel:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (self)
  {
    v7 = self->_peripheralManager;
    if (v7)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == v9)
      {
        sub_10003A738(&self->super.super.isa, v6);
      }
    }
  }
}

- (void)peripheralManager:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (self)
  {
    v10 = self->_peripheralManager;
    if (v10)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == v12)
      {
        -[NRLinkManager reportEvent:detailsFormat:](self, "reportEvent:detailsFormat:", 4017, @"(peripheral) psm %u, error: %@", [v8 PSM], v9);
        if (!v9)
        {
          sub_10003583C(&self->super.super.isa, v8);
        }
      }
    }
  }
}

- (void)peripheralManager:(id)a3 didStopAdvertisingWithError:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self)
  {
    v7 = self->_peripheralManager;
    if (v7)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == v11)
      {
        currentAdvertisementState = self->_currentAdvertisementState;
        self->_currentAdvertisementState = 0;
        if (v6)
        {
          v10 = [v6 localizedDescription];
          [(NRLinkManager *)self reportEvent:3506 details:v10];
        }

        else
        {
          [(NRLinkManager *)self reportEvent:3505];
          if (currentAdvertisementState == 3)
          {
            sub_1000347A4(self);
          }
        }
      }
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self)
  {
    v7 = self->_peripheralManager;
    if (v7)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == v13)
      {
        if (v6)
        {
          v9 = [v6 domain];
          v10 = v9;
          if (v9 == CBErrorDomain)
          {
            v11 = [v6 code];

            if (v11 != 9)
            {
              v12 = [v6 localizedDescription];
              [(NRLinkManager *)self reportEvent:3503 details:v12];

              self->_currentAdvertisementState = 0;
            }
          }

          else
          {
          }
        }

        else
        {
          [(NRLinkManager *)self reportEvent:3502];
          self->_currentAdvertisementState = 4;
        }
      }
    }
  }
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v6 = a3;
  if (self)
  {
    v4 = self->_peripheralManager;
    if (v4)
    {
      peripheralManager = self->_peripheralManager;

      if (peripheralManager == v6)
      {
        sub_100032610(self, [(CBPeripheralManager *)v6 state]);
      }
    }
  }
}

- (void)linkDidReceiveData:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v9 = queue;
  dispatch_assert_queue_V2(v9);

  if (!v6)
  {
    v14 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_24;
    }

LABEL_28:
    v18 = sub_10002D6B4();
    _NRLogWithArgs();

    goto LABEL_24;
  }

  if (!v7)
  {
    v16 = sub_10002D6B4();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v10 = [v6 copyShortDescription];
  [(NRLinkManager *)self reportEvent:2008 details:v10];

  if (self && self->super._state == 1004)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    v11 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self)
      {
        v12 = self->super._queue;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003B690;
      block[3] = &unk_1001FD088;
      block[4] = self;
      v20 = v11;
      v21 = v7;
      dispatch_async(v13, block);
    }

    else
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }
    }
  }

LABEL_24:
}

- (void)linkIsUnavailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 copyShortDescription];
    [(NRLinkManager *)self reportEvent:2007 details:v7];

    if (self && self->super._state == 1004)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }

      goto LABEL_39;
    }

    v8 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }

      goto LABEL_38;
    }

    v9 = *(v8 + 399);
    v10 = [v9 type];

    v11 = [v8 nrUUID];
    v12 = sub_100163A30(NRDLocalDevice, v11);

    if (v12 && (v12[48] & 2) != 0)
    {
      if (*(v8 + 399) && (v8[273] & 1) == 0)
      {
        if (self)
        {
          pipeRegistrations = self->_pipeRegistrations;
        }

        else
        {
          pipeRegistrations = 0;
        }

        v23 = [(NSMutableDictionary *)pipeRegistrations objectForKeyedSubscript:&off_100209AA0];
        if (v23)
        {
          v13 = v23[8] == 2;
        }

        else
        {
          v13 = 0;
        }

        if (v10 == 2)
        {
          if (self)
          {
            p2pPipeRegistrations = self->_p2pPipeRegistrations;
          }

          else
          {
            p2pPipeRegistrations = 0;
          }

          v25 = [(NSMutableDictionary *)p2pPipeRegistrations objectForKeyedSubscript:&off_100209AA0];
          if (v25)
          {
            v26 = v25[8] == 2;
          }

          else
          {
            v26 = 0;
          }

          v13 |= v26;
        }

        goto LABEL_20;
      }

      if (*(v8 + 407) && (v8[273] & 1) == 0)
      {
        sub_100034ED0(self);
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v39 = v12;
        v40 = v10;
        if (self)
        {
          peripherals = self->_peripherals;
        }

        else
        {
          peripherals = 0;
        }

        obj = peripherals;
        v28 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v45;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v45 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v44 + 1) + 8 * i);
              v33 = [v32 identifier];
              v34 = *(v8 + 391);
              v35 = [v33 isEqual:v34];

              if (v35)
              {
                sub_10002DF24(&self->super.super.isa, v32);
                goto LABEL_62;
              }
            }

            v29 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_62:

        v13 = 0;
        v12 = v39;
        v10 = v40;
        goto LABEL_20;
      }
    }

    v13 = 0;
LABEL_20:
    [(NSMutableSet *)self->_links removeObject:v8];
    v14 = *(v8 + 391);
    sub_10003BD40(&self->super.super.isa, 0, v14);

    v15 = self->super._queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003C260;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v16 = v8;
    v43 = v16;
    dispatch_async(v15, block);

    if (v13)
    {
      v17 = self->_pipeStateDictionary;
      if (v17)
      {
        v18 = v17;
        v19 = [v16 nrUUID];

        if (v19)
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            _NRLogWithArgs();
          }

          v20 = self->_pipeStateDictionary;
          v21 = [v16 nrUUID];
          [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v21];
        }
      }

      sub_10002F748(self, v10 == 2);
    }

LABEL_38:
    goto LABEL_39;
  }

  v36 = sub_10002D6B4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v38 = sub_10002D6B4();
    _NRLogWithArgs();
  }

LABEL_39:
}

- (void)linkIsSuspended:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 copyShortDescription];
    [(NRLinkManager *)self reportEvent:2006 details:v7];

    if (self && self->super._state == 1004)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      v8 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = *(v8 + 391);
        sub_10003BD40(&self->super.super.isa, 0, v9);

        if (self)
        {
          v10 = self->super._queue;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003C87C;
        block[3] = &unk_1001FD060;
        v16 = v8;
        v17 = self;
        dispatch_async(v11, block);
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs();
        }
      }
    }
  }

  else
  {
    v12 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10002D6B4();
      _NRLogWithArgs();
    }
  }
}

- (void)linkIsReady:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 copyShortDescription];
    [(NRLinkManager *)self reportEvent:2005 details:v7];

    if (self && self->super._state == 1004)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      v8 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = *(v8 + 399);
        v10 = [v9 type] == 2;

        sub_100036770(self, 3, v10);
        sub_100036770(self, 2, v10);
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v52 = v4;
        if (self)
        {
          pipeRegistrations = self->_pipeRegistrations;
        }

        else
        {
          pipeRegistrations = 0;
        }

        v12 = pipeRegistrations;
        v13 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:&off_100209AB8];
        v14 = v13;
        v53 = self;
        if (v13)
        {
          v15 = *(v13 + 16);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v17 = [v16 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v62;
LABEL_19:
          v20 = 0;
          while (1)
          {
            if (*v62 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v61 + 1) + 8 * v20);
            v22 = [v21 peer];
            v23 = [v22 identifier];
            v24 = *(v8 + 391);
            v25 = [v23 isEqual:v24];

            if (v25)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v61 objects:v66 count:16];
              if (v18)
              {
                goto LABEL_19;
              }

              goto LABEL_25;
            }
          }

          v26 = v21;

          if (!v26)
          {
            goto LABEL_33;
          }

LABEL_47:
          v42 = v53;
          sub_1000AF784(v8, v26);
        }

        else
        {
LABEL_25:

LABEL_33:
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          if (v53)
          {
            p2pPipeRegistrations = v53->_p2pPipeRegistrations;
          }

          else
          {
            p2pPipeRegistrations = 0;
          }

          v28 = p2pPipeRegistrations;
          v29 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:&off_100209AB8];
          v30 = v29;
          if (v29)
          {
            v31 = *(v29 + 16);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          v33 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v58;
LABEL_39:
            v36 = 0;
            while (1)
            {
              if (*v58 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v57 + 1) + 8 * v36);
              v38 = [v37 peer];
              v39 = [v38 identifier];
              v40 = *(v8 + 391);
              v41 = [v39 isEqual:v40];

              if (v41)
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
                if (v34)
                {
                  goto LABEL_39;
                }

                goto LABEL_45;
              }
            }

            v26 = v37;

            if (v26)
            {
              goto LABEL_47;
            }

            v42 = v53;
          }

          else
          {
LABEL_45:

            v26 = 0;
            v42 = v53;
          }
        }

        v43 = *(v8 + 391);
        if (v42)
        {
          v44 = v42->_requestedLinkRequirements;
          v45 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v43];
          sub_10003BD40(&v42->super.super.isa, v45, v43);

          v46 = v42->super._queue;
        }

        else
        {
          v51 = [0 objectForKeyedSubscript:v43];
          sub_10003BD40(0, v51, v43);

          v46 = 0;
        }

        v47 = v46;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003CFD4;
        block[3] = &unk_1001FD060;
        v55 = v8;
        v56 = v42;
        dispatch_async(v47, block);

        v4 = v52;
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs();
        }
      }
    }
  }

  else
  {
    v48 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v50 = sub_10002D6B4();
      _NRLogWithArgs();
    }
  }
}

- (void)linkIsAvailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 copyShortDescription];
    v8 = [v4 nrUUID];
    v9 = [v8 UUIDString];
    [(NRLinkManager *)self reportEvent:2004 detailsFormat:@"%@ %@", v7, v9];

    if (self && self->super._state == 1004)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      v10 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = self;
        v29 = v4;
        if (self)
        {
          links = self->_links;
        }

        else
        {
          links = 0;
        }

        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = [(NSMutableSet *)links copy];
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * i);
              if (v17)
              {
                v18 = *(v17 + 391);
              }

              else
              {
                v18 = 0;
              }

              v19 = v18;
              v20 = *(v10 + 391);
              v21 = [v19 isEqual:v20];

              if (v21)
              {
                v22 = [v10 copyShortDescription];
                [v17 cancelWithReason:{@"Replaced by new link %@", v22}];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v14);
        }

        if (v28)
        {
          [(NSMutableSet *)v28->_links addObject:v10];
          v23 = v28->super._queue;
        }

        else
        {
          [0 addObject:v10];
          v23 = 0;
        }

        v4 = v29;
        v24 = v23;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003D540;
        block[3] = &unk_1001FD060;
        v31 = v10;
        v32 = v28;
        dispatch_async(v24, block);
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          _NRLogWithArgs();
        }
      }
    }
  }

  else
  {
    v25 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v27 = sub_10002D6B4();
      _NRLogWithArgs();
    }
  }
}

- (id)copyStatusString
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendString:@"["];
  if (self)
  {
    pipeRegistrations = self->_pipeRegistrations;
  }

  else
  {
    pipeRegistrations = 0;
  }

  v6 = pipeRegistrations;
  v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:&off_100209AA0];

  if (v7)
  {
    v8 = v7[8];
    if ((v8 - 1) <= 1)
    {
      if (v8 == 1)
      {
        v9 = "(inprog)";
      }

      else
      {
        v9 = "";
      }

      [v4 appendFormat:@"%s%s, ", "M", v9];
    }
  }

  if (self)
  {
    v10 = self->_pipeRegistrations;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:&off_100209AB8];

  if (v12)
  {
    v13 = v12[8];
    if ((v13 - 1) <= 1)
    {
      if (v13 == 1)
      {
        v14 = "(inprog)";
      }

      else
      {
        v14 = "";
      }

      [v4 appendFormat:@"%s%s, ", "H", v14];
    }
  }

  if (self)
  {
    v15 = self->_pipeRegistrations;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:&off_100209AD0];

  if (v17)
  {
    v18 = v17[8];
    if ((v18 - 1) <= 1)
    {
      if (v18 == 1)
      {
        v19 = "(inprog)";
      }

      else
      {
        v19 = "";
      }

      [v4 appendFormat:@"%s%s, ", "I", v19];
    }
  }

  if (self)
  {
    p2pPipeRegistrations = self->_p2pPipeRegistrations;
  }

  else
  {
    p2pPipeRegistrations = 0;
  }

  v21 = p2pPipeRegistrations;
  v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:&off_100209AA0];

  if (v22)
  {
    v23 = v22[8];
    if ((v23 - 1) <= 1)
    {
      if (v23 == 1)
      {
        v24 = "(inprog)";
      }

      else
      {
        v24 = "";
      }

      [v4 appendFormat:@"%s%s, ", "M(p2p)", v24];
    }
  }

  if (self)
  {
    v25 = self->_p2pPipeRegistrations;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:&off_100209AB8];

  if (v27)
  {
    v28 = v27[8];
    if ((v28 - 1) <= 1)
    {
      if (v28 == 1)
      {
        v29 = "(inprog)";
      }

      else
      {
        v29 = "";
      }

      [v4 appendFormat:@"%s%s, ", "H(p2p)", v29];
    }
  }

  if (self)
  {
    v30 = self->_p2pPipeRegistrations;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [(NSMutableDictionary *)v31 objectForKeyedSubscript:&off_100209AD0];

  if (v32)
  {
    v33 = v32[8];
    if ((v33 - 1) <= 1)
    {
      if (v33 == 1)
      {
        v34 = "(inprog)";
      }

      else
      {
        v34 = "";
      }

      [v4 appendFormat:@"%s%s, ", "I(p2p)", v34];
    }
  }

  [v4 appendString:@"]"];
  v35 = [(NRLinkManagerBluetooth *)self copyName];
  [v3 appendFormat:@"\nName: %@", v35];

  if (self)
  {
    type = self->super._type;
    StringFromNRLinkType = createStringFromNRLinkType();
    [v3 appendFormat:@"\nLinkManager type: %@", StringFromNRLinkType];

    state = self->super._state;
    v39 = [NSString alloc];
    if (state > 1001)
    {
      switch(state)
      {
        case 0x3EA:
          v40 = [v39 initWithUTF8String:"Start"];
          goto LABEL_61;
        case 0x3EB:
          v40 = [v39 initWithUTF8String:"Ready"];
          goto LABEL_61;
        case 0x3EC:
          v40 = [v39 initWithUTF8String:"Cancelled"];
LABEL_61:
          v41 = v40;
          [v3 appendFormat:@"\nState: %@ %@", v40, v4];

LABEL_62:
          v42 = self->_links;
          [v3 appendFormat:@"\nLinks: %@", v42];

          v43 = self->_pipeRegistrations;
          goto LABEL_63;
      }

      goto LABEL_60;
    }

    if (state)
    {
      if (state == 1001)
      {
        v40 = [v39 initWithUTF8String:"Initial"];
        goto LABEL_61;
      }

LABEL_60:
      v40 = [v39 initWithFormat:@"Unknown(%u)", state];
      goto LABEL_61;
    }
  }

  else
  {
    v84 = createStringFromNRLinkType();
    [v3 appendFormat:@"\nLinkManager type: %@", v84];

    v39 = [NSString alloc];
  }

  v85 = [v39 initWithUTF8String:"Invalid"];
  [v3 appendFormat:@"\nState: %@ %@", v85, v4];

  if (self)
  {
    goto LABEL_62;
  }

  [v3 appendFormat:@"\nLinks: %@", 0];
  v43 = 0;
LABEL_63:
  v44 = v43;
  v45 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:&off_100209AA0];

  if (v45)
  {
    v46 = v45[2];
    [v3 appendFormat:@"\nMedium Pipes: %@", v46];
  }

  if (self)
  {
    v47 = self->_pipeRegistrations;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;
  v49 = [(NSMutableDictionary *)v48 objectForKeyedSubscript:&off_100209AB8];

  if (v49)
  {
    v50 = v49[2];
    [v3 appendFormat:@"\nHigh Pipes: %@", v50];
  }

  if (self)
  {
    v51 = self->_pipeRegistrations;
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;
  v53 = [(NSMutableDictionary *)v52 objectForKeyedSubscript:&off_100209AD0];

  if (v53)
  {
    v54 = v53[2];
    [v3 appendFormat:@"\nIsochronous Pipes: %@", v54];
  }

  if (self)
  {
    v55 = self->_p2pPipeRegistrations;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;
  v57 = [(NSMutableDictionary *)v56 objectForKeyedSubscript:&off_100209AA0];

  if (v57)
  {
    v58 = v57[2];
    [v3 appendFormat:@"\nMedium P2P Pipes: %@", v58];
  }

  if (self)
  {
    v59 = self->_p2pPipeRegistrations;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;
  v61 = [(NSMutableDictionary *)v60 objectForKeyedSubscript:&off_100209AB8];

  if (v61)
  {
    v62 = v61[2];
    [v3 appendFormat:@"\nHigh P2P Pipes: %@", v62];
  }

  if (self)
  {
    v63 = self->_p2pPipeRegistrations;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;
  v65 = [(NSMutableDictionary *)v64 objectForKeyedSubscript:&off_100209AD0];

  if (v65)
  {
    v66 = v65[2];
    [v3 appendFormat:@"\nIsochronous P2P Pipes: %@", v66];
  }

  if (self)
  {
    peripherals = self->_peripherals;
  }

  else
  {
    peripherals = 0;
  }

  v68 = peripherals;
  [v3 appendFormat:@"\nPeripherals: %@", v68];

  v69 = objc_alloc_init(NSDateFormatter);
  [v69 setDateFormat:@"YYYY-MM-dd HH:mm:ss z"];
  v70 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v69 setLocale:v70];

  if (self)
  {
    v71 = self->_peripheralConnectDate;
    v72 = [v69 stringFromDate:v71];
    [v3 appendFormat:@"\nconnectPeripheral invoked: %@", v72];

    centralManager = self->_centralManager;
  }

  else
  {
    v86 = [v69 stringFromDate:0];
    [v3 appendFormat:@"\nconnectPeripheral invoked: %@", v86];

    centralManager = 0;
  }

  v74 = centralManager;
  [v3 appendFormat:@"\nCentralMgr: %@", v74];

  if (self)
  {
    v75 = self->_peripheralManager;
    [v3 appendFormat:@"\nPeripheralMgr: %@", v75];

    currentAdvertisementState = self->_currentAdvertisementState;
    if (currentAdvertisementState >= 5)
    {
      v77 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", currentAdvertisementState];
    }

    else
    {
      v77 = *(&off_1001FA918 + currentAdvertisementState);
    }

    [v3 appendFormat:@"\ncurrentAdvertisementState: %@", v77];

    currentAdvertisementRate = self->_currentAdvertisementRate;
    if (self->_currentAdvertisementRate)
    {
      if (currentAdvertisementRate == 1)
      {
        v79 = @"1 sec";
      }

      else
      {
        v79 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", currentAdvertisementRate];
      }
    }

    else
    {
      v79 = @"Default";
    }

    [v3 appendFormat:@"\ncurrentAdvertisementRate: %@", v79];

    pipeStateDictionary = self->_pipeStateDictionary;
  }

  else
  {
    [v3 appendFormat:@"\nPeripheralMgr: %@", 0];
    [v3 appendFormat:@"\ncurrentAdvertisementState: %@", @"Idle"];
    [v3 appendFormat:@"\ncurrentAdvertisementRate: %@", @"Default"];
    pipeStateDictionary = 0;
  }

  v81 = pipeStateDictionary;
  [v3 appendFormat:@"\nBT connection state: %@", v81];

  v82 = v3;
  return v82;
}

- (void)dealloc
{
  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    v3 = qword_100228F68;
    v6 = 416;
    v7 = [(NRLinkManagerBluetooth *)self copyName];
    v4 = "";
    v5 = "[NRLinkManagerBluetooth dealloc]";
    _NRLogWithArgs();
  }

  [(NRLinkManagerBluetooth *)self invalidateManager:v4];
  v8.receiver = self;
  v8.super_class = NRLinkManagerBluetooth;
  [(NRLinkManagerBluetooth *)&v8 dealloc];
}

- (void)invalidateManager
{
  v6.receiver = self;
  v6.super_class = NRLinkManagerBluetooth;
  [(NRLinkManager *)&v6 invalidateManager];
  if (self)
  {
    [(CBScalablePipeManager *)self->_pipeManager setDelegate:0];
    objc_storeWeak(&self->_bluetoothManagerDelegate, 0);
    pipeManager = self->_pipeManager;
    self->_pipeManager = 0;

    if (self->_centralManager)
    {
      sub_10002DDAC(self);
      [(CBCentralManager *)self->_centralManager setDelegate:0];
      centralManager = self->_centralManager;
      self->_centralManager = 0;
    }

    peripherals = self->_peripherals;
    self->_peripherals = 0;

    sub_1000327B8(self);
    sub_10003E25C(self);
  }

  else
  {
    [0 setDelegate:0];
  }
}

- (void)cancel
{
  if (self)
  {
    self->super._state = 1004;
    [(NRLinkManager *)self reportEvent:2003];
    [(NRLinkManagerBluetooth *)self invalidateManager];
    links = self->_links;
  }

  else
  {
    [0 reportEvent:2003];
    [0 invalidateManager];
    links = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableSet *)links copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) cancelWithReason:{@"Cancelling Bluetooth link manager", v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (self)
  {
    v9 = self->_links;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

@end