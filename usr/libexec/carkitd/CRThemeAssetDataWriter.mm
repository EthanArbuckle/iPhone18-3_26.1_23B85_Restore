@interface CRThemeAssetDataWriter
- (BOOL)saveAdditionsData:(id)a3;
- (BOOL)saveCertificateData:(id)a3 signatureData:(id)a4;
- (CRThemeAssetDataWriter)initWithAssetURL:(id)a3 version:(id)a4 chunkCount:(id)a5;
- (id)_assetArchiveURL;
@end

@implementation CRThemeAssetDataWriter

- (CRThemeAssetDataWriter)initWithAssetURL:(id)a3 version:(id)a4 chunkCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CRThemeAssetDataWriter;
  v12 = [(CRThemeAssetDataWriter *)&v19 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v12->_assetURL, a3);
  objc_storeStrong(&v13->_version, a4);
  v14 = [CRFileTransferDataWriter alloc];
  v15 = [(CRThemeAssetDataWriter *)v13 _assetArchiveURL];
  v16 = [(CRFileTransferDataWriter *)v14 initWithFileURL:v15 chunkCount:v11];

  if (v16)
  {
    assetArchiveWriter = v13->_assetArchiveWriter;
    v13->_assetArchiveWriter = v16;

LABEL_4:
    v16 = v13;
  }

  return v16;
}

- (id)_assetArchiveURL
{
  v2 = [(CRThemeAssetDataWriter *)self assetURL];
  v3 = [v2 URLByAppendingPathComponent:CARThemeAssetAccessoryFilename];

  return v3;
}

- (BOOL)saveCertificateData:(id)a3 signatureData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRThemeAssetDataWriter *)self assetURL];
  v9 = [v8 URLByAppendingPathComponent:CARThemeAssetCertificateFilename];

  v21 = 0;
  v10 = [v7 writeToURL:v9 options:0 error:&v21];

  v11 = v21;
  v12 = CarThemeAssetsLogging();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "saved certificate to %@", buf, 0xCu);
    }

    v14 = [(CRThemeAssetDataWriter *)self assetURL];
    v13 = [v14 URLByAppendingPathComponent:CARThemeAssetSignatureFilename];

    v20 = 0;
    v15 = [v6 writeToURL:v13 options:0 error:&v20];
    v16 = v20;
    v17 = CarThemeAssetsLogging();
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "saved signature to %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000854D8();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100085470();
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)saveAdditionsData:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDataWriter *)self assetURL];
  v6 = [v5 URLByAppendingPathComponent:CARThemeAssetAccessoryAdditionsFilename];

  v12 = 0;
  v7 = [v4 writeToURL:v6 options:0 error:&v12];

  v8 = v12;
  v9 = CarThemeAssetsLogging();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "saved accesory additions to %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100085540();
  }

  return v7;
}

@end