@interface KeyInSlot
- (KeyInSlot)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KeyInSlot

- (KeyInSlot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = KeyInSlot;
  v5 = [(NFTrustObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = sub_10001F2FC();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"keyUniqueIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v7;

    v5->_numQuery = [coderCopy decodeIntForKey:@"numQuery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_keyIdentifier forKey:@"keyUniqueIdentifier"];
    numQuery = self->_numQuery;
  }

  else
  {
    [coder encodeObject:0 forKey:@"keyUniqueIdentifier"];
    numQuery = 0;
  }

  [coder encodeInteger:numQuery forKey:@"numQuery"];
}

@end