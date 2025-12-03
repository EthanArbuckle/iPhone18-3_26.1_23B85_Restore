@interface NRGPBIcon
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NRGPBIcon

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBIcon;
  v3 = [(NRGPBIcon *)&v7 description];
  dictionaryRepresentation = [(NRGPBIcon *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  v6 = [NSNumber numberWithInt:self->_iconVariant];
  [v4 setObject:v6 forKey:@"iconVariant"];

  iconData = self->_iconData;
  if (iconData)
  {
    [v4 setObject:iconData forKey:@"iconData"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  if (*&self->_has)
  {
    v9 = [NSNumber numberWithBool:self->_deletable];
    [v4 setObject:v9 forKey:@"deletable"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_bundleID)
  {
    sub_100010CF0();
  }

  v7 = toCopy;
  PBDataWriterWriteStringField();
  iconVariant = self->_iconVariant;
  PBDataWriterWriteInt32Field();
  if (!self->_iconData)
  {
    sub_100010CC4();
  }

  PBDataWriterWriteDataField();
  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    deletable = self->_deletable;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setBundleID:self->_bundleID];
  *(toCopy + 6) = self->_iconVariant;
  [toCopy setIconData:self->_iconData];
  if (self->_version)
  {
    [toCopy setVersion:?];
  }

  if (*&self->_has)
  {
    *(toCopy + 40) = self->_deletable;
    *(toCopy + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  *(v5 + 6) = self->_iconVariant;
  v8 = [(NSData *)self->_iconData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_version copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_deletable;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (self->_iconVariant != *(equalCopy + 6))
  {
    goto LABEL_11;
  }

  iconData = self->_iconData;
  if (iconData | *(equalCopy + 2))
  {
    if (![(NSData *)iconData isEqual:?])
    {
      goto LABEL_11;
    }
  }

  version = self->_version;
  if (version | *(equalCopy + 4))
  {
    if (![(NSString *)version isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v8 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

    if (self->_deletable)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_11;
    }

    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  iconVariant = self->_iconVariant;
  v5 = [(NSData *)self->_iconData hash];
  v6 = [(NSString *)self->_version hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_deletable;
  }

  else
  {
    v7 = 0;
  }

  return (2654435761 * iconVariant) ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NRGPBIcon *)self setBundleID:?];
    fromCopy = v5;
  }

  self->_iconVariant = *(fromCopy + 6);
  if (*(fromCopy + 2))
  {
    [(NRGPBIcon *)self setIconData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NRGPBIcon *)self setVersion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_deletable = *(fromCopy + 40);
    *&self->_has |= 1u;
  }
}

@end