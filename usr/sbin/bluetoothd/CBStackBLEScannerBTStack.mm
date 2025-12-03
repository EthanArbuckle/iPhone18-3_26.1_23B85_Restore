@interface CBStackBLEScannerBTStack
- ($D91DDCA3822F03E96939068EA8DE741A)aggregateDiscoveryTypes;
- (BOOL)_addMfgScanIfNeeded:(unint64_t)needed scanRequest:(void *)request;
- (CBStackBLEScannerBTStack)init;
- (id).cxx_construct;
- (id)_deviceFilterUUIDs:(id)ds;
- (id)_packetTypeForDiscovery:(id)discovery;
- (id)_scanSummary:(void *)summary;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)aggregateDiscoveryFlags;
- (void)_activate:(BOOL)_activate;
- (void)_addBufferedTypesIfNeeded:(id *)needed scanRequest:(void *)request;
- (void)_addServiceUUIDsWithParametersToScanRequestIfNeeded:(void *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids;
- (void)_addTypeIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_addTypeWithParamsIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_addUUIDIfNeeded:(LeUuid *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids;
- (void)_addUUIDIfNeededWithParams:(LeUuid *)params matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_advBufferDrained;
- (void)_aopBTBufferDrained;
- (void)_deviceSegmentFound:(id)found;
- (void)_invalidated;
- (void)_oobKeysRemoveAll;
- (void)_oobKeysUpdate;
- (void)_proxyOOBKeysUpdateOnDeviceFound:(id)found;
- (void)_reportAggressiveScanIfNeeded;
- (void)_rescanTimerFired;
- (void)_rescanTimerUpdate:(BOOL)update;
- (void)_sensorTrackingUpdate;
- (void)_updateBufferedConfigsForAOP;
- (void)_updateBufferedFlags:(id)flags type:(int)type;
- (void)clearDuplicateFilterCache:(id)cache;
- (void)deviceBuffered:(id)buffered;
- (void)deviceFound:(id)found;
- (void)deviceLost:(id)lost;
- (void)finishDiscovery:(id)discovery completionHandler:(id)handler;
- (void)handleInjectedAOPBufAdv:(id)adv;
- (void)invalidate;
@end

@implementation CBStackBLEScannerBTStack

- (void)_oobKeysUpdate
{
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->_discoveryArray;
  v54 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v54)
  {
    v57 = 0;
    v58 = 0;
    v2 = 0;
    v60 = 0;
    v56 = 0;
    v59 = 0;
    v53 = *v83;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        v62 = v2;
        if (*v83 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v82 + 1) + 8 * i);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        oobKeys = [v3 oobKeys];
        v4 = [oobKeys countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v4)
        {
          v64 = *v79;
          do
          {
            for (j = 0; j != v4; j = j + 1)
            {
              if (*v79 != v64)
              {
                objc_enumerationMutation(oobKeys);
              }

              v6 = *(*(&v78 + 1) + 8 * j);
              btAddressType = [v6 btAddressType];
              addressType = [v6 addressType];
              btAddressData = [v6 btAddressData];
              if ([btAddressData length] == 6 || objc_msgSend(btAddressData, "length") == 7)
              {
                v10 = addressType | btAddressType;
                if (v10)
                {
                  LOBYTE(v74) = v10;
                  v11 = btAddressData;
                  v12 = v11;
                  if (v11)
                  {
                    if ([v11 length] != 7 && v10 == 1 && objc_msgSend(v12, "length") == 6)
                    {
                      v13 = [NSMutableData dataWithBytes:&v74 length:1];
                      v14 = v12;
                      [v13 appendBytes:objc_msgSend(v12 length:{"bytes"), 6}];
                      btAddressData = [v13 copy];
                    }

                    else
                    {
                      btAddressData = v12;
                    }
                  }

                  else
                  {
                    btAddressData = 0;
                  }
                }

                if ([btAddressData length] == 7)
                {
                  v15 = [btAddressData subdataWithRange:{1, 6}];
                }

                else
                {
                  v15 = btAddressData;
                }

                v16 = v15;
                irkData = [v6 irkData];
                if ([irkData length] == 16)
                {
                  keyType = [v6 keyType];
                  v19 = keyType;
                  if (keyType)
                  {
                    if (keyType == 255)
                    {
                      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                      {
                        v20 = CUPrintNSDataAddress();
                        v21 = CUPrintNSObjectMasked();
                        CUPrintFlags32();
                        v50 = v49 = v21;
                        v48 = v20;
                        LogPrintF_safe();
                      }
                    }

                    else
                    {
                      v23 = [NSNumber numberWithUnsignedInt:keyType];
                      v24 = v60;
                      if (!v60)
                      {
                        v24 = objc_alloc_init(NSMutableDictionary);
                      }

                      v60 = v24;
                      v25 = [v24 objectForKeyedSubscript:v23];
                      v26 = v25 == 0;

                      if (v26)
                      {
                        v27 = objc_alloc_init(NSMutableArray);
                        [v60 setObject:v27 forKeyedSubscript:v23];
                      }

                      v28 = v62;
                      if (!v62)
                      {
                        v28 = objc_alloc_init(NSMutableDictionary);
                      }

                      v62 = v28;
                      v29 = [v28 objectForKeyedSubscript:v23];
                      v30 = v29 == 0;

                      if (v30)
                      {
                        v31 = objc_alloc_init(NSMutableOrderedSet);
                        [v62 setObject:v31 forKeyedSubscript:v23];
                      }

                      v32 = [v62 objectForKeyedSubscript:v23];
                      v33 = [v32 count];

                      v34 = [v62 objectForKeyedSubscript:v23];
                      [v34 addObject:irkData];

                      v35 = [v62 objectForKeyedSubscript:v23];
                      LODWORD(v33) = v33 == [v35 count];

                      if (v33)
                      {
                        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                        {
                          v36 = CUPrintNSObjectMasked();
                          v37 = CUPrintNSDataAddress();
                          CUPrintFlags32();
                          v50 = v49 = v37;
                          v48 = v36;
                          LogPrintF_safe();
                        }
                      }

                      else if (v19 == 1 && ([v60 objectForKeyedSubscript:v23], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "addObject:", v6), v39, ++v56, dword_100B50FA0 <= 20) && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                      {
                        v40 = CUPrintNSDataAddress();
                        v41 = CUPrintNSObjectMasked();
                        CUPrintFlags32();
                        v50 = v49 = v41;
                        LogPrintF_safe();

                        v57 ^= [v6 hash];
                      }

                      else
                      {
                        v57 ^= [v6 hash];
                      }
                    }
                  }

                  else if (v59 < 10)
                  {
                    v38 = v58;
                    if (!v58)
                    {
                      v38 = objc_alloc_init(NSMutableDictionary);
                    }

                    v58 = v38;
                    [v38 setObject:irkData forKeyedSubscript:btAddressData];
                    ++v59;
                  }

                  else if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    v22 = CUPrintNSDataAddress();
                    CUPrintNSObjectMasked();
                    v49 = v48 = v22;
                    LogPrintF_safe();
                  }
                }
              }
            }

            v4 = [oobKeys countByEnumeratingWithState:&v78 objects:v86 count:16];
          }

          while (v4);
        }

        v2 = v62;
      }

      v54 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v54);
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v2 = 0;
    v60 = 0;
    v56 = 0;
  }

  v63 = v2;

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  oobKeyMap = self->_oobKeyMap;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100130888;
  v71[3] = &unk_100AE1628;
  v43 = v58;
  v72 = v43;
  v73 = &v74;
  [(NSMutableDictionary *)oobKeyMap enumerateKeysAndObjectsUsingBlock:v71];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100130DEC;
  v66[3] = &unk_100AE1628;
  v66[4] = self;
  v66[5] = &v67;
  [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v66];
  if (*(v68 + 6) || *(v75 + 6) || v57 != self->_proxyoobKeysHash)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      [(NSMutableDictionary *)self->_oobKeyMap count];
      [(NSMutableDictionary *)v43 count];
      LogPrintF_safe();
    }

    if (v56 && dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_83;
    }
  }

  else if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    [(NSMutableDictionary *)v43 count];
LABEL_83:
    LogPrintF_safe();
  }

  if (v57 == self->_proxyoobKeysHash && (v44 = atomic_load(&self->_aopProxyOOBKeyUpdatePending), (v44 & 1) == 0))
  {
    selfCopy2 = self;
  }

  else
  {
    if (!v60)
    {
      v60 = objc_alloc_init(NSMutableDictionary);
    }

    if (qword_100B51098 != -1)
    {
      sub_10080AB4C();
    }

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000D6698;
    v65[3] = &unk_100ADF848;
    v65[4] = self;
    sub_1000C8F9C(qword_100B51090, v60, v65);
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    selfCopy2 = self;
    self->_proxyoobKeysHash = v57;
  }

  v46 = selfCopy2->_oobKeyMap;
  selfCopy2->_oobKeyMap = v43;
  v47 = v43;

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v74, 8);
}

- (void)_sensorTrackingUpdate
{
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_discoveryArray;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v3 = 0;
  v28 = *v48;
  v29 = v2;
  do
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v48 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v47 + 1) + 8 * i);
      if (([v32 discoveryFlags] & 0x20000000) != 0)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        deviceFilter = [v32 deviceFilter];
        v4 = [deviceFilter countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (!v4)
        {
          goto LABEL_25;
        }

        v5 = *v44;
        while (1)
        {
          v6 = 0;
          do
          {
            if (*v44 != v5)
            {
              objc_enumerationMutation(deviceFilter);
            }

            v7 = *(*(&v43 + 1) + 8 * v6);
            v8 = [[NSUUID alloc] initWithUUIDString:v7];
            if (v8)
            {
              goto LABEL_13;
            }

            v42 = 0;
            v41 = 0;
            v9 = v7;
            [v7 UTF8String];
            if (TextToHardwareAddress())
            {
              v8 = 0;
              goto LABEL_18;
            }

            v51 = 0;
            v52 = 0;
            if (qword_100B508D0 != -1)
            {
              sub_10080AC24();
            }

            sub_1000498D4(off_100B508C8, (v41 << 40) | (BYTE1(v41) << 32) | (BYTE2(v41) << 24) | (HIBYTE(v41) << 16) | (v42 << 8) | HIBYTE(v42), 1u, 1u, 0, 0, &v51);
            v8 = sub_10004DF60(&v51);
            if (v8)
            {
LABEL_13:
              if (!v3)
              {
                v3 = objc_alloc_init(NSMutableDictionary);
              }

              [v3 setObject:v32 forKeyedSubscript:v8];
            }

LABEL_18:

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v10 = [deviceFilter countByEnumeratingWithState:&v43 objects:v56 count:16];
          v4 = v10;
          if (!v10)
          {
LABEL_25:

            break;
          }
        }
      }
    }

    v29 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  }

  while (v29);
LABEL_30:

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_sensorTrackingDevices;
  v12 = [(NSSet *)v11 countByEnumeratingWithState:&v37 objects:v55 count:16];
  v13 = 0;
  if (v12)
  {
    v14 = *v38;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * j);
        v17 = [v3 objectForKeyedSubscript:{v16, v25}];
        v18 = v17 == 0;

        if (v18)
        {
          if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
          {
            v25 = v16;
            LogPrintF_safe();
          }

          sessionHandle = self->_sessionHandle;
          v20 = sub_100007EE8();
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100137C74;
          v36[3] = &unk_100AE1200;
          v36[4] = v16;
          v36[5] = sessionHandle;
          sub_10000CA94(v20, v36);
          ++v13;
        }
      }

      v12 = [(NSSet *)v11 countByEnumeratingWithState:&v37 objects:v55 count:16];
    }

    while (v12);
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100137CCC;
  v33[3] = &unk_100AE1728;
  v35 = 1;
  v34 = -127;
  v33[4] = self;
  v33[5] = &v51;
  [v3 enumerateKeysAndObjectsUsingBlock:v33];
  if (*(v52 + 6) | v13)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      [(NSSet *)self->_sensorTrackingDevices count];
      [v3 count];
      LogPrintF_safe();
    }
  }

  else if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    [v3 count];
    LogPrintF_safe();
  }

  if (v3)
  {
    v21 = [NSSet alloc];
    allKeys = [v3 allKeys];
    v23 = [v21 initWithArray:allKeys];
    sensorTrackingDevices = self->_sensorTrackingDevices;
    self->_sensorTrackingDevices = v23;
  }

  else
  {
    allKeys = self->_sensorTrackingDevices;
    self->_sensorTrackingDevices = 0;
  }

  self->_aggregateDiscoveryFlags = self->_aggregateDiscoveryFlags & 0xFFFFFFFFDFFFFFFFLL | (([v3 count] != 0) << 29);
  _Block_object_dispose(&v51, 8);
}

