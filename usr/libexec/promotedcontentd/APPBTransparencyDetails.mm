@interface APPBTransparencyDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBTransparencyDetails

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTransparencyDetails;
  v3 = [(APPBTransparencyDetails *)&v7 description];
  v4 = [(APPBTransparencyDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transparencyRendererURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_targetingExpressionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transparencyDetailsUnavailableMessage)
  {
    [v4 setTransparencyDetailsUnavailableMessage:?];
    v4 = v5;
  }

  if (self->_transparencyRendererPayload)
  {
    [v5 setTransparencyRendererPayload:?];
    v4 = v5;
  }

  if (self->_transparencyRendererURL)
  {
    [v5 setTransparencyRendererURL:?];
    v4 = v5;
  }

  if (self->_targetingExpressionId)
  {
    [v5 setTargetingExpressionId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_transparencyDetailsUnavailableMessage copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_transparencyRendererPayload copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_transparencyRendererURL copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_targetingExpressionId copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage, !(transparencyDetailsUnavailableMessage | v4[2])) || -[NSString isEqual:](transparencyDetailsUnavailableMessage, "isEqual:")) && ((transparencyRendererPayload = self->_transparencyRendererPayload, !(transparencyRendererPayload | v4[3])) || -[NSString isEqual:](transparencyRendererPayload, "isEqual:")) && ((transparencyRendererURL = self->_transparencyRendererURL, !(transparencyRendererURL | v4[4])) || -[NSString isEqual:](transparencyRendererURL, "isEqual:")))
  {
    targetingExpressionId = self->_targetingExpressionId;
    if (targetingExpressionId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(APPBTransparencyDetails *)self setTransparencyDetailsUnavailableMessage:?];
  }

  if (v4[3])
  {
    [(APPBTransparencyDetails *)self setTransparencyRendererPayload:?];
  }

  if (v4[4])
  {
    [(APPBTransparencyDetails *)self setTransparencyRendererURL:?];
  }

  if (v4[1])
  {
    [(APPBTransparencyDetails *)self setTargetingExpressionId:?];
  }
}

@end