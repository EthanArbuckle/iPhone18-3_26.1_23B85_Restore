@interface DAWiFiScanner
- (DAWiFiScanner)init;
- (id)_coalesceResults:(id)a3 descriptors:(id)a4;
- (id)_defaultScanParameters;
- (id)_resultForSubscriber:(id)a3 descriptors:(id)a4 discoveryResult:(id)a5;
- (id)deauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4;
- (id)reauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4;
- (id)uninstallPairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4;
- (id)updatePairedDeviceNameFor:(id)a3 withAppPairingID:(unint64_t)a4 toNewName:(id)a5;
- (unint64_t)authorizeNewPairedDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 storageClass:(int64_t)a5 lifetime:(double)a6 client:(int64_t)a7 error:(id *)a8;
- (void)_configurePublisherWithPairingClient:(int64_t)a3;
- (void)_configureSubscriber;
- (void)_performScan;
- (void)_queueNextScan;
- (void)authorizePairedDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 storageClass:(int64_t)a5 lifetime:(double)a6 client:(int64_t)a7 completionHandler:(id)a8;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5 pairingKeyStoreID:(id)a6 deviceID:(unint64_t)a7;
- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)dataSessionRequestStarted:(id)a3;
- (void)deauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)pairSelectedWiFiAwareDevice:(id)a3 withBundleID:(id)a4;
- (void)pairingPINAccepted:(id)a3;
- (void)pairingRequestApprovalRequiredByPublisher:(id)a3 forSubscriber:(id)a4 withPairingMethod:(int64_t)a5 pairingSetupApprovalCompletion:(id)a6;
- (void)pairingRequestIndicatedForPublisher:(id)a3 bySubscriber:(id)a4 usingPINCode:(id)a5;
- (void)pairingRequestStartedForDataSession:(id)a3 pinCodeInputCompletionHandler:(id)a4;
- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6 pairingKeyStoreID:(id)a7 deviceID:(unint64_t)a8;
- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)publisherStarted:(id)a3;
- (void)reauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)removeAllPairedDevices:(id)a3;
- (void)removeAllPairedDevicesFor:(id)a3 completionHandler:(id)a4;
- (void)respondToWiFiAwarePairingRequest:(unint64_t)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6;
- (void)selectWiFiAwareDevice:(id)a3 withBundleID:(id)a4;
- (void)startScanningWithDescriptors:(id)a3;
- (void)stopScanning;
- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5;
- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4;
- (void)subscriber:(id)a3 receivedMessage:(id)a4 fromPublishID:(unsigned __int8)a5 address:(id)a6;
- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)subscriberStarted:(id)a3;
- (void)uninstallPairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)updatePairedDeviceNameFor:(id)a3 withAppPairingID:(unint64_t)a4 newName:(id)a5 completionHandler:(id)a6;
@end

@implementation DAWiFiScanner

- (DAWiFiScanner)init
{
  v13.receiver = self;
  v13.super_class = DAWiFiScanner;
  v2 = [(DAWiFiScanner *)&v13 init];
  if (v2)
  {
    v3 = [[CWFInterface alloc] initWithServiceType:2];
    wifiInterface = v2->_wifiInterface;
    v2->_wifiInterface = v3;

    [(CWFInterface *)v2->_wifiInterface activate];
    v2->_scanning = 0;
    v5 = +[NSMutableSet set];
    reportedNetworks = v2->_reportedNetworks;
    v2->_reportedNetworks = v5;

    v7 = +[NSMutableSet set];
    discoveredWiFiAwareDevices = v2->_discoveredWiFiAwareDevices;
    v2->_discoveredWiFiAwareDevices = v7;

    v9 = objc_alloc_init(WiFiAwareDevicesStore);
    store = v2->_store;
    v2->_store = v9;

    [(WiFiAwareDevicesStore *)v2->_store activate];
    v11 = v2;
  }

  return v2;
}

