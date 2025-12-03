@interface MILaunchServicesSetPersonasOperation
- (BOOL)isEqual:(id)equal;
- (MILaunchServicesSetPersonasOperation)initWithBundleID:(id)d domain:(unint64_t)domain personas:(id)personas registrationUUID:(id)iD serialNumber:(unint64_t)number;
- (MILaunchServicesSetPersonasOperation)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MILaunchServicesSetPersonasOperation

- (MILaunchServicesSetPersonasOperation)initWithBundleID:(id)d domain:(unint64_t)domain personas:(id)personas registrationUUID:(id)iD serialNumber:(unint64_t)number
{
  dCopy = d;
  personasCopy = personas;
  v20.receiver = self;
  v20.super_class = MILaunchServicesSetPersonasOperation;
  v14 = [(MILaunchServicesOperation *)&v20 initWithOperationUUID:iD serialNumber:number];
  if (v14)
  {
    v15 = [dCopy copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v14->_domain = domain;
    v17 = [personasCopy copy];
    personaUniqueStrings = v14->_personaUniqueStrings;
    v14->_personaUniqueStrings = v17;
  }

  return v14;
}

- (MILaunchServicesSetPersonasOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MILaunchServicesSetPersonasOperation;
  v5 = [(MILaunchServicesOperation *)&v25 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
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

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v5->_domain = [v9 unsignedIntegerValue];

  domain = v5->_domain;
  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    v20 = v5->_bundleID;
    v24 = v5->_domain;
    sub_100010734("[MILaunchServicesSetPersonasOperation initWithCoder:]", 49, MIInstallerErrorDomain, 186, 0, 0, @"Invalid installation domain value when deserializing registration for %@: %lu", v11, v20);
    v21 = LABEL_10:;
    [coderCopy failWithError:v21];

    v16 = 0;
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v23 = objc_opt_class();
  v13 = [NSSet setWithObjects:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"personaUniqueStrings"];
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

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = MILaunchServicesSetPersonasOperation;
  coderCopy = coder;
  [(MILaunchServicesOperation *)&v8 encodeWithCoder:coderCopy];
  v5 = [(MILaunchServicesSetPersonasOperation *)self bundleID:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesSetPersonasOperation *)self domain]];
  [coderCopy encodeObject:v6 forKey:@"domain"];

  personaUniqueStrings = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  [coderCopy encodeObject:personaUniqueStrings forKey:@"personaUniqueStrings"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = MILaunchServicesSetPersonasOperation;
  if ([(MILaunchServicesOperation *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    bundleID = [(MILaunchServicesSetPersonasOperation *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = sub_100011064(bundleID, bundleID2);

    if (v8 && (v9 = [v5 domain], v9 == -[MILaunchServicesSetPersonasOperation domain](self, "domain")))
    {
      personaUniqueStrings = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
      personaUniqueStrings2 = [v5 personaUniqueStrings];
      v12 = sub_100011064(personaUniqueStrings, personaUniqueStrings2);
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
  bundleID = [(MILaunchServicesSetPersonasOperation *)self bundleID];
  v5 = [bundleID hash];
  v6 = v5 ^ [(MILaunchServicesSetPersonasOperation *)self domain];
  personaUniqueStrings = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  v8 = v6 ^ [personaUniqueStrings hash];

  return v8 ^ v3;
}

- (id)description
{
  personaUniqueStrings = [(MILaunchServicesSetPersonasOperation *)self personaUniqueStrings];
  allObjects = [personaUniqueStrings allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  serialNumber = [(MILaunchServicesOperation *)self serialNumber];
  bundleID = [(MILaunchServicesSetPersonasOperation *)self bundleID];
  [(MILaunchServicesSetPersonasOperation *)self domain];
  v11 = MIStringForInstallationDomain();
  v12 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@]>", v7, operationUUID, serialNumber, bundleID, v11, v5];

  return v12;
}

@end