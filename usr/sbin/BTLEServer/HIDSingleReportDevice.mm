@interface HIDSingleReportDevice
- (void)handleInputReportData:(id)a3 reportID:(unsigned __int8)a4 timestamp:(unint64_t)a5;
@end

@implementation HIDSingleReportDevice

- (void)handleInputReportData:(id)a3 reportID:(unsigned __int8)a4 timestamp:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v10 = [v8 length];
    v11 = &v15 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v10 + 1);
    *v11 = v6;
    [v9 getBytes:v11 + 1 length:v10];

    IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], a5, v11, v10 + 1);
  }

  else
  {
    v12 = [(HIDGenericDevice *)self device];
    v13 = [v9 bytes];
    v14 = [v9 length];

    IOHIDUserDeviceHandleReportWithTimeStamp(v12, a5, v13, v14);
  }
}

@end