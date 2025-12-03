@interface _NMROriginProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _NMROriginProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMROriginProtobuf;
  v3 = [(_NMROriginProtobuf *)&v7 description];
  dictionaryRepresentation = [(_NMROriginProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithInt:self->_uniqueIdentifier];
    [v3 setObject:v4 forKey:@"uniqueIdentifier"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  deviceInfoData = self->_deviceInfoData;
  if (deviceInfoData)
  {
    [v3 setObject:deviceInfoData forKey:@"deviceInfoData"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deviceInfoData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_uniqueIdentifier;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
    toCopy = v5;
  }

  if (self->_deviceInfoData)
  {
    [v5 setDeviceInfoData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_uniqueIdentifier;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_displayName copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_deviceInfoData copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_uniqueIdentifier != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2) && ![(NSString *)displayName isEqual:?])
  {
    goto LABEL_11;
  }

  deviceInfoData = self->_deviceInfoData;
  if (deviceInfoData | *(equalCopy + 1))
  {
    v8 = [(NSData *)deviceInfoData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_uniqueIdentifier;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_displayName hash]^ v3;
  return v4 ^ [(NSData *)self->_deviceInfoData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_uniqueIdentifier = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_NMROriginProtobuf *)self setDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(_NMROriginProtobuf *)self setDeviceInfoData:?];
    fromCopy = v5;
  }
}

@end