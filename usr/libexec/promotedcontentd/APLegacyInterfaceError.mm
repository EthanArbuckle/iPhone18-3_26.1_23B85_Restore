@interface APLegacyInterfaceError
+ (id)createErrorWithDomain:(id)a3 code:(int)a4 reason:(id)a5;
@end

@implementation APLegacyInterfaceError

+ (id)createErrorWithDomain:(id)a3 code:(int)a4 reason:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8 && [v8 length])
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[NSError alloc] initWithDomain:v7 code:a4 userInfo:v10];

  return v11;
}

@end