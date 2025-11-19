void sub_10009714C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 statusCodeVoteNumber];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 statusCodeVoteNumber];
    [v4 addObject:v5];
  }
}

id sub_100097DB8(uint64_t a1)
{
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPPeripheralConnectorManager[%p]: Connection persistence timer timed out!", &v9, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  return [*(a1 + 32) update];
}

void sub_100098FF8(id a1)
{
  v1 = objc_alloc_init(EPPeripheralConnectorManagerFactory);
  v2 = qword_1001B3948;
  qword_1001B3948 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000998D0(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingDelegate];
  [v1 pairingCompleted];
}

void sub_100099914(id a1)
{
  v1 = objc_alloc_init(NRNetworkRelayPair);
  v2 = qword_1001B3958;
  qword_1001B3958 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100099A5C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) count];
  result = [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  if (!v2)
  {
    v4 = *(*(a1 + 32) + 64);

    return [v4 startScanningForCandidates];
  }

  return result;
}

id sub_100099B68(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) count];
  result = [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  if (v2 == 1)
  {
    result = [*(*(a1 + 32) + 8) count];
    if (!result)
    {
      v4 = *(*(a1 + 32) + 64);

      return [v4 stopScanningForCandidates];
    }
  }

  return result;
}

void sub_10009A0B0(uint64_t a1)
{
  [*(*(a1 + 32) + 64) requestPINPairingForCandidateWithIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) pairingDelegate];
  [v2 sendXPCDeviceNeedsPasscodeMessage:*(a1 + 48) passcode:0];
}

void sub_10009A300(uint64_t a1)
{
  v6 = bswap32([*(a1 + 32) unsignedIntValue]);
  v2 = [NSData dataWithBytes:&v6 length:4];
  v3 = *(a1 + 40);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;

  [*(*(a1 + 40) + 64) passPINAuthDataToPairingCandidate:v5 isAltAccountPairing:*(*(a1 + 40) + 88)];
}

void sub_10009A450(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = nrGetPairingError();
    v3 = *(a1 + 32);
    v18 = NSUnderlyingErrorKey;
    v19 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v5 = [v2 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v2 code], v4);

    v7 = [*(a1 + 40) pairingDelegate];
    v8 = [v7 pairingReport];
    [v8 setOriginalError:v6];

    v9 = +[NRQueue registryDaemonQueue];
    v10 = [v9 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A6DC;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 40);
    dispatch_async(v10, block);

    [*(a1 + 40) reset];
  }

  else
  {
    [*(a1 + 40) setIsNetworkRelayPairComplete:1];
    v11 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending com.apple.nanoregistry.isbeginningtopair darwin notification", buf, 2u);
    }

    notify_post("com.apple.nanoregistry.isbeginningtopair");
    v12 = [*(a1 + 40) pairingDelegate];
    v13 = *(a1 + 40);
    v14 = *(v13 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009A720;
    v15[3] = &unk_100175660;
    v15[4] = v13;
    [v12 activateDevice:v14 withCompletion:v15];

    objc_storeStrong((*(a1 + 40) + 40), *(a1 + 48));
    [*(a1 + 40) pairIDS];
  }
}

void sub_10009A6DC(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingDelegate];
  [v1 pairingCompleted];
}

void sub_10009A720(uint64_t a1)
{
  v2 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 32) UUIDString];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device %{public}@ activated", &v4, 0xCu);
  }
}

void sub_10009AA24(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pairingDelegate];
  [v4 initializeAllIDSChannelsBlock:0];

  if (a2)
  {
    v8 = nrGetPairingError();
    v5 = [*(a1 + 32) pairingDelegate];
    v6 = [v5 pairingReport];
    [v6 setOriginalError:v8];
  }

  else
  {
    v7 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009AB48;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void sub_10009AB48(uint64_t a1)
{
  v2 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling IDS IDSLocalPairingConnectPairedDevice %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 40);
  v5 = +[EPFactory queue];
  IDSLocalPairingConnectPairedDevice();
}

void sub_10009AC6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDS IDSLocalPairingConnectPairedDevice %@ completed with error %@", &v9, 0x16u);
  }

  if (v3)
  {
    v6 = nrGetPairingError();
    v7 = [*(a1 + 32) pairingDelegate];
    v8 = [v7 pairingReport];
    [v8 setOriginalError:v6];
  }
}

void sub_10009AD7C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009AE9C;
    block[3] = &unk_1001768B0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v9 = v4;
    v10 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    v7 = nrGetPairingError();
    v5 = [*(a1 + 32) pairingDelegate];
    v6 = [v5 pairingReport];
    [v6 setOriginalError:v7];
  }
}

void sub_10009AE9C(uint64_t a1)
{
  v2 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 40) UUIDString];
    v4 = v3;
    if (*(*(a1 + 32) + 24))
    {
      v5 = "PRESENT";
    }

    else
    {
      v5 = "ABSENT";
    }

    *buf = 138412546;
    v11 = v3;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling IDS IDSLocalPairingAddPairedDeviceWithInfo %@ key=%s", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v7 = [EPFactory queue:_NSConcreteStackBlock];
  IDSLocalPairingAddPairedDeviceWithInfo();
}

void sub_10009B014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 40) UUIDString];
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDS IDSLocalPairingAddPairedDeviceWithInfo %@ completed with error %@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = nrGetPairingError();
    v7 = [*(a1 + 32) pairingDelegate];
    v8 = [v7 pairingReport];
    [v8 setOriginalError:v6];
  }

  else
  {
    v9 = [*(a1 + 32) pairingDelegate];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009B1B4;
    v11[3] = &unk_100175688;
    v10 = *(a1 + 40);
    v12 = 0;
    v13 = v10;
    [v9 initializeAllIDSChannelsBlock:v11];

    v6 = v13;
  }
}

void sub_10009B1C8(uint64_t a1)
{
  if ([*(a1 + 32) isNetworkRelayPairComplete] && (objc_msgSend(*(a1 + 32), "IDSAccountAndDevicePresent") & 1) == 0)
  {
    [*(a1 + 32) setIDSAccountAndDevicePresent:1];
    v2 = [*(a1 + 32) isReady];
    v3 = networkrelay_pairing_log_handle();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Account and device are ready:- all three pairing steps are done!", buf, 2u);
      }

      v5 = +[NRQueue registryDaemonQueue];
      v6 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B328;
      block[3] = &unk_100175660;
      block[4] = *(a1 + 32);
      dispatch_async(v6, block);

      [*(a1 + 32) reset];
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Account and device are ready:- some of the three pairings steps are not done", buf, 2u);
      }
    }
  }
}

void sub_10009B328(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingDelegate];
  [v1 pairingCompleted];
}

void sub_10009B3E0(uint64_t a1)
{
  if ([*(a1 + 32) isNetworkRelayPairComplete] && (objc_msgSend(*(a1 + 32), "isInitialPropertiesReceived") & 1) == 0)
  {
    [*(a1 + 32) setIsInitialPropertiesReceived:1];
    v2 = [*(a1 + 32) isReady];
    v3 = networkrelay_pairing_log_handle();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Properties received:- all three pairing steps are done!", buf, 2u);
      }

      v5 = +[NRQueue registryDaemonQueue];
      v6 = [v5 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B540;
      block[3] = &unk_100175660;
      block[4] = *(a1 + 32);
      dispatch_async(v6, block);

      [*(a1 + 32) reset];
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Properties received:- some of the three pairings steps are not done", buf, 2u);
      }
    }
  }
}

void sub_10009B540(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingDelegate];
  [v1 pairingCompleted];
}

void sub_10009B710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B744(uint64_t result, char a2, char a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

void sub_10009B824(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v4 = v2;
  if (v2)
  {
    v3 = [v2 extendedMetadata];
  }

  else
  {
    v3 = 0;
  }

  (*(a1[6] + 16))();
}

id sub_10009B8B4(void *a1)
{
  v1 = a1;
  v2 = [[WatchSetupExtendedMetadata alloc] initWithPackedExtendedMetadataData:v1];

  v3 = [v2 pairingVersion];
  v4 = [v2 productVersionMajor];
  v5 = [v2 productVersionMinor];
  v6 = [v2 postFailSafeObliteration];
  v7 = [v2 encodedSystemVersion];
  v15[0] = off_1001B3138;
  v8 = [NSNumber numberWithUnsignedInt:v3];
  v16[0] = v8;
  v15[1] = off_1001B3140;
  v9 = [NSNumber numberWithUnsignedInt:v4];
  v16[1] = v9;
  v15[2] = off_1001B3148;
  v10 = [NSNumber numberWithUnsignedInt:v5];
  v16[2] = v10;
  v15[3] = off_1001B3150;
  v11 = [NSNumber numberWithBool:v6];
  v16[3] = v11;
  v15[4] = off_1001B3158;
  v12 = [NSNumber numberWithUnsignedInt:v7];
  v16[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v13;
}

void sub_10009C0E0(void *a1)
{
  v2 = [[NetworkRelayCandidateDeviceInfo alloc] initWithIdentifier:a1[6] extendedMetadata:a1[7]];
  [*(a1[4] + 72) setObject:v2 forKeyedSubscript:a1[5]];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1[4] + 8);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 discoveredCandidateName:a1[5] bluetoothIdentifier:{a1[8], v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10009C3E0(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 lostCandidateWithName:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10009C5AC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = [*(a1 + 32) pairingDelegate];
  [v2 sendXPCOOBKeyChanged:*(a1 + 40)];
}

void sub_10009C688(id a1)
{
  v1 = [NRWatchSetupPushDarwinNotification UTF8String];

  notify_post(v1);
}

void sub_10009C754(uint64_t a1)
{
  v8 = 0;
  [*(a1 + 32) getBytes:&v8 length:4];
  v2 = bswap32(v8);
  if (v2 > 0xF423F)
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v3 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received an invalid PIN (>999999): %u, not sending", buf, 8u);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    v3 = [*(a1 + 40) pairingDelegate];
    v4 = *(*(a1 + 40) + 32);
    v5 = [NSNumber numberWithUnsignedInt:v2];
    [v3 sendXPCDeviceNeedsPasscodeMessage:v4 passcode:v5];
  }
}

void sub_10009CA54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = sub_1000034AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NetworkRelayPair: Ghost device UUID %@ matches paired NR device %@", buf, 0x16u);
      }
    }

    v8 = [*(a1 + 40) pairingDelegate];
    LOBYTE(v9) = 0;
    [v8 unpairDeviceWithPairingID:v3 obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanFalse pairingReport:0 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v9];
  }
}

void sub_10009CDD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10009CF60(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10009D3D8(id *a1, uint64_t a2)
{
  v3 = [a1[4] _deviceCollection:a2 diffToUpdateNetworkRelayId:a1[5] ofDevice:a1[6]];
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[5] UUIDString];
    v6 = [a1[6] UUIDString];
    *buf = 136315906;
    v17 = "[EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice beginTransactionWithRoutingSlipEntry:serviceRegistry:]_block_invoke";
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s networkRelayDeviceIdentifier %{public}@, nanoRegistryDeviceIdentifier %{public}@, diff %{public}@", buf, 0x2Au);
  }

  if (v3)
  {
    v7 = [[EPSagaOperandDiff alloc] initWithDiff:v3];
    v8 = [a1[7] queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009D610;
    block[3] = &unk_1001758F8;
    v13 = a1[7];
    v14 = v7;
    v15 = a1[4];
    v9 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v10 = [a1[7] queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009D69C;
    v11[3] = &unk_100175660;
    v11[4] = a1[4];
    dispatch_async(v10, v11);
  }
}

void sub_10009D610(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) operands];
  [v3 setObject:v2 forKeyedSubscript:@"transactionDiff"];

  [*(a1 + 32) persist];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  [WeakRetained transactionDidComplete:*(a1 + 48)];
}

void sub_10009D69C(uint64_t a1)
{
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Missing operand";
  v2 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice" code:0 userInfo:v2];

  v4 = [*(a1 + 32) routingSlipEntry];
  v5 = [v4 errors];
  [v5 addObject:v3];

  v6 = [*(a1 + 32) routingSlipEntry];
  [v6 persist];

  v7 = [*(a1 + 32) delegate];
  [v7 transactionDidComplete:*(a1 + 32)];
}

void sub_10009D854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_10009EF4C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___NRPBPairingModeRequest__watchPairingProtocolVersion;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___NRPBPairingModeRequest__watchPairingProtocolVersion;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___NRPBPairingModeRequest__phonePairingProtocolVersionMin;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___NRPBPairingModeRequest__phonePairingProtocolVersionMin;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___NRPBPairingModeRequest__pairingMode;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___NRPBPairingModeRequest__pairingMode;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___NRPBPairingModeRequest__phonePairingProtocolVersionMax;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___NRPBPairingModeRequest__phonePairingProtocolVersionMax;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10009F898(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B3968;
  qword_1001B3968 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  [qword_1001B3968 setData:v3];
}

uint64_t sub_10009FB88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_10009FFE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000A0008(uint64_t a1)
{
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Unpair Timeout- giving up", &v16, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained(WeakRetained + 5);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(WeakRetained + 5);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(WeakRetained + 5);
        v16 = 138412546;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling unpairerBluetoothMayHaveFailed: on %@[%p]", &v16, 0x16u);
      }
    }

    v15 = objc_loadWeakRetained(WeakRetained + 5);
    [v15 unpairerBluetoothMayHaveFailed:WeakRetained];
  }

  if (WeakRetained)
  {
    [WeakRetained[3] removeAllObjects];
    *(WeakRetained + 32) = 1;
    [WeakRetained update];
  }
}

void sub_1000A0940(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000A0A20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

BOOL sub_1000A15FC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a3 + -2.0 > a4;
  if (a4 > a3)
  {
    v4 = 1;
  }

  v5 = a1 - a2;
  if (a1 - a2 < 0)
  {
    v5 = a2 - a1;
  }

  return v5 > 0xA && v4;
}

BOOL sub_1000A1628(uint64_t a1, uint64_t a2)
{
  v2 = a1 - a2;
  if (a1 - a2 < 0)
  {
    v2 = a2 - a1;
  }

  return v2 > 0xA;
}

uint64_t sub_1000A1778(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NRPBNSError);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000D8DF0(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A1B5C(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sleeping after IDS connect to allow metric testing", buf, 2u);
    }
  }

  v5 = dispatch_time(0, 300000000000);
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1C78;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_after(v5, v6, block);
}

void sub_1000A1C78(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000A1D58(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000A2024(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v28 = PBReaderReadString();
        v29 = 16;
LABEL_44:
        v30 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_76;
      }

      if (v13 == 2)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v49 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v49 & 0x7F) << v32;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_72;
          }
        }

        v27 = (v34 != 0) & ~[a2 hasError];
LABEL_72:
        v44 = 29;
LABEL_75:
        *(a1 + v44) = v27;
        goto LABEL_76;
      }

      if (v13 != 3)
      {
        goto LABEL_45;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v50 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v50 & 0x7F) << v14;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_68:
      *(a1 + 24) = v20;
LABEL_76:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 4)
    {
      if (v13 == 5)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v48 = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v48 & 0x7F) << v38;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_74;
          }
        }

        v27 = (v40 != 0) & ~[a2 hasError];
LABEL_74:
        v44 = 28;
      }

      else
      {
        if (v13 != 6)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_76;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_70;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_70:
        v44 = 30;
      }

      goto LABEL_75;
    }

    v28 = PBReaderReadString();
    v29 = 8;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A3128(void *a1)
{
  if (!a1[4])
  {
    v13 = 0;
    goto LABEL_18;
  }

  v2 = [NSValue valueWithNonretainedObject:?];
  os_unfair_lock_lock((a1[5] + 44));
  v3 = [*(a1[5] + 48) objectForKey:v2];

  v4 = [*(a1[5] + 48) count];
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = a1[4];
        v12 = a1[5];
        v26 = 138412802;
        v27 = v10;
        v28 = 2048;
        v29 = v11;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Object %@[%p] already in %@", &v26, 0x20u);
      }
    }

    os_unfair_lock_unlock((a1[5] + 44));
  }

  else
  {
    if (v6)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[4];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = a1[4];
        v19 = a1[5];
        v26 = 138412802;
        v27 = v17;
        v28 = 2048;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Object %@[%p] added to %@", &v26, 0x20u);
      }
    }

    [*(a1[5] + 48) setObject:a1[4] forKey:v2];
    os_unfair_lock_unlock((a1[5] + 44));
    v20 = *(a1[5] + 56);
    if (v20)
    {
      (*(v20 + 16))(v20, a1[4]);
    }

    if (!v4)
    {
      v25 = *(a1[5] + 16);
      if (v25)
      {
        (*(v25 + 16))();
      }

      v13 = 1;
      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_17:

LABEL_18:
  if (a1[6])
  {
    v21 = nr_daemon_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = nr_daemon_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[5];
        v26 = 138412546;
        v27 = v24;
        v28 = 1024;
        LODWORD(v29) = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ calling allocation block with %{BOOL}d", &v26, 0x12u);
      }
    }

    (*(a1[6] + 16))();
  }
}

void sub_1000A35C0(void *a1)
{
  if (a1[4])
  {
    v2 = [NSValue valueWithNonretainedObject:?];
    os_unfair_lock_lock((a1[5] + 44));
    v3 = [*(a1[5] + 48) objectForKey:v2];

    if (v3)
    {
      v4 = [*(a1[5] + 48) count];
      v5 = nr_daemon_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = nr_daemon_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[4];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = a1[4];
          v12 = a1[5];
          v40 = 138412802;
          v41 = v10;
          v42 = 2048;
          v43 = v11;
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Object %@[%p] removed from %@", &v40, 0x20u);
        }
      }

      [*(a1[5] + 48) removeObjectForKey:v2];
      os_unfair_lock_unlock((a1[5] + 44));
      v13 = a1[6];
      if (v4 == 1)
      {
        if (v13)
        {
          v14 = nr_daemon_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (v15)
          {
            v16 = nr_daemon_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = a1[5];
              v40 = 138412290;
              v41 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ emptied, calling clean-up block with YES", &v40, 0xCu);
            }
          }

          (*(a1[6] + 16))();
        }

        v18 = *(a1[5] + 24);
        if (v18)
        {
          (*(v18 + 16))();
        }
      }

      else if (v13)
      {
        v35 = nr_daemon_log();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

        if (v36)
        {
          v37 = nr_daemon_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = a1[5];
            v40 = 138412290;
            v41 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ not emptied, calling clean-up block with NO", &v40, 0xCu);
          }
        }

        (*(a1[6] + 16))();
      }

      v39 = *(a1[5] + 64);
      if (v39)
      {
        (*(v39 + 16))(v39, a1[4]);
      }
    }

    else
    {
      v23 = nr_daemon_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = nr_daemon_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = a1[4];
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = a1[4];
          v30 = a1[5];
          v40 = 138412802;
          v41 = v28;
          v42 = 2048;
          v43 = v29;
          v44 = 2112;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Object %@[%p] not in %@", &v40, 0x20u);
        }
      }

      os_unfair_lock_unlock((a1[5] + 44));
      if (a1[6])
      {
        v31 = nr_daemon_log();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

        if (v32)
        {
          v33 = nr_daemon_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = a1[5];
            v40 = 138412290;
            v41 = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ does not have the object, calling clean-up block with NO", &v40, 0xCu);
          }
        }

        (*(a1[6] + 16))();
      }
    }
  }

  else if (a1[6])
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[5];
        v40 = 138412290;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ object is nil, calling clean-up block with NO", &v40, 0xCu);
      }
    }

    (*(a1[6] + 16))();
  }
}

