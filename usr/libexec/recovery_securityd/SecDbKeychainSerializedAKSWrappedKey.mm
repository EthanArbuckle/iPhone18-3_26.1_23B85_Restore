@interface SecDbKeychainSerializedAKSWrappedKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedAKSWrappedKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedAKSWrappedKey;
  v3 = [(SecDbKeychainSerializedAKSWrappedKey *)&v7 description];
  v4 = [(SecDbKeychainSerializedAKSWrappedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  wrappedKey = self->_wrappedKey;
  v7 = v4;
  PBDataWriterWriteDataField();
  if (self->_refKeyBlob)
  {
    PBDataWriterWriteDataField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setWrappedKey:self->_wrappedKey];
  if (self->_refKeyBlob)
  {
    [v4 setRefKeyBlob:?];
  }

  v4[4] = self->_type;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_wrappedKey copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_refKeyBlob copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 4) = self->_type;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((wrappedKey = self->_wrappedKey, !(wrappedKey | *(v4 + 3))) || -[NSData isEqual:](wrappedKey, "isEqual:")) && ((refKeyBlob = self->_refKeyBlob, !(refKeyBlob | *(v4 + 1))) || -[NSData isEqual:](refKeyBlob, "isEqual:")) && self->_type == *(v4 + 4);

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setWrappedKey:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setRefKeyBlob:?];
    v4 = v5;
  }

  self->_type = v4[4];
}

@end