@interface CEMFontAssetInstallMetadata
- (CEMFontAssetInstallMetadata)initWithCoder:(id)coder;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEMFontAssetInstallMetadata

- (id)dataRepresentation
{
  fontURL = [(CEMFontAssetInstallMetadata *)self fontURL];
  v3 = [NSData dataWithContentsOfURL:fontURL];

  return v3;
}

- (CEMFontAssetInstallMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CEMFontAssetInstallMetadata *)self init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"fontURL"];
    fontURL = v5->_fontURL;
    v5->_fontURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontURL = [(CEMFontAssetInstallMetadata *)self fontURL];
  [coderCopy encodeObject:fontURL forKey:@"fontURL"];
}

@end