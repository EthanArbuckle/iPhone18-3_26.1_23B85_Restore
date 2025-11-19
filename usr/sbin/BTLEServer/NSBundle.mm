@interface NSBundle
+ (id)mobileBluetoothBundle;
@end

@implementation NSBundle

+ (id)mobileBluetoothBundle
{
  v2 = qword_1000DDB38;
  if (!qword_1000DDB38)
  {
    v3 = [[NSBundle alloc] initWithPath:@"/System/Library/PrivateFrameworks/MobileBluetooth.framework/"];
    v4 = qword_1000DDB38;
    qword_1000DDB38 = v3;

    v2 = qword_1000DDB38;
  }

  return v2;
}

@end