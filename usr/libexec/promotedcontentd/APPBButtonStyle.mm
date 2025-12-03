@interface APPBButtonStyle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBButtonStyle

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBButtonStyle;
  v3 = [(APPBButtonStyle *)&v7 description];
  dictionaryRepresentation = [(APPBButtonStyle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  color = self->_color;
  if (color)
  {
    dictionaryRepresentation = [(APPBColor *)color dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"color"];
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor)
  {
    dictionaryRepresentation2 = [(APPBColor *)highlightedColor dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"highlightedColor"];
  }

  disabledColor = self->_disabledColor;
  if (disabledColor)
  {
    dictionaryRepresentation3 = [(APPBColor *)disabledColor dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"disabledColor"];
  }

  textColor = self->_textColor;
  if (textColor)
  {
    dictionaryRepresentation4 = [(APPBColor *)textColor dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"textColor"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_cornerRadius;
    v13 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v13 forKey:@"cornerRadius"];
  }

  borderStyle = self->_borderStyle;
  if (borderStyle)
  {
    dictionaryRepresentation5 = [(APPBBorderStyle *)borderStyle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"borderStyle"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_color)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_highlightedColor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_disabledColor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_textColor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v5;
  }

  if (self->_borderStyle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_color)
  {
    [toCopy setColor:?];
    toCopy = v5;
  }

  if (self->_highlightedColor)
  {
    [v5 setHighlightedColor:?];
    toCopy = v5;
  }

  if (self->_disabledColor)
  {
    [v5 setDisabledColor:?];
    toCopy = v5;
  }

  if (self->_textColor)
  {
    [v5 setTextColor:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = LODWORD(self->_cornerRadius);
    *(toCopy + 56) |= 1u;
  }

  if (self->_borderStyle)
  {
    [v5 setBorderStyle:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBColor *)self->_color copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(APPBColor *)self->_highlightedColor copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(APPBColor *)self->_disabledColor copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(APPBColor *)self->_textColor copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  if (*&self->_has)
  {
    *(v5 + 6) = LODWORD(self->_cornerRadius);
    *(v5 + 56) |= 1u;
  }

  v14 = [(APPBBorderStyle *)self->_borderStyle copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  color = self->_color;
  if (color | *(equalCopy + 2))
  {
    if (![(APPBColor *)color isEqual:?])
    {
      goto LABEL_17;
    }
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor | *(equalCopy + 5))
  {
    if (![(APPBColor *)highlightedColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  disabledColor = self->_disabledColor;
  if (disabledColor | *(equalCopy + 4))
  {
    if (![(APPBColor *)disabledColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  textColor = self->_textColor;
  if (textColor | *(equalCopy + 6))
  {
    if (![(APPBColor *)textColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_cornerRadius != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  borderStyle = self->_borderStyle;
  if (borderStyle | *(equalCopy + 1))
  {
    v10 = [(APPBBorderStyle *)borderStyle isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(APPBColor *)self->_color hash];
  v4 = [(APPBColor *)self->_highlightedColor hash];
  v5 = [(APPBColor *)self->_disabledColor hash];
  v6 = [(APPBColor *)self->_textColor hash];
  if (*&self->_has)
  {
    cornerRadius = self->_cornerRadius;
    if (cornerRadius < 0.0)
    {
      cornerRadius = -cornerRadius;
    }

    *v7.i32 = floorf(cornerRadius + 0.5);
    v11 = (cornerRadius - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v9 = 2654435761u * *vbslq_s8(v12, v8, v7).i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ [(APPBBorderStyle *)self->_borderStyle hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  color = self->_color;
  v6 = *(fromCopy + 2);
  v15 = fromCopy;
  if (color)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBColor *)color mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBButtonStyle *)self setColor:?];
  }

  fromCopy = v15;
LABEL_7:
  highlightedColor = self->_highlightedColor;
  v8 = *(fromCopy + 5);
  if (highlightedColor)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(APPBColor *)highlightedColor mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(APPBButtonStyle *)self setHighlightedColor:?];
  }

  fromCopy = v15;
LABEL_13:
  disabledColor = self->_disabledColor;
  v10 = *(fromCopy + 4);
  if (disabledColor)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(APPBColor *)disabledColor mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(APPBButtonStyle *)self setDisabledColor:?];
  }

  fromCopy = v15;
LABEL_19:
  textColor = self->_textColor;
  v12 = *(fromCopy + 6);
  if (textColor)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(APPBColor *)textColor mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(APPBButtonStyle *)self setTextColor:?];
  }

  fromCopy = v15;
LABEL_25:
  if (*(fromCopy + 56))
  {
    self->_cornerRadius = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  borderStyle = self->_borderStyle;
  v14 = *(fromCopy + 1);
  if (borderStyle)
  {
    if (v14)
    {
      [(APPBBorderStyle *)borderStyle mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(APPBButtonStyle *)self setBorderStyle:?];
  }

  _objc_release_x1();
}

@end