@interface APPBAdRequester
+ (id)options;
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
  v7.super_class = APPBAdRequester;
  v3 = [(APPBAdRequester *)&v7 description];
  v4 = [(APPBAdRequester *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_contextJSON)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_width;
    *(v4 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_height;
    *(v4 + 36) |= 1u;
  }

  if (self->_contextJSON)
  {
    [v6 setContextJSON:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
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

  v9 = [(NSString *)self->_contextJSON copyWithZone:a3];
  v10 = v5[1];
  v5[1] = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_width != *(v4 + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_height != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  contextJSON = self->_contextJSON;
  if (contextJSON | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(APPBAdRequester *)self setIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_width = v4[8];
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_height = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(APPBAdRequester *)self setContextJSON:?];
    v4 = v6;
  }
}

@end