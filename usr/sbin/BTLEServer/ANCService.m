@interface ANCService
- (ANCService)init;
- (id)appAttributeIDToString:(unsigned __int8)a3;
- (id)categoryIDToString:(unsigned __int8)a3;
- (id)eventFlagsToString:(unsigned __int8)a3;
- (id)eventIDToString:(unsigned __int8)a3;
- (id)notificationAttributeIDToString:(unsigned __int8)a3;
- (id)notificationForAlert:(id)a3;
- (int64_t)handleControlPointWrite:(id)a3 responseData:(id *)a4;
- (int64_t)handleGetAppAttributesCommand:(id)a3 responseData:(id *)a4;
- (int64_t)handleGetNotificationAttributesCommand:(id)a3 responseData:(id *)a4;
- (int64_t)handlePerformNotificationActionCommand:(id)a3;
- (void)alertAdded:(id)a3 isPreExisting:(BOOL)a4;
- (void)alertModified:(id)a3;
- (void)alertRemoved:(id)a3;
- (void)dealloc;
- (void)handleWriteRequests:(id)a3;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUpdateANCSAuthorization:(BOOL)a5;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)startNotifications;
- (void)stopNotifications;
- (void)updateDataSource:(id)a3 central:(id)a4;
- (void)updateNotificationSource:(unsigned __int8)a3 notification:(id)a4 sourceFlags:(unsigned __int8)a5 centrals:(id)a6;
@end

@implementation ANCService

- (ANCService)init
{
  v25.receiver = self;
  v25.super_class = ANCService;
  v2 = [(ANCService *)&v25 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDANCSControlPointCharacteristicString];
    v5 = [v3 initWithType:v4 properties:8 value:0 permissions:34];
    controlPointCharacteristic = v2->_controlPointCharacteristic;
    v2->_controlPointCharacteristic = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDANCSNotificationSourceCharacteristicString];
    v9 = [v7 initWithType:v8 properties:1040 value:0 permissions:0];
    notificationSourceCharacteristic = v2->_notificationSourceCharacteristic;
    v2->_notificationSourceCharacteristic = v9;

    v11 = [CBMutableCharacteristic alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDANCSDataSourceCharacteristicString];
    v13 = [v11 initWithType:v12 properties:1040 value:0 permissions:0];
    dataSourceCharacteristic = v2->_dataSourceCharacteristic;
    v2->_dataSourceCharacteristic = v13;

    v15 = [CBMutableService alloc];
    v16 = [CBUUID UUIDWithString:CBUUIDAppleNotificationCenterServiceString];
    v17 = [v15 initWithType:v16 primary:1];
    [(ServerService *)v2 setService:v17];

    v26[0] = v2->_controlPointCharacteristic;
    v26[1] = v2->_notificationSourceCharacteristic;
    v26[2] = v2->_dataSourceCharacteristic;
    v18 = [NSArray arrayWithObjects:v26 count:3];
    v19 = [(ServerService *)v2 service];
    [v19 setCharacteristics:v18];

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v21 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v22 = dispatch_queue_create([v21 UTF8String], v20);
    queue = v2->_queue;
    v2->_queue = v22;
  }

  return v2;
}

- (void)dealloc
{
  [(ANCService *)self stopNotifications];
  v3.receiver = self;
  v3.super_class = ANCService;
  [(ANCService *)&v3 dealloc];
}

