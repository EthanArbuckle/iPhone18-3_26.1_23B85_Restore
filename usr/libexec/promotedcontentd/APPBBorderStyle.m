@interface APPBBorderStyle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBBorderStyle

- (void)setHasWidth:(BOOL)a3
{
  if (a3)
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
  v4 = [(APPBBorderStyle *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_color)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteFloatField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_color)
  {
    v6 = v4;
    [v4 setColor:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = LODWORD(self->_width);
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = LODWORD(self->_cornerRadius);
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBColor *)self->_color copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  color = self->_color;
  if (color | *(v4 + 1))
  {
    if (![(APPBColor *)color isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_width != *(v4 + 5))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_cornerRadius != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  color = self->_color;
  v6 = *(v4 + 1);
  if (color)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(APPBColor *)color mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(APPBBorderStyle *)self setColor:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 24);
  if ((v7 & 2) != 0)
  {
    self->_width = *(v4 + 5);
    *&self->_has |= 2u;
    v7 = *(v4 + 24);
  }

  if (v7)
  {
    self->_cornerRadius = *(v4 + 4);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end