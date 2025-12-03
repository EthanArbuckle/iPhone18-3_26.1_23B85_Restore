@interface NSData
- (BOOL)ps_containsString:(id)string;
@end

@implementation NSData

- (BOOL)ps_containsString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self)
  {
    v6 = [stringCopy dataUsingEncoding:4];
    LOBYTE(self) = [(NSData *)self rangeOfData:v6 options:0 range:0, [(NSData *)self length]]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  return self;
}

@end