@interface NFCHardwareManagerInterface
+ (id)interface;
@end

@implementation NFCHardwareManagerInterface

+ (id)interface
{
  if (qword_10035D960 != -1)
  {
    dispatch_once(&qword_10035D960, &stru_100316C30);
  }

  v3 = qword_10035D958;

  return v3;
}

@end