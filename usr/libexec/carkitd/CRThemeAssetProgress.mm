@interface CRThemeAssetProgress
- (CRThemeAssetProgress)init;
- (void)setDownloadProgress:(id)a3;
- (void)setTransferProgress:(id)a3;
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

- (void)setDownloadProgress:(id)a3
{
  v5 = a3;
  if (self->_downloadProgress)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "already have download progress", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_downloadProgress, a3);
    v6 = [(CRThemeAssetProgress *)self overallProgress];
    [v6 addChild:v5 withPendingUnitCount:1];
  }
}

- (void)setTransferProgress:(id)a3
{
  v5 = a3;
  if (self->_transferProgress)
  {
    v6 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "already have transfer progress", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_transferProgress, a3);
    v6 = [(CRThemeAssetProgress *)self overallProgress];
    [v6 addChild:v5 withPendingUnitCount:1];
  }
}

@end