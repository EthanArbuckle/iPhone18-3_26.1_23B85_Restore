@interface NRGPBResourceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScreenScale:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBResourceRequest

- (void)setHasScreenScale:(BOOL)a3
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
  v7.super_class = NRGPBResourceRequest;
  v3 = [(NRGPBResourceRequest *)&v7 description];
  v4 = [(NRGPBResourceRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_bundleID)
  {
    v6 = v4;
    [v4 setBundleID:?];
    v4 = v6;
  }

  *(v4 + 6) = self->_type;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = LODWORD(self->_screenScale);
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_iconVariant;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (self->_type != *(v4 + 6))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_screenScale != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_iconVariant != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(NRGPBResourceRequest *)self setBundleID:?];
    v4 = v6;
  }

  self->_type = *(v4 + 6);
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_screenScale = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_iconVariant = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end