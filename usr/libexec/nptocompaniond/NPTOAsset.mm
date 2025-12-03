@interface NPTOAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateAsDate;
- (id)description;
- (id)dictionaryRepresentation;
- (id)localIdentifier;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setDateAsDate:(id)date;
- (void)writeTo:(id)to;
@end

@implementation NPTOAsset

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOAsset;
  v3 = [(NPTOAsset *)&v7 description];
  dictionaryRepresentation = [(NPTOAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuidData = self->_uuidData;
  if (uuidData)
  {
    [v3 setObject:uuidData forKey:@"uuidData"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithLongLong:self->_date];
    [v4 setObject:v6 forKey:@"date"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuidData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSfixed64Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuidData)
  {
    v5 = toCopy;
    [toCopy setUuidData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_date;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuidData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_date;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  uuidData = self->_uuidData;
  if (uuidData | *(equalCopy + 2))
  {
    if (![(NSData *)uuidData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_date == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuidData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_date;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(NPTOAsset *)self setUuidData:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_date = fromCopy[1];
    *&self->_has |= 1u;
  }
}

- (id)dateAsDate
{
  if ([(NPTOAsset *)self hasDate])
  {
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:[(NPTOAsset *)self date]/ 1000.0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDateAsDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v5 = llround(v4 * 1000.0);

    [(NPTOAsset *)self setDate:v5];
  }

  else
  {

    [(NPTOAsset *)self setHasDate:?];
  }
}

- (id)localIdentifier
{
  uuidData = [(NPTOAsset *)self uuidData];
  npto_uuid = [uuidData npto_uuid];
  uUIDString = [npto_uuid UUIDString];
  v5 = [PHAsset localIdentifierWithUUID:uUIDString];

  return v5;
}

@end