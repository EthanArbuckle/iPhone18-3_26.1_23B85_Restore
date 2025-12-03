@interface NRDevicePairingCandidateContext
- (BOOL)sendPacketData:(id)data;
- (NSString)description;
- (void)dealloc;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)setPacketReceiver:(id)receiver;
@end

@implementation NRDevicePairingCandidateContext

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

  (*(responseBlockCopy + 2))(responseBlockCopy, 0, 0, 0);
}

- (void)setPacketReceiver:(id)receiver
{
  receiverCopy = receiver;
  v9 = receiverCopy;
  if (receiverCopy)
  {
    if (!self)
    {
      goto LABEL_5;
    }

    v5 = receiverCopy;
    ikePacketReceiver = self->_ikePacketReceiver;
    self->_ikePacketReceiver = v5;
    goto LABEL_4;
  }

  v7 = sub_100123258();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  receiverCopy = 0;
  if (IsLevelEnabled)
  {
    ikePacketReceiver = sub_100123258();
    _NRLogWithArgs();
LABEL_4:

    receiverCopy = v9;
  }

LABEL_5:
}

- (BOOL)sendPacketData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v12 = sub_100123258();
    LODWORD(self) = _NRLogIsLevelEnabled();

    if (!self)
    {
      goto LABEL_9;
    }

    v13 = sub_100123258();
    _NRLogWithArgs();

    goto LABEL_8;
  }

  if (!self)
  {
    goto LABEL_9;
  }

  if (!self->_parser)
  {
LABEL_8:
    LOBYTE(self) = 0;
    goto LABEL_9;
  }

  v6 = [dataCopy length];
  v21 = bswap32(v6) >> 16;
  v7 = [[NSMutableData alloc] initWithCapacity:v6 + 5];
  [v7 appendBytes:&unk_100196570 length:1];
  [v7 appendBytes:&v21 length:2];
  [v7 appendData:v5];
  [v7 bytes];
  if (![v7 length])
  {
    v15 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_100123258();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "nrChecksumFull";
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v20 = ~os_inet_checksum();
  [v7 appendBytes:&v20 length:2];
  parser = self->_parser;
  v22[0] = @"message-data";
  v22[1] = @"channel-id";
  v23[0] = v7;
  v23[1] = &off_100209D28;
  v24 = @"message";
  v9 = parser;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25 = v10;
  LOBYTE(self) = 1;
  v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(NRBluetoothPacketParser *)v9 sendXPCCommDictionary:v11];

LABEL_9:
  return self;
}

- (NSString)description
{
  if (self)
  {
    self = self->_candidateInfo;
  }

  return [(NRDevicePairingCandidateContext *)self description];
}

- (void)dealloc
{
  sub_1001234B8(self);
  v3.receiver = self;
  v3.super_class = NRDevicePairingCandidateContext;
  [(NRDevicePairingCandidateContext *)&v3 dealloc];
}

@end