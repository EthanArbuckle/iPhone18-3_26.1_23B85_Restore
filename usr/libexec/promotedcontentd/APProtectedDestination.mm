@interface APProtectedDestination
- (APProtectedDestination)initWithString:(id)a3;
@end

@implementation APProtectedDestination

- (APProtectedDestination)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APProtectedDestination;
  v5 = [(APProtectedDestination *)&v9 init];
  if (v5)
  {
    v6 = [v4 sha256hash];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

@end