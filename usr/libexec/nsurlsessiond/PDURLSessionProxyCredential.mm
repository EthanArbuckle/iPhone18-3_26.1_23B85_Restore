@interface PDURLSessionProxyCredential
- (BOOL)isEqual:(id)equal;
- (id)_actualCredential;
- (id)_initWithActualCredential:(id)credential;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyCredential

- (id)_actualCredential
{
  v3 = objc_opt_class();
  archiveList = [(PDURLSessionProxyCredential *)self archiveList];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:archiveList];

  return v5;
}

- (id)_initWithActualCredential:(id)credential
{
  credentialCopy = credential;
  v5 = [(PDURLSessionProxyCredential *)self init];
  if (v5)
  {
    v6 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:credentialCopy];
    [(PDURLSessionProxyCredential *)v5 setArchiveList:v6];
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_version = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(PDURLSessionProxyCredential *)self setArchiveList:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_version;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_archiveList hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  archiveList = self->_archiveList;
  if (archiveList | *(equalCopy + 1))
  {
    v7 = [(NSData *)archiveList isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_version;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_archiveList copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 20) |= 1u;
  }

  if (self->_archiveList)
  {
    v5 = toCopy;
    [toCopy setArchiveList:?];
    toCopy = v5;
  }
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

  if (self->_archiveList)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  archiveList = self->_archiveList;
  if (archiveList)
  {
    [v3 setObject:archiveList forKey:@"archiveList"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyCredential;
  v3 = [(PDURLSessionProxyCredential *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyCredential *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end