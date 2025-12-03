@interface UARPServiceUARPControllerManager
+ (id)instance;
- (BOOL)_createUARPLogPath;
- (BOOL)getAndRemoveFromUARPTransportDict:(id)dict;
- (BOOL)registerUARPService:(id)service withUARPAccessory:(id)accessory withUARPAssetID:(id)d;
- (BOOL)relayAACPUARP:(id)p uarpMsg:(id)msg error:(id *)error;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)startTapToRadar;
- (BOOL)unregisterUARPService:(id)service withUARPAccessory:(id)accessory;
- (UARPServiceUARPControllerManager)init;
- (id)_getUARPLogPath;
- (void)addUARPTransportDict:(id)dict UARPAACPSupported:(id)supported;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)setOpportunisticConnection:(BOOL)connection forAccessoryUUID:(id)d;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
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
    _getUARPLogPath = [(UARPServiceUARPControllerManager *)v2 _getUARPLogPath];
    uarpLogPath = v2->_uarpLogPath;
    v2->_uarpLogPath = _getUARPLogPath;

    [(UARPServiceUARPControllerManager *)v2 _createUARPLogPath];
    v9 = objc_alloc_init(NSMutableDictionary);
    uarpAACPTransportAvailability = v2->_uarpAACPTransportAvailability;
    v2->_uarpAACPTransportAvailability = v9;

    v2->_tapToRadarIsOngoing = 0;
  }

  return v2;
}

- (BOOL)registerUARPService:(id)service withUARPAccessory:(id)accessory withUARPAssetID:(id)d
{
  serviceCopy = service;
  accessoryCopy = accessory;
  dCopy = d;
  uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
  v12 = [uarpController addAccessory:accessoryCopy assetID:dCopy];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079B3C();
    }

    goto LABEL_8;
  }

  uarpController2 = [(UARPServiceUARPControllerManager *)self uarpController];
  v14 = [uarpController2 accessoryReachable:accessoryCopy];

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
  uuid = [accessoryCopy uuid];
  [(NSMutableDictionary *)uarpAccessoryUARPServiceMap setObject:serviceCopy forKey:uuid];

  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)unregisterUARPService:(id)service withUARPAccessory:(id)accessory
{
  serviceCopy = service;
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
    v9 = [uarpController accessoryUnreachable:accessoryCopy];

    if ((v9 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079C30();
    }

    uarpController2 = [(UARPServiceUARPControllerManager *)self uarpController];
    v11 = [uarpController2 removeAccessory:accessoryCopy];

    if ((v11 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079CA0();
    }

    uarpAccessoryUARPServiceMap = self->uarpAccessoryUARPServiceMap;
    uuid = [accessoryCopy uuid];
    [(NSMutableDictionary *)uarpAccessoryUARPServiceMap removeObjectForKey:uuid];
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

- (void)addUARPTransportDict:(id)dict UARPAACPSupported:(id)supported
{
  dictCopy = dict;
  supportedCopy = supported;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100079DC0(v8, dictCopy);
  }

  uarpAACPTransportAvailability = [(UARPServiceUARPControllerManager *)self uarpAACPTransportAvailability];
  [uarpAACPTransportAvailability setObject:supportedCopy forKey:dictCopy];
}

- (BOOL)getAndRemoveFromUARPTransportDict:(id)dict
{
  dictCopy = dict;
  v5 = [(NSMutableDictionary *)self->_uarpAACPTransportAvailability objectForKey:dictCopy];

  v6 = qword_1000DDBC8;
  v7 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_100079E5C(v6, dictCopy);
    }

    uarpAACPTransportAvailability = [(UARPServiceUARPControllerManager *)self uarpAACPTransportAvailability];
    v9 = [uarpAACPTransportAvailability objectForKey:dictCopy];
    v10 = v9 != 0;

    [(NSMutableDictionary *)self->_uarpAACPTransportAvailability removeObjectForKey:dictCopy];
  }

  else
  {
    if (v7)
    {
      sub_100079EF8(v6, dictCopy);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)relayAACPUARP:(id)p uarpMsg:(id)msg error:(id *)error
{
  pCopy = p;
  msgCopy = msg;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100079F94(v9, pCopy, msgCopy);
  }

  v10 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:pCopy];
  [v10 recvDataOverAACP:msgCopy];

  return 1;
}

