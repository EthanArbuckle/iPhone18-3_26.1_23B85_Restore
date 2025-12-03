@interface SecDbKeychainSerializedMetadataKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasKeyclass:(BOOL)keyclass;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedMetadataKey

- (void)setHasKeyclass:(BOOL)keyclass
{
  if (keyclass)
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
  dictionaryRepresentation = [(SecDbKeychainSerializedMetadataKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    keyclass = self->_keyclass;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    actualKeyclass = self->_actualKeyclass;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_baguuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_akswrappedkey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_backupwrappedkey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[10] = self->_keyclass;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_actualKeyclass;
    *(toCopy + 44) |= 1u;
  }

  v6 = toCopy;
  if (self->_baguuid)
  {
    [toCopy setBaguuid:?];
    toCopy = v6;
  }

  if (self->_akswrappedkey)
  {
    [v6 setAkswrappedkey:?];
    toCopy = v6;
  }

  if (self->_backupwrappedkey)
  {
    [v6 setBackupwrappedkey:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_baguuid copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSData *)self->_akswrappedkey copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_backupwrappedkey copyWithZone:zone];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_keyclass != *(equalCopy + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_actualKeyclass != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_18;
  }

  baguuid = self->_baguuid;
  if (baguuid | *(equalCopy + 4) && ![(NSData *)baguuid isEqual:?])
  {
    goto LABEL_18;
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey | *(equalCopy + 2))
  {
    if (![(NSData *)akswrappedkey isEqual:?])
    {
      goto LABEL_18;
    }
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_keyclass = *(fromCopy + 10);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
  }

  if (v5)
  {
    self->_actualKeyclass = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBaguuid:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setAkswrappedkey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBackupwrappedkey:?];
    fromCopy = v6;
  }
}

@end