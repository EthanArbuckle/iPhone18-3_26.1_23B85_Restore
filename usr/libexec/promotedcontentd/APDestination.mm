@interface APDestination
+ (APDestination)ecRouter;
- (APDestination)initWithCoder:(id)coder;
- (APDestination)initWithString:(id)string;
- (APProtectedDestination)protectedDestination;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDestination:(id)destination;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APDestination

- (APProtectedDestination)protectedDestination
{
  v3 = [APProtectedDestination alloc];
  value = [(APDestination *)self value];
  v5 = [(APProtectedDestination *)v3 initWithString:value];

  return v5;
}

- (unint64_t)hash
{
  value = [(APDestination *)self value];
  v3 = [value hash];

  return v3;
}

- (APDestination)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = APDestination;
  v5 = [(APDestination *)&v10 init];
  if (v5 && (v6 = [stringCopy copy], value = v5->_value, v5->_value = v6, value, !v5->_value))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)isEqualToDestination:(id)destination
{
  destinationCopy = destination;
  value = [(APDestination *)self value];
  value2 = [destinationCopy value];

  LOBYTE(destinationCopy) = [value isEqualToString:value2];
  return destinationCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(APDestination *)self isEqualToDestination:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (APDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APDestination;
  v5 = [(APDestination *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(APDestination *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

+ (APDestination)ecRouter
{
  if (qword_1004E6E58[0] != -1)
  {
    sub_1003953A8();
  }

  v3 = qword_1004E6E50;

  return v3;
}

@end