- (void)handleWriteRequests:(id)a3
{
  v4 = a3;
  v5 = [CBATTRequest consolidatedDataForRequests:v4];
  v6 = [v4 firstObject];
  v7 = [v6 characteristic];
  v8 = [(ANCService *)self controlPointCharacteristic];

  if (v7 == v8)
  {
    v17 = 0;
    v10 = [(ANCService *)self handleControlPointWrite:v5 responseData:&v17];
    v9 = v17;
  }

  else
  {
    v9 = 0;
    v10 = 10;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002569C;
  block[3] = &unk_1000BD858;
  block[4] = self;
  v14 = v4;
  v15 = v9;
  v16 = v10;
  v11 = v9;
  v12 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

- (int64_t)handleControlPointWrite:(id)a3 responseData:(id *)a4
{
  v6 = a3;
  v7 = [DataInputStream inputStreamWithData:v6 byteOrder:1];
  v12 = 0;
  if (![v7 readUint8:&v12])
  {
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v8 = [(ANCService *)self handlePerformNotificationActionCommand:v7];
  }

  else if (v12 == 1)
  {
    v8 = [(ANCService *)self handleGetAppAttributesCommand:v7 responseData:a4];
  }

  else
  {
    if (v12)
    {
      v9 = 160;
      goto LABEL_12;
    }

    v8 = [(ANCService *)self handleGetNotificationAttributesCommand:v7 responseData:a4];
  }

  v9 = v8;
  if (v8 == 161)
  {
LABEL_9:
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100074154(v6, v10);
    }

    v9 = 161;
  }

LABEL_12:

  return v9;
}

- (int64_t)handleGetNotificationAttributesCommand:(id)a3 responseData:(id *)a4
{
  v6 = a3;
  v16 = 0;
  if (![v6 readUint32:&v16])
  {
    v13 = 161;
    goto LABEL_19;
  }

  v7 = [(ANCService *)self notificationForUID:v16];
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Get Notification Attributes command for notification #%u", buf, 8u);
  }

  if (!v7)
  {
    v13 = 162;
    goto LABEL_18;
  }

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:0];
  [v9 writeUint32:{objc_msgSend(v7, "UID")}];
  v15 = 0;
  if (![v6 readUint8:&v15])
  {
LABEL_14:
    *a4 = [v9 data];
    [v7 setIsDirty:0];
    v13 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    *buf = 0;
    v10 = v15;
    if (v15 - 1 <= 2)
    {
      break;
    }

    v11 = 512;
LABEL_13:
    *buf = v11;
    v12 = [ANCService responseForNotificationAttributeID:"responseForNotificationAttributeID:maxLength:notification:" maxLength:v10 notification:?];
    [v9 writeData:v12];

    if (([v6 readUint8:&v15] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v6 readUint16:buf])
  {
    if (*buf >= 0x200u)
    {
      v11 = 512;
    }

    else
    {
      v11 = *buf;
    }

    v10 = v15;
    goto LABEL_13;
  }

  v13 = 161;
LABEL_15:

LABEL_18:
LABEL_19:

  return v13;
}

- (int64_t)handleGetAppAttributesCommand:(id)a3 responseData:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableString string];
  if ([v6 readString:v7])
  {
    v8 = [DataOutputStream outputStreamWithByteOrder:1];
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received Get App Attributes command for identifier %@", &v13, 0xCu);
    }

    [v8 writeUint8:1];
    [v8 writeString:v7];
    LOBYTE(v13) = 0;
    if ([v6 readUint8:&v13])
    {
      do
      {
        v10 = [(ANCService *)self responseForAppAttributeID:v13 appIdentifier:v7];
        [v8 writeData:v10];
      }

      while (([v6 readUint8:&v13] & 1) != 0);
    }

    *a4 = [v8 data];

    v11 = 0;
  }

  else
  {
    v11 = 161;
  }

  return v11;
}

