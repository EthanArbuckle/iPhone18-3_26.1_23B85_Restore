@interface HIDMultiReportsDevice
- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp;
@end

@implementation HIDMultiReportsDevice

- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp
{
  dataCopy = data;
  v9 = [dataCopy length];
  v10 = &v11 - ((v9 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9 + 1);
  *v10 = d;
  [dataCopy getBytes:v10 + 1 length:v9];

  IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], timestamp, v10, v9 + 1);
}

@end