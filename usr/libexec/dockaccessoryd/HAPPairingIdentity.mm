@interface HAPPairingIdentity
- (BOOL)isStrictlyEqual:(id)equal;
- (HAPPairingIdentity)initWithCoder:(id)coder;
- (HAPPairingIdentity)initWithIdentifier:(id)identifier controllerKeyIdentifier:(id)keyIdentifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions;
- (HAPPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPPairingIdentity

- (HAPPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions
{
  result = [(HAPPairingIdentity *)self initWithIdentifier:identifier controllerKeyIdentifier:0 publicKey:key privateKey:privateKey permissions:permissions];
  if (result)
  {
    result->_permissions = permissions;
  }

  return result;
}

- (HAPPairingIdentity)initWithIdentifier:(id)identifier controllerKeyIdentifier:(id)keyIdentifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions
{
  keyIdentifierCopy = keyIdentifier;
  v17.receiver = self;
  v17.super_class = HAPPairingIdentity;
  v14 = [(HAPPairingIdentity *)&v17 initWithIdentifier:identifier publicKey:key privateKey:privateKey];
  v15 = v14;
  if (v14)
  {
    v14->_permissions = permissions;
    objc_storeStrong(&v14->_controllerKeyIdentifier, keyIdentifier);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPPairingIdentity allocWithZone:zone];
  identifier = [(HAPPairingIdentity *)self identifier];
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  publicKey = [(HAPPairingIdentity *)self publicKey];
  privateKey = [(HAPPairingIdentity *)self privateKey];
  v9 = [(HAPPairingIdentity *)v4 initWithIdentifier:identifier controllerKeyIdentifier:controllerKeyIdentifier publicKey:publicKey privateKey:privateKey permissions:[(HAPPairingIdentity *)self permissions]];

  return v9;
}

- (HAPPairingIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v5 = [(HAPPairingIdentity *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_permissions = [coderCopy decodeIntegerForKey:@"HAP.permissions"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.ctrlId"];
    controllerKeyIdentifier = v5->_controllerKeyIdentifier;
    v5->_controllerKeyIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HAPPairingIdentity;
  coderCopy = coder;
  [(HAPPairingIdentity *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HAPPairingIdentity permissions](self forKey:{"permissions", v6.receiver, v6.super_class), @"HAP.permissions"}];
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  [coderCopy encodeObject:controllerKeyIdentifier forKey:@"HAP.ctrlId"];
}

- (BOOL)isStrictlyEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v12.receiver = self, v12.super_class = HAPPairingIdentity, [(HAPPairingIdentity *)&v12 isEqual:equalCopy]) && (v7 = [(HAPPairingIdentity *)self permissions], v7 == [(HAPPairingIdentity *)self permissions]))
    {
      controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
      controllerKeyIdentifier2 = [(HAPPairingIdentity *)v6 controllerKeyIdentifier];
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
  attributeDescriptions = [(HAPPairingIdentity *)&v9 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = [HMFAttributeDescription alloc];
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [v5 initWithName:@"controllerKeyIdentifier" value:controllerKeyIdentifier];
  [v4 addObject:v7];

  return v4;
}

@end