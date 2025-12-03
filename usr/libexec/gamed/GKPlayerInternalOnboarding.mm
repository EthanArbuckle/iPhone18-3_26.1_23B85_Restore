@interface GKPlayerInternalOnboarding
- (id)initWithPlayerID:(id)d;
@end

@implementation GKPlayerInternalOnboarding

- (id)initWithPlayerID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = GKPlayerInternalOnboarding;
  v5 = [(GKPlayerInternalOnboarding *)&v14 init];
  if (v5)
  {
    v6 = [GKAccountServicePrivate lastWelcomeWhatsNewCopyVersionDisplayedForPlayerID:dCopy];
    v7 = [GKAccountServicePrivate lastPrivacyNoticeVersionDisplayedForPlayerID:dCopy];
    v8 = [GKAccountServicePrivate lastPersonalizationVersionDisplayedForPlayerID:dCopy];
    v9 = [GKAccountServicePrivate lastProfilePrivacyVersionDisplayedForPlayerID:dCopy];
    v10 = [GKAccountServicePrivate lastFriendSuggestionsVersionDisplayedForPlayerID:dCopy];
    v11 = [GKAccountServicePrivate lastContactsIntegrationConsentVersionDisplayedForPlayerID:dCopy];
    v12 = [[GKPlayerInternalOnboarding alloc] initWithLastWelcomeWhatsNewCopyVersionDisplayed:v6 lastPrivacyNoticeVersionDisplayed:v7 lastPersonalizationVersionDisplayed:v8 lastProfilePrivacyVersionDisplayed:v9 lastFriendSuggestionsVersionDisplayed:v10 lastContactsIntegrationConsentVersionDisplayed:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end