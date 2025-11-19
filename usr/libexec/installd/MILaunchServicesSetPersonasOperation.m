@interface MILaunchServicesSetPersonasOperation
- (BOOL)isEqual:(id)a3;
- (MILaunchServicesSetPersonasOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 personas:(id)a5 registrationUUID:(id)a6 serialNumber:(unint64_t)a7;
- (MILaunchServicesSetPersonasOperation)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MILaunchServicesSetPersonasOperation

- (MILaunchServicesSetPersonasOperation)initWithBundleID:(id)a3 domain:(unint64_t)a4 personas:(id)a5 registrationUUID:(id)a6 serialNumber:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = MILaunchServicesSetPersonasOperation;
  v14 = [(MILaunchServicesOperation *)&v20 initWithOperationUUID:a6 serialNumber:a7];
  if (v14)
  {
    v15 = [v12 copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v14->_domain = a4;
    v17 = [v13 copy];
    personaUniqueStrings = v14->_personaUniqueStrings;
    v14->_personaUniqueStrings = v17;
  }

  return v14;
}

- (MILaunchServicesSetPersonasOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MILaunchServicesSetPersonasOperation;
  v5 = [(MILaunchServicesOperation *)&v25 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  if (!v5->_bundleID)
  {
    v17 = MIInstallerErrorDomain;
    v18 = @"Missing bundle ID when deserializing registration";
    v19 = 43;
LABEL_9:
    sub_100010734("[MILaunchServicesSetPersonasOperation initWithCoder:]", v19, v17, 186, 0, 0, v18, v8, v23);
    goto LABEL_10;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v5->_domain = [v9 unsignedIntegerValue];

  domain = v5->_domain;
  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    v20 = v5->_bundleID;
    v24 = v5->_domain;
    sub_100010734("[MILaunchServicesSetPersonasOperation initWithCoder:]", 49, MIInstallerErrorDomain, 186, 0, 0, @"Invalid installation domain value when deserializing registration for %@: %lu", v11, v20);
    v21 = LABEL_10:;
    [v4 failWithError:v21];

    v16 = 0;
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v23 = objc_opt_class();
  v13 = [NSSet setWithObjects:v12];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"personaUniqueStrings"];
  personaUniqueStrings = v5->_personaUniqueStrings;
  v5->_personaUniqueStrings = v14;

  if (!v5->_personaUniqueStrings)
  {
    v17 = MIInstallerErrorDomain;
    v18 = @"Missing persona unique strings when deserializing registration";
    v19 = 55;
    goto LABEL_9;
  }

LABEL_5:
  v16 = v5;
LABEL_11:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = MILaunchServicesSetPersonasOperation;
  v4 = a3;
  [(MILaunchServicesOperation *)&v8 encodeWithCoder:v4];
  v5 = [(MILaunchServicesSetPersonasOperation *)self bundleID:v8.receiver];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesSetPersonasOperation *)self domain]];
  [v4 encodeObject:v6 forKey:@"domain"];

  v7 = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  [v4 encodeObject:v7 forKey:@"personaUniqueStrings"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MILaunchServicesSetPersonasOperation;
  if ([(MILaunchServicesOperation *)&v14 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MILaunchServicesSetPersonasOperation *)self bundleID];
    v7 = [v5 bundleID];
    v8 = sub_100011064(v6, v7);

    if (v8 && (v9 = [v5 domain], v9 == -[MILaunchServicesSetPersonasOperation domain](self, "domain")))
    {
      v10 = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
      v11 = [v5 personaUniqueStrings];
      v12 = sub_100011064(v10, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = MILaunchServicesSetPersonasOperation;
  v3 = [(MILaunchServicesOperation *)&v10 hash];
  v4 = [(MILaunchServicesSetPersonasOperation *)self bundleID];
  v5 = [v4 hash];
  v6 = v5 ^ [(MILaunchServicesSetPersonasOperation *)self domain];
  v7 = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v3;
}

- (id)description
{
  v3 = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(MILaunchServicesOperation *)self operationUUID];
  v9 = [(MILaunchServicesOperation *)self serialNumber];
  v10 = [(MILaunchServicesSetPersonasOperation *)self bundleID];
  [(MILaunchServicesSetPersonasOperation *)self domain];
  v11 = MIStringForInstallationDomain();
  v12 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@]>", v7, v8, v9, v10, v11, v5];

  return v12;
}

@end