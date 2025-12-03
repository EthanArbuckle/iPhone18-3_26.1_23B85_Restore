@interface CEMImageRemoveOperation
- (CEMImageRemoveOperation)initWithImageDeclaration:(id)declaration installMetadata:(id)metadata;
- (void)main;
@end

@implementation CEMImageRemoveOperation

- (CEMImageRemoveOperation)initWithImageDeclaration:(id)declaration installMetadata:(id)metadata
{
  declarationCopy = declaration;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = CEMImageRemoveOperation;
  v9 = [(CEMImageRemoveOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageDeclaration, declaration);
    objc_storeStrong(&v10->_installMetadata, metadata);
  }

  return v10;
}

- (void)main
{
  installMetadata = [(CEMImageRemoveOperation *)self installMetadata];
  imageURL = [installMetadata imageURL];

  v5 = +[NSFileManager defaultManager];
  path = [imageURL path];
  v7 = [v5 fileExistsAtPath:path];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v10 = 0;
  v8 = [v5 removeItemAtURL:imageURL error:&v10];
  v9 = v10;
  if (v8)
  {
LABEL_5:
    [(CEMImageRemoveOperation *)self endOperationWithResultObject:0];
    goto LABEL_6;
  }

  [(CEMImageRemoveOperation *)self endOperationWithError:v9];
LABEL_6:
}

@end