- (void)startScanningWithDescriptors:(id)a3
{
  v5 = a3;
  v6 = DAWiFiScanDescriptor;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000349C0();
  }

  if (self->_scanning)
  {
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034B88(self);
    }
  }

  else
  {
    v7 = 1;
    self->_scanning = 1;
    objc_storeStrong(&self->_descriptors, a3);
    v8 = +[NSMutableSet set];
    SSIDs = self->_SSIDs;
    self->_SSIDs = v8;

    v10 = +[NSMutableSet set];
    prefixes = self->_prefixes;
    self->_prefixes = v10;

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v12 = self->_descriptors;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v13)
    {
      v14 = v13;
      v60 = v5;
      v15 = *v62;
      v7 = 1;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          v18 = [v17 SSID];
          if (v18)
          {
            v19 = v18;
            v20 = [v17 SSID];
            v21 = [v20 length];

            if (v21)
            {
              v22 = self->_SSIDs;
              v23 = [v17 SSID];
              [(NSMutableSet *)v22 addObject:v23];
            }
          }

          v24 = [v17 prefix];
          if (v24)
          {
            v25 = v24;
            v26 = [v17 prefix];
            v27 = [v26 length];

            if (v27)
            {
              v28 = self->_prefixes;
              v29 = [v17 prefix];
              [(NSMutableSet *)v28 addObject:v29];
            }
          }

          v30 = [v17 serviceName];

          if (v30)
          {
            v6 = DAWiFiScanDescriptor;
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034A00(v17);
            }

            v32 = [v17 serviceName];
            serviceName = self->_serviceName;
            self->_serviceName = v32;

            v34 = [v17 configuration];
            v35 = [v34 wifiAwareServiceType];

            if (v35 == 20)
            {
              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                sub_100034A70();
              }

              v36 = [v17 bundleID];
              wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
              self->_wifiAwarePairingBundleID = v36;

              v38 = [v17 configuration];
              v39 = [v38 displayName];

              v40 = MGCopyAnswerWithError();
              v41 = +[NSCharacterSet letterCharacterSet];
              v42 = [v41 invertedSet];
              v43 = [v40 componentsSeparatedByCharactersInSet:v42];
              v44 = [v43 componentsJoinedByString:&stru_10005A2C8];

              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                v58 = v44;
                v59 = self->_wifiAwarePairingBundleID;
                v56 = v39;
                v57 = @"Apple";
                LogPrintF();
              }

              v45 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:v39 vendorID:@"Apple" modelName:v44 attributes:&__NSDictionary0__struct];
              wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
              self->_wifiAwarePairingInfo = v45;

              v47 = [v17 configuration];
              v48 = [v47 flags];

              v31 = 1;
              if ((v48 & 0x40) != 0)
              {
                v7 = 2;
              }

              else
              {
                v7 = 1;
              }

              v35 = 20;
              v5 = v60;
              v6 = DAWiFiScanDescriptor;
            }

            else
            {
              v7 = 1;
              v31 = 1;
              v5 = v60;
            }

            goto LABEL_43;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v31 = 0;
      v5 = v60;
      v6 = DAWiFiScanDescriptor;
    }

    else
    {
      v31 = 0;
    }

    v35 = 10;
LABEL_43:

    if ([(NSMutableSet *)self->_SSIDs count]|| ([(NSMutableSet *)self->_prefixes count]? (v49 = 1) : (v49 = v31), (v49 & 1) != 0))
    {
      if (v31)
      {
        cache = v6[28].cache;
        if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
        {
          sub_100034B0C();
        }

        v51 = v6[28].cache;
        if (v35 == 10)
        {
          if (v51 <= 30 && (v51 != -1 || _LogCategory_Initialize()))
          {
            sub_100034B40(self);
          }

          [(DAWiFiScanner *)self _configureSubscriber:v56];
          [(DAWiFiScanner *)self _startSubscriber];
        }

        else
        {
          if (v51 <= 30 && (v51 != -1 || _LogCategory_Initialize()))
          {
            v56 = self->_serviceName;
            v57 = v35;
            LogPrintF();
          }

          [(DAWiFiScanner *)self _configurePublisherWithPairingClient:v7, v56, v57, v58, v59];
          [(DAWiFiScanner *)self _startPublisherWithDescriptors:v5];
        }
      }

      else if ([(NSMutableSet *)self->_SSIDs count]|| [(NSMutableSet *)self->_prefixes count])
      {
        v52 = v6[28].cache;
        if (v52 <= 90 && (v52 != -1 || _LogCategory_Initialize()))
        {
          sub_100034AD8();
        }

        [(DAWiFiScanner *)self _performScan:v56];
      }
    }

    else
    {
      v53 = v6[28].cache;
      if (v53 <= 90 && (v53 != -1 || _LogCategory_Initialize()))
      {
        sub_100034AA4();
      }

      resultsHandler = self->_resultsHandler;
      v55 = DAErrorF();
      resultsHandler[2](resultsHandler, v55, 0);
    }
  }
}

