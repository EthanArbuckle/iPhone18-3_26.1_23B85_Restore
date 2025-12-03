@interface CRThemeAssetProgress
- (CRThemeAssetProgress)init;
- (void)setDownloadProgress:(id)progress;
- (void)setTransferProgress:(id)progress;
@end

@implementation CRThemeAssetProgress

- (CRThemeAssetProgress)init
{
  v6.receiver = self;
  v6.super_class = CRThemeAssetProgress;
  v2 = [(CRThemeAssetProgress *)&v6 init];
  if (v2)
  {
    v3 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    overallProgress = v2->_overallProgress;
    v2->_overallProgress = v3;

    [(NSProgress *)v2->_overallProgress setTotalUnitCount:2];
  }

  return v2;
}

- (void)setDownloadProgress:(id)progress
{
  progressCopy = progress;
  if (self->_downloadProgress)
  {
    overallProgress = CarThemeAssetsLogging();
    if (os_log_type_enabled(overallProgress, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, overallProgress, OS_LOG_TYPE_DEFAULT, "already have download progress", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_downloadProgress, progress);
    overallProgress = [(CRThemeAssetProgress *)self overallProgress];
    [overallProgress addChild:progressCopy withPendingUnitCount:1];
  }
}

- (void)setTransferProgress:(id)progress
{
  progressCopy = progress;
  if (self->_transferProgress)
  {
    overallProgress = CarThemeAssetsLogging();
    if (os_log_type_enabled(overallProgress, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, overallProgress, OS_LOG_TYPE_DEFAULT, "already have transfer progress", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_transferProgress, progress);
    overallProgress = [(CRThemeAssetProgress *)self overallProgress];
    [overallProgress addChild:progressCopy withPendingUnitCount:1];
  }
}

@end