- (void)_updateBufferedConfigsForAOP
{
  v28 = objc_alloc_init(NSMutableDictionary);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  obj = self->_discoveryArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v3)
  {
    v29 = 0;
    v25 = *v37;
    v26 = v3;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v36 + 1) + 8 * i);
        bufferedAdvConfigsForAOP = [v4 bufferedAdvConfigsForAOP];
        if (bufferedAdvConfigsForAOP)
        {
          v6 = v4;
          v7 = (*([v4 discoveryTypesInternalPtr] + 3) & 8) == 0;

          if (!v7)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            bufferedAdvConfigsForAOP2 = [v4 bufferedAdvConfigsForAOP];
            v9 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v32 objects:v46 count:16];
            if (v9)
            {
              v10 = *v33;
              do
              {
                for (j = 0; j != v9; j = j + 1)
                {
                  if (*v33 != v10)
                  {
                    objc_enumerationMutation(bufferedAdvConfigsForAOP2);
                  }

                  v12 = *(*(&v32 + 1) + 8 * j);
                  if ([v12 applePayloadType] && objc_msgSend(v12, "applePayloadType") <= 0x64)
                  {
                    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 applePayloadType]);
                    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 rssiThreshold]);
                    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 maxAge]);
                    v44[0] = @"rssiThreshold";
                    v44[1] = @"maxAge";
                    v45[0] = v14;
                    v45[1] = v15;
                    v16 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
                    [v28 setObject:v16 forKey:v13];
                    v17 = [v12 hash];

                    v29 ^= v17;
                  }
                }

                v9 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v32 objects:v46 count:16];
              }

              while (v9);
            }
          }
        }
      }

      v26 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v26);
  }

  else
  {
    v29 = 0;
  }

  if (selfCopy->_bufferedTypeConfigHash != v29)
  {
    v42[1] = @"descriptor";
    v43[0] = &off_100B33618;
    v42[0] = @"type";
    v40 = @"bufferedAdvConfigDict";
    v18 = [v28 copy];
    v41 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v43[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    if (dword_100B50FA0 <= 40 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v21 = sub_1000C9B4C();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001321FC;
    v30[3] = &unk_100ADF820;
    v22 = v20;
    v31 = v22;
    sub_10000CA94(v21, v30);
    selfCopy->_bufferedTypeConfigHash = v29;
  }
}

- (void)_reportAggressiveScanIfNeeded
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_discoveryArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        bleScanRateOverride = [v6 bleScanRateOverride];
        if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v6 bleScanRateScreenOff]) == 0))
        {
          bleScanRateOverride = [v6 bleScanRate];
        }

        screenOn = self->_screenOn;
        if (screenOn)
        {
          v9 = 31;
        }

        else
        {
          v9 = 21;
        }

        if (bleScanRateOverride < v9)
        {
          if (([v6 discoveryFlags] & 0x200000000) == 0)
          {
            continue;
          }

          screenOn = self->_screenOn;
        }

        v10 = !screenOn;
        v11 = @"agsF";
        if (!v10)
        {
          v11 = @"agsN";
        }

        v12 = v11;
        v13 = +[CBMetricsDaemon sharedCBMetricsDaemon];
        [v13 reportAggressiveScan:v6 action:v12];
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

- (void)_rescanTimerFired
{
  if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100071140(self);
  }

  v31 = objc_retainBlock(self->_deviceLostHandler);
  scanTicks = self->_scanTicks;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v5)
  {
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v8, v25, v26];
        if ([v9 lastSeenTicks] < scanTicks)
        {
          if (([v9 discoveryFlags] & 0x1400000) == 0)
          {
            goto LABEL_19;
          }

          v10 = [[NSUUID alloc] initWithUUIDString:v8];
          if (!v10)
          {
            goto LABEL_19;
          }

          if (qword_100B508B0 != -1)
          {
            sub_10080ABE0();
          }

          v11 = off_100B508A8;
          sub_10004DFB4(v46, v10);
          LOBYTE(v11) = sub_100050290(v11, v46);

          if (v11)
          {
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              v25 = v9;
              LogPrintF_safe();
            }

            [v9 setLastSeenTicks:mach_absolute_time()];
          }

          else
          {
LABEL_19:
            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v8];
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              mach_absolute_time();
              [v9 lastSeenTicks];
              UpTicksToSeconds();
              CUPrintDuration64();
              v26 = v25 = v9;
              LogPrintF_safe();
            }

            if (v31)
            {
              v31[2](v31, v9);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_safetyAlertsDevices allKeys];
  obj = allKeys2;
  v29 = [allKeys2 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v29)
  {
    v28 = *v37;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v13, v25, v26];
        allKeys3 = [v14 allKeys];

        v16 = [allKeys3 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v16)
        {
          v17 = *v33;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(allKeys3);
              }

              v19 = *(*(&v32 + 1) + 8 * j);
              v20 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v13];
              v21 = [v20 objectForKeyedSubscript:v19];

              if ([v21 lastSeenTicks] < scanTicks)
              {
                v22 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v13];
                [v22 removeObjectForKey:v19];
              }
            }

            v16 = [allKeys3 countByEnumeratingWithState:&v32 objects:v44 count:16];
          }

          while (v16);
        }

        v23 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v13];
        v24 = [v23 count] == 0;

        if (v24)
        {
          [(NSMutableDictionary *)self->_safetyAlertsDevices removeObjectForKey:v13];
        }
      }

      allKeys2 = obj;
      v29 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v29);
  }

  [(CBStackBLEScannerBTStack *)self _activate:1];
}

- (void)_invalidated
{
  if (!self->_scanning && !self->_invalidateDone)
  {
    btSession = self->_btSession;
    if (btSession)
    {
      sessionHandle = self->_sessionHandle;
      v5 = sub_100007EE8();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000C3138;
      v14[3] = &unk_100AE0860;
      v14[4] = sessionHandle;
      v14[5] = btSession;
      sub_10000CA94(v5, v14);
      self->_btSession = 0;
    }

    [(CBStackBLEScannerBTStack *)self _oobKeysRemoveAll];
    v6 = objc_retainBlock(self->_invalidationHandler);
    self->_sessionHandle = 0;
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    devicesBufferedHandler = self->_devicesBufferedHandler;
    self->_devicesBufferedHandler = 0;

    discoveryArray = self->_discoveryArray;
    self->_discoveryArray = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    suppressedOobKeys = self->_suppressedOobKeys;
    self->_suppressedOobKeys = 0;

    suppressedDeviceFilter = self->_suppressedDeviceFilter;
    self->_suppressedDeviceFilter = 0;

    self->_invalidateDone = 1;
    if (v6)
    {
      v6[2](v6);
    }

    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    if (self->_bleScannerCPP._bleScannerObjC)
    {
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000C8C9C();
      }

      if (qword_100B51078 != -1)
      {
        sub_10080AA5C();
      }

      sub_10007A3F0(off_100B51070 + 1896, &self->_bleScannerCPP);
      bleScannerObjC = self->_bleScannerCPP._bleScannerObjC;
      self->_bleScannerCPP._bleScannerObjC = 0;

      selfCopy = self;
      v6 = sub_100007EE8();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = nullsub_54;
      v13[3] = &unk_100ADF820;
      v13[4] = selfCopy;
      sub_10000CA94(v6, v13);
    }

    if (self->_scanning)
    {
      sessionHandle = self->_sessionHandle;
      v8 = sub_100007EE8();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000C8DF8;
      v12[3] = &unk_100AE1200;
      v12[4] = self;
      v12[5] = sessionHandle;
      sub_10000CA94(v8, v12);
    }

    rescanTimer = self->_rescanTimer;
    if (rescanTimer)
    {
      v10 = rescanTimer;
      dispatch_source_cancel(v10);
      v11 = self->_rescanTimer;
      self->_rescanTimer = 0;
    }

    [(CBStackBLEScannerBTStack *)self _invalidated];
  }
}

- (void)_oobKeysRemoveAll
{
  [(NSMutableDictionary *)self->_oobKeyMap enumerateKeysAndObjectsUsingBlock:&stru_100AE1668];
  oobKeyMap = self->_oobKeyMap;
  self->_oobKeyMap = 0;

  if (qword_100B51098 != -1)
  {
    sub_10080ABCC();
  }

  v4 = qword_100B51090;
  v5 = objc_alloc_init(NSMutableDictionary);
  sub_1000C8F9C(v4, v5, &stru_100AE1688);

  self->_proxyoobKeysHash = 0;
}

- (id).cxx_construct
{
  self->_bleScannerCPP._vptr$LeObserverListener = &off_100AE1780;
  self->_bleScannerCPP._bleScannerObjC = 0;
  v3 = &_dispatch_main_q;
  self->_bleScannerCPP._dispatchQueue = &_dispatch_main_q;
  self->_bleScannerCPP._reportedNonLeech = 0;
  return self;
}

- (CBStackBLEScannerBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackBLEScannerBTStack;
  v2 = [(CBStackBLEScannerBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    v5 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  bufferedDevices = self->_bufferedDevices;
  if (bufferedDevices)
  {
    bufferedDevices = [(NSMutableArray *)bufferedDevices count];
  }

  if (levelCopy < 0x15)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100042224;
    v30 = sub_1000425A4;
    v31 = 0;
    v25 = 0;
    v8 = "no";
    if (self->_screenOn)
    {
      v8 = "yes";
    }

    v15 = v8;
    scanSummary = self->_scanSummary;
    v14 = bufferedDevices;
    identifier = self->_identifier;
    NSAppendPrintF_safe();
    objc_storeStrong(&v31, v25);
    v9 = v27;
    v24 = v27[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v9 + 5, v24);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    deviceMap = self->_deviceMap;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012EC84;
    v18[3] = &unk_100ADF7F8;
    v18[4] = &v26;
    v18[5] = &v20;
    v19 = levelCopy;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v18, identifier, v5, v14, v15, scanSummary];
    if (v5 > v21[3])
    {
      v11 = v27;
      obj = v27[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v11 + 5, obj);
    }

    _Block_object_dispose(&v20, 8);
    v7 = v27[5];
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v7 = NSPrintF_safe();
  }

  return v7;
}

