@interface HIDSingleReportDevice
- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp;
@end

@implementation HIDSingleReportDevice

- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp
{
  dCopy = d;
  dataCopy = data;
  v9 = dataCopy;
  if (dCopy)
  {
    v10 = [dataCopy length];
    v11 = &v15 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v10 + 1);
    *v11 = dCopy;
    [v9 getBytes:v11 + 1 length:v10];

    IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], timestamp, v11, v10 + 1);
  }

  else
  {
    device = [(HIDGenericDevice *)self device];
    bytes = [v9 bytes];
    v14 = [v9 length];

    IOHIDUserDeviceHandleReportWithTimeStamp(device, timestamp, bytes, v14);
  }
}

@end