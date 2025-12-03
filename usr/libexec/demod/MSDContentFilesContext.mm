@interface MSDContentFilesContext
+ (id)defaultContextForBackupItem:(id)item;
+ (id)defaultContextForContainerizedAppDataItem:(id)item;
+ (id)defaultContextForNonContainerizedAppDataItem:(id)item;
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

  if (v3 == self)
  {
    v4 = +[NSMutableSet set];
    v5 = qword_1001A5840;
    qword_1001A5840 = v4;

    _objc_release_x1(v4, v5);
  }
}

+ (id)defaultContextForBackupItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:itemCopy];

  [(MSDContentFilesContext *)v4 setContentRootPath:@"/"];
  [(MSDContentFilesContext *)v4 setContainerType:@"BackupData"];
  [(MSDContentFilesContext *)v4 setContainerized:0];

  return v4;
}

+ (id)defaultContextForContainerizedAppDataItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:itemCopy];

  [(MSDContentFilesContext *)v4 setContentRootPath:0];
  [(MSDContentFilesContext *)v4 setContainerized:1];
  [(MSDContentFilesContext *)v4 setContentBeingInstalled:0x7FFFFFFFFFFFFFFFLL, 0];

  return v4;
}

+ (id)defaultContextForNonContainerizedAppDataItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(MSDContentFilesContext);
  [(MSDOperationContext *)v4 setIdentifier:itemCopy];

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
    containerType = [(MSDContentFilesContext *)self containerType];
    identifier = [(MSDOperationContext *)self identifier];
    v6 = [NSString stringWithFormat:@"%@.%@", containerType, identifier];
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
      uniqueName = [(MSDContentFilesContext *)self uniqueName];
      v4 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_secondary_staging";
    }

    else
    {
      uniqueName = [(MSDContentFilesContext *)self appIdentifier];
      v4 = @"/var/MSDWorkContainer/MSD_secondary_staging";
    }

    v5 = [(__CFString *)v4 stringByAppendingPathComponent:uniqueName];
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
    uniqueName = [(MSDContentFilesContext *)self uniqueName];
    v5 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/MSD_stashed_staging" stringByAppendingPathComponent:uniqueName];
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