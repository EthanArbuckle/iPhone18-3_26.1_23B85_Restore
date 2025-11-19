@interface NSError
+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlying:(id)a6;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlying:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:v10 forKeyedSubscript:NSLocalizedDescriptionKey];

  [v12 setObject:v9 forKeyedSubscript:NSUnderlyingErrorKey];
  v13 = [NSError errorWithDomain:v11 code:a4 userInfo:v12];

  return v13;
}

@end