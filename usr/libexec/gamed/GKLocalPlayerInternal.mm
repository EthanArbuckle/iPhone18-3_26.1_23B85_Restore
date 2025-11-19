@interface GKLocalPlayerInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKLocalPlayerInternal

- (void)updateWithCacheObject:(id)a3
{
  v9.receiver = self;
  v9.super_class = GKLocalPlayerInternal;
  v4 = a3;
  [(GKLocalPlayerInternal *)&v9 updateWithCacheObject:v4];
  -[GKLocalPlayerInternal setUnderage:](self, "setUnderage:", [v4 isUnderage]);
  -[GKLocalPlayerInternal setPurpleBuddyAccount:](self, "setPurpleBuddyAccount:", [v4 purpleBuddyAccount]);
  -[GKLocalPlayerInternal setDefaultNickname:](self, "setDefaultNickname:", [v4 defaultNickname]);
  -[GKLocalPlayerInternal setDefaultPrivacyVisibility:](self, "setDefaultPrivacyVisibility:", [v4 defaultPrivacyVisibility]);
  -[GKLocalPlayerInternal setDefaultContactsIntegrationConsent:](self, "setDefaultContactsIntegrationConsent:", [v4 defaultContactsIntegrationConsent]);
  -[GKLocalPlayerInternal setFindable:](self, "setFindable:", [v4 isFindable]);
  v5 = [v4 friendRequestList];
  v6 = [v5 entries];
  -[GKLocalPlayerInternal setNumberOfRequests:](self, "setNumberOfRequests:", [v6 count]);

  v7 = [v4 challengeList];
  v8 = [v7 entries];
  -[GKLocalPlayerInternal setNumberOfChallenges:](self, "setNumberOfChallenges:", [v8 count]);

  LOWORD(v7) = [v4 numberOfTurns];
  [(GKLocalPlayerInternal *)self setNumberOfTurns:v7];
}

@end