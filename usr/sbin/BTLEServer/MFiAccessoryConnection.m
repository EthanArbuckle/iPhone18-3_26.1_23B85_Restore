@interface MFiAccessoryConnection
- (MFiAccessoryConnection)init;
- (id)accClientPropertyStringFromCharacteristicString:(id)a3;
- (id)accConnTypeToString:(unsigned __int8)a3;
- (void)activateConnectionWithIdentifier:(id)a3;
- (void)activateGenericEndpoint;
- (void)deactivate;
- (void)dealloc;
- (void)sendDataToGenericEndpoint:(id)a3 withProperty:(id)a4;
- (void)setAccessoryInfo:(id)a3;
- (void)setAuthenticated;
- (void)setUpPeerChannel:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)tearDownPeerChannel;
@end

@implementation MFiAccessoryConnection

- (MFiAccessoryConnection)init
{
  v3.receiver = self;
  v3.super_class = MFiAccessoryConnection;
  result = [(MFiAccessoryConnection *)&v3 init];
  if (result)
  {
    result->_authInProgress = 0;
  }

  return result;
}

- (void)activateConnectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[ACCTransportClient sharedClient];
  v6 = [v5 createConnectionWithType:2 andIdentifier:v4];
  connectionUUID = self->_connectionUUID;
  self->_connectionUUID = v6;

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_connectionUUID;
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating accTransportClient connection for identifier %@ and connectionUUID %@", &v10, 0x16u);
  }
}

- (void)activateGenericEndpoint
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating accTransportClient endpoint for generic MFi", v7, 2u);
  }

  v4 = +[ACCTransportClient sharedClient];
  v5 = [v4 createEndpointWithTransportType:3 andProtocol:18 andIdentifier:0 andDataOutHandler:0 forConnectionWithUUID:self->_connectionUUID publishConnection:1];
  genericMFiEndpointUUID = self->_genericMFiEndpointUUID;
  self->_genericMFiEndpointUUID = v5;
}

- (void)sendDataToGenericEndpoint:(id)a3 withProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending data to Generic Endpoint with type %@", buf, 0xCu);
  }

  if ([v7 isEqualToString:CBUUIDCommandCharacteristicString])
  {
    v9 = +[ACCTransportClient sharedClient];
    [v9 processIncomingData:v6 forEndpointWithUUID:self->_genericMFiEndpointUUID];
  }

  else
  {
    v9 = [(MFiAccessoryConnection *)self accClientPropertyStringFromCharacteristicString:v7];
    v10 = +[ACCTransportClient sharedClient];
    v12 = v6;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 appendToArrayProperty:v9 values:v11 forEndpointWithUUID:self->_genericMFiEndpointUUID];
  }
}

- (void)setAccessoryInfo:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    genericMFiEndpointUUID = self->_genericMFiEndpointUUID;
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = genericMFiEndpointUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting accessory info %@ to generic endpoint UUID %@ and publishing connection", &v9, 0x16u);
  }

  v7 = +[ACCTransportClient sharedClient];
  [v7 setAccessoryInfo:v4 forEndpointWithUUID:self->_genericMFiEndpointUUID];

  v8 = +[ACCTransportClient sharedClient];
  [v8 publishConnectionWithUUID:self->_connectionUUID];
}

- (void)setAuthenticated
{
  v3 = +[ACCTransportClient sharedClient];
  [v3 setConnectionAuthenticated:self->_connectionUUID state:1];
}

- (void)deactivate
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    connectionUUID = self->_connectionUUID;
    v8 = 138412290;
    v9 = connectionUUID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down MFiAccessoryConnection for connectionUUID %@", &v8, 0xCu);
  }

  [(MFiAccessoryConnection *)self tearDownPeerChannel];
  if (self->_connectionUUID)
  {
    v5 = +[ACCTransportClient sharedClient];
    [v5 destroyConnectionWithUUID:self->_connectionUUID];

    v6 = self->_connectionUUID;
    self->_connectionUUID = 0;

    endpointUUID = self->_endpointUUID;
    self->_endpointUUID = 0;
  }
}

- (void)dealloc
{
  [(MFiAccessoryConnection *)self deactivate];
  v3.receiver = self;
  v3.super_class = MFiAccessoryConnection;
  [(MFiAccessoryConnection *)&v3 dealloc];
}

- (void)setUpPeerChannel:(id)a3
{
  objc_storeStrong(&self->_peerChannel, a3);
  v5 = a3;
  v6 = voucher_copy();
  mfiVoucher = self->_mfiVoucher;
  self->_mfiVoucher = v6;

  v8 = [v5 inputStream];
  [v8 setDelegate:self];

  v9 = [v5 outputStream];
  [v9 setDelegate:self];

  v10 = [v5 inputStream];
  v11 = +[NSRunLoop currentRunLoop];
  [v10 scheduleInRunLoop:v11 forMode:NSDefaultRunLoopMode];

  v12 = [v5 outputStream];
  v13 = +[NSRunLoop currentRunLoop];
  [v12 scheduleInRunLoop:v13 forMode:NSDefaultRunLoopMode];

  v14 = [v5 inputStream];
  [v14 open];

  v15 = [v5 outputStream];

  [v15 open];
}

- (void)tearDownPeerChannel
{
  if (self->_peerChannel)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      connectionUUID = self->_connectionUUID;
      v15 = 138412290;
      v16 = connectionUUID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down peer channel for connectionUUID %@", &v15, 0xCu);
    }

    v5 = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    v6 = +[NSRunLoop currentRunLoop];
    [v5 removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];

    v7 = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    v8 = +[NSRunLoop currentRunLoop];
    [v7 removeFromRunLoop:v8 forMode:NSDefaultRunLoopMode];

    v9 = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    [v9 setDelegate:0];

    v10 = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    [v10 setDelegate:0];

    v11 = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    [v11 close];

    v12 = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    [v12 close];
  }

  mfiVoucher = self->_mfiVoucher;
  self->_mfiVoucher = 0;

  self->_authInProgress = 0;
  peerChannel = self->_peerChannel;
  self->_peerChannel = 0;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 != 16)
  {
    if (a4 != 8)
    {
      if (a4 == 2)
      {
        v7 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleEvent - NSStreamEventHasBytesAvailable", v15, 2u);
        }

        bzero(v15, 0x1000uLL);
        v8 = [v6 read:v15 maxLength:4096];
        if (v8 >= 1)
        {
          v9 = v8;
          v10 = [NSData dataWithBytes:v15 length:v8];
          v11 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_100074854(v10, v9, v11);
          }

          v12 = +[ACCTransportClient sharedClient];
          [v12 processIncomingData:v10 forEndpointWithUUID:self->_endpointUUID];
        }
      }

      goto LABEL_15;
    }

    v13 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000747AC(v13, v6);
    }
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handleEvent - NSStreamEventEndEncountered", v15, 2u);
  }

  [(MFiAccessoryConnection *)self tearDownPeerChannel];
LABEL_15:
}

- (id)accConnTypeToString:(unsigned __int8)a3
{
  v3 = @"none";
  if (a3 == 1)
  {
    v3 = @"MFi4";
  }

  if (a3 == 2)
  {
    return @"iAP2";
  }

  else
  {
    return v3;
  }
}

- (id)accClientPropertyStringFromCharacteristicString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:CBUUIDTeamIDCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AppMatch_TeamIDs_TLV;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:CBUUIDProtocolStringCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AppMatch_ProtocolStrings_TLV;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:CBUUIDAccessoryTypeCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AccessoryTypes_TLV;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:CBUUIDAccessoryAttributesCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AccessoryAttributes_TLV;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end