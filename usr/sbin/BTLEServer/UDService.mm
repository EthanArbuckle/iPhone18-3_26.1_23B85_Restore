@interface UDService
- (BOOL)consentForUserIndex:(unsigned __int8)index withConsentCode:(unsigned __int16)code;
- (BOOL)deleteCurrentUser;
- (BOOL)registerNewUser;
- (UDService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)getDescriptionForResponseValue:(unsigned __int8)value;
- (void)controlPointTimeout;
- (void)extractControlPointResponse;
- (void)extractDatabaseChangeIncrement;
- (void)extractRegisteredUserData;
- (void)extractUserIndex;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation UDService

- (UDService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = UDService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setPriority:6];
    [(ClientService *)v6 setStartTimeout:0.0];
    v6->_isConsentInitiated = 0;
  }

  return v6;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = UDService;
  [(ClientService *)&v12 start];
  self->_userIndex = -1;
  self->_consentCode = -1;
  self->_isControlPointOpInProgress = 0;
  self->_currentRequestedOpCode = -1;
  v3 = objc_alloc_init(NSMutableData);
  registeredUserData = self->_registeredUserData;
  self->_registeredUserData = v3;

  v5 = [CBUUID UUIDWithString:CBUUIDUserControlPointCharacteristicString];
  v13[0] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDDatabaseChangeIncrementCharacteristicString];
  v13[1] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDUserIndexCharacteristicString];
  v13[2] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDRegisteredUserCharacteristicString];
  v13[3] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:4];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v9 forService:service];

  [(UDService *)self setControlPointTimer:0];
}

- (void)stop
{
  controlPointTimer = [(UDService *)self controlPointTimer];
  [controlPointTimer invalidate];

  v4.receiver = self;
  v4.super_class = UDService;
  [(ClientService *)&v4 stop];
}

- (BOOL)registerNewUser
{
  if (self->_isControlPointOpInProgress || ([(UDService *)self userControlPointCharacteristic], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v14 = qword_1000DDBC8;
    v13 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_100070314(v14);
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v4 = arc4random_uniform(0x270Fu);
    v16 = 1;
    v17 = v4;
    v5 = [NSData dataWithBytesNoCopy:&v16 length:3 freeWhenDone:0];
    peripheral = [(ClientService *)self peripheral];
    userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
    [peripheral writeValue:v5 forCharacteristic:userControlPointCharacteristic type:0];

    self->_consentCode = v4;
    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 1;
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v8];

    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      peripheral2 = [(ClientService *)self peripheral];
      name = [peripheral2 name];
      *buf = 141558275;
      v19 = 1752392040;
      v20 = 2113;
      v21 = name;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UDS register new user request sent for peripheral %{private, mask.hash}@", buf, 0x16u);
    }

    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)consentForUserIndex:(unsigned __int8)index withConsentCode:(unsigned __int16)code
{
  if (self->_isControlPointOpInProgress || ([(UDService *)self userControlPointCharacteristic], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v17 = qword_1000DDBC8;
    v16 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      sub_1000703C4(v17);
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    self->_userIndex = index;
    self->_consentCode = code;
    v19 = 2;
    BYTE1(v19) = self->_userIndex;
    HIWORD(v19) = code;
    v8 = [NSData dataWithBytesNoCopy:&v19 length:4 freeWhenDone:0];
    peripheral = [(ClientService *)self peripheral];
    userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
    [peripheral writeValue:v8 forCharacteristic:userControlPointCharacteristic type:0];

    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 2;
    v11 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v11];

    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      peripheral2 = [(ClientService *)self peripheral];
      name = [peripheral2 name];
      *buf = 141558275;
      v21 = 1752392040;
      v22 = 2113;
      v23 = name;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UDS consent request sent for peripheral %{private, mask.hash}@", buf, 0x16u);
    }

    LOBYTE(v16) = 1;
  }

  return v16;
}

