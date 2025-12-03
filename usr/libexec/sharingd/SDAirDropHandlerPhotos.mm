@interface SDAirDropHandlerPhotos
- (BOOL)canHandleTransfer;
- (BOOL)supportsAutoOpen;
- (BOOL)transferContainsAssetBundles:(id)bundles;
- (SDAirDropHandlerPhotos)initWithTransfer:(id)transfer;
- (id)actionsForModernReadyForOpen;
- (id)createDestination;
- (id)suitableContentsDescription;
- (id)transformPhotosAssetBundlesToFoldersIfNeededInCompletedURLs:(id)ls;
- (int64_t)transferTypes;
- (void)handleMoveToAppShareSheetSucceeded;
- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion;
- (void)prepareForAcceptWithCompletion:(id)completion;
- (void)triggerImport;
- (void)triggerImportWithCompletedURLs:(id)ls completion:(id)completion;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerPhotos

- (SDAirDropHandlerPhotos)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerPhotos;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.mobileslideshow"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];

  obj = items;
  v6 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        type = [v10 type];
        type2 = [v10 type];
        v13 = SFIsPhotosAssetBundle();

        if (v13)
        {
          subtype = [v10 subtype];

          type = subtype;
        }

        if (!self->_hasPhotos)
        {
          self->_hasPhotos = SFIsImage();
        }

        if (!self->_hasVideos)
        {
          self->_hasVideos = SFIsVideo();
        }

        if (SFIsImage())
        {
        }

        else
        {
          v15 = SFIsVideo() | v13;

          if ((v15 & 1) == 0)
          {
            v16 = 0;
            goto LABEL_21;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerPhotos;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x200;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];
  transfer2 = [(SDAirDropHandler *)self transfer];
  metaData2 = [transfer2 metaData];
  senderIsMe = [metaData2 senderIsMe];
  transfer3 = [(SDAirDropHandler *)self transfer];
  metaData3 = [transfer3 metaData];
  isVerifiableIdentity = [metaData3 isVerifiableIdentity];
  hasPhotos = self->_hasPhotos;
  hasVideos = self->_hasVideos;
  isModernProgress = [(SDAirDropHandler *)self isModernProgress];
  transfer4 = [(SDAirDropHandler *)self transfer];
  BYTE1(v15) = isModernProgress;
  LOBYTE(v15) = hasVideos;
  v13 = +[SDAirDropHandlerPhotos suitableContentsDescriptionWithSenderName:itemsCount:items:senderIsMe:isVerifiableIdentity:hasPhotos:hasVideos:isModernProgress:transferState:](SDAirDropHandlerPhotos, "suitableContentsDescriptionWithSenderName:itemsCount:items:senderIsMe:isVerifiableIdentity:hasPhotos:hasVideos:isModernProgress:transferState:", senderName, totalSharedItemsCount, items, senderIsMe, isVerifiableIdentity, hasPhotos, v15, [transfer4 transferState]);

  return v13;
}

- (BOOL)supportsAutoOpen
{
  v2 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.mobileslideshow"];
  v3 = [RBSProcessHandle handleForPredicate:v2 error:0];
  currentState = [v3 currentState];
  endowmentNamespaces = [currentState endowmentNamespaces];
  v6 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

  return v6 ^ 1;
}

- (id)transformPhotosAssetBundlesToFoldersIfNeededInCompletedURLs:(id)ls
{
  lsCopy = ls;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lsCopy count]);
  v26 = +[NSFileManager defaultManager];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = lsCopy;
  v29 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v29)
  {
    v6 = *v33;
    v7 = UTTypePackage;
    v8 = &kSFNodeProtocolWebDAVS_ptr;
    *&v5 = 138412290;
    v24 = v5;
    v25 = v4;
    v27 = *v33;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        pathExtension = [v10 pathExtension];
        v12 = [v8[337] typeWithFilenameExtension:pathExtension conformingToType:v7];
        identifier = [v12 identifier];

        if (SFIsPhotosAssetBundle())
        {
          v14 = [[PFAssetBundle alloc] initWithAssetBundleAtURL:v10];
          uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
          v31 = 0;
          v16 = [v14 writeFolderRepresentationToDirectory:uRLByDeletingLastPathComponent error:&v31];
          v17 = v31;
          v18 = airdrop_log();
          v19 = v18;
          if (v16)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v37 = v16;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Wrote folder representation of asset bundle to: %@", buf, 0xCu);
            }

            v30 = 0;
            v20 = [v26 removeItemAtURL:v10 error:&v30];
            v19 = v30;
            if ((v20 & 1) == 0)
            {
              v21 = airdrop_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v37 = v19;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to delete asset bundle after transforming to folder. Error: %@", buf, 0xCu);
              }
            }

            v4 = v25;
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v37 = v17;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to create folder representation from asset bundle. Error: %@", buf, 0xCu);
          }

          v7 = UTTypePackage;
          v6 = v27;
          v8 = &kSFNodeProtocolWebDAVS_ptr;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = v10;
        }

        [v4 addObject:v22];
      }

      v29 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v29);
  }

  return v4;
}