- (void)_performScan
{
  if (self->_scanning)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_10001FA40;
    v11[4] = sub_10001FA50;
    v12 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = sub_10001FA40;
    v9[4] = sub_10001FA50;
    v10 = 0;
    v3 = [(DAWiFiScanner *)self _defaultScanParameters];
    v4 = [(NSMutableSet *)self->_SSIDs allObjects];
    [v3 setSSIDList:v4];

    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      SSIDs = self->_SSIDs;
      prefixes = self->_prefixes;
      LogPrintF();
    }

    v5 = [(DAWiFiScanner *)self wifiInterface:SSIDs];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001FA58;
    v8[3] = &unk_100059808;
    v8[5] = v9;
    v8[6] = v11;
    v8[4] = self;
    [v5 performScanWithParameters:v3 reply:v8];

    _Block_object_dispose(v9, 8);
    _Block_object_dispose(v11, 8);
  }

  else if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034BCC();
  }
}

- (void)_queueNextScan
{
  v3 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD44;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)stopScanning
{
  self->_scanning = 0;
  [(NSMutableSet *)self->_reportedNetworks removeAllObjects];
  discoveredWiFiAwareDevices = self->_discoveredWiFiAwareDevices;

  [(NSMutableSet *)discoveredWiFiAwareDevices removeAllObjects];
}

- (id)_defaultScanParameters
{
  v2 = objc_alloc_init(CWFScanParameters);
  [v2 setMergeScanResults:1];

  return v2;
}

- (id)_coalesceResults:(id)a3 descriptors:(id)a4
{
  v28 = a3;
  v6 = a4;
  v26 = +[NSMutableDictionary dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v29 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v29)
  {
    v27 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034CC0(v8);
        }

        v9 = [v8 scanResultPredicate];
        v10 = [v28 filteredArrayUsingPredicate:v9];

        if (v10)
        {
          v32 = v7;
          if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
          {
            v23 = v8;
            v24 = v10;
            LogPrintF();
          }

          v31 = v8;
          v11 = [NSMutableArray array:v23];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v30 = v10;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v34;
            do
            {
              v16 = 0;
              do
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v33 + 1) + 8 * v16);
                v18 = objc_alloc_init(DAWiFiNetwork);
                v19 = [v17 networkName];
                [(DAWiFiNetwork *)v18 setSSID:v19];

                -[DAWiFiNetwork setUnsecured:](v18, "setUnsecured:", [v17 isOpen]);
                if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                {
                  sub_100034D1C(&self->_reportedNetworks);
                }

                if (([(NSMutableSet *)self->_reportedNetworks containsObject:v18]& 1) != 0)
                {
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100034D5C();
                  }
                }

                else
                {
                  [v11 addObject:v18];
                  [(NSMutableSet *)self->_reportedNetworks addObject:v18];
                }

                v16 = v16 + 1;
              }

              while (v14 != v16);
              v20 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
              v14 = v20;
            }

            while (v20);
          }

          [v26 setObject:v11 forKey:v31];
          v7 = v32;
          v10 = v30;
        }

        v7 = v7 + 1;
      }

      while (v7 != v29);
      v21 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      v29 = v21;
    }

    while (v21);
  }

  return v26;
}

- (void)selectWiFiAwareDevice:(id)a3 withBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = self->_discoveredWiFiAwareDevices;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v10 = v9;
  v33 = self;
  v34 = v7;
  v11 = 0;
  v12 = *v36;
  do
  {
    v13 = 0;
    do
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
      v15 = [v14 signature];
      if (v15 == [v6 signature])
      {
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034DD0();
        }

        v16 = [v14 copy];
LABEL_19:

        v11 = v16;
        goto LABEL_20;
      }

      v17 = [v6 wifiAwareDevicePairingID];
      if (v17)
      {
        v18 = v17;
        v19 = [v14 pairedUUID];

        if (v19)
        {
          v20 = [v14 pairedUUID];
          v21 = [v20 UUIDString];

          v22 = [v6 wifiAwareDevicePairingID];
          v23 = [v22 UUIDString];

          if ([v21 isEqualToString:v23])
          {
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034D9C();
            }

            v24 = [v14 copy];

            v11 = v24;
          }

          v16 = v11;

          v11 = v21;
          goto LABEL_19;
        }
      }