- (BOOL)deleteCurrentUser
{
  if (self->_isControlPointOpInProgress || ([(UDService *)self userControlPointCharacteristic], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v13 = qword_1000DDBC8;
    v12 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_100070474(v13);
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v15 = 3;
    v4 = [NSData dataWithBytesNoCopy:&v15 length:1 freeWhenDone:0];
    peripheral = [(ClientService *)self peripheral];
    userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
    [peripheral writeValue:v4 forCharacteristic:userControlPointCharacteristic type:0];

    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 3;
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v7];

    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral2 = [(ClientService *)self peripheral];
      name = [peripheral2 name];
      *buf = 141558275;
      v17 = 1752392040;
      v18 = 2113;
      v19 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UDS delete user data request sent for peripheral %{private, mask.hash}@", buf, 0x16u);
    }

    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)controlPointTimeout
{
  if (self->_isControlPointOpInProgress)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070524(v3, self);
    }

    if (self->_currentRequestedOpCode - 1 <= 1)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      peripheral = [(ClientService *)self peripheral];
      [v4 postNotificationName:@"UserDataServiceConsentDidFailNotification" object:peripheral userInfo:0];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000705E0();
    }
  }

  else
  {
    v32 = serviceCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      v37 = CBUUIDDatabaseChangeIncrementCharacteristicString;
      v35 = CBUUIDUserControlPointCharacteristicString;
      v36 = CBUUIDUserIndexCharacteristicString;
      v34 = CBUUIDRegisteredUserCharacteristicString;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          databaseChangeIncrementCharacteristic = [(UDService *)self databaseChangeIncrementCharacteristic];
          if (databaseChangeIncrementCharacteristic)
          {
          }

          else
          {
            uUID = [v15 UUID];
            v18 = [CBUUID UUIDWithString:v37];
            v19 = [uUID isEqual:v18];

            if (v19)
            {
              [(UDService *)self setDatabaseChangeIncrementCharacteristic:v15];
            }
          }

          userIndexCharacteristic = [(UDService *)self userIndexCharacteristic];
          if (userIndexCharacteristic)
          {
          }

          else
          {
            uUID2 = [v15 UUID];
            v22 = [CBUUID UUIDWithString:v36];
            v23 = [uUID2 isEqual:v22];

            if (v23)
            {
              [(UDService *)self setUserIndexCharacteristic:v15];
            }
          }

          userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
          if (userControlPointCharacteristic)
          {
          }

          else
          {
            uUID3 = [v15 UUID];
            v26 = [CBUUID UUIDWithString:v35];
            v27 = [uUID3 isEqual:v26];

            if (v27)
            {
              [(UDService *)self setUserControlPointCharacteristic:v15];
              if (([v15 properties] & 0x20) != 0)
              {
                [peripheralCopy setNotifyValue:1 forCharacteristic:v15];
              }
            }
          }

          registeredUserCharacteristic = [(UDService *)self registeredUserCharacteristic];
          if (registeredUserCharacteristic)
          {
          }

          else
          {
            uUID4 = [v15 UUID];
            v30 = [CBUUID UUIDWithString:v34];
            v31 = [uUID4 isEqual:v30];

            if (v31)
            {
              [(UDService *)self setRegisteredUserCharacteristic:v15];
              if (([v15 properties] & 0x20) != 0)
              {
                [peripheralCopy setNotifyValue:1 forCharacteristic:v15];
              }
            }
          }
        }

        v12 = [characteristics countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    [(ClientService *)self notifyDidStart];
    errorCopy = 0;
    serviceCopy = v32;
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070694();
    }
  }

  else
  {
    databaseChangeIncrementCharacteristic = [(UDService *)self databaseChangeIncrementCharacteristic];

    if (databaseChangeIncrementCharacteristic == characteristicCopy)
    {
      [(UDService *)self extractDatabaseChangeIncrement];
    }

    else
    {
      userIndexCharacteristic = [(UDService *)self userIndexCharacteristic];

      if (userIndexCharacteristic == characteristicCopy)
      {
        [(UDService *)self extractUserIndex];
      }

      else
      {
        userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];

        if (userControlPointCharacteristic == characteristicCopy)
        {
          [(UDService *)self extractControlPointResponse];
        }

        else
        {
          registeredUserCharacteristic = [(UDService *)self registeredUserCharacteristic];

          if (registeredUserCharacteristic == characteristicCopy)
          {
            [(UDService *)self extractRegisteredUserData];
          }
        }
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070748();
    }
  }

  else
  {
    userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
    if (userControlPointCharacteristic == characteristicCopy)
    {
      isConsentInitiated = self->_isConsentInitiated;

      if (!isConsentInitiated)
      {
        v13 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          peripheral = [(ClientService *)self peripheral];
          name = [peripheral name];
          userIndex = self->_userIndex;
          *buf = 138412546;
          v31 = name;
          v32 = 1024;
          LODWORD(v33) = userIndex;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "UDS didUpdateNotificationStateForCharacteristic for peripheral %@: %u%%", buf, 0x12u);
        }

        self->_isConsentInitiated = 1;
        peripheral2 = [(ClientService *)self peripheral];
        v19 = [peripheral2 customProperty:@"UserDataServiceUserIndex"];

        peripheral3 = [(ClientService *)self peripheral];
        v21 = [peripheral3 customProperty:@"UserDataServiceConsentCode"];

        if (v19 && v21)
        {
          v22 = objc_alloc_init(NSNumberFormatter);
          [v22 setNumberStyle:1];
          v23 = [v22 numberFromString:v19];
          v24 = [v22 numberFromString:v21];
          v25 = v24;
          if (v23 && v24)
          {
            -[UDService consentForUserIndex:withConsentCode:](self, "consentForUserIndex:withConsentCode:", [v23 unsignedIntValue], objc_msgSend(v24, "unsignedIntValue"));
          }

          else
          {
            v26 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              log = v26;
              peripheral4 = [(ClientService *)self peripheral];
              name2 = [peripheral4 name];
              *buf = 141558787;
              v31 = 1752392040;
              v32 = 2113;
              v33 = name2;
              v34 = 2112;
              v35 = v19;
              v36 = 2112;
              v37 = v21;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "UDS consent procedure failed for peripheral %{private, mask.hash}@ due to failed convert %@ or %@ to number", buf, 0x2Au);
            }
          }
        }

        else
        {
          [(UDService *)self registerNewUser];
        }
      }
    }

    else
    {
    }
  }
}

