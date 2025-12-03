@interface CEMEventSubscriptionDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
- (id)dmf_removeRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMEventSubscriptionDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v6 setOrganizationIdentifier:organizationIdentifier];
  [v6 setSubscriptionDeclaration:self];

  return v6;
}

- (id)dmf_removeRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v6 setOrganizationIdentifier:organizationIdentifier];
  [v6 setSubscriptionDeclaration:self];

  return v6;
}

@end