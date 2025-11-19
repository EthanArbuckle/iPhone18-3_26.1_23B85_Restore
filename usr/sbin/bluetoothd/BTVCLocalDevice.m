@interface BTVCLocalDevice
- (BOOL)_getAddressFrom:(const char *)a3 address:(id *)a4;
- (BTVCLocalDevice)init;
- (id)_readSelfGeneratedLocalAddress;
- (id)getLocalAddress;
- (void)_deleteSelfGeneratedLocalAddress;
- (void)_getGeneratedLocalAddress:(id *)a3;
- (void)_setSelfGeneratedLocalAddress:(id)a3;
@end

@implementation BTVCLocalDevice

- (BTVCLocalDevice)init
{
  v3 = [(BTVCLocalDevice *)self getLocalAddress];
  v8.receiver = self;
  v8.super_class = BTVCLocalDevice;
  v4 = [(BTVCDevice *)&v8 initWithDeviceAddres:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (id)getLocalAddress
{
  v7 = 0;
  v6 = 0;
  if ([(BTVCLocalDevice *)self _getAddressFrom:"bluetooth" address:&v6])
  {
    v3 = [(BTVCLocalDevice *)self _readSelfGeneratedLocalAddress];

    if (v3)
    {
      [(BTVCLocalDevice *)self _deleteSelfGeneratedLocalAddress];
    }
  }

  else
  {
    [(BTVCLocalDevice *)self _getGeneratedLocalAddress:&v6];
  }

  v4 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresAndType:&v6 addressType:0];

  return v4;
}

- (BOOL)_getAddressFrom:(const char *)a3 address:(id *)a4
{
  v5 = IOServiceNameMatching(a3);
  if (!v5)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  v14 = 0;
  *buffer = 0;
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", kCFAllocatorDefault, 1u);
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    v21.location = 0;
    v21.length = 6;
    CFDataGetBytes(v8, v21, buffer);
    *a4->var0 = *buffer;
    *&a4->var0[4] = v14;
    v11 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[BTVCLocalDevice _getAddressFrom:address:]";
      v17 = 1040;
      v18 = 6;
      v19 = 2096;
      v20 = buffer;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: DeviceTree address = %{bluetooth:BD_ADDR}.6P", buf, 0x1Cu);
    }

    CFRelease(v10);
  }

  IOObjectRelease(v7);
  return v9;
}

- (id)_readSelfGeneratedLocalAddress
{
  v2 = CFPreferencesCopyAppValue(@"GeneratedLocalAddress", @"com.apple.BTServer");

  return v2;
}

- (void)_setSelfGeneratedLocalAddress:(id)a3
{
  v3 = a3;
  CFPreferencesSetAppValue(@"GeneratedLocalAddress", v3, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

- (void)_deleteSelfGeneratedLocalAddress
{
  CFPreferencesSetAppValue(@"GeneratedLocalAddress", 0, @"com.apple.BTServer");

  CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

- (void)_getGeneratedLocalAddress:(id *)a3
{
  v5 = [(BTVCLocalDevice *)self _readSelfGeneratedLocalAddress];
  v6 = v5;
  if (v5 && [v5 length])
  {
    sscanf([v6 UTF8String], "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", a3, &a3->var0[1], &a3->var0[2], &a3->var0[3], &a3->var0[4], &a3->var0[5]);
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[BTVCLocalDevice _getGeneratedLocalAddress:]";
      v16 = 2080;
      v17 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Local address from plist:%s.\n", buf, 0x16u);
    }
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      a3->var0[i] = arc4random_uniform(0xFFu);
    }

    *__str = 0;
    v12 = 0;
    v13 = 0;
    snprintf(__str, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", a3->var0[0], a3->var0[1], a3->var0[2], a3->var0[3], a3->var0[4], a3->var0[5]);
    v9 = [NSString stringWithUTF8String:__str];
    [(BTVCLocalDevice *)self _setSelfGeneratedLocalAddress:v9];

    v10 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[BTVCLocalDevice _getGeneratedLocalAddress:]";
      v16 = 2080;
      v17 = __str;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Storing local address to plist:%s.\n", buf, 0x16u);
    }
  }
}

@end