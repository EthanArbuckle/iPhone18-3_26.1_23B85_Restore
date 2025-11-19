@interface CLDurianClientAdapter
- (CLDurianClientAdapter)initWithClient:(CLDurianManagementClient *)a3;
- (void)dealloc;
- (void)didCompleteAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4;
- (void)didCompleteHawkeyeTaskWithOpcode:(unsigned __int16)a3 fromDevice:(id)a4 withError:(id)a5;
- (void)didCompletePlayingSoundOnTag:(id)a3 withError:(id)a4;
- (void)didCompletePlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4;
- (void)didCompleteRangingOnTag:(id)a3 withStatus:(unsigned int)a4 endReason:(unsigned __int8)a5 error:(id)a6;
- (void)didConfigureRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5;
- (void)didConnectToTag:(id)a3 withMacAddress:(id)a4 withError:(id)a5;
- (void)didDeinitRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5;
- (void)didDetectCrashOnTag:(id)a3;
- (void)didDisconnectFromTag:(id)a3 withError:(id)a4;
- (void)didDumpLogs:(id)a3 ofType:(unint64_t)a4 fromTag:(id)a5 withError:(id)a6;
- (void)didFailRangingEventCounterActionForTag:(id)a3 error:(id)a4;
- (void)didFetchAISAccessoryCapabilitiesFromDevice:(id)a3 accessoryCapabilities:(id)a4 error:(id)a5;
- (void)didFetchAISAccessoryCategoryFromDevice:(id)a3 accessoryCategory:(unsigned __int8)a4 error:(id)a5;
- (void)didFetchAISBatteryLevelFromDevice:(id)a3 batteryLevel:(unsigned __int8)a4 error:(id)a5;
- (void)didFetchAISBatteryTypeFromDevice:(id)a3 batteryType:(unsigned __int8)a4 error:(id)a5;
- (void)didFetchAISFirmwareVersionFromDevice:(id)a3 firmwareVersion:(id)a4 error:(id)a5;
- (void)didFetchAISManufacturerNameFromDevice:(id)a3 manufacturerName:(id)a4 error:(id)a5;
- (void)didFetchAISModelNameFromDevice:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)didFetchAISNetworkIDFromDevice:(id)a3 networkID:(unsigned __int8)a4 error:(id)a5;
- (void)didFetchAISProductDataFromDevice:(id)a3 productData:(id)a4 error:(id)a5;
- (void)didFetchAISProtocolImplementationFromDevice:(id)a3 protocolImplementation:(unsigned int)a4 error:(id)a5;
- (void)didFetchAISSerialNumberFromDevice:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)didFetchAccelerometerMode:(unsigned __int8)a3 onTag:(id)a4 error:(id)a5;
- (void)didFetchAccelerometerOrientationModeConfiguration:(id)a3 onTag:(id)a4 error:(id)a5;
- (void)didFetchAccelerometerSlopeModeConfiguration:(id)a3 onTag:(id)a4 error:(id)a5;
- (void)didFetchAccessoryInformationForDevice:(id)a3 ownershipType:(unint64_t)a4 communicationProtocol:(unint64_t)a5 accessoryTypeName:(id)a6 error:(id)a7;
- (void)didFetchBatteryStatus:(unint64_t)a3 fromTag:(id)a4 withError:(id)a5;
- (void)didFetchConnectionState:(unint64_t)a3 forTag:(id)a4 withError:(id)a5;
- (void)didFetchFindingCapabilitesOnTag:(id)a3 withFindingCapabilities:(id)a4 error:(id)a5;
- (void)didFetchFirmwareVersion:(id)a3 fromTag:(id)a4 withError:(id)a5;
- (void)didFetchHawkeyeAISAccessoryCapabilitiesFromDevice:(id)a3 accessoryCapabilities:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISAccessoryCategoryFromDevice:(id)a3 accessoryCategory:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISBatteryTypeFromDevice:(id)a3 batteryType:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISFindMyVersionFromDevice:(id)a3 findMyVersion:(unsigned int)a4 error:(id)a5;
- (void)didFetchHawkeyeAISManufacturerNameFromDevice:(id)a3 manufacturerName:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISModelColorCodeFromDevice:(id)a3 modelColorCode:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISModelNameFromDevice:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeAISProductDataFromDevice:(id)a3 productData:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeCurrentPrimaryKeyFromDevice:(id)a3 currentPrimaryKey:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeSerialNumberFromDevice:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)didFetchHawkeyeiCloudIdentifierFromDevice:(id)a3 iCloudIdentifier:(id)a4 error:(id)a5;
- (void)didFetchStatusOfUTEnablementRequirementsWithStatus:(id)a3;
- (void)didFetchTxPower:(id)a3 fromDevice:(id)a4 withError:(id)a5;
- (void)didFetchUserStats:(id)a3 fromTag:(id)a4 withError:(id)a5;
- (void)didFetchUserStats_Deprecated:(id)a3 fromTag:(id)a4 withError:(id)a5;
- (void)didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)a3 andProductNumber:(id)a4 withResult:(BOOL)a5;
- (void)didGetMultiStatus:(unint64_t)a3 forTag:(id)a4 withError:(id)a5;
- (void)didHaveRangingMovementOnTag:(id)a3;
- (void)didInitRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5;
- (void)didPrepareRangingOnTag:(id)a3 error:(id)a4;
- (void)didPrepareRangingOnTag:(id)a3 withConnInterval:(id)a4 error:(id)a5;
- (void)didReceiveGroupRelationStatus:(unsigned __int8)a3 maintenanceStatus:(unsigned __int8)a4 onTag:(id)a5 withError:(id)a6;
- (void)didReceiveHawkeyeDataFragment:(id)a3 withOpcode:(unsigned __int16)a4 fromDevice:(id)a5 error:(id)a6;
- (void)didReceiveKeyRollIndex:(unsigned int)a3 onTag:(id)a4;
- (void)didReceiveRangingErrorFromTag:(id)a3 withStatus:(unsigned int)a4;
- (void)didReceiveRangingTimestampsFromTag:(id)a3 eventStatus:(unsigned __int16)a4 rtt:(unint64_t)a5 tat:(unint64_t)a6 cycleIndex:(unsigned __int16)a7;
- (void)didRetrievePersonalizationInformation:(id)a3 forTag:(id)a4 error:(id)a5;
- (void)didRollWildKeyOnTag:(id)a3 withError:(id)a4;
- (void)didSetAccelerometerOrientationModeConfigurationOnTag:(id)a3 error:(id)a4;
- (void)didSetAccelerometerSlopeModeConfigurationOnTag:(id)a3 error:(id)a4;
- (void)didSetBatteryStatusOnTag:(id)a3 error:(id)a4;
- (void)didSetHawkeyeUTMotionConfigForDevice:(id)a3 withError:(id)a4;
- (void)didSetNearOwnerTimeoutOnTag:(id)a3 withError:(id)a4;
- (void)didSetObfuscatedIdentifierOnTag:(id)a3 withError:(id)a4;
- (void)didSetTagTypeOnTag:(id)a3 withError:(id)a4;
- (void)didSetUnauthorizedPlaySoundRateLimitFromTag:(id)a3 error:(id)a4;
- (void)didSetWildModeConfigruationOnTag:(id)a3 withError:(id)a4;
- (void)didStartAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4;
- (void)didStartPlayingSoundOnTag:(id)a3 withError:(id)a4;
- (void)didStartPlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4;
- (void)didStartRangingOnTag:(id)a3 error:(id)a4;
- (void)didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4;
- (void)didStopAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4;
- (void)didStopPlayingSoundOnTag:(id)a3 withError:(id)a4;
- (void)didStopPlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4;
- (void)didUnpairFromTag:(id)a3 withError:(id)a4;
- (void)didUpdateFirmwareForTag:(id)a3 error:(id)a4;
- (void)didUseDefaultFirmwareAssetRequestForProductGroup:(id)a3 andProductNumber:(id)a4 withError:(id)a5;
- (void)didUseLocalFirmwareAssetRequestForProductGroup:(id)a3 andProductNumber:(id)a4 withError:(id)a5;
- (void)onAvengerAdvertisement:(id)a3 reconciledInformation:(id)a4;
- (void)onUpdatedPowerState;
- (void)sendMessage:()basic_string<char forTag:()std:(std::allocator<char>> *)a3 :char_traits<char> withError:;
@end

