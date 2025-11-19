@interface MSDOperationContext
- (NSString)stagingRootPath;
- (NSString)uniqueName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MSDOperationContext

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MSDOperationContext *)self uniqueName];
  v6 = [NSString stringWithFormat:@"<%@[%p]: %@>", v4, self, v5];

  return v6;
}

- (NSString)uniqueName
{
  uniqueName = self->_uniqueName;
  if (!uniqueName)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(MSDOperationContext *)self identifier];
    v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];
    v8 = self->_uniqueName;
    self->_uniqueName = v7;

    uniqueName = self->_uniqueName;
  }

  return uniqueName;
}

- (NSString)stagingRootPath
{
  if (!self->_stagingRootPath)
  {
    v3 = +[MSDOperationContext downloadOnly];
    v4 = [(MSDOperationContext *)self uniqueName];
    if (v3)
    {
      v5 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_staging";
    }

    else
    {
      v5 = @"/var/MSDWorkContainer/MSD_staging";
    }

    v6 = [(__CFString *)v5 stringByAppendingPathComponent:v4];
    stagingRootPath = self->_stagingRootPath;
    self->_stagingRootPath = v6;
  }

  v8 = self->_stagingRootPath;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIdentifier:self->_identifier];
  [v4 setDiskSpacedRequired:self->_diskSpacedRequired];
  [v4 setSkipped:self->_skipped];
  [v4 setRestored:self->_restored];
  return v4;
}

@end