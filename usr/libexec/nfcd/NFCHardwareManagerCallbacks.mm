@interface NFCHardwareManagerCallbacks
+ (id)interface;
@end

@implementation NFCHardwareManagerCallbacks

+ (id)interface
{
  if (qword_10035D970 != -1)
  {
    dispatch_once(&qword_10035D970, &stru_100316C50);
  }

  v3 = qword_10035D968;

  return v3;
}

@end