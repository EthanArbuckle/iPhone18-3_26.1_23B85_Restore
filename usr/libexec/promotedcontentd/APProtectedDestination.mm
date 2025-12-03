@interface APProtectedDestination
- (APProtectedDestination)initWithString:(id)string;
@end

@implementation APProtectedDestination

- (APProtectedDestination)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = APProtectedDestination;
  v5 = [(APProtectedDestination *)&v9 init];
  if (v5)
  {
    sha256hash = [stringCopy sha256hash];
    value = v5->_value;
    v5->_value = sha256hash;
  }

  return v5;
}

@end