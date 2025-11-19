@interface SDAirDropHandlerProfiles
- (BOOL)canHandleTransfer;
- (BOOL)importData;
- (SDAirDropHandlerProfiles)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerProfiles

- (SDAirDropHandlerProfiles)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerProfiles;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.Preferences"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 rawFiles];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = kSFOperationFileNameKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:v9];
        v12 = [v11 pathExtension];

        LODWORD(v11) = SFIsManagedConfigurationType();
        if (!v11)
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerProfiles;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x400;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"PROFILE";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, v4, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, v3, v4];
  }
  v10 = ;

  return v10;
}

- (void)updatePossibleActions
{
  v13.receiver = self;
  v13.super_class = SDAirDropHandlerProfiles;
  [(SDAirDropHandler *)&v13 updatePossibleActions];
  v3 = [(SDAirDropHandler *)self bundleProxy];
  v4 = [(SDAirDropHandler *)self defaultActionForBundleProxy:v3];

  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100165E68;
  v10 = &unk_1008CDB10;
  objc_copyWeak(&v11, &location);
  [v4 setActionHandler:&v7];
  v14 = v4;
  v5 = [NSArray arrayWithObjects:&v14 count:1, v7, v8, v9, v10];
  v6 = [(SDAirDropHandler *)self transfer];
  [v6 setPossibleActions:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)triggerImport
{
  v3 = [(SDAirDropHandlerProfiles *)self importData];
  v4 = [(SDAirDropHandler *)self completionHandler];
  v4[2](v4, v3, 0, 1);
}

- (BOOL)importData
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 completedURLs];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    v21 = 1;
    *&v5 = 138412546;
    v20 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 path];
        v24 = 0;
        v11 = [NSData dataWithContentsOfFile:v10 options:0 error:&v24];
        v12 = v24;

        if (v11)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v15 = +[MCProfileConnection sharedConnection];
          v16 = [v9 path];
          v17 = [v16 lastPathComponent];
          v23 = 0;
          v18 = [v15 queueFileDataForAcceptance:v11 originalFileName:v17 outError:&v23];
          v12 = v23;

          if (!v12)
          {
            goto LABEL_17;
          }

          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v30 = v9;
            v31 = 2112;
            v32 = v12;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to queue file data for acceptance %@ with error: %@", buf, 0x16u);
          }

          v21 = 0;
        }

        else
        {
          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v30 = v9;
            v31 = 2112;
            v32 = v12;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to load data for %@ with error: %@", buf, 0x16u);
          }
        }

LABEL_17:
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (!v6)
      {
        goto LABEL_21;
      }
    }
  }

  v21 = 1;
LABEL_21:

  return v21 & 1;
}

- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v5[2](v5, [(SDAirDropHandlerProfiles *)self importData], 0);
}

@end