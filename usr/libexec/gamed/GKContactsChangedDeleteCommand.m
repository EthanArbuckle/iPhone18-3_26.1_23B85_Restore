@interface GKContactsChangedDeleteCommand
- (GKContactsChangedDeleteCommand)initWithContactID:(id)a3;
- (id)executeWithContext:(id)a3;
@end

@implementation GKContactsChangedDeleteCommand

- (GKContactsChangedDeleteCommand)initWithContactID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKContactsChangedDeleteCommand;
  v6 = [(GKContactsChangedDeleteCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactID, a3);
  }

  return v7;
}

- (id)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsChangedDeleteCommand *)self contactID];
  [GKCDContactInfo _gkDeleteObjectsWithContactIdentifier:v5 withContext:v4];

  return 0;
}

@end