@interface TZDAssetDetectedMsg
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionaryRepresentation = [(TZDAssetDetectedMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_assetVersion)
  {
    sub_100017A38();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetVersion copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    assetVersion = self->_assetVersion;
    if (assetVersion | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(TZDAssetDetectedMsg *)self setAssetVersion:?];
  }
}

@end