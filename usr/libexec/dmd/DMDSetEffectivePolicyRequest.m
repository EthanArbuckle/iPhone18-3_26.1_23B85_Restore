@interface DMDSetEffectivePolicyRequest
- (DMDSetEffectivePolicyRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMDSetEffectivePolicyRequest

- (DMDSetEffectivePolicyRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DMDSetEffectivePolicyRequest;
  v5 = [(DMDSetEffectivePolicyRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"declarationIdentifier"];
    declarationIdentifier = v5->_declarationIdentifier;
    v5->_declarationIdentifier = v10;

    v12 = [NSSet setWithObjects:objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"type"];
    type = v5->_type;
    v5->_type = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"policy"];
    v5->_policy = [v15 integerValue];

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v20 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = DMDSetEffectivePolicyRequest;
  v4 = a3;
  [(DMDSetEffectivePolicyRequest *)&v11 encodeWithCoder:v4];
  v5 = [(DMDSetEffectivePolicyRequest *)self organizationIdentifier:v11.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMDSetEffectivePolicyRequest *)self declarationIdentifier];
  [v4 encodeObject:v6 forKey:@"declarationIdentifier"];

  v7 = [(DMDSetEffectivePolicyRequest *)self type];
  [v4 encodeObject:v7 forKey:@"type"];

  v8 = [NSNumber numberWithInteger:[(DMDSetEffectivePolicyRequest *)self policy]];
  [v4 encodeObject:v8 forKey:@"policy"];

  v9 = [(DMDSetEffectivePolicyRequest *)self identifiers];
  [v4 encodeObject:v9 forKey:@"identifiers"];

  v10 = [NSNumber numberWithUnsignedInteger:[(DMDSetEffectivePolicyRequest *)self priority]];
  [v4 encodeObject:v10 forKey:@"priority"];
}

@end