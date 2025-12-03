@interface NSDate
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSDate)initWithFMDCoder:(id)coder error:(id *)error;
- (id)stringValueForServer;
@end

@implementation NSDate

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  fm_epochObject = [(NSDate *)self fm_epochObject];
  v7 = +[NSDate objectType];
  [coderCopy encodeNumber:fm_epochObject forKey:v7];

  return 1;
}

- (NSDate)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v7 = +[NSDate objectType];
  v8 = [coderCopy decodeNumberForKey:v7];

  if (!v8)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Key FM.date not found.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = [NSError errorWithDomain:@"FMDateErrorDomain" code:0 userInfo:v9];

LABEL_6:
    error = 0;
    goto LABEL_7;
  }

  self = -[NSDate initWithTimeIntervalSince1970:](self, "initWithTimeIntervalSince1970:", [v8 longLongValue]);
  if (!self)
  {
    goto LABEL_6;
  }

  error = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v8 longLongValue]);
LABEL_7:

  return error;
}

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