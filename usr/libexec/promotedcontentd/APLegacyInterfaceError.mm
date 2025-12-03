@interface APLegacyInterfaceError
+ (id)createErrorWithDomain:(id)domain code:(int)code reason:(id)reason;
@end

@implementation APLegacyInterfaceError

+ (id)createErrorWithDomain:(id)domain code:(int)code reason:(id)reason
{
  domainCopy = domain;
  reasonCopy = reason;
  v9 = reasonCopy;
  if (reasonCopy && [reasonCopy length])
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[NSError alloc] initWithDomain:domainCopy code:code userInfo:v10];

  return v11;
}

@end