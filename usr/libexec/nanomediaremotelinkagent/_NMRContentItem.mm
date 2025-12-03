@interface _NMRContentItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _NMRContentItem

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRContentItem;
  v3 = [(_NMRContentItem *)&v7 description];
  dictionaryRepresentation = [(_NMRContentItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(_NMRContentItemMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_NMRContentItemMetadata *)self->_metadata copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | equalCopy[2])
    {
      v7 = [(_NMRContentItemMetadata *)metadata isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(_NMRContentItem *)self setIdentifier:?];
    fromCopy = v7;
  }

  metadata = self->_metadata;
  v6 = fromCopy[2];
  if (metadata)
  {
    if (v6)
    {
      [(_NMRContentItemMetadata *)metadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_NMRContentItem *)self setMetadata:?];
  }

  _objc_release_x1();
}

@end