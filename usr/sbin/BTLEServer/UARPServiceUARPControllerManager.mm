@interface UARPServiceUARPControllerManager
+ (id)instance;
- (BOOL)_createUARPLogPath;
- (BOOL)getAndRemoveFromUARPTransportDict:(id)a3;
- (BOOL)registerUARPService:(id)a3 withUARPAccessory:(id)a4 withUARPAssetID:(id)a5;
- (BOOL)relayAACPUARP:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (BOOL)startTapToRadar;
- (BOOL)unregisterUARPService:(id)a3 withUARPAccessory:(id)a4;
- (UARPServiceUARPControllerManager)init;
- (id)_getUARPLogPath;
- (void)addUARPTransportDict:(id)a3 UARPAACPSupported:(id)a4;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)setOpportunisticConnection:(BOOL)a3 forAccessoryUUID:(id)a4;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)stopTapToRadar;
@end

@implementation UARPServiceUARPControllerManager

+ (id)instance
{
  if (qword_1000DDBA0 != -1)
  {
    sub_100079B28();
  }

  v3 = qword_1000DDB98;

  return v3;
}

- (UARPServiceUARPControllerManager)init
{
  v12.receiver = self;
  v12.super_class = UARPServiceUARPControllerManager;
  v2 = [(UARPServiceUARPControllerManager *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    uarpAccessoryUARPServiceMap = v2->uarpAccessoryUARPServiceMap;
    v2->uarpAccessoryUARPServiceMap = v3;

    v5 = objc_opt_new();
    uarpController = v2->_uarpController;
    v2->_uarpController = v5;

    [(UARPController *)v2->_uarpController setDelegate:v2];
    [(UARPController *)v2->_uarpController startPersonalizationHelperService:@"com.apple.uarppersonalization.btleserver" entitlement:@"com.apple.uarppersonalization.btleserver"];
    v7 = [(UARPServiceUARPControllerManager *)v2 _getUARPLogPath];
    uarpLogPath = v2->_uarpLogPath;
    v2->_uarpLogPath = v7;

    [(UARPServiceUARPControllerManager *)v2 _createUARPLogPath];
    v9 = objc_alloc_init(NSMutableDictionary);
    uarpAACPTransportAvailability = v2->_uarpAACPTransportAvailability;
    v2->_uarpAACPTransportAvailability = v9;

    v2->_tapToRadarIsOngoing = 0;
  }

  return v2;
}

- (BOOL)registerUARPService:(id)a3 withUARPAccessory:(id)a4 withUARPAssetID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPServiceUARPControllerManager *)self uarpController];
  v12 = [v11 addAccessory:v9 assetID:v10];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079B3C();
    }

    goto LABEL_8;
  }

  v13 = [(UARPServiceUARPControllerManager *)self uarpController];
  v14 = [v13 accessoryReachable:v9];

  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079BC0();
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  uarpAccessoryUARPServiceMap = self->uarpAccessoryUARPServiceMap;
  v16 = [v9 uuid];
  [(NSMutableDictionary *)uarpAccessoryUARPServiceMap setObject:v8 forKey:v16];

  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)unregisterUARPService:(id)a3 withUARPAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(UARPServiceUARPControllerManager *)self uarpController];
    v9 = [v8 accessoryUnreachable:v7];

    if ((v9 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079C30();
    }

    v10 = [(UARPServiceUARPControllerManager *)self uarpController];
    v11 = [v10 removeAccessory:v7];

    if ((v11 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079CA0();
    }

    uarpAccessoryUARPServiceMap = self->uarpAccessoryUARPServiceMap;
    v13 = [v7 uuid];
    [(NSMutableDictionary *)uarpAccessoryUARPServiceMap removeObjectForKey:v13];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100079D10();
  }

  return 1;
}

- (id)_getUARPLogPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [NSString alloc];
  v4 = [v2 objectAtIndexedSubscript:0];
  v5 = [v3 initWithFormat:@"%@/Logs/Bluetooth/UARPLogs", v4];

  return v5;
}

- (BOOL)_createUARPLogPath
{
  v3 = +[NSFileManager defaultManager];
  uarpLogPath = self->_uarpLogPath;
  v7 = 0;
  [v3 createDirectoryAtPath:uarpLogPath withIntermediateDirectories:1 attributes:0 error:&v7];
  v5 = v7;

  if (v5 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100079D50();
  }

  return v5 == 0;
}

- (void)addUARPTransportDict:(id)a3 UARPAACPSupported:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100079DC0(v8, v6);
  }

  v9 = [(UARPServiceUARPControllerManager *)self uarpAACPTransportAvailability];
  [v9 setObject:v7 forKey:v6];
}

