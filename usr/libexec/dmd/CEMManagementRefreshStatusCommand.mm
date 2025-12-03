@interface CEMManagementRefreshStatusCommand
- (id)dmf_executeOperationWithContext:(id)context error:(id *)error;
@end

@implementation CEMManagementRefreshStatusCommand

- (id)dmf_executeOperationWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v5 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v5 setOrganizationIdentifier:organizationIdentifier];

  return v5;
}

@end