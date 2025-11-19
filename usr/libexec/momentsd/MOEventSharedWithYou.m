@interface MOEventSharedWithYou
- (MOEventSharedWithYou)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventSharedWithYou

- (void)encodeWithCoder:(id)a3
{
  itemURL = self->_itemURL;
  v5 = a3;
  [v5 encodeObject:itemURL forKey:@"itemURL"];
  [v5 encodeObject:self->_itemSenders forKey:@"itemSenders"];
  [v5 encodeObject:self->_itemRecipients forKey:@"itemRecipients"];
  [v5 encodeBool:self->_itemIsPinned forKey:@"itemIsPinned"];
  [v5 encodeBool:self->_itemShareDirection != 0 forKey:@"itemShareDirection"];
  [v5 encodeInteger:self->_itemSyndicationStatus forKey:@"itemSyndicationStatus"];
  [v5 encodeObject:self->_itemAttributionsCount forKey:@"itemAttributionsCount"];
}

- (MOEventSharedWithYou)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MOEventSharedWithYou;
  v5 = [(MOEventSharedWithYou *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemURL"];
    itemURL = v5->_itemURL;
    v5->_itemURL = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSenders"];
    itemSenders = v5->_itemSenders;
    v5->_itemSenders = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemRecipients"];
    itemRecipients = v5->_itemRecipients;
    v5->_itemRecipients = v10;

    v5->_itemIsPinned = [v4 decodeBoolForKey:@"itemIsPinned"];
    v5->_itemShareDirection = [v4 decodeBoolForKey:@"itemShareDirection"];
    v5->_itemSyndicationStatus = [v4 decodeIntegerForKey:@"itemSyndicationStatus"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemAttributionsCount"];
    itemAttributionsCount = v5->_itemAttributionsCount;
    v5->_itemAttributionsCount = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventSharedWithYou);
  objc_storeStrong(&v4->_itemURL, self->_itemURL);
  objc_storeStrong(&v4->_itemSenders, self->_itemSenders);
  objc_storeStrong(&v4->_itemRecipients, self->_itemRecipients);
  v4->_itemIsPinned = self->_itemIsPinned;
  v4->_itemShareDirection = self->_itemShareDirection;
  v4->_itemSyndicationStatus = self->_itemSyndicationStatus;
  objc_storeStrong(&v4->_itemAttributionsCount, self->_itemAttributionsCount);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSURL *)self->_itemURL absoluteString];
  v5 = [v4 mask];
  v6 = v5;
  if (self->_itemIsPinned)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  itemShareDirection = self->_itemShareDirection;
  v9 = [v3 initWithFormat:@"itemURL, %@, itemIsPinned, %@, itemShareDirection, %lu, itemAttributionsCount, %@", v5, v7, itemShareDirection, self->_itemAttributionsCount];

  return v9;
}

@end