- (void)_activate:(BOOL)_activate
{
  if (!self->_deviceFoundHandler)
  {
    sub_10080A988();
    goto LABEL_34;
  }

  selfCopy = self;
  if (!self->_deviceLostHandler)
  {
LABEL_34:
    sub_10080A970();
    goto LABEL_35;
  }

  if (!self->_discoveryArray)
  {
LABEL_35:
    sub_10080A958();
    goto LABEL_36;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_36:
    sub_10080A940();
    goto LABEL_37;
  }

  if (!selfCopy->_identifier)
  {
LABEL_37:
    sub_10080A928();
    goto LABEL_38;
  }

  _activateCopy = _activate;
  dispatch_assert_queue_V2(dispatchQueue);
  if (selfCopy->_invalidateCalled)
  {
LABEL_38:
    sub_10080A910();
LABEL_39:
    sub_10080A878();
    goto LABEL_9;
  }

  v9 = sub_10000E92C();
  byte_100B55320 = (*(*v9 + 160))(v9);
  p_btSession = &selfCopy->_btSession;
  if (selfCopy->_btSession)
  {
    goto LABEL_14;
  }

  v4 = [[NSString alloc] initWithFormat:@"%@-0x%X", selfCopy->_identifier, CBXPCGetNextClientID()];
  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (qword_100B50B88 != -1)
  {
    goto LABEL_39;
  }

LABEL_9:
  v10 = qword_100B50B80;
  sub_100007E30(v22, [v4 UTF8String]);
  sub_100044414(v10, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (p_info[369] != -1)
  {
    sub_10080A88C();
  }

  v11 = sub_1000117DC(qword_100B50B80, *p_btSession);
  selfCopy->_proxyoobKeysHash = 0;
  selfCopy->_sessionHandle = v11;
  selfCopy->_bufferedTypeConfigHash = 0;

LABEL_14:
  if (!selfCopy->_bleScannerCPP._bleScannerObjC)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080A8B4();
    }

    objc_storeStrong(&selfCopy->_bleScannerCPP._bleScannerObjC, selfCopy);
    objc_storeStrong(&selfCopy->_bleScannerCPP._dispatchQueue, selfCopy->_dispatchQueue);
    if (qword_100B51078 != -1)
    {
      sub_10080A8E8();
    }

    sub_1000DB5D8(off_100B51070 + 1896, &selfCopy->_bleScannerCPP);
  }

  *(&selfCopy->_aggregateDiscoveryFlags + 6) = 0;
  selfCopy->_aggregateDiscoveryFlags = 0;
  [(CBStackBLEScannerBTStack *)selfCopy _oobKeysUpdate];
  [(CBStackBLEScannerBTStack *)selfCopy _sensorTrackingUpdate];
  _scanRequestCreate = [(CBStackBLEScannerBTStack *)selfCopy _scanRequestCreate];
  scanning = selfCopy->_scanning;
  selfCopy->_scanning = _scanRequestCreate != 0;
  sessionHandle = selfCopy->_sessionHandle;
  v15 = [(CBStackBLEScannerBTStack *)selfCopy _scanSummary:_scanRequestCreate];
  objc_storeStrong(&selfCopy->_scanSummary, v15);
  v16 = sub_100007EE8();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10012F144;
  v19[3] = &unk_100AE15B8;
  v20 = scanning;
  v21 = _activateCopy;
  v19[4] = v15;
  v19[5] = _scanRequestCreate;
  v19[6] = sessionHandle;
  sub_10000CA94(v16, v19);
  if (!scanning || _activateCopy)
  {
    selfCopy->_scanTicks = mach_absolute_time();
    [(CBStackBLEScannerBTStack *)selfCopy _rescanTimerUpdate:1];
  }

  else
  {
    [(CBStackBLEScannerBTStack *)selfCopy _rescanTimerUpdate:0];
    if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  if (selfCopy->_profileChangedToken == -1)
  {
    v17 = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10012F3A0;
    handler[3] = &unk_100ADF848;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &selfCopy->_profileChangedToken, v17, handler);
  }
}

- (void)deviceFound:(id)found
{
  foundCopy = found;
  v5 = foundCopy;
  if (!self->_invalidateCalled)
  {
    identifier = [foundCopy identifier];
    if (!identifier)
    {
LABEL_40:

      goto LABEL_41;
    }

    v7 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = objc_alloc_init(CBDevice);
      [v9 setIdentifier:identifier];
      [v9 setInternalFlags:{objc_msgSend(v5, "internalFlags")}];
      v8 = 0x4000000;
      v7 = v9;
    }

    [v7 changedTypesRemoveAll];
    v10 = [v7 updateWithCBDevice:v5];
    v11 = v10 | v8;
    [v7 setChangeFlags:{objc_msgSend(v7, "changeFlags") | v10 | v8}];
    [v7 setLastSeenTicks:mach_absolute_time()];
    discoveryFlags = [v7 discoveryFlags];
    aggregateDiscoveryFlags = self->_aggregateDiscoveryFlags;
    v23 = 0;
    v22 = 0;
    CBDiscoveryTypesAddTypes();
    if ((aggregateDiscoveryFlags & 0x7CFAAEC5B14FFFFFLL & (discoveryFlags | v10)) == 0 && ([v7 discoveryTypesContainTypes:&v22] & 1) == 0 && (objc_msgSend(v7, "changedTypesContainTypes:", &v22) & 1) == 0)
    {
      if (dword_100B50FA0 <= 5 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v17 = CUPrintFlags64();
        v21 = CBDiscoveryTypesToString();
        LogPrintF_safe();
      }

      goto LABEL_39;
    }

    if ((v11 & 0x4000000) != 0)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = self->_deviceMap;
        self->_deviceMap = v15;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v7 forKeyedSubscript:identifier];
      if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v20 = v7;
        LogPrintF_safe();
      }

      if (([v7 internalFlags] & 0x4000) == 0)
      {
        v18 = objc_retainBlock(self->_deviceFoundHandler);
        v19 = v18;
        if (v18)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if ((self->_aggregateDiscoveryFlags & (v11 | 0x100000)) == 0 && ![v7 changedTypesContainTypes:&v22])
      {
        if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          v20 = v7;
          LogPrintF_safe();
        }

        goto LABEL_36;
      }

      if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v20 = v7;
        LogPrintF_safe();
      }

      if (([v7 internalFlags] & 0x4000) == 0)
      {
        v18 = objc_retainBlock(self->_deviceFoundHandler);
        v19 = v18;
        if (v18)
        {
LABEL_33:
          (*(v18 + 2))(v18, v7);
        }

LABEL_34:

LABEL_36:
        if (([v5 internalFlags] & 0x1000) != 0)
        {
          [(CBStackBLEScannerBTStack *)self _proxyOOBKeysUpdateOnDeviceFound:v7];
        }

        [(CBStackBLEScannerBTStack *)self _rescanTimerUpdate:0];
LABEL_39:

        goto LABEL_40;
      }
    }

    [(CBStackBLEScannerBTStack *)self _deviceSegmentFound:v7];
    goto LABEL_36;
  }

LABEL_41:
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  uUIDString = [lostCopy UUIDString];
  v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:uUIDString];
    if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v6 = objc_retainBlock(self->_deviceLostHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v5);
    }
  }

  else if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)deviceBuffered:(id)buffered
{
  bufferedCopy = buffered;
  if (!self->_invalidateCalled)
  {
    bufferedDevices = self->_bufferedDevices;
    if (!bufferedDevices)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = self->_bufferedDevices;
      self->_bufferedDevices = v5;

      bufferedDevices = self->_bufferedDevices;
    }

    [(NSMutableArray *)bufferedDevices addObject:bufferedCopy];
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_deviceSegmentFound:(id)found
{
  foundCopy = found;
  if ([foundCopy discoveryTypesContainType:26])
  {
    if (!self->_safetyAlertsDevices)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      safetyAlertsDevices = self->_safetyAlertsDevices;
      self->_safetyAlertsDevices = v5;
    }

    safetyAlertsAlertID = [foundCopy safetyAlertsAlertID];
    if (safetyAlertsAlertID)
    {
      safetyAlertsVersion = [foundCopy safetyAlertsVersion];
      v29 = safetyAlertsVersion;
      if (safetyAlertsVersion)
      {
        v9 = [safetyAlertsAlertID mutableCopy];
        [v9 appendBytes:&v29 length:1];
        v10 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];

        if (!v10)
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          [(NSMutableDictionary *)self->_safetyAlertsDevices setObject:v11 forKeyedSubscript:v9];
        }

        v27 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [foundCopy safetyAlertsSegmentSegmentNumber]);
        v12 = objc_alloc_init(CBDevice);
        identifier = [foundCopy identifier];
        [v12 setIdentifier:identifier];

        [v12 setInternalFlags:{objc_msgSend(foundCopy, "internalFlags")}];
        [v12 updateWithCBDevice:foundCopy];
        v14 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
        [v14 setObject:v12 forKeyedSubscript:v27];

        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          v26 = v12;
          LogPrintF_safe();
        }

        v15 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9, v26];
        v16 = [v15 count];
        safetyAlertsSegmentSegmentsTotal = [foundCopy safetyAlertsSegmentSegmentsTotal];

        if (v16 == safetyAlertsSegmentSegmentsTotal)
        {
          v18 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
          v19 = [v18 objectForKeyedSubscript:&off_100B33450];

          if (v19)
          {
            v20 = objc_alloc_init(CBDevice);
            identifier2 = [v19 identifier];
            [v20 setIdentifier:identifier2];

            [v20 setInternalFlags:{objc_msgSend(v19, "internalFlags")}];
            [v20 updateWithCBDevice:v19];
            v22 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
            v28 = 0;
            [v20 updateWithSafetyAlertsSegments:v22 error:&v28];
            v23 = v28;

            if (v23)
            {
              if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }
            }

            else
            {
              if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              v24 = objc_retainBlock(self->_deviceFoundHandler);
              v25 = v24;
              if (v24)
              {
                (*(v24 + 2))(v24, v20);
              }
            }
          }

          else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }

      else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)finishDiscovery:(id)discovery completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = objc_alloc_init(CBDiscoverySummary);
  handlerCopy[2](handlerCopy, v5, 0);
}

- (id)_packetTypeForDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v4 = objc_alloc_init(NSMutableArray);
  discoveryFlags = [discoveryCopy discoveryFlags];
  v6 = [discoveryCopy extraDiscoveryFlags] | discoveryFlags;
  if ((v6 & 0x4000000000) != 0)
  {
    [v4 addObject:&off_100B33468];
  }

  if ((v6 & 0x8000000000) != 0)
  {
    [v4 addObject:&off_100B33480];
  }

  if ((v6 & 0x800000000000000) != 0)
  {
    [v4 addObject:&off_100B33498];
  }

  if ((v6 & 0x400000000000000) != 0)
  {
    [v4 addObject:&off_100B334B0];
  }

  if ((v6 & 0x400000) != 0)
  {
    [v4 addObject:&off_100B334C8];
  }

  if ((v6 & 0x1000000) != 0)
  {
    [v4 addObject:&off_100B334E0];
  }

  if ((v6 & 0x40) != 0)
  {
    [v4 addObject:&off_100B334F8];
  }

  if ((v6 & 0x60000000000) != 0)
  {
    [v4 addObject:&off_100B33510];
  }

  if ((v6 & 0x40) != 0)
  {
    [v4 addObject:&off_100B334F8];
  }

  if ((v6 & 0x40000) != 0)
  {
    [v4 addObject:&off_100B33528];
  }

  if ((v6 & 0x5030800010083E37) != 0)
  {
    [v4 addObject:&off_100B33540];
  }

  if ((v6 & 0x2000000400020108) != 0)
  {
    [v4 addObject:&off_100B33558];
  }

  if ((v6 & 0x5030800010083E37) != 0 || [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV1()])
  {
    [v4 addObject:&off_100B33540];
  }

  if ((v6 & 0x2000000400020108) != 0 || [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
  {
    [v4 addObject:&off_100B33558];
  }

  v19 = 1024;
  v20 = 0;
  if ((v6 & 0x1C080) != 0 || [discoveryCopy discoveryTypesContainTypes:&v19])
  {
    [v4 addObject:&off_100B33570];
  }

  v18 = 0;
  v17 = 0;
  v16 = 0x80;
  if ([discoveryCopy discoveryTypesContainTypes:&v16])
  {
    [v4 addObject:&off_100B33588];
  }

  v15 = 0;
  v14 = 0;
  v13 = 2;
  if ([discoveryCopy discoveryTypesContainTypes:&v13])
  {
    [v4 addObject:&off_100B335A0];
  }

  if ([discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyInfoV2()])
  {
    [v4 addObject:&off_100B335B8];
  }

  v12 = 0;
  v11 = 0;
  v10 = 32;
  if ([discoveryCopy discoveryTypesContainTypes:&v10])
  {
    [v4 addObject:&off_100B335D0];
  }

  v8 = 768;
  v9 = 0;
  if ([discoveryCopy discoveryTypesContainTypes:&v8])
  {
    [v4 addObject:&off_100B335E8];
  }

  if (_os_feature_enabled_impl() && [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesSoftwareUpdate()])
  {
    [v4 addObject:&off_100B33600];
  }

  return v4;
}

- (void)clearDuplicateFilterCache:(id)cache
{
  cacheCopy = cache;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sessionHandle = self->_sessionHandle;
  [(CBStackBLEScannerBTStack *)self _packetTypeForDiscovery:cacheCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        unsignedCharValue = [*(*(&v14 + 1) + 8 * v9) unsignedCharValue];
        v11 = sub_100007EE8();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001306B0;
        v12[3] = &unk_100AE15D8;
        v13 = unsignedCharValue;
        v12[4] = sessionHandle;
        sub_10000CA94(v11, v12);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_advBufferDrained
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080AADC();
  }
}

- (void)_aopBTBufferDrained
{
  bufferedDevices = self->_bufferedDevices;
  if (!bufferedDevices)
  {
    sub_10080AAF8(dword_100B50FA0 < 31, dword_100B50FA0);
    return;
  }

  if (dword_100B50FA0 <= 30)
  {
    if (dword_100B50FA0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      bufferedDevices = self->_bufferedDevices;
    }

    [(NSMutableArray *)bufferedDevices count];
    LogPrintF_safe();
  }

LABEL_6:
  v4 = objc_retainBlock(self->_devicesBufferedHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, self->_bufferedDevices);
  }

  v6 = self->_bufferedDevices;
  self->_bufferedDevices = 0;
}

