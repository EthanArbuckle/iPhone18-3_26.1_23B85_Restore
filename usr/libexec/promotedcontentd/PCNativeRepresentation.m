@interface PCNativeRepresentation
- (id)initWithAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 nativeLayout:(id)a6 error:(id *)a7;
@end

@implementation PCNativeRepresentation

- (id)initWithAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 nativeLayout:(id)a6 error:(id *)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v13 = a3;
  v14 = a6;
  v52.receiver = self;
  v52.super_class = PCNativeRepresentation;
  v15 = [(PCNativeRepresentation *)&v52 initWithAdData:v13 placementType:a4 maxSize:0 mediaAsset:a7 error:var0, var1];
  v16 = v15;
  if (v13 && v15)
  {
    v17 = [v14 localeIdentifier];
    [(PCNativeRepresentation *)v16 setLocaleIdentifier:v17];

    v51 = v14;
    v18 = [v14 adLayoutDetails];
    -[PCNativeRepresentation setAdType:](v16, "setAdType:", [v18 type]);
    v19 = [v18 headline];
    [(PCNativeRepresentation *)v16 setHeadline:v19];

    v20 = [v18 accessHeadline];
    [(PCNativeRepresentation *)v16 setAccessibleHeadline:v20];

    v21 = [v18 adCopy];
    [(PCNativeRepresentation *)v16 setAdCopy:v21];

    v22 = [v18 accessAdCopy];
    [(PCNativeRepresentation *)v16 setAccessibleAdCopy:v22];

    v23 = [v18 sponsoredBy];
    [(PCNativeRepresentation *)v16 setSponsor:v23];

    -[PCNativeRepresentation setAdFormatType:](v16, "setAdFormatType:", [v18 adFormatType]);
    v24 = [v18 sponsoredByAssetURL];
    v25 = [NSURL URLWithString:v24];
    [(PCNativeRepresentation *)v16 setSponsoredByAssetURL:v25];

    v26 = [v18 sponsoredByAssetURLForDarkMode];
    v27 = [NSURL URLWithString:v26];
    [(PCNativeRepresentation *)v16 setSponsoredByAssetURLForDarkMode:v27];

    v28 = +[NSMutableArray array];
    if ([v18 localizedHeadlinesCount])
    {
      v29 = 0;
      do
      {
        v30 = [PCNativeLocalizedHeadline alloc];
        v31 = [v18 localizedHeadlines];
        v32 = [v31 objectAtIndexedSubscript:v29];
        v33 = [v30 initWithLocalizedStringEntry:v32];

        if (v33)
        {
          [v28 addObject:v33];
        }

        ++v29;
      }

      while (v29 < [v18 localizedHeadlinesCount]);
    }

    v34 = [v28 copy];
    [(PCNativeRepresentation *)v16 setLocalizedHeadlines:v34];

    v35 = [PCNativeButton alloc];
    v36 = [v18 ctaButton];
    v37 = [v35 initWithButton:v36];
    [(PCNativeRepresentation *)v16 setButton:v37];

    v38 = [v18 actionURL];
    v39 = [NSURL URLWithString:v38];
    [(PCNativeRepresentation *)v16 setActionURL:v39];

    v40 = +[NSMutableArray array];
    if ([v18 elementsCount])
    {
      v41 = 0;
      do
      {
        v42 = [PCNativeElement alloc];
        v43 = [v18 elements];
        v44 = [v43 objectAtIndexedSubscript:v41];
        v45 = [v42 initWithAdData:v13 element:v44 elementIndex:v41 error:a7];

        if (v45)
        {
          [v40 addObject:v45];
        }

        ++v41;
      }

      while (v41 < [v18 elementsCount]);
    }

    v46 = [v40 copy];
    [(PCNativeRepresentation *)v16 setElements:v46];

    v47 = [PCNativeStyle alloc];
    v48 = [v18 style];
    v49 = [v47 initWithStyle:v48];
    [(PCNativeRepresentation *)v16 setDefaultStyle:v49];

    [(PCNativeRepresentation *)v16 setSize:var0, var1];
    v14 = v51;
  }

  return v16;
}

@end