@interface APPBAssetInfo
- (BOOL)isEqual:(id)a3;
- (id)contentTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContentType:(id)a3;
- (int)contentType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAutoloop:(BOOL)a3;
- (void)setHasContentType:(BOOL)a3;
- (void)setHasHeight:(BOOL)a3;
- (void)setHasLength:(BOOL)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAssetInfo

- (int)contentType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_contentType;
  }

  else
  {
    return 30000;
  }
}

- (void)setHasContentType:(BOOL)a3
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

- (id)contentTypeAsString:(int)a3
{
  if ((a3 - 30000) >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DD50 + (a3 - 30000));
  }

  return v4;
}

- (int)StringAsContentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IMAGE"])
  {
    v4 = 30000;
  }

  else if ([v3 isEqualToString:@"VIDEO"])
  {
    v4 = 30001;
  }

  else if ([v3 isEqualToString:@"AUDIO"])
  {
    v4 = 30002;
  }

  else
  {
    v4 = 30000;
  }

  return v4;
}

- (void)setHasWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAutoloop:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAssetInfo;
  v3 = [(APPBAssetInfo *)&v7 description];
  v4 = [(APPBAssetInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v6 = self->_contentType - 30000;
    if (v6 >= 3)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_contentType];
    }

    else
    {
      v7 = *(&off_10047DD50 + v6);
    }

    [v3 setObject:v7 forKey:@"contentType"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_width];
    [v3 setObject:v8 forKey:@"width"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_height];
    [v3 setObject:v9 forKey:@"height"];
  }

  url = self->_url;
  if (url)
  {
    [v3 setObject:url forKey:@"url"];
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    *&v4 = self->_length;
    v14 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v14 forKey:@"length"];

    v11 = self->_has;
    if ((v11 & 1) == 0)
    {
LABEL_14:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = [NSNumber numberWithDouble:self->_bitrate];
  [v3 setObject:v15 forKey:@"bitrate"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v12 = [NSNumber numberWithBool:self->_autoloop];
    [v3 setObject:v12 forKey:@"autoloop"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v5 = self->_has;
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_contentType;
    *(v4 + 48) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[10] = self->_width;
  *(v4 + 48) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[5] = self->_height;
    *(v4 + 48) |= 4u;
  }

LABEL_5:
  if (self->_url)
  {
    v7 = v4;
    [v4 setUrl:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    v4[6] = LODWORD(self->_length);
    *(v4 + 48) |= 8u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 1) = *&self->_bitrate;
  *(v4 + 48) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    *(v4 + 44) = self->_autoloop;
    *(v4 + 48) |= 0x20u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[4] = self->_contentType;
    *(v5 + 48) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v5[10] = self->_width;
  *(v5 + 48) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5[5] = self->_height;
    *(v5 + 48) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_url copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v6[1] = *&self->_bitrate;
    *(v6 + 48) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 6) = LODWORD(self->_length);
  *(v6 + 48) |= 8u;
  v10 = self->_has;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v10 & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 44) = self->_autoloop;
    *(v6 + 48) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_contentType != *(v4 + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_width != *(v4 + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_height != *(v4 + 5))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_32;
  }

  url = self->_url;
  if (url | *(v4 + 4))
  {
    if (![(NSString *)url isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_length != *(v4 + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_32;
  }

  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_bitrate != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_32;
  }

  v7 = (*(v4 + 48) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) != 0)
    {
      if (self->_autoloop)
      {
        if ((*(v4 + 44) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(v4 + 44))
      {
        goto LABEL_32;
      }

      v7 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v7 = 0;
  }

LABEL_33:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_contentType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_width;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_height;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_url hash];
  if ((*&self->_has & 8) != 0)
  {
    length = self->_length;
    if (length < 0.0)
    {
      length = -length;
    }

    *v7.i32 = floorf(length + 0.5);
    v11 = (length - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v7 = vbslq_s8(v12, v8, v7);
    v9 = 2654435761u * *v7.i32;
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

  if (*&self->_has)
  {
    bitrate = self->_bitrate;
    if (bitrate < 0.0)
    {
      bitrate = -bitrate;
    }

    *v7.i64 = floor(bitrate + 0.5);
    v15 = (bitrate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v8, v7).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_autoloop;
  }

  else
  {
    v17 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v9 ^ v13 ^ v17 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_contentType = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_width = *(v4 + 10);
  *&self->_has |= 0x10u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_4:
    self->_height = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v7 = v4;
    [(APPBAssetInfo *)self setUrl:?];
    v4 = v7;
  }

  v6 = *(v4 + 48);
  if ((v6 & 8) != 0)
  {
    self->_length = *(v4 + 6);
    *&self->_has |= 8u;
    v6 = *(v4 + 48);
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_bitrate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 48) & 0x20) != 0)
  {
LABEL_10:
    self->_autoloop = *(v4 + 44);
    *&self->_has |= 0x20u;
  }

LABEL_11:
}

@end