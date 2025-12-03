@interface MFiAccessoryConnection
- (MFiAccessoryConnection)init;
- (id)accClientPropertyStringFromCharacteristicString:(id)string;
- (id)accConnTypeToString:(unsigned __int8)string;
- (void)activateConnectionWithIdentifier:(id)identifier;
- (void)activateGenericEndpoint;
- (void)deactivate;
- (void)dealloc;
- (void)sendDataToGenericEndpoint:(id)endpoint withProperty:(id)property;
- (void)setAccessoryInfo:(id)info;
- (void)setAuthenticated;
- (void)setUpPeerChannel:(id)channel;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
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

- (void)activateConnectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[ACCTransportClient sharedClient];
  v6 = [v5 createConnectionWithType:2 andIdentifier:identifierCopy];
  connectionUUID = self->_connectionUUID;
  self->_connectionUUID = v6;

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_connectionUUID;
    v10 = 138412546;
    v11 = identifierCopy;
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

- (void)sendDataToGenericEndpoint:(id)endpoint withProperty:(id)property
{
  endpointCopy = endpoint;
  propertyCopy = property;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = propertyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending data to Generic Endpoint with type %@", buf, 0xCu);
  }

  if ([propertyCopy isEqualToString:CBUUIDCommandCharacteristicString])
  {
    v9 = +[ACCTransportClient sharedClient];
    [v9 processIncomingData:endpointCopy forEndpointWithUUID:self->_genericMFiEndpointUUID];
  }

  else
  {
    v9 = [(MFiAccessoryConnection *)self accClientPropertyStringFromCharacteristicString:propertyCopy];
    v10 = +[ACCTransportClient sharedClient];
    v12 = endpointCopy;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 appendToArrayProperty:v9 values:v11 forEndpointWithUUID:self->_genericMFiEndpointUUID];
  }
}

- (void)setAccessoryInfo:(id)info
{
  infoCopy = info;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    genericMFiEndpointUUID = self->_genericMFiEndpointUUID;
    v9 = 138412546;
    v10 = infoCopy;
    v11 = 2112;
    v12 = genericMFiEndpointUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting accessory info %@ to generic endpoint UUID %@ and publishing connection", &v9, 0x16u);
  }

  v7 = +[ACCTransportClient sharedClient];
  [v7 setAccessoryInfo:infoCopy forEndpointWithUUID:self->_genericMFiEndpointUUID];

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

- (void)setUpPeerChannel:(id)channel
{
  objc_storeStrong(&self->_peerChannel, channel);
  channelCopy = channel;
  v6 = voucher_copy();
  mfiVoucher = self->_mfiVoucher;
  self->_mfiVoucher = v6;

  inputStream = [channelCopy inputStream];
  [inputStream setDelegate:self];

  outputStream = [channelCopy outputStream];
  [outputStream setDelegate:self];

  inputStream2 = [channelCopy inputStream];
  v11 = +[NSRunLoop currentRunLoop];
  [inputStream2 scheduleInRunLoop:v11 forMode:NSDefaultRunLoopMode];

  outputStream2 = [channelCopy outputStream];
  v13 = +[NSRunLoop currentRunLoop];
  [outputStream2 scheduleInRunLoop:v13 forMode:NSDefaultRunLoopMode];

  inputStream3 = [channelCopy inputStream];
  [inputStream3 open];

  outputStream3 = [channelCopy outputStream];

  [outputStream3 open];
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

    inputStream = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    v6 = +[NSRunLoop currentRunLoop];
    [inputStream removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];

    outputStream = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    v8 = +[NSRunLoop currentRunLoop];
    [outputStream removeFromRunLoop:v8 forMode:NSDefaultRunLoopMode];

    inputStream2 = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    [inputStream2 setDelegate:0];

    outputStream2 = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    [outputStream2 setDelegate:0];

    inputStream3 = [(CBL2CAPChannel *)self->_peerChannel inputStream];
    [inputStream3 close];

    outputStream3 = [(CBL2CAPChannel *)self->_peerChannel outputStream];
    [outputStream3 close];
  }

  mfiVoucher = self->_mfiVoucher;
  self->_mfiVoucher = 0;

  self->_authInProgress = 0;
  peerChannel = self->_peerChannel;
  self->_peerChannel = 0;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if (event != 16)
  {
    if (event != 8)
    {
      if (event == 2)
      {
        v7 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleEvent - NSStreamEventHasBytesAvailable", v15, 2u);
        }

        bzero(v15, 0x1000uLL);
        v8 = [streamCopy read:v15 maxLength:4096];
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
      sub_1000747AC(v13, streamCopy);
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

- (id)accConnTypeToString:(unsigned __int8)string
{
  v3 = @"none";
  if (string == 1)
  {
    v3 = @"MFi4";
  }

  if (string == 2)
  {
    return @"iAP2";
  }

  else
  {
    return v3;
  }
}

- (id)accClientPropertyStringFromCharacteristicString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:CBUUIDTeamIDCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AppMatch_TeamIDs_TLV;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:CBUUIDProtocolStringCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AppMatch_ProtocolStrings_TLV;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:CBUUIDAccessoryTypeCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AccessoryTypes_TLV;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:CBUUIDAccessoryAttributesCharacteristicString])
  {
    v4 = &kACCProperties_Endpoint_MFi_AccessoryAttributes_TLV;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end