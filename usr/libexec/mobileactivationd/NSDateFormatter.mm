@interface NSDateFormatter
- (id)dateFromServerString:(id)string withError:(id *)error;
@end

@implementation NSDateFormatter

- (id)dateFromServerString:(id)string withError:(id *)error
{
  stringCopy = string;
  v6 = stringCopy;
  memset(&v25, 0, sizeof(v25));
  if (!stringCopy)
  {
    MobileActivationError = createMobileActivationError("[NSDateFormatter(MobileActivation) dateFromServerString:withError:]", 27, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.", v21, v23, *&v25.tm_sec, *&v25.tm_hour, *&v25.tm_mon, *&v25.tm_wday, *&v25.tm_isdst, v25.tm_gmtoff, v25.tm_zone);
    goto LABEL_10;
  }

  if (!strptime_l([stringCopy UTF8String], "%a, %d %b %Y %H:%M:%S %Z", &v25, 0))
  {
    v12 = *__error();
    v13 = __error();
    v22 = v12;
    v24 = strerror(*v13);
    v14 = @"Failed to create time object: %d (%s)";
    v15 = 32;
LABEL_9:
    MobileActivationError = createMobileActivationError("[NSDateFormatter(MobileActivation) dateFromServerString:withError:]", v15, @"com.apple.MobileActivation.ErrorDomain", -1, 0, v14, v22, v24, *&v25.tm_sec, *&v25.tm_hour, *&v25.tm_mon, *&v25.tm_wday, *&v25.tm_isdst, v25.tm_gmtoff, v25.tm_zone);
    goto LABEL_10;
  }

  v7 = mktime(&v25);
  if (v7 == -1)
  {
    v16 = *__error();
    v17 = __error();
    v22 = v16;
    v24 = strerror(*v17);
    v14 = @"Failed to create raw time: %d (%s)";
    v15 = 38;
    goto LABEL_9;
  }

  v8 = [[NSDate alloc] initWithTimeIntervalSince1970:v7];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    goto LABEL_13;
  }

  MobileActivationError = createMobileActivationError("[NSDateFormatter(MobileActivation) dateFromServerString:withError:]", 44, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create date.", v21, v23, *&v25.tm_sec, *&v25.tm_hour, *&v25.tm_mon, *&v25.tm_wday, *&v25.tm_isdst, v25.tm_gmtoff, v25.tm_zone);
LABEL_10:
  v18 = MobileActivationError;
  v10 = v18;
  if (error)
  {
    v19 = v18;
    v9 = 0;
    *error = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

@end