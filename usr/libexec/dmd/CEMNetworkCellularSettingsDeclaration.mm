@interface CEMNetworkCellularSettingsDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMNetworkCellularSettingsDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  assetProvidersByPayloadIdentifier = [context assetProvidersByPayloadIdentifier];
  v7 = [(CEMNetworkCellularSettingsDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v7;
}

@end