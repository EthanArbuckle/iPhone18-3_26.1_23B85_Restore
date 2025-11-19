@interface MILaunchServicesOperation
- (BOOL)isEqual:(id)a3;
- (MILaunchServicesOperation)initWithCoder:(id)a3;
- (MILaunchServicesOperation)initWithOperationUUID:(id)a3 serialNumber:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MILaunchServicesOperation

- (MILaunchServicesOperation)initWithOperationUUID:(id)a3 serialNumber:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MILaunchServicesOperation;
  v8 = [(MILaunchServicesOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_operationUUID, a3);
    v9->_serialNumber = a4;
  }

  return v9;
}

- (MILaunchServicesOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MILaunchServicesOperation;
  v5 = [(MILaunchServicesOperation *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationUUID"];
    operationUUID = v5->_operationUUID;
    v5->_operationUUID = v6;

    if (!v5->_operationUUID)
    {
      v11 = sub_100010734("[MILaunchServicesOperation initWithCoder:]", 40, MIInstallerErrorDomain, 186, 0, 0, @"Missing operation UUID when deserializing LS operation", v8, v13.receiver);
      [v4 failWithError:v11];

      v10 = 0;
      goto LABEL_6;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v5->_serialNumber = [v9 unsignedIntegerValue];
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MILaunchServicesOperation *)self operationUUID];
  [v4 encodeObject:v5 forKey:@"operationUUID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesOperation *)self serialNumber]];
  [v4 encodeObject:v6 forKey:@"serialNumber"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MILaunchServicesOperation *)self operationUUID];
      v7 = [(MILaunchServicesOperation *)v5 operationUUID];
      v8 = sub_100011064(v6, v7);

      if (v8)
      {
        v9 = [(MILaunchServicesOperation *)v5 serialNumber];
        v10 = v9 == [(MILaunchServicesOperation *)self serialNumber];
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
  v3 = [(MILaunchServicesOperation *)self operationUUID];
  v4 = [v3 hash];
  v5 = [(MILaunchServicesOperation *)self serialNumber];

  return v5 ^ v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MILaunchServicesOperation *)self operationUUID];
  v6 = [NSString stringWithFormat:@"<%@: %@:%lu>", v4, v5, [(MILaunchServicesOperation *)self serialNumber]];

  return v6;
}

@end