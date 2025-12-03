@interface PCNativeRepresentation
- (id)initWithAdData:(id)data placementType:(int64_t)type maxSize:(id)size nativeLayout:(id)layout error:(id *)error;
@end

@implementation PCNativeRepresentation

- (id)initWithAdData:(id)data placementType:(int64_t)type maxSize:(id)size nativeLayout:(id)layout error:(id *)error
{
  var1 = size.var1;
  var0 = size.var0;
  dataCopy = data;
  layoutCopy = layout;
  v52.receiver = self;
  v52.super_class = PCNativeRepresentation;
  var1 = [(PCNativeRepresentation *)&v52 initWithAdData:dataCopy placementType:type maxSize:0 mediaAsset:error error:var0, var1];
  v16 = var1;
  if (dataCopy && var1)
  {
    localeIdentifier = [layoutCopy localeIdentifier];
    [(PCNativeRepresentation *)v16 setLocaleIdentifier:localeIdentifier];

    v51 = layoutCopy;
    adLayoutDetails = [layoutCopy adLayoutDetails];
    -[PCNativeRepresentation setAdType:](v16, "setAdType:", [adLayoutDetails type]);
    headline = [adLayoutDetails headline];
    [(PCNativeRepresentation *)v16 setHeadline:headline];

    accessHeadline = [adLayoutDetails accessHeadline];
    [(PCNativeRepresentation *)v16 setAccessibleHeadline:accessHeadline];

    adCopy = [adLayoutDetails adCopy];
    [(PCNativeRepresentation *)v16 setAdCopy:adCopy];

    accessAdCopy = [adLayoutDetails accessAdCopy];
    [(PCNativeRepresentation *)v16 setAccessibleAdCopy:accessAdCopy];

    sponsoredBy = [adLayoutDetails sponsoredBy];
    [(PCNativeRepresentation *)v16 setSponsor:sponsoredBy];

    -[PCNativeRepresentation setAdFormatType:](v16, "setAdFormatType:", [adLayoutDetails adFormatType]);
    sponsoredByAssetURL = [adLayoutDetails sponsoredByAssetURL];
    v25 = [NSURL URLWithString:sponsoredByAssetURL];
    [(PCNativeRepresentation *)v16 setSponsoredByAssetURL:v25];

    sponsoredByAssetURLForDarkMode = [adLayoutDetails sponsoredByAssetURLForDarkMode];
    v27 = [NSURL URLWithString:sponsoredByAssetURLForDarkMode];
    [(PCNativeRepresentation *)v16 setSponsoredByAssetURLForDarkMode:v27];

    v28 = +[NSMutableArray array];
    if ([adLayoutDetails localizedHeadlinesCount])
    {
      v29 = 0;
      do
      {
        v30 = [PCNativeLocalizedHeadline alloc];
        localizedHeadlines = [adLayoutDetails localizedHeadlines];
        v32 = [localizedHeadlines objectAtIndexedSubscript:v29];
        v33 = [v30 initWithLocalizedStringEntry:v32];

        if (v33)
        {
          [v28 addObject:v33];
        }

        ++v29;
      }

      while (v29 < [adLayoutDetails localizedHeadlinesCount]);
    }

    v34 = [v28 copy];
    [(PCNativeRepresentation *)v16 setLocalizedHeadlines:v34];

    v35 = [PCNativeButton alloc];
    ctaButton = [adLayoutDetails ctaButton];
    v37 = [v35 initWithButton:ctaButton];
    [(PCNativeRepresentation *)v16 setButton:v37];

    actionURL = [adLayoutDetails actionURL];
    v39 = [NSURL URLWithString:actionURL];
    [(PCNativeRepresentation *)v16 setActionURL:v39];

    v40 = +[NSMutableArray array];
    if ([adLayoutDetails elementsCount])
    {
      v41 = 0;
      do
      {
        v42 = [PCNativeElement alloc];
        elements = [adLayoutDetails elements];
        v44 = [elements objectAtIndexedSubscript:v41];
        v45 = [v42 initWithAdData:dataCopy element:v44 elementIndex:v41 error:error];

        if (v45)
        {
          [v40 addObject:v45];
        }

        ++v41;
      }

      while (v41 < [adLayoutDetails elementsCount]);
    }

    v46 = [v40 copy];
    [(PCNativeRepresentation *)v16 setElements:v46];

    v47 = [PCNativeStyle alloc];
    style = [adLayoutDetails style];
    v49 = [v47 initWithStyle:style];
    [(PCNativeRepresentation *)v16 setDefaultStyle:v49];

    [(PCNativeRepresentation *)v16 setSize:var0, var1];
    layoutCopy = v51;
  }

  return v16;
}

@end