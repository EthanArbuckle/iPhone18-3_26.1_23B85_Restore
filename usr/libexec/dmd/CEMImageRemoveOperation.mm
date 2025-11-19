@interface CEMImageRemoveOperation
- (CEMImageRemoveOperation)initWithImageDeclaration:(id)a3 installMetadata:(id)a4;
- (void)main;
@end

@implementation CEMImageRemoveOperation

- (CEMImageRemoveOperation)initWithImageDeclaration:(id)a3 installMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CEMImageRemoveOperation;
  v9 = [(CEMImageRemoveOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageDeclaration, a3);
    objc_storeStrong(&v10->_installMetadata, a4);
  }

  return v10;
}

- (void)main
{
  v3 = [(CEMImageRemoveOperation *)self installMetadata];
  v4 = [v3 imageURL];

  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v10 = 0;
  v8 = [v5 removeItemAtURL:v4 error:&v10];
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