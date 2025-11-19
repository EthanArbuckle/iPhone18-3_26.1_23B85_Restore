@interface NSError
+ (NSError)errorWithOSStatus:(int)a3;
+ (id)hapErrorWithCode:(int64_t)a3;
+ (id)hapErrorWithcode:(int64_t)a3;
+ (id)hapErrorWithcode:(int64_t)a3 description:(id)a4 reason:(id)a5 suggestion:(id)a6 underlyingError:(id)a7;
- (BOOL)isHAPError;
@end

@implementation NSError

+ (id)hapErrorWithcode:(int64_t)a3 description:(id)a4 reason:(id)a5 suggestion:(id)a6 underlyingError:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v11 || v12 || v13 || v14)
  {
    v16 = +[NSMutableDictionary dictionary];
    if (v11)
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:v11 value:&stru_10027BDA0 table:0];
      [v16 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    if (v12)
    {
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:v12 value:&stru_10027BDA0 table:0];
      [v16 setObject:v20 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    if (v13)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:v13 value:&stru_10027BDA0 table:0];
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

  v23 = [NSError errorWithDomain:@"HAPErrorDomain" code:a3 userInfo:v16];

  return v23;
}

+ (NSError)errorWithOSStatus:(int)a3
{
  if (a3)
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
    v9 = [v4 initWithDomain:NSOSStatusErrorDomain code:a3 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)hapErrorWithcode:(int64_t)a3
{
  v4 = objc_opt_class();

  return [v4 hapErrorWithcode:a3 description:0 reason:0 suggestion:0 underlyingError:0];
}

- (BOOL)isHAPError
{
  v2 = [(NSError *)self domain];
  v3 = [v2 isEqualToString:@"HAPErrorDomain"];

  return v3;
}

+ (id)hapErrorWithCode:(int64_t)a3
{
  v4 = objc_opt_class();

  return [v4 hapErrorWithcode:a3 description:0 reason:0 suggestion:0 underlyingError:0];
}

@end