@interface DAWiFiScanner
- (DAWiFiScanner)init;
- (id)_coalesceResults:(id)results descriptors:(id)descriptors;
- (id)_defaultScanParameters;
- (id)_resultForSubscriber:(id)subscriber descriptors:(id)descriptors discoveryResult:(id)result;
- (id)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d toNewName:(id)name;
- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error;
- (void)_configurePublisherWithPairingClient:(int64_t)client;
- (void)_configureSubscriber;
- (void)_performScan;
- (void)_queueNextScan;
- (void)authorizePairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)pairSelectedWiFiAwareDevice:(id)device withBundleID:(id)d;
- (void)pairingPINAccepted:(id)accepted;
- (void)pairingRequestApprovalRequiredByPublisher:(id)publisher forSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion;
- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code;
- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)removeAllPairedDevices:(id)devices;
- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler;
- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey;
- (void)selectWiFiAwareDevice:(id)device withBundleID:(id)d;
- (void)startScanningWithDescriptors:(id)descriptors;
- (void)stopScanning;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
- (void)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler;
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

- (void)startScanningWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
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
    objc_storeStrong(&self->_descriptors, descriptors);
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
      v60 = descriptorsCopy;
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
          sSID = [v17 SSID];
          if (sSID)
          {
            v19 = sSID;
            sSID2 = [v17 SSID];
            v21 = [sSID2 length];

            if (v21)
            {
              v22 = self->_SSIDs;
              sSID3 = [v17 SSID];
              [(NSMutableSet *)v22 addObject:sSID3];
            }
          }

          prefix = [v17 prefix];
          if (prefix)
          {
            v25 = prefix;
            prefix2 = [v17 prefix];
            v27 = [prefix2 length];

            if (v27)
            {
              v28 = self->_prefixes;
              prefix3 = [v17 prefix];
              [(NSMutableSet *)v28 addObject:prefix3];
            }
          }

          serviceName = [v17 serviceName];

          if (serviceName)
          {
            v6 = DAWiFiScanDescriptor;
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034A00(v17);
            }

            serviceName2 = [v17 serviceName];
            serviceName = self->_serviceName;
            self->_serviceName = serviceName2;

            configuration = [v17 configuration];
            wifiAwareServiceType = [configuration wifiAwareServiceType];

            if (wifiAwareServiceType == 20)
            {
              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                sub_100034A70();
              }

              bundleID = [v17 bundleID];
              wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
              self->_wifiAwarePairingBundleID = bundleID;

              configuration2 = [v17 configuration];
              displayName = [configuration2 displayName];

              v40 = MGCopyAnswerWithError();
              v41 = +[NSCharacterSet letterCharacterSet];
              invertedSet = [v41 invertedSet];
              v43 = [v40 componentsSeparatedByCharactersInSet:invertedSet];
              v44 = [v43 componentsJoinedByString:&stru_10005A2C8];

              if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
              {
                v58 = v44;
                v59 = self->_wifiAwarePairingBundleID;
                v56 = displayName;
                v57 = @"Apple";
                LogPrintF();
              }

              v45 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:displayName vendorID:@"Apple" modelName:v44 attributes:&__NSDictionary0__struct];
              wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
              self->_wifiAwarePairingInfo = v45;

              configuration3 = [v17 configuration];
              flags = [configuration3 flags];

              v31 = 1;
              if ((flags & 0x40) != 0)
              {
                v7 = 2;
              }

              else
              {
                v7 = 1;
              }

              wifiAwareServiceType = 20;
              descriptorsCopy = v60;
              v6 = DAWiFiScanDescriptor;
            }

            else
            {
              v7 = 1;
              v31 = 1;
              descriptorsCopy = v60;
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
      descriptorsCopy = v60;
      v6 = DAWiFiScanDescriptor;
    }

    else
    {
      v31 = 0;
    }

    wifiAwareServiceType = 10;
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
        if (wifiAwareServiceType == 10)
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
            v57 = wifiAwareServiceType;
            LogPrintF();
          }

          [(DAWiFiScanner *)self _configurePublisherWithPairingClient:v7, v56, v57, v58, v59];
          [(DAWiFiScanner *)self _startPublisherWithDescriptors:descriptorsCopy];
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
    _defaultScanParameters = [(DAWiFiScanner *)self _defaultScanParameters];
    allObjects = [(NSMutableSet *)self->_SSIDs allObjects];
    [_defaultScanParameters setSSIDList:allObjects];

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
    [v5 performScanWithParameters:_defaultScanParameters reply:v8];

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