void sub_1000A3B20(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v2 = [*(*(a1 + 32) + 48) dictionaryRepresentation];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 44));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_1000A406C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fireTimer];
}

uint64_t sub_1000A442C(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      if ((sub_100102080(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A4988(id a1)
{
  v1 = objc_alloc_init(NRRestoreFromBackupTracker);
  v2 = qword_1001B3978;
  qword_1001B3978 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A59F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_1000A5C84(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = PBReaderReadString();
            v15 = 40;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_63;
            }

            v14 = PBReaderReadString();
            v15 = 56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v42 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v42 & 0x7F) << v16;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_68:
            v38 = 48;
            goto LABEL_73;
          }

          if (v13 != 2)
          {
            goto LABEL_63;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 6)
          {
LABEL_63:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_76;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }
      }

      else
      {
        if (v13 == 7)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v41 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_72:
          v38 = 52;
LABEL_73:
          *(a1 + v38) = v22;
          goto LABEL_76;
        }

        if (v13 == 8)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v43 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v43 & 0x7F) << v30;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v36) = 0;
              goto LABEL_75;
            }
          }

          v36 = (v32 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 64) = v36;
          goto LABEL_76;
        }

        if (v13 != 9)
        {
          goto LABEL_63;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_76:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000A6CE8(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  [*(a1 + 40) _updateRegistryForUnpairing:v3 pairingReport:*(a1 + 48)];
  v4 = [*(a1 + 56) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6DA8;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v4, block);

  return 0;
}

void sub_1000A6DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000A6E8C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRTermsAcknowledgementRegistry];
  v2 = qword_1001B3988;
  qword_1001B3988 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000A7298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A72B0(uint64_t a1)
{
  v2 = [*(a1 + 32) registryDelegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A73A4;
  v8[3] = &unk_1001788F0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *(a1 + 64);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 add:v4 forDeviceID:v3 withCompletion:v8];
}

void sub_1000A73A4(void *a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NRTermsAcknowlegementRegistryProxy: add:(%@) forDeviceID:(%@) completed with error %@", &v11, 0x20u);
    }
  }

  (*(a1[6] + 16))();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_1000A77CC(uint64_t a1)
{
  v2 = [*(a1 + 32) registryDelegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A78C0;
  v8[3] = &unk_100178940;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *(a1 + 64);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 checkForAcknowledgement:v4 forDeviceID:v3 withCompletion:v8];
}

void sub_1000A78C0(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      v10 = a1[4];
      v11 = a1[5];
      if (a2)
      {
        v9 = @"YES";
      }

      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NRTermsAcknowlegementRegistryProxy: checkForAcknowledgement:(%@) forDeviceID:(%@) accepted=%@ error=%@", &v14, 0x2Au);
    }
  }

  (*(a1[6] + 16))();
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_1000A7BEC(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v5 = [v4 value];

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7CEC;
  block[3] = &unk_1001758F8;
  v11 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void sub_1000A7CEC(id *a1)
{
  if ([a1[4] BOOLValue])
  {
    v2 = [a1[5] serviceFromClass:objc_opt_class()];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000A7DD8;
    v4[3] = &unk_100175A10;
    v4[4] = a1[6];
    [v2 xpcFakePairedSyncIsCompleteWithCompletion:v4];
  }

  else
  {
    v3 = [a1[6] delegate];
    [v3 transactionDidComplete:a1[6]];
  }
}

void sub_1000A7DD8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000A7F0C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B39A0;
  qword_1001B39A0 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_1000A8D60(id *a1, uint64_t a2, uint64_t a3)
{
  result = [a1[4] _termsEvent:a1[5] isNewerVersionOfTermsEvent:a2];
  if (result)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [a1[5] termsDigest];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removing duplicate terms event with digest %@", &v10, 0xCu);
      }
    }

    return [a1[6] addIndex:a3];
  }

  return result;
}

uint64_t sub_1000A9254(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B39A8;
  qword_1001B39A8 = v1;

  return _objc_release_x1(v1, v2);
}

void *sub_1000A93A8(void *result)
{
  v1 = *(result + 40);
  v2 = result[4];
  if (v1 != *(v2 + 20))
  {
    *(v2 + 20) = v1;
    v3 = result[4];
    if ((*(v3 + 20) & 1) == 0)
    {
      ++*(v3 + 24);
      v3 = result[4];
    }

    return [v3 _writeConnectivityStatus];
  }

  return result;
}

id sub_1000A98C0()
{
  if (qword_1001B39C0 != -1)
  {
    sub_100102714();
  }

  v1 = qword_1001B39B8;

  return v1;
}

void sub_1000A9904(id a1)
{
  v1 = os_log_create("com.apple.NanoRegistry", "eplibrary");
  v2 = qword_1001B39B8;
  qword_1001B39B8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000A9948()
{
  if (qword_1001B39D0 != -1)
  {
    sub_100102728();
  }

  v1 = qword_1001B39C8;

  return v1;
}

void sub_1000A998C(id a1)
{
  v1 = os_log_create("com.apple.NanoRegistry", "eplife");
  v2 = qword_1001B39C8;
  qword_1001B39C8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A99D0(id a1)
{
  v1 = os_log_create("com.apple.NanoRegistry", "client");
  v2 = qword_1001B39D8;
  qword_1001B39D8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000A9B60(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadData();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000AA71C(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (v3)
  {
    return [v2 characteristicReader:v4 didFailWithError:?];
  }

  v5 = a1[7];
  return [v2 characteristicReader:v4 didRead:?];
}

id sub_1000AABD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _readSequenceTimedOut];
}

id sub_1000AAC14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 _characteristicDiscoveryTimedOut];
}

void sub_1000AC1CC(uint64_t a1)
{
  if (*(a1 + 32) != qword_1001B39F8 && ([qword_1001B39F8 isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&qword_1001B39F8, *(a1 + 32));
    v2 = +[NRQueue registryDaemonQueue];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000AC28C;
    v3[3] = &unk_100175660;
    v3[4] = *(a1 + 40);
    [v2 dispatchAsync:v3];
  }
}

uint64_t sub_1000AC384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AC3F8(id a1)
{
  v1 = objc_alloc_init(NRLocalPropertyMonitor);
  v2 = qword_1001B3A00;
  qword_1001B3A00 = v1;

  +[NRLocalPropertyMonitor initializeGetters];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_1001B39E8;
  qword_1001B39E8 = v3;

  mach_timebase_info(&dword_1001B3A10);
}

void sub_1000AC548(id a1)
{
  v1 = dispatch_queue_create("com.apple.nanoregistry.localproperties.remotedevicechipidnumber", 0);
  v2 = qword_1001B39F0;
  qword_1001B39F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ACBA4(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = a2;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v19;
      *&v6 = 138412290;
      v17 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [qword_1001B39E8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v17}];
          v11 = nr_daemon_log();
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

          if (v12)
          {
            v13 = nr_daemon_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v25 = v10;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MobileGestalt says property %@ has changed", buf, 0xCu);
            }
          }

          buf[0] = 0;
          v14 = [WeakRetained _readProperty:v10 shouldUpdateCache:1 isUpdated:buf forceLog:1];
          v15 = v14;
          if (buf[0] == 1)
          {
            v22 = v10;
            v23 = v14;
            v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
            [WeakRetained _notifyObserversPropertiesDidChange:v16 thisIsAllOfThem:0];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }
  }
}

void sub_1000ACDAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000ACE78;
  v5[3] = &unk_100175EB8;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 dispatchAsync:v5];

  objc_destroyWeak(&v6);
}

void sub_1000ACE78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0;
    v3 = NRDevicePropertyCurrentUserLocale;
    v4 = [WeakRetained _readProperty:NRDevicePropertyCurrentUserLocale shouldUpdateCache:1 isUpdated:&v12 forceLog:0];
    v11 = 0;
    v5 = NRDevicePropertyPreferredLanguages;
    v6 = [v2 _readProperty:NRDevicePropertyPreferredLanguages shouldUpdateCache:1 isUpdated:&v11 forceLog:0];
    v7 = objc_opt_new();
    v8 = v7;
    if (v12 == 1)
    {
      if (v4)
      {
        [v7 setObject:v4 forKeyedSubscript:v3];
      }

      else
      {
        v9 = +[NSNull null];
        [v8 setObject:v9 forKeyedSubscript:v3];
      }
    }

    if (v11 == 1)
    {
      if (v6)
      {
        [v8 setObject:v6 forKeyedSubscript:v5];
      }

      else
      {
        v10 = +[NSNull null];
        [v8 setObject:v10 forKeyedSubscript:v5];
      }
    }

    if ((v12 & 1) != 0 || v11 == 1)
    {
      [v2 _notifyObserversPropertiesDidChange:v8 thisIsAllOfThem:0];
    }
  }
}

void sub_1000AD000(id a1)
{
  v1 = +[CTCellularPlanManager sharedManager];
}

void sub_1000AD034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD108;
  v5[3] = &unk_100175520;
  objc_copyWeak(&v6, (a1 + 40));
  v5[4] = *(a1 + 32);
  [v4 dispatchAsync:v5];

  objc_destroyWeak(&v6);
}

void sub_1000AD108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) pollProperties];
    WeakRetained = v3;
  }
}

void sub_1000AD15C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000AD37C;
    v21[3] = &unk_100175660;
    v21[4] = WeakRetained;
    v6 = objc_retainBlock(v21);
    v7 = v3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v7 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v11)];
          if ([v12 changeType] == 2)
          {
            (v6[2])(v6);
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v13 = NRDevicePropertyIsActive;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AD50C;
    v15[3] = &unk_100178B00;
    v16 = v6;
    v14 = v6;
    [NRMutableDeviceCollection parseDiff:v7 forPropertyChange:v13 withBlock:v15];
  }
}

void sub_1000AD37C(uint64_t a1)
{
  v2 = +[NRQueue registryDaemonQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AD410;
  v3[3] = &unk_100175660;
  v3[4] = *(a1 + 32);
  [v2 dispatchAsync:v3];
}

void sub_1000AD410(uint64_t a1)
{
  v7 = 0;
  v2 = NRDevicePropertyPairedDeviceCount;
  v3 = [*(a1 + 32) _readProperty:NRDevicePropertyPairedDeviceCount shouldUpdateCache:1 isUpdated:&v7 forceLog:1];
  v4 = v3;
  if (v7 == 1)
  {
    v8 = v2;
    v5 = v3;
    if (!v3)
    {
      v5 = +[NSNull null];
    }

    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    if (!v4)
    {
    }

    [*(a1 + 32) _notifyObserversPropertiesDidChange:v6 thisIsAllOfThem:0];
  }
}

void sub_1000AF3B4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Block_object_dispose(&STACK[0x5D0], 8);
  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose(&STACK[0x630], 8);
  _Block_object_dispose(&STACK[0x660], 8);
  _Block_object_dispose(&STACK[0x690], 8);
  _Unwind_Resume(a1);
}

void sub_1000AF47C(void *a1)
{
  v2 = HKIrregularRhythmNotificationsV1UpdateVersion();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HKIrregularRhythmNotificationsV1UDIDeviceIdentifier();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HKCurrentFeatureYearOfRelease;
  objc_storeStrong((*(a1[6] + 8) + 40), HKCurrentFeatureYearOfRelease);
  v9 = @"ElectrocardiogramRecording";
  v49 = 0;
  v10 = [NRHKProductVersions versionForProductWithName:v9 error:&v49];
  v11 = v49;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  if (v11)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001029D0();
      }
    }
  }

  v48 = 0;
  v17 = [NRHKProductVersions UDIDeviceIdentifierForProductWithName:v9 error:&v48];
  v18 = v48;
  v19 = *(a1[8] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v17;

  if (v18)
  {
    v21 = nr_daemon_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v23 = nr_daemon_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100102A38();
      }
    }
  }

  objc_storeStrong((*(a1[9] + 8) + 40), v8);
  v47 = 0;
  v24 = [NRHKProductAvailableRegions regionsForProductWithName:v9 error:&v47];
  v25 = v47;
  v26 = *(a1[10] + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v24;

  if (v25)
  {
    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100102AA0();
      }
    }
  }

  v46 = 0;
  v31 = [NRHKProductAvailableRegions regionsForProductWithName:@"ElectrocardiogramV2Recording" error:&v46];
  v32 = v46;
  v33 = *(a1[11] + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v31;

  if (v32)
  {
    v35 = nr_daemon_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (v36)
    {
      v37 = nr_daemon_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100102AA0();
      }
    }
  }

  objc_storeStrong((*(a1[12] + 8) + 40), HKMenstrualCyclesAlgorithmsVersion);
  objc_storeStrong((*(a1[13] + 8) + 40), HKCardioFitnessFeatureVersion);
  v45 = 0;
  v38 = [NRHKProductAvailableRegions regionsForProductWithName:@"CardioFitness" error:&v45];
  v39 = v45;
  v40 = *(a1[14] + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v38;

  if (v39)
  {
    v42 = nr_daemon_log();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

    if (v43)
    {
      v44 = nr_daemon_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100102AA0();
      }
    }
  }

  objc_storeStrong((*(a1[15] + 8) + 40), HKSleepCoachingFeatureVersion);
  objc_storeStrong((*(a1[16] + 8) + 40), HKSleepTrackingFeatureVersion);
  objc_storeStrong((*(a1[17] + 8) + 40), HKSleepActionsFeatureVersion);
  objc_storeStrong((*(a1[18] + 8) + 40), HKOxygenSaturationRecordingFeatureVersion);
}

_UNKNOWN **sub_1000AFA1C(uint64_t a1)
{
  v1 = [*(a1 + 32) _getGestaltDictionary:@"DiskUsage"];
  v2 = [v1 objectForKey:kMGQDiskUsageTotalDataCapacity];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_100187798;
  }

  v5 = v4;

  return v4;
}

id sub_1000AFB70(id a1)
{
  v1 = [NRLocalPropertyMonitor _getGestaltNumber:@"main-screen-width"];
  v2 = [NRLocalPropertyMonitor _getGestaltNumber:@"main-screen-height"];
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSValue nrValueWithCGSize:](NSValue, "nrValueWithCGSize:", [v1 integerValue], objc_msgSend(v2, "integerValue"));
  }

  return v5;
}

id sub_1000AFC90(id a1)
{
  v1 = +[NRPairingDaemon sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 mirrorOfPairedDeviceCount]);

  return v2;
}

id sub_1000AFD20(id a1)
{
  v1 = &off_1001877B0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v2 = +[NRSystemProperties sharedInstance];
    v3 = [v2 isVirtualDevice];
    v4 = &off_1001877C8;
    if (v3)
    {
      v4 = &off_1001877B0;
    }

    v1 = v4;
  }

  return v1;
}

id sub_1000AFDB8(id a1)
{
  v1 = +[NSLocale currentLocale];
  v2 = [v1 localeIdentifier];

  return v2;
}

id sub_1000AFE0C(id a1)
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  v3 = [NSNumber numberWithBool:v2];

  return v3;
}

id sub_1000AFE80(id a1)
{
  v1 = +[NSLocale preferredLanguages];
  v2 = [v1 copy];

  return v2;
}

id sub_1000AFED0(id a1)
{
  v1 = _CFCopySystemVersionDictionary();
  v2 = [v1 objectForKeyedSubscript:@"MarketingVersion"];

  return v2;
}