@implementation CLDurianClientAdapter

- (CLDurianClientAdapter)initWithClient:(CLDurianManagementClient *)a3
{
  v10.receiver = self;
  v10.super_class = CLDurianClientAdapter;
  v4 = [(CLDurianClientAdapter *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_valid = 1;
    v4->_client = a3;
    (*(a3->var0 + 3))(&__p, a3);
    if (SBYTE3(v15) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v5->_clientname = [(NSArray *)[[NSString stringWithUTF8String:?]lastObject:@"/"]];
    if (SBYTE3(v15) < 0)
    {
      operator delete(__p);
    }

    if (qword_1025D4610 != -1)
    {
      sub_1018D4CF0();
    }

    v7 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      clientname = v5->_clientname;
      __p = 68289282;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = clientname;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client init, name:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLDurianClientAdapter;
  [(CLDurianClientAdapter *)&v3 dealloc];
}

- (void)sendMessage:()basic_string<char forTag:()std:(std::allocator<char>> *)a3 :char_traits<char> withError:
{
  if (v4)
  {
    v7[0] = @"CLDurianIdentifier";
    v7[1] = @"CLDurianError";
    v8[0] = v3;
    v8[1] = v4;
    [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  else
  {
    v5 = @"CLDurianIdentifier";
    v6 = v3;
    [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  sub_1005BE008();
}

- (void)onAvengerAdvertisement:(id)a3 reconciledInformation:(id)a4
{
  if ([a3 isApple])
  {
    if (a4 && [a4 uuid])
    {
      v7 = +[NSMutableDictionary dictionary];
      if ([a3 scanDate])
      {
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"scanDate"), @"CLAvengerAdvertisementScanDateKey"}];
      }

      if ([a3 address])
      {
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"address"), @"CLAvengerAdvertisementAddressKey"}];
      }

      if ([a3 advertisementData])
      {
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"advertisementData"), @"CLAvengerAdvertisementDataKey"}];
      }

      if ([a3 reserved])
      {
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"reserved"), @"CLAvengerAdvertisementReservedKey"}];
      }

      [v7 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(a4, "type")), @"CLAvengerAdvertisementOwnershipTypeKey"}];
      [v7 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKeyedSubscript:{"numberWithUnsignedChar:", objc_msgSend(a3, "status")), @"CLAvengerAdvertisementStatusKey"}];
      [v7 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(a3, "rssi")), @"CLAvengerAdvertisementRSSIKey"}];
      [v7 setObject:objc_msgSend(a4 forKeyedSubscript:{"uuid"), @"CLDurianIdentifier"}];
      if ([a3 channel])
      {
        v8 = [a3 channel];
      }

      else
      {
        v8 = &off_10254EBB8;
      }

      [v7 setObject:v8 forKeyedSubscript:@"CLAvengerAdvertisementChannelKey"];
      sub_10000EC00(__p, "DurianManagement/DidObserveAdvertisement");
      -[CLDurianClientAdapter sendMessage:forTag:withPayload:](self, "sendMessage:forTag:withPayload:", __p, [a4 uuid], v7);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v13 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68290563;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2113;
      v21 = [a3 address];
      v22 = 2113;
      v23 = [a3 advertisementData];
      v24 = 2113;
      v25 = [a3 scanDate];
      v26 = 1025;
      v27 = [a3 status];
      v28 = 2049;
      v29 = [a3 rssi];
      v30 = 2113;
      v31 = [a3 reserved];
      v10 = "{msg%{public}.0s:#durian #client skipping unreconciled advertisement, address:%{private, location:escape_only}@, advertisementData:%{private, location:escape_only}@, scanDate:%{private, location:escape_only}@, status:%{private}u, rssi:%{private}ld, reserved:%{private, location:escape_only}@}";
      v11 = v13;
      v12 = 74;
      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v9 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v10 = "{msg%{public}.0s:#durian #client dropping non-Apple advertisement}";
      v11 = v9;
      v12 = 18;