- (void)_proxyOOBKeysUpdateOnDeviceFound:(id)found
{
  foundCopy = found;
  nearbyActionNoWakeAuthTagData = [foundCopy nearbyActionNoWakeAuthTagData];
  btAddressData = [foundCopy btAddressData];
  v4 = sub_10000C7D0();
  v5 = (*(*v4 + 2744))(v4);
  if (btAddressData)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 1) != 0 && [foundCopy nearbyActionNoWakeType] == 1 && nearbyActionNoWakeAuthTagData)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_100042224;
    v28[4] = sub_1000425A4;
    v29 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_discoveryArray;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v18 = 0;
          v19 = &v18;
          v20 = 0x3032000000;
          v21 = sub_100042224;
          v22 = sub_1000425A4;
          v23 = 0;
          oobKeys = [v10 oobKeys];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100131B7C;
          v17[3] = &unk_100AE16B0;
          v17[4] = btAddressData;
          v17[5] = nearbyActionNoWakeAuthTagData;
          v17[7] = v28;
          v17[8] = &v18;
          v17[6] = v10;
          [oobKeys enumerateObjectsUsingBlock:v17];

          if (v19[5])
          {
            [v10 setOobKeys:?];
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              oobKeys2 = [v10 oobKeys];
              LogPrintF_safe();
            }
          }

          _Block_object_dispose(&v18, 8);
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(v28, 8);
  }
}

- (void)_rescanTimerUpdate:(BOOL)update
{
  updateCopy = update;
  if ([(NSMutableDictionary *)self->_deviceMap count])
  {
    v5 = self->_rescanTimer;
    if (v5)
    {
      v6 = v5;
      if (updateCopy)
      {
        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        CUDispatchTimerSet();
      }
    }

    else
    {
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      rescanTimer = self->_rescanTimer;
      self->_rescanTimer = v9;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001321E4;
      handler[3] = &unk_100AE0B60;
      v6 = v9;
      v13 = v6;
      selfCopy = self;
      dispatch_source_set_event_handler(v6, handler);
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      CUDispatchTimerSet();
      dispatch_activate(v6);
    }
  }

  else
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080AC08();
    }

    v7 = self->_rescanTimer;
    if (v7)
    {
      v11 = v7;
      dispatch_source_cancel(v11);
      v8 = self->_rescanTimer;
      self->_rescanTimer = 0;
    }
  }
}

- (BOOL)_addMfgScanIfNeeded:(unint64_t)needed scanRequest:(void *)request
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_discoveryArray;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        discoveryFlags = [v10 discoveryFlags];
        v12 = [v10 extraDiscoveryFlags] | discoveryFlags;
        if ((v12 & needed) != 0)
        {
          self->_aggregateDiscoveryFlags |= v12;
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
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

- (void)_addTypeIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  neededCopy = needed;
  if (types)
  {
    v133 = types->var0[4] >> 7;
  }

  else
  {
    v133 = 0;
  }

  neededCopy2 = needed;
  v9 = "Invalid";
  switch(neededCopy)
  {
    case 0:
      break;
    case 1:
      v9 = "Hash";
      break;
    case 2:
      v9 = "iBeacon";
      break;
    case 3:
      v9 = "AirPrint";
      break;
    case 4:
      v9 = "LegacyATVSetup";
      break;
    case 5:
      v9 = "AirDrop";
      break;
    case 6:
      v9 = "HomeKitV1";
      break;
    case 7:
      v9 = "ProxPairing";
      break;
    case 8:
      v9 = "HeySiri";
      break;
    case 9:
      v9 = "AirPlayTarget";
      break;
    case 10:
      v9 = "AirPlaySource";
      break;
    case 11:
      v9 = "MagicSwitch";
      break;
    case 12:
      v9 = "Continuity";
      break;
    case 13:
      v9 = "TetheringTarget";
      break;
    case 14:
      v9 = "TetheringSource";
      break;
    case 15:
      v9 = "NearbyAction";
      break;
    case 16:
      v9 = "NearbyInfo";
      break;
    case 17:
      v9 = "HomeKitV2";
      break;
    case 18:
      v9 = "ObjectDiscovery";
      break;
    case 19:
      v9 = "SpatialInteraction";
      break;
    case 20:
      v9 = "DCKit";
      break;
    case 21:
      v9 = "NearbyActionV2";
      break;
    case 22:
      v9 = "NearbyInfoV2";
      break;
    case 23:
    case 25:
      goto LABEL_8;
    case 24:
      v9 = "DSInfo";
      break;
    case 26:
      v9 = "NearbyActionNoWake";
      break;
    case 27:
      v9 = "SoftwareUpdate";
      break;
    default:
      if (neededCopy2 == 100)
      {
        v9 = "FastLEConnection";
      }

      else
      {
LABEL_8:
        v9 = "?";
      }

      break;
  }

  v138 = [NSString stringWithCString:v9 encoding:4];
  v10 = sub_10000E92C();
  v126 = (*(*v10 + 896))(v10);
  __dst = 0;
  v162[0] = 0;
  *(v162 + 6) = 0;
  v159 = 0;
  v160[0] = 0;
  *(v160 + 6) = 0;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = self->_discoveryArray;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v153 objects:v158 count:16];
  if (!v11)
  {

    v122 = 0;
    v123 = 0;
    v91 = 0;
    goto LABEL_253;
  }

  v122 = 0;
  v123 = 0;
  v140 = 0;
  v121 = 0;
  v127 = 0;
  v128 = 0;
  v132 = 0;
  v135 = 0;
  v136 = 0;
  v12 = 0;
  v13 = *v154;
  v15 = (flags & 0x40000) == 0 || neededCopy != 19;
  v129 = 1;
  v130 = 0;
  v137 = 1;
  v124 = v15;
  v125 = 1;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v154 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v153 + 1) + 8 * i);
      discoveryFlags = [v17 discoveryFlags];
      v19 = [v17 extraDiscoveryFlags] | discoveryFlags;
      v20 = (v19 & flags) != 0;
      if (types && (v19 & flags) == 0)
      {
        v20 = [v17 discoveryTypesContainTypes:types];
      }

      if (v20)
      {
        self->_aggregateDiscoveryFlags |= v19;
        if (types)
        {
          v21 = v17;
          [v17 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v19 & 0x100000000000) == 0)
        {
          v22 = v17;
          v139 = *([v17 discoveryTypesInternalPtr] + 4);
          if (v133 == v139 >> 7)
          {
            if (neededCopy > 20)
            {
              if (neededCopy != 21)
              {
                if (neededCopy != 22)
                {
                  goto LABEL_97;
                }

                v34 = v17;
                v35 = *([v17 discoveryTypesInternalPtr] + 2);
                v36 = v17;
                v127 |= ((v35 & 0x40) >> 6) | ((*[v17 discoveryTypesInternalPtr] & 0x10) >> 4);
                if ((self->_aggregateDiscoveryFlags & 0x40000) != 0)
                {
                  oobKeys = [v17 oobKeys];
                  v51 = oobKeys == 0;

                  if (v51)
                  {
                    goto LABEL_97;
                  }

                  if (!self->_suppressedOobKeys)
                  {
                    v52 = objc_alloc_init(NSMutableDictionary);
                    suppressedOobKeys = self->_suppressedOobKeys;
                    self->_suppressedOobKeys = v52;

                    v54 = objc_alloc_init(NSMutableDictionary);
                    suppressedDeviceFilter = self->_suppressedDeviceFilter;
                    self->_suppressedDeviceFilter = v54;
                  }

                  oobKeys2 = [v17 oobKeys];
                  v57 = self->_suppressedOobKeys;
                  v58 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v57 setObject:oobKeys2 forKeyedSubscript:v58];

                  deviceFilter = [v17 deviceFilter];
                  v60 = self->_suppressedDeviceFilter;
                  v61 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v60 setObject:deviceFilter forKeyedSubscript:v61];

                  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    oobKeys3 = [v17 oobKeys];
                    v63 = [oobKeys3 count];
                    deviceFilter2 = [v17 deviceFilter];
                    v119 = v63;
                    v120 = [deviceFilter2 count];
                    LogPrintF_safe();
                  }

                  [v17 setOobKeys:{0, v119, v120}];
                  [v17 setDeviceFilter:0];
                }

                else
                {
                  v37 = self->_suppressedOobKeys;
                  if (!v37)
                  {
                    goto LABEL_97;
                  }

                  v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v39 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:v38];
                  v40 = v39 == 0;

                  if (v40)
                  {
                    goto LABEL_97;
                  }

                  v41 = self->_suppressedOobKeys;
                  v42 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v43 = [(NSMutableDictionary *)v41 objectForKeyedSubscript:v42];
                  [v17 setOobKeys:v43];

                  v44 = self->_suppressedDeviceFilter;
                  v45 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v45];
                  [v17 setDeviceFilter:v46];

                  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    oobKeys4 = [v17 oobKeys];
                    v48 = [oobKeys4 count];
                    deviceFilter3 = [v17 deviceFilter];
                    v119 = v48;
                    v120 = [deviceFilter3 count];
                    LogPrintF_safe();
                  }

                  v69 = self->_suppressedOobKeys;
                  v70 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v69 setObject:0 forKeyedSubscript:v70];

                  v71 = self->_suppressedDeviceFilter;
                  v72 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v71 setObject:0 forKeyedSubscript:v72];
                }

                [(CBStackBLEScannerBTStack *)self _oobKeysUpdate];
                goto LABEL_97;
              }

              if ((v19 & 0x2000000400020108) != 0 || [v17 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
              {
                if (v123)
                {
                  continue;
                }

                if ([(NSData *)self->_selfAuthTag length]!= 3)
                {
                  v123 = 0;
                  continue;
                }

                v123 = self->_selfAuthTag;
              }
            }

            else if (neededCopy == 15)
            {
              if ((v19 & 0x2000000) != 0)
              {
                if (v121)
                {
                  v121 = 1;
                }

                else
                {
                  v65 = v17;
                  if ((*[v17 discoveryTypesInternalPtr] & 4) != 0)
                  {
                    deviceFilter4 = [v17 deviceFilter];
                    v67 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter4];

                    v121 = 1;
                    v140 = v67;
                  }

                  else
                  {
                    v121 = 0;
                  }
                }

                if (!v122)
                {
                  if (-[NSData length](self->_selfAuthTagNonConnectable, "length") == 3 && (v68 = v17, (*([v17 discoveryTypesInternalPtr] + 1) & 0x40) != 0))
                  {
                    v122 = self->_selfAuthTagNonConnectable;
                  }

                  else
                  {
                    v122 = 0;
                  }
                }
              }
            }

            else if (neededCopy == 19)
            {
              bleRSSIThresholdOrder = [v17 bleRSSIThresholdOrder];
              BYTE4(v128) = [v17 bleRSSIThresholdOrder] < 0;
              spatialInteractionfilter = [v17 spatialInteractionfilter];
              v25 = spatialInteractionfilter == 0;

              LODWORD(v128) = (bleRSSIThresholdOrder >> 2) & 1;
              if (!v25)
              {
                for (j = 0; j != 22; ++j)
                {
                  *(&v162[-1] + j) = 0;
                }

                for (k = 0; k != 22; ++k)
                {
                  *(&v160[-1] + k) = 0;
                }

                spatialInteractionfilter2 = [v17 spatialInteractionfilter];
                blob = [spatialInteractionfilter2 blob];

                spatialInteractionfilter3 = [v17 spatialInteractionfilter];
                mask = [spatialInteractionfilter3 mask];

                v32 = blob;
                memcpy(&__dst, [blob bytes], objc_msgSend(blob, "length"));
                v33 = mask;
                memcpy(&v159, [mask bytes], objc_msgSend(mask, "length"));
              }
            }

