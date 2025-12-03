@interface APPBStyle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBStyle

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBStyle;
  v3 = [(APPBStyle *)&v7 description];
  dictionaryRepresentation = [(APPBStyle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    dictionaryRepresentation = [(APPBColor *)backgroundColor dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"backgroundColor"];
  }

  borderStyle = self->_borderStyle;
  if (borderStyle)
  {
    dictionaryRepresentation2 = [(APPBBorderStyle *)borderStyle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"borderStyle"];
  }

  buttonStyle = self->_buttonStyle;
  if (buttonStyle)
  {
    dictionaryRepresentation3 = [(APPBButtonStyle *)buttonStyle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"buttonStyle"];
  }

  shadowStyle = self->_shadowStyle;
  if (shadowStyle)
  {
    dictionaryRepresentation4 = [(APPBShadowStyle *)shadowStyle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"shadowStyle"];
  }

  textColor = self->_textColor;
  if (textColor)
  {
    dictionaryRepresentation5 = [(APPBColor *)textColor dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"textColor"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_backgroundColor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_borderStyle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_buttonStyle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_shadowStyle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_textColor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_backgroundColor)
  {
    [toCopy setBackgroundColor:?];
    toCopy = v5;
  }

  if (self->_borderStyle)
  {
    [v5 setBorderStyle:?];
    toCopy = v5;
  }

  if (self->_buttonStyle)
  {
    [v5 setButtonStyle:?];
    toCopy = v5;
  }

  if (self->_shadowStyle)
  {
    [v5 setShadowStyle:?];
    toCopy = v5;
  }

  if (self->_textColor)
  {
    [v5 setTextColor:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBColor *)self->_backgroundColor copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(APPBBorderStyle *)self->_borderStyle copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(APPBButtonStyle *)self->_buttonStyle copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(APPBShadowStyle *)self->_shadowStyle copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(APPBColor *)self->_textColor copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((backgroundColor = self->_backgroundColor, !(backgroundColor | equalCopy[1])) || -[APPBColor isEqual:](backgroundColor, "isEqual:")) && ((borderStyle = self->_borderStyle, !(borderStyle | equalCopy[2])) || -[APPBBorderStyle isEqual:](borderStyle, "isEqual:")) && ((buttonStyle = self->_buttonStyle, !(buttonStyle | equalCopy[3])) || -[APPBButtonStyle isEqual:](buttonStyle, "isEqual:")) && ((shadowStyle = self->_shadowStyle, !(shadowStyle | equalCopy[4])) || -[APPBShadowStyle isEqual:](shadowStyle, "isEqual:")))
  {
    textColor = self->_textColor;
    if (textColor | equalCopy[5])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  backgroundColor = self->_backgroundColor;
  v15 = fromCopy;
  v6 = fromCopy[1];
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