LABEL_20:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v25 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v10 = v25;
  }

  while (v25);

  v7 = v34;
  if (v11)
  {
    v26 = v33->_deviceOTANameToBroadcast;
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E04();
    }

    if (([v6 flags] & 0x400) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = [[WiFiAwareDataSession alloc] initWithDiscoveryResult:v11 serviceType:0 serviceSpecificInfo:0];
    wifiAwareDataSession = v33->_wifiAwareDataSession;
    v33->_wifiAwareDataSession = v28;

    [(WiFiAwareDataSession *)v33->_wifiAwareDataSession setConnectionMode:2];
    v30 = [WiFiAwarePairingMetadata alloc];
    v31 = [v6 name];
    v32 = [v30 initWithBundleID:v34 selfPairingName:v26 peerDeviceName:v31 storageClass:1 lifetime:v27 pairingClient:0.0];
    [(WiFiAwareDataSession *)v33->_wifiAwareDataSession setPairingMetadata:v32];

    [(WiFiAwareDataSession *)v33->_wifiAwareDataSession setPairingDelegate:v33];
    [(WiFiAwareDataSession *)v33->_wifiAwareDataSession setDelegate:v33];
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E44(&v33->_wifiAwareDataSession);
    }

    goto LABEL_40;
  }

LABEL_37:
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034E84();
  }

LABEL_40:
}

- (void)pairSelectedWiFiAwareDevice:(id)a3 withBundleID:(id)a4
{
  v6 = a3;
  v18 = a4;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EB8(self);
  }

  v7 = [v6 discoveryConfiguration];
  v8 = [v7 displayName];

  v9 = [v6 wifiAwareVendorName];
  v10 = [v6 wifiAwareModelName];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  wifiAwarePairingDevice = self->_wifiAwarePairingDevice;
  self->_wifiAwarePairingDevice = v6;
  v12 = v6;

  v13 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:v8 vendorID:v9 modelName:v10 attributes:&__NSDictionary0__struct];
  wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
  self->_wifiAwarePairingInfo = v13;

  v15 = [v12 discoveryConfiguration];
  v16 = [v15 bundleID];
  wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
  self->_wifiAwarePairingBundleID = v16;

  [(WiFiAwareDataSession *)self->_wifiAwareDataSession start];
}

- (void)respondToWiFiAwarePairingRequest:(unint64_t)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6
{
  v11 = a6;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EFC();
    if (a4)
    {
LABEL_5:
      if (a5 == 30)
      {
        if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
        {
          sub_100034F3C(self);
        }

        (*(self->_pinCodeInputHandler + 2))();
      }

      goto LABEL_13;
    }
  }

  else if (a4)
  {
    goto LABEL_5;
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v10 = DAErrorF();
    wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v10, -1, 0);
  }

LABEL_13:
}

- (void)pairingPINAccepted:(id)a3
{
  v7 = a3;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034F98(self);
  }

  v4 = [WiFiAwarePairingInfo alloc];
  v5 = [v7 name];
  v6 = [v4 initWithPeerDeviceName:v5];

  (*(self->_approvePINHandler + 2))();
}

