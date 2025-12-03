@interface CRThemeAssetDataWriter
- (BOOL)saveAdditionsData:(id)data;
- (BOOL)saveCertificateData:(id)data signatureData:(id)signatureData;
- (CRThemeAssetDataWriter)initWithAssetURL:(id)l version:(id)version chunkCount:(id)count;
- (id)_assetArchiveURL;
@end

@implementation CRThemeAssetDataWriter

- (CRThemeAssetDataWriter)initWithAssetURL:(id)l version:(id)version chunkCount:(id)count
{
  lCopy = l;
  versionCopy = version;
  countCopy = count;
  v19.receiver = self;
  v19.super_class = CRThemeAssetDataWriter;
  v12 = [(CRThemeAssetDataWriter *)&v19 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v12->_assetURL, l);
  objc_storeStrong(&v13->_version, version);
  v14 = [CRFileTransferDataWriter alloc];
  _assetArchiveURL = [(CRThemeAssetDataWriter *)v13 _assetArchiveURL];
  v16 = [(CRFileTransferDataWriter *)v14 initWithFileURL:_assetArchiveURL chunkCount:countCopy];

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
  assetURL = [(CRThemeAssetDataWriter *)self assetURL];
  v3 = [assetURL URLByAppendingPathComponent:CARThemeAssetAccessoryFilename];

  return v3;
}

- (BOOL)saveCertificateData:(id)data signatureData:(id)signatureData
{
  signatureDataCopy = signatureData;
  dataCopy = data;
  assetURL = [(CRThemeAssetDataWriter *)self assetURL];
  v9 = [assetURL URLByAppendingPathComponent:CARThemeAssetCertificateFilename];

  v21 = 0;
  v10 = [dataCopy writeToURL:v9 options:0 error:&v21];

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

    assetURL2 = [(CRThemeAssetDataWriter *)self assetURL];
    v13 = [assetURL2 URLByAppendingPathComponent:CARThemeAssetSignatureFilename];

    v20 = 0;
    v15 = [signatureDataCopy writeToURL:v13 options:0 error:&v20];
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

- (BOOL)saveAdditionsData:(id)data
{
  dataCopy = data;
  assetURL = [(CRThemeAssetDataWriter *)self assetURL];
  v6 = [assetURL URLByAppendingPathComponent:CARThemeAssetAccessoryAdditionsFilename];

  v12 = 0;
  v7 = [dataCopy writeToURL:v6 options:0 error:&v12];

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