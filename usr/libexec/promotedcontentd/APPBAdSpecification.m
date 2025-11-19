@interface APPBAdSpecification
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)typeAsString:(int)a3
{
  if (a3 < 0xC && ((0xF35u >> a3) & 1) != 0)
  {
    v4 = off_10047CBA8[a3];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Interstitial"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IABMediumRectangle"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Video"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Flexible"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Native"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Sponsorship"])
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
  v4 = [(APPBAdSpecification *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_section)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_section)
  {
    v5 = v4;
    [v4 setSection:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_section copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_type;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  section = self->_section;
  if (section | *(v4 + 1))
  {
    if (![(NSString *)section isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_type == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(APPBAdSpecification *)self setSection:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_type = v4[4];
    *&self->_has |= 1u;
  }
}

@end