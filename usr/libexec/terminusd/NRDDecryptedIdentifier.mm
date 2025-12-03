@interface NRDDecryptedIdentifier
- (id)description;
@end

@implementation NRDDecryptedIdentifier

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    version = self->_version;
    v5 = self->_identity;
    nrUUID = self->_nrUUID;
  }

  else
  {
    v5 = 0;
    version = 0;
    nrUUID = 0;
  }

  nrUUID = [v3 initWithFormat:@"%u/%@/%@", version, v5, nrUUID];

  return nrUUID;
}

@end