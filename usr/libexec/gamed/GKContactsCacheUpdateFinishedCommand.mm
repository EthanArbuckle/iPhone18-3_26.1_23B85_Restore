@interface GKContactsCacheUpdateFinishedCommand
- (GKContactsCacheUpdateFinishedCommand)initWithChangeHistoryToken:(id)token;
- (void)executeWithContext:(id)context;
@end

@implementation GKContactsCacheUpdateFinishedCommand

- (GKContactsCacheUpdateFinishedCommand)initWithChangeHistoryToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = GKContactsCacheUpdateFinishedCommand;
  v6 = [(GKContactsCacheUpdateFinishedCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeHistoryToken, token);
  }

  return v7;
}

- (void)executeWithContext:(id)context
{
  v6 = [GKCDContactInfoList _gkPrimaryListWithContext:context];
  changeHistoryToken = [(GKContactsCacheUpdateFinishedCommand *)self changeHistoryToken];
  [v6 setChangeHistoryToken:changeHistoryToken];

  v5 = [NSNumber numberWithShort:GKCDContactInfoListCurrentVersion];
  [v6 setVersion:v5];
}

@end