- (id)_resultForSubscriber:(id)a3 descriptors:(id)a4 discoveryResult:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v51 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v8;
  v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v50)
  {
    v11 = DAWiFiScanDescriptor;
    v49 = *v53;
    v41 = v7;
    v45 = v10;
    v46 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        cache = v11[28].cache;
        if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
        {
          sub_100034FF4(v7);
        }

        v15 = [v7 configuration];
        v16 = [v15 serviceName];
        v17 = [v13 serviceName];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = v11[28].cache;
          if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
          {
            sub_100035068(v7);
          }

          v20 = objc_alloc_init(DAWiFiNetwork);
          v21 = [v7 configuration];
          v22 = [v21 serviceName];
          [(DAWiFiNetwork *)v20 setServiceName:v22];

          -[DAWiFiNetwork setSignature:](v20, "setSignature:", [v9 signature]);
          v23 = [v9 pairedUUID];
          [(DAWiFiNetwork *)v20 setWifiAwarePairedID:v23];

          v24 = [v9 serviceSpecificInfo];
          v25 = [v24 txtRecordData];

          if (v25)
          {
            v27 = CUTXTDictionaryCreateWithTXTData(v25, v26, 0);
            v28 = [v27 objectForKeyedSubscript:@"vendorName"];
            v29 = [v27 objectForKeyedSubscript:@"modelName"];
            v30 = [v27 objectForKeyedSubscript:@"pairingName"];
            v31 = v30;
            if (v28 && v29)
            {
              v44 = v30;
              v32 = [v13 configuration];
              v33 = [v32 flags];

              if (![v28 isEqualToString:@"Apple Inc."] || self->_allowAppleToAppleWiFiAware || (v33 & 0x40) != 0)
              {
                v34 = [v13 wifiAwareVendorNameMatch];
                v35 = [v13 wifiAwareModelNameMatch];
                v36 = [v34 string];
                v43 = v34;
                v42 = [v36 compare:v28 options:{objc_msgSend(v34, "compareOptions")}];

                v37 = [v35 string];
                v38 = [v37 compare:v29 options:{objc_msgSend(v35, "compareOptions")}];

                if (v42 | v38)
                {
                  v7 = v41;
                  v31 = v44;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10003511C(v13);
                  }
                }

                else
                {
                  v31 = v44;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100035174(v20);
                  }

                  [(DAWiFiNetwork *)v20 setWifiAwareOTAName:v44];
                  [(DAWiFiNetwork *)v20 setWifiAwareVendorName:v28];
                  [(DAWiFiNetwork *)v20 setWifiAwareModelName:v29];
                  v7 = v41;
                }
              }

              else
              {
                v31 = v44;
                if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                {
                  sub_1000350DC();
                }
              }
            }

            v10 = v45;
          }

          v9 = v46;
          if (([(NSMutableSet *)self->_discoveredWiFiAwareDevices containsObject:v46]& 1) == 0)
          {
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_1000351D0();
            }

            [v51 addObject:v20];
            [(NSMutableSet *)self->_discoveredWiFiAwareDevices addObject:v46];
          }

          v11 = DAWiFiScanDescriptor;
        }

        [v10 setObject:v51 forKey:v13];
        v12 = v12 + 1;
      }

      while (v50 != v12);
      v39 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v50 = v39;
    }

    while (v39);
  }

  return v10;
}

- (void)_configureSubscriber
{
  v5 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:self->_serviceName];
  [v5 setAuthenticationType:0];
  [v5 setDiscoveryMode:3];
  v3 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v5];
  subscriber = self->_subscriber;
  self->_subscriber = v3;

  [(WiFiAwareSubscriber *)self->_subscriber setDelegate:self];
  if (!self->_subscriber && dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035210(&self->_serviceName);
  }
}

- (void)_configurePublisherWithPairingClient:(int64_t)a3
{
  v14 = [[NSNumber alloc] initWithInteger:2];
  v5 = objc_alloc_init(NSMutableArray);
  [v5 addObject:v14];
  v6 = [[WiFiAwarePairingConfiguration alloc] initWithSupportedPairSetupMethods:v5 pairingCachingEnabled:1];
  [v6 setPairingSetupMode:1];
  v7 = [[WiFiAwarePublishDatapathSecurityConfiguration alloc] initWithPairingConfiguration:v6 usingPairingDelegate:self];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035250();
  }

  v8 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:0 securityConfiguration:v7 connectionMode:2];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035290();
  }

  v9 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:self->_serviceName];
  v10 = self->_deviceOTANameToBroadcast;
  v11 = [[WiFiAwarePairingMetadata alloc] initWithBundleID:self->_wifiAwarePairingBundleID selfPairingName:v10 peerDeviceName:0 storageClass:1 lifetime:a3 pairingClient:0.0];
  [v9 setPairingMetadata:v11];

  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000352D0(self);
  }

  [v9 setDatapathConfiguration:v8];
  [v9 setAuthenticationType:0];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035330();
  }

  v12 = [[WiFiAwarePublisher alloc] initWithConfiguration:v9];
  publisher = self->_publisher;
  self->_publisher = v12;

  [(WiFiAwarePublisher *)self->_publisher setDelegate:self];
  if (!self->_publisher && dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035370(&self->_serviceName);
  }
}

