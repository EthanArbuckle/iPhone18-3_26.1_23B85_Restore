@interface CLDurianClientAdapter
- (CLDurianClientAdapter)initWithClient:(CLDurianManagementClient *)client;
- (void)dealloc;
- (void)didCompleteAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)didCompleteHawkeyeTaskWithOpcode:(unsigned __int16)opcode fromDevice:(id)device withError:(id)error;
- (void)didCompletePlayingSoundOnTag:(id)tag withError:(id)error;
- (void)didCompletePlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error;
- (void)didCompleteRangingOnTag:(id)tag withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error;
- (void)didConfigureRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error;
- (void)didConnectToTag:(id)tag withMacAddress:(id)address withError:(id)error;
- (void)didDeinitRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error;
- (void)didDetectCrashOnTag:(id)tag;
- (void)didDisconnectFromTag:(id)tag withError:(id)error;
- (void)didDumpLogs:(id)logs ofType:(unint64_t)type fromTag:(id)tag withError:(id)error;
- (void)didFailRangingEventCounterActionForTag:(id)tag error:(id)error;
- (void)didFetchAISAccessoryCapabilitiesFromDevice:(id)device accessoryCapabilities:(id)capabilities error:(id)error;
- (void)didFetchAISAccessoryCategoryFromDevice:(id)device accessoryCategory:(unsigned __int8)category error:(id)error;
- (void)didFetchAISBatteryLevelFromDevice:(id)device batteryLevel:(unsigned __int8)level error:(id)error;
- (void)didFetchAISBatteryTypeFromDevice:(id)device batteryType:(unsigned __int8)type error:(id)error;
- (void)didFetchAISFirmwareVersionFromDevice:(id)device firmwareVersion:(id)version error:(id)error;
- (void)didFetchAISManufacturerNameFromDevice:(id)device manufacturerName:(id)name error:(id)error;
- (void)didFetchAISModelNameFromDevice:(id)device modelName:(id)name error:(id)error;
- (void)didFetchAISNetworkIDFromDevice:(id)device networkID:(unsigned __int8)d error:(id)error;
- (void)didFetchAISProductDataFromDevice:(id)device productData:(id)data error:(id)error;
- (void)didFetchAISProtocolImplementationFromDevice:(id)device protocolImplementation:(unsigned int)implementation error:(id)error;
- (void)didFetchAISSerialNumberFromDevice:(id)device serialNumber:(id)number error:(id)error;
- (void)didFetchAccelerometerMode:(unsigned __int8)mode onTag:(id)tag error:(id)error;
- (void)didFetchAccelerometerOrientationModeConfiguration:(id)configuration onTag:(id)tag error:(id)error;
- (void)didFetchAccelerometerSlopeModeConfiguration:(id)configuration onTag:(id)tag error:(id)error;
- (void)didFetchAccessoryInformationForDevice:(id)device ownershipType:(unint64_t)type communicationProtocol:(unint64_t)protocol accessoryTypeName:(id)name error:(id)error;
- (void)didFetchBatteryStatus:(unint64_t)status fromTag:(id)tag withError:(id)error;
- (void)didFetchConnectionState:(unint64_t)state forTag:(id)tag withError:(id)error;
- (void)didFetchFindingCapabilitesOnTag:(id)tag withFindingCapabilities:(id)capabilities error:(id)error;
- (void)didFetchFirmwareVersion:(id)version fromTag:(id)tag withError:(id)error;
- (void)didFetchHawkeyeAISAccessoryCapabilitiesFromDevice:(id)device accessoryCapabilities:(id)capabilities error:(id)error;
- (void)didFetchHawkeyeAISAccessoryCategoryFromDevice:(id)device accessoryCategory:(id)category error:(id)error;
- (void)didFetchHawkeyeAISBatteryTypeFromDevice:(id)device batteryType:(id)type error:(id)error;
- (void)didFetchHawkeyeAISFindMyVersionFromDevice:(id)device findMyVersion:(unsigned int)version error:(id)error;
- (void)didFetchHawkeyeAISManufacturerNameFromDevice:(id)device manufacturerName:(id)name error:(id)error;
- (void)didFetchHawkeyeAISModelColorCodeFromDevice:(id)device modelColorCode:(id)code error:(id)error;
- (void)didFetchHawkeyeAISModelNameFromDevice:(id)device modelName:(id)name error:(id)error;
- (void)didFetchHawkeyeAISProductDataFromDevice:(id)device productData:(id)data error:(id)error;
- (void)didFetchHawkeyeCurrentPrimaryKeyFromDevice:(id)device currentPrimaryKey:(id)key error:(id)error;
- (void)didFetchHawkeyeSerialNumberFromDevice:(id)device serialNumber:(id)number error:(id)error;
- (void)didFetchHawkeyeiCloudIdentifierFromDevice:(id)device iCloudIdentifier:(id)identifier error:(id)error;
- (void)didFetchStatusOfUTEnablementRequirementsWithStatus:(id)status;
- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error;
- (void)didFetchUserStats:(id)stats fromTag:(id)tag withError:(id)error;
- (void)didFetchUserStats_Deprecated:(id)deprecated fromTag:(id)tag withError:(id)error;
- (void)didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)group andProductNumber:(id)number withResult:(BOOL)result;
- (void)didGetMultiStatus:(unint64_t)status forTag:(id)tag withError:(id)error;
- (void)didHaveRangingMovementOnTag:(id)tag;
- (void)didInitRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error;
- (void)didPrepareRangingOnTag:(id)tag error:(id)error;
- (void)didPrepareRangingOnTag:(id)tag withConnInterval:(id)interval error:(id)error;
- (void)didReceiveGroupRelationStatus:(unsigned __int8)status maintenanceStatus:(unsigned __int8)maintenanceStatus onTag:(id)tag withError:(id)error;
- (void)didReceiveHawkeyeDataFragment:(id)fragment withOpcode:(unsigned __int16)opcode fromDevice:(id)device error:(id)error;
- (void)didReceiveKeyRollIndex:(unsigned int)index onTag:(id)tag;
- (void)didReceiveRangingErrorFromTag:(id)tag withStatus:(unsigned int)status;
- (void)didReceiveRangingTimestampsFromTag:(id)tag eventStatus:(unsigned __int16)status rtt:(unint64_t)rtt tat:(unint64_t)tat cycleIndex:(unsigned __int16)index;
- (void)didRetrievePersonalizationInformation:(id)information forTag:(id)tag error:(id)error;
- (void)didRollWildKeyOnTag:(id)tag withError:(id)error;
- (void)didSetAccelerometerOrientationModeConfigurationOnTag:(id)tag error:(id)error;
- (void)didSetAccelerometerSlopeModeConfigurationOnTag:(id)tag error:(id)error;
- (void)didSetBatteryStatusOnTag:(id)tag error:(id)error;
- (void)didSetHawkeyeUTMotionConfigForDevice:(id)device withError:(id)error;
- (void)didSetNearOwnerTimeoutOnTag:(id)tag withError:(id)error;
- (void)didSetObfuscatedIdentifierOnTag:(id)tag withError:(id)error;
- (void)didSetTagTypeOnTag:(id)tag withError:(id)error;
- (void)didSetUnauthorizedPlaySoundRateLimitFromTag:(id)tag error:(id)error;
- (void)didSetWildModeConfigruationOnTag:(id)tag withError:(id)error;
- (void)didStartAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)didStartPlayingSoundOnTag:(id)tag withError:(id)error;
- (void)didStartPlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error;
- (void)didStartRangingOnTag:(id)tag error:(id)error;
- (void)didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)didStopAggressiveAdvertisingOnDevice:(id)device withError:(id)error;
- (void)didStopPlayingSoundOnTag:(id)tag withError:(id)error;
- (void)didStopPlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error;
- (void)didUnpairFromTag:(id)tag withError:(id)error;
- (void)didUpdateFirmwareForTag:(id)tag error:(id)error;
- (void)didUseDefaultFirmwareAssetRequestForProductGroup:(id)group andProductNumber:(id)number withError:(id)error;
- (void)didUseLocalFirmwareAssetRequestForProductGroup:(id)group andProductNumber:(id)number withError:(id)error;
- (void)onAvengerAdvertisement:(id)advertisement reconciledInformation:(id)information;
- (void)onUpdatedPowerState;
- (void)sendMessage:()basic_string<char forTag:()std:(std::allocator<char>> *)std :char_traits<char> withError:;
@end

