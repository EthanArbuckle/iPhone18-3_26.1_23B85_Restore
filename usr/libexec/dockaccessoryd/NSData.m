@interface NSData
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (id)serializeWithError:(id *)a3;
@end

@implementation NSData

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v4 = [a3 copy];

  return v4;
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(NSData *)self copy];

  return v3;
}

@end