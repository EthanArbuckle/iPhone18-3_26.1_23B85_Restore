@interface APPBButtonStyle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBButtonStyle

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBButtonStyle;
  v3 = [(APPBButtonStyle *)&v7 description];
  v4 = [(APPBButtonStyle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  color = self->_color;
  if (color)
  {
    v6 = [(APPBColor *)color dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"color"];
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor)
  {
    v8 = [(APPBColor *)highlightedColor dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"highlightedColor"];
  }

  disabledColor = self->_disabledColor;
  if (disabledColor)
  {
    v10 = [(APPBColor *)disabledColor dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"disabledColor"];
  }

  textColor = self->_textColor;
  if (textColor)
  {
    v12 = [(APPBColor *)textColor dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"textColor"];
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
    v15 = [(APPBBorderStyle *)borderStyle dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"borderStyle"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_color)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_highlightedColor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_disabledColor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_textColor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
    v4 = v5;
  }

  if (self->_borderStyle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_color)
  {
    [v4 setColor:?];
    v4 = v5;
  }

  if (self->_highlightedColor)
  {
    [v5 setHighlightedColor:?];
    v4 = v5;
  }

  if (self->_disabledColor)
  {
    [v5 setDisabledColor:?];
    v4 = v5;
  }

  if (self->_textColor)
  {
    [v5 setTextColor:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = LODWORD(self->_cornerRadius);
    *(v4 + 56) |= 1u;
  }

  if (self->_borderStyle)
  {
    [v5 setBorderStyle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBColor *)self->_color copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(APPBColor *)self->_highlightedColor copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(APPBColor *)self->_disabledColor copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(APPBColor *)self->_textColor copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  if (*&self->_has)
  {
    *(v5 + 6) = LODWORD(self->_cornerRadius);
    *(v5 + 56) |= 1u;
  }

  v14 = [(APPBBorderStyle *)self->_borderStyle copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  color = self->_color;
  if (color | *(v4 + 2))
  {
    if (![(APPBColor *)color isEqual:?])
    {
      goto LABEL_17;
    }
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor | *(v4 + 5))
  {
    if (![(APPBColor *)highlightedColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  disabledColor = self->_disabledColor;
  if (disabledColor | *(v4 + 4))
  {
    if (![(APPBColor *)disabledColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  textColor = self->_textColor;
  if (textColor | *(v4 + 6))
  {
    if (![(APPBColor *)textColor isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_cornerRadius != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  borderStyle = self->_borderStyle;
  if (borderStyle | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  color = self->_color;
  v6 = *(v4 + 2);
  v15 = v4;
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

  v4 = v15;
LABEL_7:
  highlightedColor = self->_highlightedColor;
  v8 = *(v4 + 5);
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

  v4 = v15;
LABEL_13:
  disabledColor = self->_disabledColor;
  v10 = *(v4 + 4);
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

  v4 = v15;
LABEL_19:
  textColor = self->_textColor;
  v12 = *(v4 + 6);
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

  v4 = v15;
LABEL_25:
  if (*(v4 + 56))
  {
    self->_cornerRadius = *(v4 + 6);
    *&self->_has |= 1u;
  }

  borderStyle = self->_borderStyle;
  v14 = *(v4 + 1);
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