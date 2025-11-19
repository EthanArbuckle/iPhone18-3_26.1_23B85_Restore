@interface SecDbKeychainSerializedItemV7
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKeyclass:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedItemV7

- (int)StringAsKeyclass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KEYCLASS_AK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_CK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_DK"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_AKU"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_CKU"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_DKU"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_AKPU"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedItemV7;
  v3 = [(SecDbKeychainSerializedItemV7 *)&v7 description];
  v4 = [(SecDbKeychainSerializedItemV7 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  encryptedSecretData = self->_encryptedSecretData;
  if (encryptedSecretData)
  {
    [v3 setObject:encryptedSecretData forKey:@"encryptedSecretData"];
  }

  encryptedMetadata = self->_encryptedMetadata;
  if (encryptedMetadata)
  {
    [v4 setObject:encryptedMetadata forKey:@"encryptedMetadata"];
  }

  v7 = self->_keyclass - 6;
  if (v7 >= 7)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_keyclass];
  }

  else
  {
    v8 = *(&off_100063400 + v7);
  }

  [v4 setObject:v8 forKey:@"keyclass"];

  return v4;
}

- (void)writeTo:(id)a3
{
  encryptedSecretData = self->_encryptedSecretData;
  v7 = a3;
  PBDataWriterWriteDataField();
  encryptedMetadata = self->_encryptedMetadata;
  PBDataWriterWriteDataField();
  keyclass = self->_keyclass;
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  encryptedSecretData = self->_encryptedSecretData;
  v5 = a3;
  [v5 setEncryptedSecretData:encryptedSecretData];
  [v5 setEncryptedMetadata:self->_encryptedMetadata];
  v5[6] = self->_keyclass;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptedSecretData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptedMetadata copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 6) = self->_keyclass;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((encryptedSecretData = self->_encryptedSecretData, !(encryptedSecretData | *(v4 + 2))) || -[NSData isEqual:](encryptedSecretData, "isEqual:")) && ((encryptedMetadata = self->_encryptedMetadata, !(encryptedMetadata | *(v4 + 1))) || -[NSData isEqual:](encryptedMetadata, "isEqual:")) && self->_keyclass == *(v4 + 6);

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedSecretData:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedMetadata:?];
    v4 = v5;
  }

  self->_keyclass = v4[6];
}

@end