@interface FMDStandardAsset
- (FMDStandardAsset)initWithCoder:(id)a3;
- (FMDStandardAsset)initWithFileURL:(id)a3 lastModified:(id)a4 etag:(id)a5 type:(unint64_t)a6 url:(id)a7;
- (NSData)data;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDStandardAsset

- (FMDStandardAsset)initWithFileURL:(id)a3 lastModified:(id)a4 etag:(id)a5 type:(unint64_t)a6 url:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = FMDStandardAsset;
  v16 = [(FMDStandardAsset *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(FMDStandardAsset *)v16 setFileURL:v12];
    [(FMDStandardAsset *)v17 setLastModified:v13];
    [(FMDStandardAsset *)v17 setEtag:v14];
    [(FMDStandardAsset *)v17 setUrl:v15];
    [(FMDStandardAsset *)v17 setAssetType:a6];
  }

  return v17;
}

- (NSData)data
{
  v3 = self->_data;
  if (!v3)
  {
    v4 = [NSData alloc];
    v5 = [(FMDStandardAsset *)self fileURL];
    v9 = 0;
    v3 = [v4 initWithContentsOfURL:v5 options:0 error:&v9];
    v6 = v9;

    if (v6 && ([v6 fm_isFileNotFoundError] & 1) == 0)
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10022C29C(self, v6, v7);
      }
    }
  }

  return v3;
}

- (FMDStandardAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMDStandardAsset;
  v5 = [(FMDStandardAsset *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("lastModified");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDStandardAsset *)v5 setLastModified:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("etag");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDStandardAsset *)v5 setEtag:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("url");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDStandardAsset *)v5 setUrl:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("fileURL");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDStandardAsset *)v5 setFileURL:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDStandardAsset *)self lastModified];
  v6 = NSStringFromSelector("lastModified");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDStandardAsset *)self etag];
  v8 = NSStringFromSelector("etag");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDStandardAsset *)self url];
  v10 = NSStringFromSelector("url");
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(FMDStandardAsset *)self fileURL];
  v11 = NSStringFromSelector("fileURL");
  [v4 encodeObject:v12 forKey:v11];
}

@end