LABEL_97:
            if ((v19 & 0x2000000000) != 0)
            {
              self->_anyActiveScan = 1;
            }

            if (v137)
            {
              v137 = ([v17 discoveryFlags] & 0x200000000) == 0;
              if ((v19 & 0x40000) != 0)
              {
LABEL_104:
                if (neededCopy == 26)
                {
                  v73 = sub_10000E92C();
                  v132 = (*(*v73 + 904))(v73);
                  v74 = sub_10000E92C();
                  v129 = (*(*v74 + 904))(v74);
                  v75 = v17;
                  discoveryTypesInternalPtr = [v17 discoveryTypesInternalPtr];
                  v130 = 1;
                  if (v19 & 0x200000000) != 0 && (discoveryTypesInternalPtr[1])
                  {
                    self->_aopBTTypes |= 0x100u;
                    goto LABEL_110;
                  }
                }

                else
                {
                  if (!v124)
                  {
                    v132 |= [v17 bleRSSIThresholdHint] < 0;
                  }

LABEL_110:
                  v130 = 1;
                }

LABEL_111:
                if ((v19 & 0x100000000000000) != 0)
                {
                  self->_objectDiscoveryFlags |= 2u;
                  if ((v19 & 0x200000000000000) != 0)
                  {
                    goto LABEL_132;
                  }

LABEL_113:
                  if ((v19 & 0x10000000000) == 0)
                  {
LABEL_115:
                    bleRSSIThresholdHint = [v17 bleRSSIThresholdHint];
                    if (v132)
                    {
                      v78 = -120;
                    }

                    else
                    {
                      v78 = -90;
                    }

                    if (v78 <= (bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)))
                    {
                      v78 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
                    }

                    v79 = v78 == 0;
                    if (v78 >= v136)
                    {
                      LOBYTE(v78) = v136;
                    }

                    v136 = v78;
                    bleScanRateOverride = [v17 bleScanRateOverride];
                    if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v17 bleScanRateScreenOff]) == 0))
                    {
                      bleScanRateOverride = [v17 bleScanRate];
                      if (!bleScanRateOverride)
                      {
                        self->_scanRateAnyDefault = 1;
                      }
                    }

                    if (bleScanRateOverride > self->_scanRateHighest)
                    {
                      self->_scanRateHighest = bleScanRateOverride;
                    }

                    v135 |= v79;
                    if (v139 < 0)
                    {
                      v151 = 0;
                      v152 = 0;
                      sub_10000C704(&v151, &__dst, 0x16uLL);
                      v149 = 0;
                      v150 = 0;
                      sub_10000C704(&v149, &v159, 0x16uLL);
                      if ([v140 count])
                      {
                        v81 = 3;
                      }

                      else
                      {
                        v81 = 2;
                      }

                      v82 = v136;
                      if (v135)
                      {
                        v82 = -90;
                      }

                      if (v126)
                      {
                        v83 = -120;
                      }

                      else
                      {
                        v83 = v82;
                      }

                      targetCore = self->_targetCore;
                      if (v130)
                      {
                        v85 = sub_10000C7D0();
                        v86 = (*(*v85 + 2712))(v85);
                      }

                      else
                      {
                        v86 = 0;
                      }

                      sub_100032784(request, v138, neededCopy, v81, &v151, &v149, v83, 0, !v137, targetCore, 1, v140, v86, 0, (*(&v128 + 3) & 0x100) >> 8, v128 & 1, v129 & 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
                      for (m = 0; m != 22; ++m)
                      {
                        *(&v162[-1] + m) = 0;
                      }

                      for (n = 0; n != 22; ++n)
                      {
                        *(&v160[-1] + n) = 0;
                      }

                      v149 = &off_100AE0A78;
                      if (v150)
                      {
                        sub_10000C808(v150);
                      }

                      v151 = &off_100AE0A78;
                      if (v152)
                      {
                        sub_10000C808(v152);
                      }

                      v125 = 0;
                      v12 = 0;
                    }

                    else
                    {
                      v12 = 1;
                    }

                    continue;
                  }
                }

                else
                {
                  if ((v19 & 0x200000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

LABEL_132:
                  self->_objectDiscoveryFlags |= 1u;
                  if ((v19 & 0x10000000000) == 0)
                  {
                    goto LABEL_115;
                  }
                }

                self->_anyRangeScan = 1;
                goto LABEL_115;
              }
            }

            else
            {
              v137 = 0;
              if ((v19 & 0x40000) != 0)
              {
                goto LABEL_104;
              }
            }

            if ([v17 discoveryTypesContainTypes:CBDiscoveryTypesNeedsObjectLocator()])
            {
              goto LABEL_104;
            }

            goto LABEL_111;
          }
        }
      }
    }

    v11 = [(NSArray *)obj countByEnumeratingWithState:&v153 objects:v158 count:16];
  }

  while (v11);

  if (v12)
  {
    if (v130)
    {
      v89 = sub_10000C7D0();
      v90 = (*(*v89 + 2712))(v89);
    }

    else
    {
      v90 = 0;
    }

    v92 = !v137;
    if ((self->_aggregateDiscoveryTypes.bitArray[1] & 0x40) != 0 && !self->_screenOn && v122)
    {

      BYTE1(__dst) = 56;
      BYTE5(__dst) = 2;
      BYTE1(v159) = 56;
      BYTE5(v159) = 2;
      v93 = [(NSData *)v122 length];
      v94 = v122;
      memcpy(&__dst + 6, [(NSData *)v122 bytes], v93);
      if (v93)
      {
        memset(&v159 + 6, 255, v93);
      }

      v151 = 0;
      v152 = 0;
      sub_10000C704(&v151, &__dst, 0x16uLL);
      v149 = 0;
      v150 = 0;
      sub_10000C704(&v149, &v159, 0x16uLL);
      v95 = [v140 count];
      if (v135)
      {
        v96 = -90;
      }

      else
      {
        v96 = v136;
      }

      if (v126)
      {
        v96 = -120;
      }

      if (v95)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      sub_100032784(request, @"AcceptedInvitation", neededCopy, v97, &v151, &v149, v96, 0, v92, self->_targetCore, 1, 0, v90, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
      for (ii = 0; ii != 22; ++ii)
      {
        *(&v162[-1] + ii) = 0;
      }

      for (jj = 0; jj != 22; ++jj)
      {
        *(&v160[-1] + jj) = 0;
      }

      v149 = &off_100AE0A78;
      if (v150)
      {
        sub_10000C808(v150);
      }

      v151 = &off_100AE0A78;
      if (v152)
      {
        sub_10000C808(v152);
      }

      v125 = 0;
      v138 = @"AcceptedInvitation";
    }

    if (neededCopy == 22)
    {
      if (v127)
      {

        v151 = 0;
        v152 = 0;
        sub_10000C704(&v151, &__dst, 0x16uLL);
        v149 = 0;
        v150 = 0;
        sub_10000C704(&v149, &v159, 0x16uLL);
        if (v135)
        {
          v100 = -90;
        }

        else
        {
          v100 = v136;
        }

        if (v126)
        {
          v100 = -120;
        }

        sub_100032784(request, @"NearbyInfoV2", 0x16u, 2, &v151, &v149, v100, 0, v92, self->_targetCore, 1, 0, v90, v125 & 1, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
        v149 = &off_100AE0A78;
        if (v150)
        {
          sub_10000C808(v150);
        }

        v151 = &off_100AE0A78;
        if (v152)
        {
          sub_10000C808(v152);
        }

        v138 = @"NearbyInfoV2";
      }

      else
      {
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = self->_discoveryArray;
        v103 = [(NSArray *)v144 countByEnumeratingWithState:&v145 objects:v157 count:16];
        if (v103)
        {
          if (v132)
          {
            v104 = -120;
          }

          else
          {
            v104 = -90;
          }

          obja = v104;
          v105 = *v146;
          do
          {
            for (kk = 0; kk != v103; kk = kk + 1)
            {
              if (*v146 != v105)
              {
                objc_enumerationMutation(v144);
              }

              v107 = *(*(&v145 + 1) + 8 * kk);
              if ([v107 bleRSSIThresholdHint] > 0 || (v108 = obja, obja <= objc_msgSend(v107, "bleRSSIThresholdHint")))
              {
                if ([v107 bleRSSIThresholdHint] > 0 || (v108 = objc_msgSend(v107, "bleRSSIThresholdHint")) == 0)
                {
                  v108 = -90;
                }
              }

              deviceFilter5 = [v107 deviceFilter];
              v110 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter5];

              v140 = v110;
              if ([v110 count])
              {
                v111 = 3;
              }

              else
              {
                v111 = 2;
              }

              v112 = v107;
              if ((*([v107 discoveryTypesInternalPtr] + 2) & 0x20) != 0)
              {

                bzero(&__dst, 0x16uLL);
                bzero(&v159, 0x16uLL);
                v151 = 0;
                v152 = 0;
                sub_10000C704(&v151, &__dst, 0x16uLL);
                v149 = 0;
                v150 = 0;
                sub_10000C704(&v149, &v159, 0x16uLL);
                sub_100032784(request, @"MiLo", 0x16u, v111, &v151, &v149, v108, 0, v92, self->_targetCore, 1, v140, v90, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
                v149 = &off_100AE0A78;
                if (v150)
                {
                  sub_10000C808(v150);
                }

                v151 = &off_100AE0A78;
                if (v152)
                {
                  sub_10000C808(v152);
                }

                v138 = @"MiLo";
              }

              v113 = v107;
              if ((*([v107 discoveryTypesInternalPtr] + 2) & 8) != 0)
              {

                LOBYTE(__dst) = 4;
                LOBYTE(v159) = 4;
                v151 = 0;
                v152 = 0;
                sub_10000C704(&v151, &__dst, 0x16uLL);
                v149 = 0;
                v150 = 0;
                sub_10000C704(&v149, &v159, 0x16uLL);
                sub_100032784(request, @"Invitation", 0x16u, v111, &v151, &v149, v108, 0, v92, self->_targetCore, 1, v140, v90, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
                v149 = &off_100AE0A78;
                if (v150)
                {
                  sub_10000C808(v150);
                }

                v151 = &off_100AE0A78;
                if (v152)
                {
                  sub_10000C808(v152);
                }

                v138 = @"Invitation";
              }

              v114 = v107;
              if ((*([v107 discoveryTypesInternalPtr] + 4) & 2) == 0)
              {
                v115 = v107;
                if ((*([v107 discoveryTypesInternalPtr] + 4) & 1) == 0)
                {
                  continue;
                }
              }

              bzero(&__dst, 0x16uLL);
              bzero(&v159, 0x16uLL);
              v151 = 0;
              v152 = 0;
              sub_10000C704(&v151, &__dst, 0x16uLL);
              v149 = 0;
              v150 = 0;
              sub_10000C704(&v149, &v159, 0x16uLL);
              sub_100032784(request, @"FaceTime", 0x16u, v111, &v151, &v149, v108, 0, v92, self->_targetCore, 1, v140, v90, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
              v149 = &off_100AE0A78;
              if (v150)
              {
                sub_10000C808(v150);
              }

              v151 = &off_100AE0A78;
              if (v152)
              {
                sub_10000C808(v152);
              }

              v138 = @"FaceTime";
            }

            v103 = [(NSArray *)v144 countByEnumeratingWithState:&v145 objects:v157 count:16];
          }

          while (v103);
        }
      }
    }

    else
    {
      if ((v121 & 1) != 0 && !self->_screenOn)
      {

        v125 = 0;
        LOWORD(__dst) = 14080;
        LOWORD(v159) = 14080;
        v138 = @"AUAction";
      }

      else if (v123)
      {
        LOBYTE(__dst) = 1;
        LOBYTE(v159) = 1;
        v101 = [(NSData *)v123 length];
        v102 = v123;
        memcpy(&__dst + 2, [(NSData *)v123 bytes], v101);
        if (v101)
        {
          memset(&v159 + 2, 255, v101);
        }

        v140 = 0;
      }

      v151 = 0;
      v152 = 0;
      sub_10000C704(&v151, &__dst, 0x16uLL);
      v149 = 0;
      v150 = 0;
      sub_10000C704(&v149, &v159, 0x16uLL);
      v116 = [v140 count];
      if (v135)
      {
        v117 = -90;
      }

      else
      {
        v117 = v136;
      }

      if (v126)
      {
        v117 = -120;
      }

      if (v116)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      sub_100032784(request, v138, neededCopy, v118, &v151, &v149, v117, 0, v92, self->_targetCore, 1, v140, v90, v125 & 1, BYTE4(v128) & 1, v128 & 1, v129 & 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
      v149 = &off_100AE0A78;
      if (v150)
      {
        sub_10000C808(v150);
      }

      v151 = &off_100AE0A78;
      if (v152)
      {
        sub_10000C808(v152);
      }
    }
  }

  v91 = v140;
LABEL_253:
}

- (void)_addTypeWithParamsIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  neededCopy = needed;
  v76 = 0;
  v77[0] = 0;
  *(v77 + 6) = 0;
  v74 = 0;
  v75[0] = 0;
  *(v75 + 6) = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = self->_discoveryArray;
  v52 = [(NSArray *)obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (!v52)
  {
    v46 = 0;
    goto LABEL_142;
  }

  v46 = 0;
  v48 = 0;
  v50 = *v69;
LABEL_3:
  v54 = 0;
  while (1)
  {
    if (*v69 != v50)
    {
      objc_enumerationMutation(obj);
    }

    v6 = *(*(&v68 + 1) + 8 * v54);
    discoveryFlags = [v6 discoveryFlags];
    v8 = [v6 extraDiscoveryFlags] | discoveryFlags;
    v9 = (v8 & flags) != 0;
    if (types && (v8 & flags) == 0)
    {
      v9 = [v6 discoveryTypesContainTypes:types];
    }

    if (v9)
    {
      self->_aggregateDiscoveryFlags |= v8;
      if (types)
      {
        v10 = v6;
        [v6 discoveryTypesInternalPtr];
        CBDiscoveryTypesAddTypes();
      }

      if ((v8 & 0x100000000000) == 0)
      {
        break;
      }
    }

LABEL_133:
    if (++v54 == v52)
    {
      v52 = [(NSArray *)obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (!v52)
      {
        goto LABEL_142;
      }

      goto LABEL_3;
    }
  }

  if ((v8 & 0x2000000000) != 0)
  {
    self->_anyActiveScan = 1;
    if ((v8 & 0x100000000000000) == 0)
    {
LABEL_15:
      if ((v8 & 0x200000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_15;
  }

  self->_objectDiscoveryFlags |= 2u;
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  self->_objectDiscoveryFlags |= 1u;
  if ((v8 & 0x10000000000) != 0)
  {
LABEL_17:
    self->_anyRangeScan = 1;
  }

LABEL_18:
  bleRSSIThresholdHint = [v6 bleRSSIThresholdHint];
  if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
  {
    v12 = -90;
  }

  else
  {
    v12 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
  }

  bleScanRateOverride = [v6 bleScanRateOverride];
  if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v6 bleScanRateScreenOff]) == 0))
  {
    bleScanRateOverride = [v6 bleScanRate];
    if (!bleScanRateOverride)
    {
      self->_scanRateAnyDefault = 1;
    }
  }

  if (bleScanRateOverride > self->_scanRateHighest)
  {
    self->_scanRateHighest = bleScanRateOverride;
  }

  v48 |= (v8 >> 18) & 1;
  if (v48)
  {
    v14 = sub_10000C7D0();
    v57 = (*(*v14 + 2712))(v14);
  }

  else
  {
    v57 = 0;
  }

  deviceFilter = [v6 deviceFilter];
  v58 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter];

  v56 = (v8 >> 33) & 1;
  if ([v58 count])
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  if (neededCopy != 21)
  {
    v20 = _os_feature_enabled_impl() ^ 1;
    if (neededCopy != 27)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      bzero(&v76, 0x16uLL);
      bzero(&v74, 0x16uLL);
      v66 = 0;
      v67 = 0;
      sub_10000C704(&v66, &v76, 0x16uLL);
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      if (bleRSSIThresholdHint < 0)
      {
        v21 = v12;
      }

      else
      {
        v21 = -90;
      }

      sub_100032784(request, @"Placeholder", neededCopy, v16, &v66, &v64, v21, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
LABEL_95:
      v64 = &off_100AE0A78;
      if (v65)
      {
        sub_10000C808(v65);
      }

      v66 = &off_100AE0A78;
      if (v67)
      {
        sub_10000C808(v67);
      }

      goto LABEL_132;
    }

    softwareUpdatePayloads = [v6 softwareUpdatePayloads];
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v42 = softwareUpdatePayloads;
      LogPrintF_safe();
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = softwareUpdatePayloads;
    v28 = [v27 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (!v28)
    {
LABEL_131:

      goto LABEL_132;
    }

    v29 = *v61;
    if (bleRSSIThresholdHint < 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = -90;
    }

    v31 = v30;
LABEL_105:
    v32 = 0;
    while (1)
    {
      if (*v61 != v29)
      {
        objc_enumerationMutation(v27);
      }

      v33 = *(*(&v60 + 1) + 8 * v32);
      softwareUpdateActionType = [v33 softwareUpdateActionType];
      softwareUpdateDataBlob = [v33 softwareUpdateDataBlob];
      softwareUpdateDataMask = [v33 softwareUpdateDataMask];
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v43 = softwareUpdateDataBlob;
        v44 = softwareUpdateDataMask;
        v42 = softwareUpdateActionType;
        LogPrintF_safe();
      }

      if (!softwareUpdateActionType)
      {
        goto LABEL_129;
      }

      LOBYTE(v76) = softwareUpdateActionType;
      LOBYTE(v74) = -1;
      if (softwareUpdateDataBlob)
      {
        v37 = [softwareUpdateDataBlob length];
        v38 = softwareUpdateDataBlob;
        memcpy(&v76 + 1, [softwareUpdateDataBlob bytes], v37);
        if ([softwareUpdateDataMask length])
        {
          if ([softwareUpdateDataMask length] >= v37)
          {
            v39 = softwareUpdateDataMask;
            memcpy(&v74 + 1, [softwareUpdateDataMask bytes], v37);
            goto LABEL_119;
          }
        }

        else if (!v37)
        {
          goto LABEL_119;
        }

        memset(&v74 + 1, 255, v37);
      }

LABEL_119:
      v66 = 0;
      v67 = 0;
      sub_10000C704(&v66, &v76, 0x16uLL);
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v40 = "?";
      if (softwareUpdateActionType <= 3)
      {
        v40 = off_100AE18B0[softwareUpdateActionType - 1];
      }

      v41 = [NSString stringWithUTF8String:v40, v42];
      sub_100032784(request, v41, 0x1Bu, v16, &v66, &v64, v31, 0, v56, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);

      v64 = &off_100AE0A78;
      if (v65)
      {
        sub_10000C808(v65);
      }

      v66 = &off_100AE0A78;
      if (v67)
      {
        sub_10000C808(v67);
      }

LABEL_129:

      if (v28 == ++v32)
      {
        v28 = [v27 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (!v28)
        {
          goto LABEL_131;
        }

        goto LABEL_105;
      }
    }
  }

  bzero(&v76, 0x16uLL);
  bzero(&v74, 0x16uLL);
  if ((v8 & 0x2000000400020108) == 0 && (![v6 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()] || !objc_msgSend(v6, "discoveryTypesContainTypes:", CBDiscoveryTypesNeedsIdentify())))
  {
    goto LABEL_57;
  }

  if ([(NSData *)self->_selfAuthTag length]== 3)
  {
    v17 = self->_selfAuthTag;

    LOBYTE(v76) = 1;
    LOBYTE(v74) = 1;
    v18 = [(NSData *)v17 length];
    v19 = v17;
    v46 = v17;
    memcpy(&v76 + 2, [(NSData *)v17 bytes], v18);
    if (v18)
    {
      memset(&v74 + 2, 255, v18);
    }

    if ((v8 & 0x2000000400020108) != 0)
    {
      goto LABEL_58;
    }

LABEL_57:
    if ([v6 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
    {
LABEL_58:
      if ((v8 & 0x400000000) != 0)
      {
        BYTE1(v76) = 38;
        BYTE1(v74) = 38;
        v66 = 0;
        v67 = 0;
        sub_10000C704(&v66, &v76, 0x16uLL);
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v22 = v12;
        }

        else
        {
          v22 = -90;
        }

        sub_100032784(request, @"Ensemble", 0x15u, v16, &v66, &v64, v22, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }

        v66 = &off_100AE0A78;
        if (v67)
        {
          sub_10000C808(v67);
        }
      }

      if ((v8 & 8) != 0)
      {
        BYTE1(v76) = 51;
        BYTE1(v74) = 51;
        v66 = 0;
        v67 = 0;
        sub_10000C704(&v66, &v76, 0x16uLL);
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v23 = v12;
        }

        else
        {
          v23 = -90;
        }

        sub_100032784(request, @"CLink", 0x15u, v16, &v66, &v64, v23, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }

        v66 = &off_100AE0A78;
        if (v67)
        {
          sub_10000C808(v67);
        }
      }

      if ((v8 & 0x100) != 0)
      {
        BYTE1(v76) = 50;
        BYTE1(v74) = 50;
        v66 = 0;
        v67 = 0;
        sub_10000C704(&v66, &v76, 0x16uLL);
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v24 = v12;
        }

        else
        {
          v24 = -90;
        }

        sub_100032784(request, @"RDisplay", 0x15u, v16, &v66, &v64, v24, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }

        v66 = &off_100AE0A78;
        if (v67)
        {
          sub_10000C808(v67);
        }
      }

      if ((v8 & 0x20000) != 0)
      {
        BYTE1(v76) = 41;
        BYTE1(v74) = 41;
        v66 = 0;
        v67 = 0;
        sub_10000C704(&v66, &v76, 0x16uLL);
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v25 = v12;
        }

        else
        {
          v25 = -90;
        }

        sub_100032784(request, @"RemotePairing", 0x15u, v16, &v66, &v64, v25, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }

        v66 = &off_100AE0A78;
        if (v67)
        {
          sub_10000C808(v67);
        }
      }

      if ((v8 & 0x2000000000000000) == 0)
      {
        goto LABEL_132;
      }

      BYTE1(v76) = 40;
      BYTE1(v74) = 40;
      v66 = 0;
      v67 = 0;
      sub_10000C704(&v66, &v76, 0x16uLL);
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      if (bleRSSIThresholdHint < 0)
      {
        v26 = v12;
      }

      else
      {
        v26 = -90;
      }

      sub_100032784(request, @"Wombat", 0x15u, v16, &v66, &v64, v26, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v58, v57, 0, 0, 0, 1, 0, 0xFFFF, 0xFFFF, 0xFFFF);
      goto LABEL_95;
    }

LABEL_132:

    goto LABEL_133;
  }

  if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    [(NSData *)self->_selfAuthTag length];
    LogPrintF_safe();
  }

LABEL_142:
}

- (void)_addUUIDIfNeeded:(LeUuid *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_discoveryArray;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = *v22;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      discoveryFlags = [v14 discoveryFlags];
      v16 = [v14 extraDiscoveryFlags] | discoveryFlags;
      v17 = (v16 & flags) != 0;
      if (types && (v16 & flags) == 0)
      {
        v17 = [v14 discoveryTypesContainTypes:types];
      }

      if (v17)
      {
        self->_aggregateDiscoveryFlags |= v16;
        if (types)
        {
          v18 = v14;
          [v14 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v16 & 0x100000000000) == 0)
        {
          if ((v16 & 0x2000000000) != 0)
          {
            self->_anyActiveScan = 1;
            if ((v16 & 0x200000000) == 0)
            {
LABEL_18:
              if ((v16 & 0x10000000000) == 0)
              {
LABEL_20:
                bleScanRateOverride = [v14 bleScanRateOverride];
                if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v14 bleScanRateScreenOff]) == 0))
                {
                  bleScanRateOverride = [v14 bleScanRate];
                  if (!bleScanRateOverride)
                  {
                    self->_scanRateAnyDefault = 1;
                  }
                }

                if (bleScanRateOverride > self->_scanRateHighest)
                {
                  self->_scanRateHighest = bleScanRateOverride;
                }

                sub_10000CDB8(uuids, needed);
                goto LABEL_28;
              }

LABEL_19:
              self->_anyRangeScan = 1;
              goto LABEL_20;
            }
          }

          else if ((v16 & 0x200000000) == 0)
          {
            goto LABEL_18;
          }

          self->_anyNeedsDups = 1;
          if ((v16 & 0x10000000000) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }

    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_28:
}

