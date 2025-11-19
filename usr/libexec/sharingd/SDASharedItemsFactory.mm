@interface SDASharedItemsFactory
+ (id)plainItemsFromItemSources:(id)a3;
+ (id)sharedFactory;
+ (id)sharedItemsInCategory:(int64_t)a3 ofType:(int64_t)a4;
- (NSArray)attributedStrings;
- (NSArray)iLifeLinks;
- (NSArray)iTunesStoreLinks;
- (NSArray)iWorkLinks;
- (NSArray)mapsLinks;
- (NSArray)sharediCloudDocumentsLinks;
- (NSArray)strings;
- (NSArray)telephoneLinks;
- (NSArray)webLinkStringBlocks;
- (NSArray)webLinkStrings;
- (NSArray)webLinks;
- (NSArray)yelpLinks;
- (SDASharedItemsFactory)init;
- (id)dataDocuments;
- (id)findMyFriendsLink;
- (id)itemSourcesForFileNames:(id)a3 previewImageBaseName:(id)a4 fakeItemDuration:(float)a5 fakeItemBytes:(int64_t)a6 fakeBundleID:(id)a7;
- (id)itemSourcesForNonFileURLDictionaries:(id)a3 fakeItemDuration:(float)a4 fakeItemBytes:(int64_t)a5 fakeBundleID:(id)a6;
- (id)keynoteLiveLinks;
@end

@implementation SDASharedItemsFactory

