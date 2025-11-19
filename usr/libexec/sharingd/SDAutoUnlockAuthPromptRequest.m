@interface SDAutoUnlockAuthPromptRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockAuthPromptRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockAuthPromptRequest;
  v3 = [(SDAutoUnlockAuthPromptRequest *)&v7 description];
  v4 = [(SDAutoUnlockAuthPromptRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_iconHash)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_navBarTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_version;
    *(v4 + 36) |= 1u;
  }

  v5 = v4;
  if (self->_iconHash)
  {
    [v4 setIconHash:?];
    v4 = v5;
  }

  if (self->_appName)
  {
    [v5 setAppName:?];
    v4 = v5;
  }

  if (self->_navBarTitle)
  {
    [v5 setNavBarTitle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_iconHash copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_appName copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_navBarTitle copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  iconHash = self->_iconHash;
  if (iconHash | *(v4 + 2) && ![(NSData *)iconHash isEqual:?])
  {
    goto LABEL_13;
  }

  appName = self->_appName;
  if (appName | *(v4 + 1))
  {
    if (![(NSString *)appName isEqual:?])
    {
      goto LABEL_13;
    }
  }

  navBarTitle = self->_navBarTitle;
  if (navBarTitle | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_version = v4[8];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setIconHash:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setAppName:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(SDAutoUnlockAuthPromptRequest *)self setNavBarTitle:?];
    v4 = v5;
  }
}

@end