- (void)_addUUIDIfNeededWithParams:(LeUuid *)params matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_discoveryArray;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        discoveryFlags = [v12 discoveryFlags];
        v14 = [v12 extraDiscoveryFlags] | discoveryFlags;
        v15 = (v14 & flags) != 0;
        if (types && (v14 & flags) == 0)
        {
          v15 = [v12 discoveryTypesContainTypes:types];
        }

        if (v15)
        {
          self->_aggregateDiscoveryFlags |= v14;
          if (types)
          {
            v16 = v12;
            [v12 discoveryTypesInternalPtr];
            CBDiscoveryTypesAddTypes();
          }

          if ((v14 & 0x100000000000) == 0)
          {
            if ((v14 & 0x2000000000) != 0)
            {
              self->_anyActiveScan = 1;
              if ((v14 & 0x200000000) != 0)
              {
                goto LABEL_41;
              }

LABEL_15:
              if ((v14 & 0x10000000000) == 0)
              {
LABEL_17:
                bleScanRateOverride = [v12 bleScanRateOverride];
                if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v12 bleScanRateScreenOff]) == 0))
                {
                  bleScanRateOverride = [v12 bleScanRate];
                  if (!bleScanRateOverride)
                  {
                    self->_scanRateAnyDefault = 1;
                  }
                }

                if (bleScanRateOverride > self->_scanRateHighest)
                {
                  self->_scanRateHighest = bleScanRateOverride;
                }

                bleRSSIThresholdHint = [v12 bleRSSIThresholdHint];
                if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
                {
                  v19 = -90;
                }

                else
                {
                  v19 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
                }

                sub_10006C96C(&v42, 65061);
                if (sub_10004E15C(&params->var0.var0, &v42))
                {
                  if ([v12 discoveryTypesContainTypes:CBDiscoveryTypesProximityService()])
                  {
                    v42 = 0;
                    v43[0] = 0;
                    *(v43 + 6) = 0;
                    v40 = 0;
                    v41[0] = 0;
                    *(v41 + 6) = 0;
                    v20 = v12;
                    if ((*([v12 discoveryTypesInternalPtr] + 2) & 2) != 0)
                    {
                      v21 = 0;
                      v22 = v19 & (bleRSSIThresholdHint >> 7);
                      do
                      {
                        *(&v43[-1] + v21++) = 0;
                      }

                      while (v21 != 22);
                      for (i = 0; i != 22; ++i)
                      {
                        *(&v41[-1] + i) = 0;
                      }

                      LOBYTE(v42) = 6;
                      LOBYTE(v40) = 6;
                      v32 = 0;
                      v33 = 0;
                      sub_10000C704(&v32, &v42, 0x16uLL);
                      v30 = 0;
                      v31 = 0;
                      sub_10000C704(&v30, &v40, 0x16uLL);
                      stringValue = [&off_100B33630 stringValue];
                      v25 = [NSString stringWithUTF8String:"WatchSetup"];
                      v38 = *&params->var0.var0;
                      v39 = *&params->var0.var1.var2[12];
                      sub_10003B48C(request, stringValue, v25, &v38, &v32, &v30, v22, 0, self->_targetCore, 1, 0, 0, 1);

                      v30 = &off_100AE0A78;
                      if (v31)
                      {
                        sub_10000C808(v31);
                      }

                      v32 = &off_100AE0A78;
                      if (v33)
                      {
                        sub_10000C808(v33);
                      }
                    }
                  }
                }

                goto LABEL_38;
              }
            }

            else
            {
              if ((v14 & 0x200000000) == 0)
              {
                goto LABEL_15;
              }

LABEL_41:
              self->_anyNeedsDups = 1;
              if ((v14 & 0x10000000000) == 0)
              {
                goto LABEL_17;
              }
            }

            self->_anyRangeScan = 1;
            goto LABEL_17;
          }
        }