- (void)authorizePairedDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 storageClass:(int64_t)a5 lifetime:(double)a6 client:(int64_t)a7 completionHandler:(id)a8
{
  v18 = a3;
  v14 = a4;
  v15 = a8;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v16 = v14;
    v17 = v18;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:v18 pairingKeyStoreID:v14 storageClass:a5 lifetime:a7 client:v15 completionHandler:a6, v16, v17];
}

- (unint64_t)authorizeNewPairedDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 storageClass:(int64_t)a5 lifetime:(double)a6 client:(int64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v18 = v15;
    v19 = v14;
    LogPrintF();
  }

  v16 = [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:v14 pairingKeyStoreID:v15 storageClass:a5 lifetime:a7 client:a8 error:a6, v18, v19];

  return v16;
}

- (void)reauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = a4;
    v10 = v11;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:v11 withDeviceID:a4 completionHandler:v8, v9, v10];
}

- (id)reauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = a4;
    v10 = v6;
    LogPrintF();
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:v6 withDeviceID:a4, v9, v10];

  return v7;
}

- (void)deauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = a4;
    v10 = v11;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:v11 withDeviceID:a4 remove:0 completionHandler:v8, v9, v10];
}

- (id)deauthorizePairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = a4;
    v10 = v6;
    LogPrintF();
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:v6 withDeviceID:a4 remove:0, v9, v10];

  return v7;
}

- (void)uninstallPairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = a4;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:v11 withDeviceID:a4 remove:1 completionHandler:v8, v9, v10];
}

- (id)uninstallPairedDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = v6;
    v10 = a4;
    LogPrintF();
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:v6 withDeviceID:a4 remove:1, v9, v10];

  return v7;
}

- (void)removeAllPairedDevicesFor:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000353B0();
  }

  [(WiFiAwareDevicesStore *)self->_store removeAllPairedDevicesFor:v7 completionHandler:v6];
}

- (void)removeAllPairedDevices:(id)a3
{
  v4 = a3;
  store = self->_store;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021BF0;
  v7[3] = &unk_100059830;
  v8 = v4;
  v6 = v4;
  [(WiFiAwareDevicesStore *)store removeAllPairedDevices:v7];
}

- (void)updatePairedDeviceNameFor:(id)a3 withAppPairingID:(unint64_t)a4 newName:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v13 = v15;
    v14 = a4;
    v12 = v10;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:v15 withDeviceID:a4 toNewName:v10 completionHandler:v11, v12, v13, v14];
}

- (id)updatePairedDeviceNameFor:(id)a3 withAppPairingID:(unint64_t)a4 toNewName:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v13 = v8;
    v14 = a4;
    v12 = v9;
    LogPrintF();
  }

  v10 = [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:v8 withDeviceID:a4 toNewName:v9, v12, v13, v14];

  return v10;
}

