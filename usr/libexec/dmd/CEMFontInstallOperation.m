@interface CEMFontInstallOperation
- (CEMAssetBaseDescriptor)assetDescriptor;
- (CEMAssetBaseReference)assetReference;
- (CEMFontInstallOperation)initWithFontDeclaration:(id)a3 resolver:(id)a4;
- (NSString)assetIdentifier;
- (void)assetResolutionDidSucceedWithAssetURL:(id)a3;
- (void)assetResolutionFailedWithError:(id)a3;
- (void)main;
@end

@implementation CEMFontInstallOperation

- (CEMFontInstallOperation)initWithFontDeclaration:(id)a3 resolver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CEMFontInstallOperation;
  v9 = [(CEMFontInstallOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fontDeclaration, a3);
    objc_storeStrong(&v10->_resolver, a4);
  }

  return v10;
}

- (void)main
{
  v3 = [(CEMFontInstallOperation *)self resolver];
  [v3 resolveAssetWithContext:self];
}

- (NSString)assetIdentifier
{
  v3 = [(CEMFontInstallOperation *)self fontDeclaration];
  v4 = [v3 declarationIdentifier];
  v5 = [(CEMFontInstallOperation *)self fontDeclaration];
  v6 = [v5 declarationServerHash];
  v7 = [NSString stringWithFormat:@"%@-%@", v4, v6];

  return v7;
}

- (CEMAssetBaseDescriptor)assetDescriptor
{
  v2 = [(CEMFontInstallOperation *)self fontDeclaration];
  v3 = [v2 payloadDescriptor];

  return v3;
}

- (CEMAssetBaseReference)assetReference
{
  v2 = [(CEMFontInstallOperation *)self fontDeclaration];
  v3 = [v2 payloadReference];

  return v3;
}

- (void)assetResolutionDidSucceedWithAssetURL:(id)a3
{
  v4 = a3;
  if ([(CEMFontInstallOperation *)self isExecuting])
  {
    if (v4)
    {
      v5 = +[NSFileManager dmd_userFontDatabaseDirectoryURL];
      v6 = +[NSFileManager defaultManager];
      v18 = 0;
      v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
      v8 = v18;

      if (v7)
      {
        v9 = [(CEMFontInstallOperation *)self assetIdentifier];
        v10 = +[NSUUID UUID];
        v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];
        v12 = [v5 URLByAppendingPathComponent:v11];

        v13 = +[NSFileManager defaultManager];
        v17 = v8;
        LOBYTE(v11) = [v13 copyItemAtURL:v4 toURL:v12 error:&v17];
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

- (void)assetResolutionFailedWithError:(id)a3
{
  v4 = a3;
  if ([(CEMFontInstallOperation *)self isExecuting])
  {
    [(CEMFontInstallOperation *)self endOperationWithError:v4];
  }
}

@end