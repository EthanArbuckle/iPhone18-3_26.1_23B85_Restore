@interface MSDContentFilesContext
+ (id)defaultContextForBackupItem:(id)a3;
+ (id)defaultContextForContainerizedAppDataItem:(id)a3;
+ (id)defaultContextForNonContainerizedAppDataItem:(id)a3;
+ (void)initialize;
- (_NSRange)contentBeingInstalled;
- (id)secondaryStagingRootPath;
- (id)stashedStagingRootPath;
- (id)uniqueName;
@end

@implementation MSDContentFilesContext

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = +[NSMutableSet set];
    v5 = qword_1001A5840;
    qword_1001A5840 = v4;

    _objc_release_x1(v4, v5);
  }
}

+ (id)defaultContextForBackupItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:v3];

  [(MSDContentFilesContext *)v4 setContentRootPath:@"/"];
  [(MSDContentFilesContext *)v4 setContainerType:@"BackupData"];
  [(MSDContentFilesContext *)v4 setContainerized:0];

  return v4;
}

+ (id)defaultContextForContainerizedAppDataItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:v3];

  [(MSDContentFilesContext *)v4 setContentRootPath:0];
  [(MSDContentFilesContext *)v4 setContainerized:1];
  [(MSDContentFilesContext *)v4 setContentBeingInstalled:0x7FFFFFFFFFFFFFFFLL, 0];

  return v4;
}

+ (id)defaultContextForNonContainerizedAppDataItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:v3];

  [(MSDContentFilesContext *)v4 setContentRootPath:@"/"];
  [(MSDContentFilesContext *)v4 setContainerized:0];
  [(MSDContentFilesContext *)v4 setContentBeingInstalled:0x7FFFFFFFFFFFFFFFLL, 0];

  return v4;
}

- (id)uniqueName
{
  uniqueName = self->_uniqueName;
  if (!uniqueName)
  {
    v4 = [(MSDContentFilesContext *)self containerType];
    v5 = [(MSDOperationContext *)self identifier];
    v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];
    v7 = self->_uniqueName;
    self->_uniqueName = v6;

    uniqueName = self->_uniqueName;
  }

  return uniqueName;
}

- (id)secondaryStagingRootPath
{
  if (!self->_secondaryStagingRootPath)
  {
    if (+[MSDOperationContext downloadOnly])
    {
      v3 = [(MSDContentFilesContext *)self uniqueName];
      v4 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_secondary_staging";
    }

    else
    {
      v3 = [(MSDContentFilesContext *)self appIdentifier];
      v4 = @"/var/MSDWorkContainer/MSD_secondary_staging";
    }

    v5 = [(__CFString *)v4 stringByAppendingPathComponent:v3];
    secondaryStagingRootPath = self->_secondaryStagingRootPath;
    self->_secondaryStagingRootPath = v5;
  }

  v7 = self->_secondaryStagingRootPath;

  return v7;
}

- (id)stashedStagingRootPath
{
  stashedStagingRootPath = self->_stashedStagingRootPath;
  if (!stashedStagingRootPath)
  {
    v4 = [(MSDContentFilesContext *)self uniqueName];
    v5 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_stashed_staging" stringByAppendingPathComponent:v4];
    v6 = self->_stashedStagingRootPath;
    self->_stashedStagingRootPath = v5;

    stashedStagingRootPath = self->_stashedStagingRootPath;
  }

  return stashedStagingRootPath;
}

- (_NSRange)contentBeingInstalled
{
  p_contentBeingInstalled = &self->_contentBeingInstalled;
  location = self->_contentBeingInstalled.location;
  length = p_contentBeingInstalled->length;
  result.length = length;
  result.location = location;
  return result;
}

@end