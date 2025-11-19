@interface NPTOAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateAsDate;
- (id)description;
- (id)dictionaryRepresentation;
- (id)localIdentifier;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setDateAsDate:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOAsset

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOAsset;
  v3 = [(NPTOAsset *)&v7 description];
  v4 = [(NPTOAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuidData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSfixed64Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_uuidData)
  {
    v5 = v4;
    [v4 setUuidData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_date;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuidData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_date;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  uuidData = self->_uuidData;
  if (uuidData | *(v4 + 2))
  {
    if (![(NSData *)uuidData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_date == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(NPTOAsset *)self setUuidData:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_date = v4[1];
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

- (void)setDateAsDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
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
  v2 = [(NPTOAsset *)self uuidData];
  v3 = [v2 npto_uuid];
  v4 = [v3 UUIDString];
  v5 = [PHAsset localIdentifierWithUUID:v4];

  return v5;
}

@end