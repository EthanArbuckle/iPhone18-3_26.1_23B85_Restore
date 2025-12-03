@interface PCNativeAssetInfo
- (id)initWithAssetInfo:(id)info;
@end

@implementation PCNativeAssetInfo

- (id)initWithAssetInfo:(id)info
{
  infoCopy = info;
  v5 = [(PCNativeAssetInfo *)self init];
  v6 = v5;
  if (infoCopy && v5)
  {
    -[PCNativeAssetInfo setContentType:](v5, "setContentType:", [infoCopy contentType]);
    -[PCNativeAssetInfo setWidth:](v6, "setWidth:", [infoCopy width]);
    -[PCNativeAssetInfo setHeight:](v6, "setHeight:", [infoCopy height]);
    v7 = [infoCopy url];
    v8 = [NSURL URLWithString:v7];
    [(PCNativeAssetInfo *)v6 setUrl:v8];

    [infoCopy length];
    [(PCNativeAssetInfo *)v6 setLength:v9];
    [infoCopy bitrate];
    [(PCNativeAssetInfo *)v6 setBitrate:?];
    -[PCNativeAssetInfo setAutoloop:](v6, "setAutoloop:", [infoCopy autoloop]);
  }

  return v6;
}

@end