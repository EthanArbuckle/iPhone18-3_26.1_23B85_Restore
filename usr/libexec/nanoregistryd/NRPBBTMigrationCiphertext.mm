@interface NRPBBTMigrationCiphertext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NRPBBTMigrationCiphertext

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationCiphertext;
  v3 = [(NRPBBTMigrationCiphertext *)&v7 description];
  v4 = [(NRPBBTMigrationCiphertext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_salt)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_ciphertext)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_salt copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_ciphertext copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((salt = self->_salt, !(salt | v4[2])) || -[NSData isEqual:](salt, "isEqual:")))
  {
    ciphertext = self->_ciphertext;
    if (ciphertext | v4[1])
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