- (BOOL)getAndRemoveFromUARPTransportDict:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_uarpAACPTransportAvailability objectForKey:v4];

  v6 = qword_1000DDBC8;
  v7 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_100079E5C(v6, v4);
    }

    v8 = [(UARPServiceUARPControllerManager *)self uarpAACPTransportAvailability];
    v9 = [v8 objectForKey:v4];
    v10 = v9 != 0;

    [(NSMutableDictionary *)self->_uarpAACPTransportAvailability removeObjectForKey:v4];
  }

  else
  {
    if (v7)
    {
      sub_100079EF8(v6, v4);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)relayAACPUARP:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100079F94(v9, v7, v8);
  }

  v10 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v7];
  [v10 recvDataOverAACP:v8];

  return 1;
}

- (void)setOpportunisticConnection:(BOOL)a3 forAccessoryUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setOpportunisticConnection - isOpportunistic %u, uuid %@", v10, 0x12u);
  }

  v8 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v6];
  v9 = v8;
  if (v4)
  {
    [v8 decOpportunisticConnection];
  }

  else
  {
    [v8 incOpportunisticConnection];
  }
}

- (BOOL)startTapToRadar
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(UARPServiceUARPControllerManager *)self uarpLogPath];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startTapToRadar - URL %@", &v11, 0xCu);
  }

  self->_tapToRadarIsOngoing = 1;
  v6 = [(UARPServiceUARPControllerManager *)self uarpController];
  v7 = [(UARPServiceUARPControllerManager *)self uarpLogPath];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
  v9 = [v6 startTapToRadar:v8];

  return v9;
}

- (void)stopTapToRadar
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopTapToRadar", v5, 2u);
  }

  self->_tapToRadarIsOngoing = 0;
  v4 = [(UARPServiceUARPControllerManager *)self uarpController];
  [v4 stopTapToRadar];
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007A058(v7, v9, v8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057AC8;
  block[3] = &unk_1000BD880;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);

  return 1;
}

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "assetAvailablityUpdateForAccessoryID - accessory:%@ assetID:%@", buf, 0x16u);
  }

  if ([v7 updateAvailabilityStatus] == 4)
  {
    v9 = [(UARPServiceUARPControllerManager *)self uarpController];
    v10 = [v9 downloadAvailableFirmwareUpdate:v6 assetID:v7 withUserIntent:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A13C();
    }
  }

  else if ([v7 updateAvailabilityStatus] == 3)
  {
    v11 = [(UARPServiceUARPControllerManager *)self uarpController];
    v16 = v6;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    v13 = [v11 stageFirmwareUpdateOnAccessoryList:v12 withUserIntent:1];

    if (v13)
    {
      v14 = [v6 uuid];
      v15 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v14];
      [v15 incOpportunisticConnection];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A0FC();
    }
  }
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    v17 = a5;
    v18 = 2048;
    v19 = a6;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "firmwareStagingProgress - accessory:%@ assetID:%@ %lu/%lu", &v12, 0x2Au);
  }
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2080;
    v20 = UARPFirmwareStagingCompletionStatusToString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "firmwareStagingComplete - accessory:%@ assetID:%@ status:%s", buf, 0x20u);
  }

  if (!a5)
  {
    v12 = [(UARPServiceUARPControllerManager *)self uarpController];
    v14 = v8;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v12 applyStagedFirmwareOnAccessoryList:v13 withUserIntent:1];
  }
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v5 = a3;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v10 = 138412546;
    v11 = v5;
    v12 = 2080;
    v13 = UARPFirmwareApplicationStatusToString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stagedFirmwareApplicationComplete - accessory:%@ status:%s", &v10, 0x16u);
  }

  v8 = [v5 uuid];
  v9 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v8];
  [v9 decOpportunisticConnection];
}

- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = a4;
    v12 = [v8 uuid];
    v13 = [v11 tag];

    v16 = 138413058;
    v17 = v12;
    v18 = 1024;
    v19 = [v13 tag];
    v20 = 2080;
    v21 = UARPFirmwareStagingCompletionStatusToString();
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "assetSolicitationComplete: Accessory %@ returning asset tag 0x%08x status %s (%lu)", &v16, 0x26u);
  }

  v14 = [v8 uuid];
  v15 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v14];
  [v15 assetSolicitationComplete];
}

- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "queryCompleteForAccessory: HW Fusing type updated for accessory %@", &v17, 0xCu);
  }

  v12 = [v8 uuid];
  v13 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v12];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [v8 uuid];
    v16 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:v15];
    [v16 queryCompleteForAccessory:v8 hwFusingType:v9 error:v10];
  }
}

@end