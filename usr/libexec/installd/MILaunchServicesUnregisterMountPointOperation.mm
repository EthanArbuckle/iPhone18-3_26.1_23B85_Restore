@interface MILaunchServicesUnregisterMountPointOperation
- (BOOL)isEqual:(id)equal;
- (MILaunchServicesUnregisterMountPointOperation)initWithCoder:(id)coder;
- (MILaunchServicesUnregisterMountPointOperation)initWithMountPoint:(id)point operationUUID:(id)d serialNumber:(unint64_t)number;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MILaunchServicesUnregisterMountPointOperation

- (MILaunchServicesUnregisterMountPointOperation)initWithMountPoint:(id)point operationUUID:(id)d serialNumber:(unint64_t)number
{
  pointCopy = point;
  v13.receiver = self;
  v13.super_class = MILaunchServicesUnregisterMountPointOperation;
  v10 = [(MILaunchServicesOperation *)&v13 initWithOperationUUID:d serialNumber:number];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mountPoint, point);
  }

  return v11;
}

- (MILaunchServicesUnregisterMountPointOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MILaunchServicesUnregisterMountPointOperation;
  v5 = [(MILaunchServicesOperation *)&v12 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountPoint"], v6 = objc_claimAutoreleasedReturnValue(), mountPoint = v5->_mountPoint, v5->_mountPoint = v6, mountPoint, !v5->_mountPoint))
  {
    v10 = sub_100010734("[MILaunchServicesUnregisterMountPointOperation initWithCoder:]", 39, MIInstallerErrorDomain, 186, 0, 0, @"Missing mount point when deserializing LS operation", v8, v12.receiver);
    [coderCopy failWithError:v10];

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MILaunchServicesUnregisterMountPointOperation;
  coderCopy = coder;
  [(MILaunchServicesOperation *)&v6 encodeWithCoder:coderCopy];
  v5 = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"mountPoint"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = MILaunchServicesUnregisterMountPointOperation;
  if ([(MILaunchServicesOperation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    mountPoint = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
    mountPoint2 = [v5 mountPoint];

    v8 = sub_100011064(mountPoint, mountPoint2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = MILaunchServicesUnregisterMountPointOperation;
  v3 = [(MILaunchServicesOperation *)&v7 hash];
  mountPoint = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
  v5 = [mountPoint hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  operationUUID = [(MILaunchServicesOperation *)self operationUUID];
  serialNumber = [(MILaunchServicesOperation *)self serialNumber];
  mountPoint = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
  path = [mountPoint path];
  v9 = [NSString stringWithFormat:@"<%@: %@:%lu mount:%@>", v4, operationUUID, serialNumber, path];

  return v9;
}

@end