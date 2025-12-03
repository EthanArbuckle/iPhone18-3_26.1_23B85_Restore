@interface CuttlefishPCSServiceIdentifier
- (CuttlefishPCSServiceIdentifier)initWithCoder:(id)coder;
- (id)description;
- (id)init:(id)init PCSPublicKey:(id)key zoneID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CuttlefishPCSServiceIdentifier

- (id)description
{
  zoneID = [(CuttlefishPCSServiceIdentifier *)self zoneID];
  pCSServiceID = [(CuttlefishPCSServiceIdentifier *)self PCSServiceID];
  v5 = [NSString stringWithFormat:@"<CuttlefishPCSServiceIdentifier(%@): %@>", zoneID, pCSServiceID];

  return v5;
}

- (CuttlefishPCSServiceIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CuttlefishPCSServiceIdentifier;
  v5 = [(CuttlefishPCSServiceIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pcsServiceID"];
    PCSServiceID = v5->_PCSServiceID;
    v5->_PCSServiceID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pcsPublicKey"];
    PCSPublicKey = v5->_PCSPublicKey;
    v5->_PCSPublicKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pCSPublicKey = [(CuttlefishPCSServiceIdentifier *)self PCSPublicKey];
  [coderCopy encodeObject:pCSPublicKey forKey:@"pcsPublicKey"];

  pCSServiceID = [(CuttlefishPCSServiceIdentifier *)self PCSServiceID];
  [coderCopy encodeObject:pCSServiceID forKey:@"pcsServiceID"];

  zoneID = [(CuttlefishPCSServiceIdentifier *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];
}

- (id)init:(id)init PCSPublicKey:(id)key zoneID:(id)d
{
  initCopy = init;
  keyCopy = key;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CuttlefishPCSServiceIdentifier;
  v12 = [(CuttlefishPCSServiceIdentifier *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_PCSServiceID, init);
    objc_storeStrong(p_isa + 2, key);
    objc_storeStrong(p_isa + 3, d);
  }

  return p_isa;
}

@end