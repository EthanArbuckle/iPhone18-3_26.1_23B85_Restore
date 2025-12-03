@interface CEMLegacyRestrictionsAppsDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMLegacyRestrictionsAppsDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  assetProvidersByPayloadIdentifier = [context assetProvidersByPayloadIdentifier];
  v7 = [(CEMLegacyRestrictionsAppsDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v7;
}

@end