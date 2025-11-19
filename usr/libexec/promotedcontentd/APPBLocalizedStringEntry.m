@interface APPBLocalizedStringEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBLocalizedStringEntry

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLocalizedStringEntry;
  v3 = [(APPBLocalizedStringEntry *)&v7 description];
  v4 = [(APPBLocalizedStringEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_languageIdentifier)
  {
    sub_10039424C();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    sub_100394220();
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  languageIdentifier = self->_languageIdentifier;
  v5 = a3;
  [v5 setLanguageIdentifier:languageIdentifier];
  [v5 setValue:self->_value];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_languageIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((languageIdentifier = self->_languageIdentifier, !(languageIdentifier | v4[1])) || -[NSString isEqual:](languageIdentifier, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(APPBLocalizedStringEntry *)self setLanguageIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(APPBLocalizedStringEntry *)self setValue:?];
    v4 = v5;
  }
}

@end