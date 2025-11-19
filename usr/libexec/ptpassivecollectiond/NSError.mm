@interface NSError
+ (id)error:(int64_t)a3 description:(id)a4;
+ (id)error:(int64_t)a3 description:(id)a4 underlyingError:(id)a5;
+ (id)passiveTraceError:(int64_t)a3 description:(id)a4;
@end

@implementation NSError

+ (id)error:(int64_t)a3 description:(id)a4
{
  v4 = @"Unknown Error (description cannot be nil)";
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    a3 = 0;
  }

  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"PerformanceTraceError" code:a3 userInfo:v6];

  return v7;
}

+ (id)error:(int64_t)a3 description:(id)a4 underlyingError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v16[0] = NSLocalizedDescriptionKey;
      v16[1] = NSUnderlyingErrorKey;
      v17[0] = v7;
      v17[1] = v8;
      v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v11 = a3;
      goto LABEL_7;
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unknown Error (underlyingError cannot be nil)";
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unknown Error (description cannot be nil)";
  }

  v10 = [NSDictionary dictionaryWithObject:v13 forKey:v12];
  v11 = 0;
LABEL_7:
  v14 = [NSError errorWithDomain:@"PerformanceTraceError" code:v11 userInfo:v10];

  return v14;
}

+ (id)passiveTraceError:(int64_t)a3 description:(id)a4
{
  v4 = @"Unknown Error (description cannot be nil)";
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    a3 = 0;
  }

  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"PerformanceTraceError" code:a3 userInfo:v6];

  return v7;
}

@end