- (void)extractDatabaseChangeIncrement
{
  databaseChangeIncrementCharacteristic = [(UDService *)self databaseChangeIncrementCharacteristic];
  value = [databaseChangeIncrementCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(ClientService *)self peripheral];
    name = [peripheral name];
    userIndex = self->_userIndex;
    v11 = 138412546;
    v12 = name;
    v13 = 1024;
    v14 = userIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UDS database change incremented for peripheral %@: %u%%", &v11, 0x12u);
  }
}

- (void)extractUserIndex
{
  userIndexCharacteristic = [(UDService *)self userIndexCharacteristic];
  value = [userIndexCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  if ([v5 readUint8:&self->_userIndex])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      userIndex = self->_userIndex;
      v11 = 138412546;
      v12 = name;
      v13 = 1024;
      v14 = userIndex;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User index for peripheral %@: %u%%", &v11, 0x12u);
    }
  }
}

- (void)extractRegisteredUserData
{
  registeredUserCharacteristic = [(UDService *)self registeredUserCharacteristic];
  value = [registeredUserCharacteristic value];
  v5 = [DataInputStream inputStreamWithData:value];

  v31 = 0;
  registeredUserCharacteristic2 = [(UDService *)self registeredUserCharacteristic];
  value2 = [registeredUserCharacteristic2 value];
  v8 = [value2 length];

  if ([v5 readUint8:&v31])
  {
    v9 = v31;
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      peripheral = [(ClientService *)self peripheral];
      name = [peripheral name];
      v14 = name;
      v15 = "Y";
      *buf = 141559299;
      v33 = 1752392040;
      v34 = 2113;
      if (v9)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      v35 = name;
      if ((v9 & 2) == 0)
      {
        v15 = "N";
      }

      v36 = 1024;
      v37 = v31;
      v38 = 2080;
      v39 = v16;
      v40 = 2080;
      v41 = v15;
      v42 = 1024;
      v43 = v9 >> 2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registered user data for peripheral %{private, mask.hash}@: header %u, firstSeg %s, lastSeg %s, segNum %u", buf, 0x36u);
    }

    if (v9)
    {
      v30 = 0;
      v29 = -1;
      if ([v5 readUint8:&v30])
      {
        v18 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          peripheral2 = [(ClientService *)self peripheral];
          name2 = [peripheral2 name];
          *buf = 141558531;
          v33 = 1752392040;
          v34 = 2113;
          v35 = name2;
          v36 = 1024;
          v37 = v30;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Stored Health Observation for peripheral %{private, mask.hash}@: flags %u", buf, 0x1Cu);
        }
      }

      if ([v5 readUint8:&v29])
      {
        self->_userIndex = v29;
        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          peripheral3 = [(ClientService *)self peripheral];
          name3 = [peripheral3 name];
          userIndex = self->_userIndex;
          *buf = 138412546;
          v33 = name3;
          v34 = 1024;
          LODWORD(v35) = userIndex;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "User index for peripheral %@: %u%%", buf, 0x12u);
        }
      }

      [(NSMutableData *)self->_registeredUserData setLength:0];
      v17 = v8 - 3;
    }

    else
    {
      v17 = v8 - 1;
    }

    [v5 readNumBytes:v17 toData:self->_registeredUserData];
    if ((v9 & 2) != 0)
    {
      v27 = [[NSString alloc] initWithData:self->_registeredUserData encoding:4];
      registeredUserName = self->_registeredUserName;
      self->_registeredUserName = v27;

      [(NSMutableData *)self->_registeredUserData setLength:0];
    }
  }
}

- (id)getDescriptionForResponseValue:(unsigned __int8)value
{
  if ((value - 1) < 5)
  {
    return *(&off_1000BD1D0 + (value - 1));
  }

  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000707FC(v4);
  }

  return @"Invalid Response";
}

