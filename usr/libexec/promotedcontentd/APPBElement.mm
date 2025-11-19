@interface APPBElement
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBElement

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBElement;
  v3 = [(APPBElement *)&v7 description];
  v4 = [(APPBElement *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithInt:self->_elementID];
    [v3 setObject:v4 forKey:@"elementID"];
  }

  asset = self->_asset;
  if (asset)
  {
    v6 = [(APPBAsset *)asset dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"asset"];
  }

  caption = self->_caption;
  if (caption)
  {
    [v3 setObject:caption forKey:@"caption"];
  }

  accessCaption = self->_accessCaption;
  if (accessCaption)
  {
    [v3 setObject:accessCaption forKey:@"accessCaption"];
  }

  ctaButton = self->_ctaButton;
  if (ctaButton)
  {
    v10 = [(APPBButton *)ctaButton dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"ctaButton"];
  }

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [v3 setObject:actionURL forKey:@"actionURL"];
  }

  style = self->_style;
  if (style)
  {
    v13 = [(APPBStyle *)style dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"style"];
  }

  action = self->_action;
  if (action)
  {
    v15 = [(APPBAdAction *)action dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"action"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_caption)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_accessCaption)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ctaButton)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_style)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_action)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_elementID;
    *(v4 + 72) |= 1u;
  }

  v5 = v4;
  if (self->_asset)
  {
    [v4 setAsset:?];
    v4 = v5;
  }

  if (self->_caption)
  {
    [v5 setCaption:?];
    v4 = v5;
  }

  if (self->_accessCaption)
  {
    [v5 setAccessCaption:?];
    v4 = v5;
  }

  if (self->_ctaButton)
  {
    [v5 setCtaButton:?];
    v4 = v5;
  }

  if (self->_actionURL)
  {
    [v5 setActionURL:?];
    v4 = v5;
  }

  if (self->_style)
  {
    [v5 setStyle:?];
    v4 = v5;
  }

  if (self->_action)
  {
    [v5 setAction:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 14) = self->_elementID;
    *(v5 + 72) |= 1u;
  }

  v7 = [(APPBAsset *)self->_asset copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_caption copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_accessCaption copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(APPBButton *)self->_ctaButton copyWithZone:a3];
  v14 = v6[6];
  v6[6] = v13;

  v15 = [(NSString *)self->_actionURL copyWithZone:a3];
  v16 = v6[3];
  v6[3] = v15;

  v17 = [(APPBStyle *)self->_style copyWithZone:a3];
  v18 = v6[8];
  v6[8] = v17;

  v19 = [(APPBAdAction *)self->_action copyWithZone:a3];
  v20 = v6[2];
  v6[2] = v19;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_elementID != *(v4 + 14))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  asset = self->_asset;
  if (asset | *(v4 + 4) && ![(APPBAsset *)asset isEqual:?])
  {
    goto LABEL_21;
  }

  caption = self->_caption;
  if (caption | *(v4 + 5))
  {
    if (![(NSString *)caption isEqual:?])
    {
      goto LABEL_21;
    }
  }

  accessCaption = self->_accessCaption;
  if (accessCaption | *(v4 + 1))
  {
    if (![(NSString *)accessCaption isEqual:?])
    {
      goto LABEL_21;
    }
  }

  ctaButton = self->_ctaButton;
  if (ctaButton | *(v4 + 6))
  {
    if (![(APPBButton *)ctaButton isEqual:?])
    {
      goto LABEL_21;
    }
  }

  actionURL = self->_actionURL;
  if (actionURL | *(v4 + 3))
  {
    if (![(NSString *)actionURL isEqual:?])
    {
      goto LABEL_21;
    }
  }

  style = self->_style;
  if (style | *(v4 + 8))
  {
    if (![(APPBStyle *)style isEqual:?])
    {
      goto LABEL_21;
    }
  }

  action = self->_action;
  if (action | *(v4 + 2))
  {
    v12 = [(APPBAdAction *)action isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_elementID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(APPBAsset *)self->_asset hash]^ v3;
  v5 = [(NSString *)self->_caption hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_accessCaption hash];
  v7 = [(APPBButton *)self->_ctaButton hash];
  v8 = v7 ^ [(NSString *)self->_actionURL hash];
  v9 = v6 ^ v8 ^ [(APPBStyle *)self->_style hash];
  return v9 ^ [(APPBAdAction *)self->_action hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 72))
  {
    self->_elementID = *(v4 + 14);
    *&self->_has |= 1u;
  }

  asset = self->_asset;
  v7 = v5[4];
  v14 = v5;
  if (asset)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(APPBAsset *)asset mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(APPBElement *)self setAsset:?];
  }

  v5 = v14;
LABEL_9:
  if (v5[5])
  {
    [(APPBElement *)self setCaption:?];
    v5 = v14;
  }

  if (v5[1])
  {
    [(APPBElement *)self setAccessCaption:?];
    v5 = v14;
  }

  ctaButton = self->_ctaButton;
  v9 = v5[6];
  if (ctaButton)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(APPBButton *)ctaButton mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(APPBElement *)self setCtaButton:?];
  }

  v5 = v14;
LABEL_19:
  if (v5[3])
  {
    [(APPBElement *)self setActionURL:?];
    v5 = v14;
  }

  style = self->_style;
  v11 = v5[8];
  if (style)
  {
    if (!v11)
    {
      goto LABEL_27;
    }

    [(APPBStyle *)style mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_27;
    }

    [(APPBElement *)self setStyle:?];
  }

  v5 = v14;
LABEL_27:
  action = self->_action;
  v13 = v5[2];
  if (action)
  {
    if (v13)
    {
      [(APPBAdAction *)action mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(APPBElement *)self setAction:?];
  }

  _objc_release_x1();
}

@end