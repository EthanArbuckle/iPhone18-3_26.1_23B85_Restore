@interface FileDownloadAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDServerInteractionController)serverInteractionController;
- (FileDownloadAction)initWithAsset:(id)a3 serverInteractionController:(id)a4 assetRegistry:(id)a5;
- (void)_saveAsset:(id)a3 fromLocation:(id)a4;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FileDownloadAction

- (FileDownloadAction)initWithAsset:(id)a3 serverInteractionController:(id)a4 assetRegistry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FileDownloadAction;
  v11 = [(FileDownloadAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FileDownloadAction *)v11 setAsset:v8];
    [(FileDownloadAction *)v12 setServerInteractionController:v9];
    [(FileDownloadAction *)v12 setAssetRegistry:v10];
  }

  return v12;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [FMFileDownloadRequest alloc];
  v6 = [(FileDownloadAction *)self asset];
  v7 = [(FMFileDownloadRequest *)v5 initWithAsset:v6];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014505C;
  v10[3] = &unk_1002CE000;
  objc_copyWeak(&v12, &location);
  v8 = v4;
  v11 = v8;
  [(FMDRequest *)v7 setCompletionHandler:v10];
  [(FileDownloadAction *)self setRequest:v7];
  v9 = [(FileDownloadAction *)self serverInteractionController];
  [v9 enqueueRequest:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_saveAsset:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(FileDownloadAction *)self assetRegistry];
    [v8 storeAsset:v6 fromLocation:v7];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1002271C0(v8);
    }
  }
}

- (void)willCancelAction
{
  v4 = [(FileDownloadAction *)self serverInteractionController];
  v3 = [(FileDownloadAction *)self request];
  [v4 cancelRequest:v3];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 asset];
    v6 = [v5 url];
    v7 = [v6 absoluteString];
    v8 = [(FileDownloadAction *)self asset];
    v9 = [v8 url];
    v10 = [v9 absoluteString];
    v11 = [v7 isEqualToString:v10];
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