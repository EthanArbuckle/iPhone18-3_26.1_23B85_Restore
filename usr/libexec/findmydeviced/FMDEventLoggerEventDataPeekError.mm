@interface FMDEventLoggerEventDataPeekError
- (FMDEventLoggerEventDataPeekError)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setError:(id)error;
@end

@implementation FMDEventLoggerEventDataPeekError

- (void)setError:(id)error
{
  v13.receiver = self;
  v13.super_class = FMDEventLoggerEventDataPeekError;
  errorCopy = error;
  [(FMDEventLoggerEventError *)&v13 setError:errorCopy];
  code = [errorCopy code];
  localizedFailureReason = [errorCopy localizedFailureReason];
  v7 = [NSString stringWithFormat:@"%lu-%@", code, localizedFailureReason];
  [(FMDEventLoggerEventError *)self setObject:v7 forKey:@"FMDEventLoggerFacilityDataPeekDistributionValue"];

  v12.receiver = self;
  v12.super_class = FMDEventLoggerEventDataPeekError;
  eventName = [(FMDEventLoggerEventError *)&v12 eventName];
  domain = [errorCopy domain];

  v10 = [NSString stringWithFormat:@".%@", domain];
  v11 = [eventName stringByAppendingString:v10];
  [(FMDEventLoggerEventDataPeekError *)self setDataPeekEventName:v11];
}

- (FMDEventLoggerEventDataPeekError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = FMDEventLoggerEventDataPeekError;
  v5 = [(FMDEventLoggerEventError *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataPeekEventName"];
    [(FMDEventLoggerEventDataPeekError *)v5 setDataPeekEventName:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FMDEventLoggerEventDataPeekError;
  coderCopy = coder;
  [(FMDEventLoggerEventError *)&v6 encodeWithCoder:coderCopy];
  v5 = [(FMDEventLoggerEventDataPeekError *)self dataPeekEventName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dataPeekEventName"];
}

@end