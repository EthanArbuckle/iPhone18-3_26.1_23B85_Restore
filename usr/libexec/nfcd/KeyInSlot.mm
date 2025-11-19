@interface KeyInSlot
- (KeyInSlot)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KeyInSlot

- (KeyInSlot)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = KeyInSlot;
  v5 = [(NFTrustObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = sub_10001F2FC();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"keyUniqueIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v7;

    v5->_numQuery = [v4 decodeIntForKey:@"numQuery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_keyIdentifier forKey:@"keyUniqueIdentifier"];
    numQuery = self->_numQuery;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"keyUniqueIdentifier"];
    numQuery = 0;
  }

  [a3 encodeInteger:numQuery forKey:@"numQuery"];
}

@end