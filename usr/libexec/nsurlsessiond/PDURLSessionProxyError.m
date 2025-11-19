@interface PDURLSessionProxyError
- (BOOL)isEqual:(id)a3;
- (id)_actualError;
- (id)_initWithActualError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyError

- (id)_actualError
{
  v3 = [(PDURLSessionProxyError *)self domain];
  v4 = [(PDURLSessionProxyError *)self code];
  v5 = objc_opt_class();
  v6 = [(PDURLSessionProxyError *)self userInfo];
  v7 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v5 withData:v6];
  v8 = [NSError errorWithDomain:v3 code:v4 userInfo:v7];

  return v8;
}

- (id)_initWithActualError:(id)a3
{
  v4 = a3;
  v5 = [(PDURLSessionProxyError *)self init];
  if (v5)
  {
    v6 = [v4 domain];
    [(PDURLSessionProxyError *)v5 setDomain:v6];

    -[PDURLSessionProxyError setCode:](v5, "setCode:", [v4 code]);
    v7 = [v4 userInfo];
    v8 = [v7 mutableCopy];
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
    [v7 enumerateKeysAndObjectsUsingBlock:v12];

    v10 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:v9];
    [(PDURLSessionProxyError *)v5 setUserInfo:v10];
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 36) & 2) != 0)
  {
    self->_version = *(v4 + 8);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(PDURLSessionProxyError *)self setDomain:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_code = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PDURLSessionProxyError *)self setUserInfo:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    has = self->_has;
    v6 = *(v4 + 36);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_code != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  userInfo = self->_userInfo;
  if (userInfo | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    v6[1] = self->_code;
    *(v6 + 36) |= 1u;
  }

  v9 = [(NSData *)self->_userInfo copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_version;
    *(v4 + 36) |= 2u;
  }

  v5 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_code;
    *(v4 + 36) |= 1u;
  }

  if (self->_userInfo)
  {
    [v5 setUserInfo:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
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
  v4 = [(PDURLSessionProxyError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
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