- (id)_coalesceResults:(id)results descriptors:(id)descriptors
{
  resultsCopy = results;
  descriptorsCopy = descriptors;
  v26 = +[NSMutableDictionary dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = descriptorsCopy;
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

        scanResultPredicate = [v8 scanResultPredicate];
        v10 = [resultsCopy filteredArrayUsingPredicate:scanResultPredicate];

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
                networkName = [v17 networkName];
                [(DAWiFiNetwork *)v18 setSSID:networkName];

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

- (void)selectWiFiAwareDevice:(id)device withBundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
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
  selfCopy = self;
  v34 = dCopy;
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
      signature = [v14 signature];
      if (signature == [deviceCopy signature])
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

      wifiAwareDevicePairingID = [deviceCopy wifiAwareDevicePairingID];
      if (wifiAwareDevicePairingID)
      {
        v18 = wifiAwareDevicePairingID;
        pairedUUID = [v14 pairedUUID];

        if (pairedUUID)
        {
          pairedUUID2 = [v14 pairedUUID];
          uUIDString = [pairedUUID2 UUIDString];

          wifiAwareDevicePairingID2 = [deviceCopy wifiAwareDevicePairingID];
          uUIDString2 = [wifiAwareDevicePairingID2 UUIDString];

          if ([uUIDString isEqualToString:uUIDString2])
          {
            if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
            {
              sub_100034D9C();
            }

            v24 = [v14 copy];

            v11 = v24;
          }

          v16 = v11;

          v11 = uUIDString;
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

  dCopy = v34;
  if (v11)
  {
    v26 = selfCopy->_deviceOTANameToBroadcast;
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E04();
    }

    if (([deviceCopy flags] & 0x400) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = [[WiFiAwareDataSession alloc] initWithDiscoveryResult:v11 serviceType:0 serviceSpecificInfo:0];
    wifiAwareDataSession = selfCopy->_wifiAwareDataSession;
    selfCopy->_wifiAwareDataSession = v28;

    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setConnectionMode:2];
    v30 = [WiFiAwarePairingMetadata alloc];
    name = [deviceCopy name];
    v32 = [v30 initWithBundleID:v34 selfPairingName:v26 peerDeviceName:name storageClass:1 lifetime:v27 pairingClient:0.0];
    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setPairingMetadata:v32];

    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setPairingDelegate:selfCopy];
    [(WiFiAwareDataSession *)selfCopy->_wifiAwareDataSession setDelegate:selfCopy];
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034E44(&selfCopy->_wifiAwareDataSession);
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

- (void)pairSelectedWiFiAwareDevice:(id)device withBundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EB8(self);
  }

  discoveryConfiguration = [deviceCopy discoveryConfiguration];
  displayName = [discoveryConfiguration displayName];

  wifiAwareVendorName = [deviceCopy wifiAwareVendorName];
  wifiAwareModelName = [deviceCopy wifiAwareModelName];
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  wifiAwarePairingDevice = self->_wifiAwarePairingDevice;
  self->_wifiAwarePairingDevice = deviceCopy;
  v12 = deviceCopy;

  v13 = [[WiFiAwarePairedDeviceInfo alloc] initWithName:displayName vendorID:wifiAwareVendorName modelName:wifiAwareModelName attributes:&__NSDictionary0__struct];
  wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
  self->_wifiAwarePairingInfo = v13;

  discoveryConfiguration2 = [v12 discoveryConfiguration];
  bundleID = [discoveryConfiguration2 bundleID];
  wifiAwarePairingBundleID = self->_wifiAwarePairingBundleID;
  self->_wifiAwarePairingBundleID = bundleID;

  [(WiFiAwareDataSession *)self->_wifiAwareDataSession start];
}

- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034EFC();
    if (accept)
    {
LABEL_5:
      if (type == 30)
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

  else if (accept)
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

- (void)pairingPINAccepted:(id)accepted
{
  acceptedCopy = accepted;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100034F98(self);
  }

  v4 = [WiFiAwarePairingInfo alloc];
  name = [acceptedCopy name];
  v6 = [v4 initWithPeerDeviceName:name];

  (*(self->_approvePINHandler + 2))();
}

- (id)_resultForSubscriber:(id)subscriber descriptors:(id)descriptors discoveryResult:(id)result
{
  subscriberCopy = subscriber;
  descriptorsCopy = descriptors;
  resultCopy = result;
  v10 = +[NSMutableDictionary dictionary];
  v51 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = descriptorsCopy;
  v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v50)
  {
    v11 = DAWiFiScanDescriptor;
    v49 = *v53;
    v41 = subscriberCopy;
    v45 = v10;
    v46 = resultCopy;
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
          sub_100034FF4(subscriberCopy);
        }

        configuration = [subscriberCopy configuration];
        serviceName = [configuration serviceName];
        serviceName2 = [v13 serviceName];
        v18 = [serviceName isEqualToString:serviceName2];

        if (v18)
        {
          v19 = v11[28].cache;
          if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
          {
            sub_100035068(subscriberCopy);
          }

          v20 = objc_alloc_init(DAWiFiNetwork);
          configuration2 = [subscriberCopy configuration];
          serviceName3 = [configuration2 serviceName];
          [(DAWiFiNetwork *)v20 setServiceName:serviceName3];

          -[DAWiFiNetwork setSignature:](v20, "setSignature:", [resultCopy signature]);
          pairedUUID = [resultCopy pairedUUID];
          [(DAWiFiNetwork *)v20 setWifiAwarePairedID:pairedUUID];

          serviceSpecificInfo = [resultCopy serviceSpecificInfo];
          txtRecordData = [serviceSpecificInfo txtRecordData];

          if (txtRecordData)
          {
            v27 = CUTXTDictionaryCreateWithTXTData(txtRecordData, v26, 0);
            v28 = [v27 objectForKeyedSubscript:@"vendorName"];
            v29 = [v27 objectForKeyedSubscript:@"modelName"];
            v30 = [v27 objectForKeyedSubscript:@"pairingName"];
            v31 = v30;
            if (v28 && v29)
            {
              v44 = v30;
              configuration3 = [v13 configuration];
              flags = [configuration3 flags];

              if (![v28 isEqualToString:@"Apple Inc."] || self->_allowAppleToAppleWiFiAware || (flags & 0x40) != 0)
              {
                wifiAwareVendorNameMatch = [v13 wifiAwareVendorNameMatch];
                wifiAwareModelNameMatch = [v13 wifiAwareModelNameMatch];
                string = [wifiAwareVendorNameMatch string];
                v43 = wifiAwareVendorNameMatch;
                v42 = [string compare:v28 options:{objc_msgSend(wifiAwareVendorNameMatch, "compareOptions")}];

                string2 = [wifiAwareModelNameMatch string];
                v38 = [string2 compare:v29 options:{objc_msgSend(wifiAwareModelNameMatch, "compareOptions")}];

                if (v42 | v38)
                {
                  subscriberCopy = v41;
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
                  subscriberCopy = v41;
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

          resultCopy = v46;
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

- (void)_configurePublisherWithPairingClient:(int64_t)client
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
  v11 = [[WiFiAwarePairingMetadata alloc] initWithBundleID:self->_wifiAwarePairingBundleID selfPairingName:v10 peerDeviceName:0 storageClass:1 lifetime:client pairingClient:0.0];
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

- (void)authorizePairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client completionHandler:(id)handler
{
  forCopy = for;
  dCopy = d;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v16 = dCopy;
    v17 = forCopy;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:handlerCopy completionHandler:lifetime, v16, v17];
}

- (unint64_t)authorizeNewPairedDeviceFor:(id)for pairingKeyStoreID:(id)d storageClass:(int64_t)class lifetime:(double)lifetime client:(int64_t)client error:(id *)error
{
  forCopy = for;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v18 = dCopy;
    v19 = forCopy;
    LogPrintF();
  }

  v16 = [(WiFiAwareDevicesStore *)self->_store authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:class lifetime:client client:error error:lifetime, v18, v19];

  return v16;
}

- (void)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    dCopy = d;
    v10 = forCopy;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:forCopy withDeviceID:d completionHandler:handlerCopy, dCopy, v10];
}

- (id)reauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    dCopy = d;
    v10 = forCopy;
    LogPrintF();
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store reauthorizePairedDeviceFor:forCopy withDeviceID:d, dCopy, v10];

  return v7;
}

