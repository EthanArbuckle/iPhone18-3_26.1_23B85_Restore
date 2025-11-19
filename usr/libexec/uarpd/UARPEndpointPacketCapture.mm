@interface UARPEndpointPacketCapture
- (UARPEndpointPacketCapture)initWithUUID:(id)a3 tmpFolderPath:(id)a4 delegate:(id)a5;
- (id)uniquePacketCaptureFilename;
- (void)initCommon:(id)a3;
- (void)updateDelegateFilename;
@end

@implementation UARPEndpointPacketCapture

- (void)initCommon:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.uarp.layer3", "packetCapture");
  log = self->_log;
  self->_log = v5;

  v7 = dispatch_queue_create("com.apple.uarp.packetcapture", 0);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v7;

  uuid = self->_uuid;
  self->_uuid = v4;
}

- (UARPEndpointPacketCapture)initWithUUID:(id)a3 tmpFolderPath:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UARPEndpointPacketCapture;
  v11 = [(UARPEndpointPacketCapture *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UARPEndpointPacketCapture *)v11 initCommon:v8];
    objc_storeStrong(&v12->_tmpFolderPath, a4);
    objc_storeStrong(&v12->_delegate, a5);
    [(UARPEndpointPacketCapture *)v12 updateDelegateFilename];
  }

  return v12;
}

- (id)uniquePacketCaptureFilename
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  v4 = +[NSDate date];
  v5 = [v3 stringFromDate:v4];

  v6 = getprogname();
  v7 = [(NSUUID *)self->_uuid UUIDString];
  v8 = [NSString stringWithFormat:@"%s-%@-%@.pcap", v6, v5, v7];

  return v8;
}

- (void)updateDelegateFilename
{
  if (self->_tmpFolderPath)
  {
    v3 = objc_opt_new();
    [v3 addObject:self->_tmpFolderPath];
    [v3 addObject:@"pcapfiles"];
    v4 = [(UARPEndpointPacketCapture *)self uniquePacketCaptureFilename];
    [v3 addObject:v4];

    v5 = [NSString pathWithComponents:v3];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_100085848(v5, log);
    }

    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(UARPEndpointPacketCaptureDelegateProtocol *)self->_delegate updateFilepath:v5 uuid:self->_uuid];
    }
  }
}

@end