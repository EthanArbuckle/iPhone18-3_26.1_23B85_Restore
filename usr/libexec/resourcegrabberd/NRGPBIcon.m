@interface NRGPBIcon
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBIcon

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBIcon;
  v3 = [(NRGPBIcon *)&v7 description];
  v4 = [(NRGPBIcon *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_bundleID)
  {
    sub_100010CF0();
  }

  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setBundleID:self->_bundleID];
  *(v4 + 6) = self->_iconVariant;
  [v4 setIconData:self->_iconData];
  if (self->_version)
  {
    [v4 setVersion:?];
  }

  if (*&self->_has)
  {
    *(v4 + 40) = self->_deletable;
    *(v4 + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  *(v5 + 6) = self->_iconVariant;
  v8 = [(NSData *)self->_iconData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_version copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_deletable;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (self->_iconVariant != *(v4 + 6))
  {
    goto LABEL_11;
  }

  iconData = self->_iconData;
  if (iconData | *(v4 + 2))
  {
    if (![(NSData *)iconData isEqual:?])
    {
      goto LABEL_11;
    }
  }

  version = self->_version;
  if (version | *(v4 + 4))
  {
    if (![(NSString *)version isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v8 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

    if (self->_deletable)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(NRGPBIcon *)self setBundleID:?];
    v4 = v5;
  }

  self->_iconVariant = *(v4 + 6);
  if (*(v4 + 2))
  {
    [(NRGPBIcon *)self setIconData:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NRGPBIcon *)self setVersion:?];
    v4 = v5;
  }

  if (*(v4 + 44))
  {
    self->_deletable = *(v4 + 40);
    *&self->_has |= 1u;
  }
}

@end