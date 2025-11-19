@interface CEMImageDeclaration
- (id)dmf_installAssetOperationWithReferenceResolver:(id)a3 error:(id *)a4;
- (id)dmf_removeAssetOperationWithInstallMetadata:(id)a3 error:(id *)a4;
@end

@implementation CEMImageDeclaration

- (id)dmf_installAssetOperationWithReferenceResolver:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CEMImageInstallOperation alloc] initWithImageDeclaration:self resolver:v5];

  return v6;
}

- (id)dmf_removeAssetOperationWithInstallMetadata:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CEMImageRemoveOperation alloc] initWithImageDeclaration:self installMetadata:v5];

  return v6;
}

@end