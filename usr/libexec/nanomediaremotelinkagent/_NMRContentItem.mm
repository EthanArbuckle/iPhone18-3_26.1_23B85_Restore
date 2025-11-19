@interface _NMRContentItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRContentItem

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRContentItem;
  v3 = [(_NMRContentItem *)&v7 description];
  v4 = [(_NMRContentItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(_NMRContentItemMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_NMRContentItemMetadata *)self->_metadata copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(_NMRContentItem *)self setIdentifier:?];
    v4 = v7;
  }

  metadata = self->_metadata;
  v6 = v4[2];
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