@implementation CLDurianClientAdapter

- (CLDurianClientAdapter)initWithClient:(CLDurianManagementClient *)client
{
  v10.receiver = self;
  v10.super_class = CLDurianClientAdapter;
  v4 = [(CLDurianClientAdapter *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_valid = 1;
    v4->_client = client;
    (*(client->var0 + 3))(&__p, client);
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

- (void)sendMessage:()basic_string<char forTag:()std:(std::allocator<char>> *)std :char_traits<char> withError:
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

- (void)onAvengerAdvertisement:(id)advertisement reconciledInformation:(id)information
{
  if ([advertisement isApple])
  {
    if (information && [information uuid])
    {
      v7 = +[NSMutableDictionary dictionary];
      if ([advertisement scanDate])
      {
        [v7 setObject:objc_msgSend(advertisement forKeyedSubscript:{"scanDate"), @"CLAvengerAdvertisementScanDateKey"}];
      }

      if ([advertisement address])
      {
        [v7 setObject:objc_msgSend(advertisement forKeyedSubscript:{"address"), @"CLAvengerAdvertisementAddressKey"}];
      }

      if ([advertisement advertisementData])
      {
        [v7 setObject:objc_msgSend(advertisement forKeyedSubscript:{"advertisementData"), @"CLAvengerAdvertisementDataKey"}];
      }

      if ([advertisement reserved])
      {
        [v7 setObject:objc_msgSend(advertisement forKeyedSubscript:{"reserved"), @"CLAvengerAdvertisementReservedKey"}];
      }

      [v7 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(information, "type")), @"CLAvengerAdvertisementOwnershipTypeKey"}];
      [v7 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKeyedSubscript:{"numberWithUnsignedChar:", objc_msgSend(advertisement, "status")), @"CLAvengerAdvertisementStatusKey"}];
      [v7 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(advertisement, "rssi")), @"CLAvengerAdvertisementRSSIKey"}];
      [v7 setObject:objc_msgSend(information forKeyedSubscript:{"uuid"), @"CLDurianIdentifier"}];
      if ([advertisement channel])
      {
        channel = [advertisement channel];
      }

      else
      {
        channel = &off_10254EBB8;
      }

      [v7 setObject:channel forKeyedSubscript:@"CLAvengerAdvertisementChannelKey"];
      sub_10000EC00(__p, "DurianManagement/DidObserveAdvertisement");
      -[CLDurianClientAdapter sendMessage:forTag:withPayload:](self, "sendMessage:forTag:withPayload:", __p, [information uuid], v7);
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
      address = [advertisement address];
      v22 = 2113;
      advertisementData = [advertisement advertisementData];
      v24 = 2113;
      scanDate = [advertisement scanDate];
      v26 = 1025;
      status = [advertisement status];
      v28 = 2049;
      rssi = [advertisement rssi];
      v30 = 2113;
      reserved = [advertisement reserved];
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
  client = [(CLDurianClientAdapter *)self client];

  sub_1005B1FE8(client);
}

