@interface SDUnlockSetupSessionCreated
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFailureReasons:(BOOL)reasons;
- (void)setHasLtkSyncing:(BOOL)syncing;
- (void)setHasSessionID:(BOOL)d;
- (void)setHasVersion:(BOOL)version;
- (void)setHasWatchNewLTKSyncStatus:(BOOL)status;
- (void)setHasWatchOldLTKSyncStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockSetupSessionCreated

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSessionID:(BOOL)d
{
  if (d)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFailureReasons:(BOOL)reasons
{
  if (reasons)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLtkSyncing:(BOOL)syncing
{
  if (syncing)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasWatchOldLTKSyncStatus:(BOOL)status
{
  if (status)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasWatchNewLTKSyncStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDUnlockSetupSessionCreated;
  v3 = [(SDUnlockSetupSessionCreated *)&v7 description];
  dictionaryRepresentation = [(SDUnlockSetupSessionCreated *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_sessionID];
    [v3 setObject:v6 forKey:@"sessionID"];
  }

  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  longTermKey = self->_longTermKey;
  if (longTermKey)
  {
    [v3 setObject:longTermKey forKey:@"longTermKey"];
  }

  v9 = self->_has;
  if (v9)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v13 forKey:@"errorCode"];

    v9 = self->_has;
    if ((v9 & 2) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = [NSNumber numberWithUnsignedInt:self->_failureReasons];
  [v3 setObject:v14 forKey:@"failureReasons"];

  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_12:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [NSNumber numberWithBool:self->_ltkSyncing];
  [v3 setObject:v15 forKey:@"ltkSyncing"];

  v9 = self->_has;
  if ((v9 & 0x20) == 0)
  {
LABEL_13:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  v16 = [NSNumber numberWithInt:self->_watchOldLTKSyncStatus];
  [v3 setObject:v16 forKey:@"watchOldLTKSyncStatus"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v10 = [NSNumber numberWithInt:self->_watchNewLTKSyncStatus];
    [v3 setObject:v10 forKey:@"watchNewLTKSyncStatus"];
  }

LABEL_15:
  ltkHash = self->_ltkHash;
  if (ltkHash)
  {
    [v3 setObject:ltkHash forKey:@"ltkHash"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v14 = toCopy;
  if ((has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v14;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    sessionID = self->_sessionID;
    PBDataWriterWriteUint32Field();
    toCopy = v14;
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
    toCopy = v14;
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v14;
  }

  v8 = self->_has;
  if (v8)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v14;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  failureReasons = self->_failureReasons;
  PBDataWriterWriteUint32Field();
  toCopy = v14;
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  ltkSyncing = self->_ltkSyncing;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  watchOldLTKSyncStatus = self->_watchOldLTKSyncStatus;
  PBDataWriterWriteInt32Field();
  toCopy = v14;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    watchNewLTKSyncStatus = self->_watchNewLTKSyncStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

LABEL_15:
  if (self->_ltkHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v14;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[12] = self->_version;
    *(toCopy + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[8] = self->_sessionID;
    *(toCopy + 64) |= 4u;
  }

  v7 = toCopy;
  if (self->_token)
  {
    [toCopy setToken:?];
    toCopy = v7;
  }

  if (self->_longTermKey)
  {
    [v7 setLongTermKey:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 64) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_11:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  toCopy[3] = self->_failureReasons;
  *(toCopy + 64) |= 2u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_12:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 60) = self->_ltkSyncing;
  *(toCopy + 64) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  toCopy[14] = self->_watchOldLTKSyncStatus;
  *(toCopy + 64) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    toCopy[13] = self->_watchNewLTKSyncStatus;
    *(toCopy + 64) |= 0x10u;
  }

LABEL_15:
  if (self->_ltkHash)
  {
    [v7 setLtkHash:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5[12] = self->_version;
    *(v5 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v5[8] = self->_sessionID;
    *(v5 + 64) |= 4u;
  }

  v8 = [(NSData *)self->_token copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSData *)self->_longTermKey copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  v12 = self->_has;
  if (v12)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 64) |= 1u;
    v12 = self->_has;
    if ((v12 & 2) == 0)
    {
LABEL_7:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 3) = self->_failureReasons;
  *(v6 + 64) |= 2u;
  v12 = self->_has;
  if ((v12 & 0x40) == 0)
  {
LABEL_8:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    *(v6 + 14) = self->_watchOldLTKSyncStatus;
    *(v6 + 64) |= 0x20u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_14:
  *(v6 + 60) = self->_ltkSyncing;
  *(v6 + 64) |= 0x40u;
  v12 = self->_has;
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((v12 & 0x10) != 0)
  {
LABEL_10:
    *(v6 + 13) = self->_watchNewLTKSyncStatus;
    *(v6 + 64) |= 0x10u;
  }

LABEL_11:
  v13 = [(NSData *)self->_ltkHash copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = *(equalCopy + 64);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_version != *(equalCopy + 12))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_sessionID != *(equalCopy + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_46;
  }

  token = self->_token;
  if (token | *(equalCopy + 5) && ![(NSData *)token isEqual:?])
  {
    goto LABEL_46;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(equalCopy + 2))
  {
    if (![(NSData *)longTermKey isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v8 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_failureReasons != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(equalCopy + 64) & 0x40) == 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    v11 = 0;
    goto LABEL_47;
  }

  if ((*(equalCopy + 64) & 0x40) == 0)
  {
    goto LABEL_46;
  }

  v9 = *(equalCopy + 60);
  if (self->_ltkSyncing)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_46;
  }

LABEL_28:
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) == 0 || self->_watchOldLTKSyncStatus != *(equalCopy + 14))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 64) & 0x20) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_watchNewLTKSyncStatus != *(equalCopy + 13))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  ltkHash = self->_ltkHash;
  if (ltkHash | *(equalCopy + 3))
  {
    v11 = [(NSData *)ltkHash isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_47:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_version;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sessionID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_token hash];
  v6 = [(NSData *)self->_longTermKey hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 2) != 0)
    {
LABEL_8:
      v8 = 2654435761 * self->_failureReasons;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_ltkSyncing;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v10 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_ltkHash hash];
  }

LABEL_14:
  v9 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v10 = 2654435761 * self->_watchOldLTKSyncStatus;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v11 = 2654435761 * self->_watchNewLTKSyncStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_ltkHash hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 64);
  if ((v5 & 8) != 0)
  {
    self->_version = *(fromCopy + 12);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 64);
  }

  if ((v5 & 4) != 0)
  {
    self->_sessionID = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(SDUnlockSetupSessionCreated *)self setToken:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(SDUnlockSetupSessionCreated *)self setLongTermKey:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 64);
  if (v6)
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 64);
    if ((v6 & 2) == 0)
    {
LABEL_11:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*(fromCopy + 64) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_failureReasons = *(fromCopy + 3);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_12:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_ltkSyncing = *(fromCopy + 60);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  self->_watchOldLTKSyncStatus = *(fromCopy + 14);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 64) & 0x10) != 0)
  {
LABEL_14:
    self->_watchNewLTKSyncStatus = *(fromCopy + 13);
    *&self->_has |= 0x10u;
  }

LABEL_15:
  if (*(fromCopy + 3))
  {
    [(SDUnlockSetupSessionCreated *)self setLtkHash:?];
    fromCopy = v7;
  }
}

@end