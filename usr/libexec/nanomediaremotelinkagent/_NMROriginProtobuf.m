@interface _NMROriginProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMROriginProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMROriginProtobuf;
  v3 = [(_NMROriginProtobuf *)&v7 description];
  v4 = [(_NMROriginProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceInfoData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_uniqueIdentifier;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_displayName)
  {
    [v4 setDisplayName:?];
    v4 = v5;
  }

  if (self->_deviceInfoData)
  {
    [v5 setDeviceInfoData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_uniqueIdentifier;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_displayName copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_deviceInfoData copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_uniqueIdentifier != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 2) && ![(NSString *)displayName isEqual:?])
  {
    goto LABEL_11;
  }

  deviceInfoData = self->_deviceInfoData;
  if (deviceInfoData | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_uniqueIdentifier = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(_NMROriginProtobuf *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(_NMROriginProtobuf *)self setDeviceInfoData:?];
    v4 = v5;
  }
}

@end