- (void)didStartPlayingSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidStartPlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompletePlayingSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidCompletePlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopPlayingSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidStopPlayingSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompletePlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidCompletePlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartPlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidStartPlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopPlayingUnauthorizedSoundOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidStopPlayingUnauthorizedSound");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didConnectToTag:(id)tag withMacAddress:(id)address withError:(id)error
{
  v18 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v18 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else if (address)
  {
    [(NSMutableDictionary *)v9 setObject:address forKey:@"CLDurianMacAddress"];
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
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDisconnectFromTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidDisconnect");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveKeyRollIndex:(unsigned int)index onTag:(id)tag
{
  v9[0] = @"CLDurianIdentifier";
  v9[1] = @"CLDurianKeyRollIndex";
  v10[0] = tag;
  v10[1] = [NSNumber numberWithUnsignedInt:*&index];
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  sub_10000EC00(__p, "DurianManagement/DidReceiveKeyRollIndex");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchConnectionState:(unint64_t)state forTag:(id)tag withError:(id)error
{
  v10[0] = @"CLDurianIdentifier";
  v10[1] = @"CLDurianConnectionState";
  v11[0] = tag;
  v11[1] = [NSNumber numberWithUnsignedInteger:state];
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_10000EC00(__p, "DurianManagement/DidFetchConnectionState");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v7];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didGetMultiStatus:(unint64_t)status forTag:(id)tag withError:(id)error
{
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else if (status)
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:status], @"CLDurianMultiStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetMultiStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveGroupRelationStatus:(unsigned __int8)status maintenanceStatus:(unsigned __int8)maintenanceStatus onTag:(id)tag withError:(id)error
{
  maintenanceStatusCopy = maintenanceStatus;
  v13[0] = tag;
  v12[0] = @"CLDurianIdentifier";
  v12[1] = @"CLDurianGroupRelation";
  v13[1] = [NSNumber numberWithUnsignedChar:status];
  v12[2] = @"CLDurianGroupMaintenance";
  v13[2] = [NSNumber numberWithUnsignedChar:maintenanceStatusCopy];
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  sub_10000EC00(__p, "DurianManagement/DidReceiveGroupStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v9];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDetectCrashOnTag:(id)tag
{
  v8 = @"CLDurianIdentifier";
  tagCopy = tag;
  v5 = [NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v8 count:1];
  sub_10000EC00(__p, "DurianManagement/DidDetectCrash");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v5];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDumpLogs:(id)logs ofType:(unint64_t)type fromTag:(id)tag withError:(id)error
{
  v14[0] = @"CLDurianIdentifier";
  v14[1] = @"CLDurianLogType";
  v15[0] = tag;
  v15[1] = [NSNumber numberWithUnsignedInteger:type];
  v10 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2]];
  v11 = v10;
  if (error)
  {
    [(NSMutableDictionary *)v10 setObject:error forKey:@"CLDurianError"];
  }

  if (logs)
  {
    [(NSMutableDictionary *)v11 setObject:logs forKey:@"CLDurianLogs"];
  }

  sub_10000EC00(__p, "DurianManagement/DidDumpLogs");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v11];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchFirmwareVersion:(id)version fromTag:(id)tag withError:(id)error
{
  v14 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v14 count:1]];
  v10 = v9;
  if (error)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!version)
    {
      goto LABEL_6;
    }

    v11 = &off_1024596D8;
    error = version;
  }

  [(NSMutableDictionary *)v9 setObject:error forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchFirmwareVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchUserStats_Deprecated:(id)deprecated fromTag:(id)tag withError:(id)error
{
  v14 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v14 count:1]];
  v10 = v9;
  if (error)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!deprecated)
    {
      goto LABEL_6;
    }

    v11 = &off_102459738;
    error = deprecated;
  }

  [(NSMutableDictionary *)v9 setObject:error forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchUserStats_Deprecated");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchUserStats:(id)stats fromTag:(id)tag withError:(id)error
{
  v14 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v14 count:1]];
  v10 = v9;
  if (error)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!stats)
    {
      goto LABEL_6;
    }

    v11 = &off_102459738;
    error = stats;
  }

  [(NSMutableDictionary *)v9 setObject:error forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchUserStats");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUnpairFromTag:(id)tag withError:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUnpair");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetTagTypeOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetTagType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetObfuscatedIdentifierOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetObfuscatedIdentifier");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetNearOwnerTimeoutOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetNearOwnerTimeout");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetWildModeConfigruationOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetWildConfiguration");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didRollWildKeyOnTag:(id)tag withError:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidRollWildKey");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchFindingCapabilitesOnTag:(id)tag withFindingCapabilities:(id)capabilities error:(id)error
{
  v14 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v14 count:1]];
  v10 = v9;
  if (error)
  {
    v11 = &off_1024596C0;
  }

  else
  {
    if (!capabilities)
    {
      goto LABEL_6;
    }

    v11 = &off_102459778;
    error = capabilities;
  }

  [(NSMutableDictionary *)v9 setObject:error forKey:*v11];
LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidFetchFindingCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didInitRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error
{
  v6 = *&status;
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidInitRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didDeinitRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error
{
  v6 = *&status;
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidDeinitRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didConfigureRangingOnTag:(id)tag withStatus:(unsigned int)status error:(id)error
{
  v6 = *&status;
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLDurianRangingStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidConfigureRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didPrepareRangingOnTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidPrepareRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didPrepareRangingOnTag:(id)tag withConnInterval:(id)interval error:(id)error
{
  v16 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v16 count:1]];
  v10 = v9;
  if (!error)
  {
    if (!interval)
    {
      v11 = [NSError alloc];
      v14 = NSLocalizedDescriptionKey;
      v15 = sub_10144F814(1uLL);
      -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [v11 initWithDomain:kCLErrorDomain code:1 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}], @"CLDurianError");
      goto LABEL_6;
    }

LABEL_5:
    [(NSMutableDictionary *)v10 setObject:interval forKey:@"CLDurianConnectionInterval"];
    goto LABEL_6;
  }

  [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  if (interval)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_10000EC00(__p, "DurianManagement/DidPrepareRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartRangingOnTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteRangingOnTag:(id)tag withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error
{
  reasonCopy = reason;
  v8 = *&status;
  v15 = @"CLDurianIdentifier";
  tagCopy = tag;
  v11 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v15 count:1]];
  v12 = v11;
  if (error)
  {
    [(NSMutableDictionary *)v11 setObject:error forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v8], @"CLDurianRangingStatus"];
  [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:reasonCopy], @"CLDurianRangingEndReason"];
  sub_10000EC00(__p, "DurianManagement/DidCompleteRanging");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveRangingErrorFromTag:(id)tag withStatus:(unsigned int)status
{
  v9[0] = @"CLDurianIdentifier";
  v9[1] = @"CLDurianRangingStatus";
  v10[0] = tag;
  v10[1] = [NSNumber numberWithUnsignedInt:*&status];
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  sub_10000EC00(__p, "DurianManagement/DidReceiveRangingError");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveRangingTimestampsFromTag:(id)tag eventStatus:(unsigned __int16)status rtt:(unint64_t)rtt tat:(unint64_t)tat cycleIndex:(unsigned __int16)index
{
  indexCopy = index;
  v16[0] = tag;
  v15[0] = @"CLDurianIdentifier";
  v15[1] = @"CLDurianRangingTimestampStatus";
  v16[1] = [NSNumber numberWithUnsignedShort:status];
  v15[2] = @"CLDurianRangingRtt";
  v16[2] = [NSNumber numberWithUnsignedLongLong:rtt];
  v15[3] = @"CLDurianRangingTat";
  v16[3] = [NSNumber numberWithUnsignedLongLong:tat];
  v15[4] = @"CLDurianRangingCycleIndex";
  v16[4] = [NSNumber numberWithUnsignedShort:indexCopy];
  v12 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5]];
  sub_10000EC00(__p, "DurianManagement/DidReceiveRangingTimestamps");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFailRangingEventCounterActionForTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFailRangingEventCounterAction");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didHaveRangingMovementOnTag:(id)tag
{
  v8 = @"CLDurianIdentifier";
  tagCopy = tag;
  v5 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v8 count:1]];
  sub_10000EC00(__p, "DurianManagement/DidHaveRangingMovement");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v5];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetAccelerometerSlopeModeConfigurationOnTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerSlopeMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetAccelerometerOrientationModeConfigurationOnTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerOrientationMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerSlopeModeConfiguration:(id)configuration onTag:(id)tag error:(id)error
{
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:configuration forKey:@"CLDurianAccelerometerSlopeModeConfigurationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetAccelerometerSlopeModeConfiguration");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerOrientationModeConfiguration:(id)configuration onTag:(id)tag error:(id)error
{
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:configuration forKey:@"CLDurianAccelerometerOrientationModeConfigurationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetAccelerometerOrientationMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccelerometerMode:(unsigned __int8)mode onTag:(id)tag error:(id)error
{
  modeCopy = mode;
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:modeCopy], @"CLDurianAccelerometerModeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidGetAccelerometerMode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchBatteryStatus:(unint64_t)status fromTag:(id)tag withError:(id)error
{
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:status], @"CLDurianBatteryStatus"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchBatteryStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didRetrievePersonalizationInformation:(id)information forTag:(id)tag error:(id)error
{
  v13 = @"CLDurianIdentifier";
  tagCopy = tag;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:information forKey:@"CLDurianPersonalizationInfo"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchPersonalizationInformation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUpdateFirmwareForTag:(id)tag error:(id)error
{
  v11 = @"CLDurianIdentifier";
  tagCopy = tag;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&tagCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUpdateFirmware");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetUnauthorizedPlaySoundRateLimitFromTag:(id)tag error:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetUnauthorizedPlaySoundRateLimit");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetBatteryStatusOnTag:(id)tag error:(id)error
{
  sub_10000EC00(__p, "DurianManagement/DidSetBatteryStatus");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:tag withError:error];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteHawkeyeTaskWithOpcode:(unsigned __int16)opcode fromDevice:(id)device withError:(id)error
{
  opcodeCopy = opcode;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v10 setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:opcodeCopy], @"CLHawkeyeTaskOpcodeKey"];
  sub_10000EC00(__p, "DurianManagement/DidCompleteHawkeyeTask");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didSetHawkeyeUTMotionConfigForDevice:(id)device withError:(id)error
{
  v10 = @"CLDurianIdentifier";
  deviceCopy = device;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v10 count:1]];
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidSetHawkeyeUTMotionConfig");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withError:error];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  [(NSMutableDictionary *)v10 setObject:power forKey:@"CLHawkeyeTxPowerKey"];
  sub_10000EC00(__p, "DurianManagement/DidFetchTxPower");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  v11 = @"CLDurianIdentifier";
  deviceCopy = device;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStopAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  v11 = @"CLDurianIdentifier";
  deviceCopy = device;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStopAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didCompleteAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  v11 = @"CLDurianIdentifier";
  deviceCopy = device;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidCompleteAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)device withError:(id)error
{
  v11 = @"CLDurianIdentifier";
  deviceCopy = device;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v11 count:1]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidStartUnauthorizedAggressiveAdvertising");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISProductDataFromDevice:(id)device productData:(id)data error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:data forKey:@"CLHawkeyeAISProductDataKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISProductData");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISManufacturerNameFromDevice:(id)device manufacturerName:(id)name error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:name forKey:@"CLHawkeyeAISManufacturerNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISManufacturerName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISModelNameFromDevice:(id)device modelName:(id)name error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:name forKey:@"CLHawkeyeAISModelNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISModelName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISModelColorCodeFromDevice:(id)device modelColorCode:(id)code error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:code forKey:@"CLHawkeyeAISModelColorCodeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISModelColorCode");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISAccessoryCategoryFromDevice:(id)device accessoryCategory:(id)category error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:category forKey:@"CLHawkeyeAISAccessoryCategoryKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISAccessoryCategory");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISAccessoryCapabilitiesFromDevice:(id)device accessoryCapabilities:(id)capabilities error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:capabilities forKey:@"CLHawkeyeAISAccessoryCapabilitiesKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISAccessoryCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISFindMyVersionFromDevice:(id)device findMyVersion:(unsigned int)version error:(id)error
{
  v6 = *&version;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLHawkeyeAISFindMyVersionKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISFindMyVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeAISBatteryTypeFromDevice:(id)device batteryType:(id)type error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:type forKey:@"CLHawkeyeAISBatteryTypeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeAISBatteryType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeSerialNumberFromDevice:(id)device serialNumber:(id)number error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:number forKey:@"CLHawkeyeSerialNumberKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeSerialNumber");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeCurrentPrimaryKeyFromDevice:(id)device currentPrimaryKey:(id)key error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:key forKey:@"CLHawkeyeCurrentPrimaryKeyKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchHawkeyeiCloudIdentifierFromDevice:(id)device iCloudIdentifier:(id)identifier error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:identifier forKey:@"CLHawkeyeiCloudIdentifierKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchHawkeyeiCloudIdentifier");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveHawkeyeDataFragment:(id)fragment withOpcode:(unsigned __int16)opcode fromDevice:(id)device error:(id)error
{
  opcodeCopy = opcode;
  v15 = @"CLDurianIdentifier";
  deviceCopy = device;
  v11 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v15 count:1]];
  v12 = v11;
  if (error)
  {
    [(NSMutableDictionary *)v11 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v11 setObject:fragment forKey:@"CLHawkeyeDataFragmentKey"];
    [(NSMutableDictionary *)v12 setObject:[NSNumber forKey:"numberWithUnsignedShort:" numberWithUnsignedShort:opcodeCopy], @"CLHawkeyeTaskOpcodeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidReceiveDataFragment");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v12];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUseLocalFirmwareAssetRequestForProductGroup:(id)group andProductNumber:(id)number withError:(id)error
{
  v11[0] = @"CLHawkeyeProductGroupKey";
  v11[1] = @"CLHawkeyeProductNumberKey";
  v12[0] = group;
  v12[1] = number;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUseLocalAssetRequest");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didUseDefaultFirmwareAssetRequestForProductGroup:(id)group andProductNumber:(id)number withError:(id)error
{
  v11[0] = @"CLHawkeyeProductGroupKey";
  v11[1] = @"CLHawkeyeProductNumberKey";
  v12[0] = group;
  v12[1] = number;
  v7 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2]];
  v8 = v7;
  if (error)
  {
    [(NSMutableDictionary *)v7 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidUseDefaultAssetRequest");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)group andProductNumber:(id)number withResult:(BOOL)result
{
  v9[0] = @"CLHawkeyeProductGroupKey";
  v9[1] = @"CLHawkeyeProductNumberKey";
  v10[0] = group;
  v10[1] = number;
  v9[2] = @"CLHawkeyeLocalFirmwareInUseResultKey";
  v10[2] = [NSNumber numberWithBool:result];
  v6 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3]];
  sub_10000EC00(__p, "DurianManagement/DidFetchWhetherLocalFirmwareAssetIsInUse");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v6];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISProductDataFromDevice:(id)device productData:(id)data error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:data forKey:@"CLAISProductDataKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISProductData");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISManufacturerNameFromDevice:(id)device manufacturerName:(id)name error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:name forKey:@"CLAISManufacturerNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISManufacturerName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISModelNameFromDevice:(id)device modelName:(id)name error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:name forKey:@"CLAISModelNameKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISModelName");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISProtocolImplementationFromDevice:(id)device protocolImplementation:(unsigned int)implementation error:(id)error
{
  v6 = *&implementation;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v6], @"CLAISProtocolImplementationKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISProtocolImplementation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISAccessoryCategoryFromDevice:(id)device accessoryCategory:(unsigned __int8)category error:(id)error
{
  categoryCopy = category;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:categoryCopy], @"CLAISAccessoryCategoryKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISAccessoryCategory");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISAccessoryCapabilitiesFromDevice:(id)device accessoryCapabilities:(id)capabilities error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:capabilities forKey:@"CLAISAccessoryCapabilitiesKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISAccessoryCapabilities");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISNetworkIDFromDevice:(id)device networkID:(unsigned __int8)d error:(id)error
{
  dCopy = d;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:dCopy], @"CLAISNetworkIDKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISNetworkID");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISFirmwareVersionFromDevice:(id)device firmwareVersion:(id)version error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:version forKey:@"CLAISFirmwareVersionKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISFirmwareVersion");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISBatteryTypeFromDevice:(id)device batteryType:(unsigned __int8)type error:(id)error
{
  typeCopy = type;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:typeCopy], @"CLAISBatteryTypeKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISBatteryType");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISBatteryLevelFromDevice:(id)device batteryLevel:(unsigned __int8)level error:(id)error
{
  levelCopy = level;
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithUnsignedChar:" numberWithUnsignedChar:levelCopy], @"CLAISBatteryLevelKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISBatteryLevel");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAISSerialNumberFromDevice:(id)device serialNumber:(id)number error:(id)error
{
  v13 = @"CLDurianIdentifier";
  deviceCopy = device;
  v9 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&deviceCopy forKeys:&v13 count:1]];
  v10 = v9;
  if (error)
  {
    [(NSMutableDictionary *)v9 setObject:error forKey:@"CLDurianError"];
  }

  else
  {
    [(NSMutableDictionary *)v9 setObject:number forKey:@"CLAISSerialNumberKey"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAISSerialNumber");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v10];
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchAccessoryInformationForDevice:(id)device ownershipType:(unint64_t)type communicationProtocol:(unint64_t)protocol accessoryTypeName:(id)name error:(id)error
{
  v17[0] = device;
  v16[0] = @"CLDurianIdentifier";
  v16[1] = @"CLAvengerAdvertisementOwnershipTypeKey";
  v17[1] = [NSNumber numberWithUnsignedInteger:type];
  v16[2] = @"CLDurianAccessoryInformationCommunicationProtocolKey";
  v16[3] = @"CLDurianAccessoryInformationTypeNameKey";
  v17[2] = [NSNumber numberWithUnsignedInteger:protocol];
  v17[3] = name;
  v12 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4]];
  v13 = v12;
  if (error)
  {
    [(NSMutableDictionary *)v12 setObject:error forKey:@"CLDurianError"];
  }

  sub_10000EC00(__p, "DurianManagement/DidFetchAccessoryInformation");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:device withPayload:v13];
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didFetchStatusOfUTEnablementRequirementsWithStatus:(id)status
{
  v7 = @"CLTAEnablementRequirementsStatusKey";
  statusCopy = status;
  v4 = [NSDictionary dictionaryWithObjects:&statusCopy forKeys:&v7 count:1];
  sub_10000EC00(__p, "DurianManagement/DidFetchStatusOfUTEnablementRequirements");
  [(CLDurianClientAdapter *)self sendMessage:__p forTag:0 withPayload:v4];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

@end