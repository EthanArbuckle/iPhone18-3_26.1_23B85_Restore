@interface NSBundle
+ (id)mobileBluetoothBundle;
@end

@implementation NSBundle

+ (id)mobileBluetoothBundle
{
  v2 = qword_10001EFC8;
  if (!qword_10001EFC8)
  {
    v3 = [[NSBundle alloc] initWithPath:@"/System/Library/PrivateFrameworks/MobileBluetooth.framework/"];
    v4 = qword_10001EFC8;
    qword_10001EFC8 = v3;

    v2 = qword_10001EFC8;
  }

  return v2;
}

@end