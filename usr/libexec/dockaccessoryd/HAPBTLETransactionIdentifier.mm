@interface HAPBTLETransactionIdentifier
+ (id)randomTransactionIdentifier;
+ (unsigned)generateRequestIdentifier;
- (BOOL)isEqual:(id)a3;
- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
@end

@implementation HAPBTLETransactionIdentifier

+ (unsigned)generateRequestIdentifier
{
  v5 = 0;
  v2 = sub_100010C10(1uLL);
  [v2 getBytes:&v5 length:1];
  v3 = v5;

  return v3;
}

+ (id)randomTransactionIdentifier
{
  v6 = 0;
  v2 = sub_100010C10(1uLL);
  [v2 getBytes:&v6 length:1];
  v3 = [HAPBTLETransactionIdentifier alloc];
  v4 = [(HAPBTLETransactionIdentifier *)v3 initWithUnsignedCharValue:v6];

  return v4;
}

- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = HAPBTLETransactionIdentifier;
  result = [(HAPBTLETransactionIdentifier *)&v5 init];
  if (result)
  {
    result->_unsignedCharValue = a3;
  }

  return result;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HAPBTLETransactionIdentifier *)self shortDescription];
  if (v3)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  v7 = [NSString stringWithFormat:@"<%@%@, Identifier = %u>", v5, v6, [(HAPBTLETransactionIdentifier *)self unsignedCharValue]];
  if (v3)
  {
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HAPBTLETransactionIdentifier *)self unsignedCharValue];
      v6 = v5 == [(HAPBTLETransactionIdentifier *)v4 unsignedCharValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end