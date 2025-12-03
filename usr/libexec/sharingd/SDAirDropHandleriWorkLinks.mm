@interface SDAirDropHandleriWorkLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriWorkLinks)initWithTransfer:(id)transfer;
- (id)bundleProxyForiWorkURL:(id)l;
- (id)documentName;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandleriWorkLinks

- (SDAirDropHandleriWorkLinks)initWithTransfer:(id)transfer
{
  transferCopy = transfer;
  v10.receiver = self;
  v10.super_class = SDAirDropHandleriWorkLinks;
  v5 = [(SDAirDropHandler *)&v10 initWithTransfer:transferCopy];
  if (v5)
  {
    completedURLs = [transferCopy completedURLs];
    firstObject = [completedURLs firstObject];
    v8 = [(SDAirDropHandleriWorkLinks *)v5 bundleProxyForiWorkURL:firstObject];
    [(SDAirDropHandler *)v5 setBundleProxy:v8];
  }

  return v5;
}

- (BOOL)canHandleTransfer
{
  v19.receiver = self;
  v19.super_class = SDAirDropHandleriWorkLinks;
  if ([(SDAirDropHandlerGenericLinks *)&v19 canHandleTransfer])
  {
    goto LABEL_3;
  }

  v3 = [SDAirDropHandlerWebLinks alloc];
  transfer = [(SDAirDropHandler *)self transfer];
  v5 = [(SDAirDropHandlerWebLinks *)v3 initWithTransfer:transfer];
  webLinksHandler = self->_webLinksHandler;
  self->_webLinksHandler = v5;

  if (![(SDAirDropHandlerWebLinks *)self->_webLinksHandler canHandleTransfer])
  {
    return 0;
  }

LABEL_3:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  transfer2 = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer2 completedURLs];

  v9 = [completedURLs countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(completedURLs);
        }

        if (![*(*(&v15 + 1) + 8 * i) isiWorkURL])
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v10 = [completedURLs countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v10)
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
  v3.super_class = SDAirDropHandleriWorkLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x10000000;
}

- (id)bundleProxyForiWorkURL:(id)l
{
  lCopy = l;
  if ([lCopy isiWorkURL])
  {
    iWorkApplicationName = [lCopy iWorkApplicationName];
    capitalizedString = [iWorkApplicationName capitalizedString];

    if ([capitalizedString isEqual:@"Pages"])
    {
      v7 = @"com.apple.Pages";
    }

    else if ([capitalizedString isEqual:@"Numbers"])
    {
      v7 = @"com.apple.Numbers";
    }

    else
    {
      if (![capitalizedString isEqual:@"Keynote"])
      {
        v8 = 0;
        goto LABEL_10;
      }

      v7 = @"com.apple.Keynote";
    }

    v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
LABEL_10:
    appState = [v8 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      localizedName = [v8 localizedName];
      appName = self->_appName;
      self->_appName = localizedName;
    }

    else
    {
      objc_storeStrong(&self->_appName, capitalizedString);
      appName = v8;
      v8 = 0;
    }

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)documentName
{
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];
  firstObject = [completedURLs firstObject];

  iWorkDocumentName = [firstObject iWorkDocumentName];

  return iWorkDocumentName;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  documentName = [(SDAirDropHandleriWorkLinks *)self documentName];
  v6 = documentName;
  if (totalSharedItemsCount == 1 && documentName)
  {
    v7 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910190];
    v8 = SFLocalizedStringForKey();
    v9 = [NSString localizedStringWithFormat:v8, senderName, self->_appName, v6];
  }

  else
  {
    v15 = @"IWORK_LINK";
    v10 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v17 = v11;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v12];

    v13 = SFLocalizedStringForKey();
    v9 = [NSString localizedStringWithFormat:v13, senderName, totalSharedItemsCount, self->_appName];
  }

  return v9;
}

- (void)updatePossibleActions
{
  webLinksHandler = self->_webLinksHandler;
  if (webLinksHandler)
  {
    [(SDAirDropHandlerGenericLinks *)webLinksHandler updatePossibleActions];
    completionHandler = [(SDAirDropHandler *)self completionHandler];
    [(SDAirDropHandler *)self->_webLinksHandler setCompletionHandler:completionHandler];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SDAirDropHandleriWorkLinks;
    [(SDAirDropHandlerGenericLinks *)&v5 updatePossibleActions];
  }
}

@end