- (void)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    dCopy = d;
    v10 = forCopy;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:0 completionHandler:handlerCopy, dCopy, v10];
}

- (id)deauthorizePairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    dCopy = d;
    v10 = forCopy;
    LogPrintF();
  }

  v7 = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:0, dCopy, v10];

  return v7;
}

- (void)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = forCopy;
    dCopy = d;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:1 completionHandler:handlerCopy, v9, dCopy];
}

- (id)uninstallPairedDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v9 = forCopy;
    dCopy = d;
    LogPrintF();
  }

  dCopy = [(WiFiAwareDevicesStore *)self->_store deauthorizePairedDeviceFor:forCopy withDeviceID:d remove:1, v9, dCopy];

  return dCopy;
}

- (void)removeAllPairedDevicesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000353B0();
  }

  [(WiFiAwareDevicesStore *)self->_store removeAllPairedDevicesFor:forCopy completionHandler:handlerCopy];
}

- (void)removeAllPairedDevices:(id)devices
{
  devicesCopy = devices;
  store = self->_store;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021BF0;
  v7[3] = &unk_100059830;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [(WiFiAwareDevicesStore *)store removeAllPairedDevices:v7];
}

- (void)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler
{
  forCopy = for;
  nameCopy = name;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v13 = forCopy;
    dCopy = d;
    v12 = nameCopy;
    LogPrintF();
  }

  [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy completionHandler:handlerCopy, v12, v13, dCopy];
}

- (id)updatePairedDeviceNameFor:(id)for withAppPairingID:(unint64_t)d toNewName:(id)name
{
  forCopy = for;
  nameCopy = name;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    v13 = forCopy;
    dCopy = d;
    v12 = nameCopy;
    LogPrintF();
  }

  dCopy = [(WiFiAwareDevicesStore *)self->_store updatePairedDeviceNameFor:forCopy withDeviceID:d toNewName:nameCopy, v12, v13, dCopy];

  return dCopy;
}

- (void)publisherStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_1000353F0();
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  publisherCopy = publisher;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035430();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [publisherCopy stop];
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  publisherCopy = publisher;
  v5 = publisherCopy;
  if (dword_100060470 <= 30)
  {
    v6 = publisherCopy;
    if (dword_100060470 != -1 || (publisherCopy = _LogCategory_Initialize(), v5 = v6, publisherCopy))
    {
      publisherCopy = sub_100035470();
      v5 = v6;
    }
  }

  _objc_release_x1(publisherCopy, v5);
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD
{
  publisherCopy = publisher;
  handleCopy = handle;
  infoCopy = info;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000354B0(self);
  }

  selfCopy = self;
  configuration = [(WiFiAwarePublisher *)self->_publisher configuration];
  serviceName = [configuration serviceName];
  configuration2 = [publisherCopy configuration];
  serviceName2 = [configuration2 serviceName];
  v20 = [serviceName isEqualToString:serviceName2];

  if (v20)
  {
    v21 = dCopy;
    if (v21)
    {
      v22 = 0;
      v23 = selfCopy;
    }

    else
    {
      v23 = selfCopy;
      if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
      {
        sub_1000354F8();
      }

      v22 = DAErrorF();
    }

    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      iDCopy = iD;
      v42 = v21;
      LogPrintF();
    }

    wifiAwareDevicePairedHandler = v23->_wifiAwareDevicePairedHandler;
    if (wifiAwareDevicePairedHandler)
    {
      wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v22, iD, v21);
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
        v45 = dCopy;
        v46 = handleCopy;
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
          serviceName3 = [v30 serviceName];
          configuration3 = [publisherCopy configuration];
          serviceName4 = [configuration3 serviceName];
          v34 = [serviceName3 isEqualToString:serviceName4];

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

            dCopy = v45;
            handleCopy = v46;
            v22 = v43;
            v21 = v44;
            goto LABEL_28;
          }
        }

        v35 = v30;

        dCopy = v45;
        handleCopy = v46;
        v22 = v43;
        v21 = v44;
        if (!v35)
        {
          goto LABEL_29;
        }

        v36 = objc_alloc_init(DAWiFiNetwork);
        [(DAWiFiNetwork *)v36 setWifiAwarePairedID:v44];
        configuration4 = [publisherCopy configuration];
        serviceName5 = [configuration4 serviceName];
        [(DAWiFiNetwork *)v36 setServiceName:serviceName5];

        v39 = +[NSMutableDictionary dictionary];
        v53 = v36;
        v40 = [NSArray arrayWithObjects:&v53 count:1];
        [v39 setObject:v40 forKey:v35];

        (*(selfCopy->_resultsHandler + 2))();
        v25 = v35;
      }

