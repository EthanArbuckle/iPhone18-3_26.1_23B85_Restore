@interface NRGPBResourceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScreenScale:(BOOL)scale;
- (void)writeTo:(id)to;
@end

@implementation NRGPBResourceRequest

- (void)setHasScreenScale:(BOOL)scale
{
  if (scale)
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
  v7.super_class = NRGPBResourceRequest;
  v3 = [(NRGPBResourceRequest *)&v7 description];
  dictionaryRepresentation = [(NRGPBResourceRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  v6 = [NSNumber numberWithInt:self->_type];
  [v4 setObject:v6 forKey:@"type"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v7 = self->_screenScale;
    v9 = [NSNumber numberWithFloat:v7];
    [v4 setObject:v9 forKey:@"screenScale"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [NSNumber numberWithInt:self->_iconVariant];
    [v4 setObject:v10 forKey:@"iconVariant"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  type = self->_type;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    screenScale = self->_screenScale;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if (has)
  {
    iconVariant = self->_iconVariant;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_bundleID)
  {
    v6 = toCopy;
    [toCopy setBundleID:?];
    toCopy = v6;
  }

  *(toCopy + 6) = self->_type;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = LODWORD(self->_screenScale);
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_iconVariant;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  *(v5 + 6) = self->_type;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 5) = LODWORD(self->_screenScale);
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_iconVariant;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (self->_type != *(equalCopy + 6))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_screenScale != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_iconVariant != *(equalCopy + 4))
    {
      goto LABEL_14;
    }

    v6 = 1;
  }

LABEL_15:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 2) != 0)
  {
    screenScale = self->_screenScale;
    if (screenScale < 0.0)
    {
      screenScale = -screenScale;
    }

    *v4.i32 = floorf(screenScale + 0.5);
    v8 = (screenScale - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v6 = 2654435761u * *vbslq_s8(v9, v5, v4).i32;
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
    v10 = 2654435761 * self->_iconVariant;
  }

  else
  {
    v10 = 0;
  }

  return (2654435761 * self->_type) ^ v3 ^ v6 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(NRGPBResourceRequest *)self setBundleID:?];
    fromCopy = v6;
  }

  self->_type = *(fromCopy + 6);
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_screenScale = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_iconVariant = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end