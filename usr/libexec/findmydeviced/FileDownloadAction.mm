@interface FileDownloadAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDServerInteractionController)serverInteractionController;
- (FileDownloadAction)initWithAsset:(id)asset serverInteractionController:(id)controller assetRegistry:(id)registry;
- (void)_saveAsset:(id)asset fromLocation:(id)location;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FileDownloadAction

- (FileDownloadAction)initWithAsset:(id)asset serverInteractionController:(id)controller assetRegistry:(id)registry
{
  assetCopy = asset;
  controllerCopy = controller;
  registryCopy = registry;
  v14.receiver = self;
  v14.super_class = FileDownloadAction;
  v11 = [(FileDownloadAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FileDownloadAction *)v11 setAsset:assetCopy];
    [(FileDownloadAction *)v12 setServerInteractionController:controllerCopy];
    [(FileDownloadAction *)v12 setAssetRegistry:registryCopy];
  }

  return v12;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [FMFileDownloadRequest alloc];
  asset = [(FileDownloadAction *)self asset];
  v7 = [(FMFileDownloadRequest *)v5 initWithAsset:asset];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014505C;
  v10[3] = &unk_1002CE000;
  objc_copyWeak(&v12, &location);
  v8 = completionCopy;
  v11 = v8;
  [(FMDRequest *)v7 setCompletionHandler:v10];
  [(FileDownloadAction *)self setRequest:v7];
  serverInteractionController = [(FileDownloadAction *)self serverInteractionController];
  [serverInteractionController enqueueRequest:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_saveAsset:(id)asset fromLocation:(id)location
{
  assetCopy = asset;
  locationCopy = location;
  if (locationCopy)
  {
    assetRegistry = [(FileDownloadAction *)self assetRegistry];
    [assetRegistry storeAsset:assetCopy fromLocation:locationCopy];
  }

  else
  {
    assetRegistry = sub_100002880();
    if (os_log_type_enabled(assetRegistry, OS_LOG_TYPE_ERROR))
    {
      sub_1002271C0(assetRegistry);
    }
  }
}

- (void)willCancelAction
{
  serverInteractionController = [(FileDownloadAction *)self serverInteractionController];
  request = [(FileDownloadAction *)self request];
  [serverInteractionController cancelRequest:request];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset = [actionCopy asset];
    v6 = [asset url];
    absoluteString = [v6 absoluteString];
    asset2 = [(FileDownloadAction *)self asset];
    v9 = [asset2 url];
    absoluteString2 = [v9 absoluteString];
    v11 = [absoluteString isEqualToString:absoluteString2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end