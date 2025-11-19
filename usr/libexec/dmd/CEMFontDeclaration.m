@interface CEMFontDeclaration
- (id)dmf_installAssetOperationWithReferenceResolver:(id)a3 error:(id *)a4;
- (id)dmf_removeAssetOperationWithInstallMetadata:(id)a3 error:(id *)a4;
@end

@implementation CEMFontDeclaration

- (id)dmf_installAssetOperationWithReferenceResolver:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CEMFontInstallOperation alloc] initWithFontDeclaration:self resolver:v5];

  return v6;
}

- (id)dmf_removeAssetOperationWithInstallMetadata:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CEMFontRemoveOperation alloc] initWithFontDeclaration:self installMetadata:v5];

  return v6;
}

@end