@interface APDestination
+ (APDestination)ecRouter;
- (APDestination)initWithCoder:(id)a3;
- (APDestination)initWithString:(id)a3;
- (APProtectedDestination)protectedDestination;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDestination:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APDestination

- (APProtectedDestination)protectedDestination
{
  v3 = [APProtectedDestination alloc];
  v4 = [(APDestination *)self value];
  v5 = [(APProtectedDestination *)v3 initWithString:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(APDestination *)self value];
  v3 = [v2 hash];

  return v3;
}

- (APDestination)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = APDestination;
  v5 = [(APDestination *)&v10 init];
  if (v5 && (v6 = [v4 copy], value = v5->_value, v5->_value = v6, value, !v5->_value))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)isEqualToDestination:(id)a3
{
  v4 = a3;
  v5 = [(APDestination *)self value];
  v6 = [v4 value];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (APDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APDestination;
  v5 = [(APDestination *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APDestination *)self value];
  [v4 encodeObject:v5 forKey:@"value"];
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