id sub_1000AFF80(uint64_t a1)
{
  v353 = [[NSUUID alloc] initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v357[0] = v353;
  v352 = [[NSUUID alloc] initWithUUIDString:@"07E81B2D-193A-4898-BBA4-B15E85A96BE5"];
  v357[1] = v352;
  v351 = [[NSUUID alloc] initWithUUIDString:@"307631AF-B309-4885-A4F2-122F156AF14B"];
  v357[2] = v351;
  v350 = [[NSUUID alloc] initWithUUIDString:@"41453C7F-5D99-4842-9DE4-F37E3A4D9D50"];
  v357[3] = v350;
  v349 = [[NSUUID alloc] initWithUUIDString:@"8A7396EE-44E9-401D-8546-9F60232B29E7"];
  v357[4] = v349;
  v348 = [[NSUUID alloc] initWithUUIDString:@"EE952AF6-9A20-42FC-B4CB-992D2C6AEFEA"];
  v357[5] = v348;
  v347 = [[NSUUID alloc] initWithUUIDString:@"B4B27F79-6817-4254-9232-37BFB09CE1B5"];
  v357[6] = v347;
  v346 = [[NSUUID alloc] initWithUUIDString:@"39F111D2-C3D1-4CCC-AB05-E464DE58625D"];
  v357[7] = v346;
  v345 = [[NSUUID alloc] initWithUUIDString:@"5EB8B901-444F-48F5-827F-03C90C093368"];
  v357[8] = v345;
  v344 = [[NSUUID alloc] initWithUUIDString:@"62AA8EC5-64FC-43D1-B856-D28D6520FA30"];
  v357[9] = v344;
  v343 = [[NSUUID alloc] initWithUUIDString:@"776E7CEE-4FCE-4780-A401-691B2C16EF68"];
  v357[10] = v343;
  v342 = [[NSUUID alloc] initWithUUIDString:@"A6E3ECD8-FC98-42E0-B5AD-AC9ECA775FBE"];
  v357[11] = v342;
  v341 = [[NSUUID alloc] initWithUUIDString:@"DB36394D-9CED-4841-BA1D-84B029EA25BB"];
  v357[12] = v341;
  v340 = [[NSUUID alloc] initWithUUIDString:@"B8365B0F-C979-491B-86E3-EBAE195F1755"];
  v357[13] = v340;
  v339 = [[NSUUID alloc] initWithUUIDString:@"8CC94E41-97B4-4CC4-9B3B-521BEC8FBE5C"];
  v357[14] = v339;
  v338 = [[NSUUID alloc] initWithUUIDString:@"C5BAD2E8-BB79-4E9E-8A0D-757C60D31053"];
  v357[15] = v338;
  v337 = [[NSUUID alloc] initWithUUIDString:@"DFC98DCA-E7AB-47EB-8864-FDC656ED1BBF"];
  v357[16] = v337;
  v336 = [[NSUUID alloc] initWithUUIDString:@"5B2CCB95-1760-430C-97B9-34BEBB5BD70B"];
  v357[17] = v336;
  v335 = [[NSUUID alloc] initWithUUIDString:@"46526F47-0B4B-41FF-A959-AC358550958C"];
  v357[18] = v335;
  v334 = [[NSUUID alloc] initWithUUIDString:@"330AF1F2-FD8F-40E4-B79C-2B0C476E6EAF"];
  v357[19] = v334;
  v333 = [[NSUUID alloc] initWithUUIDString:@"939B3E66-90BD-4C9E-9FE5-150D338FB4E8"];
  v357[20] = v333;
  v332 = [[NSUUID alloc] initWithUUIDString:@"9EAFA034-BAB5-455F-A122-C2EB399E8FCE"];
  v357[21] = v332;
  v331 = [[NSUUID alloc] initWithUUIDString:@"0AEBD96A-0D13-42E0-9D9B-3D4BFAB8B7DB"];
  v357[22] = v331;
  v330 = [[NSUUID alloc] initWithUUIDString:@"01EF2814-5C39-4B0E-84B9-7B8E2CC06AA3"];
  v357[23] = v330;
  v329 = [[NSUUID alloc] initWithUUIDString:@"D1E83259-F3FC-4F20-82C3-C528D45560C3"];
  v357[24] = v329;
  v328 = [[NSUUID alloc] initWithUUIDString:@"ED96B2DC-49DD-470D-BFE6-1F112AF20308"];
  v357[25] = v328;
  v327 = [[NSUUID alloc] initWithUUIDString:@"90F4EAD7-DC19-4601-ADB1-D1CEE0C99EF8"];
  v357[26] = v327;
  v326 = [[NSUUID alloc] initWithUUIDString:@"E9CD3885-6BAE-44AF-8A2E-D2AC35470D03"];
  v357[27] = v326;
  v325 = [[NSUUID alloc] initWithUUIDString:@"15AFBF9D-37E7-4B41-8698-B0E518A0F6DC"];
  v357[28] = v325;
  v324 = [[NSUUID alloc] initWithUUIDString:@"2AA261DF-FF42-40DE-A14F-1177D50EBD08"];
  v357[29] = v324;
  v323 = [[NSUUID alloc] initWithUUIDString:@"1171F09A-B15F-4C2C-A315-1A7A125CA54F"];
  v357[30] = v323;
  v322 = [[NSUUID alloc] initWithUUIDString:@"D1C41A00-1654-467C-8793-6B4299699982"];
  v357[31] = v322;
  v321 = [[NSUUID alloc] initWithUUIDString:@"2523BB16-06C1-4DEC-BD23-CC0613AB0BDF"];
  v357[32] = v321;
  v320 = [[NSUUID alloc] initWithUUIDString:@"EFAF2AEE-778B-4CCF-A640-EBD8C662D59B"];
  v357[33] = v320;
  v319 = [[NSUUID alloc] initWithUUIDString:@"871E76A4-AD36-4AAF-B894-13CAF677C531"];
  v357[34] = v319;
  v318 = [[NSUUID alloc] initWithUUIDString:@"E5E86144-6C47-4545-8F52-A5D468C1DA85"];
  v357[35] = v318;
  v317 = [[NSUUID alloc] initWithUUIDString:@"DEBFF23F-9327-44FB-A219-0428BEBD5BA7"];
  v357[36] = v317;
  v316 = [[NSUUID alloc] initWithUUIDString:@"7664BE48-77C3-48E5-BEE7-7EB383BA163C"];
  v357[37] = v316;
  v315 = [[NSUUID alloc] initWithUUIDString:@"CCBCAB2C-F590-4386-BC88-BFBEE2C2F7F4"];
  v357[38] = v315;
  v314 = [[NSUUID alloc] initWithUUIDString:@"1F1097A5-5A0B-4795-9FBE-B206DB49FA1D"];
  v357[39] = v314;
  v313 = [[NSUUID alloc] initWithUUIDString:@"784ED593-AE41-4087-B276-8C42AA1B9C36"];
  v357[40] = v313;
  v312 = [[NSUUID alloc] initWithUUIDString:@"0054136F-C120-452A-93D8-9259272B812F"];
  v357[41] = v312;
  v311 = [[NSUUID alloc] initWithUUIDString:@"033C7B1F-5B25-459A-8CC7-4824B9C219F7"];
  v357[42] = v311;
  v310 = [[NSUUID alloc] initWithUUIDString:@"CFD76F6A-B79A-475D-BCD7-7EB10AC33956"];
  v357[43] = v310;
  v309 = [[NSUUID alloc] initWithUUIDString:@"6ADE877A-70EB-43A1-A4D1-3E4BB50EFA54"];
  v357[44] = v309;
  v308 = [[NSUUID alloc] initWithUUIDString:@"E2FB408E-3F1C-4F55-89DE-A25CDF6D4C39"];
  v357[45] = v308;
  v307 = [[NSUUID alloc] initWithUUIDString:@"B2183583-3631-471B-AE16-57C389570AA3"];
  v357[46] = v307;
  v306 = [[NSUUID alloc] initWithUUIDString:@"282F1EE6-A144-4106-AFFB-2BDB5B59FD0D"];
  v357[47] = v306;
  v305 = [[NSUUID alloc] initWithUUIDString:@"135CFEB8-D730-40DE-AA77-7668663F72C4"];
  v357[48] = v305;
  v304 = [[NSUUID alloc] initWithUUIDString:@"506B78D5-F8AD-489A-8BF7-AD41268D0FF2"];
  v357[49] = v304;
  v303 = [[NSUUID alloc] initWithUUIDString:@"76EFD58C-2211-40CE-A4BA-891FE464B629"];
  v357[50] = v303;
  v302 = [[NSUUID alloc] initWithUUIDString:@"DF99F619-B83A-4084-A29C-F15A82DE2B15"];
  v357[51] = v302;
  v301 = [[NSUUID alloc] initWithUUIDString:@"91499922-4C63-41CF-884A-686713CE2738"];
  v357[52] = v301;
  v300 = [[NSUUID alloc] initWithUUIDString:@"410B4A76-885F-4715-83AF-E23513740668"];
  v357[53] = v300;
  v299 = [[NSUUID alloc] initWithUUIDString:@"2A8E43A1-0310-4167-8096-6A6E2F1722CE"];
  v357[54] = v299;
  v298 = [[NSUUID alloc] initWithUUIDString:@"AC310276-2B5D-4C25-A6AC-7D59ED5CB5D3"];
  v357[55] = v298;
  v297 = [[NSUUID alloc] initWithUUIDString:@"97181DA3-0809-43D6-9559-3FDBC5629F62"];
  v357[56] = v297;
  v296 = [[NSUUID alloc] initWithUUIDString:@"37CF71A8-CFCC-41D9-ADE7-704585AFA68B"];
  v357[57] = v296;
  v295 = [[NSUUID alloc] initWithUUIDString:@"A5F5D34E-AF48-47F6-A9A8-B2BDAC1D7FA2"];
  v357[58] = v295;
  v294 = [[NSUUID alloc] initWithUUIDString:@"A309A9D3-F806-4E30-909A-2D301780A8EB"];
  v357[59] = v294;
  v293 = [[NSUUID alloc] initWithUUIDString:@"C9D5B8D6-68B4-4C31-9CB7-4CA5309D4C83"];
  v357[60] = v293;
  v292 = [[NSUUID alloc] initWithUUIDString:@"B88B6795-0FF5-4FCB-82FA-07E09D904414"];
  v357[61] = v292;
  v291 = [[NSUUID alloc] initWithUUIDString:@"5DA2E6C5-2C4D-444E-B3E8-CCDEF7AB41AB"];
  v357[62] = v291;
  v290 = [[NSUUID alloc] initWithUUIDString:@"8E0684E7-903A-41D9-8548-8AA1971E2C27"];
  v357[63] = v290;
  v289 = [[NSUUID alloc] initWithUUIDString:@"B8CFCCD2-C6BE-441C-B60D-C5036FB9ABC5"];
  v357[64] = v289;
  v288 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v357[65] = v288;
  v287 = [[NSUUID alloc] initWithUUIDString:@"21FFC697-E29F-4C65-878E-2AC90BAF5B9E"];
  v357[66] = v287;
  v286 = [[NSUUID alloc] initWithUUIDString:@"7275F1C6-7EB4-4406-B552-DC910FBFD07C"];
  v357[67] = v286;
  v285 = [[NSUUID alloc] initWithUUIDString:@"9E6855A3-F1FD-444C-ACB5-000F4203EF76"];
  v357[68] = v285;
  v284 = [[NSUUID alloc] initWithUUIDString:@"873627CA-D131-46F4-B477-E653F7445DF9"];
  v357[69] = v284;
  v283 = [[NSUUID alloc] initWithUUIDString:@"58F7E0B5-513C-49C6-BE68-EACC9107342D"];
  v357[70] = v283;
  v282 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v357[71] = v282;
  v281 = [[NSUUID alloc] initWithUUIDString:@"81603B90-6702-446B-A559-CBA22E92C0B8"];
  v357[72] = v281;
  v280 = [[NSUUID alloc] initWithUUIDString:@"AB2653AC-2D55-4D7D-9BFB-7D99AA89708B"];
  v357[73] = v280;
  v279 = [[NSUUID alloc] initWithUUIDString:@"887DC9F2-A55D-41F6-8639-64776A041BF1"];
  v357[74] = v279;
  v278 = [[NSUUID alloc] initWithUUIDString:@"5A9640F0-1FE3-4019-8157-075CBFC8DBA1"];
  v357[75] = v278;
  v277 = [[NSUUID alloc] initWithUUIDString:@"D5737C61-3EE6-43DA-B714-00F3746C50E1"];
  v357[76] = v277;
  v276 = [[NSUUID alloc] initWithUUIDString:@"9BABD25D-2A8D-45DC-AAD6-D13E3348D818"];
  v357[77] = v276;
  v275 = [[NSUUID alloc] initWithUUIDString:@"02979F49-FAFA-49CC-8478-C2562BC81FB6"];
  v357[78] = v275;
  v274 = [[NSUUID alloc] initWithUUIDString:@"D6645782-7A76-4E52-8155-151366EBD4AB"];
  v357[79] = v274;
  v273 = [[NSUUID alloc] initWithUUIDString:@"4649745E-094C-4F84-80DD-F7AB46F54792"];
  v357[80] = v273;
  v272 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
  v357[81] = v272;
  v271 = [[NSUUID alloc] initWithUUIDString:@"B68E1DBD-8CE4-4684-8F65-FF0AF2040D4E"];
  v357[82] = v271;
  v270 = [[NSUUID alloc] initWithUUIDString:@"E58F9466-0386-4DE7-B6CE-537A8B54C9B7"];
  v357[83] = v270;
  v269 = [[NSUUID alloc] initWithUUIDString:@"E8CD02C1-B7C0-4E12-8A44-AB54B5F52E5F"];
  v357[84] = v269;
  v268 = [[NSUUID alloc] initWithUUIDString:@"30304660-A06F-440F-B9FA-B44739ADCEE6"];
  v357[85] = v268;
  v267 = [[NSUUID alloc] initWithUUIDString:@"8D49EAB9-4F90-45FB-9F8E-D61E108D89F1"];
  v357[86] = v267;
  v266 = [[NSUUID alloc] initWithUUIDString:@"DC264F98-B0E2-4D96-9248-663A801E4FB1"];
  v357[87] = v266;
  v265 = [[NSUUID alloc] initWithUUIDString:@"78E1881C-F6E1-421F-BC90-A1EBF1784BB1"];
  v357[88] = v265;
  v264 = [[NSUUID alloc] initWithUUIDString:@"AB878DA5-6746-4240-8A43-D7658EE7BFF4"];
  v357[89] = v264;
  v263 = [[NSUUID alloc] initWithUUIDString:@"B51CCBC5-6C2B-47BB-90EA-002DE9C4DA79"];
  v357[90] = v263;
  v262 = [[NSUUID alloc] initWithUUIDString:@"66A5B423-7CBE-423C-A13B-6389E27D63B9"];
  v357[91] = v262;
  v261 = [[NSUUID alloc] initWithUUIDString:@"F4DCA831-3D30-45BC-BDCC-E99D0E482D94"];
  v357[92] = v261;
  v260 = [[NSUUID alloc] initWithUUIDString:@"BF083122-A7BA-478F-A94E-E3F337F1177E"];
  v357[93] = v260;
  v259 = [[NSUUID alloc] initWithUUIDString:@"9B084186-2B81-4526-9A7D-AD719EC81C83"];
  v357[94] = v259;
  v258 = [[NSUUID alloc] initWithUUIDString:@"006D876D-4576-49C4-BCE4-D1C2CC85EDDA"];
  v357[95] = v258;
  v257 = [[NSUUID alloc] initWithUUIDString:@"25B1B001-1F02-49A0-B7E7-6225BA6B004D"];
  v357[96] = v257;
  v256 = [[NSUUID alloc] initWithUUIDString:@"36A0EB23-E045-4E99-9D71-8FB9A853ADA7"];
  v357[97] = v256;
  v255 = [[NSUUID alloc] initWithUUIDString:@"03C7A646-DB1E-404B-B393-033E5496A383"];
  v357[98] = v255;
  v254 = [[NSUUID alloc] initWithUUIDString:@"2A57E5FF-A774-4903-B58D-41F01654BC76"];
  v357[99] = v254;
  v253 = [[NSUUID alloc] initWithUUIDString:@"22073865-96B7-4F94-83FD-07164A231B79"];
  v357[100] = v253;
  v252 = [[NSUUID alloc] initWithUUIDString:@"A5E3D6BA-0998-4787-BE2A-0BBF2B359CC0"];
  v357[101] = v252;
  v251 = [[NSUUID alloc] initWithUUIDString:@"2CE80E5D-FA17-4BD4-A48C-DFC3A79FB8ED"];
  v357[102] = v251;
  v250 = [[NSUUID alloc] initWithUUIDString:@"47B00C18-4A79-437C-9C4E-058CB7A82F4E"];
  v357[103] = v250;
  v249 = [[NSUUID alloc] initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
  v357[104] = v249;
  v248 = [[NSUUID alloc] initWithUUIDString:@"50BDC6C0-0803-11EA-AAEF-0800200C9A66"];
  v357[105] = v248;
  v247 = [[NSUUID alloc] initWithUUIDString:@"CBAC2DE5-C7A2-4DA2-932B-E57BABEA3B97"];
  v357[106] = v247;
  v246 = [[NSUUID alloc] initWithUUIDString:@"AC48DBC9-7E0D-469B-987C-D95820181912"];
  v357[107] = v246;
  v245 = [[NSUUID alloc] initWithUUIDString:@"82AA137D-7207-4997-8F6E-9DB738D759F1"];
  v357[108] = v245;
  v244 = [[NSUUID alloc] initWithUUIDString:@"D0D02931-2190-4E71-B843-C73C4ADB3F27"];
  v357[109] = v244;
  v243 = [[NSUUID alloc] initWithUUIDString:@"D5DDA3E7-8863-48E3-95C7-3C65C5E31718"];
  v357[110] = v243;
  v242 = [[NSUUID alloc] initWithUUIDString:@"41714B27-B839-4AB5-8A36-6191015AA8FE"];
  v357[111] = v242;
  v241 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  v357[112] = v241;
  v240 = [[NSUUID alloc] initWithUUIDString:@"B4FBD189-BF37-4C38-A2C3-A0471795086C"];
  v357[113] = v240;
  v239 = [[NSUUID alloc] initWithUUIDString:@"6B4C8BB6-D411-406E-BD9B-9CA0F2296C96"];
  v357[114] = v239;
  v238 = [[NSUUID alloc] initWithUUIDString:@"AE03A48B-6794-4978-96CC-425A7F6443DA"];
  v357[115] = v238;
  v237 = [[NSUUID alloc] initWithUUIDString:@"0B75AFAC-6373-41D2-A4F3-D4C1E9295A07"];
  v357[116] = v237;
  v236 = [[NSUUID alloc] initWithUUIDString:@"7640DD53-A02B-4C03-AB93-9FA49BCD0AB6"];
  v357[117] = v236;
  v235 = [[NSUUID alloc] initWithUUIDString:@"2C1C2266-9A61-4756-8AFD-9DFE14C54864"];
  v357[118] = v235;
  v234 = [[NSUUID alloc] initWithUUIDString:@"AC48DBC9-7E0D-469B-987C-D95820181912"];
  v357[119] = v234;
  v233 = [[NSUUID alloc] initWithUUIDString:@"91E62A39-143F-4EFE-997B-71EAE2AE5D6A"];
  v357[120] = v233;
  v232 = [[NSUUID alloc] initWithUUIDString:@"81152CB5-FFBB-4058-B107-C38FE9888110"];
  v357[121] = v232;
  v231 = [[NSUUID alloc] initWithUUIDString:@"A7ECBEFE-1F57-4037-8007-469E4BF74064"];
  v357[122] = v231;
  v230 = [[NSUUID alloc] initWithUUIDString:@"54B99808-A820-45A2-8FF1-51C9DD7328F6"];
  v357[123] = v230;
  v229 = [[NSUUID alloc] initWithUUIDString:@"5500A959-3C9D-4787-9235-2A1210C3559E"];
  v357[124] = v229;
  v228 = [[NSUUID alloc] initWithUUIDString:@"C2765ACC-C8FA-4C7A-9B11-B6B9DBE0CBBB"];
  v357[125] = v228;
  v227 = [[NSUUID alloc] initWithUUIDString:@"0F0D81BB-499A-4556-AA06-3616ECDC6BBB"];
  v357[126] = v227;
  v226 = [[NSUUID alloc] initWithUUIDString:@"1A231DC1-A6A1-473B-AE74-D40A5656BB22"];
  v357[127] = v226;
  v225 = [[NSUUID alloc] initWithUUIDString:@"21EB4560-EFA0-46AA-B75C-401D30C5BBF1"];
  v357[128] = v225;
  v224 = [[NSUUID alloc] initWithUUIDString:@"E81D5008-B450-487E-9A35-6029799E6588"];
  v357[129] = v224;
  v223 = [[NSUUID alloc] initWithUUIDString:@"0DB19B8C-E479-4162-80B3-E8ECE76B4117"];
  v357[130] = v223;
  v222 = [[NSUUID alloc] initWithUUIDString:@"47B09AC1-3757-485D-9FB4-F124AC8FE430"];
  v357[131] = v222;
  v221 = [[NSUUID alloc] initWithUUIDString:@"FAB030A8-8E57-49E3-AFE8-418FBB1F049A"];
  v357[132] = v221;
  v220 = [[NSUUID alloc] initWithUUIDString:@"03E92753-7AAE-45AD-AFC7-BBDB94BE69F7"];
  v357[133] = v220;
  v219 = [[NSUUID alloc] initWithUUIDString:@"63DBFE2B-B226-4EF1-AFBB-43E4CCE6A43E"];
  v357[134] = v219;
  v218 = [[NSUUID alloc] initWithUUIDString:@"FFF1DEA3-3FB3-43F8-B986-EAFC838148EA"];
  v357[135] = v218;
  v217 = [[NSUUID alloc] initWithUUIDString:@"BADF6E3E-9021-4B23-8ADA-045A705DADC6"];
  v357[136] = v217;
  v216 = [[NSUUID alloc] initWithUUIDString:@"27120128-3A0E-492A-8BBC-C57A70E362CA"];
  v357[137] = v216;
  v215 = [[NSUUID alloc] initWithUUIDString:@"069990E1-4702-480F-86A8-334D7AA738B0"];
  v357[138] = v215;
  v214 = [[NSUUID alloc] initWithUUIDString:@"B0EC13E2-AEB5-4CBE-9821-37ADCA5FB0DA"];
  v357[139] = v214;
  v213 = [[NSUUID alloc] initWithUUIDString:@"C814BC07-AE2D-4061-9C1E-D97BED9DAC22"];
  v357[140] = v213;
  v212 = [[NSUUID alloc] initWithUUIDString:@"1087B4F0-9D95-407D-98BC-195A5FB6EDF5"];
  v357[141] = v212;
  v211 = [[NSUUID alloc] initWithUUIDString:@"C7C06707-D0C2-405E-AFB4-7F215413B262"];
  v357[142] = v211;
  v210 = [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
  v357[143] = v210;
  v209 = [[NSUUID alloc] initWithUUIDString:@"AB4827F9-FA0C-4D61-8E1C-1F77B23CF26A"];
  v357[144] = v209;
  v208 = [[NSUUID alloc] initWithUUIDString:@"F405E6BC-C306-4B65-B1D7-439AB5A152CC"];
  v357[145] = v208;
  v207 = [[NSUUID alloc] initWithUUIDString:@"A87D220D-4D8E-42CE-AB39-6E071D6B2B2C"];
  v357[146] = v207;
  v206 = [[NSUUID alloc] initWithUUIDString:@"2B5E630F-55DE-4122-A36B-5F8F77D1363E"];
  v357[147] = v206;
  v205 = [[NSUUID alloc] initWithUUIDString:@"79129411-2004-4B40-89F6-B0E14651B97F"];
  v357[148] = v205;
  v204 = [[NSUUID alloc] initWithUUIDString:@"F903EABC-5A2E-4948-BB6B-031369165B24"];
  v357[149] = v204;
  v203 = [[NSUUID alloc] initWithUUIDString:@"D19E94CA-E3A6-45FB-A534-710914B5AB77"];
  v357[150] = v203;
  v202 = [[NSUUID alloc] initWithUUIDString:@"436C3C42-1855-4417-BD50-BD3D1B870E0F"];
  v357[151] = v202;
  v201 = [[NSUUID alloc] initWithUUIDString:@"5C64C95B-8E7C-46AB-A110-1E51C93D7B7F"];
  v357[152] = v201;
  v200 = [[NSUUID alloc] initWithUUIDString:@"B437A3A0-FD60-4D9B-8A18-814E9891E245"];
  v357[153] = v200;
  v199 = [[NSUUID alloc] initWithUUIDString:@"EECEF837-B719-472A-BE4C-375E1852CA2F"];
  v357[154] = v199;
  v198 = [[NSUUID alloc] initWithUUIDString:@"B7B7F81F-E5A3-4B99-82C2-C5A0095FE70A"];
  v357[155] = v198;
  v197 = [[NSUUID alloc] initWithUUIDString:@"79770938-0C49-40BD-B593-4E04E7557E01"];
  v357[156] = v197;
  v196 = [[NSUUID alloc] initWithUUIDString:@"AD3C8B62-1FB2-4A7A-ABF1-EBD5AF574209"];
  v357[157] = v196;
  v195 = [[NSUUID alloc] initWithUUIDString:@"6993A7A9-22E3-4F44-AAAB-4F3DFDD83818"];
  v357[158] = v195;
  v194 = [[NSUUID alloc] initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v357[159] = v194;
  v193 = [[NSUUID alloc] initWithUUIDString:@"AD784C80-650B-11EB-8572-0800200C9A66"];
  v357[160] = v193;
  v192 = [[NSUUID alloc] initWithUUIDString:@"3C190EF7-40E9-47BF-9B87-3408FD90B9E6"];
  v357[161] = v192;
  v191 = [[NSUUID alloc] initWithUUIDString:@"FFDA9C57-8508-4B50-B6D8-EEE862251FC0"];
  v357[162] = v191;
  v190 = [[NSUUID alloc] initWithUUIDString:@"2A51E7B3-1B80-4981-9F09-F725BC3A8065"];
  v357[163] = v190;
  v189 = [[NSUUID alloc] initWithUUIDString:@"6E76AC51-634C-415F-8491-C6784AF2C471"];
  v357[164] = v189;
  v188 = [[NSUUID alloc] initWithUUIDString:@"E90AC0F3-E83B-42C8-8EDB-D6C6BCF08D65"];
  v357[165] = v188;
  v187 = [[NSUUID alloc] initWithUUIDString:@"47E58695-B34B-4546-88F8-E9DE533278A9"];
  v357[166] = v187;
  v186 = [[NSUUID alloc] initWithUUIDString:@"48DB09AC-404A-4F1D-8952-61DCA0277C32"];
  v357[167] = v186;
  v185 = [[NSUUID alloc] initWithUUIDString:@"674FD660-822D-4A0A-8A10-7ED7299FB8F7"];
  v357[168] = v185;
  v184 = [[NSUUID alloc] initWithUUIDString:@"FA784EAB-0396-4E07-B68A-66815BB84E3E"];
  v357[169] = v184;
  v183 = [[NSUUID alloc] initWithUUIDString:@"A19F7B33-B4B5-4859-8FDD-DEDA6FD71895"];
  v357[170] = v183;
  v182 = [[NSUUID alloc] initWithUUIDString:@"BADB0622-1CC0-4CE0-BF07-1B79D4FC28BB"];
  v357[171] = v182;
  v181 = [[NSUUID alloc] initWithUUIDString:@"CBF3763A-5F42-4463-B714-39903987FE90"];
  v357[172] = v181;
  v180 = [[NSUUID alloc] initWithUUIDString:@"8C05D669-D731-40D5-B6D7-B4D9D55C6427"];
  v357[173] = v180;
  v179 = [[NSUUID alloc] initWithUUIDString:@"ED2B57B6-9EA3-4ED9-843D-FE92F74B2DE0"];
  v357[174] = v179;
  v178 = [[NSUUID alloc] initWithUUIDString:@"894C532F-65E7-4E2E-B3A3-9D0A8C0CE76D"];
  v357[175] = v178;
  v177 = [[NSUUID alloc] initWithUUIDString:@"C3FD35B9-C30A-4893-B94B-56080B5FD9B7"];
  v357[176] = v177;
  v176 = [[NSUUID alloc] initWithUUIDString:@"B5C93485-A89F-4ACA-8845-3F508A6620EF"];
  v357[177] = v176;
  v175 = [[NSUUID alloc] initWithUUIDString:@"88D7381B-F0D1-498F-88D5-9F016A27EB4F"];
  v357[178] = v175;
  v174 = [[NSUUID alloc] initWithUUIDString:@"45D167B6-F5A6-469D-A81B-3146DE124929"];
  v357[179] = v174;
  v173 = [[NSUUID alloc] initWithUUIDString:@"8051616D-3CE1-4C54-906D-456FC386E9D6"];
  v357[180] = v173;
  v172 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  v357[181] = v172;
  v171 = [[NSUUID alloc] initWithUUIDString:@"D0C5C53B-F689-49B1-B51E-EB48B20F92AF"];
  v357[182] = v171;
  v170 = [[NSUUID alloc] initWithUUIDString:@"157666B2-886F-4DBB-BFEE-669DE191D8BB"];
  v357[183] = v170;
  v169 = [[NSUUID alloc] initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v357[184] = v169;
  v168 = [[NSUUID alloc] initWithUUIDString:@"FEE09F8C-155A-48C0-AF0E-5F62F88238BC"];
  v357[185] = v168;
  v167 = [[NSUUID alloc] initWithUUIDString:@"A334D6D2-9BEC-414E-BD6C-8AC1E5FB8CA3"];
  v357[186] = v167;
  v166 = [[NSUUID alloc] initWithUUIDString:@"54EDC00B-9FDF-442B-93A8-0562A7EBCCE0"];
  v357[187] = v166;
  v165 = [[NSUUID alloc] initWithUUIDString:@"35165B81-461F-4423-8903-A50CEFB1C204"];
  v357[188] = v165;
  v164 = [[NSUUID alloc] initWithUUIDString:@"C990FB84-055B-467E-B7AD-EB88FCE19825"];
  v357[189] = v164;
  v163 = [[NSUUID alloc] initWithUUIDString:@"1BA5E83D-D9B3-4AE7-A4D0-A26C34386F2D"];
  v357[190] = v163;
  v162 = [[NSUUID alloc] initWithUUIDString:@"F5E0C9C7-CA38-421E-808A-0705258C1EF9"];
  v357[191] = v162;
  v161 = [[NSUUID alloc] initWithUUIDString:@"36BD47D1-7193-4236-867F-3555B4AC18B0"];
  v357[192] = v161;
  v160 = [[NSUUID alloc] initWithUUIDString:@"C79D46D1-84CF-4208-AEA0-39117F9770E7"];
  v357[193] = v160;
  v159 = [[NSUUID alloc] initWithUUIDString:@"FD975695-3B94-465A-86E1-26276C5835A8"];
  v357[194] = v159;
  v158 = [[NSUUID alloc] initWithUUIDString:@"06943DC7-5853-4025-B160-D33A8C0D0449"];
  v357[195] = v158;
  v157 = [[NSUUID alloc] initWithUUIDString:@"58F4EB1B-0B75-4C11-A3F4-E0D4E7759511"];
  v357[196] = v157;
  v156 = [[NSUUID alloc] initWithUUIDString:@"61A9519E-E0F5-4F71-9CA4-33AC4A444B44"];
  v357[197] = v156;
  v155 = [[NSUUID alloc] initWithUUIDString:@"D8A5B9F1-722E-436E-B616-1398AEB94F1B"];
  v357[198] = v155;
  v154 = [[NSUUID alloc] initWithUUIDString:@"62A0825B-34DD-490E-9DB9-D13AE37F601B"];
  v357[199] = v154;
  v153 = [[NSUUID alloc] initWithUUIDString:@"46D8FA11-A747-4C0B-B4F4-0AB1308739B4"];
  v357[200] = v153;
  v152 = [[NSUUID alloc] initWithUUIDString:@"B9EB8122-4210-4EFC-A48A-1EFEA037CDF0"];
  v357[201] = v152;
  v151 = [[NSUUID alloc] initWithUUIDString:@"6114C32D-3A7F-4C06-A90E-2106E5A304D3"];
  v357[202] = v151;
  v150 = [[NSUUID alloc] initWithUUIDString:@"B8E1457C-60C6-4CBE-AE96-F0AA874D3100"];
  v357[203] = v150;
  v149 = [[NSUUID alloc] initWithUUIDString:@"A3D877D2-408A-43F1-9CA4-39C9F3609A93"];
  v357[204] = v149;
  v148 = [[NSUUID alloc] initWithUUIDString:@"E63BF630-F388-4DCC-B73A-40EFB659A4C2"];
  v357[205] = v148;
  v147 = [[NSUUID alloc] initWithUUIDString:@"7BFF3E43-2495-4724-91FA-D8DDA37FD05C"];
  v357[206] = v147;
  v146 = [[NSUUID alloc] initWithUUIDString:@"E49AA0D4-4AA5-47C3-9272-4644AF0E6FA9"];
  v357[207] = v146;
  v145 = [[NSUUID alloc] initWithUUIDString:@"7DBEFCBF-73F8-4C55-844C-B0F3D3B6FF24"];
  v357[208] = v145;
  v144 = [[NSUUID alloc] initWithUUIDString:@"4A864DD3-D518-4FB7-9583-38E6B0581585"];
  v357[209] = v144;
  v143 = [[NSUUID alloc] initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
  v357[210] = v143;
  v142 = [[NSUUID alloc] initWithUUIDString:@"E7B1CD81-445C-4840-9F24-3A32B510B6A1"];
  v357[211] = v142;
  v141 = [[NSUUID alloc] initWithUUIDString:@"15874345-3594-4D3F-9A28-BA2AEA650A0D"];
  v357[212] = v141;
  v140 = [[NSUUID alloc] initWithUUIDString:@"9107296E-53BE-49DA-88A8-8C9A1BF81CFD"];
  v357[213] = v140;
  v139 = [[NSUUID alloc] initWithUUIDString:@"4F322FC4-C692-412B-9B8C-10DED4AFEB85"];
  v357[214] = v139;
  v138 = [[NSUUID alloc] initWithUUIDString:@"A14F53B9-2C95-4293-B688-2D8D34A4239E"];
  v357[215] = v138;
  v137 = [[NSUUID alloc] initWithUUIDString:@"0292BF89-0343-4CB2-98D0-E9F0BD8947E4"];
  v357[216] = v137;
  v136 = [[NSUUID alloc] initWithUUIDString:@"CB0D11F9-5EA4-4B0F-B640-0D6D61FC7116"];
  v357[217] = v136;
  v135 = [[NSUUID alloc] initWithUUIDString:@"2D039937-4DE9-4AE3-B28E-F65B3D258152"];
  v357[218] = v135;
  v134 = [[NSUUID alloc] initWithUUIDString:@"BC465234-0FF9-46F6-9ACD-0394027F67A8"];
  v357[219] = v134;
  v133 = [[NSUUID alloc] initWithUUIDString:@"E2CC1285-2DF4-4FCE-8206-878565E0FC35"];
  v357[220] = v133;
  v132 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v357[221] = v132;
  v131 = [[NSUUID alloc] initWithUUIDString:@"F8F7D952-6C43-4CE0-80A3-044AA0D3CC63"];
  v357[222] = v131;
  v130 = [[NSUUID alloc] initWithUUIDString:@"F364B0F1-4FC0-461A-8B5B-93CF7E2BC79F"];
  v357[223] = v130;
  v129 = [[NSUUID alloc] initWithUUIDString:@"832275CC-B0F5-46CA-85B0-92463453065E"];
  v357[224] = v129;
  v128 = [[NSUUID alloc] initWithUUIDString:@"8DD39CF2-0515-442A-99FD-06F9AAA59249"];
  v357[225] = v128;
  v127 = [[NSUUID alloc] initWithUUIDString:@"94251CFF-6FD3-4126-9C80-71C8FC8F9F6C"];
  v357[226] = v127;
  v126 = [[NSUUID alloc] initWithUUIDString:@"C8D90945-3158-4E8A-986A-284B5502DC17"];
  v357[227] = v126;
  v125 = [[NSUUID alloc] initWithUUIDString:@"3504A514-833D-4594-B619-1EBA887521B8"];
  v357[228] = v125;
  v124 = [[NSUUID alloc] initWithUUIDString:@"E8688E98-D216-469E-9B5C-4D33527B0C6F"];
  v357[229] = v124;
  v123 = [[NSUUID alloc] initWithUUIDString:@"4CC676F2-E761-4AA8-AE40-1A40F3868BDE"];
  v357[230] = v123;
  v122 = [[NSUUID alloc] initWithUUIDString:@"3650D526-DBF6-4230-8502-4508D40210DB"];
  v357[231] = v122;
  v121 = [[NSUUID alloc] initWithUUIDString:@"0D852855-E6CF-45FA-B786-B26BE87FF939"];
  v357[232] = v121;
  v120 = [[NSUUID alloc] initWithUUIDString:@"75584707-D2C4-481E-B8E8-3D8EDD459B61"];
  v357[233] = v120;
  v119 = [[NSUUID alloc] initWithUUIDString:@"3ED136C0-AA1F-4883-BCEC-BC33A85A3AFA"];
  v357[234] = v119;
  v118 = [[NSUUID alloc] initWithUUIDString:@"AC953E03-CAB8-4508-9145-EA5D629BCDAC"];
  v357[235] = v118;
  v117 = [[NSUUID alloc] initWithUUIDString:@"198711C2-6CC8-43B9-A882-6670CC787272"];
  v357[236] = v117;
  v116 = [[NSUUID alloc] initWithUUIDString:@"763A8A6B-1D96-4298-878A-A0FF3C627D79"];
  v357[237] = v116;
  v115 = [[NSUUID alloc] initWithUUIDString:@"F917CEA4-4001-46AF-8291-CA74CF9178BE"];
  v357[238] = v115;
  v114 = [[NSUUID alloc] initWithUUIDString:@"9A815CF5-4377-41E5-A00A-161FC5C51956"];
  v357[239] = v114;
  v113 = [[NSUUID alloc] initWithUUIDString:@"16625FBA-E847-4494-8191-433915DC9F15"];
  v357[240] = v113;
  v112 = [[NSUUID alloc] initWithUUIDString:@"D3581A95-1F64-4EBD-8F71-0CD6B696D766"];
  v357[241] = v112;
  v111 = [[NSUUID alloc] initWithUUIDString:@"A9FBE0A3-C444-47D3-81E1-C183E34E74B2"];
  v357[242] = v111;
  v110 = [[NSUUID alloc] initWithUUIDString:@"A97647CC-89CB-4C3C-A144-18371D6DD41F"];
  v357[243] = v110;
  v109 = [[NSUUID alloc] initWithUUIDString:@"CD5C8AEC-E1A5-4BF7-BB08-075C47320253"];
  v357[244] = v109;
  v108 = [[NSUUID alloc] initWithUUIDString:@"DAB81146-4105-445B-94AD-14033A199AC4"];
  v357[245] = v108;
  v107 = [[NSUUID alloc] initWithUUIDString:@"F27862F8-5179-4DB0-9F89-179EA7CB4011"];
  v357[246] = v107;
  v106 = [[NSUUID alloc] initWithUUIDString:@"8CF6A4A5-2346-47AF-B997-475C3E77AF88"];
  v357[247] = v106;
  v105 = [[NSUUID alloc] initWithUUIDString:@"2A05C9E8-D388-4DB8-8EE2-EB4D0F0D11B5"];
  v357[248] = v105;
  v104 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"];
  v357[249] = v104;
  v103 = [[NSUUID alloc] initWithUUIDString:@"5F570C64-A1B8-4ADE-AC62-99C67F4C40ED"];
  v357[250] = v103;
  v102 = [[NSUUID alloc] initWithUUIDString:@"210C1233-537B-4A1E-8EE0-253962851B43"];
  v357[251] = v102;
  v101 = [[NSUUID alloc] initWithUUIDString:@"3A6A41CC-1427-4F81-88F4-82365AA10C82"];
  v357[252] = v101;
  v100 = [[NSUUID alloc] initWithUUIDString:@"10262875-CE7F-4736-BEE0-2233E4EAA468"];
  v357[253] = v100;
  v99 = [[NSUUID alloc] initWithUUIDString:@"B727AD95-5778-41B6-A9DB-05E7289820ED"];
  v357[254] = v99;
  v98 = [[NSUUID alloc] initWithUUIDString:@"D41B128F-B8BD-49DE-8982-B197D1CA18C7"];
  v357[255] = v98;
  v97 = [[NSUUID alloc] initWithUUIDString:@"9FFD76FA-21FC-46AE-8AAB-14FB3F692B28"];
  v357[256] = v97;
  v96 = [[NSUUID alloc] initWithUUIDString:@"742C60A6-F1CF-4368-8F2B-2AC6ED2C020E"];
  v357[257] = v96;
  v95 = [[NSUUID alloc] initWithUUIDString:@"622B6312-95FA-4F09-9148-69E286A9C31F"];
  v357[258] = v95;
  v1 = [[NSUUID alloc] initWithUUIDString:@"AB707200-CFE3-4419-8DF0-A17D17C8764D"];
  v357[259] = v1;
  v2 = [[NSUUID alloc] initWithUUIDString:@"80E387E5-4BC3-421D-873B-080D09375241"];
  v357[260] = v2;
  v3 = [[NSUUID alloc] initWithUUIDString:@"5AFE51EE-2DBA-4270-93A6-A275D9D6CFDE"];
  v357[261] = v3;
  v4 = [[NSUUID alloc] initWithUUIDString:@"E6F0AB1C-320C-4941-9948-D2EAE7BA9A51"];
  v357[262] = v4;
  v5 = [[NSUUID alloc] initWithUUIDString:@"90049967-2379-4487-8D0C-AD63092ED56D"];
  v357[263] = v5;
  v6 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v357[264] = v6;
  v7 = [[NSUUID alloc] initWithUUIDString:@"0B0171D3-B1DB-4B4A-BC75-14ACB7BB9592"];
  v357[265] = v7;
  v8 = [NSArray arrayWithObjects:v357 count:266];
  v9 = [NSMutableArray arrayWithArray:v8];

  if ((_os_feature_enabled_impl() & 1) != 0 || MGGetBoolAnswer())
  {
    v10 = [[NSUUID alloc] initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];
    [v9 addObject:v10];
  }

  if (MGGetBoolAnswer())
  {
    v11 = [[NSUUID alloc] initWithUUIDString:@"31C94532-4B1A-4812-A21D-4E95A18F6EC0"];
    [v9 addObject:v11];
  }

  if (MGGetBoolAnswer())
  {
    v12 = [[NSUUID alloc] initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
    [v9 addObject:v12];
  }

  if (_NRIsInternalInstall())
  {
    v13 = [[NSUUID alloc] initWithUUIDString:@"A4F025DD-E3E3-4886-8189-676CE98A6926"];
    [v9 addObject:v13];
  }

  if (_os_feature_enabled_impl())
  {
    v14 = [[NSUUID alloc] initWithUUIDString:@"9ECF1C6D-E28C-47F9-A640-CF1E2E658715"];
    [v9 addObject:v14];
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [[NSUUID alloc] initWithUUIDString:@"A8A0AE85-DA8D-4122-8350-95649852948E"];
    [v9 addObject:v15];
  }

  v16 = +[AXSettings sharedInstance];
  v17 = [v16 voiceOverShowBrailleWatchSettings];

  if (v17)
  {
    v18 = [[NSUUID alloc] initWithUUIDString:@"8620D455-7F5A-4871-B19E-88F914C977A7"];
    [v9 addObject:v18];
  }

  if (_os_feature_enabled_impl())
  {
    v19 = [[NSUUID alloc] initWithUUIDString:@"0EEFEB2D-0DDD-44CC-B240-BA8EDE9A1BC5"];
    [v9 addObject:v19];
  }

  if (_os_feature_enabled_impl())
  {
    v20 = [[NSUUID alloc] initWithUUIDString:@"93EA0155-DFC4-4F9D-B8F0-DECC5B9C0C1D"];
    [v9 addObject:v20];
  }

  v21 = nr_daemon_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = nr_daemon_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = MGGetBoolAnswer();
      v25 = @"NO";
      if (v24)
      {
        v25 = @"YES";
      }

      *buf = 138412290;
      v356 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NRLocalPropertyMonitor Capabilities: This device has telephony: %@", buf, 0xCu);
    }
  }

  if ((MGGetBoolAnswer() & 1) != 0 || _NRIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"FakeTelephonyCapability", @"com.apple.NanoRegistry", 0))
  {
    v26 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
    [v9 addObject:v26];
  }

  if (MGGetBoolAnswer())
  {
    v27 = [[NSUUID alloc] initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"];
    [v9 addObject:v27];
  }

  if (MGGetBoolAnswer())
  {
    v28 = [[NSUUID alloc] initWithUUIDString:@"AB764CE8-D4DF-4DB6-991C-3A298E380BD1"];
    [v9 addObject:v28];
  }

  if (MGGetBoolAnswer())
  {
    v29 = [[NSUUID alloc] initWithUUIDString:@"FEBBC201-B013-4680-94B0-7F4129F4CCB8"];
    [v9 addObject:v29];
  }

  if (MGGetBoolAnswer())
  {
    v30 = [[NSUUID alloc] initWithUUIDString:@"68E9D2AF-A820-45FC-8FB3-92A04428CBF8"];
    [v9 addObject:v30];
  }

  if (MGGetBoolAnswer())
  {
    v31 = [[NSUUID alloc] initWithUUIDString:@"6AABB66B-8E1B-4CAB-8FC4-AC577BA0AFB0"];
    [v9 addObject:v31];
  }

  if (MGGetBoolAnswer())
  {
    v32 = [[NSUUID alloc] initWithUUIDString:@"15CA749B-A234-4F10-A437-53016C5F6A05"];
    [v9 addObject:v32];
  }

  if (MGGetBoolAnswer())
  {
    v33 = [[NSUUID alloc] initWithUUIDString:@"0C599FD8-CC9F-48C9-BC37-C764A8B0527C"];
    [v9 addObject:v33];
  }

  v34 = MGGetProductType();
  if (v34 == 1721691077 || v34 == 1429914406)
  {
    v35 = [[NSUUID alloc] initWithUUIDString:@"05DFED5F-6931-4683-B8B9-59D33C2104F3"];
    [v9 addObject:v35];
  }

  if (MGGetBoolAnswer())
  {
    v36 = [[NSUUID alloc] initWithUUIDString:@"5FD17775-116B-456A-A02A-A2C8EA78027F"];
    [v9 addObject:v36];
  }

  if (MGGetBoolAnswer())
  {
    v37 = [[NSUUID alloc] initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
    [v9 addObject:v37];
  }

  if (MGGetBoolAnswer())
  {
    v38 = [[NSUUID alloc] initWithUUIDString:@"BFF435BD-ACFF-4AD8-9CC4-4DEA6D51BB3A"];
    [v9 addObject:v38];
  }

  if (MGGetBoolAnswer())
  {
    v39 = [[NSUUID alloc] initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
    [v9 addObject:v39];
  }

  if (MGGetBoolAnswer())
  {
    v40 = [[NSUUID alloc] initWithUUIDString:@"61415300-E200-4EDE-9853-BF83E3DE3A8A"];
    [v9 addObject:v40];
  }

  if (MGGetBoolAnswer())
  {
    v41 = [[NSUUID alloc] initWithUUIDString:@"B81E9BEF-B19B-4468-8887-44BE181472C0"];
    [v9 addObject:v41];
  }

  if (MGGetBoolAnswer())
  {
    v42 = [[NSUUID alloc] initWithUUIDString:@"66DE554B-3959-40C7-88B1-81E8481E3B84"];
    [v9 addObject:v42];
  }

  if (MGGetBoolAnswer())
  {
    v43 = [[NSUUID alloc] initWithUUIDString:@"D1DBCF21-D875-4EA8-B63E-8182578C0B0C"];
    [v9 addObject:v43];
  }

  if (MGGetBoolAnswer())
  {
    v44 = [[NSUUID alloc] initWithUUIDString:@"7EB344BD-17CE-41D0-A2C5-86AE2346CF3B"];
    [v9 addObject:v44];
  }

  if (MGGetBoolAnswer())
  {
    v45 = [[NSUUID alloc] initWithUUIDString:@"FC61CF95-E168-468C-ABD5-9311FF689760"];
    [v9 addObject:v45];
  }

  v46 = [[NSUUID alloc] initWithUUIDString:@"119C9267-C24D-4FC3-8FE9-2D394943F2E6"];
  [v9 addObject:v46];

  v47 = [[NSUUID alloc] initWithUUIDString:@"79C6122C-6767-4098-9B1E-30DE4D6D0180"];
  [v9 addObject:v47];

  if (MGGetBoolAnswer())
  {
    v48 = [[NSUUID alloc] initWithUUIDString:@"4CAAF5A2-6DD3-43EE-B2D8-C3D8C4997856"];
    [v9 addObject:v48];
  }

  if (_os_feature_enabled_impl())
  {
    v49 = [[NSUUID alloc] initWithUUIDString:@"B743795D-BA43-40D7-BA73-D1415B0895D4"];
    [v9 addObject:v49];
  }

  if (_os_feature_enabled_impl())
  {
    v50 = [[NSUUID alloc] initWithUUIDString:@"AF84606C-1503-4EE8-AD61-590CC010537E"];
    [v9 addObject:v50];
  }

  if (_os_feature_enabled_impl())
  {
    v51 = [[NSUUID alloc] initWithUUIDString:@"AD00FAC5-9C37-4D0C-8F16-9B00B4C821C6"];
    [v9 addObject:v51];
  }

  if (MGGetBoolAnswer())
  {
    v52 = [[NSUUID alloc] initWithUUIDString:@"C5C226E6-01A7-4731-BDDA-D7F62A979D52"];
    [v9 addObject:v52];
  }

  if (_os_feature_enabled_impl())
  {
    v53 = [[NSUUID alloc] initWithUUIDString:@"81A852A8-B570-4985-BE03-14B92863DFC4"];
    [v9 addObject:v53];
  }

  if (_os_feature_enabled_impl())
  {
    v54 = [[NSUUID alloc] initWithUUIDString:@"EF9E8C3A-6B59-47E0-BA2F-212213F1A30D"];
    [v9 addObject:v54];
  }

  if (_os_feature_enabled_impl())
  {
    v55 = [[NSUUID alloc] initWithUUIDString:@"EC26A7BC-7571-457B-9DEF-6CB5CF3AB850"];
    [v9 addObject:v55];
  }

  if (_os_feature_enabled_impl())
  {
    v56 = [[NSUUID alloc] initWithUUIDString:@"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E"];
    [v9 addObject:v56];
  }

  if (MGGetBoolAnswer())
  {
    v57 = [[NSUUID alloc] initWithUUIDString:@"E553D9C1-2587-4142-B286-C556E89F51F3"];
    [v9 addObject:v57];

    v58 = [[NSUUID alloc] initWithUUIDString:@"AB8F4061-4873-40AF-9613-C8A97D0921F2"];
    [v9 addObject:v58];
  }

  if (_os_feature_enabled_impl())
  {
    v59 = [[NSUUID alloc] initWithUUIDString:@"46F59960-D16A-4E76-B7D1-A1B0BBC73923"];
    [v9 addObject:v59];
  }

  if (+[SOSUtilities isKappaDetectionSupportedOnCurrentDevice])
  {
    v60 = [[NSUUID alloc] initWithUUIDString:@"891D0E88-9AB8-420F-8FB5-92A1D4C58DAE"];
    [v9 addObject:v60];
  }

  if (_os_feature_enabled_impl())
  {
    v61 = [[NSUUID alloc] initWithUUIDString:@"A70EA46D-407A-4723-A8EF-CFF5DFB423B4"];
    [v9 addObject:v61];
  }

  if (MGGetBoolAnswer())
  {
    v62 = [[NSUUID alloc] initWithUUIDString:@"4AF61239-2126-4FD6-8E7A-CDA2D7A0BFE9"];
    [v9 addObject:v62];
  }

  if (_os_feature_enabled_impl())
  {
    v63 = [[NSUUID alloc] initWithUUIDString:@"54FC3688-3F2A-435A-A95D-2F1866839415"];
    [v9 addObject:v63];
  }

  if (PKCloudKitPassSyncEnabled())
  {
    v64 = [[NSUUID alloc] initWithUUIDString:@"AAA2622E-C2DC-45BF-A337-F8A4BCED8CFD"];
    [v9 addObject:v64];
  }

  if (MGGetBoolAnswer())
  {
    v65 = [[NSUUID alloc] initWithUUIDString:@"C8F5171A-C2E3-44C2-A9E3-107080BFE094"];
    [v9 addObject:v65];
  }

  if (MGGetBoolAnswer())
  {
    v66 = [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
    [v9 addObject:v66];
  }

  if (_os_feature_enabled_impl())
  {
    v67 = [[NSUUID alloc] initWithUUIDString:@"31001ED2-BD9E-4705-B297-53032117179E"];
    [v9 addObject:v67];
  }

  if (MGGetBoolAnswer() && _os_feature_enabled_impl())
  {
    v68 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
    [v9 addObject:v68];
  }

  if (_os_feature_enabled_impl())
  {
    v69 = [[NSUUID alloc] initWithUUIDString:@"0FC0E189-59F0-4BB1-ACFC-570B13B35974"];
    [v9 addObject:v69];
  }

  if (_os_feature_enabled_impl())
  {
    v70 = [[NSUUID alloc] initWithUUIDString:@"CC1FA357-B007-460B-8F39-FB5472CBFAFB"];
    [v9 addObject:v70];
  }

  if ([*(a1 + 32) _supportsR2])
  {
    v71 = [[NSUUID alloc] initWithUUIDString:@"59C2CEC2-60CD-4346-B9E0-B3BC5C98CA75"];
    [v9 addObject:v71];
  }

  if (MGGetBoolAnswer())
  {
    v72 = [[NSUUID alloc] initWithUUIDString:@"3955CA84-B333-44E3-B8C3-A420085151EE"];
    [v9 addObject:v72];
  }

  if (_os_feature_enabled_impl())
  {
    v73 = [[NSUUID alloc] initWithUUIDString:@"43E00559-AA2F-4680-9118-AD6ABDFEDCD2"];
    [v9 addObject:v73];
  }

  if (MGGetBoolAnswer())
  {
    v74 = [[NSUUID alloc] initWithUUIDString:@"A0A8CBBD-8F56-46ED-A36B-446D452C0515"];
    [v9 addObject:v74];
  }

  if (_os_feature_enabled_impl())
  {
    v75 = [[NSUUID alloc] initWithUUIDString:@"205EB184-AC17-4886-BC97-09F15A9CA5F1"];
    [v9 addObject:v75];
  }

  if (_os_feature_enabled_impl())
  {
    v76 = [[NSUUID alloc] initWithUUIDString:@"D31054F8-4D10-4575-A387-7F5A4498C9D0"];
    [v9 addObject:v76];
  }

  if (_os_feature_enabled_impl())
  {
    v77 = [[NSUUID alloc] initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
    [v9 addObject:v77];
  }

  if (_os_feature_enabled_impl())
  {
    v78 = [[NSUUID alloc] initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
    [v9 addObject:v78];
  }

  if (MGGetBoolAnswer())
  {
    v79 = [[NSUUID alloc] initWithUUIDString:@"01299775-E611-4F05-8BFF-ABBD9995F4B8"];
    [v9 addObject:v79];
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v80 = [[NSUUID alloc] initWithUUIDString:@"4AA0FC66-2573-4079-A68E-D366D9AD3489"];
    [v9 addObject:v80];
  }

  v81 = [[NSUUID alloc] initWithUUIDString:@"4E8C3265-3D65-4E94-8BCD-23DC8C4FC8CF"];
  [v9 addObject:v81];

  if (MGGetBoolAnswer())
  {
    v82 = [[NSUUID alloc] initWithUUIDString:@"6B0579F9-ED84-4E5E-B753-83D35793F919"];
    [v9 addObject:v82];
  }

  if (_os_feature_enabled_impl())
  {
    v83 = [[NSUUID alloc] initWithUUIDString:@"132C0E45-0099-4FC6-9FC2-D2C1F22BCC0E"];
    [v9 addObject:v83];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || (+[NRSystemProperties sharedInstance](NRSystemProperties, "sharedInstance"), v84 = objc_claimAutoreleasedReturnValue(), v85 = [v84 isVirtualDevice], v84, v85))
  {
    v86 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
    [v9 addObject:v86];
  }

  if (_os_feature_enabled_impl())
  {
    v87 = [[NSUUID alloc] initWithUUIDString:@"75029622-9F11-4261-823A-2BA026AE2660"];
    [v9 addObject:v87];
  }

  if (_os_feature_enabled_impl())
  {
    v88 = [[NSUUID alloc] initWithUUIDString:@"90B8A394-4493-444D-AAA4-DDF6D6B68BC2"];
    [v9 addObject:v88];
  }

  if (_os_feature_enabled_impl())
  {
    v89 = [[NSUUID alloc] initWithUUIDString:@"06ADE5F4-5D76-45B0-91A4-289A116145AE"];
    [v9 addObject:v89];
  }

  if (MGGetBoolAnswer())
  {
    v90 = [[NSUUID alloc] initWithUUIDString:@"D6770323-EBBB-4867-A1A7-99F207C64094"];
    [v9 addObject:v90];
  }

  if (_os_feature_enabled_impl())
  {
    v91 = [[NSUUID alloc] initWithUUIDString:@"38627122-E97A-4089-861C-81704B480D2E"];
    [v9 addObject:v91];
  }

  if (MGGetBoolAnswer())
  {
    v92 = [[NSUUID alloc] initWithUUIDString:@"27EC88C0-A142-4C22-BCEB-4B6A90B5184F"];
    [v9 addObject:v92];
  }

  v93 = [NSSet setWithArray:v9];

  return v93;
}

id sub_1000B379C(id a1)
{
  v1 = _NRIsInternalInstall();

  return [NSNumber numberWithBool:v1];
}

id sub_1000B3870(id a1)
{
  v1 = +[NRPairingDaemon sharedInstance];
  v2 = [v1 mirrorOfActiveDevice];
  v3 = [v2 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v4 = [v3 value];

  return v4;
}

id sub_1000B38F8(id a1)
{
  v1 = +[MDMConfiguration sharedConfiguration];
  [v1 refreshDetailsFromDisk];

  v2 = +[MDMConfiguration getManagementStateForMAID];

  return [NSNumber numberWithUnsignedInteger:v2];
}

void sub_1000B4464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4494(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000B4F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRequestMigration: We are done with error %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      v8 = [v3 domain];
      v9 = [v8 isEqual:@"com.apple.nanoregistry.NRRemoteObjectTinker"];

      if (v9)
      {
        v20 = NSLocalizedDescriptionKey;
        v21 = @"message send failure";
        v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionRequestMigration" code:1 userInfo:v10];
      }

      else
      {
        v11 = v3;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B519C;
    block[3] = &unk_1001758F8;
    v17 = v11;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    v15 = v11;
    dispatch_async(v12, block);
  }
}

void sub_1000B519C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100102C58(v2, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v12 = [*(a1 + 40) errors];
    [v12 addObject:*(a1 + 32)];

    [*(a1 + 40) persist];
  }

  v13 = [*(a1 + 48) delegate];
  [v13 transactionDidComplete:*(a1 + 48)];
}

void sub_1000B5270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRequestMigration: sentBlock called", v7, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B5324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRequestMigration: We are done with error %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      v8 = [v3 domain];
      v9 = [v8 isEqual:@"com.apple.nanoregistry.NRRemoteObjectCloud"];

      if (v9)
      {
        v20 = NSLocalizedDescriptionKey;
        v21 = @"message send failure";
        v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionRequestMigration" code:1 userInfo:v10];
      }

      else
      {
        v11 = v3;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5550;
    block[3] = &unk_1001758F8;
    v17 = v11;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    v15 = v11;
    dispatch_async(v12, block);
  }
}

void sub_1000B5550(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100102C58(v2, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v12 = [*(a1 + 40) errors];
    [v12 addObject:*(a1 + 32)];

    [*(a1 + 40) persist];
  }

  v13 = [*(a1 + 48) delegate];
  [v13 transactionDidComplete:*(a1 + 48)];
}

void sub_1000B5624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRequestMigration: sentBlock called", v7, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B56D8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000B57B8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000B6134(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) discoverer:*(*(a1 + 40) + 32) deviceDidBecomeProximate:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000B622C(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = sub_1000034AC();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = sub_1000034AC();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v8 name];
            v13 = [v8 uuid];
            v14 = [v13 UUIDString];
            *buf = v15;
            v21 = v12;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPBulkCharacteristicReaderWriter: Forcing read for device %@ %@", buf, 0x16u);
          }
        }

        [*(a1 + 40) discoverer:*(*(a1 + 40) + 32) deviceDidBecomeProximate:{v8, v15, v16}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

void sub_1000B6A54(uint64_t a1)
{
  [*(a1 + 32) setWriter:0];
  v2 = [*(a1 + 32) reader];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) writer];

    if (!v3)
    {
      v4 = *(a1 + 48);
      v5 = *(*(a1 + 40) + 16);

      [v5 removeObjectForKey:v4];
    }
  }
}

uint64_t sub_1000B799C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NRPBTermsEvent);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBTermsEventReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000B7D14(id a1)
{
  v1 = objc_alloc_init(NRSystemProperties);
  v2 = qword_1001B3A30;
  qword_1001B3A30 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B8060(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  v6 = [v3 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v7 = [v6 value];

  if (v5 && ([v7 BOOLValue] & 1) == 0)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000B81A8;
    v13 = &unk_100175598;
    v14 = v5;
    v15 = v8;
    v9 = v8;
    dispatch_async(v9, &v10);
  }

  [*(a1 + 40) markCompleted];
}

void sub_1000B81A8(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingSetupCompletedForPairedDevice %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  IDSLocalPairingSetupCompletedForPairedDevice();
}

void sub_1000B82EC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUIDString];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingSetupCompletedForPairedDevice %@ completed", &v6, 0xCu);
    }
  }
}

void sub_1000B89DC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 88);
    v4 = *(*(a1 + 32) + 96);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_opt_new();
    }

    v12 = v6;
    v13 = [[IDSLocalPairingAddPairedDeviceInfo alloc] initWithCBUUID:v3 pairingProtocolVersion:0 BTOutOfBandKey:v6];
    v14 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8C84;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 32);
    v15 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v16 = [*(a1 + 32) queue];
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);

    v18 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v17, v15);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B8D98;
    v23[3] = &unk_1001783B8;
    v24 = v3;
    v25 = v5;
    v26 = v17;
    v27 = v13;
    v28 = *(a1 + 32);
    v19 = v13;
    v20 = v17;
    v21 = v5;
    v22 = v3;
    dispatch_async(v14, v23);
  }

  else
  {
    v7 = nrGetPairingError();
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    *(v8 + 64) = v7;

    v10 = *(a1 + 32);
    v11 = v10[8];

    [v10 setAvailability:2 withError:v11];
  }
}

