@interface APPBLocalizedStringEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBLocalizedStringEntry

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLocalizedStringEntry;
  v3 = [(APPBLocalizedStringEntry *)&v7 description];
  dictionaryRepresentation = [(APPBLocalizedStringEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  languageIdentifier = self->_languageIdentifier;
  if (languageIdentifier)
  {
    [v3 setObject:languageIdentifier forKey:@"languageIdentifier"];
  }

  value = self->_value;
  if (value)
  {
    [v4 setObject:value forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_languageIdentifier)
  {
    sub_10039424C();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    sub_100394220();
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  languageIdentifier = self->_languageIdentifier;
  toCopy = to;
  [toCopy setLanguageIdentifier:languageIdentifier];
  [toCopy setValue:self->_value];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_languageIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((languageIdentifier = self->_languageIdentifier, !(languageIdentifier | equalCopy[1])) || -[NSString isEqual:](languageIdentifier, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(NSString *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(APPBLocalizedStringEntry *)self setLanguageIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(APPBLocalizedStringEntry *)self setValue:?];
    fromCopy = v5;
  }
}

@end