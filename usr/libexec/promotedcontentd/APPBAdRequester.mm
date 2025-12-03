@interface APPBAdRequester
+ (id)options;
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

@implementation APPBAdRequester

+ (id)options
{
  if (qword_1004E6CC0 != -1)
  {
    sub_1003945DC();
  }

  v3 = qword_1004E6CB8;

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdRequester;
  v3 = [(APPBAdRequester *)&v7 description];
  dictionaryRepresentation = [(APPBAdRequester *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_width];
    [v4 setObject:v7 forKey:@"width"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithInt:self->_height];
    [v4 setObject:v8 forKey:@"height"];
  }

  contextJSON = self->_contextJSON;
  if (contextJSON)
  {
    [v4 setObject:contextJSON forKey:@"contextJSON"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
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
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_contextJSON)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_width;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_height;
    *(toCopy + 36) |= 1u;
  }

  if (self->_contextJSON)
  {
    [v6 setContextJSON:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_width;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_height;
    *(v5 + 36) |= 1u;
  }

  v9 = [(NSString *)self->_contextJSON copyWithZone:zone];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_width != *(equalCopy + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_height != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_16;
  }

  contextJSON = self->_contextJSON;
  if (contextJSON | *(equalCopy + 1))
  {
    v7 = [(NSString *)contextJSON isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_width;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_contextJSON hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_height;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_contextJSON hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(APPBAdRequester *)self setIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_width = fromCopy[8];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_height = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(APPBAdRequester *)self setContextJSON:?];
    fromCopy = v6;
  }
}

@end