LABEL_28:
    }

LABEL_29:
    [publisherCopy stop];
  }
}

- (void)subscriberStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_100035514();
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  subscriberCopy = subscriber;
  if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035554();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    v7 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v7, 0, 0);
  }

  [subscriberCopy stop];
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  addressCopy = address;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035594();
  }
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  v5 = subscriberCopy;
  if (dword_100060470 <= 90)
  {
    v6 = subscriberCopy;
    if (dword_100060470 != -1 || (subscriberCopy = _LogCategory_Initialize(), v5 = v6, subscriberCopy))
    {
      subscriberCopy = sub_1000355D8();
      v5 = v6;
    }
  }

  _objc_release_x1(subscriberCopy, v5);
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  subscriberCopy = subscriber;
  resultCopy = result;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035618();
  }

  v7 = [(DAWiFiScanner *)self _resultForSubscriber:subscriberCopy descriptors:self->_descriptors discoveryResult:resultCopy];
  (*(self->_resultsHandler + 2))();
}

- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  messageCopy = message;
  addressCopy = address;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035658();
  }
}

- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code
{
  publisherCopy = publisher;
  subscriberCopy = subscriber;
  codeCopy = code;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035698();
  }

  v10 = [codeCopy copy];
  storedPin = self->_storedPin;
  self->_storedPin = v10;

  v12 = self->_storedPin;
  (*(self->_pinCreatedOnPublisher + 2))();
}

