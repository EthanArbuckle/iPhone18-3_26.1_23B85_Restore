@interface GKPlayerToInviteCacheObject
- (id)internalRepresentation;
@end

@implementation GKPlayerToInviteCacheObject

- (id)internalRepresentation
{
  managedObjectContext = [(GKPlayerToInviteCacheObject *)self managedObjectContext];
  playerID = [(GKPlayerToInviteCacheObject *)self playerID];
  v5 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:playerID inManagedObjectContext:managedObjectContext];

  v6 = [GKPlayerInternal internalRepresentationForCacheObject:v5];

  return v6;
}

@end