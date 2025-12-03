@interface APPBBorderStyle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWidth:(BOOL)width;
- (void)writeTo:(id)to;
@end

@implementation APPBBorderStyle

- (void)setHasWidth:(BOOL)width
{
  if (width)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBBorderStyle;
  v3 = [(APPBBorderStyle *)&v7 description];
  dictionaryRepresentation = [(APPBBorderStyle *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v4 = self->_width;
    v8 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v8 forKey:@"width"];

    has = self->_has;
  }

  if (has)
  {
    *&v4 = self->_cornerRadius;
    v9 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v9 forKey:@"cornerRadius"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_color)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_color)
  {
    v6 = toCopy;
    [toCopy setColor:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = LODWORD(self->_width);
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = LODWORD(self->_cornerRadius);
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBColor *)self->_color copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 5) = LODWORD(self->_width);
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = LODWORD(self->_cornerRadius);
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  color = self->_color;
  if (color | *(equalCopy + 1))
  {
    if (![(APPBColor *)color isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_width != *(equalCopy + 5))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_cornerRadius != *(equalCopy + 4))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(APPBColor *)self->_color hash];
  if ((*&self->_has & 2) != 0)
  {
    width = self->_width;
    if (width < 0.0)
    {
      width = -width;
    }

    *v4.i32 = floorf(width + 0.5);
    v8 = (width - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v9, v5, v4);
    v6 = 2654435761u * *v4.i32;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabsf(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    cornerRadius = self->_cornerRadius;
    if (cornerRadius < 0.0)
    {
      cornerRadius = -cornerRadius;
    }

    *v4.i32 = floorf(cornerRadius + 0.5);
    v12 = (cornerRadius - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v10 = 2654435761u * *vbslq_s8(v13, v5, v4).i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  color = self->_color;
  v6 = *(fromCopy + 1);
  if (color)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(APPBColor *)color mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(APPBBorderStyle *)self setColor:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 24);
  if ((v7 & 2) != 0)
  {
    self->_width = *(fromCopy + 5);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 24);
  }

  if (v7)
  {
    self->_cornerRadius = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end