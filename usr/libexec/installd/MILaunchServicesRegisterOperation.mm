@interface MILaunchServicesRegisterOperation
- (BOOL)isEqual:(id)a3;
- (MILaunchServicesRegisterOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 personas:(id)a5 mountPoint:(id)a6 operationUUID:(id)a7 serialNumber:(unint64_t)a8;
- (MILaunchServicesRegisterOperation)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updatePersonaUniqueStrings:(id)a3;
@end

@implementation MILaunchServicesRegisterOperation

- (MILaunchServicesRegisterOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 personas:(id)a5 mountPoint:(id)a6 operationUUID:(id)a7 serialNumber:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = MILaunchServicesRegisterOperation;
  v17 = [(MILaunchServicesOperation *)&v23 initWithOperationUUID:a7 serialNumber:a8];
  if (v17)
  {
    v18 = [v14 copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v18;

    v17->_domain = a4;
    v20 = [v15 copy];
    personaUniqueStrings = v17->_personaUniqueStrings;
    v17->_personaUniqueStrings = v20;

    objc_storeStrong(&v17->_mountPoint, a6);
  }

  return v17;
}

- (MILaunchServicesRegisterOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MILaunchServicesRegisterOperation;
  v5 = [(MILaunchServicesOperation *)&v30 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  if (!v5->_bundleID)
  {
    v18 = sub_100010734("[MILaunchServicesRegisterOperation initWithCoder:]", 44, MIInstallerErrorDomain, 186, 0, 0, @"Missing bundle ID when deserializing registration", v8, v29);
LABEL_11:
    [v4 failWithError:v18];

    v17 = 0;
    goto LABEL_12;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v5->_domain = [v9 unsignedIntegerValue];

  domain = v5->_domain;
  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    v19 = MIInstallerErrorDomain;
    v20 = v5->_bundleID;
    v21 = v5->_domain;
    v22 = MIStringForInstallationDomain();
    sub_100010734("[MILaunchServicesRegisterOperation initWithCoder:]", 50, v19, 186, 0, 0, @"Invalid installation domain value when deserializing registration for %@/%@", v23, v20);
    v18 = LABEL_10:;

    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"personaUniqueStrings"];
  personaUniqueStrings = v5->_personaUniqueStrings;
  v5->_personaUniqueStrings = v13;

  if (!v5->_personaUniqueStrings)
  {
    v24 = MIInstallerErrorDomain;
    v25 = v5->_bundleID;
    v26 = v5->_domain;
    v22 = MIStringForInstallationDomain();
    sub_100010734("[MILaunchServicesRegisterOperation initWithCoder:]", 56, v24, 186, 0, 0, @"Missing persona unique strings when deserializing registration for %@/%@", v27, v25);
    goto LABEL_10;
  }

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountPoint"];
  mountPoint = v5->_mountPoint;
  v5->_mountPoint = v15;

LABEL_6:
  v17 = v5;
LABEL_12:

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = MILaunchServicesRegisterOperation;
  v4 = a3;
  [(MILaunchServicesOperation *)&v9 encodeWithCoder:v4];
  v5 = [(MILaunchServicesRegisterOperation *)self bundleID:v9.receiver];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesRegisterOperation *)self domain]];
  [v4 encodeObject:v6 forKey:@"domain"];

  v7 = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  [v4 encodeObject:v7 forKey:@"personaUniqueStrings"];

  v8 = [(MILaunchServicesRegisterOperation *)self mountPoint];
  [v4 encodeObject:v8 forKey:@"mountPoint"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MILaunchServicesRegisterOperation;
  if ([(MILaunchServicesOperation *)&v17 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MILaunchServicesRegisterOperation *)self bundleID];
    v7 = [v5 bundleID];
    v8 = sub_100011064(v6, v7);

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [v5 domain];
    if (v9 != [(MILaunchServicesRegisterOperation *)self domain])
    {
      goto LABEL_8;
    }

    v10 = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
    v11 = [v5 personaUniqueStrings];
    v12 = sub_100011064(v10, v11);

    if (v12)
    {
      v13 = [(MILaunchServicesRegisterOperation *)self mountPoint];
      v14 = [v5 mountPoint];
      v15 = sub_100011064(v13, v14);
    }

    else
    {
LABEL_8:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = MILaunchServicesRegisterOperation;
  v3 = [(MILaunchServicesOperation *)&v12 hash];
  v4 = [(MILaunchServicesRegisterOperation *)self bundleID];
  v5 = [v4 hash];
  v6 = v5 ^ [(MILaunchServicesRegisterOperation *)self domain];
  v7 = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  v8 = v6 ^ [v7 hash];
  v9 = [(MILaunchServicesRegisterOperation *)self mountPoint];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v3;
}

- (void)updatePersonaUniqueStrings:(id)a3
{
  v4 = [a3 copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v4;

  _objc_release_x1(v4, personaUniqueStrings);
}

- (id)description
{
  v3 = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [(MILaunchServicesRegisterOperation *)self mountPoint];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(MILaunchServicesOperation *)self operationUUID];
  v10 = [(MILaunchServicesOperation *)self serialNumber];
  v11 = [(MILaunchServicesRegisterOperation *)self bundleID];
  [(MILaunchServicesRegisterOperation *)self domain];
  v12 = MIStringForInstallationDomain();
  v13 = v12;
  if (v6)
  {
    v14 = [v6 path];
    v15 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@] mount:%@>", v8, v9, v10, v11, v13, v5, v14];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@]>", v8, v9, v10, v11, v12, v5];
  }

  return v15;
}

@end