void sub_1000B8C84(uint64_t a1)
{
  v2 = sub_1000034AC();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000034AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pipe assumed available after a 3 second wait", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B8D88;
  v6[3] = &unk_100175660;
  v6[4] = *(a1 + 32);
  [WeakRetained initializeAllIDSChannelsBlock:v6];
}

void sub_1000B8D98(uint64_t a1)
{
  v2 = sub_1000034AC();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000034AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "PRESENT";
      v6 = *(a1 + 32);
      if (!*(a1 + 40))
      {
        v5 = "ABSENT";
      }

      *buf = 138412546;
      v12 = v6;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDS IDSLocalPairingAddPairedDeviceWithInfo %@ key=%s", buf, 0x16u);
    }
  }

  dispatch_resume(*(a1 + 48));
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  v8 = [*(a1 + 64) queue];
  IDSLocalPairingAddPairedDeviceWithInfo();
}

void sub_1000B8F18(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 88);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDS IDSLocalPairingAddPairedDeviceWithInfo %@ completed with error %@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v9 + 64), a2);
    [*(a1 + 32) setAvailability:2 withError:v4];
    dispatch_source_cancel(*(a1 + 40));
  }

  else
  {
    *(v9 + 56) = 1;
  }
}

void sub_1000BA2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000BA304(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pairingCompleted];
}

