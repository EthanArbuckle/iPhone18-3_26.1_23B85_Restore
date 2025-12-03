@interface HIDReportInfo
- (HIDReportInfo)initWithID:(unsigned __int8)d type:(unsigned __int8)type;
@end

@implementation HIDReportInfo

- (HIDReportInfo)initWithID:(unsigned __int8)d type:(unsigned __int8)type
{
  v12.receiver = self;
  v12.super_class = HIDReportInfo;
  v6 = [(HIDReportInfo *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_ID = d;
    v6->_type = type;
    v6->_isValid = 1;
    v8 = objc_alloc_init(NSCondition);
    commandCondition = v7->_commandCondition;
    v7->_commandCondition = v8;

    commandError = v7->_commandError;
    v7->_commandPending = 0;
    v7->_commandError = 0;
  }

  return v7;
}

@end