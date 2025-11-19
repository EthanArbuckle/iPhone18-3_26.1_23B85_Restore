@interface MSDInstallableFileContext
- (MSDInstallableFileContext)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)uniqueName;
@end

@implementation MSDInstallableFileContext

- (MSDInstallableFileContext)init
{
  v5.receiver = self;
  v5.super_class = MSDInstallableFileContext;
  v2 = [(MSDInstallableFileContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDInstallableFileContext *)v2 setDeleteInstallableFileAfterInstall:1];
    [(MSDInstallableFileContext *)v3 setVerifyFileHash:0];
  }

  return v3;
}

- (id)uniqueName
{
  if (self->_uniqueName)
  {
    goto LABEL_2;
  }

  v5 = [(MSDOperationContext *)self identifier];

  if (v5)
  {
    if (!self->_uniqueName)
    {
      if (![(MSDInstallableFileContext *)self fileType])
      {
        v6 = @"Application.%@";
        goto LABEL_17;
      }

      if ([(MSDInstallableFileContext *)self fileType]== 1)
      {
        v6 = @"StandalonePackage.%@";
LABEL_17:
        v7 = [(MSDOperationContext *)self identifier];
        v8 = [NSString stringWithFormat:v6, v7];
        uniqueName = self->_uniqueName;
        self->_uniqueName = v8;

        goto LABEL_2;
      }

      if ([(MSDInstallableFileContext *)self fileType]== 2)
      {
        v6 = @"ProvisioningProfile.%@";
        goto LABEL_17;
      }

      if ([(MSDInstallableFileContext *)self fileType]== 3)
      {
        v6 = @"ConfigurationProfile.%@";
        goto LABEL_17;
      }
    }

LABEL_2:
    v3 = self->_uniqueName;
    goto LABEL_3;
  }

  v3 = 0;
LABEL_3:

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MSDInstallableFileContext;
  v4 = [(MSDOperationContext *)&v6 copyWithZone:a3];
  [v4 setFileType:self->_fileType];
  [v4 setFileHash:self->_fileHash];
  [v4 setOriginServer:self->_originServer];
  [v4 setUniqueIdentifier:self->_uniqueIdentifier];
  [v4 setCurrentUniqueIdentifier:self->_currentUniqueIdentifier];
  [v4 setUseDiffPatch:self->_useDiffPatch];
  [v4 setAlreadyInstalled:self->_alreadyInstalled];
  [v4 setPricingAppUpdateDeferred:self->_pricingAppUpdateDeferred];
  return v4;
}

@end