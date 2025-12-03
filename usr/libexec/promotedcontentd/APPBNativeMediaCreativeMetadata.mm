@interface APPBNativeMediaCreativeMetadata
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWidth:(BOOL)width;
- (void)setHasXPosition:(BOOL)position;
- (void)setHasYPosition:(BOOL)position;
- (void)writeTo:(id)to;
@end

@implementation APPBNativeMediaCreativeMetadata

+ (id)options
{
  if (qword_1004E6C40 != -1)
  {
    sub_100394460();
  }

  v3 = qword_1004E6C38;

  return v3;
}

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

- (void)setHasXPosition:(BOOL)position
{
  if (position)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasYPosition:(BOOL)position
{
  if (position)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBNativeMediaCreativeMetadata;
  v3 = [(APPBNativeMediaCreativeMetadata *)&v7 description];
  dictionaryRepresentation = [(APPBNativeMediaCreativeMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  videoFileURL = self->_videoFileURL;
  if (videoFileURL)
  {
    [v3 setObject:videoFileURL forKey:@"videoFileURL"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [NSNumber numberWithInt:self->_width];
    [v4 setObject:v11 forKey:@"width"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [NSNumber numberWithInt:self->_height];
  [v4 setObject:v12 forKey:@"height"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  v13 = [NSNumber numberWithInt:self->_xPosition];
  [v4 setObject:v13 forKey:@"xPosition"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [NSNumber numberWithInt:self->_yPosition];
    [v4 setObject:v7 forKey:@"yPosition"];
  }

LABEL_8:
  backgroundImage = self->_backgroundImage;
  if (backgroundImage)
  {
    [v4 setObject:backgroundImage forKey:@"backgroundImage"];
  }

  endCard = self->_endCard;
  if (endCard)
  {
    [v4 setObject:endCard forKey:@"endCard"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_videoFileURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_8:
  if (self->_backgroundImage)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_endCard)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_videoFileURL)
  {
    [toCopy setVideoFileURL:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_width;
    *(toCopy + 52) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 6) = self->_height;
  *(toCopy + 52) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(toCopy + 11) = self->_xPosition;
  *(toCopy + 52) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 12) = self->_yPosition;
    *(toCopy + 52) |= 8u;
  }

LABEL_8:
  if (self->_backgroundImage)
  {
    [v6 setBackgroundImage:?];
    toCopy = v6;
  }

  if (self->_endCard)
  {
    [v6 setEndCard:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_videoFileURL copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 10) = self->_width;
    *(v5 + 52) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 11) = self->_xPosition;
      *(v5 + 52) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_height;
  *(v5 + 52) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 12) = self->_yPosition;
    *(v5 + 52) |= 8u;
  }

LABEL_6:
  v9 = [(NSString *)self->_backgroundImage copyWithZone:zone];
  v10 = v5[1];
  v5[1] = v9;

  v11 = [(NSString *)self->_endCard copyWithZone:zone];
  v12 = v5[2];
  v5[2] = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  videoFileURL = self->_videoFileURL;
  if (videoFileURL | *(equalCopy + 4))
  {
    if (![(NSString *)videoFileURL isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_width != *(equalCopy + 10))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_height != *(equalCopy + 6))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_xPosition != *(equalCopy + 11))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_yPosition != *(equalCopy + 12))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_28;
  }

  backgroundImage = self->_backgroundImage;
  if (backgroundImage | *(equalCopy + 1) && ![(NSString *)backgroundImage isEqual:?])
  {
    goto LABEL_28;
  }

  endCard = self->_endCard;
  if (endCard | *(equalCopy + 2))
  {
    v8 = [(NSString *)endCard isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_29:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_videoFileURL hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_width;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_height;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_xPosition;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_yPosition;
LABEL_10:
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_backgroundImage hash];
  return v8 ^ [(NSString *)self->_endCard hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(APPBNativeMediaCreativeMetadata *)self setVideoFileURL:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if ((v5 & 2) != 0)
  {
    self->_width = fromCopy[10];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 52);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((fromCopy[13] & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_height = fromCopy[6];
  *&self->_has |= 1u;
  v5 = *(fromCopy + 52);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  self->_xPosition = fromCopy[11];
  *&self->_has |= 4u;
  if ((fromCopy[13] & 8) != 0)
  {
LABEL_7:
    self->_yPosition = fromCopy[12];
    *&self->_has |= 8u;
  }

LABEL_8:
  if (*(fromCopy + 1))
  {
    [(APPBNativeMediaCreativeMetadata *)self setBackgroundImage:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(APPBNativeMediaCreativeMetadata *)self setEndCard:?];
    fromCopy = v6;
  }
}

@end