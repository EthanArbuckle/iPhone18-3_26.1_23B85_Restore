@interface MILaunchServicesOperation
- (BOOL)isEqual:(id)equal;
- (MILaunchServicesOperation)initWithCoder:(id)coder;
- (MILaunchServicesOperation)initWithOperationUUID:(id)d serialNumber:(unint64_t)number;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MILaunchServicesOperation

- (MILaunchServicesOperation)initWithOperationUUID:(id)d serialNumber:(unint64_t)number
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MILaunchServicesOperation;
  v8 = [(MILaunchServicesOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_operationUUID, d);
    v9->_serialNumber = number;
  }

  return v9;
}

- (MILaunchServicesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MILaunchServicesOperation;
  v5 = [(MILaunchServicesOperation *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationUUID"];
    operationUUID = v5->_operationUUID;
    v5->_operationUUID = v6;

    if (!v5->_operationUUID)
    {
      v11 = sub_100010734("[MILaunchServicesOperation initWithCoder:]", 40, MIInstallerErrorDomain, 186, 0, 0, @"Missing operation UUID when deserializing LS operation", v8, v13.receiver);
      [coderCopy failWithError:v11];

      v10 = 0;
      goto LABEL_6;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v5->_serialNumber = [v9 unsignedIntegerValue];
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  [coderCopy encodeObject:operationUUID forKey:@"operationUUID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesOperation *)self serialNumber]];
  [coderCopy encodeObject:v6 forKey:@"serialNumber"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      operationUUID = [(MILaunchServicesOperation *)self operationUUID];
      operationUUID2 = [(MILaunchServicesOperation *)v5 operationUUID];
      v8 = sub_100011064(operationUUID, operationUUID2);

      if (v8)
      {
        serialNumber = [(MILaunchServicesOperation *)v5 serialNumber];
        v10 = serialNumber == [(MILaunchServicesOperation *)self serialNumber];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  v4 = [operationUUID hash];
  serialNumber = [(MILaunchServicesOperation *)self serialNumber];

  return serialNumber ^ v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  v6 = [NSString stringWithFormat:@"<%@: %@:%lu>", v4, operationUUID, [(MILaunchServicesOperation *)self serialNumber]];

  return v6;
}

@end