- (void)setOpportunisticConnection:(BOOL)connection forAccessoryUUID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = connectionCopy;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setOpportunisticConnection - isOpportunistic %u, uuid %@", v10, 0x12u);
  }

  v8 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:dCopy];
  v9 = v8;
  if (connectionCopy)
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
    uarpLogPath = [(UARPServiceUARPControllerManager *)self uarpLogPath];
    v11 = 138412290;
    v12 = uarpLogPath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startTapToRadar - URL %@", &v11, 0xCu);
  }

  self->_tapToRadarIsOngoing = 1;
  uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
  uarpLogPath2 = [(UARPServiceUARPControllerManager *)self uarpLogPath];
  v8 = [NSURL fileURLWithPath:uarpLogPath2 isDirectory:1];
  v9 = [uarpController startTapToRadar:v8];

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
  uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
  [uarpController stopTapToRadar];
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007A058(accessoryCopy, v9, msgCopy);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057AC8;
  block[3] = &unk_1000BD880;
  block[4] = self;
  v14 = accessoryCopy;
  v15 = msgCopy;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(&_dispatch_main_q, block);

  return 1;
}

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = dCopy;
    v19 = 2112;
    v20 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "assetAvailablityUpdateForAccessoryID - accessory:%@ assetID:%@", buf, 0x16u);
  }

  if ([iDCopy updateAvailabilityStatus] == 4)
  {
    uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
    v10 = [uarpController downloadAvailableFirmwareUpdate:dCopy assetID:iDCopy withUserIntent:1];

    if ((v10 & 1) == 0 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A13C();
    }
  }

  else if ([iDCopy updateAvailabilityStatus] == 3)
  {
    uarpController2 = [(UARPServiceUARPControllerManager *)self uarpController];
    v16 = dCopy;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    v13 = [uarpController2 stageFirmwareUpdateOnAccessoryList:v12 withUserIntent:1];

    if (v13)
    {
      uuid = [dCopy uuid];
      v15 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:uuid];
      [v15 incOpportunisticConnection];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A0FC();
    }
  }
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138413058;
    v13 = progressCopy;
    v14 = 2112;
    v15 = dCopy;
    v16 = 2048;
    sentCopy = sent;
    v18 = 2048;
    totalCopy = total;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "firmwareStagingProgress - accessory:%@ assetID:%@ %lu/%lu", &v12, 0x2Au);
  }
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138412802;
    v16 = completeCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2080;
    v20 = UARPFirmwareStagingCompletionStatusToString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "firmwareStagingComplete - accessory:%@ assetID:%@ status:%s", buf, 0x20u);
  }

  if (!status)
  {
    uarpController = [(UARPServiceUARPControllerManager *)self uarpController];
    v14 = completeCopy;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [uarpController applyStagedFirmwareOnAccessoryList:v13 withUserIntent:1];
  }
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v10 = 138412546;
    v11 = completeCopy;
    v12 = 2080;
    v13 = UARPFirmwareApplicationStatusToString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stagedFirmwareApplicationComplete - accessory:%@ status:%s", &v10, 0x16u);
  }

  uuid = [completeCopy uuid];
  v9 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:uuid];
  [v9 decOpportunisticConnection];
}

- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    dCopy = d;
    uuid = [completeCopy uuid];
    v13 = [dCopy tag];

    v16 = 138413058;
    v17 = uuid;
    v18 = 1024;
    v13Tag = [v13 tag];
    v20 = 2080;
    v21 = UARPFirmwareStagingCompletionStatusToString();
    v22 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "assetSolicitationComplete: Accessory %@ returning asset tag 0x%08x status %s (%lu)", &v16, 0x26u);
  }

  uuid2 = [completeCopy uuid];
  v15 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:uuid2];
  [v15 assetSolicitationComplete];
}

- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  errorCopy = error;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "queryCompleteForAccessory: HW Fusing type updated for accessory %@", &v17, 0xCu);
  }

  uuid = [accessoryCopy uuid];
  v13 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:uuid];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    uuid2 = [accessoryCopy uuid];
    v16 = [(UARPServiceUARPControllerManager *)self uarpServiceForAccessoryUuid:uuid2];
    [v16 queryCompleteForAccessory:accessoryCopy hwFusingType:typeCopy error:errorCopy];
  }
}

@end