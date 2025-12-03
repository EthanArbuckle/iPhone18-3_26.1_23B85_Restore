@interface DMDSetEffectivePolicyRequest
- (DMDSetEffectivePolicyRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMDSetEffectivePolicyRequest

- (DMDSetEffectivePolicyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMDSetEffectivePolicyRequest;
  v5 = [(DMDSetEffectivePolicyRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"declarationIdentifier"];
    declarationIdentifier = v5->_declarationIdentifier;
    v5->_declarationIdentifier = v10;

    v12 = [NSSet setWithObjects:objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"type"];
    type = v5->_type;
    v5->_type = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policy"];
    v5->_policy = [v15 integerValue];

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v20 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = DMDSetEffectivePolicyRequest;
  coderCopy = coder;
  [(DMDSetEffectivePolicyRequest *)&v11 encodeWithCoder:coderCopy];
  v5 = [(DMDSetEffectivePolicyRequest *)self organizationIdentifier:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  declarationIdentifier = [(DMDSetEffectivePolicyRequest *)self declarationIdentifier];
  [coderCopy encodeObject:declarationIdentifier forKey:@"declarationIdentifier"];

  type = [(DMDSetEffectivePolicyRequest *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  v8 = [NSNumber numberWithInteger:[(DMDSetEffectivePolicyRequest *)self policy]];
  [coderCopy encodeObject:v8 forKey:@"policy"];

  identifiers = [(DMDSetEffectivePolicyRequest *)self identifiers];
  [coderCopy encodeObject:identifiers forKey:@"identifiers"];

  v10 = [NSNumber numberWithUnsignedInteger:[(DMDSetEffectivePolicyRequest *)self priority]];
  [coderCopy encodeObject:v10 forKey:@"priority"];
}

@end