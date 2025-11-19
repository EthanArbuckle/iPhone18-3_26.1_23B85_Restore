@interface NEKPBCalendarIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBCalendarIdentifier

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBCalendarIdentifier;
  v3 = [(NEKPBCalendarIdentifier *)&v7 description];
  v4 = [(NEKPBCalendarIdentifier *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithBool:self->_isDefaultLocalCalendar];
    [v4 setObject:v6 forKey:@"isDefaultLocalCalendar"];
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

  if (*&self->_has)
  {
    isDefaultLocalCalendar = self->_isDefaultLocalCalendar;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_identifier)
  {
    v5 = v4;
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[16] = self->_isDefaultLocalCalendar;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_isDefaultLocalCalendar;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_isDefaultLocalCalendar)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isDefaultLocalCalendar;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(NEKPBCalendarIdentifier *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[20])
  {
    self->_isDefaultLocalCalendar = v4[16];
    *&self->_has |= 1u;
  }
}

@end