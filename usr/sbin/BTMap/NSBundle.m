@interface NSBundle
+ (id)mobileBluetoothBundle;
@end

@implementation NSBundle

+ (id)mobileBluetoothBundle
{
  v2 = qword_10000CEC0;
  if (!qword_10000CEC0)
  {
    v3 = [[NSBundle alloc] initWithPath:@"/System/Library/PrivateFrameworks/MobileBluetooth.framework/"];
    v4 = qword_10000CEC0;
    qword_10000CEC0 = v3;

    v2 = qword_10000CEC0;
  }

  return v2;
}

@end