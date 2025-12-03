@interface SDAirDropHandlerMapsLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerMapsLinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerMapsLinks

- (SDAirDropHandlerMapsLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerMapsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.Maps"];
}

- (id)candidateIdentifiers
{
  v3 = objc_opt_new();
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (bundleProxy)
  {
    bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
    bundleIdentifier = [bundleProxy2 bundleIdentifier];
    [v3 addObject:bundleIdentifier];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  candidateIdentifiers = [(SDAirDropHandlerMapsLinks *)self candidateIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v6 = [completedURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(completedURLs);
        }

        v10 = [(SDAirDropHandler *)self bundleProxyFromCandidateIdentifiers:candidateIdentifiers handlesURL:*(*(&v13 + 1) + 8 * i)];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v7 = [completedURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerMapsLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x80000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  itemsDescriptionAdvanced = [metaData itemsDescriptionAdvanced];

  if (totalSharedItemsCount != 1 || !itemsDescriptionAdvanced || ([itemsDescriptionAdvanced objectForKeyedSubscript:@"SFAirDropActivitySubjectMapsLinkType"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v30 = @"MAPS_LINK";
    v15 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
    v31 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v32 = v16;
    v17 = [NSArray arrayWithObjects:&v32 count:1];
    v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v17];

    LODWORD(v16) = [(SDAirDropHandler *)self isModernProgress];
    itemsDescription2 = SFLocalizedStringForKey();
    if (v16)
    {
      [NSString localizedStringWithFormat:itemsDescription2, totalSharedItemsCount, v29];
    }

    else
    {
      [NSString localizedStringWithFormat:itemsDescription2, senderName, totalSharedItemsCount];
    }
    v19 = ;
    goto LABEL_25;
  }

  v9 = [itemsDescriptionAdvanced objectForKeyedSubscript:@"SFAirDropActivitySubjectMapsLinkType"];
  integerValue = [v9 integerValue];

  v11 = 0;
  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      v36 = @"MAPS_LINK_DROPPED_PIN";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v37 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v38 = v13;
      v14 = &v38;
      goto LABEL_17;
    }

    if (integerValue == 3)
    {
      v33 = @"MAPS_LINK_POI";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v34 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v35 = v13;
      v14 = &v35;
      goto LABEL_17;
    }
  }

  else
  {
    if (!integerValue)
    {
      v42 = @"MAPS_LINK_CURRENT_LOCATION";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v43 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v44 = v13;
      v14 = &v44;
      goto LABEL_17;
    }

    if (integerValue == 1)
    {
      v39 = @"MAPS_LINK_DIRECTIONS";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v40 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v41 = v13;
      v14 = &v41;
LABEL_17:
      v20 = [NSArray arrayWithObjects:v14 count:1];
      v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v20];
    }
  }

  transfer2 = [(SDAirDropHandler *)self transfer];
  metaData2 = [transfer2 metaData];
  itemsDescription = [metaData2 itemsDescription];
  if ([itemsDescription length])
  {
    transfer3 = [(SDAirDropHandler *)self transfer];
    metaData3 = [transfer3 metaData];
    itemsDescription2 = [metaData3 itemsDescription];
  }

  else
  {
    itemsDescription2 = 0;
  }

  isModernProgress = [(SDAirDropHandler *)self isModernProgress];
  v27 = SFLocalizedStringForKey();
  if (isModernProgress)
  {
    [NSString localizedStringWithFormat:v27, itemsDescription2, v29];
  }

  else
  {
    [NSString localizedStringWithFormat:v27, senderName, itemsDescription2];
  }
  v19 = ;

LABEL_25:

  return v19;
}

@end