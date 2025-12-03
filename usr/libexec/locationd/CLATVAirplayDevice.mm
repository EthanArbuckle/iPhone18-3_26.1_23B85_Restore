@interface CLATVAirplayDevice
- (CLATVAirplayDevice)initWithTimestamp:(uint64_t)timestamp RSSI:(int)i uuid:(void *)uuid ipv4:(unsigned int)ipv4 channel:(int)channel;
- (id)cppObject;
- (void)dealloc;
@end

@implementation CLATVAirplayDevice

- (CLATVAirplayDevice)initWithTimestamp:(uint64_t)timestamp RSSI:(int)i uuid:(void *)uuid ipv4:(unsigned int)ipv4 channel:(int)channel
{
  v15.receiver = self;
  v15.super_class = CLATVAirplayDevice;
  v12 = [(CLATVAirplayDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_anon_18[4] = a2;
    v12->_RSSI = i;
    v12->_uuid = uuid;
    v13->_ipv4 = ipv4;
    v13->_channel = channel;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLATVAirplayDevice;
  [(CLATVAirplayDevice *)&v3 dealloc];
}

- (id)cppObject
{
  v4 = [objc_msgSend(objc_msgSend(self "uuid")];
  v5 = strlen(v4);
  v6 = sub_10039885C(&v14, v4, &v4[v5]);
  v8 = v7;
  [self timestamp];
  v10 = v9;
  rSSI = [self RSSI];
  ipv4 = [self ipv4];
  result = [self channel];
  *a2 = v10;
  *(a2 + 8) = rSSI;
  *(a2 + 12) = v6;
  *(a2 + 20) = v8;
  *(a2 + 28) = ipv4;
  *(a2 + 32) = result;
  return result;
}

@end