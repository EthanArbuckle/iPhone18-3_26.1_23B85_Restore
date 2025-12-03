@interface CEMSystemKeyboardDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMSystemKeyboardDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  assetProvidersByPayloadIdentifier = [context assetProvidersByPayloadIdentifier];
  v7 = [(CEMSystemKeyboardDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v7;
}

@end