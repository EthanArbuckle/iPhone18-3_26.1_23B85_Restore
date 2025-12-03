@interface UARPHIDDatabaseEntry
- (BOOL)isEqual:(id)equal;
- (UARPHIDDatabaseEntry)initWithCoder:(id)coder;
- (UARPHIDDatabaseEntry)initWithVendorID:(id)d productID:(id)iD serialNumber:(id)number uuid:(id)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPHIDDatabaseEntry

- (UARPHIDDatabaseEntry)initWithVendorID:(id)d productID:(id)iD serialNumber:(id)number uuid:(id)uuid
{
  dCopy = d;
  iDCopy = iD;
  numberCopy = number;
  uuidCopy = uuid;
  v26.receiver = self;
  v26.super_class = UARPHIDDatabaseEntry;
  v14 = [(UARPHIDDatabaseEntry *)&v26 init];
  if (v14)
  {
    v15 = [uuidCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    if (!uuidCopy)
    {
      v17 = +[NSUUID UUID];
      v18 = v14->_uuid;
      v14->_uuid = v17;
    }

    v19 = [dCopy copy];
    vendorID = v14->_vendorID;
    v14->_vendorID = v19;

    v21 = [iDCopy copy];
    productID = v14->_productID;
    v14->_productID = v21;

    v23 = [numberCopy copy];
    serialNumber = v14->_serialNumber;
    v14->_serialNumber = v23;
  }

  return v14;
}

- (UARPHIDDatabaseEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UARPHIDDatabaseEntry *)self init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v7 = v6;
  if (v6)
  {
    v8 = [(UARPHIDDatabaseEntry *)v6 copy];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VendorID"];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 copy];
      vendorID = v5->_vendorID;
      v5->_vendorID = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductID"];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 copy];
        productID = v5->_productID;
        v5->_productID = v16;

        v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 copy];
          serialNumber = v5->_serialNumber;
          v5->_serialNumber = v20;

LABEL_7:
          v7 = v5;
          goto LABEL_11;
        }
      }
    }

    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"UUID"];
  [coderCopy encodeObject:self->_vendorID forKey:@"VendorID"];
  [coderCopy encodeObject:self->_productID forKey:@"ProductID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"SerialNumber"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPHIDDatabaseEntry alloc];
  productID = self->_productID;
  serialNumber = self->_serialNumber;
  uuid = self->_uuid;
  vendorID = self->_vendorID;

  return [(UARPHIDDatabaseEntry *)v4 initWithVendorID:vendorID productID:productID serialNumber:serialNumber uuid:uuid];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      uuid = [(UARPHIDDatabaseEntry *)self uuid];
      uuid2 = [(UARPHIDDatabaseEntry *)v5 uuid];

      v8 = [uuid compare:uuid2] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [uUIDString hash];

  return v3;
}

- (id)description
{
  v6 = *&self->_vendorID;
  serialNumber = self->_serialNumber;
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v4 = [NSString stringWithFormat:@"VID <%@>, PID <%@>, Serial Number <%@>, UUID <%@>", v6, serialNumber, uUIDString];

  return v4;
}

@end