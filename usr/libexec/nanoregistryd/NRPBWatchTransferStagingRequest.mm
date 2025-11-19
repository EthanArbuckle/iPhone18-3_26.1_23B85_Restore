@interface NRPBWatchTransferStagingRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBWatchTransferStagingRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBWatchTransferStagingRequest;
  v3 = [(NRPBWatchTransferStagingRequest *)&v7 description];
  v4 = [(NRPBWatchTransferStagingRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:self->_transferType];
  [v3 setObject:v4 forKey:@"transferType"];

  advertisedName = self->_advertisedName;
  if (advertisedName)
  {
    [v3 setObject:advertisedName forKey:@"advertisedName"];
  }

  phoneSerialNumber = self->_phoneSerialNumber;
  if (phoneSerialNumber)
  {
    [v3 setObject:phoneSerialNumber forKey:@"phoneSerialNumber"];
  }

  watchNetworkRelayIdentifierOnPhone = self->_watchNetworkRelayIdentifierOnPhone;
  if (watchNetworkRelayIdentifierOnPhone)
  {
    [v3 setObject:watchNetworkRelayIdentifierOnPhone forKey:@"watchNetworkRelayIdentifierOnPhone"];
  }

  migrationIDSCloudIdentifier = self->_migrationIDSCloudIdentifier;
  if (migrationIDSCloudIdentifier)
  {
    [v3 setObject:migrationIDSCloudIdentifier forKey:@"migrationIDSCloudIdentifier"];
  }

  altAccountIdentifier = self->_altAccountIdentifier;
  if (altAccountIdentifier)
  {
    [v3 setObject:altAccountIdentifier forKey:@"altAccountIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_watchBuddyStage];
    [v3 setObject:v11 forKey:@"watchBuddyStage"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_isAltAccount];
    [v3 setObject:v12 forKey:@"isAltAccount"];
  }

  phoneName = self->_phoneName;
  if (phoneName)
  {
    [v3 setObject:phoneName forKey:@"phoneName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  transferType = self->_transferType;
  PBDataWriterWriteUint32Field();
  advertisedName = self->_advertisedName;
  PBDataWriterWriteStringField();
  phoneSerialNumber = self->_phoneSerialNumber;
  PBDataWriterWriteStringField();
  if (self->_watchNetworkRelayIdentifierOnPhone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_migrationIDSCloudIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v11;
  if (self->_altAccountIdentifier)
  {
    PBDataWriterWriteStringField();
    v7 = v11;
  }

  has = self->_has;
  if (has)
  {
    watchBuddyStage = self->_watchBuddyStage;
    PBDataWriterWriteUint32Field();
    v7 = v11;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isAltAccount = self->_isAltAccount;
    PBDataWriterWriteBOOLField();
    v7 = v11;
  }

  if (self->_phoneName)
  {
    PBDataWriterWriteStringField();
    v7 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[12] = self->_transferType;
  v6 = [(NSString *)self->_advertisedName copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(NSString *)self->_phoneSerialNumber copyWithZone:a3];
  v9 = *(v5 + 5);
  *(v5 + 5) = v8;

  v10 = [(NSString *)self->_watchNetworkRelayIdentifierOnPhone copyWithZone:a3];
  v11 = *(v5 + 7);
  *(v5 + 7) = v10;

  v12 = [(NSString *)self->_migrationIDSCloudIdentifier copyWithZone:a3];
  v13 = *(v5 + 3);
  *(v5 + 3) = v12;

  v14 = [(NSString *)self->_altAccountIdentifier copyWithZone:a3];
  v15 = *(v5 + 2);
  *(v5 + 2) = v14;

  has = self->_has;
  if (has)
  {
    v5[13] = self->_watchBuddyStage;
    *(v5 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_isAltAccount;
    *(v5 + 68) |= 2u;
  }

  v17 = [(NSString *)self->_phoneName copyWithZone:a3];
  v18 = *(v5 + 4);
  *(v5 + 4) = v17;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  if (self->_transferType != *(v4 + 12))
  {
    goto LABEL_23;
  }

  advertisedName = self->_advertisedName;
  if (advertisedName | *(v4 + 1))
  {
    if (![(NSString *)advertisedName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  phoneSerialNumber = self->_phoneSerialNumber;
  if (phoneSerialNumber | *(v4 + 5))
  {
    if (![(NSString *)phoneSerialNumber isEqual:?])
    {
      goto LABEL_23;
    }
  }

  watchNetworkRelayIdentifierOnPhone = self->_watchNetworkRelayIdentifierOnPhone;
  if (watchNetworkRelayIdentifierOnPhone | *(v4 + 7))
  {
    if (![(NSString *)watchNetworkRelayIdentifierOnPhone isEqual:?])
    {
      goto LABEL_23;
    }
  }

  migrationIDSCloudIdentifier = self->_migrationIDSCloudIdentifier;
  if (migrationIDSCloudIdentifier | *(v4 + 3))
  {
    if (![(NSString *)migrationIDSCloudIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  altAccountIdentifier = self->_altAccountIdentifier;
  if (altAccountIdentifier | *(v4 + 2))
  {
    if (![(NSString *)altAccountIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v10 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_watchBuddyStage != *(v4 + 13))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_23;
  }

  v14 = *(v4 + 64);
  if (self->_isAltAccount)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_23;
  }

LABEL_20:
  phoneName = self->_phoneName;
  if (phoneName | *(v4 + 4))
  {
    v12 = [(NSString *)phoneName isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  transferType = self->_transferType;
  v4 = [(NSString *)self->_advertisedName hash];
  v5 = [(NSString *)self->_phoneSerialNumber hash];
  v6 = [(NSString *)self->_watchNetworkRelayIdentifierOnPhone hash];
  v7 = [(NSString *)self->_migrationIDSCloudIdentifier hash];
  v8 = [(NSString *)self->_altAccountIdentifier hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_watchBuddyStage;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    return v4 ^ v5 ^ v6 ^ v7 ^ (2654435761 * transferType) ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_phoneName hash];
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_isAltAccount;
  return v4 ^ v5 ^ v6 ^ v7 ^ (2654435761 * transferType) ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_phoneName hash];
}

@end