- (void)updatePossibleActions
{
  v13.receiver = self;
  v13.super_class = SDAirDropHandlerPhotos;
  [(SDAirDropHandler *)&v13 updatePossibleActions];
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  v4 = [(SDAirDropHandler *)self defaultActionForBundleProxy:bundleProxy];

  [v4 setRequiresUnlockedUI:0];
  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10026E378;
  v10 = &unk_1008CDB10;
  objc_copyWeak(&v11, &location);
  [v4 setActionHandler:&v7];
  v14 = v4;
  v5 = [NSArray arrayWithObjects:&v14 count:1, v7, v8, v9, v10];
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer setPossibleActions:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)transferContainsAssetBundles:(id)bundles
{
  metaData = [bundles metaData];
  [metaData items];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        type = [*(*(&v11 + 1) + 8 * i) type];
        v9 = SFIsPhotosAssetBundle();

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)prepareForAcceptWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Preparing AirDrop for accept", v5, 2u);
  }

  completionCopy[2](completionCopy, 1);
}

- (void)triggerImport
{
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];
  v5 = [completedURLs copy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10026E628;
  v6[3] = &unk_1008D65B0;
  v6[4] = self;
  [(SDAirDropHandlerPhotos *)self triggerImportWithCompletedURLs:v5 completion:v6];
}

- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  completionCopy[2](completionCopy, [(SDAirDropHandler *)self openURLs:ls], 0);
}

- (void)triggerImportWithCompletedURLs:(id)ls completion:(id)completion
{
  lsCopy = ls;
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10026EBD8;
  v33[4] = sub_10026EBE8;
  v34 = 0;
  v8 = +[PHPhotoLibrary sharedPhotoLibrary];
  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];

  transfer = [(SDAirDropHandler *)self transfer];
  v12 = [SDAirDropHandler transferURLForTransfer:transfer];

  v13 = +[SFAirDropUserDefaults_objc moveToAppEnabled];
  v14 = +[NSFileManager defaultManager];
  v15 = airdrop_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [lsCopy count];
    *buf = 67109120;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary preparing import of %d items", buf, 8u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10026EBF0;
  v26[3] = &unk_1008D65D8;
  v27 = lsCopy;
  v32 = v13;
  v17 = v12;
  v28 = v17;
  v18 = uUIDString;
  selfCopy = self;
  v31 = v33;
  v29 = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10026F1CC;
  v21[3] = &unk_1008D6600;
  v19 = v27;
  v22 = v19;
  selfCopy2 = self;
  v25 = v33;
  v20 = completionCopy;
  v24 = v20;
  [v8 performChanges:v26 completionHandler:v21];

  _Block_object_dispose(v33, 8);
}

- (void)handleMoveToAppShareSheetSucceeded
{
  assetIdentifiers = [(SDAirDropHandlerPhotos *)self assetIdentifiers];
  v4 = [assetIdentifiers count];

  if (v4)
  {
    assetIdentifiers2 = [(SDAirDropHandlerPhotos *)self assetIdentifiers];
    v6 = [assetIdentifiers2 copy];

    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary preparing expunge for %d items", buf, 8u);
    }

    v8 = +[PHPhotoLibrary sharedPhotoLibrary];
    v9 = [PHAsset fetchAssetsWithLocalIdentifiers:v6 options:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10026F590;
    v11[3] = &unk_1008CE090;
    v12 = v6;
    v10 = v6;
    [PHAssetChangeRequest performBatchExpungeWithAssets:v9 deleteOptions:0 photoLibrary:v8 completionHandler:v11];
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10026FD30(v8);
    }
  }
}

- (id)actionsForModernReadyForOpen
{
  v3 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v4 = SFLocalizedStringForKey();
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  localizedName = [bundleProxy localizedName];
  v7 = [NSString stringWithFormat:v4, localizedName];

  v8 = [SFAirDropAction alloc];
  transfer = [(SDAirDropHandler *)self transfer];
  identifier = [transfer identifier];
  bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
  bundleIdentifier = [bundleProxy2 bundleIdentifier];
  singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
  v14 = [v8 initWithTransferIdentifier:identifier actionIdentifier:bundleIdentifier title:v7 singleItemTitle:singleItemActionTitle type:3];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10026F9B8;
  v24[3] = &unk_1008CDB10;
  objc_copyWeak(&v25, &location);
  [v14 setActionHandler:v24];
  [v14 setMaxTransferState:8];
  [v3 addObject:v14];
  v15 = SFLocalizedStringForKey();
  v16 = [SFAirDropAction alloc];
  transfer2 = [(SDAirDropHandler *)self transfer];
  identifier2 = [transfer2 identifier];
  singleItemActionTitle2 = [(SDAirDropHandler *)self singleItemActionTitle];
  v20 = [v16 initWithTransferIdentifier:identifier2 actionIdentifier:@"SDMoveToAppActionIdentifier" title:v15 singleItemTitle:singleItemActionTitle2 type:3];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10026FAB0;
  v22[3] = &unk_1008CDB10;
  objc_copyWeak(&v23, &location);
  [v20 setActionHandler:v22];
  [v20 setMaxTransferState:8];
  [v3 addObject:v20];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v3;
}

- (id)createDestination
{
  v3 = NSHomeDirectory();
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v9 = 0;
  v5 = sub_1001F1158(v4, &v9);
  v6 = v9;

  if (!v5)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100105AB4(self, v6, v7);
    }
  }

  return v5;
}

@end