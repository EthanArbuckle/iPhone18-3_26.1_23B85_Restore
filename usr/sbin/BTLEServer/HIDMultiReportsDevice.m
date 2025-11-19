@interface HIDMultiReportsDevice
- (void)handleInputReportData:(id)a3 reportID:(unsigned __int8)a4 timestamp:(unint64_t)a5;
@end

@implementation HIDMultiReportsDevice

- (void)handleInputReportData:(id)a3 reportID:(unsigned __int8)a4 timestamp:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 length];
  v10 = &v11 - ((v9 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9 + 1);
  *v10 = a4;
  [v8 getBytes:v10 + 1 length:v9];

  IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], a5, v10, v9 + 1);
}

@end