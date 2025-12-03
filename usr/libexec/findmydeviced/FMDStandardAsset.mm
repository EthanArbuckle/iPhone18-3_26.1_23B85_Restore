@interface FMDStandardAsset
- (FMDStandardAsset)initWithCoder:(id)coder;
- (FMDStandardAsset)initWithFileURL:(id)l lastModified:(id)modified etag:(id)etag type:(unint64_t)type url:(id)url;
- (NSData)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDStandardAsset

- (FMDStandardAsset)initWithFileURL:(id)l lastModified:(id)modified etag:(id)etag type:(unint64_t)type url:(id)url
{
  lCopy = l;
  modifiedCopy = modified;
  etagCopy = etag;
  urlCopy = url;
  v19.receiver = self;
  v19.super_class = FMDStandardAsset;
  v16 = [(FMDStandardAsset *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(FMDStandardAsset *)v16 setFileURL:lCopy];
    [(FMDStandardAsset *)v17 setLastModified:modifiedCopy];
    [(FMDStandardAsset *)v17 setEtag:etagCopy];
    [(FMDStandardAsset *)v17 setUrl:urlCopy];
    [(FMDStandardAsset *)v17 setAssetType:type];
  }

  return v17;
}

- (NSData)data
{
  v3 = self->_data;
  if (!v3)
  {
    v4 = [NSData alloc];
    fileURL = [(FMDStandardAsset *)self fileURL];
    v9 = 0;
    v3 = [v4 initWithContentsOfURL:fileURL options:0 error:&v9];
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

- (FMDStandardAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FMDStandardAsset;
  v5 = [(FMDStandardAsset *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("lastModified");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDStandardAsset *)v5 setLastModified:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("etag");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDStandardAsset *)v5 setEtag:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("url");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDStandardAsset *)v5 setUrl:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("fileURL");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDStandardAsset *)v5 setFileURL:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastModified = [(FMDStandardAsset *)self lastModified];
  v6 = NSStringFromSelector("lastModified");
  [coderCopy encodeObject:lastModified forKey:v6];

  etag = [(FMDStandardAsset *)self etag];
  v8 = NSStringFromSelector("etag");
  [coderCopy encodeObject:etag forKey:v8];

  v9 = [(FMDStandardAsset *)self url];
  v10 = NSStringFromSelector("url");
  [coderCopy encodeObject:v9 forKey:v10];

  fileURL = [(FMDStandardAsset *)self fileURL];
  v11 = NSStringFromSelector("fileURL");
  [coderCopy encodeObject:fileURL forKey:v11];
}

@end