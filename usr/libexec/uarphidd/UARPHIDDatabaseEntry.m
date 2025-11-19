@interface UARPHIDDatabaseEntry
- (BOOL)isEqual:(id)a3;
- (UARPHIDDatabaseEntry)initWithCoder:(id)a3;
- (UARPHIDDatabaseEntry)initWithVendorID:(id)a3 productID:(id)a4 serialNumber:(id)a5 uuid:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPHIDDatabaseEntry

- (UARPHIDDatabaseEntry)initWithVendorID:(id)a3 productID:(id)a4 serialNumber:(id)a5 uuid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = UARPHIDDatabaseEntry;
  v14 = [(UARPHIDDatabaseEntry *)&v26 init];
  if (v14)
  {
    v15 = [v13 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    if (!v13)
    {
      v17 = +[NSUUID UUID];
      v18 = v14->_uuid;
      v14->_uuid = v17;
    }

    v19 = [v10 copy];
    vendorID = v14->_vendorID;
    v14->_vendorID = v19;

    v21 = [v11 copy];
    productID = v14->_productID;
    v14->_productID = v21;

    v23 = [v12 copy];
    serialNumber = v14->_serialNumber;
    v14->_serialNumber = v23;
  }

  return v14;
}

- (UARPHIDDatabaseEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UARPHIDDatabaseEntry *)self init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v7 = v6;
  if (v6)
  {
    v8 = [(UARPHIDDatabaseEntry *)v6 copy];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VendorID"];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 copy];
      vendorID = v5->_vendorID;
      v5->_vendorID = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductID"];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 copy];
        productID = v5->_productID;
        v5->_productID = v16;

        v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
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

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"UUID"];
  [v5 encodeObject:self->_vendorID forKey:@"VendorID"];
  [v5 encodeObject:self->_productID forKey:@"ProductID"];
  [v5 encodeObject:self->_serialNumber forKey:@"SerialNumber"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPHIDDatabaseEntry alloc];
  productID = self->_productID;
  serialNumber = self->_serialNumber;
  uuid = self->_uuid;
  vendorID = self->_vendorID;

  return [(UARPHIDDatabaseEntry *)v4 initWithVendorID:vendorID productID:productID serialNumber:serialNumber uuid:uuid];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(UARPHIDDatabaseEntry *)self uuid];
      v7 = [(UARPHIDDatabaseEntry *)v5 uuid];

      v8 = [v6 compare:v7] == 0;
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
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v6 = *&self->_vendorID;
  serialNumber = self->_serialNumber;
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v4 = [NSString stringWithFormat:@"VID <%@>, PID <%@>, Serial Number <%@>, UUID <%@>", v6, serialNumber, v3];

  return v4;
}

@end