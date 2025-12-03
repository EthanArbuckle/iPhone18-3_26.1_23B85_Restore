@interface SecDbKeychainSerializedItemV7
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKeyclass:(id)keyclass;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedItemV7

- (int)StringAsKeyclass:(id)keyclass
{
  keyclassCopy = keyclass;
  if ([keyclassCopy isEqualToString:@"KEYCLASS_AK"])
  {
    v4 = 6;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_CK"])
  {
    v4 = 7;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_DK"])
  {
    v4 = 8;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_AKU"])
  {
    v4 = 9;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_CKU"])
  {
    v4 = 10;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_DKU"])
  {
    v4 = 11;
  }

  else if ([keyclassCopy isEqualToString:@"KEYCLASS_AKPU"])
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
  dictionaryRepresentation = [(SecDbKeychainSerializedItemV7 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  encryptedSecretData = self->_encryptedSecretData;
  toCopy = to;
  PBDataWriterWriteDataField();
  encryptedMetadata = self->_encryptedMetadata;
  PBDataWriterWriteDataField();
  keyclass = self->_keyclass;
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  encryptedSecretData = self->_encryptedSecretData;
  toCopy = to;
  [toCopy setEncryptedSecretData:encryptedSecretData];
  [toCopy setEncryptedMetadata:self->_encryptedMetadata];
  toCopy[6] = self->_keyclass;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptedSecretData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptedMetadata copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 6) = self->_keyclass;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((encryptedSecretData = self->_encryptedSecretData, !(encryptedSecretData | *(equalCopy + 2))) || -[NSData isEqual:](encryptedSecretData, "isEqual:")) && ((encryptedMetadata = self->_encryptedMetadata, !(encryptedMetadata | *(equalCopy + 1))) || -[NSData isEqual:](encryptedMetadata, "isEqual:")) && self->_keyclass == *(equalCopy + 6);

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedSecretData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedMetadata:?];
    fromCopy = v5;
  }

  self->_keyclass = fromCopy[6];
}

@end