void sub_1000BA348(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000BA43C(id a1, NSData *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request to push from bluetooth characteristic with data: %@", &v15, 0xCu);
    }
  }

  v9 = [@"push" dataUsingEncoding:4];
  v10 = [(NSData *)v4 isEqualToData:v9];

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending push notification to Setup", &v15, 2u);
      }
    }

    notify_post([NRWatchSetupPushDarwinNotification UTF8String]);
  }

  else if (v12)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unknown push contents, NOT sending push notification to Setup", &v15, 2u);
    }
  }

  v5[2](v5, v10);
}

void sub_1000BA630(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _getPairingExtendedMetadata];
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request for pairing extended metadata %@", &v9, 0xCu);
    }
  }

  v3[2](v3, v5);
}

void sub_1000BA744(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 107) = 1;
  [*(a1 + 32) setNrDeviceUUID:a2];
  v3 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA864;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);

  if (*(*(a1 + 32) + 160))
  {
    v4 = +[EPFactory queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000BA86C;
    v5[3] = &unk_100175660;
    v5[4] = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void sub_1000BA86C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 160) displayableDevices];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) discoverer:*(*(a1 + 32) + 160) deviceDidBecomeDisplayable:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1000BA97C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000BAC38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = sub_1000034AC();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = sub_1000034AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100102E50(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if ([*(*(a1 + 32) + 208) count] && (objc_msgSend(*(a1 + 32), "isBluetoothPairComplete") & 1) == 0)
  {
    v14 = sub_1000034AC();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000034AC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "In the middle of pairing. Will cancel after next failure.", v17, 2u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setPairingError];
    [*(a1 + 32) setPairingMode:5];
  }
}

