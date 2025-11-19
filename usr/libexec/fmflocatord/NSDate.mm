@interface NSDate
- (id)stringValueForServer;
@end

@implementation NSDate

- (id)stringValueForServer
{
  v3 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  v4 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFDateFormatterSetProperty(v3, kCFDateFormatterTimeZone, v4);
  CFDateFormatterSetFormat(v3, @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  if (v4)
  {
    CFRelease(v4);
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v3, self);
  if (v3)
  {
    CFRelease(v3);
  }

  return StringWithDate;
}

@end