LABEL_38:
        v11 = v11 + 1;
      }

      while (v11 != v9);
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      v9 = v26;
    }

    while (v26);
  }
}

- (void)_addServiceUUIDsWithParametersToScanRequestIfNeeded:(void *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids
{
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_discoveryArray;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v43)
  {
    v41 = *v62;
    do
    {
      v45 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * v45);
        discoveryFlags = [v6 discoveryFlags];
        v50 = v6;
        v8 = [v6 extraDiscoveryFlags] | discoveryFlags;
        v9 = (v8 & flags) != 0;
        if (types && (v8 & flags) == 0)
        {
          v9 = [v50 discoveryTypesContainTypes:types];
        }

        if (!v9)
        {
          goto LABEL_51;
        }

        self->_aggregateDiscoveryFlags |= v8;
        if (types)
        {
          v10 = v50;
          [v50 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v8 & 0x100000000000) != 0)
        {
          goto LABEL_51;
        }

        if ((v8 & 0x2000000000) != 0)
        {
          self->_anyActiveScan = 1;
          if ((v8 & 0x200000000) != 0)
          {
LABEL_54:
            self->_anyNeedsDups = 1;
            if ((v8 & 0x10000000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            self->_anyRangeScan = 1;
            goto LABEL_17;
          }
        }

        else if ((v8 & 0x200000000) != 0)
        {
          goto LABEL_54;
        }

        if ((v8 & 0x10000000000) != 0)
        {
          goto LABEL_16;
        }

LABEL_17:
        bleScanRateOverride = [v50 bleScanRateOverride];
        if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v50 bleScanRateScreenOff]) == 0))
        {
          bleScanRateOverride = [v50 bleScanRate];
          if (!bleScanRateOverride)
          {
            self->_scanRateAnyDefault = 1;
          }
        }

        if (bleScanRateOverride > self->_scanRateHighest)
        {
          self->_scanRateHighest = bleScanRateOverride;
        }

        bleRSSIThresholdHint = [v50 bleRSSIThresholdHint];
        v59 = 0u;
        v60 = 0u;
        if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
        {
          v13 = -90;
        }

        else
        {
          v13 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
        }

        v57 = 0uLL;
        v58 = 0uLL;
        serviceUUIDs = [v50 serviceUUIDs];
        v15 = [serviceUUIDs countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v15)
        {
          LODWORD(v16) = 0;
          v51 = serviceUUIDs;
          v52 = *v58;
          v48 = v13 & (bleRSSIThresholdHint >> 7);
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v58 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v18 = *(*(&v57 + 1) + 8 * i);
              serviceUUID = [v18 serviceUUID];
              v20 = serviceUUID;
              if (serviceUUID && [serviceUUID length] <= 0xFF)
              {
                v69 = 0uLL;
                v70 = 0;
                v21 = v20;
                sub_100065F40(&v69, [v20 bytes], objc_msgSend(v20, "length"));
                blobData = [v18 blobData];
                if ([blobData length])
                {
                }

                else
                {
                  maskData = [v18 maskData];
                  v24 = [maskData length] == 0;

                  if (v24)
                  {
                    sub_10000CDB8(uuids, &v69);
                    goto LABEL_48;
                  }
                }

                memset(__dst, 0, 22);
                memset(v67, 0, 22);
                blobData2 = [v18 blobData];
                v26 = blobData2;
                bytes = [blobData2 bytes];
                blobData3 = [v18 blobData];
                if ([blobData3 length] > 0x15)
                {
                  v30 = *bytes;
                  *(__dst + 14) = *(bytes + 14);
                  __dst[0] = v30;
                }

                else
                {
                  blobData4 = [v18 blobData];
                  memcpy(__dst, bytes, [blobData4 length]);
                }

                maskData2 = [v18 maskData];
                v32 = maskData2;
                bytes2 = [maskData2 bytes];
                maskData3 = [v18 maskData];
                if ([maskData3 length] > 0x15)
                {
                  v36 = *bytes2;
                  *(v67 + 14) = *(bytes2 + 14);
                  v67[0] = v36;
                }

                else
                {
                  maskData4 = [v18 maskData];
                  memcpy(v67, bytes2, [maskData4 length]);
                }

                v55 = 0;
                v56 = 0;
                sub_10000C704(&v55, __dst, 0x16uLL);
                v53 = 0;
                v54 = 0;
                sub_10000C704(&v53, v67, 0x16uLL);
                v16 = (v16 + 1);
                v37 = [NSString stringWithFormat:@"ServiceUUIDwithBlobMask-%d", v16];
                appID = [v50 appID];
                v65 = v69;
                v66 = v70;
                sub_10003B48C(needed, v37, appID, &v65, &v55, &v53, v48, 0, self->_targetCore, 1, 0, 0, 1);

                v53 = &off_100AE0A78;
                if (v54)
                {
                  sub_10000C808(v54);
                }

                v55 = &off_100AE0A78;
                if (v56)
                {
                  sub_10000C808(v56);
                }
              }

LABEL_48:
            }

            serviceUUIDs = v51;
            v15 = [v51 countByEnumeratingWithState:&v57 objects:v71 count:16];
          }

          while (v15);
        }

LABEL_51:
        v45 = v45 + 1;
      }

      while (v45 != v43);
      v39 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      v43 = v39;
    }

    while (v39);
  }
}

