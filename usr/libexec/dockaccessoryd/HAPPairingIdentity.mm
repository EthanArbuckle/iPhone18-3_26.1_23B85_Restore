@interface HAPPairingIdentity
- (BOOL)isStrictlyEqual:(id)a3;
- (HAPPairingIdentity)initWithCoder:(id)a3;
- (HAPPairingIdentity)initWithIdentifier:(id)a3 controllerKeyIdentifier:(id)a4 publicKey:(id)a5 privateKey:(id)a6 permissions:(unint64_t)a7;
- (HAPPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5 permissions:(unint64_t)a6;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPPairingIdentity

- (HAPPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5 permissions:(unint64_t)a6
{
  result = [(HAPPairingIdentity *)self initWithIdentifier:a3 controllerKeyIdentifier:0 publicKey:a4 privateKey:a5 permissions:a6];
  if (result)
  {
    result->_permissions = a6;
  }

  return result;
}

- (HAPPairingIdentity)initWithIdentifier:(id)a3 controllerKeyIdentifier:(id)a4 publicKey:(id)a5 privateKey:(id)a6 permissions:(unint64_t)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = HAPPairingIdentity;
  v14 = [(HAPPairingIdentity *)&v17 initWithIdentifier:a3 publicKey:a5 privateKey:a6];
  v15 = v14;
  if (v14)
  {
    v14->_permissions = a7;
    objc_storeStrong(&v14->_controllerKeyIdentifier, a4);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPPairingIdentity allocWithZone:a3];
  v5 = [(HAPPairingIdentity *)self identifier];
  v6 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [(HAPPairingIdentity *)self publicKey];
  v8 = [(HAPPairingIdentity *)self privateKey];
  v9 = [(HAPPairingIdentity *)v4 initWithIdentifier:v5 controllerKeyIdentifier:v6 publicKey:v7 privateKey:v8 permissions:[(HAPPairingIdentity *)self permissions]];

  return v9;
}

- (HAPPairingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v5 = [(HAPPairingIdentity *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_permissions = [v4 decodeIntegerForKey:@"HAP.permissions"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.ctrlId"];
    controllerKeyIdentifier = v5->_controllerKeyIdentifier;
    v5->_controllerKeyIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HAPPairingIdentity;
  v4 = a3;
  [(HAPPairingIdentity *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[HAPPairingIdentity permissions](self forKey:{"permissions", v6.receiver, v6.super_class), @"HAP.permissions"}];
  v5 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  [v4 encodeObject:v5 forKey:@"HAP.ctrlId"];
}

- (BOOL)isStrictlyEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v12.receiver = self, v12.super_class = HAPPairingIdentity, [(HAPPairingIdentity *)&v12 isEqual:v4]) && (v7 = [(HAPPairingIdentity *)self permissions], v7 == [(HAPPairingIdentity *)self permissions]))
    {
      v8 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
      v9 = [(HAPPairingIdentity *)v6 controllerKeyIdentifier];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)attributeDescriptions
{
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v3 = [(HAPPairingIdentity *)&v9 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = [HMFAttributeDescription alloc];
  v6 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [v5 initWithName:@"controllerKeyIdentifier" value:v6];
  [v4 addObject:v7];

  return v4;
}

@end