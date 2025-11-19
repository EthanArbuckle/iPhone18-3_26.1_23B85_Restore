@interface SecDbKeychainSerializedSecretData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedSecretData

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedSecretData;
  v3 = [(SecDbKeychainSerializedSecretData *)&v7 description];
  v4 = [(SecDbKeychainSerializedSecretData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    [v3 setObject:ciphertext forKey:@"ciphertext"];
  }

  wrappedKey = self->_wrappedKey;
  if (wrappedKey)
  {
    [v4 setObject:wrappedKey forKey:@"wrappedKey"];
  }

  tamperCheck = self->_tamperCheck;
  if (tamperCheck)
  {
    [v4 setObject:tamperCheck forKey:@"tamperCheck"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v7 = a3;
  PBDataWriterWriteDataField();
  wrappedKey = self->_wrappedKey;
  PBDataWriterWriteDataField();
  tamperCheck = self->_tamperCheck;
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v5 = a3;
  [v5 setCiphertext:ciphertext];
  [v5 setWrappedKey:self->_wrappedKey];
  [v5 setTamperCheck:self->_tamperCheck];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_wrappedKey copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_tamperCheck copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | v4[1])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((wrappedKey = self->_wrappedKey, !(wrappedKey | v4[3])) || -[NSData isEqual:](wrappedKey, "isEqual:")))
  {
    tamperCheck = self->_tamperCheck;
    if (tamperCheck | v4[2])
    {
      v8 = [(NSString *)tamperCheck isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_wrappedKey hash]^ v3;
  return v4 ^ [(NSString *)self->_tamperCheck hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(SecDbKeychainSerializedSecretData *)self setCiphertext:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(SecDbKeychainSerializedSecretData *)self setWrappedKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SecDbKeychainSerializedSecretData *)self setTamperCheck:?];
    v4 = v5;
  }
}

@end