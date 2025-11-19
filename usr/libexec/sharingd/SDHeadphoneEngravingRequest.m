@interface SDHeadphoneEngravingRequest
- (SDHeadphoneEngravingRequest)initWithBluetoothAddress:(id)a3;
- (void)handleEngravingData:(id)a3;
- (void)requestEngravingInfo;
- (void)start;
@end

@implementation SDHeadphoneEngravingRequest

- (SDHeadphoneEngravingRequest)initWithBluetoothAddress:(id)a3
{
  v10.receiver = self;
  v10.super_class = SDHeadphoneEngravingRequest;
  v3 = a3;
  v4 = [(SDHeadphoneEngravingRequest *)&v10 init];
  v5 = [v3 copy];

  bluetoothAddressString = v4->_bluetoothAddressString;
  v4->_bluetoothAddressString = v5;

  v7 = SFMainQueue();
  dispatchQueue = v4->_dispatchQueue;
  v4->_dispatchQueue = v7;

  return v4;
}

- (void)start
{
  if (dword_100970B50 <= 30 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106CC8(self);
  }

  v3 = self;
  dispatchQueue = v3->_dispatchQueue;
  if (BTSessionAttachWithQueue())
  {
    CFRelease(v3);
  }

  btSession = v3->_btSession;
  BTAccessoryManagerGetDefault();
  if (BTAccessoryManagerRegisterCustomMessageClient() && dword_100970B50 <= 90 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106D0C();
  }
}

- (void)requestEngravingInfo
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(NSString *)self->_bluetoothAddressString UTF8String];
  BTDeviceAddressFromString();
  btSession = self->_btSession;
  if (BTDeviceFromAddress())
  {
    if (dword_100970B50 <= 90 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
    {
      sub_100106E6C();
    }

LABEL_18:
    [(SDHeadphoneEngravingRequest *)self handleEngravingData:0];
    return;
  }

  v4 = self->_btSession;
  if (BTAccessoryManagerGetDefault())
  {
    if (dword_100970B50 <= 90 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
    {
      sub_100106EAC();
    }

    goto LABEL_18;
  }

  if (dword_100970B50 <= 40 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106EEC();
  }

  if (BTAccessoryManagerSendCustomMessage())
  {
    if (dword_100970B50 <= 90 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
    {
      sub_100106F20();
    }

    goto LABEL_18;
  }
}

- (void)handleEngravingData:(id)a3
{
  v4 = a3;
  v5 = [(SDHeadphoneEngravingRequest *)self completion];
  (v5)[2](v5, v4);

  [(SDHeadphoneEngravingRequest *)self cancel];
}

@end