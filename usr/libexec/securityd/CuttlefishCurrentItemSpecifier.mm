@interface CuttlefishCurrentItemSpecifier
- (CuttlefishCurrentItemSpecifier)initWithCoder:(id)coder;
- (id)description;
- (id)init:(id)init zoneID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CuttlefishCurrentItemSpecifier

- (id)description
{
  zoneID = [(CuttlefishCurrentItemSpecifier *)self zoneID];
  itemPtrName = [(CuttlefishCurrentItemSpecifier *)self itemPtrName];
  v5 = [NSString stringWithFormat:@"<CuttlefishCurrentItemSpecifier(%@): %@>", zoneID, itemPtrName];

  return v5;
}

- (CuttlefishCurrentItemSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CuttlefishCurrentItemSpecifier;
  v5 = [(CuttlefishCurrentItemSpecifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemPtrName"];
    itemPtrName = v5->_itemPtrName;
    v5->_itemPtrName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemPtrName = [(CuttlefishCurrentItemSpecifier *)self itemPtrName];
  [coderCopy encodeObject:itemPtrName forKey:@"itemPtrName"];

  zoneID = [(CuttlefishCurrentItemSpecifier *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];
}

- (id)init:(id)init zoneID:(id)d
{
  initCopy = init;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CuttlefishCurrentItemSpecifier;
  v9 = [(CuttlefishCurrentItemSpecifier *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_itemPtrName, init);
    objc_storeStrong(p_isa + 1, d);
  }

  return p_isa;
}

@end