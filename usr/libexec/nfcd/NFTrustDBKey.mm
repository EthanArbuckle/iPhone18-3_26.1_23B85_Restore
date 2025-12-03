@interface NFTrustDBKey
- (NFTrustDBKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustDBKey

- (NFTrustDBKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NFTrustDBKey;
  v5 = [(NFTrustObject *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NFTrustDBKey *)v5 setValue:v6 forKey:@"identifier"];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(NFTrustDBKey *)v5 setValue:v7 forKey:@"applicationIdentifier"];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceAID"];
    [(NFTrustDBKey *)v5 setValue:v8 forKey:@"instanceAID"];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slot"];
    [(NFTrustDBKey *)v5 setValue:v9 forKey:@"slot"];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyAttestationAuthority"];
    [(NFTrustDBKey *)v5 setValue:v10 forKey:@"keyAttestationAuthority"];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyAttestation"];
    [(NFTrustDBKey *)v5 setValue:v11 forKey:@"keyAttestation"];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counterValue"];
    [(NFTrustDBKey *)v5 setValue:v12 forKey:@"counterValue"];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counterLimit"];
    [(NFTrustDBKey *)v5 setValue:v13 forKey:@"counterLimit"];

    v14 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfArrayOfClass:objc_opt_class() forKey:@"localValidations"];
    [(NFTrustDBKey *)v5 setValue:v14 forKey:@"localValidations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
    applicationIdentifier = [(NFTrustDBKey *)self applicationIdentifier];
    [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

    instanceAID = [(NFTrustDBKey *)self instanceAID];
    [coderCopy encodeObject:instanceAID forKey:@"instanceAID"];

    [coderCopy encodeObject:self->_slot forKey:@"slot"];
    [coderCopy encodeObject:self->_keyAttestationAuthority forKey:@"keyAttestationAuthority"];
    [coderCopy encodeObject:self->_keyAttestation forKey:@"keyAttestation"];
    [coderCopy encodeObject:self->_counterValue forKey:@"counterValue"];
    counterLimit = self->_counterLimit;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"identifier"];
    applicationIdentifier2 = [0 applicationIdentifier];
    [coderCopy encodeObject:applicationIdentifier2 forKey:@"applicationIdentifier"];

    instanceAID2 = [0 instanceAID];
    [coderCopy encodeObject:instanceAID2 forKey:@"instanceAID"];

    [coderCopy encodeObject:0 forKey:@"slot"];
    [coderCopy encodeObject:0 forKey:@"keyAttestationAuthority"];
    [coderCopy encodeObject:0 forKey:@"keyAttestation"];
    [coderCopy encodeObject:0 forKey:@"counterValue"];
    counterLimit = 0;
  }

  [coderCopy encodeObject:counterLimit forKey:@"counterLimit"];
  localValidations = [(NFTrustDBKey *)self localValidations];
  [coderCopy encodeObject:localValidations forKey:@"localValidations"];
}

@end