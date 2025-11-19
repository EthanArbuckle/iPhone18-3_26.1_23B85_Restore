@interface PCNativeAssetInfo
- (id)initWithAssetInfo:(id)a3;
@end

@implementation PCNativeAssetInfo

- (id)initWithAssetInfo:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeAssetInfo *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    -[PCNativeAssetInfo setContentType:](v5, "setContentType:", [v4 contentType]);
    -[PCNativeAssetInfo setWidth:](v6, "setWidth:", [v4 width]);
    -[PCNativeAssetInfo setHeight:](v6, "setHeight:", [v4 height]);
    v7 = [v4 url];
    v8 = [NSURL URLWithString:v7];
    [(PCNativeAssetInfo *)v6 setUrl:v8];

    [v4 length];
    [(PCNativeAssetInfo *)v6 setLength:v9];
    [v4 bitrate];
    [(PCNativeAssetInfo *)v6 setBitrate:?];
    -[PCNativeAssetInfo setAutoloop:](v6, "setAutoloop:", [v4 autoloop]);
  }

  return v6;
}

@end