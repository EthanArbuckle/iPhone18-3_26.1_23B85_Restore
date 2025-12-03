@interface APPBAdSpecification
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBAdSpecification

+ (id)options
{
  if (qword_1004E6948 != -1)
  {
    sub_100393ABC();
  }

  v3 = qword_1004E6940;

  return v3;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (id)typeAsString:(int)string
{
  if (string < 0xC && ((0xF35u >> string) & 1) != 0)
  {
    v4 = off_10047CBA8[string];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Interstitial"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"IABMediumRectangle"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Audio"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Video"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Flexible"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Native"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"Sponsorship"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdSpecification;
  v3 = [(APPBAdSpecification *)&v7 description];
  dictionaryRepresentation = [(APPBAdSpecification *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  section = self->_section;
  if (section)
  {
    [v3 setObject:section forKey:@"section"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type < 0xC && ((0xF35u >> type) & 1) != 0)
    {
      v7 = off_10047CBA8[type];
    }

    else
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    [v4 setObject:v7 forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_section)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_section)
  {
    v5 = toCopy;
    [toCopy setSection:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_type;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_section copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_type;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  section = self->_section;
  if (section | *(equalCopy + 1))
  {
    if (![(NSString *)section isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_type == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_section hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(APPBAdSpecification *)self setSection:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_type = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end