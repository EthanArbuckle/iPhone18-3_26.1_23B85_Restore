@interface GKLocalPlayerInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKLocalPlayerInternal

- (void)updateWithCacheObject:(id)object
{
  v9.receiver = self;
  v9.super_class = GKLocalPlayerInternal;
  objectCopy = object;
  [(GKLocalPlayerInternal *)&v9 updateWithCacheObject:objectCopy];
  -[GKLocalPlayerInternal setUnderage:](self, "setUnderage:", [objectCopy isUnderage]);
  -[GKLocalPlayerInternal setPurpleBuddyAccount:](self, "setPurpleBuddyAccount:", [objectCopy purpleBuddyAccount]);
  -[GKLocalPlayerInternal setDefaultNickname:](self, "setDefaultNickname:", [objectCopy defaultNickname]);
  -[GKLocalPlayerInternal setDefaultPrivacyVisibility:](self, "setDefaultPrivacyVisibility:", [objectCopy defaultPrivacyVisibility]);
  -[GKLocalPlayerInternal setDefaultContactsIntegrationConsent:](self, "setDefaultContactsIntegrationConsent:", [objectCopy defaultContactsIntegrationConsent]);
  -[GKLocalPlayerInternal setFindable:](self, "setFindable:", [objectCopy isFindable]);
  friendRequestList = [objectCopy friendRequestList];
  entries = [friendRequestList entries];
  -[GKLocalPlayerInternal setNumberOfRequests:](self, "setNumberOfRequests:", [entries count]);

  challengeList = [objectCopy challengeList];
  entries2 = [challengeList entries];
  -[GKLocalPlayerInternal setNumberOfChallenges:](self, "setNumberOfChallenges:", [entries2 count]);

  LOWORD(challengeList) = [objectCopy numberOfTurns];
  [(GKLocalPlayerInternal *)self setNumberOfTurns:challengeList];
}

@end