- (int64_t)handlePerformNotificationActionCommand:(id)a3
{
  v4 = a3;
  v14 = 0;
  v13 = 0;
  if ([v4 readUint32:&v14] && objc_msgSend(v4, "readUint8:", &v13))
  {
    v5 = [(ANCService *)self notificationForUID:v14];
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received Perform Notification Action command for notification #%u", buf, 8u);
    }

    if (!v5)
    {
      v9 = 162;
      goto LABEL_14;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        v7 = [v5 alert];
        v8 = [v7 performNegativeAction];

        if (v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v10 = [v5 alert];
      v11 = [v10 performPositiveAction];

      if (v11)
      {
LABEL_9:
        v9 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v9 = 163;
    goto LABEL_14;
  }

  v9 = 161;
LABEL_15:

  return v9;
}

- (void)updateNotificationSource:(unsigned __int8)a3 notification:(id)a4 sourceFlags:(unsigned __int8)a5 centrals:(id)a6
{
  v39 = a5;
  v40 = a3;
  v8 = a4;
  v9 = a6;
  v42 = [DataOutputStream outputStreamWithByteOrder:1];
  v43 = v8;
  v45 = [v8 alert];
  v10 = [v45 categoryID];
  v11 = [(ANCService *)self alertSource];
  v41 = v10;
  v44 = [v11 alertsForCategoryID:v10];

  v46 = objc_alloc_init(NSMutableSet);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    v15 = 1 << v10;
    do
    {
      v16 = 0;
      v17 = v46;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v51 + 1) + 8 * v16);
        v19 = [(ANCService *)self activeCentralsInterestedCategories];
        v20 = [v19 objectForKeyedSubscript:v18];
        if (([v20 unsignedIntValue] & v15) != 0)
        {
        }

        else
        {
          v21 = [v45 appIdentifier];
          v22 = [v21 hasPrefix:@"com.starkey."];

          v17 = v46;
          if (!v22)
          {
            goto LABEL_10;
          }
        }

        [v17 addObject:v18];
LABEL_10:
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v13);
  }

  v23 = v46;
  v25 = v42;
  v24 = v43;
  if ([v46 count])
  {
    v26 = [v45 isSilent] | v39;
    if ([v45 isImportant])
    {
      v26 = v39 & 0xFC | 2;
    }

    if ([v45 hasPositiveAction])
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27 | v26;
    if ([v45 hasNegativeAction])
    {
      v29 = 16;
    }

    else
    {
      v29 = 0;
    }

    if ([v45 hasExtraContent])
    {
      v30 = 32;
    }

    else
    {
      v30 = 0;
    }

    v31 = v29 | v30;
    [v42 writeUint8:v40];
    [v42 writeUint8:v28 | v31];
    [v42 writeUint8:v41];
    [v42 writeUint8:{objc_msgSend(v44, "count")}];
    [v42 writeUint32:{objc_msgSend(v43, "UID")}];
    v32 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [(ANCService *)self eventIDToString:v40];
      v35 = [(ANCService *)self categoryIDToString:v41];
      v36 = [v43 UID];
      v37 = [(ANCService *)self eventFlagsToString:v28 | v31];
      v38 = [v45 appIdentifier];
      *buf = 138413314;
      v56 = v34;
      v57 = 2112;
      v58 = v35;
      v59 = 1024;
      v60 = v36;
      v24 = v43;
      v61 = 2112;
      v62 = v37;
      v63 = 2112;
      v64 = v38;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ %@ notification #%u (%@) from %@", buf, 0x30u);

      v25 = v42;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002627C;
    block[3] = &unk_1000BD880;
    block[4] = self;
    v49 = v25;
    v23 = v46;
    v50 = v46;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateDataSource:(id)a3 central:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = 0;
    do
    {
      v9 = ([v6 length] - v8);
      v10 = [v7 maximumUpdateValueLength];
      if (v9 >= v10)
      {
        v9 = v10;
      }

      v11 = [v6 subdataWithRange:{v8, v9}];
      v12 = [(ANCService *)self dataSourceCharacteristic];
      v14 = v7;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [(ServerService *)self updateValue:v11 forCharacteristic:v12 onSubscribedCentrals:v13];

      v8 = &v8[v9];
    }

    while (v8 != [v6 length]);
  }
}

- (void)startNotifications
{
  [(ANCService *)self setUidGenerator:0];
  v3 = +[NSMutableDictionary dictionary];
  [(ANCService *)self setUidMap:v3];

  v4 = +[NSMutableDictionary dictionary];
  [(ANCService *)self setAlertMap:v4];

  v5 = [ANCAlertSource alloc];
  v7 = [(ANCService *)self queue];
  v6 = [(ANCAlertSource *)v5 initWithDelegate:self queue:v7];
  [(ANCService *)self setAlertSource:v6];
}

