@interface CEMFontDeclaration
- (id)dmf_installAssetOperationWithReferenceResolver:(id)resolver error:(id *)error;
- (id)dmf_removeAssetOperationWithInstallMetadata:(id)metadata error:(id *)error;
@end

@implementation CEMFontDeclaration

- (id)dmf_installAssetOperationWithReferenceResolver:(id)resolver error:(id *)error
{
  resolverCopy = resolver;
  v6 = [[CEMFontInstallOperation alloc] initWithFontDeclaration:self resolver:resolverCopy];

  return v6;
}

- (id)dmf_removeAssetOperationWithInstallMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v6 = [[CEMFontRemoveOperation alloc] initWithFontDeclaration:self installMetadata:metadataCopy];

  return v6;
}

@end