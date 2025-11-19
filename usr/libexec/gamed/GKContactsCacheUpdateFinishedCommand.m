@interface GKContactsCacheUpdateFinishedCommand
- (GKContactsCacheUpdateFinishedCommand)initWithChangeHistoryToken:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation GKContactsCacheUpdateFinishedCommand

- (GKContactsCacheUpdateFinishedCommand)initWithChangeHistoryToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKContactsCacheUpdateFinishedCommand;
  v6 = [(GKContactsCacheUpdateFinishedCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeHistoryToken, a3);
  }

  return v7;
}

- (void)executeWithContext:(id)a3
{
  v6 = [GKCDContactInfoList _gkPrimaryListWithContext:a3];
  v4 = [(GKContactsCacheUpdateFinishedCommand *)self changeHistoryToken];
  [v6 setChangeHistoryToken:v4];

  v5 = [NSNumber numberWithShort:GKCDContactInfoListCurrentVersion];
  [v6 setVersion:v5];
}

@end