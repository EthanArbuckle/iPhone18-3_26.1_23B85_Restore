@interface NSError
+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5 description:(id)a6 underlying:(id)a7;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5 description:(id)a6 underlying:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a3;
  if (a5)
  {
    [NSMutableDictionary dictionaryWithDictionary:a5];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v14 = ;
  [v14 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];

  [v14 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
  v15 = [NSError errorWithDomain:v13 code:a4 userInfo:v14];

  return v15;
}

@end