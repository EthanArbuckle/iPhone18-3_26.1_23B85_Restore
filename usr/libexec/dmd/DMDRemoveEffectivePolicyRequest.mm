@interface DMDRemoveEffectivePolicyRequest
- (DMDRemoveEffectivePolicyRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMDRemoveEffectivePolicyRequest

- (DMDRemoveEffectivePolicyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMDRemoveEffectivePolicyRequest;
  v5 = [(DMDRemoveEffectivePolicyRequest *)&v13 initWithCoder:coderCopy];
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
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMDRemoveEffectivePolicyRequest;
  coderCopy = coder;
  [(DMDRemoveEffectivePolicyRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMDRemoveEffectivePolicyRequest *)self organizationIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  declarationIdentifier = [(DMDRemoveEffectivePolicyRequest *)self declarationIdentifier];
  [coderCopy encodeObject:declarationIdentifier forKey:@"declarationIdentifier"];
}

@end