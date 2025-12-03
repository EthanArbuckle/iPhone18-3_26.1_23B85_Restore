@interface APPBTransparencyDetails
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBTransparencyDetails

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTransparencyDetails;
  v3 = [(APPBTransparencyDetails *)&v7 description];
  dictionaryRepresentation = [(APPBTransparencyDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage;
  if (transparencyDetailsUnavailableMessage)
  {
    [v3 setObject:transparencyDetailsUnavailableMessage forKey:@"transparencyDetailsUnavailableMessage"];
  }

  transparencyRendererPayload = self->_transparencyRendererPayload;
  if (transparencyRendererPayload)
  {
    [v4 setObject:transparencyRendererPayload forKey:@"transparencyRendererPayload"];
  }

  transparencyRendererURL = self->_transparencyRendererURL;
  if (transparencyRendererURL)
  {
    [v4 setObject:transparencyRendererURL forKey:@"transparencyRendererURL"];
  }

  targetingExpressionId = self->_targetingExpressionId;
  if (targetingExpressionId)
  {
    [v4 setObject:targetingExpressionId forKey:@"targetingExpressionId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_transparencyRendererURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_targetingExpressionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    [toCopy setTransparencyDetailsUnavailableMessage:?];
    toCopy = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    [v5 setTransparencyRendererPayload:?];
    toCopy = v5;
  }

  if (self->_transparencyRendererURL)
  {
    [v5 setTransparencyRendererURL:?];
    toCopy = v5;
  }

  if (self->_targetingExpressionId)
  {
    [v5 setTargetingExpressionId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_transparencyDetailsUnavailableMessage copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_transparencyRendererPayload copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_transparencyRendererURL copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_targetingExpressionId copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage, !(transparencyDetailsUnavailableMessage | equalCopy[2])) || -[NSString isEqual:](transparencyDetailsUnavailableMessage, "isEqual:")) && ((transparencyRendererPayload = self->_transparencyRendererPayload, !(transparencyRendererPayload | equalCopy[3])) || -[NSString isEqual:](transparencyRendererPayload, "isEqual:")) && ((transparencyRendererURL = self->_transparencyRendererURL, !(transparencyRendererURL | equalCopy[4])) || -[NSString isEqual:](transparencyRendererURL, "isEqual:")))
  {
    targetingExpressionId = self->_targetingExpressionId;
    if (targetingExpressionId | equalCopy[1])
    {
      v9 = [(NSString *)targetingExpressionId isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_transparencyDetailsUnavailableMessage hash];
  v4 = [(NSString *)self->_transparencyRendererPayload hash]^ v3;
  v5 = [(NSString *)self->_transparencyRendererURL hash];
  return v4 ^ v5 ^ [(NSString *)self->_targetingExpressionId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(APPBTransparencyDetails *)self setTransparencyDetailsUnavailableMessage:?];
  }

  if (fromCopy[3])
  {
    [(APPBTransparencyDetails *)self setTransparencyRendererPayload:?];
  }

  if (fromCopy[4])
  {
    [(APPBTransparencyDetails *)self setTransparencyRendererURL:?];
  }

  if (fromCopy[1])
  {
    [(APPBTransparencyDetails *)self setTargetingExpressionId:?];
  }
}

@end