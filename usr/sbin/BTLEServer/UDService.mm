@interface UDService
- (BOOL)consentForUserIndex:(unsigned __int8)a3 withConsentCode:(unsigned __int16)a4;
- (BOOL)deleteCurrentUser;
- (BOOL)registerNewUser;
- (UDService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)getDescriptionForResponseValue:(unsigned __int8)a3;
- (void)controlPointTimeout;
- (void)extractControlPointResponse;
- (void)extractDatabaseChangeIncrement;
- (void)extractRegisteredUserData;
- (void)extractUserIndex;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation UDService

- (UDService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = UDService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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

  v10 = [(ClientService *)self peripheral];
  v11 = [(ClientService *)self service];
  [v10 discoverCharacteristics:v9 forService:v11];

  [(UDService *)self setControlPointTimer:0];
}

- (void)stop
{
  v3 = [(UDService *)self controlPointTimer];
  [v3 invalidate];

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
    v6 = [(ClientService *)self peripheral];
    v7 = [(UDService *)self userControlPointCharacteristic];
    [v6 writeValue:v5 forCharacteristic:v7 type:0];

    self->_consentCode = v4;
    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 1;
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v8];

    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(ClientService *)self peripheral];
      v12 = [v11 name];
      *buf = 141558275;
      v19 = 1752392040;
      v20 = 2113;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UDS register new user request sent for peripheral %{private, mask.hash}@", buf, 0x16u);
    }

    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)consentForUserIndex:(unsigned __int8)a3 withConsentCode:(unsigned __int16)a4
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
    self->_userIndex = a3;
    self->_consentCode = a4;
    v19 = 2;
    BYTE1(v19) = self->_userIndex;
    HIWORD(v19) = a4;
    v8 = [NSData dataWithBytesNoCopy:&v19 length:4 freeWhenDone:0];
    v9 = [(ClientService *)self peripheral];
    v10 = [(UDService *)self userControlPointCharacteristic];
    [v9 writeValue:v8 forCharacteristic:v10 type:0];

    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 2;
    v11 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v11];

    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(ClientService *)self peripheral];
      v15 = [v14 name];
      *buf = 141558275;
      v21 = 1752392040;
      v22 = 2113;
      v23 = v15;
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
    v5 = [(ClientService *)self peripheral];
    v6 = [(UDService *)self userControlPointCharacteristic];
    [v5 writeValue:v4 forCharacteristic:v6 type:0];

    self->_isControlPointOpInProgress = 1;
    self->_currentRequestedOpCode = 3;
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"controlPointTimeout" selector:0 userInfo:0 repeats:30.0];
    [(UDService *)self setControlPointTimer:v7];

    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(ClientService *)self peripheral];
      v11 = [v10 name];
      *buf = 141558275;
      v17 = 1752392040;
      v18 = 2113;
      v19 = v11;
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
      v5 = [(ClientService *)self peripheral];
      [v4 postNotificationName:@"UserDataServiceConsentDidFailNotification" object:v5 userInfo:0];
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v33 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000705E0();
    }
  }

  else
  {
    v32 = v8;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = [v8 characteristics];
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = [(UDService *)self databaseChangeIncrementCharacteristic];
          if (v16)
          {
          }

          else
          {
            v17 = [v15 UUID];
            v18 = [CBUUID UUIDWithString:v37];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              [(UDService *)self setDatabaseChangeIncrementCharacteristic:v15];
            }
          }

          v20 = [(UDService *)self userIndexCharacteristic];
          if (v20)
          {
          }

          else
          {
            v21 = [v15 UUID];
            v22 = [CBUUID UUIDWithString:v36];
            v23 = [v21 isEqual:v22];

            if (v23)
            {
              [(UDService *)self setUserIndexCharacteristic:v15];
            }
          }

          v24 = [(UDService *)self userControlPointCharacteristic];
          if (v24)
          {
          }

          else
          {
            v25 = [v15 UUID];
            v26 = [CBUUID UUIDWithString:v35];
            v27 = [v25 isEqual:v26];

            if (v27)
            {
              [(UDService *)self setUserControlPointCharacteristic:v15];
              if (([v15 properties] & 0x20) != 0)
              {
                [v33 setNotifyValue:1 forCharacteristic:v15];
              }
            }
          }

          v28 = [(UDService *)self registeredUserCharacteristic];
          if (v28)
          {
          }

          else
          {
            v29 = [v15 UUID];
            v30 = [CBUUID UUIDWithString:v34];
            v31 = [v29 isEqual:v30];

            if (v31)
            {
              [(UDService *)self setRegisteredUserCharacteristic:v15];
              if (([v15 properties] & 0x20) != 0)
              {
                [v33 setNotifyValue:1 forCharacteristic:v15];
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    [(ClientService *)self notifyDidStart];
    v9 = 0;
    v8 = v32;
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070694();
    }
  }

  else
  {
    v11 = [(UDService *)self databaseChangeIncrementCharacteristic];

    if (v11 == v9)
    {
      [(UDService *)self extractDatabaseChangeIncrement];
    }

    else
    {
      v12 = [(UDService *)self userIndexCharacteristic];

      if (v12 == v9)
      {
        [(UDService *)self extractUserIndex];
      }

      else
      {
        v13 = [(UDService *)self userControlPointCharacteristic];

        if (v13 == v9)
        {
          [(UDService *)self extractControlPointResponse];
        }

        else
        {
          v14 = [(UDService *)self registeredUserCharacteristic];

          if (v14 == v9)
          {
            [(UDService *)self extractRegisteredUserData];
          }
        }
      }
    }
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070748();
    }
  }

  else
  {
    v11 = [(UDService *)self userControlPointCharacteristic];
    if (v11 == v9)
    {
      isConsentInitiated = self->_isConsentInitiated;

      if (!isConsentInitiated)
      {
        v13 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(ClientService *)self peripheral];
          v16 = [v15 name];
          userIndex = self->_userIndex;
          *buf = 138412546;
          v31 = v16;
          v32 = 1024;
          LODWORD(v33) = userIndex;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "UDS didUpdateNotificationStateForCharacteristic for peripheral %@: %u%%", buf, 0x12u);
        }

        self->_isConsentInitiated = 1;
        v18 = [(ClientService *)self peripheral];
        v19 = [v18 customProperty:@"UserDataServiceUserIndex"];

        v20 = [(ClientService *)self peripheral];
        v21 = [v20 customProperty:@"UserDataServiceConsentCode"];

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
              v29 = [(ClientService *)self peripheral];
              v27 = [v29 name];
              *buf = 141558787;
              v31 = 1752392040;
              v32 = 2113;
              v33 = v27;
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
  v3 = [(UDService *)self databaseChangeIncrementCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ClientService *)self peripheral];
    v9 = [v8 name];
    userIndex = self->_userIndex;
    v11 = 138412546;
    v12 = v9;
    v13 = 1024;
    v14 = userIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UDS database change incremented for peripheral %@: %u%%", &v11, 0x12u);
  }
}