void sub_1000BC0A8(uint64_t a1)
{
  if (([*(a1 + 32) hasStartedPairing] & 1) == 0)
  {
    v2 = [*(a1 + 32) pairingStrategy];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v2 == 1)
    {
      v7 = @"bluetoothTimeout";
      v8 = &off_100187868;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      v6 = [v3 newPairerWithDelegate:v4 withParameters:v5];

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = [*(a1 + 40) newPairerWithDelegate:*(a1 + 32)];
      if (!v6)
      {
LABEL_7:

        return;
      }
    }

    [*(*(a1 + 32) + 208) addObject:v6];
    [*(*(a1 + 32) + 216) addObject:*(a1 + 40)];
    [*(a1 + 32) update];
    goto LABEL_7;
  }
}

id sub_1000BC1B8(uint64_t a1)
{
  result = [*(a1 + 32) pairingStyle];
  if (result != 2)
  {
    v3 = *(a1 + 32);

    return [v3 sendBeginningToPairNotification];
  }

  return result;
}

void sub_1000BC208(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) pairingStrategy]);
    [*(*(a1 + 40) + 80) setObject:v6 forKeyedSubscript:*(a1 + 48)];
LABEL_6:

    goto LABEL_7;
  }

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100102F0C(a1, v3, v6);
    }

    goto LABEL_6;
  }

LABEL_7:
  (*(*(a1 + 56) + 16))();
}

void sub_1000BCE68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) nrDeviceUUID];
  [v2 sendXPCBTPairRequestMessage:v3 withCompletion:0];

  v4 = *(a1 + 32);
  if (!v4[4])
  {
    v5 = +[EPFactory queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BCFE8;
    v13[3] = &unk_100175660;
    v13[4] = *(a1 + 32);
    v6 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.ExtensiblePair" delay:1 gracePeriod:v5 waking:v13 handlerQueue:80.0 handlerBlock:0.0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v4 = *(a1 + 32);
  }

  v9 = [v4 delegate];
  v10 = [*(a1 + 40) device];
  v11 = [*(a1 + 32) nrDeviceUUID];
  [v9 updateNRMutableDeviceFromEPDevice:v10 withNRUUID:v11 withBlock:0];

  v12 = *(a1 + 32);
  if ((*(v12 + 17) & 1) == 0)
  {
    *(v12 + 17) = 1;
  }
}

void sub_1000BD83C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = sub_1000034AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Ghost device UUID %@ matches paired NR device %@", buf, 0x16u);
      }
    }

    v8 = [*(a1 + 40) delegate];
    LOBYTE(v9) = 0;
    [v8 unpairDeviceWithPairingID:v3 obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanFalse pairingReport:0 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v9];
  }
}

void sub_1000BD96C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  [v4 initializeAllIDSChannelsBlock:0];

  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  *(v5 + 192) = 0;

  if (a2)
  {
    v7 = nrGetPairingError();
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 pairingReport];
    [v9 setOriginalError:v7];

    v10 = *(a1 + 32);

    [v10 setPairingMode:5];
  }

  else
  {
    v11 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BDAA8;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }
}

void sub_1000BDAA8(uint64_t a1)
{
  v2 = sub_1000034AC();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000034AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDS IDSLocalPairingConnectPairedDevice %@", buf, 0xCu);
    }
  }

  v6 = *(*(a1 + 32) + 24);
  v7 = +[EPFactory queue];
  IDSLocalPairingConnectPairedDevice();
}

void sub_1000BDBF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000034AC();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000034AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 24);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS IDSLocalPairingConnectPairedDevice %@ completed with error %@", &v11, 0x16u);
    }
  }

  if (v3)
  {
    v8 = nrGetPairingError();
    v9 = [*(a1 + 32) delegate];
    v10 = [v9 pairingReport];
    [v10 setOriginalError:v8];

    [*(a1 + 32) setPairingMode:5];
  }
}

void sub_1000BDD38(id *a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BDEB4;
    block[3] = &unk_100177398;
    v4 = a1[4];
    v5 = a1[5];
    *&v6 = a1[6];
    *(&v6 + 1) = a1[7];
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v13 = v7;
    v14 = v6;
    v15 = a1[8];
    dispatch_async(v3, block);
  }

  else
  {
    v8 = nrGetPairingError();
    v9 = [a1[7] delegate];
    v10 = [v9 pairingReport];
    [v10 setOriginalError:v8];

    v11 = a1[7];

    [v11 setPairingMode:5];
  }
}

void sub_1000BDEB4(uint64_t a1)
{
  v2 = sub_1000034AC();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000034AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUIDString];
      if (*(a1 + 40))
      {
        v6 = "PRESENT";
      }

      else
      {
        v6 = "ABSENT";
      }

      v7 = [*(a1 + 48) bluetoothMACAddress];
      *buf = 138412802;
      if (v7)
      {
        v8 = "PRESENT";
      }

      else
      {
        v8 = "ABSENT";
      }

      v15 = v5;
      v16 = 2080;
      v17 = v6;
      v18 = 2080;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDS IDSLocalPairingAddPairedDeviceWithInfo %@ key=%s btAddr=%s", buf, 0x20u);
    }
  }

  v9 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v10 = +[EPFactory queue];
  IDSLocalPairingAddPairedDeviceWithInfo();
}

void sub_1000BE084(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000034AC();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000034AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[4] UUIDString];
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDS IDSLocalPairingAddPairedDeviceWithInfo %@ completed with error %@", buf, 0x16u);
    }
  }

  if (v3)
  {
    v8 = nrGetPairingError();
    v9 = [a1[5] delegate];
    v10 = [v9 pairingReport];
    [v10 setOriginalError:v8];

    [a1[5] setPairingMode:5];
  }

  else
  {
    v11 = [a1[5] delegate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BE258;
    v13[3] = &unk_100175688;
    v12 = a1[6];
    v14 = 0;
    v15 = v12;
    [v11 initializeAllIDSChannelsBlock:v13];
  }
}

void sub_1000BE900(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000BEC70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v6 = v4;
      v3 = v3[2]();
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000BECD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (v4)
    {
      v5 = [NRPBMigrationSetKeyResponse alloc];
      v6 = [v3 protobuf];
      v7 = [v6 data];
      v8 = [(NRPBMigrationSetKeyResponse *)v5 initWithData:v7];

      v9 = *(a1 + 32);
      v10 = sub_1001036D0(v8);
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  else if (v4)
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"IDS response failure";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.nanoregistry.NRRemoteObjectClassA" code:1 userInfo:v11];
    (*(v4 + 16))(v4, v12, 0);
  }
}

uint64_t sub_1000BEFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"rollbackDiff"];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 copy];
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"transactionDiff"];
  if (!v4)
  {
    v4 = [NRMutableDeviceCollection diffFrom:v3 to:v5];
    v7 = [[EPSagaOperandDiff alloc] initWithDiff:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) operands];
      [v9 setObject:v8 forKeyedSubscript:@"calculatedRollbackDiff"];
    }
  }

  v10 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v11 = [*(a1 + 32) operands];
  [v11 setObject:v10 forKeyedSubscript:@"transactionCompleted"];

  v12 = [v3 applyDiff:v6];
  v13 = [*(a1 + 32) queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BF194;
  v17[3] = &unk_100175598;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v18 = v14;
  v19 = v15;
  dispatch_async(v13, v17);

  return 0;
}

void sub_1000BF194(uint64_t a1)
{
  [*(a1 + 32) persist];
  v2 = [*(a1 + 40) delegate];
  [v2 transactionDidComplete:*(a1 + 40)];
}

void sub_1000BF1F0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000BF3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) operands];
  [v4 removeObjectForKey:@"calculatedRollbackDiff"];

  v5 = [*(a1 + 32) operands];
  [v5 removeObjectForKey:@"transactionCompleted"];

  v6 = [v3 applyDiff:*(a1 + 40)];
  v7 = [*(a1 + 32) queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BF514;
  v11[3] = &unk_100175598;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  dispatch_async(v7, v11);

  return 0;
}

void sub_1000BF514(uint64_t a1)
{
  [*(a1 + 32) persist];
  v2 = [*(a1 + 40) delegate];
  [v2 transactionDidComplete:*(a1 + 40)];
}

void sub_1000BF570(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000BF934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000BF954(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"failed";
      if (a2)
      {
        v7 = @"Success";
      }

      *buf = 138412546;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Sent ping (%@)", buf, 0x16u);
    }
  }

  if (WeakRetained && ([WeakRetained transactionCompleted] & 1) == 0)
  {
    v8 = [WeakRetained routingSlipEntry];
    v9 = [v8 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BFAEC;
    v10[3] = &unk_100176198;
    v11 = WeakRetained;
    v12 = a2;
    dispatch_async(v9, v10);
  }
}

id sub_1000BFAEC(uint64_t a1)
{
  [*(a1 + 32) _invalidateTimer];
  if (*(a1 + 40))
  {
    v2 = 1;
  }

  else
  {
    [*(a1 + 32) _recordIDSError];
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 32);

  return [v3 _transactionDidCompleteWithSuccess:v2 & 1];
}

id sub_1000BFB48(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[17] == 1)
  {
    return [v1 _addTimeout];
  }

  else
  {
    return [v1 _transactionDidCompleteWithSuccess:1];
  }
}

void sub_1000BFE20(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSendPing: Timeout triggered", v9, 2u);
    }
  }

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _recoredTimeoutError];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _transactionDidCompleteWithSuccess:0];
}

uint64_t sub_1000C1008(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B3A40;
  qword_1001B3A40 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000C13D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_pairing_reporter_log();
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001030E8(v4, v8, v9, v10, v11, v12, v13, v14);
      }

LABEL_8:
    }
  }

  else
  {
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v8 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17[0] = 67109120;
        v17[1] = v16;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Capped off RTC pairing metric with pairing failure reason %u and submitted the metric", v17, 8u);
      }

      goto LABEL_8;
    }
  }
}

void sub_1000C14EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [NSMutableDictionary dictionaryWithContentsOfURL:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  if (WeakRetained)
  {
    v7 = [v6 objectForKey:kNRSubreason];

    if (!v7)
    {
      v8 = [NSNumber numberWithInt:*(a1 + 56)];
      [WeakRetained setReportSubreason:*(a1 + 56)];
      v9 = BRPairingTimeEventToString();
      [v6 setObject:v8 forKey:v9];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v10 = [WeakRetained gizmoBuild];

    if (v10)
    {
      v11 = [WeakRetained gizmoBuild];
      v12 = [NSString stringWithFormat:@"%@", v11];

      v13 = BRPairingTimeEventToString();
      [v6 setObject:v12 forKey:v13];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v14 = [WeakRetained gizmoHW];

    if (v14)
    {
      v15 = [WeakRetained gizmoHW];
      v16 = [NSString stringWithFormat:@"%@", v15];

      v17 = BRPairingTimeEventToString();
      [v6 setObject:v16 forKey:v17];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v18 = *(a1 + 32);
      v29 = 0;
      [v6 writeToURL:v18 error:&v29];
      v19 = v29;
      if (v19)
      {
        v20 = nr_pairing_reporter_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

        if (v21)
        {
          v22 = nr_pairing_reporter_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100103154(v19, v22, v23, v24, v25, v26, v27, v28);
          }
        }
      }
    }
  }
}

void sub_1000C1B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1B78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C1B90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [NSMutableDictionary dictionaryWithContentsOfURL:*(a1 + 32)];
  v4 = v3;
  if (!v3)
  {
    v4 = objc_opt_new();
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  if (!v3)
  {
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5 && ([v5 objectForKey:kReportSubmitted], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = nr_pairing_reporter_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Report already submitted, we shouldn't be submitting this metric again, so we won't, but we should tell Bridge to archive", buf, 2u);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C20A0;
    block[3] = &unk_100175D58;
    v24 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
    v10 = v24;
  }

  else
  {
    if (WeakRetained)
    {
      if ([WeakRetained reportSubreason])
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [WeakRetained reportSubreason]);
        v13 = BRPairingTimeEventToString();
        [v11 setObject:v12 forKey:v13];

        [*(*(*(a1 + 56) + 8) + 40) writeToURL:*(a1 + 32) atomically:1];
      }

      v14 = [WeakRetained lastControllerPushed:*(a1 + 40)];
      if (v14)
      {
        v15 = *(*(*(a1 + 56) + 8) + 40);
        v16 = BRPairingTimeEventToString();
        [v15 setObject:v14 forKey:v16];
      }
    }

    v17 = [*(a1 + 40) objectForKeyedSubscript:kPairingBeginsKey];
    v18 = [v17 integerValue];

    v19 = [[BRRTCPairingMetric alloc] initWithPairingBeginsType:v18];
    v20 = *(a1 + 40);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000C1FBC;
    v30[3] = &unk_1001792E8;
    v10 = v19;
    v31 = v10;
    [v20 enumerateKeysAndObjectsUsingBlock:v30];
    v21 = *(*(*(a1 + 56) + 8) + 40);
    if (v21)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000C2078;
      v28[3] = &unk_1001792E8;
      v29 = v10;
      [v21 enumerateKeysAndObjectsUsingBlock:v28];
    }

    v22 = [BRReportManager reporterWithCatergory:1000];
    [v22 reportRTCMetric:v10];
    [*(*(*(a1 + 56) + 8) + 40) setObject:&__kCFBooleanTrue forKey:kReportSubmitted];
    [*(*(*(a1 + 56) + 8) + 40) writeToURL:*(a1 + 32) atomically:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000C2088;
    v26[3] = &unk_100175D58;
    v27 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, v26);
  }
}

