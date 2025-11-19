@interface CEMApplicationStoreDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMApplicationStoreDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = [a3 assetProvidersByPayloadIdentifier];
  v7 = [(CEMApplicationStoreDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:v6 error:a4];

  return v7;
}

@end