- (void)extractUserIndex
{
  v3 = [(UDService *)self userIndexCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  if ([v5 readUint8:&self->_userIndex])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(ClientService *)self peripheral];
      v9 = [v8 name];
      userIndex = self->_userIndex;
      v11 = 138412546;
      v12 = v9;
      v13 = 1024;
      v14 = userIndex;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User index for peripheral %@: %u%%", &v11, 0x12u);
    }
  }
}

- (void)extractRegisteredUserData
{
  v3 = [(UDService *)self registeredUserCharacteristic];
  v4 = [v3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

  v31 = 0;
  v6 = [(UDService *)self registeredUserCharacteristic];
  v7 = [v6 value];
  v8 = [v7 length];

  if ([v5 readUint8:&v31])
  {
    v9 = v31;
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ClientService *)self peripheral];
      v13 = [v12 name];
      v14 = v13;
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

      v35 = v13;
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
          v20 = [(ClientService *)self peripheral];
          v21 = [v20 name];
          *buf = 141558531;
          v33 = 1752392040;
          v34 = 2113;
          v35 = v21;
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
          v24 = [(ClientService *)self peripheral];
          v25 = [v24 name];
          userIndex = self->_userIndex;
          *buf = 138412546;
          v33 = v25;
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

- (id)getDescriptionForResponseValue:(unsigned __int8)a3
{
  if ((a3 - 1) < 5)
  {
    return *(&off_1000BD1D0 + (a3 - 1));
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

  v4 = [(UDService *)self controlPointTimer];
  [v4 invalidate];

  [(UDService *)self setControlPointTimer:0];
  v40 = 0;
  v39 = 0;
  v5 = [(UDService *)self userControlPointCharacteristic];
  v6 = [v5 value];
  v7 = [DataInputStream inputStreamWithData:v6 byteOrder:1];

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
              v22 = [(ClientService *)self peripheral];
              v23 = [NSString stringWithFormat:@"%d", self->_userIndex];
              [v22 setCustomProperty:@"UserDataServiceUserIndex" value:v23];

              v24 = [(ClientService *)self peripheral];
              v25 = [NSString stringWithFormat:@"%d", self->_consentCode];
              [v24 setCustomProperty:@"UserDataServiceConsentCode" value:v25];
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

            v30 = [(ClientService *)self peripheral];
            v31 = [(UDService *)self databaseChangeIncrementCharacteristic];
            [v30 readValueForCharacteristic:v31];

            v32 = [(ClientService *)self peripheral];
            v33 = [(UDService *)self userIndexCharacteristic];
            [v32 readValueForCharacteristic:v33];
          }

          v19 = +[NSNotificationCenter defaultCenter];
          v20 = [(ClientService *)self peripheral];
          v21 = @"UserDataServiceConsentDidSucceedNotification";
LABEL_41:
          [v19 postNotificationName:v21 object:v20 userInfo:0];

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
          v35 = [(ClientService *)self peripheral];
          v36 = [v35 name];
          v37 = v40;
          v38 = [(UDService *)self getDescriptionForResponseValue:v39];
          *buf = 141558787;
          v42 = 1752392040;
          v43 = 2113;
          v44 = v36;
          v45 = 1024;
          v46 = v37;
          v47 = 2112;
          v48 = v38;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "UDS CP response for peripheral %{private, mask.hash}@: requestedOpCode %u, response %@", buf, 0x26u);
        }

        if (v40 - 1 <= 1)
        {
          v19 = +[NSNotificationCenter defaultCenter];
          v20 = [(ClientService *)self peripheral];
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
        v15 = [(ClientService *)self peripheral];
        v16 = [v15 name];
        currentRequestedOpCode = self->_currentRequestedOpCode;
        *buf = 141558787;
        v42 = 1752392040;
        v43 = 2113;
        v44 = v16;
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