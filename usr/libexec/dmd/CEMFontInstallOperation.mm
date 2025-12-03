@interface CEMFontInstallOperation
- (CEMAssetBaseDescriptor)assetDescriptor;
- (CEMAssetBaseReference)assetReference;
- (CEMFontInstallOperation)initWithFontDeclaration:(id)declaration resolver:(id)resolver;
- (NSString)assetIdentifier;
- (void)assetResolutionDidSucceedWithAssetURL:(id)l;
- (void)assetResolutionFailedWithError:(id)error;
- (void)main;
@end

@implementation CEMFontInstallOperation

- (CEMFontInstallOperation)initWithFontDeclaration:(id)declaration resolver:(id)resolver
{
  declarationCopy = declaration;
  resolverCopy = resolver;
  v12.receiver = self;
  v12.super_class = CEMFontInstallOperation;
  v9 = [(CEMFontInstallOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fontDeclaration, declaration);
    objc_storeStrong(&v10->_resolver, resolver);
  }

  return v10;
}

- (void)main
{
  resolver = [(CEMFontInstallOperation *)self resolver];
  [resolver resolveAssetWithContext:self];
}

- (NSString)assetIdentifier
{
  fontDeclaration = [(CEMFontInstallOperation *)self fontDeclaration];
  declarationIdentifier = [fontDeclaration declarationIdentifier];
  fontDeclaration2 = [(CEMFontInstallOperation *)self fontDeclaration];
  declarationServerHash = [fontDeclaration2 declarationServerHash];
  v7 = [NSString stringWithFormat:@"%@-%@", declarationIdentifier, declarationServerHash];

  return v7;
}

- (CEMAssetBaseDescriptor)assetDescriptor
{
  fontDeclaration = [(CEMFontInstallOperation *)self fontDeclaration];
  payloadDescriptor = [fontDeclaration payloadDescriptor];

  return payloadDescriptor;
}

- (CEMAssetBaseReference)assetReference
{
  fontDeclaration = [(CEMFontInstallOperation *)self fontDeclaration];
  payloadReference = [fontDeclaration payloadReference];

  return payloadReference;
}

- (void)assetResolutionDidSucceedWithAssetURL:(id)l
{
  lCopy = l;
  if ([(CEMFontInstallOperation *)self isExecuting])
  {
    if (lCopy)
    {
      v5 = +[NSFileManager dmd_userFontDatabaseDirectoryURL];
      v6 = +[NSFileManager defaultManager];
      v18 = 0;
      v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
      v8 = v18;

      if (v7)
      {
        assetIdentifier = [(CEMFontInstallOperation *)self assetIdentifier];
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
          [v15 setFontURL:v12];
          [(CEMFontInstallOperation *)self endOperationWithResultObject:v15];
        }

        else
        {
          [(CEMFontInstallOperation *)self endOperationWithError:v14];
        }
      }

      else
      {
        [(CEMFontInstallOperation *)self endOperationWithError:v8];

        v14 = v8;
      }
    }

    else
    {
      v16 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10007BC58(v16);
      }

      v14 = DMFErrorWithCodeAndUserInfo();
      [(CEMFontInstallOperation *)self endOperationWithError:v14];
    }
  }
}

- (void)assetResolutionFailedWithError:(id)error
{
  errorCopy = error;
  if ([(CEMFontInstallOperation *)self isExecuting])
  {
    [(CEMFontInstallOperation *)self endOperationWithError:errorCopy];
  }
}

@end