LABEL_22:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    }
  }
}

- (void)onUpdatedPowerState
{
  v2 = [(CLDurianClientAdapter *)self client];

  sub_1005B1FE8(v2);
}

- (void)didStartPlayingSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidStartPlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompletePlayingSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidCompletePlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopPlayingSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidStopPlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompletePlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidCompletePlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartPlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidStartPlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopPlayingUnauthorizedSoundOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidStopPlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didConnectToTag:(id)a3 withMacAddress:(id)a4 withError:(id)a5
{
  v18 = @"CLDurianIdentifier";
  v19 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else if (a4)
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLDurianMacAddress"];
  }

  else
  {
    v11 = [NSError alloc];
    v16 = NSLocalizedDescriptionKey;
    v17 = sub_10144F814(3uLL);
    -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [v11 initWithDomain:kCLErrorDomain code:3 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}], @"CLDurianError");
    if (qword_1025D4610 != -1)
    {
      sub_1018D4CF0();
    }

    v12 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "tagMac is null", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D4D2C();
    }
  }

  sub_10000EC00(__p, "DurianManagement/DidConnect");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDisconnectFromTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidDisconnect");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveKeyRollIndex:(unsigned int)a3 onTag:(id)a4
{
  v9[0] = @"CLDurianIdentifier";
  v9[1] = @"CLDurianKeyRollIndex";
  v10[0] = a4;
  v10[1] = [NSNumber numberWithUnsignedInt:*&a3];
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  sub_10000EC00(__p, "DurianManagement/DidReceiveKeyRollIndex");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchConnectionState:(unint64_t)a3 forTag:(id)a4 withError:(id)a5
{
  v10[0] = @"CLDurianIdentifier";
  v10[1] = @"CLDurianConnectionState";
  v11[0] = a4;
  v11[1] = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_10000EC00(__p, "DurianManagement/DidFetchConnectionState");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v7];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didGetMultiStatus:(unint64_t)a3 forTag:(id)a4 withError:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else if (a3)
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:a3], @"CLDurianMultiStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetMultiStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveGroupRelationStatus:(unsigned __int8)a3 maintenanceStatus:(unsigned __int8)a4 onTag:(id)a5 withError:(id)a6
{
  v7 = a4;
  v13[0] = a5;
  v12[0] = @"CLDurianIdentifier";
  v12[1] = @"CLDurianGroupRelation";
  v13[1] = [NSNumber numberWithUnsignedChar:a3];
  v12[2] = @"CLDurianGroupMaintenance";
  v13[2] = [NSNumber numberWithUnsignedChar:v7];
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  sub_10000EC00(__p, "DurianManagement/DidReceiveGroupStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a5 withPayload:v9];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDetectCrashOnTag:(id)a3
{
  v8 = @"CLDurianIdentifier";
  v9 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  sub_10000EC00(__p, "DurianManagement/DidDetectCrash");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v5];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDumpLogs:(id)a3 ofType:(unint64_t)a4 fromTag:(id)a5 withError:(id)a6
{
  v14[0] = @"CLDurianIdentifier";
  v14[1] = @"CLDurianLogType";
  v15[0] = a5;
  v15[1] = [NSNumber numberWithUnsignedInteger:a4];
  v10 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2]];
  v11 = v10;
  if (a6)
  {
    [(NSMutableDictionary *)v10 setObject:a6 forKey:@"CLDurianError"];
  }

  if (a3)
  {
    [(NSMutableDictionary *)v11 setObject:a3 forKey:@"CLDurianLogs"];
  }

  sub_10000EC00(__p, "DurianManagement/DidDumpLogs");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a5 withPayload:v11];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchFirmwareVersion:(id)a3 fromTag:(id)a4 withError:(id)a5
{
  v14 = @"CLDurianIdentifier";
  v15 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
  v10 = v9;
  if (a5)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v11 = &off_1024596D8;
    a5 = a3;
  }

  [(NSMutableDictionary *)v9 setObject:a5 forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchFirmwareVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchUserStats_Deprecated:(id)a3 fromTag:(id)a4 withError:(id)a5
{
  v14 = @"CLDurianIdentifier";
  v15 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
  v10 = v9;
  if (a5)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v11 = &off_102459738;
    a5 = a3;
  }

  [(NSMutableDictionary *)v9 setObject:a5 forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchUserStats_Deprecated");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchUserStats:(id)a3 fromTag:(id)a4 withError:(id)a5
{
  v14 = @"CLDurianIdentifier";
  v15 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
  v10 = v9;
  if (a5)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v11 = &off_102459738;
    a5 = a3;
  }

  [(NSMutableDictionary *)v9 setObject:a5 forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchUserStats");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUnpairFromTag:(id)a3 withError:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUnpair");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetTagTypeOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetTagType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetObfuscatedIdentifierOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetObfuscatedIdentifier");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetNearOwnerTimeoutOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetNearOwnerTimeout");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetWildModeConfigruationOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetWildConfiguration");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didRollWildKeyOnTag:(id)a3 withError:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidRollWildKey");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchFindingCapabilitesOnTag:(id)a3 withFindingCapabilities:(id)a4 error:(id)a5
{
  v14 = @"CLDurianIdentifier";
  v15 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
  v10 = v9;
  if (a5)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    v11 = &off_102459778;
    a5 = a4;
  }

  [(NSMutableDictionary *)v9 setObject:a5 forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchFindingCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didInitRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5
{
  v6 = *&a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidInitRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDeinitRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5
{
  v6 = *&a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidDeinitRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didConfigureRangingOnTag:(id)a3 withStatus:(unsigned int)a4 error:(id)a5
{
  v6 = *&a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidConfigureRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didPrepareRangingOnTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidPrepareRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didPrepareRangingOnTag:(id)a3 withConnInterval:(id)a4 error:(id)a5
{
  v16 = @"CLDurianIdentifier";
  v17 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
  v10 = v9;
  if (!a5)
  {
    if (!a4)
    {
      v11 = [NSError alloc];
      v14 = NSLocalizedDescriptionKey;
      v15 = sub_10144F814(1uLL);
      -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [v11 initWithDomain:kCLErrorDomain code:1 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}], @"CLDurianError");
      goto LABEL_6;
    }

LABEL_5:
    [(NSMutableDictionary *)v10 setObject:a4 forKey:@"CLDurianConnectionInterval"];
    goto LABEL_6;
  }

  [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  if (a4)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidPrepareRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartRangingOnTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteRangingOnTag:(id)a3 withStatus:(unsigned int)a4 endReason:(unsigned __int8)a5 error:(id)a6
{
  v7 = a5;
  v8 = *&a4;
  v15 = @"CLDurianIdentifier";
  v16 = a3;
  v11 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]];
  v12 = v11;
  if (a6)
  {
    [(NSMutableDictionary *)v11 setObject:a6 forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v8], @"CLDurianRangingStatus"];
  [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v7], @"CLDurianRangingEndReason"];
  sub_10000EC00(__p, "DurianManagement/DidCompleteRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveRangingErrorFromTag:(id)a3 withStatus:(unsigned int)a4
{
  v9[0] = @"CLDurianIdentifier";
  v9[1] = @"CLDurianRangingStatus";
  v10[0] = a3;
  v10[1] = [NSNumber numberWithUnsignedInt:*&a4];
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  sub_10000EC00(__p, "DurianManagement/DidReceiveRangingError");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveRangingTimestampsFromTag:(id)a3 eventStatus:(unsigned __int16)a4 rtt:(unint64_t)a5 tat:(unint64_t)a6 cycleIndex:(unsigned __int16)a7
{
  v7 = a7;
  v16[0] = a3;
  v15[0] = @"CLDurianIdentifier";
  v15[1] = @"CLDurianRangingTimestampStatus";
  v16[1] = [NSNumber numberWithUnsignedShort:a4];
  v15[2] = @"CLDurianRangingRtt";
  v16[2] = [NSNumber numberWithUnsignedLongLong:a5];
  v15[3] = @"CLDurianRangingTat";
  v16[3] = [NSNumber numberWithUnsignedLongLong:a6];
  v15[4] = @"CLDurianRangingCycleIndex";
  v16[4] = [NSNumber numberWithUnsignedShort:v7];
  v12 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5]];
  sub_10000EC00(__p, "DurianManagement/DidReceiveRangingTimestamps");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFailRangingEventCounterActionForTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFailRangingEventCounterAction");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didHaveRangingMovementOnTag:(id)a3
{
  v8 = @"CLDurianIdentifier";
  v9 = a3;
  v5 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
  sub_10000EC00(__p, "DurianManagement/DidHaveRangingMovement");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v5];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetAccelerometerSlopeModeConfigurationOnTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerSlopeMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetAccelerometerOrientationModeConfigurationOnTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerOrientationMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerSlopeModeConfiguration:(id)a3 onTag:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a3 forKey:@"CLDurianAccelerometerSlopeModeConfigurationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetAccelerometerSlopeModeConfiguration");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerOrientationModeConfiguration:(id)a3 onTag:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a3 forKey:@"CLDurianAccelerometerOrientationModeConfigurationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerOrientationMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerMode:(unsigned __int8)a3 onTag:(id)a4 error:(id)a5
{
  v7 = a3;
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v7], @"CLDurianAccelerometerModeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetAccelerometerMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchBatteryStatus:(unint64_t)a3 fromTag:(id)a4 withError:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:a3], @"CLDurianBatteryStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchBatteryStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didRetrievePersonalizationInformation:(id)a3 forTag:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a3 forKey:@"CLDurianPersonalizationInfo"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchPersonalizationInformation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUpdateFirmwareForTag:(id)a3 error:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUpdateFirmware");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetUnauthorizedPlaySoundRateLimitFromTag:(id)a3 error:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetUnauthorizedPlaySoundRateLimit");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetBatteryStatusOnTag:(id)a3 error:(id)a4
{
  sub_10000EC00(__p, "DurianManagement/DidSetBatteryStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteHawkeyeTaskWithOpcode:(unsigned __int16)a3 fromDevice:(id)a4 withError:(id)a5
{
  v7 = a3;
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v10 setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:v7], @"CLHawkeyeTaskOpcodeKey"];
  sub_10000EC00(__p, "DurianManagement/DidCompleteHawkeyeTask");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetHawkeyeUTMotionConfigForDevice:(id)a3 withError:(id)a4
{
  v10 = @"CLDurianIdentifier";
  v11 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]];
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetHawkeyeUTMotionConfig");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withError:a4];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchTxPower:(id)a3 fromDevice:(id)a4 withError:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a4;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v10 setObject:a3 forKey:@"CLHawkeyeTxPowerKey"];
  sub_10000EC00(__p, "DurianManagement/DidFetchTxPower");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a4 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStopAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidCompleteAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a3 withError:(id)a4
{
  v11 = @"CLDurianIdentifier";
  v12 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
  v8 = v7;
  if (a4)
  {
    [(NSMutableDictionary *)v7 setObject:a4 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartUnauthorizedAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISProductDataFromDevice:(id)a3 productData:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISProductDataKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISProductData");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISManufacturerNameFromDevice:(id)a3 manufacturerName:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISManufacturerNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISManufacturerName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISModelNameFromDevice:(id)a3 modelName:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISModelNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISModelName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISModelColorCodeFromDevice:(id)a3 modelColorCode:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISModelColorCodeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISModelColorCode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISAccessoryCategoryFromDevice:(id)a3 accessoryCategory:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISAccessoryCategoryKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISAccessoryCategory");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISAccessoryCapabilitiesFromDevice:(id)a3 accessoryCapabilities:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISAccessoryCapabilitiesKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISAccessoryCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISFindMyVersionFromDevice:(id)a3 findMyVersion:(unsigned int)a4 error:(id)a5
{
  v6 = *&a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLHawkeyeAISFindMyVersionKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISFindMyVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISBatteryTypeFromDevice:(id)a3 batteryType:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeAISBatteryTypeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISBatteryType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeSerialNumberFromDevice:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeSerialNumberKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeSerialNumber");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeCurrentPrimaryKeyFromDevice:(id)a3 currentPrimaryKey:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeCurrentPrimaryKeyKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeiCloudIdentifierFromDevice:(id)a3 iCloudIdentifier:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLHawkeyeiCloudIdentifierKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeiCloudIdentifier");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveHawkeyeDataFragment:(id)a3 withOpcode:(unsigned __int16)a4 fromDevice:(id)a5 error:(id)a6
{
  v8 = a4;
  v15 = @"CLDurianIdentifier";
  v16 = a5;
  v11 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]];
  v12 = v11;
  if (a6)
  {
    [(NSMutableDictionary *)v11 setObject:a6 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v11 setObject:a3 forKey:@"CLHawkeyeDataFragmentKey"];
    [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedShort:" numberWithUnsignedShort:v8], @"CLHawkeyeTaskOpcodeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidReceiveDataFragment");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a5 withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUseLocalFirmwareAssetRequestForProductGroup:(id)a3 andProductNumber:(id)a4 withError:(id)a5
{
  v11[0] = @"CLHawkeyeProductGroupKey";
  v11[1] = @"CLHawkeyeProductNumberKey";
  v12[0] = a3;
  v12[1] = a4;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2]];
  v8 = v7;
  if (a5)
  {
    [(NSMutableDictionary *)v7 setObject:a5 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUseLocalAssetRequest");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUseDefaultFirmwareAssetRequestForProductGroup:(id)a3 andProductNumber:(id)a4 withError:(id)a5
{
  v11[0] = @"CLHawkeyeProductGroupKey";
  v11[1] = @"CLHawkeyeProductNumberKey";
  v12[0] = a3;
  v12[1] = a4;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2]];
  v8 = v7;
  if (a5)
  {
    [(NSMutableDictionary *)v7 setObject:a5 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUseDefaultAssetRequest");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)a3 andProductNumber:(id)a4 withResult:(BOOL)a5
{
  v9[0] = @"CLHawkeyeProductGroupKey";
  v9[1] = @"CLHawkeyeProductNumberKey";
  v10[0] = a3;
  v10[1] = a4;
  v9[2] = @"CLHawkeyeLocalFirmwareInUseResultKey";
  v10[2] = [NSNumber numberWithBool:a5];
  v6 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3]];
  sub_10000EC00(__p, "DurianManagement/DidFetchWhetherLocalFirmwareAssetIsInUse");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISProductDataFromDevice:(id)a3 productData:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISProductDataKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISProductData");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISManufacturerNameFromDevice:(id)a3 manufacturerName:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISManufacturerNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISManufacturerName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISModelNameFromDevice:(id)a3 modelName:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISModelNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISModelName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISProtocolImplementationFromDevice:(id)a3 protocolImplementation:(unsigned int)a4 error:(id)a5
{
  v6 = *&a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLAISProtocolImplementationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISProtocolImplementation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISAccessoryCategoryFromDevice:(id)a3 accessoryCategory:(unsigned __int8)a4 error:(id)a5
{
  v6 = a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v6], @"CLAISAccessoryCategoryKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISAccessoryCategory");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISAccessoryCapabilitiesFromDevice:(id)a3 accessoryCapabilities:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISAccessoryCapabilitiesKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISAccessoryCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISNetworkIDFromDevice:(id)a3 networkID:(unsigned __int8)a4 error:(id)a5
{
  v6 = a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v6], @"CLAISNetworkIDKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISNetworkID");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISFirmwareVersionFromDevice:(id)a3 firmwareVersion:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISFirmwareVersionKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISFirmwareVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISBatteryTypeFromDevice:(id)a3 batteryType:(unsigned __int8)a4 error:(id)a5
{
  v6 = a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v6], @"CLAISBatteryTypeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISBatteryType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISBatteryLevelFromDevice:(id)a3 batteryLevel:(unsigned __int8)a4 error:(id)a5
{
  v6 = a4;
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:v6], @"CLAISBatteryLevelKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISBatteryLevel");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISSerialNumberFromDevice:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v13 = @"CLDurianIdentifier";
  v14 = a3;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
  v10 = v9;
  if (a5)
  {
    [(NSMutableDictionary *)v9 setObject:a5 forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:a4 forKey:@"CLAISSerialNumberKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISSerialNumber");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccessoryInformationForDevice:(id)a3 ownershipType:(unint64_t)a4 communicationProtocol:(unint64_t)a5 accessoryTypeName:(id)a6 error:(id)a7
{
  v17[0] = a3;
  v16[0] = @"CLDurianIdentifier";
  v16[1] = @"CLAvengerAdvertisementOwnershipTypeKey";
  v17[1] = [NSNumber numberWithUnsignedInteger:a4];
  v16[2] = @"CLDurianAccessoryInformationCommunicationProtocolKey";
  v16[3] = @"CLDurianAccessoryInformationTypeNameKey";
  v17[2] = [NSNumber numberWithUnsignedInteger:a5];
  v17[3] = a6;
  v12 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4]];
  v13 = v12;
  if (a7)
  {
    [(NSMutableDictionary *)v12 setObject:a7 forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAccessoryInformation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:a3 withPayload:v13];
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchStatusOfUTEnablementRequirementsWithStatus:(id)a3
{
  v7 = @"CLTAEnablementRequirementsStatusKey";
  v8 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_10000EC00(__p, "DurianManagement/DidFetchStatusOfUTEnablementRequirements");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v4];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

@end