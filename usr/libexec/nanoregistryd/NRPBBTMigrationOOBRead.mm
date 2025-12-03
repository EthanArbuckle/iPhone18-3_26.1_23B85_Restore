@interface NRPBBTMigrationOOBRead
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBBTMigrationOOBRead

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationOOBRead;
  v3 = [(NRPBBTMigrationOOBRead *)&v7 description];
  dictionaryRepresentation = [(NRPBBTMigrationOOBRead *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  oobKey = self->_oobKey;
  if (oobKey)
  {
    [v3 setObject:oobKey forKey:@"oobKey"];
  }

  challenge = self->_challenge;
  if (challenge)
  {
    [v4 setObject:challenge forKey:@"challenge"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithInt:self->_errorCode];
    [v4 setObject:v8 forKey:@"errorCode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_errorIsFatal];
    [v4 setObject:v9 forKey:@"errorIsFatal"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_oobKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    errorIsFatal = self->_errorIsFatal;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_oobKey copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_challenge copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 4) = self->_errorCode;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_errorIsFatal;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  oobKey = self->_oobKey;
  if (oobKey | *(equalCopy + 3))
  {
    if (![(NSData *)oobKey isEqual:?])
    {
      goto LABEL_13;
    }
  }

  challenge = self->_challenge;
  if (challenge | *(equalCopy + 1))
  {
    if (![(NSData *)challenge isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_errorCode != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_errorIsFatal)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

LABEL_14:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_oobKey hash];
  v4 = [(NSData *)self->_challenge hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_errorIsFatal;
  return v4 ^ v3 ^ v5 ^ v6;
}

@end