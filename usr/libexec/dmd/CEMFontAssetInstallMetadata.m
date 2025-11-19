@interface CEMFontAssetInstallMetadata
- (CEMFontAssetInstallMetadata)initWithCoder:(id)a3;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CEMFontAssetInstallMetadata

- (id)dataRepresentation
{
  v2 = [(CEMFontAssetInstallMetadata *)self fontURL];
  v3 = [NSData dataWithContentsOfURL:v2];

  return v3;
}

- (CEMFontAssetInstallMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CEMFontAssetInstallMetadata *)self init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"fontURL"];
    fontURL = v5->_fontURL;
    v5->_fontURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CEMFontAssetInstallMetadata *)self fontURL];
  [v4 encodeObject:v5 forKey:@"fontURL"];
}

@end