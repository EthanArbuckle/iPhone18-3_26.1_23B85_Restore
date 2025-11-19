@interface MILaunchServicesUnregisterOperation
- (BOOL)isEqual:(id)a3;
- (MILaunchServicesUnregisterOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 registrationUUID:(id)a5 serialNumber:(unint64_t)a6;
- (MILaunchServicesUnregisterOperation)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MILaunchServicesUnregisterOperation

- (MILaunchServicesUnregisterOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 registrationUUID:(id)a5 serialNumber:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = MILaunchServicesUnregisterOperation;
  v12 = [(MILaunchServicesOperation *)&v15 initWithOperationUUID:a5 serialNumber:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a3);
    v13->_domain = a4;
  }

  return v13;
}

- (MILaunchServicesUnregisterOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MILaunchServicesUnregisterOperation;
  v5 = [(MILaunchServicesOperation *)&v20 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  if (!v5->_bundleID)
  {
    v12 = MIInstallerErrorDomain;
    v13 = @"Missing bundle ID when deserializing unregistration";
    v14 = 42;
LABEL_7:
    v16 = sub_100010734("[MILaunchServicesUnregisterOperation initWithCoder:]", v14, v12, 186, 0, 0, v13, v8, v18);
    [v4 failWithError:v16];

    v11 = 0;
    goto LABEL_8;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v5->_domain = [v9 unsignedIntegerValue];

  domain = v5->_domain;
  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    v12 = MIInstallerErrorDomain;
    v15 = v5->_bundleID;
    v18 = v15;
    v19 = v5->_domain;
    v13 = @"Invalid installation domain value when deserializing unregistration for %@: %lu";
    v14 = 48;
    goto LABEL_7;
  }

LABEL_4:
  v11 = v5;
LABEL_8:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MILaunchServicesUnregisterOperation;
  v4 = a3;
  [(MILaunchServicesOperation *)&v7 encodeWithCoder:v4];
  v5 = [(MILaunchServicesUnregisterOperation *)self bundleID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesUnregisterOperation *)self domain]];
  [v4 encodeObject:v6 forKey:@"domain"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MILaunchServicesUnregisterOperation;
  if ([(MILaunchServicesOperation *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MILaunchServicesUnregisterOperation *)self bundleID];
    v7 = [v5 bundleID];
    v8 = sub_100011064(v6, v7);

    if (v8)
    {
      v9 = [v5 domain];
      v10 = v9 == [(MILaunchServicesUnregisterOperation *)self domain];
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

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = MILaunchServicesUnregisterOperation;
  v3 = [(MILaunchServicesOperation *)&v8 hash];
  v4 = [(MILaunchServicesUnregisterOperation *)self bundleID];
  v5 = [v4 hash];
  v6 = v5 ^ [(MILaunchServicesUnregisterOperation *)self domain];

  return v6 ^ v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MILaunchServicesOperation *)self operationUUID];
  v6 = [(MILaunchServicesOperation *)self serialNumber];
  v7 = [(MILaunchServicesUnregisterOperation *)self bundleID];
  [(MILaunchServicesUnregisterOperation *)self domain];
  v8 = MIStringForInstallationDomain();
  v9 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@>", v4, v5, v6, v7, v8];

  return v9;
}

@end