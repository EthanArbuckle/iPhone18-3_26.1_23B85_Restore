@interface MSDOperationContext
- (NSString)stagingRootPath;
- (NSString)uniqueName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MSDOperationContext

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uniqueName = [(MSDOperationContext *)self uniqueName];
  v6 = [NSString stringWithFormat:@"<%@[%p]: %@>", v4, self, uniqueName];

  return v6;
}

- (NSString)uniqueName
{
  uniqueName = self->_uniqueName;
  if (!uniqueName)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    identifier = [(MSDOperationContext *)self identifier];
    v7 = [NSString stringWithFormat:@"%@.%@", v5, identifier];
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
    uniqueName = [(MSDOperationContext *)self uniqueName];
    if (v3)
    {
      v5 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_staging";
    }

    else
    {
      v5 = @"/var/MSDWorkContainer/MSD_staging";
    }

    v6 = [(__CFString *)v5 stringByAppendingPathComponent:uniqueName];
    stagingRootPath = self->_stagingRootPath;
    self->_stagingRootPath = v6;
  }

  v8 = self->_stagingRootPath;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIdentifier:self->_identifier];
  [v4 setDiskSpacedRequired:self->_diskSpacedRequired];
  [v4 setSkipped:self->_skipped];
  [v4 setRestored:self->_restored];
  return v4;
}

@end