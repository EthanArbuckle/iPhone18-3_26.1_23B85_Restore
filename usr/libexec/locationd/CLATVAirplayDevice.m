@interface CLATVAirplayDevice
- (CLATVAirplayDevice)initWithTimestamp:(uint64_t)a3 RSSI:(int)a4 uuid:(void *)a5 ipv4:(unsigned int)a6 channel:(int)a7;
- (id)cppObject;
- (void)dealloc;
@end

@implementation CLATVAirplayDevice

- (CLATVAirplayDevice)initWithTimestamp:(uint64_t)a3 RSSI:(int)a4 uuid:(void *)a5 ipv4:(unsigned int)a6 channel:(int)a7
{
  v15.receiver = a1;
  v15.super_class = CLATVAirplayDevice;
  v12 = [(CLATVAirplayDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_anon_18[4] = a2;
    v12->_RSSI = a4;
    v12->_uuid = a5;
    v13->_ipv4 = a6;
    v13->_channel = a7;
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
  v4 = [objc_msgSend(objc_msgSend(a1 "uuid")];
  v5 = strlen(v4);
  v6 = sub_10039885C(&v14, v4, &v4[v5]);
  v8 = v7;
  [a1 timestamp];
  v10 = v9;
  v11 = [a1 RSSI];
  v12 = [a1 ipv4];
  result = [a1 channel];
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 12) = v6;
  *(a2 + 20) = v8;
  *(a2 + 28) = v12;
  *(a2 + 32) = result;
  return result;
}

@end