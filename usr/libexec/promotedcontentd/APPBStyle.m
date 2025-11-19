@interface APPBStyle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBStyle

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBStyle;
  v3 = [(APPBStyle *)&v7 description];
  v4 = [(APPBStyle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    v5 = [(APPBColor *)backgroundColor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"backgroundColor"];
  }

  borderStyle = self->_borderStyle;
  if (borderStyle)
  {
    v7 = [(APPBBorderStyle *)borderStyle dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"borderStyle"];
  }

  buttonStyle = self->_buttonStyle;
  if (buttonStyle)
  {
    v9 = [(APPBButtonStyle *)buttonStyle dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"buttonStyle"];
  }

  shadowStyle = self->_shadowStyle;
  if (shadowStyle)
  {
    v11 = [(APPBShadowStyle *)shadowStyle dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"shadowStyle"];
  }

  textColor = self->_textColor;
  if (textColor)
  {
    v13 = [(APPBColor *)textColor dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"textColor"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backgroundColor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_borderStyle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_buttonStyle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shadowStyle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_textColor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backgroundColor)
  {
    [v4 setBackgroundColor:?];
    v4 = v5;
  }

  if (self->_borderStyle)
  {
    [v5 setBorderStyle:?];
    v4 = v5;
  }

  if (self->_buttonStyle)
  {
    [v5 setButtonStyle:?];
    v4 = v5;
  }

  if (self->_shadowStyle)
  {
    [v5 setShadowStyle:?];
    v4 = v5;
  }

  if (self->_textColor)
  {
    [v5 setTextColor:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBColor *)self->_backgroundColor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(APPBBorderStyle *)self->_borderStyle copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(APPBButtonStyle *)self->_buttonStyle copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(APPBShadowStyle *)self->_shadowStyle copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(APPBColor *)self->_textColor copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((backgroundColor = self->_backgroundColor, !(backgroundColor | v4[1])) || -[APPBColor isEqual:](backgroundColor, "isEqual:")) && ((borderStyle = self->_borderStyle, !(borderStyle | v4[2])) || -[APPBBorderStyle isEqual:](borderStyle, "isEqual:")) && ((buttonStyle = self->_buttonStyle, !(buttonStyle | v4[3])) || -[APPBButtonStyle isEqual:](buttonStyle, "isEqual:")) && ((shadowStyle = self->_shadowStyle, !(shadowStyle | v4[4])) || -[APPBShadowStyle isEqual:](shadowStyle, "isEqual:")))
  {
    textColor = self->_textColor;
    if (textColor | v4[5])
    {
      v10 = [(APPBColor *)textColor isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(APPBColor *)self->_backgroundColor hash];
  v4 = [(APPBBorderStyle *)self->_borderStyle hash]^ v3;
  v5 = [(APPBButtonStyle *)self->_buttonStyle hash];
  v6 = v4 ^ v5 ^ [(APPBShadowStyle *)self->_shadowStyle hash];
  return v6 ^ [(APPBColor *)self->_textColor hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  backgroundColor = self->_backgroundColor;
  v15 = v4;
  v6 = v4[1];
  if (backgroundColor)
  {
    if (v6)
    {
      [(APPBColor *)backgroundColor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBStyle *)self setBackgroundColor:?];
  }

  borderStyle = self->_borderStyle;
  v8 = v15[2];
  if (borderStyle)
  {
    if (v8)
    {
      [(APPBBorderStyle *)borderStyle mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(APPBStyle *)self setBorderStyle:?];
  }

  buttonStyle = self->_buttonStyle;
  v10 = v15[3];
  if (buttonStyle)
  {
    if (v10)
    {
      [(APPBButtonStyle *)buttonStyle mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(APPBStyle *)self setButtonStyle:?];
  }

  shadowStyle = self->_shadowStyle;
  v12 = v15[4];
  if (shadowStyle)
  {
    if (v12)
    {
      [(APPBShadowStyle *)shadowStyle mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(APPBStyle *)self setShadowStyle:?];
  }

  textColor = self->_textColor;
  v14 = v15[5];
  if (textColor)
  {
    if (v14)
    {
      [(APPBColor *)textColor mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(APPBStyle *)self setTextColor:?];
  }
}

@end