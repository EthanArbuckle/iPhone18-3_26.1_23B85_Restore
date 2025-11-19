@interface NSData
- (id)npto_uuid;
@end

@implementation NSData

- (id)npto_uuid
{
  if ([(NSData *)self length]== 16)
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:{-[NSData bytes](self, "bytes")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end