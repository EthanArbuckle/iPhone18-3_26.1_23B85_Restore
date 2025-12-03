@interface PACSServerService
- (PACSServerService)init;
- (int64_t)handleAvailableAudioContextRead:(id)read;
- (int64_t)handleSinkAudioLocationRead:(id)read;
- (int64_t)handleSinkPACRead:(id)read;
- (int64_t)handleSupportedAudioContextRead:(id)read;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
@end

@implementation PACSServerService

- (PACSServerService)init
{
  v25.receiver = self;
  v25.super_class = PACSServerService;
  v2 = [(PACSServerService *)&v25 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDSinkPACCharacteristicString];
    v5 = [v3 initWithType:v4 properties:1042 value:0 permissions:5];
    sinkPACCharacteristic = v2->_sinkPACCharacteristic;
    v2->_sinkPACCharacteristic = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDAvailableAudioContextsCharacteristicString];
    v9 = [v7 initWithType:v8 properties:1042 value:0 permissions:5];
    availableAudioContextCharacteristic = v2->_availableAudioContextCharacteristic;
    v2->_availableAudioContextCharacteristic = v9;

    v11 = [CBMutableCharacteristic alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDSupportedAudioContextsCharacteristicString];
    v13 = [v11 initWithType:v12 properties:1042 value:0 permissions:5];
    supportedAudioContextCharacteristic = v2->_supportedAudioContextCharacteristic;
    v2->_supportedAudioContextCharacteristic = v13;

    v15 = [CBMutableCharacteristic alloc];
    v16 = [CBUUID UUIDWithString:CBUUIDSourceAudioLocationsCharacteristicString];
    v17 = [v15 initWithType:v16 properties:2 value:0 permissions:5];
    sinkAudioLocationCharacteristic = v2->_sinkAudioLocationCharacteristic;
    v2->_sinkAudioLocationCharacteristic = v17;

    v19 = [CBMutableService alloc];
    v20 = [CBUUID UUIDWithString:CBUUIDPublishedAudioCapabilitiesServiceString];
    v21 = [v19 initWithType:v20 primary:1];
    [(Service *)v2 setService:v21];

    v26[0] = v2->_sinkPACCharacteristic;
    v26[1] = v2->_availableAudioContextCharacteristic;
    v26[2] = v2->_supportedAudioContextCharacteristic;
    v26[3] = v2->_sinkAudioLocationCharacteristic;
    v22 = [NSArray arrayWithObjects:v26 count:4];
    service = [(Service *)v2 service];
    [service setCharacteristics:v22];
  }

  return v2;
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  sinkPACCharacteristic = [(PACSServerService *)self sinkPACCharacteristic];

  if (characteristic == sinkPACCharacteristic)
  {
    v12 = [(PACSServerService *)self handleSinkPACRead:requestCopy];
  }

  else
  {
    characteristic2 = [requestCopy characteristic];
    availableAudioContextCharacteristic = [(PACSServerService *)self availableAudioContextCharacteristic];

    if (characteristic2 == availableAudioContextCharacteristic)
    {
      v12 = [(PACSServerService *)self handleAvailableAudioContextRead:requestCopy];
    }

    else
    {
      characteristic3 = [requestCopy characteristic];
      supportedAudioContextCharacteristic = [(PACSServerService *)self supportedAudioContextCharacteristic];

      if (characteristic3 != supportedAudioContextCharacteristic)
      {
        v11 = 10;
        goto LABEL_9;
      }

      v12 = [(PACSServerService *)self handleSupportedAudioContextRead:requestCopy];
    }
  }

  v11 = v12;
LABEL_9:
  [(Service *)self respondToRequest:requestCopy withResult:v11];
}

- (int64_t)handleSinkPACRead:(id)read
{
  v15 = 2;
  v14 = 13;
  v13 = 4980742;
  v12 = 19;
  *v18 = xmmword_10007001D;
  *&v18[15] = 704971264;
  v11 = 0;
  v10 = 0;
  v9 = 6;
  v8 = 19;
  *(v17 + 15) = 704971264;
  v17[0] = xmmword_100070035;
  v7 = 8;
  v16 = 0xBEEF0203DEAD0103;
  readCopy = read;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeBytes:&v15 length:1];
  [v4 writeBytes:&v13 length:5];
  [v4 writeBytes:&v12 length:1];
  [v4 writeBytes:v18 length:v12];
  [v4 writeBytes:&v11 length:1];
  [v4 writeBytes:&v9 length:5];
  [v4 writeBytes:&v8 length:1];
  [v4 writeBytes:v17 length:v8];
  [v4 writeBytes:&v7 length:1];
  [v4 writeBytes:&v16 length:v7];
  data = [v4 data];
  [readCopy setValue:data];

  return 0;
}

- (int64_t)handleAvailableAudioContextRead:(id)read
{
  readCopy = read;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint16:518];
  [v4 writeUint16:1];
  data = [v4 data];
  [readCopy setValue:data];

  return 0;
}

- (int64_t)handleSupportedAudioContextRead:(id)read
{
  readCopy = read;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint16:516];
  [v4 writeUint16:1];
  data = [v4 data];
  [readCopy setValue:data];

  return 0;
}

- (int64_t)handleSinkAudioLocationRead:(id)read
{
  readCopy = read;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint32:1];
  data = [v4 data];
  [readCopy setValue:data];

  return 0;
}

@end