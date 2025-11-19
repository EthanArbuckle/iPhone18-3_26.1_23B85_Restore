@interface DMDConfigurationOrganization
+ (id)fetchRequestMatchingConfigurationOrganizationWithIdentifier:(id)a3;
+ (id)fetchRequestMatchingConfigurationOrganizationsOfType:(id)a3;
- (void)didSave;
@end

@implementation DMDConfigurationOrganization

+ (id)fetchRequestMatchingConfigurationOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"identifier", v4];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchRequestMatchingConfigurationOrganizationsOfType:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"type", v4];

  [v5 setPredicate:v6];

  return v5;
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