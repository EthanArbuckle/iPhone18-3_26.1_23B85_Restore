@interface GKFriendPlayerInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKFriendPlayerInternal

- (void)updateWithCacheObject:(id)object
{
  v8.receiver = self;
  v8.super_class = GKFriendPlayerInternal;
  objectCopy = object;
  [(GKFriendPlayerInternal *)&v8 updateWithCacheObject:objectCopy];
  status = [objectCopy status];
  [(GKFriendPlayerInternal *)self setStatus:status];

  lastPlayedDate = [objectCopy lastPlayedDate];
  [(GKFriendPlayerInternal *)self setLastPlayedDate:lastPlayedDate];

  -[GKFriendPlayerInternal setChallengedTogether:](self, "setChallengedTogether:", [objectCopy challengedTogether]);
  lastChallengedDate = [objectCopy lastChallengedDate];

  [(GKFriendPlayerInternal *)self setLastChallengedDate:lastChallengedDate];
}

@end