void sub_1000C1FBC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (kNRSubreason == v8)
  {
    [*(a1 + 32) setSubreasonCode:v5];
  }

  else
  {
    v7 = *(a1 + 32);
    if (kPairingBeginsKey == v8)
    {
      [v7 setPairingBeginsType:{objc_msgSend(v5, "integerValue")}];
    }

    else
    {
      [v7 addPairingTimeEventToMetricDict:v8 withValue:v5];
    }
  }
}

void sub_1000C2218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C223C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 containsString:*(a1 + 32)])
  {
    v6 = [v13 substringFromIndex:{objc_msgSend(*(a1 + 32), "length")}];
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue]);

    LODWORD(v6) = [v7 intValue];
    if (v6 >= [*(*(*(a1 + 48) + 8) + 40) intValue])
    {
      v8 = @"Pushed%@";
LABEL_7:
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
      v10 = [NSString stringWithFormat:v8, v5];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    if (![v13 containsString:*(a1 + 40)])
    {
      goto LABEL_9;
    }

    v9 = [v13 substringFromIndex:{objc_msgSend(*(a1 + 40), "length")}];
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);

    LODWORD(v9) = [v7 intValue];
    if (v9 > [*(*(*(a1 + 48) + 8) + 40) intValue])
    {
      v8 = @"Hold%@";
      goto LABEL_7;
    }
  }

LABEL_9:
}

uint64_t sub_1000C2704(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 84))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 82);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

uint64_t sub_1000C27D8(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 84))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 80);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void sub_1000C2CD8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteObject:*(a1 + 32) isNearby:*(a1 + 40)];
}

void sub_1000C2D40(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteObject:*(a1 + 32) isConnected:*(a1 + 40)];
}

uint64_t sub_1000C2E98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C2F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 64);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if ([v3 isEqual:?])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  v5 = [v2 copy];
  v6 = *(a1 + 40);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  v8 = *(a1 + 40);
  v9 = *(v8 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3014;
  block[3] = &unk_100175660;
  block[4] = v8;
  dispatch_async(v9, block);
}

void sub_1000C3014(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 remoteObjectDevicesChanged:*(a1 + 32)];
  }
}

uint64_t sub_1000C3124(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 87) != v2)
  {
    *(v1 + 87) = v2;
  }

  return result;
}

id sub_1000C31B8(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 32);
  if ((*(v2 + 84) & 1) == 0)
  {
    *(v2 + 84) = 1;
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disconnected=1, for %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C33F8;
    block[3] = &unk_100175660;
    block[4] = v7;
    dispatch_async(v8, block);
    if ((*(a1 + 40) & 1) == 0)
    {
LABEL_8:
      v9 = *(a1 + 32);
      if (*(v9 + 84) == 1)
      {
        *(v9 + 84) = 0;
        v10 = nr_daemon_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (v11)
        {
          v12 = nr_daemon_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(a1 + 32) + 32);
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Disconnected=0, for %@", buf, 0xCu);
          }
        }

        v14 = *(a1 + 32);
        v15 = *(v14 + 40);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000C3510;
        v17[3] = &unk_100175660;
        v17[4] = v14;
        dispatch_async(v15, v17);
      }
    }
  }

  return [*(a1 + 32) _generateNearbyConnectedDelegateCalls];
}

id sub_1000C33F8(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "firing event after disconnecting %@", &v9, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v6 _rawDefaultPairedDevice];
  [v6 _fireIDSAvailableDelegateIfNeededWithIDSDevice:v7];

  [*(a1 + 32) service:*(*(a1 + 32) + 128) linkedDevicesChanged:0];
  return [*(a1 + 32) service:*(*(a1 + 32) + 128) connectedDevicesChanged:0];
}

void sub_1000C3510(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 32);
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "firing event after connecting %@", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v6 _rawDefaultPairedDevice];
  [v6 _fireIDSAvailableDelegateIfNeededWithIDSDevice:v7];

  v8 = [*(a1 + 32) defaultPairedDevice];
  if ([v8 isNearby])
  {
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  [*(a1 + 32) service:*(*(a1 + 32) + 128) linkedDevicesChanged:v9];
  if ([v8 isConnected])
  {
    v11 = v8;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  [*(a1 + 32) service:*(*(a1 + 32) + 128) connectedDevicesChanged:v10];
}

_BYTE *sub_1000C37E4(uint64_t a1)
{
  *(*(a1 + 32) + 85) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[85] == 1)
  {
    return [result _resumeMessageDeliveryQueue];
  }

  return result;
}

id sub_1000C39A4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  [*(a1 + 32) _setIDSNearby:{objc_msgSend(*(a1 + 40), "isNearby")}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) isConnected];

  return [v2 _setIDSConnected:v3];
}

id sub_1000C3B40(uint64_t a1)
{
  [*(*(a1 + 32) + 112) addPointer:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 112);

  return [v2 compact];
}

uint64_t sub_1000C3C1C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 112) count];
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    while (1)
    {
      result = [*(*(a1 + 32) + 112) pointerAtIndex:v4];
      if (result == *(a1 + 40))
      {
        break;
      }

      if (v3 == ++v4)
      {
        return result;
      }
    }

    v5 = *(*(a1 + 32) + 112);

    return [v5 removePointerAtIndex:v4];
  }

  return result;
}

uint64_t sub_1000C3DA4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

_BYTE *sub_1000C4490(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[85] & 1) == 0)
  {
    return [result _suspendMessageDeliveryQueue];
  }

  return result;
}

void sub_1000C44A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[16];
  v4 = [v3 nr_mineTinkerDevices];
  [v2 service:v3 devicesChanged:v4];

  if ([*(a1 + 40) isNearby])
  {
    v8 = *(a1 + 40);
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  [*(a1 + 32) service:*(*(a1 + 32) + 128) linkedDevicesChanged:v5];
  if ([*(a1 + 40) isConnected])
  {
    v7 = *(a1 + 40);
    v6 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  [*(a1 + 32) service:*(*(a1 + 32) + 128) connectedDevicesChanged:v6];
}

void sub_1000C4814(uint64_t a1)
{
  [*(*(a1 + 32) + 128) removeDelegate:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 8) removeAllObjects];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v4 = *(*(a1 + 32) + 24);
  v5 = [v4 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(*(&v62 + 1) + 8 * i)];
        [v9 invalidate];
      }

      v6 = [v4 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  v10 = *(a1 + 32);
  if (*(v10 + 136))
  {
    [v10 _resumeMessageDeliveryQueue];
    v10 = *(a1 + 32);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = *(v10 + 24);
  v12 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v59;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(*(&v58 + 1) + 8 * j)];
        [v16 invalidate];
      }

      v13 = [v11 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v13);
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  *(v17 + 24) = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 72);
  *(v19 + 72) = 0;

  v21 = *(a1 + 32);
  if (*(v21 + 120))
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v22 = [*(v21 + 8) allKeys];
    v23 = [v22 copy];

    v24 = [v23 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v55;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v55 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v54 + 1) + 8 * k);
          v29 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v28];
          if (v29)
          {
            [*(*(a1 + 32) + 8) removeObjectForKey:v28];
            v30 = *(*(a1 + 32) + 120);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000C4D04;
            block[3] = &unk_100175D58;
            v53 = v29;
            dispatch_async(v30, block);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v25);
    }

    v31 = *(a1 + 32);
    v32 = *(v31 + 8);
    *(v31 + 8) = 0;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = [*(*(a1 + 32) + 16) allKeys];
    v34 = [v33 copy];

    v35 = [v34 countByEnumeratingWithState:&v48 objects:v66 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v49;
      do
      {
        for (m = 0; m != v36; m = m + 1)
        {
          if (*v49 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(*(&v48 + 1) + 8 * m)];
          v40 = v39;
          if (v39)
          {
            v41 = *(*(a1 + 32) + 16);
            v42 = objc_retainBlock(v39);
            [v41 removeObjectForKey:v42];

            v43 = *(*(a1 + 32) + 120);
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_1000C4DDC;
            v46[3] = &unk_100175D58;
            v47 = v40;
            dispatch_async(v43, v46);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v48 objects:v66 count:16];
      }

      while (v36);
    }

    v44 = *(a1 + 32);
    v45 = *(v44 + 16);
    *(v44 + 16) = 0;
  }
}

void sub_1000C4D04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = @"NRRemoteObject invalidated";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.nanoregistryd" code:567 userInfo:v2];
  (*(v1 + 16))(v1, v3);
}

void sub_1000C55F8(void *a1)
{
  v2 = a1[6];
  v3 = [NRRemoteObjectMessage alloc];
  v4 = a1[4];
  v5 = *(a1[5] + 128);
  v10 = [v4 context];
  v6 = [v10 fromID];
  v7 = [v5 linkedDeviceForFromID:v6 withRelationship:3];
  v8 = [v7 nsuuid];
  v9 = [(NRRemoteObjectMessage *)v3 initWithProtobuf:v4 andIDSBTUUID:v8];
  (*(v2 + 16))(v2, v9);
}

void sub_1000C56D8(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(message processing started)", buf, 2u);
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) selector];
  v8 = [NRRemoteObjectMessage alloc];
  v9 = *(a1 + 48);
  v10 = *(*(a1 + 32) + 128);
  v11 = [v9 context];
  v12 = [v11 fromID];
  v13 = [v10 linkedDeviceForFromID:v12 withRelationship:3];
  v14 = [v13 nsuuid];
  v15 = [(NRRemoteObjectMessage *)v8 initWithProtobuf:v9 andIDSBTUUID:v14];
  v5(v6, v7, v15);

  v16 = nr_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v17 = nr_daemon_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(message processing completed)", v18, 2u);
    }
  }
}

id sub_1000C62D8(uint64_t a1)
{
  v1 = *(a1 + 96);
  LOBYTE(v3) = *(a1 + 122);
  return [*(a1 + 32) _queueSendCloudMessage:*(a1 + 40) type:*(a1 + 120) responseToRequest:*(a1 + 48) withTimeout:*(a1 + 56) withResponseTimeout:*(a1 + 64) withDescription:*(a1 + 72) onlyOneFor:*(a1 + 80) priority:*(a1 + 112) toDestinations:*(a1 + 88) skipLookup:v3 didSend:v1 andResponse:*(a1 + 104)];
}

void sub_1000C63C4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  [*(*(a1 + 40) + 24) removeObjectForKey:*(a1 + 32)];
  v6 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 32)];
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 40) + 120);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C6530;
    block[3] = &unk_100175D58;
    v10 = v6;
    dispatch_async(v8, block);
    [*(*(a1 + 40) + 16) removeObjectForKey:*(a1 + 32)];
  }
}

void sub_1000C83D4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) trafficClasses];
      v6 = [v5 allObjects];
      v7 = [v6 componentsJoinedByString:@" "];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setting traffic classes %{public}@", &v11, 0xCu);
    }
  }

  v8 = [*(a1 + 32) trafficClasses];
  v9 = [*(a1 + 40) mutableIDSDevice];
  v10 = *(*(a1 + 48) + 40);
  IDSLocalPairingSetAllowedTrafficClassifiersForDevice();
}

void sub_1000C8528(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSError *)v2 nr_safeDescription];
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingSetAllowedTrafficClassifiersForDevice Failed %{public}@", &v7, 0xCu);
      }
    }
  }
}

void sub_1000C8614(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dropping unmatching traffic", v7, 2u);
    }
  }

  v5 = [*(a1 + 32) mutableIDSDevice];
  v6 = *(*(a1 + 40) + 40);
  IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier();
}

void sub_1000C86D0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSError *)v2 nr_safeDescription];
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier Failed %{public}@", &v7, 0xCu);
      }
    }
  }
}

void sub_1000C9144(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteObjectIDSServiceUnavailable:*(a1 + 32)];
}

void sub_1000C91A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteObjectIDSServiceAvailable:*(a1 + 32) withIDSDevice:*(a1 + 40)];
}

void sub_1000C9208(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteObjectIDSServiceUnavailable:*(a1 + 32)];
}

void sub_1000C9D18(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[NRImmutableIDSDevice alloc] initWithIDSDevice:*(a1 + 40)];
  [v4 remoteObject:v2 defaultPairedDeviceDidChange:v3];
}

void sub_1000C9D94(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [[NRImmutableIDSDevice alloc] initWithIDSDevice:a1[6]];
  [v1 remoteObject:v2 defaultPairedDeviceDidChange:v3];
}

void sub_1000C9E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NRImmutableIDSDevice alloc] initWithIDSDevice:*(a1 + 40)];
  [v1 _fireIDSAvailableDelegateIfNeededWithIDSDevice:v2];
}

void sub_1000C9F44(id a1)
{
  v1 = dispatch_queue_create("com.apple.NanoRegistry.trafficClassQueue", 0);
  v2 = qword_1001B3A58;
  qword_1001B3A58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000CA1CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000CA3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v11 nr_safeDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100103490();
      }
    }

    objc_end_catch();
    JUMPOUT(0x1000CA360);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000CAA58(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000CAA80(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_1000CABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CABE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 transactionDidComplete:WeakRetained];
}

uint64_t sub_1000CAD8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000CC3D4(id a1)
{
  v1 = objc_alloc_init(EPScalablePipeManagerManagerFactory);
  v2 = qword_1001B3A60;
  qword_1001B3A60 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000CC760(uint64_t a1)
{
  objc_storeStrong(&qword_1001B3A70, *(a1 + 32));
  v2 = [objc_alloc(*(a1 + 40)) initBase];
  v3 = qword_1001B3A80;
  qword_1001B3A80 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_1000CD3B4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000CDA50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = sub_1000A98C0();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = sub_1000A98C0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [EPResourceManager stringForResourceAvailability:*(*(a1 + 32) + 16)];
          v12 = *(a1 + 32);
          v13 = *(v12 + 24);
          v14 = objc_loadWeakRetained((v12 + 32));
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = objc_loadWeakRetained((*(a1 + 32) + 32));
          v19 = 138413314;
          v20 = v10;
          v21 = 2112;
          v22 = v11;
          v23 = 2112;
          v24 = v13;
          v25 = 2112;
          v26 = v16;
          v27 = 2048;
          v28 = v17;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resource %@ calling resourceAvailabilityDidChange: with %@[%@] on %@[%p]", &v19, 0x34u);
        }
      }

      v18 = objc_loadWeakRetained((*(a1 + 32) + 32));
      [v18 resourceAvailabilityDidChange:*(a1 + 32)];
    }
  }
}

id sub_1000CE1D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    while ([*(*(a1 + 32) + 16) pointerAtIndex:v4] != *(a1 + 40))
    {
      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    [*(*(a1 + 32) + 16) removePointerAtIndex:v4];
  }

LABEL_7:
  [*(a1 + 32) updateNeedsResource];
  v5 = *(a1 + 32);

  return [v5 resourceWasRemoved];
}

uint64_t sub_1000CEAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412546;
      v37 = v7;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating versions: %@ for ID: %@", buf, 0x16u);
    }
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = [NRDevicePropertyDiffType alloc];
  v11 = [NRDevicePropertyDiff alloc];
  v12 = [NSNumber numberWithInteger:sub_100100A74(*(a1 + 32))];
  v13 = [v11 initWithValue:v12];
  v14 = [v10 initWithDiff:v13 andChangeType:1];
  [v9 setObject:v14 forKeyedSubscript:NRDevicePropertyMinPairingCompatibilityVersion];

  v15 = [NRDevicePropertyDiffType alloc];
  v16 = [NRDevicePropertyDiff alloc];
  v17 = [NSNumber numberWithInteger:sub_100100A60(*(a1 + 32))];
  v18 = [v16 initWithValue:v17];
  v19 = [v15 initWithDiff:v18 andChangeType:1];
  [v9 setObject:v19 forKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];

  v20 = [NRDevicePropertyDiffType alloc];
  v21 = [NRDevicePropertyDiff alloc];
  v22 = sub_100100A88(*(a1 + 32));
  v23 = [v21 initWithValue:v22];
  v24 = [v20 initWithDiff:v23 andChangeType:1];
  [v9 setObject:v24 forKeyedSubscript:NRDevicePropertySystemBuildVersion];

  v25 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v9];
  v26 = [[NRDeviceDiffType alloc] initWithDiff:v25 andChangeType:1];
  if (*(a1 + 40))
  {
    v27 = [NRDeviceCollectionDiff alloc];
    v34 = *(a1 + 40);
    v35 = v26;
    v28 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v29 = [v27 initWithDeviceCollectionDiffDeviceDiffs:v28];

    v30 = [v3 applyDiff:v29];
  }

  else
  {
    v32 = nr_daemon_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (!v33)
    {
      goto LABEL_8;
    }

    v29 = nr_daemon_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No Device ID to apply diff", buf, 2u);
    }
  }

LABEL_8:
  return 0;
}

void sub_1000CF200(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendVersionRequestToCompanion send block called with error: %@", &v6, 0xCu);
    }
  }
}

void sub_1000CF2E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendVersionRequestToCompanion send block called with error: %@", &v6, 0xCu);
    }
  }
}

void sub_1000CF620(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Version message to companion completed with error: %@", &v6, 0xCu);
    }
  }
}

BOOL sub_1000CFDAC(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  if ([v3 BOOLValue])
  {
    v4 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsArchived];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

BOOL sub_1000CFE34(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsActive];
    if ([v5 BOOLValue])
    {
    }

    else
    {
      v6 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsArchived];
      v7 = [v6 BOOLValue];

      if (!v7)
      {
        v8 = 1;
        goto LABEL_6;
      }
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

void sub_1000CFEF8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "broadcastVersionChangeToDisconnectedWatches:  altAccountDevices send block called with error: %@", &v6, 0xCu);
    }
  }
}

