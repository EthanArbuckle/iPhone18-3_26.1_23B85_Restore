@interface SDAirDropHandlerCalendarEvents
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerCalendarEvents)initWithTransfer:(id)transfer;
- (id)importURLsWithError:(id *)error;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion;
- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerCalendarEvents

- (SDAirDropHandlerCalendarEvents)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerCalendarEvents;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.mobilecal"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];

  v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(items);
        }

        type = [*(*(&v14 + 1) + 8 * i) type];
        v11 = SFIsCalendarEvent();

        if (!v11)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v7 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerCalendarEvents;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x40;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"CALENDAR";
  v5 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, totalSharedItemsCount, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount];
  }
  v10 = ;

  return v10;
}

- (void)updatePossibleActions
{
  v13.receiver = self;
  v13.super_class = SDAirDropHandlerCalendarEvents;
  [(SDAirDropHandler *)&v13 updatePossibleActions];
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  v4 = [(SDAirDropHandler *)self defaultActionForBundleProxy:bundleProxy];

  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100114BD4;
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

- (void)triggerImport
{
  v11 = 0;
  v3 = [(SDAirDropHandlerCalendarEvents *)self importURLsWithError:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v12 = v3;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    bundleProxy = [(SDAirDropHandler *)self bundleProxy];
    bundleIdentifier = [bundleProxy bundleIdentifier];
    v9 = [(SDAirDropHandler *)self openURLs:v6 bundleIdentifier:bundleIdentifier];
  }

  completionHandler = [(SDAirDropHandler *)self completionHandler];
  completionHandler[2](completionHandler, v9, 0, 1);
}

- (id)importURLsWithError:(id *)error
{
  off_100970DB0[0]();
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  obj = completedURLs;
  v7 = [completedURLs countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    externalURL = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        v13 = v9;
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v25 = v9;
        v15 = [NSData dataWithContentsOfURL:v14 options:0 error:&v25];
        v9 = v25;

        if (v15)
        {
          defaultCalendarForNewEvents = [v4 defaultCalendarForNewEvents];
          v17 = [v4 importICSData:v15 intoCalendar:defaultCalendarForNewEvents options:0];

          v18 = airdrop_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calendar Events data was imported from %@", buf, 0xCu);
          }

          if (!externalURL)
          {
            firstObject = [v17 firstObject];
            externalURL = [firstObject externalURL];
          }
        }

        else
        {
          v17 = airdrop_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v14;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "processCalendarEvents failed to load data for file: %@", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    externalURL = 0;
  }

  if (error)
  {
    v20 = v9;
    *error = v9;
  }

  v21 = externalURL;

  return externalURL;
}

- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion
{
  v11 = 0;
  completionCopy = completion;
  lsCopy = ls;
  v8 = [(SDAirDropHandlerCalendarEvents *)self importURLsWithError:&v11];
  v9 = v11;
  v10 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v10 setImportedFiles:lsCopy];

  [(SDAirDropHandlerImportResult *)v10 setOpenAppURL:v8];
  completionCopy[2](completionCopy, v10, v9);
}

- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  lsCopy = ls;
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  bundleIdentifier = [bundleProxy bundleIdentifier];
  v9 = [(SDAirDropHandler *)self openURLs:lsCopy bundleIdentifier:bundleIdentifier];

  completionCopy[2](completionCopy, v9, 0);
}

@end