+ (id)sharedFactory
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = qword_10098A220;
  if (!qword_10098A220)
  {
    v4 = objc_alloc_init(SDASharedItemsFactory);
    v5 = qword_10098A220;
    qword_10098A220 = v4;

    v3 = qword_10098A220;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

- (SDASharedItemsFactory)init
{
  v6.receiver = self;
  v6.super_class = SDASharedItemsFactory;
  v2 = [(SDASharedItemsFactory *)&v6 init];
  if (v2)
  {
    if ([&off_1009102B0 count] != 12)
    {
      sub_1001F71D8();
    }

    if ([&off_1009102E0 count] != 8)
    {
      sub_1001F7258();
    }

    if ([&off_100910310 count] != 1)
    {
      sub_1001F72D8();
    }

    if ([&off_100910340 count] != 4)
    {
      sub_1001F7358();
    }

    if ([&off_100910370 count] != 6)
    {
      sub_1001F73D8();
    }

    if ([&off_1009103A0 count] != 11)
    {
      sub_1001F7458();
    }

    if ([&off_1009103D0 count] != 4)
    {
      sub_1001F74D8();
    }

    if ([&off_100910400 count] != 1)
    {
      sub_1001F7558();
    }

    v3 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v2->_bundle;
    v2->_bundle = v3;

    if (!v2->_bundle)
    {

      return 0;
    }
  }

  return v2;
}

- (id)dataDocuments
{
  v2 = [SDAItemSource alloc];
  v3 = +[NSData data];
  v4 = [(SDAItemSource *)v2 initWithData:v3 type:kUTTypeHTML previewImage:0 subject:@"My Generic Data" name:0];

  [(SDAItemSource *)v4 setFakeBytes:100];
  [(SDAItemSource *)v4 setFakeBundleID:@"com.apple.mobilemail"];
  LODWORD(v5) = 1.0;
  [(SDAItemSource *)v4 setFakeDuration:v5];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)findMyFriendsLink
{
  v2 = [SDAItemSource alloc];
  v3 = [NSURL URLWithString:@"fmf1://foo"];
  v4 = [(SDAItemSource *)v2 initWithURL:v3 previewImage:0 subject:@"Location"];

  [(SDAItemSource *)v4 setFakeBundleID:@"com.apple.findmy"];
  [(SDAItemSource *)v4 setFakeBytes:100];
  LODWORD(v5) = 1036831949;
  [(SDAItemSource *)v4 setFakeDuration:v5];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (NSArray)iLifeLinks
{
  v2 = [SDAItemSource alloc];
  v3 = [NSURL URLWithString:@"https://www.icloud.com/journal/#1CAEQARoQMchUru323-EAGU6rC2OZpg;3BAD3ADE-DB60-47A8-975D-17138CD396B1"];;
  v4 = [(SDAItemSource *)v2 initWithURL:v3 previewImage:0 subject:@"iPhoto Journal"];

  [(SDAItemSource *)v4 setFakeBundleID:@"com.apple.mobileiphoto"];
  [(SDAItemSource *)v4 setFakeBytes:100];
  LODWORD(v5) = 1036831949;
  [(SDAItemSource *)v4 setFakeDuration:v5];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (NSArray)iWorkLinks
{
  v2 = [SDAItemSource alloc];
  v3 = [NSURL URLWithString:@"https://www.icloud.com/iw/#pages/some-hash/School%20Report"];
  v4 = [(SDAItemSource *)v2 initWithURL:v3 previewImage:0 subject:@"School Report"];

  [(SDAItemSource *)v4 setFakeBundleID:@"com.apple.Pages"];
  [(SDAItemSource *)v4 setFakeBytes:100];
  LODWORD(v5) = 1036831949;
  [(SDAItemSource *)v4 setFakeDuration:v5];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)keynoteLiveLinks
{
  v10[0] = @"https://www.icloud.com/keynote-live/wGlPfel-hr529LJVgRDOm5ypCpaoC5zKs5MJSAMYYsVhIPpxvos5iZelgn7Qebu_ZLmk9hrgJWY4vveA_p4Ovp9iYthUHI6MJtlTjsHXx2yGOR4QvbdsS8esHSiSFepDDqq8WrqWPDNwnGiQ7xM-Op19zjCwILdpu77oEsjhls5Kcc-orw";
  v3 = [UIImage imageNamed:@"elvis_presley-preview.jpg" inBundle:self->_bundle, @"kSDAItemSourcesURL", @"kSDAItemSourcesPreviewImage"];
  v9[2] = @"kSDAItemSourcesSubject";
  v10[1] = v3;
  v10[2] = @"Check out this Keynote Live presentatation";
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];

  LODWORD(v6) = 1036831949;
  v7 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v5 fakeItemDuration:100 fakeItemBytes:@"com.apple.Keynote" fakeBundleID:v6];

  return v7;
}

- (NSArray)sharediCloudDocumentsLinks
{
  v10[0] = @"https://www.icloud.com/pages/000r43N3H8h68IwFK1ifN23sg#PageTest";
  v3 = [UIImage imageNamed:@"elvis_presley-preview.jpg" inBundle:self->_bundle, @"kSDAItemSourcesURL", @"kSDAItemSourcesPreviewImage"];
  v9[2] = @"kSDAItemSourcesSubject";
  v10[1] = v3;
  v10[2] = @"Check out this Pages document";
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11[0] = v4;
  v11[1] = &off_10090EBC8;
  v11[2] = &off_10090EBF0;
  v5 = [NSArray arrayWithObjects:v11 count:3];

  LODWORD(v6) = 1036831949;
  v7 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v5 fakeItemDuration:100 fakeItemBytes:@"com.apple.mobilemail" fakeBundleID:v6];

  return v7;
}

