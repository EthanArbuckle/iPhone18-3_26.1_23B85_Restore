@interface NSError
+ (NSError)errorWithOSStatus:(int)status;
+ (id)hapErrorWithCode:(int64_t)code;
+ (id)hapErrorWithcode:(int64_t)withcode;
+ (id)hapErrorWithcode:(int64_t)withcode description:(id)description reason:(id)reason suggestion:(id)suggestion underlyingError:(id)error;
- (BOOL)isHAPError;
@end

@implementation NSError

+ (id)hapErrorWithcode:(int64_t)withcode description:(id)description reason:(id)reason suggestion:(id)suggestion underlyingError:(id)error
{
  descriptionCopy = description;
  reasonCopy = reason;
  suggestionCopy = suggestion;
  errorCopy = error;
  v15 = errorCopy;
  if (descriptionCopy || reasonCopy || suggestionCopy || errorCopy)
  {
    v16 = +[NSMutableDictionary dictionary];
    if (descriptionCopy)
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:descriptionCopy value:&stru_10027BDA0 table:0];
      [v16 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    if (reasonCopy)
    {
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:reasonCopy value:&stru_10027BDA0 table:0];
      [v16 setObject:v20 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    if (suggestionCopy)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:suggestionCopy value:&stru_10027BDA0 table:0];
      [v16 setObject:v22 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    }

    if (v15)
    {
      [v16 setObject:v15 forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = [NSError errorWithDomain:@"HAPErrorDomain" code:withcode userInfo:v16];

  return v23;
}

+ (NSError)errorWithOSStatus:(int)status
{
  if (status)
  {
    v4 = [NSError alloc];
    v11 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v4 initWithDomain:NSOSStatusErrorDomain code:status userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)hapErrorWithcode:(int64_t)withcode
{
  v4 = objc_opt_class();

  return [v4 hapErrorWithcode:withcode description:0 reason:0 suggestion:0 underlyingError:0];
}

- (BOOL)isHAPError
{
  domain = [(NSError *)self domain];
  v3 = [domain isEqualToString:@"HAPErrorDomain"];

  return v3;
}

+ (id)hapErrorWithCode:(int64_t)code
{
  v4 = objc_opt_class();

  return [v4 hapErrorWithcode:code description:0 reason:0 suggestion:0 underlyingError:0];
}

@end