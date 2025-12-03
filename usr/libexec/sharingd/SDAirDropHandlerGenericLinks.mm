@interface SDAirDropHandlerGenericLinks
- (BOOL)canHandleTransfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerGenericLinks

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (bundleProxy)
  {
    return 1;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v26 = [completedURLs countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v26)
  {
    v8 = *v32;
    v25 = v28;
LABEL_7:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(completedURLs);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      scheme = [v10 scheme];
      lowercaseString = [scheme lowercaseString];

      if (([lowercaseString isEqual:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqual:", @"https"))
      {
        v13 = dispatch_semaphore_create(0);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v28[0] = sub_10010726C;
        v28[1] = &unk_1008D0720;
        v28[2] = self;
        v28[3] = v10;
        v29 = v13;
        v30 = a2;
        v14 = v13;
        [LSAppLink getAppLinkWithURL:v10 completionHandler:v27];
        v15 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v14, v15);
        appLink = [(SDAirDropHandlerGenericLinks *)self appLink];
      }

      else
      {
        v17 = +[LSApplicationWorkspace defaultWorkspace];
        v14 = [v17 URLOverrideForURL:v10];

        v18 = +[LSApplicationWorkspace defaultWorkspace];
        v19 = [v18 applicationsAvailableForOpeningURL:v14];
        [v19 firstObject];
        v20 = v8;
        v21 = a2;
        v23 = v22 = completedURLs;
        [(SDAirDropHandler *)self setBundleProxy:v23];

        completedURLs = v22;
        a2 = v21;
        v8 = v20;

        appLink = [(SDAirDropHandler *)self bundleProxy];
      }

      if (!appLink)
      {
        break;
      }

      if (v26 == ++v9)
      {
        v26 = [completedURLs countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v26)
        {
          goto LABEL_7;
        }

        v5 = 1;
        goto LABEL_19;
      }
    }
  }

  v5 = 0;
LABEL_19:

  return v5;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerGenericLinks;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x4000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  appLink = [(SDAirDropHandlerGenericLinks *)self appLink];
  targetApplicationProxy = [appLink targetApplicationProxy];
  v6 = targetApplicationProxy;
  if (targetApplicationProxy)
  {
    bundleProxy = targetApplicationProxy;
  }

  else
  {
    bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  }

  v8 = bundleProxy;

  localizedName = [v8 localizedName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v19 = @"GENERIC_LINK";
  v11 = [NSNumber numberWithInteger:totalSharedItemsCount];
  v20 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21 = v12;
  v13 = [NSArray arrayWithObjects:&v21 count:1];
  v14 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v13];

  v15 = SFLocalizedStringForKey();
  if (totalSharedItemsCount == 1)
  {
    [NSString stringWithFormat:v15, senderName, localizedName, v18];
  }

  else
  {
    [NSString stringWithFormat:v15, senderName, totalSharedItemsCount, localizedName];
  }
  v16 = ;

  return v16;
}

- (void)updatePossibleActions
{
  v14.receiver = self;
  v14.super_class = SDAirDropHandlerGenericLinks;
  [(SDAirDropHandler *)&v14 updatePossibleActions];
  appLink = [(SDAirDropHandlerGenericLinks *)self appLink];
  targetApplicationProxy = [appLink targetApplicationProxy];
  if (targetApplicationProxy)
  {
  }

  else
  {
    targetApplicationProxy = [(SDAirDropHandler *)self bundleProxy];

    if (!targetApplicationProxy)
    {
      return;
    }
  }

  v5 = [(SDAirDropHandler *)self defaultActionForBundleProxy:targetApplicationProxy];
  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001076D0;
  v11 = &unk_1008CDB10;
  objc_copyWeak(&v12, &location);
  [v5 setActionHandler:&v8];
  v15 = v5;
  v6 = [NSArray arrayWithObjects:&v15 count:1, v8, v9, v10, v11];
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer setPossibleActions:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end