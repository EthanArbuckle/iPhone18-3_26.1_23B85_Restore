@interface SecDbKeychainSerializedAKSWrappedKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedAKSWrappedKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedAKSWrappedKey;
  v3 = [(SecDbKeychainSerializedAKSWrappedKey *)&v7 description];
  dictionaryRepresentation = [(SecDbKeychainSerializedAKSWrappedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  wrappedKey = self->_wrappedKey;
  if (wrappedKey)
  {
    [v3 setObject:wrappedKey forKey:@"wrappedKey"];
  }

  refKeyBlob = self->_refKeyBlob;
  if (refKeyBlob)
  {
    [v4 setObject:refKeyBlob forKey:@"refKeyBlob"];
  }

  v7 = [NSNumber numberWithUnsignedInt:self->_type];
  [v4 setObject:v7 forKey:@"type"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  wrappedKey = self->_wrappedKey;
  v7 = toCopy;
  PBDataWriterWriteDataField();
  if (self->_refKeyBlob)
  {
    PBDataWriterWriteDataField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setWrappedKey:self->_wrappedKey];
  if (self->_refKeyBlob)
  {
    [toCopy setRefKeyBlob:?];
  }

  toCopy[4] = self->_type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_wrappedKey copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_refKeyBlob copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 4) = self->_type;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((wrappedKey = self->_wrappedKey, !(wrappedKey | *(equalCopy + 3))) || -[NSData isEqual:](wrappedKey, "isEqual:")) && ((refKeyBlob = self->_refKeyBlob, !(refKeyBlob | *(equalCopy + 1))) || -[NSData isEqual:](refKeyBlob, "isEqual:")) && self->_type == *(equalCopy + 4);

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setWrappedKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setRefKeyBlob:?];
    fromCopy = v5;
  }

  self->_type = fromCopy[4];
}

@end