- (void)pairingRequestApprovalRequiredByPublisher:(id)publisher forSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion
{
  publisherCopy = publisher;
  subscriberCopy = subscriber;
  completionCopy = completion;
  v11 = DAWiFiScanDescriptor;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_1000356B4();
  }

  v42 = completionCopy;
  v12 = objc_retainBlock(completionCopy);
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
    v44 = subscriberCopy;
    selfCopy = self;
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
        configuration = [(WiFiAwarePublisher *)self->_publisher configuration];
        serviceName = [configuration serviceName];
        serviceName2 = [v16 serviceName];
        v20 = [serviceName isEqualToString:serviceName2];

        if (v20)
        {
          cache = v11[28].cache;
          if (cache <= 30 && (cache != -1 || _LogCategory_Initialize()))
          {
            sub_100035714(&self->_publisher);
          }

          v22 = objc_alloc_init(DAWiFiNetwork);
          [(DAWiFiNetwork *)v22 setServiceName:self->_serviceName];
          txtRecordData = [subscriberCopy txtRecordData];
          v25 = txtRecordData;
          if (txtRecordData)
          {
            v26 = CUTXTDictionaryCreateWithTXTData(txtRecordData, v24, 0);
            v27 = [v26 objectForKeyedSubscript:@"vendorName"];
            v28 = [v26 objectForKeyedSubscript:@"modelName"];
            v29 = [v26 objectForKeyedSubscript:@"pairingName"];
            v30 = v29;
            if (v27 && v28)
            {
              v48 = v29;
              configuration2 = [v16 configuration];
              flags = [configuration2 flags];

              if (![v27 isEqualToString:@"Apple Inc."] || selfCopy->_allowAppleToAppleWiFiAware || (flags & 0x40) != 0)
              {
                wifiAwareVendorNameMatch = [v16 wifiAwareVendorNameMatch];
                wifiAwareModelNameMatch = [v16 wifiAwareModelNameMatch];
                string = [wifiAwareVendorNameMatch string];
                v45 = wifiAwareVendorNameMatch;
                v37 = [string compare:v27 options:{objc_msgSend(wifiAwareVendorNameMatch, "compareOptions")}];

                string2 = [wifiAwareModelNameMatch string];
                v46 = v28;
                v39 = [string2 compare:v28 options:{objc_msgSend(wifiAwareModelNameMatch, "compareOptions")}];

                if (v37 | v39)
                {
                  subscriberCopy = v44;
                  v28 = v46;
                  self = selfCopy;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1000357CC(v16);
                  }
                }

                else
                {
                  self = selfCopy;
                  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
                  {
                    v40 = v48;
                    serviceName = selfCopy->_serviceName;
                    LogPrintF();
                  }

                  [(DAWiFiNetwork *)v22 setWifiAwareOTAName:v48, v40, serviceName, v42, publisherCopy];
                  [(DAWiFiNetwork *)v22 setWifiAwareVendorName:v27];
                  v28 = v46;
                  [(DAWiFiNetwork *)v22 setWifiAwareModelName:v46];
                  [v53 addObject:v22];
                  subscriberCopy = v44;
                }

                v11 = DAWiFiScanDescriptor;
LABEL_38:
                v30 = v48;
              }

              else
              {
                v11 = DAWiFiScanDescriptor;
                self = selfCopy;
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

- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    sub_100035824();
  }

  v7 = objc_retainBlock(handlerCopy);
  pinCodeInputHandler = self->_pinCodeInputHandler;
  self->_pinCodeInputHandler = v7;

  (*(self->_showPinInputHandler + 2))();
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info pairingKeyStoreID:(id)d deviceID:(unint64_t)iD
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  dCopy = d;
  if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
  {
    wifiAwarePairingDevice = self->_wifiAwarePairingDevice;
    wifiAwarePairingInfo = self->_wifiAwarePairingInfo;
    v18 = sessionCopy;
    iDCopy = addressCopy;
    LogPrintF();
  }

  v15 = dCopy;
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
    iDCopy = iD;
    LogPrintF();
  }

  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  if (wifiAwareDevicePairedHandler)
  {
    wifiAwareDevicePairedHandler[2](wifiAwareDevicePairedHandler, v16, iD, v15);
  }

  [sessionCopy stop];
  [(WiFiAwareSubscriber *)self->_subscriber stop];
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  sessionCopy = session;
  v7 = sessionCopy;
  wifiAwareDevicePairedHandler = self->_wifiAwareDevicePairedHandler;
  v10 = sessionCopy;
  if (wifiAwareDevicePairedHandler)
  {
    v9 = [NSError errorWithDomain:WiFiP2PErrorDomain code:error userInfo:0];
    (*(wifiAwareDevicePairedHandler + 2))(wifiAwareDevicePairedHandler, v9, 0, 0);

    v7 = v10;
  }

  if (dword_100060470 <= 90)
  {
    if (dword_100060470 != -1 || (sessionCopy = _LogCategory_Initialize(), v7 = v10, sessionCopy))
    {
      sessionCopy = LogPrintF();
      v7 = v10;
    }
  }

  _objc_release_x1(sessionCopy, v7);
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (dword_100060470 <= 90)
  {
    v6 = sessionCopy;
    if (dword_100060470 != -1 || (sessionCopy = _LogCategory_Initialize(), v5 = v6, sessionCopy))
    {
      sessionCopy = LogPrintF();
      v5 = v6;
    }
  }

  _objc_release_x1(sessionCopy, v5);
}

- (void)dataSessionRequestStarted:(id)started
{
  startedCopy = started;
  v4 = startedCopy;
  if (dword_100060470 <= 30)
  {
    v5 = startedCopy;
    if (dword_100060470 != -1 || (startedCopy = _LogCategory_Initialize(), v4 = v5, startedCopy))
    {
      startedCopy = sub_100035880();
      v4 = v5;
    }
  }

  _objc_release_x1(startedCopy, v4);
}

@end