void sub_1000CFFCC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "broadcastVersionChangeToDisconnectedWatches:  inactive devices send block called with error: %@", &v6, 0xCu);
    }
  }
}

id sub_1000D01C0(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000D0610(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [[EPRoutingSlip alloc] initWithRoutingSlipEntries:v7];
  [(EPRoutingSlip *)v8 setRoutingSlipDelegate:*(a1 + 32)];
  [(EPRoutingSlip *)v8 setPersistWhilePending:a3];
  [(EPRoutingSlip *)v8 setNotUnrollable:a4];
  v27 = v8;
  [*(a1 + 32) setChildRoutingSlip:v8];
  v9 = nr_daemon_log();
  LODWORD(a3) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (a3)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v12 = [WeakRetained shortDescription];
      v13 = [(EPRoutingSlip *)v8 identifier];
      *buf = 138543618;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Built routing slip entries for %{public}@ -> EPRoutingSlip[%{public}@]", buf, 0x16u);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = nr_daemon_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = nr_daemon_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(EPRoutingSlip *)v27 identifier];
            *buf = 138543618;
            v34 = v23;
            v35 = 2114;
            v36 = v19;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, ": EPRoutingSlip[%{public}@] -> %{public}@", buf, 0x16u);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v24 = nr_daemon_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v26 = nr_daemon_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, ": -------------", buf, 2u);
    }
  }

  [(EPRoutingSlip *)v27 resumeWithServiceRegistry:*(a1 + 40) rollback:0];
}

void sub_1000D1B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100103804(v3, v7);
      }
    }

    *(*(a1 + 32) + 16) = 0;
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully added notification request", v10, 2u);
      }
    }
  }
}

void sub_1000D20A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) || *(v2 + 16) == 1)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 16);
        *buf = 67109120;
        LODWORD(v53) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Alert being shown: %d", buf, 8u);
      }
    }

LABEL_29:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    return;
  }

  v7 = [NROSTransaction transactionWithName:@"alert"];
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  v10 = *(a1 + 40);
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = nr_daemon_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 64);
    *buf = 138412546;
    v53 = v15;
    v54 = 2112;
    v55 = v14;
    v16 = "Displaying alert %@ with string %@";
    v17 = v13;
    v18 = 22;
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = nr_daemon_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v53 = v19;
    v16 = "Displaying alert %@";
    v17 = v13;
    v18 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }

LABEL_15:

LABEL_16:
  v20 = nr_daemon_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = nr_daemon_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 40))
      {
        v23 = "YES";
      }

      else
      {
        v23 = "NO";
      }

      *buf = 136315138;
      v53 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Displaying alert using UNUserNotificationCenter: %s", buf, 0xCu);
    }
  }

  v24 = *(a1 + 32);
  if (*(v24 + 40))
  {
    v25 = nr_daemon_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*(a1 + 32) + 64);
        *buf = 138412290;
        v53 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Setting UNUserNotificationCenter delegate to %@", buf, 0xCu);
      }
    }

    [*(*(a1 + 32) + 40) setDelegate:?];
    [*(a1 + 32) presentUINotifictaionWithString:*(a1 + 40)];
    goto LABEL_29;
  }

  error = 0;
  v58[0] = kCFUserNotificationAlertHeaderKey;
  v29 = [v24 string:0 localized:*(v24 + 32)];
  v59[0] = v29;
  v58[1] = kCFUserNotificationAlertMessageKey;
  v30 = [*(a1 + 32) string:1 localized:*(*(a1 + 32) + 32)];
  v59[1] = v30;
  v58[2] = kCFUserNotificationDefaultButtonTitleKey;
  v31 = [*(a1 + 32) string:2 localized:*(*(a1 + 32) + 32)];
  v59[2] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
  v33 = [v32 mutableCopy];

  if ([*(*(a1 + 32) + 72) count] >= 4)
  {
    v34 = [*(a1 + 32) string:3 localized:*(*(a1 + 32) + 32)];
    [v33 setObject:v34 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  if ([*(*(a1 + 32) + 72) count] >= 7)
  {
    v35 = [*(a1 + 32) string:6 localized:*(*(a1 + 32) + 32)];
    [v33 setObject:v35 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  if (*(a1 + 40))
  {
    v36 = [v33 objectForKeyedSubscript:kCFUserNotificationAlertMessageKey];
    v50 = 0;
    v37 = [NSString stringWithValidatedFormat:v36 validFormatSpecifiers:@"%@" error:&v50, *(a1 + 40)];
    v38 = v50;

    if (!v37 || v38)
    {
      v39 = nr_daemon_log();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (v40)
      {
        v41 = nr_daemon_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 40);
          *buf = 138412802;
          v53 = kCFUserNotificationAlertMessageKey;
          v54 = 2112;
          v55 = v42;
          v56 = 2112;
          v57 = v38;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to created a formatted message for %@ with string %@; error = %@", buf, 0x20u);
        }
      }
    }

    else
    {
      [v33 setObject:v37 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
    }
  }

  *(*(a1 + 32) + 24) = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 2uLL, &error, v33);
  v43 = *(a1 + 32);
  if (error)
  {
    [(CFUserNotificationRef *)v43 _dismissAlert];
    v44 = nr_daemon_log();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

    if (v45)
    {
      v46 = nr_daemon_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(*(a1 + 32) + 64);
        *buf = 138412546;
        v53 = v47;
        v54 = 1024;
        LODWORD(v55) = error;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Failed to create alert %@ error #%d", buf, 0x12u);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(*(a1 + 32) + 8) = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v43[3], sub_1000D27B8, 0);
    v48 = [NSValue valueWithPointer:*(*(a1 + 32) + 24)];
    [qword_1001B3A88 setObject:*(a1 + 32) forKeyedSubscript:v48];
    v49 = +[NSRunLoop mainRunLoop];
    CFRunLoopAddSource([v49 getCFRunLoop], *(*(a1 + 32) + 8), kCFRunLoopCommonModes);

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1000D27B8(uint64_t a1, uint64_t a2)
{
  v4 = [NSValue valueWithPointer:a1];
  v3 = [qword_1001B3A88 objectForKeyedSubscript:v4];
  [v3 alertResponseWithResponseFlags:a2];
}

void sub_1000D32B0(id a1, BSProcessHandle *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100103910(v5, v9);
      }

LABEL_8:
    }
  }

  else
  {
    v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "openApplication:withOptions:completion: finished with no error", v11, 2u);
      }

      goto LABEL_8;
    }
  }
}

void sub_1000D36D4(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100103988(v5, v8);
      }
    }
  }
}

void sub_1000D39C4(id a1)
{
  v1 = +[NRPairingDaemon sharedInstance];
  v2 = [v1 serviceRegistry];
  v3 = [v2 serviceFromClass:objc_opt_class()];

  [v3 setMigrationConsent:1 forDeviceID:0 completion:0];
}

uint64_t sub_1000D3C84(uint64_t a1)
{
  qword_1001B3A98 = [objc_alloc(*(a1 + 32)) initBase];

  return _objc_release_x1();
}

void sub_1000D3D04(id a1)
{
  v1 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.usernotifications.nanoregistryd"];
  v2 = qword_1001B3AA0;
  qword_1001B3AA0 = v1;

  v3 = qword_1001B3AA0;

  [v3 setWantsNotificationResponsesDelivered];
}

void sub_1000D462C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2 && *(a1 + 56) != [v2 enabled])
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        if (*(a1 + 56))
        {
          v8 = @"Enabling";
        }

        else
        {
          v8 = @"Disabling";
        }

        v9 = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ alert %@", &v9, 0x16u);
      }
    }

    [v3 setDevice:*(a1 + 48)];
    [v3 setEnabled:*(a1 + 56)];
  }
}

void sub_1000D4C48(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v2 presentAlertIfEnabledWithString:*(*(a1 + 32) + 32)];
}

void sub_1000D4DE4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v1 resetState];
}

void sub_1000D5030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D504C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAlertsIfNeeded];
}

void sub_1000D50F0(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1001B3A88;
  qword_1001B3A88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D5D14(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v2[2](v2, *(a1 + 40));
}

void sub_1000D5D70(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v2[2](v2, *(a1 + 40));
}

void sub_1000D7468(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1001B3AC0;
  qword_1001B3AC0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000D75B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D75CC(void *a1)
{
  v2 = *(a1[4] + 16);
  v6 = [NSValue valueWithNonretainedObject:a1[5]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000D7824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D784C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000D79C4(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = [NSValue valueWithNonretainedObject:a1[5]];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v7 = [[NRQueue alloc] initWithDispatchQueue:a1[5]];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[6] + 8) + 40);
    v11 = *(a1[4] + 16);
    v12 = [NSValue valueWithNonretainedObject:a1[5]];
    [v11 setObject:v10 forKeyedSubscript:v12];

    v13 = nr_daemon_log();
    LODWORD(v11) = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1[6] + 8) + 40);
        v16 = [v15 queue];
        v17 = 134218240;
        v18 = v15;
        v19 = 2048;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Created queue %p[%p]", &v17, 0x16u);
      }
    }
  }
}

void sub_1000D7C08(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [NSValue valueWithNonretainedObject:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

void sub_1000D805C(uint64_t a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = [*(a1 + 32) newQueueWithLabel:@"com.apple.nanoregistry.registryDaemonQueue" withAttributes:v4];
  v3 = qword_1001B3AC8;
  qword_1001B3AC8 = v2;
}

void sub_1000D80D4(uint64_t a1)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = *(a1 + 32);
  v3 = [v2 registryDaemonQueue];
  v4 = [v2 newQueueWithLabel:@"com.apple.nanoregistry.pairingxpc" withTargetQueue:v3 withAttributes:v6];
  v5 = qword_1001B3AD8;
  qword_1001B3AD8 = v4;

  [qword_1001B3AD8 suspend];
}

void sub_1000D8210(uint64_t a1)
{
  if (_NRIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"notifyActiveWatchChanges", @"com.apple.NanoRegistry", 0))
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2 = [*(a1 + 32) newQueueWithLabel:@"com.apple.nanoregistry.bulletin" withAttributes:v4];
    v3 = qword_1001B3AE8;
    qword_1001B3AE8 = v2;
  }
}

void sub_1000D835C(uint64_t a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = [*(a1 + 32) newQueueWithLabel:@"com.apple.nanoregistry.switchCompletionBlocks" withAttributes:v4];
  v3 = qword_1001B3AF8;
  qword_1001B3AF8 = v2;
}

void sub_1000D8474(uint64_t a1)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = *(a1 + 32);
  v3 = [v2 registryDaemonQueue];
  v4 = [v2 newQueueWithLabel:@"com.apple.nanoregistry.firstUnlock" withTargetQueue:v3 withAttributes:v6];
  v5 = qword_1001B3B08;
  qword_1001B3B08 = v4;
}

void sub_1000D85A8(uint64_t a1)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = *(a1 + 32);
  v3 = [v2 registryDaemonQueue];
  v4 = [v2 newQueueWithLabel:@"com.apple.nanoregistry.delayPairingRequest" withTargetQueue:v3 withAttributes:v6];
  v5 = qword_1001B3B18;
  qword_1001B3B18 = v4;
}

void sub_1000D86DC(uint64_t a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = [*(a1 + 32) newQueueWithLabel:@"com.apple.nanoregistry.assetDownloadQueue" withAttributes:v4];
  v3 = qword_1001B3B28;
  qword_1001B3B28 = v2;
}

uint64_t sub_1000D89A8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D8DF0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000D96B8(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  v6 = [*(*(a1 + 40) + 64) queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D97C0;
  v9[3] = &unk_100175688;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_1000D991C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = [v5 objectForKeyedSubscript:?];
    v8 = [v7 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
    v9 = [v8 value];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 activeDeviceID];
  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:v10];
    v12 = [v11 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
    v13 = [v12 value];
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 32))
  {
    v14 = [v5 objectForKeyedSubscript:?];
    if ([v14 isPaired])
    {
      v15 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      v16 = [v15 isArchived] ^ 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [*(*(a1 + 40) + 64) queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D9B68;
  v23[3] = &unk_100179830;
  v24 = *(a1 + 48);
  v25 = v9;
  v26 = v10;
  v27 = v13;
  v31 = v16;
  v28 = *(a1 + 56);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v29 = v18;
  v30 = v19;
  v20 = v13;
  v21 = v10;
  v22 = v9;
  dispatch_async(v17, v23);
}

void sub_1000D9B68(uint64_t a1)
{
  v2 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 40)];
  v3 = [*(a1 + 32) operands];
  [v3 setObject:v2 forKeyedSubscript:@"switchToIDSDeviceUUID"];

  v4 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 48)];
  v5 = [*(a1 + 32) operands];
  [v5 setObject:v4 forKeyedSubscript:@"switchFromNRDeviceUUID"];

  v6 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 56)];
  v7 = [*(a1 + 32) operands];
  [v7 setObject:v6 forKeyedSubscript:@"switchFromIDSDeviceUUID"];

  v8 = [EPSagaOperandNumber alloc];
  v9 = [NSNumber numberWithBool:*(a1 + 88)];
  v10 = [(EPSagaOperandNumber *)v8 initWithNumber:v9];
  v11 = [*(a1 + 32) operands];
  [v11 setObject:v10 forKeyedSubscript:@"isPaired"];

  v12 = [*(a1 + 64) serviceFromClass:objc_opt_class()];
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"shouldWaitForAssertion"];
  v14 = [v13 BOOLValue];

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"destinationIsAltAccount"];
  v16 = [v15 BOOLValue];

  if (!*(a1 + 72))
  {
    if (v14)
    {
      goto LABEL_9;
    }

    v24 = [v12 pairingID];
    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = v24;
    v26 = [v12 pairingID];
    v27 = [[NSUUID alloc] initWithUUIDString:@"8FC052B6-229F-49A7-BC78-3F56A5149994"];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
LABEL_9:
      v29 = [[NSUUID alloc] initWithUUIDString:@"8FC052B6-229F-49A7-BC78-3F56A5149994"];
      v30 = [v12 assertionWithPairingID:v29 isAltAccount:0 delegate:*(a1 + 80)];
      v31 = *(a1 + 80);
      v32 = *(v31 + 72);
      *(v31 + 72) = v30;

LABEL_13:
      goto LABEL_14;
    }

    v33 = [*(a1 + 32) errors];
    v40[0] = @"conflictuuid";
    v34 = [v12 pairingID];
    v35 = [v34 UUIDString];
    v40[1] = NSLocalizedDescriptionKey;
    v41[0] = v35;
    v41[1] = @"Conflicting assertion held";
    v36 = v41;
    v37 = v40;
LABEL_12:
    v38 = [NSDictionary dictionaryWithObjects:v36 forKeys:v37 count:2];
    v39 = [NSError errorWithDomain:@"com.apple.NanoRegistry.EPSagaTransactionActiveWatchAssertion" code:0 userInfo:v38];
    [v33 addObject:v39];

    v29 = [*(a1 + 80) delegate];
    [v29 transactionDidComplete:*(a1 + 80)];
    goto LABEL_13;
  }

  if ((v14 & 1) == 0)
  {
    v17 = [v12 pairingID];
    if (v17)
    {
      v18 = v17;
      v19 = [v12 pairingID];
      v20 = [v19 isEqual:*(a1 + 72)];

      if (!v20)
      {
        v33 = [*(a1 + 32) errors];
        v42[0] = @"conflictuuid";
        v34 = [v12 pairingID];
        v35 = [v34 UUIDString];
        v42[1] = NSLocalizedDescriptionKey;
        v43[0] = v35;
        v43[1] = @"Conflicting assertion held";
        v36 = v43;
        v37 = v42;
        goto LABEL_12;
      }
    }
  }

  v21 = [v12 assertionWithPairingID:*(a1 + 72) isAltAccount:v16 delegate:*(a1 + 80)];
  v22 = *(a1 + 80);
  v23 = *(v22 + 72);
  *(v22 + 72) = v21;

LABEL_14:
}

void sub_1000DA2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA2DC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isAltAccount];
}

uint64_t sub_1000DB22C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) serviceFromClass:objc_opt_class()];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[EPSagaTransactionUnstageFromWatchTransferManager beginTransactionWithRoutingSlipEntry:serviceRegistry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s calling watchTransferManager unstageDevice:completion:", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DB39C;
  v10[3] = &unk_100177960;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v2 unstageDevice:v6 completion:v10];

  return 0;
}

void sub_1000DB39C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB42C;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_1000DB42C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000DB64C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000DBE4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 update];
}

uint64_t sub_1000DC24C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = v4;
  v43 = a1;
  if (*(a1 + 32))
  {
    [v4 addObject:?];
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v52 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v8);
    }

    a1 = v43;
  }

  v44 = +[NSMutableDictionary dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v47 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v47)
  {
    v46 = *v49;
    v12 = NRDevicePropertyMigrationConsent;
    v41 = NRDevicePropertyMigrationConsentDate;
    *&v11 = 138412546;
    v40 = v11;
    v42 = v3;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * j);
        v15 = nr_daemon_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

        if (v16)
        {
          v17 = nr_daemon_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a1 + 56))
            {
              v18 = @"YES";
            }

            else
            {
              v18 = @"NO";
            }

            v19 = [v14 UUIDString];
            *buf = v40;
            v59 = v18;
            v60 = 2112;
            v61 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "setMigrationConsent: Setting migration consent to %@ for device ID %@", buf, 0x16u);
          }
        }

        v20 = [v3 objectForKeyedSubscript:{v14, v40}];
        v21 = [v20 objectForKeyedSubscript:v12];
        v22 = [v21 value];
        v23 = [v22 BOOLValue];

        if ((*(a1 + 56) & 1) != 0 || v23)
        {
          if (*(a1 + 56))
          {
            v24 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
          }

          else
          {
            v24 = 0;
          }

          v25 = [NRDevicePropertyDiffType alloc];
          if (v24)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          v27 = [v25 initWithDiff:v24 andChangeType:v26];
          v28 = [NRDevicePropertyDiff alloc];
          v29 = +[NSDate date];
          v30 = [v28 initWithValue:v29];

          v31 = [[NRDevicePropertyDiffType alloc] initWithDiff:v30 andChangeType:1];
          v32 = [NRDeviceDiff alloc];
          v56[0] = v12;
          v56[1] = v41;
          v57[0] = v27;
          v57[1] = v31;
          v33 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
          v34 = [v32 initWithDiffPropertyDiffs:v33];

          v35 = [[NRDeviceDiffType alloc] initWithDiff:v34 andChangeType:1];
          [v44 setObject:v35 forKeyedSubscript:v14];

          v3 = v42;
          a1 = v43;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v47);
  }

  v36 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v44];
  v37 = [v3 applyDiff:v36];
  if (*(a1 + 48))
  {
    v38 = [*(a1 + 40) queue];
    dispatch_async(v38, *(a1 + 48));
  }

  return 0;
}

void sub_1000DC8C4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}