@interface WCDProtoDaemonClientsInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WCDProtoDaemonClientsInformation

- (id)description
{
  v7.receiver = self;
  v7.super_class = WCDProtoDaemonClientsInformation;
  v3 = [(WCDProtoDaemonClientsInformation *)&v7 description];
  dictionaryRepresentation = [(WCDProtoDaemonClientsInformation *)self dictionaryRepresentation];
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

  informationData = self->_informationData;
  if (informationData)
  {
    [v3 setObject:informationData forKey:@"informationData"];
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

  if (self->_informationData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 20) |= 1u;
  }

  if (self->_informationData)
  {
    v5 = toCopy;
    [toCopy setInformationData:?];
    toCopy = v5;
  }
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

  v7 = [(NSData *)self->_informationData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
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

  informationData = self->_informationData;
  if (informationData | *(equalCopy + 1))
  {
    v7 = [(NSData *)informationData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
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

  return [(NSData *)self->_informationData hash]^ v2;
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
    [(WCDProtoDaemonClientsInformation *)self setInformationData:?];
    fromCopy = v5;
  }
}

@end