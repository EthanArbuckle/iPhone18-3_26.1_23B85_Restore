@interface DMDRemoveEffectivePolicyRequest
- (DMDRemoveEffectivePolicyRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMDRemoveEffectivePolicyRequest

- (DMDRemoveEffectivePolicyRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMDRemoveEffectivePolicyRequest;
  v5 = [(DMDRemoveEffectivePolicyRequest *)&v13 initWithCoder:v4];
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
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMDRemoveEffectivePolicyRequest;
  v4 = a3;
  [(DMDRemoveEffectivePolicyRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMDRemoveEffectivePolicyRequest *)self organizationIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMDRemoveEffectivePolicyRequest *)self declarationIdentifier];
  [v4 encodeObject:v6 forKey:@"declarationIdentifier"];
}

@end