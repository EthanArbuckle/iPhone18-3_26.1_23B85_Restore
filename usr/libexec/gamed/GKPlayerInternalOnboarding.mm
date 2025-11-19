@interface GKPlayerInternalOnboarding
- (id)initWithPlayerID:(id)a3;
@end

@implementation GKPlayerInternalOnboarding

- (id)initWithPlayerID:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKPlayerInternalOnboarding;
  v5 = [(GKPlayerInternalOnboarding *)&v14 init];
  if (v5)
  {
    v6 = [GKAccountServicePrivate lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:v4];
    v7 = [GKAccountServicePrivate lastPrivacyNoticeVersionDisplayedForPlayerID:v4];
    v8 = [GKAccountServicePrivate lastPersonalizationVersionDisplayedForPlayerID:v4];
    v9 = [GKAccountServicePrivate lastProfilePrivacyVersionDisplayedForPlayerID:v4];
    v10 = [GKAccountServicePrivate lastFriendSuggestionsVersionDisplayedForPlayerID:v4];
    v11 = [GKAccountServicePrivate lastContactsIntegrationConsentVersionDisplayedForPlayerID:v4];
    v12 = [[GKPlayerInternalOnboarding alloc] initWithLastWelcomeWhatsNewCopyVersionDisplayed:v6 lastPrivacyNoticeVersionDisplayed:v7 lastPersonalizationVersionDisplayed:v8 lastProfilePrivacyVersionDisplayed:v9 lastFriendSuggestionsVersionDisplayed:v10 lastContactsIntegrationConsentVersionDisplayed:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end