- (void)stopNotifications
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v6[0] = 67109120;
    v6[1] = [(ServerService *)self restrictedMode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restrictedMode : %d", v6, 8u);
  }

  v5 = [(ANCService *)self alertSource];
  [v5 invalidate];

  [(ANCService *)self setAlertSource:0];
  [(ANCService *)self setAlertMap:0];
  [(ANCService *)self setUidMap:0];
  [(ANCService *)self setUidGenerator:0];
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v4 = a4;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 central];
        v13 = [v12 hasTag:@"ANCSAuthorized"];

        if (v13)
        {
          [v5 addObject:v11];
        }

        else
        {
          v14 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_1000741CC(v24, v14, v11, &v25);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000268B4;
          block[3] = &unk_1000BD8A8;
          block[4] = self;
          block[5] = v11;
          dispatch_async(&_dispatch_main_q, block);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = [(ANCService *)self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000268C4;
    v17[3] = &unk_1000BD8A8;
    v17[4] = self;
    v18 = v5;
    dispatch_async(v15, v17);
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(ANCService *)self notificationSourceCharacteristic];

  if (v9 == v8)
  {
    if ([v7 hasTag:@"IsHearingAid"])
    {
      v10 = 4110;
    }

    else
    {
      v10 = -1;
    }

    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v7 identifier];
      *buf = 138412546;
      v39 = v13;
      v40 = 1024;
      LODWORD(v41) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Central %@ subscribed to NotificationSourceCharacteristic, interestedCategory %x", buf, 0x12u);
    }

    v14 = [(ANCService *)self notificationSourceCharacteristic];
    v15 = [v14 subscribedCentrals];
    v16 = [v15 count];

    if (v16 == 1)
    {
      v17 = objc_alloc_init(NSMutableSet);
      [(ANCService *)self setActiveCentrals:v17];

      v18 = objc_alloc_init(NSMutableDictionary);
      [(ANCService *)self setActiveCentralsInterestedCategories:v18];

      if ([v7 hasTag:@"ANCSAuthorized"])
      {
        v19 = [(ANCService *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100026C84;
        block[3] = &unk_1000BD8D0;
        block[4] = self;
        v36 = v7;
        v37 = v10;
        dispatch_sync(v19, block);
      }

      [(ANCService *)self startNotifications];
    }

    else
    {
      v20 = [(ANCService *)self queue];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100026D14;
      v31 = &unk_1000BD8D0;
      v32 = v7;
      v33 = self;
      v34 = v10;
      dispatch_sync(v20, &v28);
    }

    if (([v7 hasTag:{@"IsHearingAid", v28, v29, v30, v31}] & 1) == 0)
    {
      v21 = +[NSNotificationCenter defaultCenter];
      [v21 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v7];
    }

    v22 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [(ANCService *)self activeCentrals];
      v25 = [v24 count];
      *buf = 138412546;
      v39 = v7;
      v40 = 2048;
      v41 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "After subscription from %@ for ANCS, active centrals count %ld", buf, 0x16u);
    }

    v26 = +[BTLEXpcServer instance];
    v27 = [v7 identifier];
    [v26 sendANCSNotificationSourceRegisteredMsg:v27];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(ANCService *)self notificationSourceCharacteristic];

  if (v9 == v8)
  {
    v10 = [(ANCService *)self notificationSourceCharacteristic];
    v11 = [v10 subscribedCentrals];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(ANCService *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002715C;
      block[3] = &unk_1000BD8A8;
      block[4] = self;
      v20 = v7;
      dispatch_sync(v13, block);

      v14 = v20;
    }

    else
    {
      [(ANCService *)self stopNotifications];
      v14 = [(ANCService *)self queue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100027118;
      v21[3] = &unk_1000BD398;
      v21[4] = self;
      dispatch_sync(v14, v21);
    }

    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(ANCService *)self activeCentrals];
      v18 = [v17 count];
      *buf = 138412546;
      v23 = v7;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Central %@ unsubscribed from ANCS. Active centrals count %ld", buf, 0x16u);
    }
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUpdateANCSAuthorization:(BOOL)a5
{
  v7 = a4;
  v8 = [(ANCService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027288;
  block[3] = &unk_1000BD920;
  v13 = a5;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_sync(v8, block);
}

- (void)alertAdded:(id)a3 isPreExisting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [ANCNotification alloc];
  v8 = [(ANCService *)self uidGenerator];
  [(ANCService *)self setUidGenerator:(v8 + 1)];
  v14 = [(ANCNotification *)v7 initWithUID:v8 alert:v6];

  v9 = [(ANCService *)self uidMap];
  v10 = [NSNumber numberWithUnsignedInt:[(ANCNotification *)v14 UID]];
  [v9 setObject:v14 forKeyedSubscript:v10];

  v11 = [(ANCService *)self alertMap];
  v12 = [(ANCNotification *)v14 alert];
  [v11 setObject:v14 forKeyedSubscript:v12];

  if (v4)
  {
    v13 = 5;
  }

  else
  {
    v13 = 0;
  }

  [(ANCService *)self updateNotificationSource:0 notification:v14 sourceFlags:v13];
}

- (void)alertModified:(id)a3
{
  v4 = [(ANCService *)self notificationForAlert:a3];
  if (([v4 isDirty] & 1) == 0)
  {
    [v4 setIsDirty:1];
    [(ANCService *)self updateNotificationSource:1 notification:v4 sourceFlags:0];
  }
}

- (void)alertRemoved:(id)a3
{
  v8 = [(ANCService *)self notificationForAlert:a3];
  [(ANCService *)self updateNotificationSource:2 notification:v8 sourceFlags:0];
  v4 = [(ANCService *)self alertMap];
  v5 = [v8 alert];
  [v4 removeObjectForKey:v5];

  v6 = [(ANCService *)self uidMap];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 UID]);
  [v6 removeObjectForKey:v7];
}

