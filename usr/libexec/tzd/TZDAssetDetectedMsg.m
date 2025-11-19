@interface TZDAssetDetectedMsg
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TZDAssetDetectedMsg

+ (id)options
{
  if (qword_100025938[0] != -1)
  {
    sub_100017A24();
  }

  v3 = qword_100025930;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = TZDAssetDetectedMsg;
  v3 = [(TZDAssetDetectedMsg *)&v7 description];
  v4 = [(TZDAssetDetectedMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [v3 setObject:assetVersion forKey:@"assetVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_assetVersion)
  {
    sub_100017A38();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_assetVersion copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    assetVersion = self->_assetVersion;
    if (assetVersion | v4[1])
    {
      v6 = [(NSString *)assetVersion isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(TZDAssetDetectedMsg *)self setAssetVersion:?];
  }
}

@end