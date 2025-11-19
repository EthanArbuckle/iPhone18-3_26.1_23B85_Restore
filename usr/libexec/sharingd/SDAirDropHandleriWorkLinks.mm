@interface SDAirDropHandleriWorkLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriWorkLinks)initWithTransfer:(id)a3;
- (id)bundleProxyForiWorkURL:(id)a3;
- (id)documentName;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandleriWorkLinks

- (SDAirDropHandleriWorkLinks)initWithTransfer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SDAirDropHandleriWorkLinks;
  v5 = [(SDAirDropHandler *)&v10 initWithTransfer:v4];
  if (v5)
  {
    v6 = [v4 completedURLs];
    v7 = [v6 firstObject];
    v8 = [(SDAirDropHandleriWorkLinks *)v5 bundleProxyForiWorkURL:v7];
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
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [(SDAirDropHandlerWebLinks *)v3 initWithTransfer:v4];
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
  v7 = [(SDAirDropHandler *)self transfer];
  v8 = [v7 completedURLs];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v15 + 1) + 8 * i) isiWorkURL])
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (id)bundleProxyForiWorkURL:(id)a3
{
  v4 = a3;
  if ([v4 isiWorkURL])
  {
    v5 = [v4 iWorkApplicationName];
    v6 = [v5 capitalizedString];

    if ([v6 isEqual:@"Pages"])
    {
      v7 = @"com.apple.Pages";
    }

    else if ([v6 isEqual:@"Numbers"])
    {
      v7 = @"com.apple.Numbers";
    }

    else
    {
      if (![v6 isEqual:@"Keynote"])
      {
        v8 = 0;
        goto LABEL_10;
      }

      v7 = @"com.apple.Keynote";
    }

    v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
LABEL_10:
    v9 = [v8 appState];
    v10 = [v9 isInstalled];

    if (v10)
    {
      v11 = [v8 localizedName];
      appName = self->_appName;
      self->_appName = v11;
    }

    else
    {
      objc_storeStrong(&self->_appName, v6);
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
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 completedURLs];
  v4 = [v3 firstObject];

  v5 = [v4 iWorkDocumentName];

  return v5;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v5 = [(SDAirDropHandleriWorkLinks *)self documentName];
  v6 = v5;
  if (v4 == 1 && v5)
  {
    v7 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910190];
    v8 = SFLocalizedStringForKey();
    v9 = [NSString localizedStringWithFormat:v8, v3, self->_appName, v6];
  }

  else
  {
    v15 = @"IWORK_LINK";
    v10 = [NSNumber numberWithUnsignedInteger:v4];
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v17 = v11;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v12];

    v13 = SFLocalizedStringForKey();
    v9 = [NSString localizedStringWithFormat:v13, v3, v4, self->_appName];
  }

  return v9;
}

- (void)updatePossibleActions
{
  webLinksHandler = self->_webLinksHandler;
  if (webLinksHandler)
  {
    [(SDAirDropHandlerGenericLinks *)webLinksHandler updatePossibleActions];
    v4 = [(SDAirDropHandler *)self completionHandler];
    [(SDAirDropHandler *)self->_webLinksHandler setCompletionHandler:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SDAirDropHandleriWorkLinks;
    [(SDAirDropHandlerGenericLinks *)&v5 updatePossibleActions];
  }
}

@end