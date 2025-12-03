@interface CEMImageDeclaration
- (id)dmf_installAssetOperationWithReferenceResolver:(id)resolver error:(id *)error;
- (id)dmf_removeAssetOperationWithInstallMetadata:(id)metadata error:(id *)error;
@end

@implementation CEMImageDeclaration

- (id)dmf_installAssetOperationWithReferenceResolver:(id)resolver error:(id *)error
{
  resolverCopy = resolver;
  v6 = [[CEMImageInstallOperation alloc] initWithImageDeclaration:self resolver:resolverCopy];

  return v6;
}

- (id)dmf_removeAssetOperationWithInstallMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v6 = [[CEMImageRemoveOperation alloc] initWithImageDeclaration:self installMetadata:metadataCopy];

  return v6;
}

@end