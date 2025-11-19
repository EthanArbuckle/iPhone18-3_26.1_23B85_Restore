@interface PDURLSessionProxyResponse
- (BOOL)isEqual:(id)a3;
- (id)_actualResponse;
- (id)_initWithActualResponse:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyResponse

- (id)_actualResponse
{
  v3 = objc_opt_class();
  v4 = [(PDURLSessionProxyResponse *)self archiveList];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:v4];

  return v5;
}

- (id)_initWithActualResponse:(id)a3
{
  v4 = a3;
  v5 = [(PDURLSessionProxyResponse *)self init];
  if (v5)
  {
    v6 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:v4];
    [(PDURLSessionProxyResponse *)v5 setArchiveList:v6];
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_version = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(PDURLSessionProxyResponse *)self setArchiveList:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  archiveList = self->_archiveList;
  if (archiveList | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_version;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_archiveList copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_version;
    *(v4 + 20) |= 1u;
  }

  if (self->_archiveList)
  {
    v5 = v4;
    [v4 setArchiveList:?];
    v4 = v5;
  }
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

  if (self->_archiveList)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
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
  v7.super_class = PDURLSessionProxyResponse;
  v3 = [(PDURLSessionProxyResponse *)&v7 description];
  v4 = [(PDURLSessionProxyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end