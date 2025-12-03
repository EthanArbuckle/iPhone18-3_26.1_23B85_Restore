@interface GKResource
+ (GKResource)resourceWithID:(id)d representedItem:(id)item TTL:(double)l;
+ (id)resourceForPlayer:(id)player TTL:(double)l;
+ (id)resourceForRemoveGames:(id)games;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (GKResource)init;
- (GKResource)initWithResourceID:(id)d representedItem:(id)item TTL:(double)l;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation GKResource

+ (id)resourceForRemoveGames:(id)games
{
  v3 = [(GKResource *)GKMutableResource resourceWithID:games representedItem:games];

  return v3;
}

+ (GKResource)resourceWithID:(id)d representedItem:(id)item TTL:(double)l
{
  itemCopy = item;
  dCopy = d;
  v9 = [objc_alloc(objc_opt_class()) initWithResourceID:dCopy representedItem:itemCopy TTL:l];

  return v9;
}

- (GKResource)initWithResourceID:(id)d representedItem:(id)item TTL:(double)l
{
  dCopy = d;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = GKResource;
  v10 = [(GKResource *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copyWithZone:0];
    resourceID = v10->_resourceID;
    v10->_resourceID = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    metadataLookup = v10->_metadataLookup;
    v10->_metadataLookup = v13;

    v10->_TTL = l;
    [(GKResource *)v10 setRepresentedItem:itemCopy];
  }

  return v10;
}

- (GKResource)init
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"Can't use init on GKDataResource. Use resourceWithID: instead." userInfo:0];
  objc_exception_throw(v2);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(GKResource *)[GKMutableResource alloc] initWithResourceID:self->_resourceID representedItem:self->_representedItem TTL:self->_TTL];
  v5 = v4;
  if (v4)
  {
    v4->super._invalid = self->_invalid;
    v6 = [(NSMutableDictionary *)self->_metadataLookup copy];
    [(GKResource *)v5 setMetadataLookup:v6];
  }

  return v5;
}

- (id)description
{
  if (qword_1003B9218 != -1)
  {
    sub_10028F778();
  }

  v10.receiver = self;
  v10.super_class = GKResource;
  v3 = [(GKResource *)&v10 description];
  resourceID = self->_resourceID;
  v5 = qword_1003B9210;
  v6 = [NSDate dateWithTimeIntervalSince1970:self->_TTL];
  v7 = [v5 stringFromDate:v6];
  v8 = [NSString stringWithFormat:@"%@ ID: %@ TTL: %@\nitem: %@", v3, resourceID, v7, self->_representedItem];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resourceID = self->_resourceID;
    resourceID = [equalCopy resourceID];
    v7 = [resourceID isEqual:resourceID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isExpired
{
  if ([(GKResource *)self isInvalid])
  {
    return 1;
  }

  v4 = [NSDate dateWithTimeIntervalSince1970:self->_TTL];
  [v4 timeIntervalSinceNow];
  v3 = v5 <= 0.0;

  return v3;
}

+ (id)resourceForPlayer:(id)player TTL:(double)l
{
  playerCopy = player;
  v6 = objc_opt_class();
  playerID = [playerCopy playerID];
  v8 = [v6 resourceWithID:playerID representedItem:playerCopy TTL:l];

  return v8;
}

@end