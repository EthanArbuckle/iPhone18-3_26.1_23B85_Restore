@interface APPBShadowStyle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)offsetAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRadius:(BOOL)radius;
- (void)writeTo:(id)to;
@end

@implementation APPBShadowStyle

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = APPBShadowStyle;
  [(APPBShadowStyle *)&v3 dealloc];
}

- (void)setHasRadius:(BOOL)radius
{
  if (radius)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)offsetAtIndex:(unint64_t)index
{
  p_offsets = &self->_offsets;
  count = self->_offsets.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_offsets->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBShadowStyle;
  v3 = [(APPBShadowStyle *)&v7 description];
  dictionaryRepresentation = [(APPBShadowStyle *)self dictionaryRepresentation];
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
  if (has)
  {
    *&v4 = self->_opacity;
    v8 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v8 forKey:@"opacity"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_radius;
    v9 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v9 forKey:@"radius"];
  }

  v10 = PBRepeatedInt32NSArray();
  [v3 setObject:v10 forKey:@"offset"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_color)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }

  p_offsets = &self->_offsets;
  if (p_offsets->count)
  {
    v7 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v8;
      ++v7;
    }

    while (v7 < p_offsets->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_color)
  {
    [toCopy setColor:?];
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 10) = LODWORD(self->_opacity);
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 11) = LODWORD(self->_radius);
    *(toCopy + 48) |= 2u;
  }

  if ([(APPBShadowStyle *)self offsetsCount])
  {
    [v9 clearOffsets];
    offsetsCount = [(APPBShadowStyle *)self offsetsCount];
    if (offsetsCount)
    {
      v7 = offsetsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addOffset:{-[APPBShadowStyle offsetAtIndex:](self, "offsetAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBColor *)self->_color copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 10) = LODWORD(self->_opacity);
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 11) = LODWORD(self->_radius);
    *(v5 + 48) |= 2u;
  }

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  color = self->_color;
  if (color | *(equalCopy + 4))
  {
    if (![(APPBColor *)color isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_opacity != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    IsEqual = 0;
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_radius != *(equalCopy + 11))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_15;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_16:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(APPBColor *)self->_color hash];
  if (*&self->_has)
  {
    opacity = self->_opacity;
    if (opacity < 0.0)
    {
      opacity = -opacity;
    }

    *v4.i32 = floorf(opacity + 0.5);
    v8 = (opacity - *v4.i32) * 1.8447e19;
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

  if ((*&self->_has & 2) != 0)
  {
    radius = self->_radius;
    if (radius < 0.0)
    {
      radius = -radius;
    }

    *v4.i32 = floorf(radius + 0.5);
    v12 = (radius - *v4.i32) * 1.8447e19;
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

  return v6 ^ v3 ^ v10 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  color = self->_color;
  v6 = *(fromCopy + 4);
  v11 = fromCopy;
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

    [(APPBShadowStyle *)self setColor:?];
  }

  fromCopy = v11;
LABEL_7:
  v7 = *(fromCopy + 48);
  if (v7)
  {
    self->_opacity = *(fromCopy + 10);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_radius = *(fromCopy + 11);
    *&self->_has |= 2u;
  }

  offsetsCount = [fromCopy offsetsCount];
  if (offsetsCount)
  {
    v9 = offsetsCount;
    for (i = 0; i != v9; ++i)
    {
      -[APPBShadowStyle addOffset:](self, "addOffset:", [v11 offsetAtIndex:i]);
    }
  }
}

@end