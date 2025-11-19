@interface SecDbKeychainSerializedMetadataKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasKeyclass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedMetadataKey

- (void)setHasKeyclass:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedMetadataKey;
  v3 = [(SecDbKeychainSerializedMetadataKey *)&v7 description];
  v4 = [(SecDbKeychainSerializedMetadataKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_keyclass];
    [v3 setObject:v5 forKey:@"keyclass"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithInt:self->_actualKeyclass];
    [v3 setObject:v6 forKey:@"actualKeyclass"];
  }

  baguuid = self->_baguuid;
  if (baguuid)
  {
    [v3 setObject:baguuid forKey:@"baguuid"];
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey)
  {
    [v3 setObject:akswrappedkey forKey:@"akswrappedkey"];
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey)
  {
    [v3 setObject:backupwrappedkey forKey:@"backupwrappedkey"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    keyclass = self->_keyclass;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    actualKeyclass = self->_actualKeyclass;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_baguuid)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_akswrappedkey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_backupwrappedkey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[10] = self->_keyclass;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_actualKeyclass;
    *(v4 + 44) |= 1u;
  }

  v6 = v4;
  if (self->_baguuid)
  {
    [v4 setBaguuid:?];
    v4 = v6;
  }

  if (self->_akswrappedkey)
  {
    [v6 setAkswrappedkey:?];
    v4 = v6;
  }

  if (self->_backupwrappedkey)
  {
    [v6 setBackupwrappedkey:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 10) = self->_keyclass;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 2) = self->_actualKeyclass;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSData *)self->_baguuid copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSData *)self->_akswrappedkey copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_backupwrappedkey copyWithZone:a3];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_keyclass != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_actualKeyclass != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  baguuid = self->_baguuid;
  if (baguuid | *(v4 + 4) && ![(NSData *)baguuid isEqual:?])
  {
    goto LABEL_18;
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey | *(v4 + 2))
  {
    if (![(NSData *)akswrappedkey isEqual:?])
    {
      goto LABEL_18;
    }
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey | *(v4 + 3))
  {
    v9 = [(NSData *)backupwrappedkey isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_keyclass;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_actualKeyclass;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_baguuid hash];
  v6 = [(NSData *)self->_akswrappedkey hash];
  return v5 ^ v6 ^ [(NSData *)self->_backupwrappedkey hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_keyclass = *(v4 + 10);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_actualKeyclass = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 4))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBaguuid:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setAkswrappedkey:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBackupwrappedkey:?];
    v4 = v6;
  }
}

@end