- (void)publisherStarted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100060470 <= 30)
  {
    v5 = v3;
    if (dword_100060470 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = sub_1000353F0();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4
{
  v8 = a3;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035430();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:a4 userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [v8 stop];
}

- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (dword_100060470 <= 30)
  {
    v6 = v4;
    if (dword_100060470 != -1 || (v4 = _LogCategory_Initialize(), v5 = v6, v4))
    {
      v4 = sub_100035470();
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6 pairingKeyStoreID:(id)a7 deviceID:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v48 = a6;
  v15 = a7;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000354B0(self);
  }

  v47 = self;
  v16 = [(WiFiAwarePublisher *)self->_publisher configuration];
  v17 = [v16 serviceName];
  v18 = [v13 configuration];
  v19 = [v18 serviceName];
  v20 = [v17 isEqualToString:v19];

  if (v20)
  {
    v21 = v15;
    if (v21)
    {
      v22 = 0;
      v23 = v47;
    }

    else
    {
      v23 = v47;
      if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
      {
        sub_1000354F8();
      }

      v22 = DAErrorF();
    }

    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      v41 = a8;
      v42 = v21;
      LogPrintF();
    }

    wifiAwareDevicePairedHandler = v23->_wifiAwareDevicePairedHandler;
    if (wifiAwareDevicePairedHandler)
    {
      wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v22, a8, v21);
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v25 = v23->_descriptors;
      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v26)
      {
        v27 = v26;
        v43 = v22;
        v44 = v21;
        v45 = v15;
        v46 = v14;
        v28 = *v50;
LABEL_19:
        v29 = 0;
        while (1)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v49 + 1) + 8 * v29);
          v31 = [v30 serviceName];
          v32 = [v13 configuration];
          v33 = [v32 serviceName];
          v34 = [v31 isEqualToString:v33];

          if (v34)
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [(NSArray *)v25 countByEnumeratingWithState:&v49 objects:v54 count:16];
            if (v27)
            {
              goto LABEL_19;
            }

            v15 = v45;
            v14 = v46;
            v22 = v43;
            v21 = v44;
            goto LABEL_28;
          }
        }

        v35 = v30;

        v15 = v45;
        v14 = v46;
        v22 = v43;
        v21 = v44;
        if (!v35)
        {
          goto LABEL_29;
        }

        v36 = objc_alloc_init(DAWiFiNetwork);
        [(DAWiFiNetwork *)v36 setWifiAwarePairedID:v44];
        v37 = [v13 configuration];
        v38 = [v37 serviceName];
        [(DAWiFiNetwork *)v36 setServiceName:v38];

        v39 = +[NSMutableDictionary dictionary];
        v53 = v36;
        v40 = [NSArray arrayWithObjects:&v53 count:1];
        [v39 setObject:v40 forKey:v35];

        (*(v47->_resultsHandler + 2))();
        v25 = v35;
      }

LABEL_28:
    }

LABEL_29:
    [v13 stop];
  }
}

- (void)subscriberStarted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100060470 <= 30)
  {
    v5 = v3;
    if (dword_100060470 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = sub_100035514();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4
{
  v8 = a3;
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035554();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:a4 userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [v8 stop];
}

- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5
{
  v7 = a3;
  v6 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035594();
  }
}

- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (dword_100060470 <= 90)
  {
    v6 = v4;
    if (dword_100060470 != -1 || (v4 = _LogCategory_Initialize(), v5 = v6, v4))
    {
      v4 = sub_1000355D8();
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035618();
  }

  v7 = [(DAWiFiScanner *)self _resultForSubscriber:v8 descriptors:self->_descriptors discoveryResult:v6];
  (*(self->_resultsHandler + 2))();
}

- (void)subscriber:(id)a3 receivedMessage:(id)a4 fromPublishID:(unsigned __int8)a5 address:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = a6;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035658();
  }
}

- (void)pairingRequestIndicatedForPublisher:(id)a3 bySubscriber:(id)a4 usingPINCode:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035698();
  }

  v10 = [v9 copy];
  storedPin = self->_storedPin;
  self->_storedPin = v10;

  v12 = self->_storedPin;
  (*(self->_pinCreatedOnPublisher + 2))();
}

