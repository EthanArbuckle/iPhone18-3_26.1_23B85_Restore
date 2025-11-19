@interface SDAirDropHandlerUnsupportedType
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerUnsupportedType)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (void)triggerAppStoreSearch;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerUnsupportedType

- (SDAirDropHandlerUnsupportedType)initWithTransfer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SDAirDropHandlerUnsupportedType;
  v5 = [(SDAirDropHandler *)&v10 initWithTransfer:v4];
  if (v5)
  {
    v6 = [[SDAirDropHandleriCloudDrive alloc] initWithTransfer:v4];
    icloudDriveHandler = v5->_icloudDriveHandler;
    v5->_icloudDriveHandler = v6;

    v8 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.AppStore"];
    [(SDAirDropHandler *)v5 setBundleProxy:v8];
  }

  return v5;
}

- (BOOL)canHandleTransfer
{
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 metaData];
  v4 = [v3 items];
  v5 = [v4 count] == 1;

  return v5;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  [v4 isVerifiableIdentity];

  [(SDAirDropHandler *)self isJustFiles];
  v5 = SFLocalizedStringForKey();
  v6 = [(SDAirDropHandler *)self senderName];
  v7 = [NSString stringWithFormat:v5, v6];

  return v7;
}

- (void)updatePossibleActions
{
  v16.receiver = self;
  v16.super_class = SDAirDropHandlerUnsupportedType;
  [(SDAirDropHandler *)&v16 updatePossibleActions];
  v3 = objc_opt_new();
  v4 = [(SDAirDropHandler *)self bundleProxy];
  v5 = [(SDAirDropHandler *)self defaultActionForBundleProxy:v4];

  v6 = SFLocalizedStringForKey();
  [v5 setSingleItemLocalizedTitle:v6];

  [v5 setShouldUpdateUserResponse:0];
  [v5 setMinRequiredTransferState:1];
  objc_initWeak(&location, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100061540;
  v13 = &unk_1008CDB10;
  objc_copyWeak(&v14, &location);
  [v5 setActionHandler:&v10];
  [v3 addObject:{v5, v10, v11, v12, v13}];
  if ([(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler canHandleTransfer])
  {
    v7 = [(SDAirDropHandler *)self completionHandler];
    [(SDAirDropHandler *)self->_icloudDriveHandler setCompletionHandler:v7];

    v8 = [(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler action];
    [v3 addObject:v8];
  }

  v9 = [(SDAirDropHandler *)self transfer];
  [v9 setPossibleActions:v3];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)triggerAppStoreSearch
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 items];
  v6 = [v5 anyObject];

  if ([v6 isFile])
  {
    v7 = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/docTypeLookup?uti=%@";
  }

  else
  {
    v7 = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/docTypeLookup?scheme=%@";
  }

  v8 = [v6 type];
  v9 = [NSString stringWithFormat:v7, v8];
  v10 = [NSURL URLWithString:v9];

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching app store with URL: %@", buf, 0xCu);
  }

  [(SDAirDropHandler *)self logReceiverBundleID:0 forAppProxy:0 andURL:v10];
  v12 = +[LSApplicationWorkspace defaultWorkspace];
  [v12 openURL:v10 configuration:0 completionHandler:0];
}

@end