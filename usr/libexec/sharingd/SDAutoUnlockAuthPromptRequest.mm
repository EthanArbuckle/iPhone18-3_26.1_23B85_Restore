@interface SDAutoUnlockAuthPromptRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockAuthPromptRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockAuthPromptRequest;
  v3 = [(SDAutoUnlockAuthPromptRequest *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockAuthPromptRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  iconHash = self->_iconHash;
  if (iconHash)
  {
    [v3 setObject:iconHash forKey:@"iconHash"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
  }

  navBarTitle = self->_navBarTitle;
  if (navBarTitle)
  {
    [v3 setObject:navBarTitle forKey:@"navBarTitle"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_iconHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_navBarTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_version;
    *(toCopy + 36) |= 1u;
  }

  v5 = toCopy;
  if (self->_iconHash)
  {
    [toCopy setIconHash:?];
    toCopy = v5;
  }

  if (self->_appName)
  {
    [v5 setAppName:?];
    toCopy = v5;
  }

  if (self->_navBarTitle)
  {
    [v5 setNavBarTitle:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_iconHash copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_appName copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_navBarTitle copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  iconHash = self->_iconHash;
  if (iconHash | *(equalCopy + 2) && ![(NSData *)iconHash isEqual:?])
  {
    goto LABEL_13;
  }

  appName = self->_appName;
  if (appName | *(equalCopy + 1))
  {
    if (![(NSString *)appName isEqual:?])
    {
      goto LABEL_13;
    }
  }

  navBarTitle = self->_navBarTitle;
  if (navBarTitle | *(equalCopy + 3))
  {
    v9 = [(NSString *)navBarTitle isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_iconHash hash]^ v3;
  v5 = [(NSString *)self->_appName hash];
  return v4 ^ v5 ^ [(NSString *)self->_navBarTitle hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_version = fromCopy[8];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setIconHash:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setAppName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setNavBarTitle:?];
    fromCopy = v5;
  }
}

@end