- (void)_addBufferedTypesIfNeeded:(id *)needed scanRequest:(void *)request
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_discoveryArray;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 discoveryTypesContainTypes:{needed, v15}])
        {
          v11 = v10;
          [v10 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
          discoveryFlags = [v10 discoveryFlags];
          v13 = [v10 extraDiscoveryFlags] | discoveryFlags;
          self->_aggregateDiscoveryFlags |= v13;
          if ((v13 & 0x100000000000) == 0)
          {
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:11];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:25];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:29];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:35];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:36];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:37];
            if ([v10 useCase] == 269)
            {
              self->_anyLeechBufferScan = 1;
            }

            else
            {
              self->_anyNonLeechBufferScan = 1;
              bleScanRateOverride = [v10 bleScanRateOverride];
              if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v10 bleScanRateScreenOff]) == 0))
              {
                bleScanRateOverride = [v10 bleScanRate];
                if (!bleScanRateOverride)
                {
                  self->_scanRateAnyDefault = 1;
                }
              }

              if (bleScanRateOverride > self->_scanRateHighest)
              {
                self->_scanRateHighest = bleScanRateOverride;
              }
            }
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_updateBufferedFlags:(id)flags type:(int)type
{
  flagsCopy = flags;
  v7 = flagsCopy;
  v15 = 0;
  v14 = 0;
  if ((type - 45) >= 0xFFFFFFD4)
  {
    *(&v14 + ((type - 1) >> 3)) |= 1 << (-type & 7);
  }

  v8 = [flagsCopy discoveryTypesContainTypes:&v14];
  if (type == 36)
  {
    v9 = 16;
  }

  else
  {
    v9 = type == 37;
  }

  if (type == 35)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  if (type == 29)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (type == 25)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (type == 11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (type <= 34)
  {
    v10 = v13;
  }

  if (!v8)
  {
    v10 = 0;
  }

  self->_aopBTTypes |= v10;
}

- (id)_deviceFilterUUIDs:(id)ds
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dsCopy = ds;
  v4 = 0;
  v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [NSUUID alloc];
        v10 = [v9 initWithUUIDString:{v8, v14}];
        if (v10)
        {
          goto LABEL_10;
        }

        v11 = sub_100777FF4(v8);
        v18[0] = 0;
        v18[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080AC24();
        }

        sub_1000498D4(off_100B508C8, v11, 1u, 1u, 0, 0, v18);
        v10 = sub_10004DF60(v18);
        if (v10)
        {
LABEL_10:
          if (!v4)
          {
            v4 = objc_alloc_init(NSMutableSet);
          }

          [v4 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  if ([v4 count])
  {
    allObjects = [v4 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_scanSummary:(void *)summary
{
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = sub_100042224;
  v123 = sub_1000425A4;
  v124 = 0;
  obj = 0;
  CUPrintFlags64();
  v67 = v70 = summary;
  NSAppendPrintF_safe();
  objc_storeStrong(&v124, 0);

  v5 = (v120 + 5);
  v117 = v120[5];
  CBDiscoveryTypesAppendString();
  objc_storeStrong(v5, v117);
  if ([(NSSet *)self->_sensorTrackingDevices count])
  {
    v6 = (v120 + 5);
    v116 = v120[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v6, v116);
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v7 = self->_sensorTrackingDevices;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v112 objects:v125 count:16];
    if (v8)
    {
      v9 = *v113;
      v10 = "";
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v113 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v112 + 1) + 8 * i);
          v13 = (v120 + 5);
          v111 = v120[5];
          [v12 UUIDString];
          v69 = v68 = v10;
          NSAppendPrintF_safe();
          objc_storeStrong(v13, v111);

          v10 = ", ";
        }

        v8 = [(NSSet *)v7 countByEnumeratingWithState:&v112 objects:v125 count:16, v68, v69];
        v10 = ", ";
      }

      while (v8);
    }

    v14 = (v120 + 5);
    v110 = v120[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v14, v110);
  }

  if ([(NSMutableDictionary *)self->_oobKeyMap count])
  {
    v15 = (v120 + 5);
    v109 = v120[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v15, v109);
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 1;
    oobKeyMap = self->_oobKeyMap;
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_100137AC8;
    v104[3] = &unk_100AE16D8;
    v104[4] = &v119;
    v104[5] = &v105;
    [(NSMutableDictionary *)oobKeyMap enumerateKeysAndObjectsUsingBlock:v104];
    v17 = (v120 + 5);
    v103 = v120[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v17, v103);
    _Block_object_dispose(&v105, 8);
  }

  v18 = (v120 + 5);
  v102 = v120[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v18, v102);
  summaryCopy6 = summary;
  if (summary)
  {
    if (*(summary + 173) == 1)
    {
      v20 = (v120 + 5);
      v101 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v20, v101);
      summaryCopy6 = summary;
    }

    if (summaryCopy6[144] == 1)
    {
      v21 = summaryCopy6[160];
      v22 = (v120 + 5);
      v100 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v22, v100);
      summaryCopy6 = summary;
      if (v21)
      {
        v23 = (v120 + 5);
        v99 = v120[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v23, v99);
        summaryCopy6 = summary;
      }
    }

    if (*summaryCopy6 == 1)
    {
      v24 = (v120 + 5);
      v98 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v24, v98);
      summaryCopy6 = summary;
    }

    if (summaryCopy6[164] == 1)
    {
      v25 = (v120 + 5);
      v97 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v25, v97);
      summaryCopy6 = summary;
    }

    v105 = 0;
    v106 = 0;
    v107 = 0;
    sub_10006D7D8(&v105, *(summaryCopy6 + 11), *(summaryCopy6 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(summaryCopy6 + 12) - *(summaryCopy6 + 11)) >> 5));
    v27 = v105;
    v26 = v106;
    if (v105 != v106)
    {
      v28 = (v120 + 5);
      v96 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v28, v96);
      v27 = v105;
      v26 = v106;
    }

    if (v27 != v26)
    {
      v29 = "";
      v30 = " ";
      v71 = v26;
      do
      {
        v31 = (v120 + 5);
        v95 = v120[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v31, v95);
        v32 = (v120 + 5);
        v94 = v120[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v32, v94);
        v33 = (v120 + 5);
        v93 = v120[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v33, v93);
        if (v27[8])
        {
          v34 = (v120 + 5);
          v92 = v120[5];
          NSAppendPrintF_safe();
          objc_storeStrong(v34, v92);
        }

        if ((*(v27 + 68) & 1) == 0)
        {
          v35 = (v120 + 5);
          v91 = v120[5];
          NSAppendPrintF_safe();
          objc_storeStrong(v35, v91);
        }

        if ((*(v27 + 65) & 1) == 0)
        {
          v36 = (v120 + 5);
          v90 = v120[5];
          NSAppendPrintF_safe();
          objc_storeStrong(v36, v90);
        }

        v37 = v27[5];
        v78 = &off_100AE0A78;
        v79 = v37;
        if (v37)
        {
          sub_10000C69C(v37);
        }

        v38 = sub_10000C5F8(&v78);
        v39 = sub_10000C5E0(&v78);
        v40 = v39;
        if (v39)
        {
          v41 = 0;
          while (!*(v38 + v41))
          {
            if (v39 == ++v41)
            {
              goto LABEL_61;
            }
          }

          if (v39 != v41)
          {
            if (v39 > v41)
            {
              while (!*(v38 - 1 + v40))
              {
                if (--v40 <= v41)
                {
                  v40 = v41;
                  break;
                }
              }
            }

            v42 = v27[3];
            __p = &off_100AE0A78;
            v74 = v42;
            if (v42)
            {
              sub_10000C69C(v42);
            }

            sub_10000C5F8(&__p);
            v43 = sub_10000C5E0(&__p);
            v44 = (v120 + 5);
            v89 = v120[5];
            NSAppendPrintF_safe();
            objc_storeStrong(v44, v89);
            if (v41)
            {
              for (j = 0; j != v41; ++j)
              {
                v46 = (v120 + 5);
                v88 = v120[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v46, v88);
              }
            }

            v47 = v41;
            if (v41 < v40)
            {
              do
              {
                v48 = v30;
                v49 = v29;
                v50 = v48;
                v51 = (v120 + 5);
                if (v47 >= v43)
                {
                  v86 = v120[5];
                  v52 = &v86;
                }

                else
                {
                  v87 = v120[5];
                  v52 = &v87;
                }

                NSAppendPrintF_safe();
                objc_storeStrong(v51, *v52);
                v29 = v49;
                v30 = v50;
                ++v47;
              }

              while (v40 != v47);
            }

            v53 = (v120 + 5);
            v85 = v120[5];
            NSAppendPrintF_safe();
            objc_storeStrong(v53, v85);
            if (v41)
            {
              for (k = 0; k != v41; ++k)
              {
                v55 = (v120 + 5);
                v84 = v120[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v55, v84);
              }
            }

            if (v41 < v40)
            {
              do
              {
                v56 = (v120 + 5);
                v83 = v120[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v56, v83);
                ++v41;
              }

              while (v40 != v41);
            }

            v57 = (v120 + 5);
            v82 = v120[5];
            NSAppendPrintF_safe();
            objc_storeStrong(v57, v82);
            __p = &off_100AE0A78;
            if (v74)
            {
              sub_10000C808(v74);
            }
          }
        }

LABEL_61:
        v58 = (v120 + 5);
        v81 = v120[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v58, v81);
        v78 = &off_100AE0A78;
        if (v79)
        {
          sub_10000C808(v79);
        }

        v27 += 12;
      }

      while (v27 != v71);
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    sub_10000CB74(&v78, v70 + 1);
    v59 = v78;
    v60 = v79;
    if (v78 != v79)
    {
      v61 = (v120 + 5);
      v77 = v120[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v61, v77);
      v59 = v78;
      v60 = v79;
    }

    for (; v59 != v60; v59 += 5)
    {
      v62 = (v120 + 5);
      v76 = v120[5];
      sub_10003B85C(v59, &__p);
      NSAppendPrintF_safe();
      objc_storeStrong(v62, v76);
      if (v75 < 0)
      {
        operator delete(__p);
      }
    }

    v63 = *(v70 + 48);
    if (v63)
    {
      v64 = (v120 + 5);
      v72 = v120[5];
      if (v63 < 0x20000)
      {
        switch(v63)
        {
          case 0x10000u:
          case 0x10001u:
          case 0x10002u:
          case 0x10003u:
          case 0x10004u:
          case 0x10005u:
          case 0x10006u:
          case 0x10007u:
          case 0x10008u:
          case 0x10009u:
          case 0x1000Au:
          case 0x1000Bu:
          case 0x1000Cu:
          case 0x1000Du:
          case 0x1000Eu:
          case 0x1000Fu:
          case 0x10010u:
          case 0x10011u:
          case 0x10012u:
          case 0x10013u:
          case 0x10014u:
          case 0x10015u:
          case 0x10016u:
          case 0x10017u:
          case 0x10018u:
          case 0x10019u:
          case 0x1001Au:
          case 0x1001Bu:
          case 0x1001Cu:
          case 0x1001Du:
          case 0x1001Eu:
          case 0x1001Fu:
            break;
          default:
            JUMPOUT(0);
        }
      }

      NSAppendPrintF_safe();
      objc_storeStrong(v64, v72);
    }

    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    v78 = &v105;
    sub_10003B78C(&v78);
  }

  v65 = v120[5];
  _Block_object_dispose(&v119, 8);

  return v65;
}

- (unint64_t)aggregateDiscoveryFlags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aggregateDiscoveryFlags = selfCopy->_aggregateDiscoveryFlags;
  objc_sync_exit(selfCopy);

  return aggregateDiscoveryFlags;
}

- ($D91DDCA3822F03E96939068EA8DE741A)aggregateDiscoveryTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *selfCopy->_aggregateDiscoveryTypes.bitArray | (*&selfCopy->_aggregateDiscoveryTypes.bitArray[4] << 32);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)handleInjectedAOPBufAdv:(id)adv
{
  advCopy = adv;
  if (dword_100B50FA0 <= 40 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    [advCopy count];
    LogPrintF_safe();
  }

  v4 = sub_1000C9B4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001383C4;
  v6[3] = &unk_100ADF820;
  v5 = advCopy;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

@end