- (id)notificationForAlert:(id)a3
{
  v4 = a3;
  v5 = [(ANCService *)self alertMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)eventIDToString:(unsigned __int8)a3
{
  v3 = @"Added";
  if (a3 == 1)
  {
    v3 = @"Modified";
  }

  if (a3 == 2)
  {
    return @"Removed";
  }

  else
  {
    return v3;
  }
}

- (id)categoryIDToString:(unsigned __int8)a3
{
  if ((a3 - 1) > 0xB)
  {
    return @"Other";
  }

  else
  {
    return *(&off_1000BD940 + (a3 - 1));
  }
}

- (id)eventFlagsToString:(unsigned __int8)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  for (i = 0; i != 8; ++i)
  {
    if (((1 << i) & v3) != 0)
    {
      v6 = (1 << i);
      if (v6 == 32)
      {
        v7 = @"E";
      }

      else
      {
        v7 = 0;
      }

      if (v6 == 16)
      {
        v7 = @"✗";
      }

      if (v6 == 8)
      {
        v7 = @"✓";
      }

      if (v6 == 4)
      {
        v8 = @"P";
      }

      else
      {
        v8 = 0;
      }

      if (v6 == 2)
      {
        v8 = @"I";
      }

      if (v6 == 1)
      {
        v8 = @"S";
      }

      if ((1 << i) <= 7u)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      if ([v4 length])
      {
        [v4 appendString:@"|"];
      }

      [v4 appendString:v9];
    }
  }

  return v4;
}

- (id)notificationAttributeIDToString:(unsigned __int8)a3
{
  if (a3 >= 8u)
  {
    v4 = [NSString stringWithFormat:@"Unknown (%lu)", a3];
  }

  else
  {
    v4 = *(&off_1000BD9A0 + a3);
  }

  return v4;
}

- (id)appAttributeIDToString:(unsigned __int8)a3
{
  if (a3)
  {
    v4 = [NSString stringWithFormat:@"Unknown (%lu)", a3];
  }

  else
  {
    v4 = @"Display Name";
  }

  return v4;
}

@end