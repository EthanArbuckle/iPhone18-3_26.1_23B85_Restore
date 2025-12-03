@interface SecDbKeychainSerializedMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedMetadata;
  v3 = [(SecDbKeychainSerializedMetadata *)&v7 description];
  dictionaryRepresentation = [(SecDbKeychainSerializedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  PBDataWriterWriteDataField();
  wrappedKey = self->_wrappedKey;
  PBDataWriterWriteDataField();
  tamperCheck = self->_tamperCheck;
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  [toCopy setCiphertext:ciphertext];
  [toCopy setWrappedKey:self->_wrappedKey];
  [toCopy setTamperCheck:self->_tamperCheck];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_wrappedKey copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_tamperCheck copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | equalCopy[1])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((wrappedKey = self->_wrappedKey, !(wrappedKey | equalCopy[3])) || -[NSData isEqual:](wrappedKey, "isEqual:")))
  {
    tamperCheck = self->_tamperCheck;
    if (tamperCheck | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(SecDbKeychainSerializedMetadata *)self setCiphertext:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(SecDbKeychainSerializedMetadata *)self setWrappedKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SecDbKeychainSerializedMetadata *)self setTamperCheck:?];
    fromCopy = v5;
  }
}

@end