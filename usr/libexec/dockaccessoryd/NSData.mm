@interface NSData
+ (id)parsedFromData:(id)data error:(id *)error;
- (id)serializeWithError:(id *)error;
@end

@implementation NSData

+ (id)parsedFromData:(id)data error:(id *)error
{
  v4 = [data copy];

  return v4;
}

- (id)serializeWithError:(id *)error
{
  v3 = [(NSData *)self copy];

  return v3;
}

@end