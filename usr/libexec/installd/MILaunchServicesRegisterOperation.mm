@interface MILaunchServicesRegisterOperation
- (BOOL)isEqual:(id)equal;
- (MILaunchServicesRegisterOperation)initWithBundleID:(id)d domain:(unint64_t)domain personas:(id)personas mountPoint:(id)point operationUUID:(id)iD serialNumber:(unint64_t)number;
- (MILaunchServicesRegisterOperation)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updatePersonaUniqueStrings:(id)strings;
@end

@implementation MILaunchServicesRegisterOperation

- (MILaunchServicesRegisterOperation)initWithBundleID:(id)d domain:(unint64_t)domain personas:(id)personas mountPoint:(id)point operationUUID:(id)iD serialNumber:(unint64_t)number
{
  dCopy = d;
  personasCopy = personas;
  pointCopy = point;
  v23.receiver = self;
  v23.super_class = MILaunchServicesRegisterOperation;
  v17 = [(MILaunchServicesOperation *)&v23 initWithOperationUUID:iD serialNumber:number];
  if (v17)
  {
    v18 = [dCopy copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v18;

    v17->_domain = domain;
    v20 = [personasCopy copy];
    personaUniqueStrings = v17->_personaUniqueStrings;
    v17->_personaUniqueStrings = v20;

    objc_storeStrong(&v17->_mountPoint, point);
  }

  return v17;
}

- (MILaunchServicesRegisterOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = MILaunchServicesRegisterOperation;
  v5 = [(MILaunchServicesOperation *)&v30 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  if (!v5->_bundleID)
  {
    v18 = sub_100010734("[MILaunchServicesRegisterOperation initWithCoder:]", 44, MIInstallerErrorDomain, 186, 0, 0, @"Missing bundle ID when deserializing registration", v8, v29);
LABEL_11:
    [coderCopy failWithError:v18];

    v17 = 0;
    goto LABEL_12;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
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
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"personaUniqueStrings"];
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

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountPoint"];
  mountPoint = v5->_mountPoint;
  v5->_mountPoint = v15;

LABEL_6:
  v17 = v5;
LABEL_12:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MILaunchServicesRegisterOperation;
  coderCopy = coder;
  [(MILaunchServicesOperation *)&v9 encodeWithCoder:coderCopy];
  v5 = [(MILaunchServicesRegisterOperation *)self bundleID:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MILaunchServicesRegisterOperation *)self domain]];
  [coderCopy encodeObject:v6 forKey:@"domain"];

  personaUniqueStrings = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  [coderCopy encodeObject:personaUniqueStrings forKey:@"personaUniqueStrings"];

  mountPoint = [(MILaunchServicesRegisterOperation *)self mountPoint];
  [coderCopy encodeObject:mountPoint forKey:@"mountPoint"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = MILaunchServicesRegisterOperation;
  if ([(MILaunchServicesOperation *)&v17 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    bundleID = [(MILaunchServicesRegisterOperation *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = sub_100011064(bundleID, bundleID2);

    if (!v8)
    {
      goto LABEL_8;
    }

    domain = [v5 domain];
    if (domain != [(MILaunchServicesRegisterOperation *)self domain])
    {
      goto LABEL_8;
    }

    personaUniqueStrings = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
    personaUniqueStrings2 = [v5 personaUniqueStrings];
    v12 = sub_100011064(personaUniqueStrings, personaUniqueStrings2);

    if (v12)
    {
      mountPoint = [(MILaunchServicesRegisterOperation *)self mountPoint];
      mountPoint2 = [v5 mountPoint];
      v15 = sub_100011064(mountPoint, mountPoint2);
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
  bundleID = [(MILaunchServicesRegisterOperation *)self bundleID];
  v5 = [bundleID hash];
  v6 = v5 ^ [(MILaunchServicesRegisterOperation *)self domain];
  personaUniqueStrings = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  v8 = v6 ^ [personaUniqueStrings hash];
  mountPoint = [(MILaunchServicesRegisterOperation *)self mountPoint];
  v10 = v8 ^ [mountPoint hash];

  return v10 ^ v3;
}

- (void)updatePersonaUniqueStrings:(id)strings
{
  v4 = [strings copy];
  personaUniqueStrings = self->_personaUniqueStrings;
  self->_personaUniqueStrings = v4;

  _objc_release_x1(v4, personaUniqueStrings);
}

- (id)description
{
  personaUniqueStrings = [(MILaunchServicesRegisterOperation *)self personaUniqueStrings];
  allObjects = [personaUniqueStrings allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];

  mountPoint = [(MILaunchServicesRegisterOperation *)self mountPoint];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  serialNumber = [(MILaunchServicesOperation *)self serialNumber];
  bundleID = [(MILaunchServicesRegisterOperation *)self bundleID];
  [(MILaunchServicesRegisterOperation *)self domain];
  v12 = MIStringForInstallationDomain();
  v13 = v12;
  if (mountPoint)
  {
    path = [mountPoint path];
    v15 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@] mount:%@>", v8, operationUUID, serialNumber, bundleID, v13, v5, path];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"<%@: %@:%lu %@/%@ personas:[%@]>", v8, operationUUID, serialNumber, bundleID, v12, v5];
  }

  return v15;
}

@end