- (void)extractControlPointResponse
{
  if (!self->_isControlPointOpInProgress)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000708BC(v3);
    }
  }

  controlPointTimer = [(UDService *)self controlPointTimer];
  [controlPointTimer invalidate];

  [(UDService *)self setControlPointTimer:0];
  v40 = 0;
  v39 = 0;
  userControlPointCharacteristic = [(UDService *)self userControlPointCharacteristic];
  value = [userControlPointCharacteristic value];
  v7 = [DataInputStream inputStreamWithData:value byteOrder:1];

  if (([v7 readUint8:&v40 + 1] & 1) == 0)
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007096C(v8);
    }
  }

  if (HIBYTE(v40) == 32)
  {
    if (([v7 readUint8:&v40] & 1) == 0)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100070AD0(v9);
      }
    }

    if (v40 == self->_currentRequestedOpCode)
    {
      self->_isControlPointOpInProgress = 0;
      self->_currentRequestedOpCode = -1;
      if (([v7 readUint8:&v39] & 1) == 0)
      {
        v10 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100070B80(v10);
        }
      }

      if (v39 == 1)
      {
        if (v40 <= 3u)
        {
          if (v40 == 1)
          {
            if ([v7 readUint8:&self->_userIndex])
            {
              peripheral = [(ClientService *)self peripheral];
              v23 = [NSString stringWithFormat:@"%d", self->_userIndex];
              [peripheral setCustomProperty:@"UserDataServiceUserIndex" value:v23];

              peripheral2 = [(ClientService *)self peripheral];
              v25 = [NSString stringWithFormat:@"%d", self->_consentCode];
              [peripheral2 setCustomProperty:@"UserDataServiceConsentCode" value:v25];
            }

            v26 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              userIndex = self->_userIndex;
              *buf = 67109120;
              LODWORD(v42) = userIndex;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UDS register new user completed successfully, index =%d", buf, 8u);
            }
          }

          else
          {
            if (v40 != 2)
            {
              if (v40 == 3)
              {
                v11 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
                {
                  v12 = self->_userIndex;
                  *buf = 67109120;
                  LODWORD(v42) = v12;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UDS user data deleted successfully, index =%d", buf, 8u);
                }
              }

              goto LABEL_42;
            }

            v28 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              v29 = self->_userIndex;
              *buf = 67109120;
              LODWORD(v42) = v29;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "UDS consent completed successfully, index =%d", buf, 8u);
            }

            peripheral3 = [(ClientService *)self peripheral];
            databaseChangeIncrementCharacteristic = [(UDService *)self databaseChangeIncrementCharacteristic];
            [peripheral3 readValueForCharacteristic:databaseChangeIncrementCharacteristic];

            peripheral4 = [(ClientService *)self peripheral];
            userIndexCharacteristic = [(UDService *)self userIndexCharacteristic];
            [peripheral4 readValueForCharacteristic:userIndexCharacteristic];
          }

          v19 = +[NSNotificationCenter defaultCenter];
          peripheral5 = [(ClientService *)self peripheral];
          v21 = @"UserDataServiceConsentDidSucceedNotification";
LABEL_41:
          [v19 postNotificationName:v21 object:peripheral5 userInfo:0];

          goto LABEL_42;
        }

        if (v40 - 4 < 2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100070C30();
        }
      }

      else
      {
        v18 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          v34 = v18;
          peripheral6 = [(ClientService *)self peripheral];
          name = [peripheral6 name];
          v37 = v40;
          v38 = [(UDService *)self getDescriptionForResponseValue:v39];
          *buf = 141558787;
          v42 = 1752392040;
          v43 = 2113;
          v44 = name;
          v45 = 1024;
          v46 = v37;
          v47 = 2112;
          v48 = v38;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "UDS CP response for peripheral %{private, mask.hash}@: requestedOpCode %u, response %@", buf, 0x26u);
        }

        if (v40 - 1 <= 1)
        {
          v19 = +[NSNotificationCenter defaultCenter];
          peripheral5 = [(ClientService *)self peripheral];
          v21 = @"UserDataServiceConsentDidFailNotification";
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        peripheral7 = [(ClientService *)self peripheral];
        name2 = [peripheral7 name];
        currentRequestedOpCode = self->_currentRequestedOpCode;
        *buf = 141558787;
        v42 = 1752392040;
        v43 = 2113;
        v44 = name2;
        v45 = 1024;
        v46 = v40;
        v47 = 1024;
        LODWORD(v48) = currentRequestedOpCode;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "UDS CP response for peripheral %{private, mask.hash}@: invalid requestedOpCode %u, expectedOpCode %u", buf, 0x22u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100070A1C();
  }

LABEL_42:
}

@end