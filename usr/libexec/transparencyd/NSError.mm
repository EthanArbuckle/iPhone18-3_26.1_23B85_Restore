@interface NSError
+ (NSError)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info description:(id)description underlying:(id)underlying;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info description:(id)description underlying:(id)underlying
{
  underlyingCopy = underlying;
  descriptionCopy = description;
  domainCopy = domain;
  if (info)
  {
    [NSMutableDictionary dictionaryWithDictionary:info];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v14 = ;
  [v14 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];

  [v14 setObject:underlyingCopy forKeyedSubscript:NSUnderlyingErrorKey];
  v15 = [NSError errorWithDomain:domainCopy code:code userInfo:v14];

  return v15;
}

@end