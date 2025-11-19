@interface NRPBBTMigrationOOBRead
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBBTMigrationOOBRead

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationOOBRead;
  v3 = [(NRPBBTMigrationOOBRead *)&v7 description];
  v4 = [(NRPBBTMigrationOOBRead *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_oobKey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    errorIsFatal = self->_errorIsFatal;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_oobKey copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_challenge copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  oobKey = self->_oobKey;
  if (oobKey | *(v4 + 3))
  {
    if (![(NSData *)oobKey isEqual:?])
    {
      goto LABEL_13;
    }
  }

  challenge = self->_challenge;
  if (challenge | *(v4 + 1))
  {
    if (![(NSData *)challenge isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_errorCode != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_errorIsFatal)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 32))
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