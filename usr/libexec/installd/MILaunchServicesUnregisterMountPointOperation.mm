@interface MILaunchServicesUnregisterMountPointOperation
- (BOOL)isEqual:(id)a3;
- (MILaunchServicesUnregisterMountPointOperation)initWithCoder:(id)a3;
- (MILaunchServicesUnregisterMountPointOperation)initWithMountPoint:(id)a3 operationUUID:(id)a4 serialNumber:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MILaunchServicesUnregisterMountPointOperation

- (MILaunchServicesUnregisterMountPointOperation)initWithMountPoint:(id)a3 operationUUID:(id)a4 serialNumber:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MILaunchServicesUnregisterMountPointOperation;
  v10 = [(MILaunchServicesOperation *)&v13 initWithOperationUUID:a4 serialNumber:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mountPoint, a3);
  }

  return v11;
}

- (MILaunchServicesUnregisterMountPointOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MILaunchServicesUnregisterMountPointOperation;
  v5 = [(MILaunchServicesOperation *)&v12 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountPoint"], v6 = objc_claimAutoreleasedReturnValue(), mountPoint = v5->_mountPoint, v5->_mountPoint = v6, mountPoint, !v5->_mountPoint))
  {
    v10 = sub_100010734("[MILaunchServicesUnregisterMountPointOperation initWithCoder:]", 39, MIInstallerErrorDomain, 186, 0, 0, @"Missing mount point when deserializing LS operation", v8, v12.receiver);
    [v4 failWithError:v10];

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MILaunchServicesUnregisterMountPointOperation;
  v4 = a3;
  [(MILaunchServicesOperation *)&v6 encodeWithCoder:v4];
  v5 = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint:v6.receiver];
  [v4 encodeObject:v5 forKey:@"mountPoint"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MILaunchServicesUnregisterMountPointOperation;
  if ([(MILaunchServicesOperation *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
    v7 = [v5 mountPoint];

    v8 = sub_100011064(v6, v7);
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
  v4 = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MILaunchServicesOperation *)self operationUUID];
  v6 = [(MILaunchServicesOperation *)self serialNumber];
  v7 = [(MILaunchServicesUnregisterMountPointOperation *)self mountPoint];
  v8 = [v7 path];
  v9 = [NSString stringWithFormat:@"<%@: %@:%lu mount:%@>", v4, v5, v6, v8];

  return v9;
}

@end