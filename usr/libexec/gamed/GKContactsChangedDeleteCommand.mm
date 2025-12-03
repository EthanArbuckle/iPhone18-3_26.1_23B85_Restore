@interface GKContactsChangedDeleteCommand
- (GKContactsChangedDeleteCommand)initWithContactID:(id)d;
- (id)executeWithContext:(id)context;
@end

@implementation GKContactsChangedDeleteCommand

- (GKContactsChangedDeleteCommand)initWithContactID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = GKContactsChangedDeleteCommand;
  v6 = [(GKContactsChangedDeleteCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactID, d);
  }

  return v7;
}

- (id)executeWithContext:(id)context
{
  contextCopy = context;
  contactID = [(GKContactsChangedDeleteCommand *)self contactID];
  [GKCDContactInfo _gkDeleteObjectsWithContactIdentifier:contactID withContext:contextCopy];

  return 0;
}

@end