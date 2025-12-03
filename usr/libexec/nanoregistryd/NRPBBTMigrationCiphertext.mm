@interface NRPBBTMigrationCiphertext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBBTMigrationCiphertext

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationCiphertext;
  v3 = [(NRPBBTMigrationCiphertext *)&v7 description];
  dictionaryRepresentation = [(NRPBBTMigrationCiphertext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  salt = self->_salt;
  if (salt)
  {
    [v3 setObject:salt forKey:@"salt"];
  }

  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    [v4 setObject:ciphertext forKey:@"ciphertext"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_salt)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_ciphertext)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_salt copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_ciphertext copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((salt = self->_salt, !(salt | equalCopy[2])) || -[NSData isEqual:](salt, "isEqual:")))
  {
    ciphertext = self->_ciphertext;
    if (ciphertext | equalCopy[1])
    {
      v7 = [(NSData *)ciphertext isEqual:?];
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

@end