@interface GKFriendPlayerInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKFriendPlayerInternal

- (void)updateWithCacheObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = GKFriendPlayerInternal;
  v4 = a3;
  [(GKFriendPlayerInternal *)&v8 updateWithCacheObject:v4];
  v5 = [v4 status];
  [(GKFriendPlayerInternal *)self setStatus:v5];

  v6 = [v4 lastPlayedDate];
  [(GKFriendPlayerInternal *)self setLastPlayedDate:v6];

  -[GKFriendPlayerInternal setChallengedTogether:](self, "setChallengedTogether:", [v4 challengedTogether]);
  v7 = [v4 lastChallengedDate];

  [(GKFriendPlayerInternal *)self setLastChallengedDate:v7];
}

@end