- (NSArray)iTunesStoreLinks
{
  v34[0] = @"https://itunes.apple.com/us/book/the-monuments-men/id357655256";
  v33[0] = @"kSDAItemSourcesURL";
  v33[1] = @"kSDAItemSourcesPreviewImage";
  v20 = [UIImage imageNamed:@"the-monuments-men-preview.jpeg" inBundle:self->_bundle];
  v33[2] = @"kSDAItemSourcesSubject";
  v34[1] = v20;
  v34[2] = @"Check out this book";
  v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
  v35[0] = v19;
  v32[0] = @"https://itunes.apple.com/us/podcast/hypercritical/id414920759";
  v31[0] = @"kSDAItemSourcesURL";
  v31[1] = @"kSDAItemSourcesPreviewImage";
  v18 = [UIImage imageNamed:@"hypercritical-preview.jpeg" inBundle:self->_bundle];
  v31[2] = @"kSDAItemSourcesSubject";
  v32[1] = v18;
  v32[2] = @"Check out this podcast";
  v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v35[1] = v17;
  v30[0] = @"https://itunes.apple.com/us/itunes-u/ipad-iphone-application-development/id480479762";
  v29[0] = @"kSDAItemSourcesURL";
  v29[1] = @"kSDAItemSourcesPreviewImage";
  v16 = [UIImage imageNamed:@"itunesu-preview.jpeg" inBundle:self->_bundle];
  v29[2] = @"kSDAItemSourcesSubject";
  v30[1] = v16;
  v30[2] = @"Check out this itunes-u";
  v15 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v35[2] = v15;
  v28[0] = @"https://itunes.apple.com/us/album/complete-50s-albums-collection/id672012335";
  v27[0] = @"kSDAItemSourcesURL";
  v27[1] = @"kSDAItemSourcesPreviewImage";
  v14 = [UIImage imageNamed:@"elvis_presley-preview.jpg" inBundle:self->_bundle];
  v27[2] = @"kSDAItemSourcesSubject";
  v28[1] = v14;
  v28[2] = @"Check out this album";
  v3 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  v35[3] = v3;
  v26[0] = @"https://itunes.apple.com/us/movie-collection/the-lord-of-the-rings-trilogy/id365647689";
  v25[0] = @"kSDAItemSourcesURL";
  v25[1] = @"kSDAItemSourcesPreviewImage";
  v4 = [UIImage imageNamed:@"the-lord-of-the-rings-preview.jpeg" inBundle:self->_bundle];
  v25[2] = @"kSDAItemSourcesSubject";
  v26[1] = v4;
  v26[2] = @"Check out this movie collection";
  v5 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  v35[4] = v5;
  v24[0] = @"https://itunes.apple.com/us/tv-season/breaking-bad-season-1/id271383858";
  v23[0] = @"kSDAItemSourcesURL";
  v23[1] = @"kSDAItemSourcesPreviewImage";
  v6 = [UIImage imageNamed:@"breaking-bad-preview.jpeg" inBundle:self->_bundle];
  v23[2] = @"kSDAItemSourcesSubject";
  v24[1] = v6;
  v24[2] = @"Check out this tv-season";
  v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
  v35[5] = v7;
  v22[0] = @"https://itunes.apple.com/us/audiobook/steve-jobs-unabridged/id473826062";
  v21[0] = @"kSDAItemSourcesURL";
  v21[1] = @"kSDAItemSourcesPreviewImage";
  v8 = [UIImage imageNamed:@"steve-jobs-preview.jpeg" inBundle:self->_bundle];
  v21[2] = @"kSDAItemSourcesSubject";
  v22[1] = v8;
  v22[2] = @"Check out this audiobook";
  v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v35[6] = v9;
  v10 = [NSArray arrayWithObjects:v35 count:7];

  LODWORD(v11) = 1036831949;
  v12 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v10 fakeItemDuration:100 fakeItemBytes:@"com.apple.MobileStore" fakeBundleID:v11];

  return v12;
}

- (NSArray)mapsLinks
{
  v10[0] = @"http://maps.apple.com/?lsp=9902&auid=10582173481701573620&sll=37.331848,-122.030296&q=Apple%2C%20Inc.&hnear=1%20Infinite%20Loop%20Cupertino%20CA%2095014%20United%20States";
  v3 = [UIImage imageNamed:@"apple_inc-preview.png" inBundle:self->_bundle, @"kSDAItemSourcesURL", @"kSDAItemSourcesPreviewImage"];
  v9[2] = @"kSDAItemSourcesSubject";
  v10[1] = v3;
  v10[2] = @"Apple Inc.";
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];

  LODWORD(v6) = 1036831949;
  v7 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v5 fakeItemDuration:100 fakeItemBytes:@"com.apple.Maps" fakeBundleID:v6];

  return v7;
}

- (NSArray)telephoneLinks
{
  v10[0] = @"tel://+18000391010";
  v3 = [UIImage imageNamed:@"apple_inc-preview.png" inBundle:self->_bundle, @"kSDAItemSourcesURL", @"kSDAItemSourcesPreviewImage"];
  v9[2] = @"kSDAItemSourcesSubject";
  v10[1] = v3;
  v10[2] = @"Apple Inc.";
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];

  LODWORD(v6) = 1036831949;
  v7 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v5 fakeItemDuration:100 fakeItemBytes:@"com.apple.mobilemail" fakeBundleID:v6];

  return v7;
}

