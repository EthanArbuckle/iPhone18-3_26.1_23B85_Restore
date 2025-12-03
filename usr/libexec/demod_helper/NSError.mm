@interface NSError
+ (id)errorDomainMSDWithCode:(int64_t)code message:(id)message;
+ (id)errorDomainMSDWithCode:(int64_t)code message:(id)message reason:(id)reason;
+ (id)masterServerErrorRetryAfter:(id)after;
+ (id)masterServerErrorWithCode:(int64_t)code mesage:(id)mesage reason:(id)reason;
- (NSError)initWithDomainMSDCode:(int64_t)code message:(id)message;
- (NSError)initWithDomainMSDCode:(int64_t)code message:(id)message reason:(id)reason;
@end

@implementation NSError

+ (id)errorDomainMSDWithCode:(int64_t)code message:(id)message
{
  messageCopy = message;
  v6 = [[NSError alloc] initWithDomainMSDCode:code message:messageCopy];

  return v6;
}

+ (id)errorDomainMSDWithCode:(int64_t)code message:(id)message reason:(id)reason
{
  reasonCopy = reason;
  messageCopy = message;
  v9 = [[NSError alloc] initWithDomainMSDCode:code message:messageCopy reason:reasonCopy];

  return v9;
}

+ (id)masterServerErrorWithCode:(int64_t)code mesage:(id)mesage reason:(id)reason
{
  mesageCopy = mesage;
  reasonCopy = reason;
  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = v9;
  if (mesageCopy)
  {
    [v9 setObject:mesageCopy forKey:NSLocalizedDescriptionKey];
  }

  if (reasonCopy)
  {
    [v10 setObject:reasonCopy forKey:NSLocalizedFailureReasonErrorKey];
  }

  v11 = [[NSError alloc] initWithDomain:@"MSDMasterServerErrorDomain" code:code userInfo:v10];

  return v11;
}

+ (id)masterServerErrorRetryAfter:(id)after
{
  afterCopy = after;
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  [v4 setObject:afterCopy forKey:@"RetryAfter"];

  v5 = [[NSError alloc] initWithDomain:@"MSDMasterServerErrorDomain" code:202 userInfo:v4];

  return v5;
}

- (NSError)initWithDomainMSDCode:(int64_t)code message:(id)message
{
  v6 = [NSDictionary dictionaryWithObject:message forKey:NSLocalizedDescriptionKey];
  v7 = [(NSError *)self initWithDomain:@"MSDDemodErrorDomain" code:code userInfo:v6];

  return v7;
}

- (NSError)initWithDomainMSDCode:(int64_t)code message:(id)message reason:(id)reason
{
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:message, NSLocalizedDescriptionKey, reason, NSLocalizedFailureReasonErrorKey, 0];
  v8 = [(NSError *)self initWithDomain:@"MSDDemodErrorDomain" code:code userInfo:v7];

  return v8;
}

@end