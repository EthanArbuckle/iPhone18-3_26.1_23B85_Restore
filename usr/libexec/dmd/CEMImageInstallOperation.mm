@interface CEMImageInstallOperation
- (CEMAssetBaseDescriptor)assetDescriptor;
- (CEMAssetBaseReference)assetReference;
- (CEMImageInstallOperation)initWithImageDeclaration:(id)declaration resolver:(id)resolver;
- (NSString)assetIdentifier;
- (void)assetResolutionDidSucceedWithAssetURL:(id)l;
- (void)assetResolutionFailedWithError:(id)error;
- (void)main;
@end

@implementation CEMImageInstallOperation

- (CEMImageInstallOperation)initWithImageDeclaration:(id)declaration resolver:(id)resolver
{
  declarationCopy = declaration;
  resolverCopy = resolver;
  v12.receiver = self;
  v12.super_class = CEMImageInstallOperation;
  v9 = [(CEMImageInstallOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageDeclaration, declaration);
    objc_storeStrong(&v10->_resolver, resolver);
  }

  return v10;
}

- (void)main
{
  resolver = [(CEMImageInstallOperation *)self resolver];
  [resolver resolveAssetWithContext:self];
}

- (NSString)assetIdentifier
{
  imageDeclaration = [(CEMImageInstallOperation *)self imageDeclaration];
  declarationIdentifier = [imageDeclaration declarationIdentifier];
  imageDeclaration2 = [(CEMImageInstallOperation *)self imageDeclaration];
  declarationServerHash = [imageDeclaration2 declarationServerHash];
  v7 = [NSString stringWithFormat:@"%@-%@", declarationIdentifier, declarationServerHash];

  return v7;
}

- (CEMAssetBaseDescriptor)assetDescriptor
{
  imageDeclaration = [(CEMImageInstallOperation *)self imageDeclaration];
  payloadDescriptor = [imageDeclaration payloadDescriptor];

  return payloadDescriptor;
}

- (CEMAssetBaseReference)assetReference
{
  imageDeclaration = [(CEMImageInstallOperation *)self imageDeclaration];
  payloadReference = [imageDeclaration payloadReference];

  return payloadReference;
}

- (void)assetResolutionDidSucceedWithAssetURL:(id)l
{
  lCopy = l;
  if ([(CEMImageInstallOperation *)self isExecuting])
  {
    if (lCopy)
    {
      v5 = +[NSFileManager dmd_userImageDatabaseDirectoryURL];
      v6 = +[NSFileManager defaultManager];
      v18 = 0;
      v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
      v8 = v18;

      if (v7)
      {
        assetIdentifier = [(CEMImageInstallOperation *)self assetIdentifier];
        v10 = +[NSUUID UUID];
        v11 = [NSString stringWithFormat:@"%@-%@", assetIdentifier, v10];
        v12 = [v5 URLByAppendingPathComponent:v11];

        v13 = +[NSFileManager defaultManager];
        v17 = v8;
        LOBYTE(v11) = [v13 copyItemAtURL:lCopy toURL:v12 error:&v17];
        v14 = v17;

        if (v11)
        {
          v15 = objc_opt_new();
          [v15 setImageURL:v12];
          [(CEMImageInstallOperation *)self endOperationWithResultObject:v15];
        }

        else
        {
          [(CEMImageInstallOperation *)self endOperationWithError:v14];
        }
      }

      else
      {
        [(CEMImageInstallOperation *)self endOperationWithError:v8];

        v14 = v8;
      }
    }

    else
    {
      v16 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10007BC9C(v16);
      }

      v14 = DMFErrorWithCodeAndUserInfo();
      [(CEMImageInstallOperation *)self endOperationWithError:v14];
    }
  }
}

- (void)assetResolutionFailedWithError:(id)error
{
  errorCopy = error;
  if ([(CEMImageInstallOperation *)self isExecuting])
  {
    [(CEMImageInstallOperation *)self endOperationWithError:errorCopy];
  }
}

@end