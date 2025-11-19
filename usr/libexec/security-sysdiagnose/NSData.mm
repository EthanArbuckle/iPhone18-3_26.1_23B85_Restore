@interface NSData
- (id)asHexString;
@end

@implementation NSData

- (id)asHexString
{
  Length = CFDataGetLength(self);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(self);
  v6 = CFDataGetLength(self);
  if (v6 >= 1)
  {
    v7 = v6;
    do
    {
      v8 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v8);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

@end