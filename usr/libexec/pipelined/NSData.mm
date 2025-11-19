@interface NSData
- (BOOL)ps_containsString:(id)a3;
@end

@implementation NSData

- (BOOL)ps_containsString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    v6 = [v4 dataUsingEncoding:4];
    LOBYTE(self) = [(NSData *)self rangeOfData:v6 options:0 range:0, [(NSData *)self length]]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  return self;
}

@end