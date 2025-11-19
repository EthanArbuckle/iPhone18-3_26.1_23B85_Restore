@interface APPBAdSize
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLockAspectRatio:(BOOL)a3;
- (void)setHasWidthInset:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdSize

+ (id)options
{
  if (qword_1004E6978 != -1)
  {
    sub_100393AF8();
  }

  v3 = qword_1004E6970;

  return v3;
}

- (void)setHasWidthInset:(BOOL)a3
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

- (void)setHasLockAspectRatio:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdSize;
  v3 = [(APPBAdSize *)&v7 description];
  v4 = [(APPBAdSize *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_width];
  [v3 setObject:v4 forKey:@"width"];

  v5 = [NSNumber numberWithInt:self->_height];
  [v3 setObject:v5 forKey:@"height"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_widthInset];
    [v3 setObject:v9 forKey:@"widthInset"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithInt:self->_heightInset];
  [v3 setObject:v10 forKey:@"heightInset"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = [NSNumber numberWithBool:self->_lockAspectRatio];
    [v3 setObject:v7 forKey:@"lockAspectRatio"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_width;
  v4[2] = self->_height;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_widthInset;
    *(v4 + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_heightInset;
  *(v4 + 28) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 24) = self->_lockAspectRatio;
    *(v4 + 28) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 4) = self->_width;
  *(result + 2) = self->_height;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 5) = self->_widthInset;
    *(result + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_heightInset;
  *(result + 28) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 24) = self->_lockAspectRatio;
  *(result + 28) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_width != *(v4 + 4) || self->_height != *(v4 + 2))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_widthInset != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_heightInset != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
LABEL_16:
      v5 = 0;
      goto LABEL_17;
    }

    if (self->_lockAspectRatio)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_widthInset;
  }

  else
  {
    v2 = 0;
  }

  if (*&self->_has)
  {
    v3 = 2654435761 * self->_heightInset;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_lockAspectRatio;
  }

  else
  {
    v4 = 0;
  }

  return (2654435761 * self->_height) ^ (2654435761 * self->_width) ^ v2 ^ v3 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_width = *(v4 + 4);
  self->_height = *(v4 + 2);
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_widthInset = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_heightInset = *(v4 + 3);
  *&self->_has |= 1u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_4:
    self->_lockAspectRatio = *(v4 + 24);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end