- (NSArray)webLinks
{
  v18[0] = @"http://www.apple.com";
  v17[0] = @"kSDAItemSourcesURL";
  v17[1] = @"kSDAItemSourcesPreviewImage";
  v3 = [UIImage imageNamed:@"apple_com-preview.png" inBundle:self->_bundle];
  v17[2] = @"kSDAItemSourcesSubject";
  v18[1] = v3;
  v18[2] = @"Please go check out apple.com";
  v4 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v19[0] = v4;
  v16[0] = @"http://www.yahoo.com";
  v15[0] = @"kSDAItemSourcesURL";
  v15[1] = @"kSDAItemSourcesPreviewImage";
  v5 = [UIImage imageNamed:@"apple_com-preview.png" inBundle:self->_bundle];
  v15[2] = @"kSDAItemSourcesSubject";
  v16[1] = v5;
  v16[2] = @"Please go check out yahoo.com";
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v19[1] = v6;
  v14[0] = @"http://www.cnn.com";
  v13[0] = @"kSDAItemSourcesURL";
  v13[1] = @"kSDAItemSourcesPreviewImage";
  v7 = [UIImage imageNamed:@"apple_com-preview.png" inBundle:self->_bundle];
  v13[2] = @"kSDAItemSourcesSubject";
  v14[1] = v7;
  v14[2] = @"Please go check out cnn.com";
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v19[2] = v8;
  v9 = [NSArray arrayWithObjects:v19 count:3];

  LODWORD(v10) = 1036831949;
  v11 = [(SDASharedItemsFactory *)self itemSourcesForNonFileURLDictionaries:v9 fakeItemDuration:100 fakeItemBytes:@"com.apple.mobilemail" fakeBundleID:v10];

  return v11;
}

