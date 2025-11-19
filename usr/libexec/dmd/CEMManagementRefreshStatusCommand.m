@interface CEMManagementRefreshStatusCommand
- (id)dmf_executeOperationWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMManagementRefreshStatusCommand

- (id)dmf_executeOperationWithContext:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 organizationIdentifier];

  [v5 setOrganizationIdentifier:v6];

  return v5;
}

@end