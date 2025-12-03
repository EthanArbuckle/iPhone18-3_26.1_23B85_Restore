@interface PDURLSessionProxyError
- (BOOL)isEqual:(id)equal;
- (id)_actualError;
- (id)_initWithActualError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyError

- (id)_actualError
{
  domain = [(PDURLSessionProxyError *)self domain];
  code = [(PDURLSessionProxyError *)self code];
  v5 = objc_opt_class();
  userInfo = [(PDURLSessionProxyError *)self userInfo];
  v7 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v5 withData:userInfo];
  v8 = [NSError errorWithDomain:domain code:code userInfo:v7];

  return v8;
}

- (id)_initWithActualError:(id)error
{
  errorCopy = error;
  v5 = [(PDURLSessionProxyError *)self init];
  if (v5)
  {
    domain = [errorCopy domain];
    [(PDURLSessionProxyError *)v5 setDomain:domain];

    -[PDURLSessionProxyError setCode:](v5, "setCode:", [errorCopy code]);
    userInfo = [errorCopy userInfo];
    v8 = [userInfo mutableCopy];
    [v8 removeObjectForKey:@"NSErrorPeerCertificateChainKey"];
    [v8 removeObjectForKey:@"NSErrorClientCertificateChainKey"];
    [v8 removeObjectForKey:NSURLErrorFailingURLPeerTrustErrorKey];
    [v8 removeObjectForKey:NSUnderlyingErrorKey];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100041A14;
    v12[3] = &unk_1000D55D0;
    v9 = v8;
    v13 = v9;
    [userInfo enumerateKeysAndObjectsUsingBlock:v12];

    v10 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:v9];
    [(PDURLSessionProxyError *)v5 setUserInfo:v10];
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_version = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PDURLSessionProxyError *)self setDomain:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 36))
  {
    self->_code = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PDURLSessionProxyError *)self setUserInfo:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_code;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_userInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_code != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  userInfo = self->_userInfo;
  if (userInfo | *(equalCopy + 3))
  {
    v9 = [(NSData *)userInfo isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    v6[1] = self->_code;
    *(v6 + 36) |= 1u;
  }

  v9 = [(NSData *)self->_userInfo copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_version;
    *(toCopy + 36) |= 2u;
  }

  v5 = toCopy;
  if (self->_domain)
  {
    [toCopy setDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_code;
    *(toCopy + 36) |= 1u;
  }

  if (self->_userInfo)
  {
    [v5 setUserInfo:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_code];
    [v3 setObject:v6 forKey:@"code"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v3 setObject:userInfo forKey:@"userInfo"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyError;
  v3 = [(PDURLSessionProxyError *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end