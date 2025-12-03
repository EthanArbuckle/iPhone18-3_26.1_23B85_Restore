@interface DMDConfigurationOrganization
+ (id)fetchRequestMatchingConfigurationOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestMatchingConfigurationOrganizationsOfType:(id)type;
- (void)didSave;
@end

@implementation DMDConfigurationOrganization

+ (id)fetchRequestMatchingConfigurationOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"identifier", identifierCopy];

  [fetchRequest setPredicate:identifierCopy];

  return fetchRequest;
}

+ (id)fetchRequestMatchingConfigurationOrganizationsOfType:(id)type
{
  typeCopy = type;
  fetchRequest = [self fetchRequest];
  typeCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"type", typeCopy];

  [fetchRequest setPredicate:typeCopy];

  return fetchRequest;
}

- (void)didSave
{
  if (([(DMDConfigurationOrganization *)self isInserted]& 1) != 0 || [(DMDConfigurationOrganization *)self isDeleted])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"DMDConfigurationOrganizationsDidChangeNotification" object:0];
  }

  v4.receiver = self;
  v4.super_class = DMDConfigurationOrganization;
  [(DMDConfigurationOrganization *)&v4 didSave];
}

@end