@interface SDAirDropHandlerMapsLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerMapsLinks)initWithTransfer:(id)a3;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerMapsLinks

- (SDAirDropHandlerMapsLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerMapsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.Maps"];
}

- (id)candidateIdentifiers
{
  v3 = objc_opt_new();
  v4 = [(SDAirDropHandler *)self bundleProxy];

  if (v4)
  {
    v5 = [(SDAirDropHandler *)self bundleProxy];
    v6 = [v5 bundleIdentifier];
    [v3 addObject:v6];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v3 = [(SDAirDropHandlerMapsLinks *)self candidateIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 completedURLs];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(SDAirDropHandler *)self bundleProxyFromCandidateIdentifiers:v3 handlesURL:*(*(&v13 + 1) + 8 * i)];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v5 = [(SDAirDropHandler *)self transfer];
  v6 = [v5 metaData];
  v7 = [v6 itemsDescriptionAdvanced];

  if (v4 != 1 || !v7 || ([v7 objectForKeyedSubscript:@"SFAirDropActivitySubjectMapsLinkType"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v30 = @"MAPS_LINK";
    v15 = [NSNumber numberWithUnsignedInteger:v4];
    v31 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v32 = v16;
    v17 = [NSArray arrayWithObjects:&v32 count:1];
    v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v17];

    LODWORD(v16) = [(SDAirDropHandler *)self isModernProgress];
    v18 = SFLocalizedStringForKey();
    if (v16)
    {
      [NSString localizedStringWithFormat:v18, v4, v29];
    }

    else
    {
      [NSString localizedStringWithFormat:v18, v3, v4];
    }
    v19 = ;
    goto LABEL_25;
  }

  v9 = [v7 objectForKeyedSubscript:@"SFAirDropActivitySubjectMapsLinkType"];
  v10 = [v9 integerValue];

  v11 = 0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v36 = @"MAPS_LINK_DROPPED_PIN";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v37 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v38 = v13;
      v14 = &v38;
      goto LABEL_17;
    }

    if (v10 == 3)
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
    if (!v10)
    {
      v42 = @"MAPS_LINK_CURRENT_LOCATION";
      v12 = [NSNumber numberWithUnsignedInteger:1];
      v43 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v44 = v13;
      v14 = &v44;
      goto LABEL_17;
    }

    if (v10 == 1)
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

  v21 = [(SDAirDropHandler *)self transfer];
  v22 = [v21 metaData];
  v23 = [v22 itemsDescription];
  if ([v23 length])
  {
    v24 = [(SDAirDropHandler *)self transfer];
    v25 = [v24 metaData];
    v18 = [v25 itemsDescription];
  }

  else
  {
    v18 = 0;
  }

  v26 = [(SDAirDropHandler *)self isModernProgress];
  v27 = SFLocalizedStringForKey();
  if (v26)
  {
    [NSString localizedStringWithFormat:v27, v18, v29];
  }

  else
  {
    [NSString localizedStringWithFormat:v27, v3, v18];
  }
  v19 = ;

LABEL_25:

  return v19;
}

@end