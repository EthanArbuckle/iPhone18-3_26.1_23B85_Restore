@interface CEMEventSubscriptionDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMEventSubscriptionDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 organizationIdentifier];

  [v6 setOrganizationIdentifier:v7];
  [v6 setSubscriptionDeclaration:self];

  return v6;
}

- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 organizationIdentifier];

  [v6 setOrganizationIdentifier:v7];
  [v6 setSubscriptionDeclaration:self];

  return v6;
}

@end