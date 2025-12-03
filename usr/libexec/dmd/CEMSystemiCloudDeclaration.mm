@interface CEMSystemiCloudDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMSystemiCloudDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  assetProvidersByPayloadIdentifier = [context assetProvidersByPayloadIdentifier];
  v7 = [(CEMSystemiCloudDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v7;
}

@end