- (void)pairingRequestApprovalRequiredByPublisher:(id)a3 forSubscriber:(id)a4 withPairingMethod:(int64_t)a5 pairingSetupApprovalCompletion:(id)a6
{
  v43 = a3;
  v9 = a4;
  v10 = a6;
  v11 = DAWiFiScanDescriptor;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000356B4();
  }

  v42 = v10;
  v12 = objc_retainBlock(v10);
  approvePINHandler = self->_approvePINHandler;
  self->_approvePINHandler = v12;

  v14 = +[NSMutableDictionary dictionary];
  v53 = +[NSMutableArray array];
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000356D0(self);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_descriptors;
  v52 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v52)
  {
    v51 = *v55;
    v44 = v9;
    v47 = self;
    v49 = v14;
    do
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        v17 = [(WiFiAwarePublisher *)self->_publisher configuration];
        v18 = [v17 serviceName];
        v19 = [v16 serviceName];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          cache = v11[28].cache;
          if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
          {
            sub_100035714(&self->_publisher);
          }

          v22 = objc_alloc_init(DAWiFiNetwork);
          [(DAWiFiNetwork *)v22 setServiceName:self->_serviceName];
          v23 = [v9 txtRecordData];
          v25 = v23;
          if (v23)
          {
            v26 = CUTXTDictionaryCreateWithTXTData(v23, v24, 0);
            v27 = [v26 objectForKeyedSubscript:@"vendorName"];
            v28 = [v26 objectForKeyedSubscript:@"modelName"];
            v29 = [v26 objectForKeyedSubscript:@"pairingName"];
            v30 = v29;
            if (v27 && v28)
            {
              v48 = v29;
              v31 = [v16 configuration];
              v32 = [v31 flags];

              if (![v27 isEqualToString:@"Apple Inc."] || v47->_allowAppleToAppleWiFiAware || (v32 & 0x40) != 0)
              {
                v34 = [v16 wifiAwareVendorNameMatch];
                v35 = [v16 wifiAwareModelNameMatch];
                v36 = [v34 string];
                v45 = v34;
                v37 = [v36 compare:v27 options:{objc_msgSend(v34, "compareOptions")}];

                v38 = [v35 string];
                v46 = v28;
                v39 = [v38 compare:v28 options:{objc_msgSend(v35, "compareOptions")}];

                if (v37 | v39)
                {
                  v9 = v44;
                  v28 = v46;
                  self = v47;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1000357CC(v16);
                  }
                }

                else
                {
                  self = v47;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    v40 = v48;
                    serviceName = v47->_serviceName;
                    LogPrintF();
                  }

                  [(DAWiFiNetwork *)v22 setWifiAwareOTAName:v48, v40, serviceName, v42, v43];
                  [(DAWiFiNetwork *)v22 setWifiAwareVendorName:v27];
                  v28 = v46;
                  [(DAWiFiNetwork *)v22 setWifiAwareModelName:v46];
                  [v53 addObject:v22];
                  v9 = v44;
                }

                v11 = DAWiFiScanDescriptor;
LABEL_38:
                v30 = v48;
              }

              else
              {
                v11 = DAWiFiScanDescriptor;
                self = v47;
                v30 = v48;
                if (dword_100060470 <= 30)
                {
                  if (dword_100060470 != -1 || (v33 = _LogCategory_Initialize(), v30 = v48, v33))
                  {
                    sub_10003578C();
                    goto LABEL_38;
                  }
                }
              }
            }
          }

          v14 = v49;
        }

        [v14 setObject:v53 forKey:v16];
      }

      v52 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v52);
  }

  (*(self->_resultsHandler + 2))();
}

- (void)pairingRequestStartedForDataSession:(id)a3 pinCodeInputCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035824();
  }

  v7 = objc_retainBlock(v6);
  pinCodeInputHandler = self->_pinCodeInputHandler;
  self->_pinCodeInputHandler = v7;

  (*(self->_showPinInputHandler + 2))();
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5 pairingKeyStoreID:(id)a6 deviceID:(unint64_t)a7
{
  v22 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    wifiAwarePairingDevice = self->_wifiAwarePairingDevice;
    wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
    v18 = v22;
    v19 = v12;
    LogPrintF();
  }

  v15 = v14;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100035864();
    }

    v16 = DAErrorF();
  }

  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v18 = v15;
    v19 = a7;
    LogPrintF();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v16, a7, v15);
  }

  [v22 stop];
  [(WiFiAwareSubscriber *)self->_subscriber stop];
}

- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  v10 = v6;
  if (wifiAwareDevicePairedHandler)
  {
    v9 = [NSError errorWithDomain:WiFiP2PErrorDomain code:a4 userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v9, 0, 0);

    v7 = v10;
  }

  if (dword_100060470 <= 90)
  {
    if (dword_100060470 != -1 || (v6 = _LogCategory_Initialize(), v7 = v10, v6))
    {
      v6 = LogPrintF();
      v7 = v10;
    }
  }

  _objc_release_x1(v6, v7);
}

- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (dword_100060470 <= 90)
  {
    v6 = v4;
    if (dword_100060470 != -1 || (v4 = _LogCategory_Initialize(), v5 = v6, v4))
    {
      v4 = LogPrintF();
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)dataSessionRequestStarted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100060470 <= 30)
  {
    v5 = v3;
    if (dword_100060470 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = sub_100035880();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

@end