- (NSArray)webLinkStrings
{
  v2 = [UIImage imageNamed:@"apple_com-preview.png" inBundle:self->_bundle];
  v3 = [[SDAItemSource alloc] initWithString:@"http://www.apple.com" previewImage:v2 subject:@"Please go check out apple.com"];
  [(SDAItemSource *)v3 setFakeBundleID:@"com.apple.mobilemail"];
  [(SDAItemSource *)v3 setFakeBytes:100];
  LODWORD(v4) = 1036831949;
  [(SDAItemSource *)v3 setFakeDuration:v4];
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (NSArray)webLinkStringBlocks
{
  v2 = [UIImage imageNamed:@"apple_com-preview.png" inBundle:self->_bundle];
  v3 = [[SDAItemSource alloc] initWithString:@"Come check out the amazing new stuff at http://www.apple.com/ . Special discounts this week" previewImage:v2 subject:@"Please go check out apple.com"];
  [(SDAItemSource *)v3 setFakeBundleID:@"com.apple.mobilemail"];
  [(SDAItemSource *)v3 setFakeBytes:100];
  LODWORD(v4) = 1036831949;
  [(SDAItemSource *)v3 setFakeDuration:v4];
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (NSArray)yelpLinks
{
  v3 = [NSURL URLWithString:@"yelp://biz/the-sentinel-san-francisco"];
  v4 = [UIImage imageNamed:@"the_sentinel_san_francisco-preview.jpg" inBundle:self->_bundle];
  v5 = [[SDAItemSource alloc] initWithURL:v3 previewImage:v4 subject:@"The Sentinel Restaurant"];
  [(SDAItemSource *)v5 setFakeBundleID:@"com.apple.mobilemail"];
  [(SDAItemSource *)v5 setFakeBytes:100];
  LODWORD(v6) = 1036831949;
  [(SDAItemSource *)v5 setFakeDuration:v6];
  v9 = v5;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (NSArray)attributedStrings
{
  v2 = objc_opt_new();
  v3 = [[NSAttributedString alloc] initWithString:@"Hello. This is a test attributed string."];
  [v2 appendAttributedString:v3];

  v4 = +[UIColor yellowColor];
  [v2 addAttribute:NSBackgroundColorAttributeName value:v4 range:{3, 5}];

  v5 = +[UIColor greenColor];
  [v2 addAttribute:NSForegroundColorAttributeName value:v5 range:{10, 7}];

  v6 = [UIFont boldSystemFontOfSize:20.0];
  [v2 addAttribute:NSFontAttributeName value:v6 range:{20, 10}];

  v13 = v2;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F5AB0;
  v12 = v11[3] = &unk_1008D3F68;
  v8 = v12;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

- (NSArray)strings
{
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_100910538 count]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F5C2C;
  v6 = v5[3] = &unk_1008D3F90;
  v2 = v6;
  [&off_100910538 enumerateObjectsUsingBlock:v5];
  v3 = [v2 copy];

  return v3;
}

- (id)itemSourcesForNonFileURLDictionaries:(id)a3 fakeItemDuration:(float)a4 fakeItemBytes:(int64_t)a5 fakeBundleID:(id)a6
{
  v9 = a6;
  v10 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001F5DEC;
  v20 = v18 = &unk_1008D3FB8;
  v21 = a5;
  v22 = a4;
  v19 = v9;
  v11 = v20;
  v12 = v9;
  [v10 enumerateObjectsUsingBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

- (id)itemSourcesForFileNames:(id)a3 previewImageBaseName:(id)a4 fakeItemDuration:(float)a5 fakeItemBytes:(int64_t)a6 fakeBundleID:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001F608C;
  v23 = &unk_1008D3FE0;
  v24 = self;
  v27 = v25 = v12;
  v28 = a6;
  v29 = a5;
  v26 = v13;
  v15 = v27;
  v16 = v13;
  v17 = v12;
  [v14 enumerateObjectsUsingBlock:&v20];

  v18 = [v15 copy];

  return v18;
}

+ (id)plainItemsFromItemSources:(id)a3
{
  v3 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F6380;
  v8 = v7[3] = &unk_1008D4008;
  v4 = v8;
  [v3 enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

+ (id)sharedItemsInCategory:(int64_t)a3 ofType:(int64_t)a4
{
  v6 = [a1 sharedFactory];
  if (!v6)
  {
    sub_1001F75D8();
  }

  v7 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      switch(a3)
      {
        case 6:
          v7 = 0;
          if (a4 <= 4)
          {
            if (a4 <= 1)
            {
              if (a4)
              {
                if (a4 != 1)
                {
                  goto LABEL_114;
                }

                v8 = [v6 findMyFriendsLink];
                v9 = [v8 objectAtIndexedSubscript:0];
                v31 = v9;
                v13 = &v31;
              }

              else
              {
                v8 = [v6 telephoneLinks];
                v9 = [v8 objectAtIndexedSubscript:0];
                v32 = v9;
                v13 = &v32;
              }
            }

            else if (a4 == 2)
            {
              v8 = [v6 yelpLinks];
              v9 = [v8 objectAtIndexedSubscript:0];
              v30 = v9;
              v13 = &v30;
            }

            else
            {
              if (a4 == 3)
              {
                v8 = [v6 webLinks];
                v9 = [v8 objectAtIndexedSubscript:0];
                v29[0] = v9;
                v10 = [v6 yelpLinks];
                v11 = [v10 objectAtIndexedSubscript:0];
                v29[1] = v11;
                v12 = v29;
                goto LABEL_96;
              }

              v8 = [v6 iLifeLinks];
              v9 = [v8 objectAtIndexedSubscript:0];
              v28 = v9;
              v13 = &v28;
            }
          }

          else if (a4 > 7)
          {
            switch(a4)
            {
              case 8:
                v8 = [v6 sharediCloudDocumentsLinks];
                v9 = [v8 objectAtIndexedSubscript:1];
                v24 = v9;
                v13 = &v24;
                break;
              case 9:
                v8 = [v6 sharediCloudDocumentsLinks];
                v9 = [v8 objectAtIndexedSubscript:2];
                v23 = v9;
                v13 = &v23;
                break;
              case 10:
                v16 = [v6 sharediCloudDocumentsLinks];
                goto LABEL_109;
              default:
                goto LABEL_114;
            }
          }

          else if (a4 == 5)
          {
            v8 = [v6 iWorkLinks];
            v9 = [v8 objectAtIndexedSubscript:0];
            v27 = v9;
            v13 = &v27;
          }

          else if (a4 == 6)
          {
            v8 = [v6 keynoteLiveLinks];
            v9 = [v8 objectAtIndexedSubscript:0];
            v26 = v9;
            v13 = &v26;
          }

          else
          {
            v8 = [v6 sharediCloudDocumentsLinks];
            v9 = [v8 objectAtIndexedSubscript:0];
            v25 = v9;
            v13 = &v25;
          }

          break;
        case 7:
          v7 = 0;
          if (a4 > 1)
          {
            if (a4 != 2)
            {
              if (a4 != 3)
              {
                goto LABEL_114;
              }

              v16 = [v6 dataDocuments];
              goto LABEL_109;
            }

            v8 = [v6 attributedStrings];
            v9 = [v8 objectAtIndexedSubscript:0];
            v21 = v9;
            v13 = &v21;
          }

          else
          {
            if (a4)
            {
              if (a4 != 1)
              {
                goto LABEL_114;
              }

              v16 = [v6 strings];
              goto LABEL_109;
            }

            v8 = [v6 strings];
            v9 = [v8 objectAtIndexedSubscript:0];
            v22 = v9;
            v13 = &v22;
          }

          break;
        case 8:
          if (!a4)
          {
            v8 = [v6 strings];
            v9 = [v8 objectAtIndexedSubscript:0];
            v20[0] = v9;
            v10 = [v6 images];
            v11 = [v10 objectAtIndexedSubscript:0];
            v20[1] = v11;
            v12 = v20;
LABEL_96:
            v7 = [NSArray arrayWithObjects:v12 count:2];
            goto LABEL_97;
          }

LABEL_21:
          v7 = 0;
          goto LABEL_114;
        default:
          goto LABEL_114;
      }

LABEL_112:
      v7 = [NSArray arrayWithObjects:v13 count:1];
      goto LABEL_113;
    }

    if (a3 == 4)
    {
      v7 = 0;
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v8 = [v6 webLinkStrings];
          v9 = [v8 objectAtIndexedSubscript:0];
          v38 = v9;
          v13 = &v38;
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_114;
          }

          v8 = [v6 webLinkStringBlocks];
          v9 = [v8 objectAtIndexedSubscript:0];
          v37 = v9;
          v13 = &v37;
        }

        goto LABEL_112;
      }

      if (!a4)
      {
        v8 = [v6 webLinks];
        v9 = [v8 objectAtIndexedSubscript:0];
        v39 = v9;
        v13 = &v39;
        goto LABEL_112;
      }

      if (a4 != 1)
      {
        goto LABEL_114;
      }

      v16 = [v6 webLinks];
    }

    else
    {
      v7 = 0;
      if (a4 > 2)
      {
        if (a4 != 3)
        {
          if (a4 == 4)
          {
            v8 = [v6 pdfs];
            v9 = [v8 objectAtIndexedSubscript:0];
            v34[0] = v9;
            v10 = [v6 pages];
            v11 = [v10 objectAtIndexedSubscript:0];
            v34[1] = v11;
            v12 = v34;
            goto LABEL_96;
          }

          if (a4 != 5)
          {
            goto LABEL_114;
          }

          v8 = [v6 sharingDrawingDocuments];
          v9 = [v8 objectAtIndexedSubscript:0];
          v33 = v9;
          v13 = &v33;
          goto LABEL_112;
        }

        v16 = [v6 pages];
      }

      else
      {
        if (!a4)
        {
          v8 = [v6 pdfs];
          v9 = [v8 objectAtIndexedSubscript:0];
          v36 = v9;
          v13 = &v36;
          goto LABEL_112;
        }

        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_114;
          }

          v8 = [v6 pages];
          v9 = [v8 objectAtIndexedSubscript:0];
          v35 = v9;
          v13 = &v35;
          goto LABEL_112;
        }

        v16 = [v6 pdfs];
      }
    }

LABEL_109:
    v7 = v16;
    goto LABEL_114;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = [v6 iTunesStoreLinks];
      v15 = [v14 objectAtIndexedSubscript:a4];
      v41 = v15;
      v7 = [NSArray arrayWithObjects:&v41 count:1];

      goto LABEL_114;
    }

    if (a4)
    {
      goto LABEL_21;
    }

    v8 = [v6 mapsLinks];
    v9 = [v8 objectAtIndexedSubscript:0];
    v40 = v9;
    v13 = &v40;
    goto LABEL_112;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_114;
    }

    v7 = 0;
    if (a4 > 5)
    {
      if (a4 > 8)
      {
        if (a4 != 9)
        {
          if (a4 != 10)
          {
            if (a4 != 11)
            {
              goto LABEL_114;
            }

            v16 = [v6 textDocuments];
            goto LABEL_109;
          }

          v8 = [v6 textDocuments];
          v9 = [v8 objectAtIndexedSubscript:0];
          v42 = v9;
          v13 = &v42;
          goto LABEL_112;
        }

        v16 = [v6 voiceMemos];
      }

      else
      {
        if (a4 == 6)
        {
          v8 = [v6 passes];
          v9 = [v8 objectAtIndexedSubscript:0];
          v44 = v9;
          v13 = &v44;
          goto LABEL_112;
        }

        if (a4 != 7)
        {
          v8 = [v6 voiceMemos];
          v9 = [v8 objectAtIndexedSubscript:0];
          v43 = v9;
          v13 = &v43;
          goto LABEL_112;
        }

        v16 = [v6 passes];
      }
    }

    else
    {
      if (a4 <= 2)
      {
        if (a4)
        {
          if (a4 == 1)
          {
            v8 = [v6 contacts];
            v9 = [v8 objectAtIndexedSubscript:1];
            v47 = v9;
            v13 = &v47;
          }

          else
          {
            if (a4 != 2)
            {
              goto LABEL_114;
            }

            v8 = [v6 contacts];
            v9 = [v8 objectAtIndexedSubscript:2];
            v46 = v9;
            v13 = &v46;
          }
        }

        else
        {
          v8 = [v6 contacts];
          v9 = [v8 objectAtIndexedSubscript:0];
          v48 = v9;
          v13 = &v48;
        }

        goto LABEL_112;
      }

      if (a4 == 3)
      {
        v16 = [v6 contacts];
      }

      else
      {
        if (a4 == 4)
        {
          v8 = [v6 calendarEvents];
          v9 = [v8 objectAtIndexedSubscript:0];
          v45 = v9;
          v13 = &v45;
          goto LABEL_112;
        }

        v16 = [v6 calendarEvents];
      }
    }

    goto LABEL_109;
  }

  v7 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_114;
      }

      v16 = [v6 images];
      goto LABEL_109;
    }

    v8 = [v6 images];
    v9 = [v8 objectAtIndexedSubscript:0];
    v52 = v9;
    v13 = &v52;
    goto LABEL_112;
  }

  if (a4 == 2)
  {
    v8 = [v6 videos];
    v9 = [v8 objectAtIndexedSubscript:0];
    v51 = v9;
    v13 = &v51;
    goto LABEL_112;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      goto LABEL_114;
    }

    v8 = [v6 svgImages];
    v9 = [v8 objectAtIndexedSubscript:0];
    v49 = v9;
    v13 = &v49;
    goto LABEL_112;
  }

  v8 = [v6 images];
  v9 = [v8 objectAtIndexedSubscript:0];
  v50[0] = v9;
  v10 = [v6 images];
  v11 = [v10 objectAtIndexedSubscript:1];
  v50[1] = v11;
  v17 = [v6 videos];
  v18 = [v17 objectAtIndexedSubscript:0];
  v50[2] = v18;
  v7 = [NSArray arrayWithObjects:v50 count:3];

LABEL_97:
LABEL_113:

LABEL_114:

  return v7;
}

@end