@interface SDAutoUnlockSessionWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAwdlCacheID:(BOOL)a3;
- (void)setHasMessageType:(BOOL)a3;
- (void)setHasUseProxy:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockSessionWrapper

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMessageType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUseProxy:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAwdlCacheID:(BOOL)a3
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
  v7.super_class = SDAutoUnlockSessionWrapper;
  v3 = [(SDAutoUnlockSessionWrapper *)&v7 description];
  v4 = [(SDAutoUnlockSessionWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 8) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_messageType];
    [v3 setObject:v7 forKey:@"messageType"];
  }

  senderID = self->_senderID;
  if (senderID)
  {
    [v3 setObject:senderID forKey:@"senderID"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v15 = [NSNumber numberWithBool:self->_useProxy];
    [v3 setObject:v15 forKey:@"useProxy"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_awdlCacheID];
  [v3 setObject:v16 forKey:@"awdlCacheID"];

  if (*&self->_has)
  {
LABEL_14:
    v10 = [NSNumber numberWithUnsignedInt:self->_aksSessionID];
    [v3 setObject:v10 forKey:@"aksSessionID"];
  }

LABEL_15:
  encryptedPayload = self->_encryptedPayload;
  if (encryptedPayload)
  {
    [v3 setObject:encryptedPayload forKey:@"encryptedPayload"];
  }

  authTag = self->_authTag;
  if (authTag)
  {
    [v3 setObject:authTag forKey:@"authTag"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v3 setObject:nonce forKey:@"nonce"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if ((*&self->_has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v11;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    messageType = self->_messageType;
    PBDataWriterWriteUint32Field();
    v4 = v11;
  }

  if (self->_senderID)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    useProxy = self->_useProxy;
    PBDataWriterWriteBOOLField();
    v4 = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  awdlCacheID = self->_awdlCacheID;
  PBDataWriterWriteUint32Field();
  v4 = v11;
  if (*&self->_has)
  {
LABEL_14:
    aksSessionID = self->_aksSessionID;
    PBDataWriterWriteUint32Field();
    v4 = v11;
  }

LABEL_15:
  if (self->_encryptedPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_authTag)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_nonce)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[20] = self->_version;
    *(v4 + 88) |= 8u;
  }

  v6 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v6;
  }

  if (self->_payload)
  {
    [v6 setPayload:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[10] = self->_messageType;
    *(v4 + 88) |= 4u;
  }

  if (self->_senderID)
  {
    [v6 setSenderID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 84) = self->_useProxy;
    *(v4 + 88) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v4[6] = self->_awdlCacheID;
  *(v4 + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_14:
    v4[2] = self->_aksSessionID;
    *(v4 + 88) |= 1u;
  }

LABEL_15:
  if (self->_encryptedPayload)
  {
    [v6 setEncryptedPayload:?];
    v4 = v6;
  }

  if (self->_authTag)
  {
    [v6 setAuthTag:?];
    v4 = v6;
  }

  if (self->_nonce)
  {
    [v6 setNonce:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    v5[20] = self->_version;
    *(v5 + 88) |= 8u;
  }

  v7 = [(NSData *)self->_sessionID copyWithZone:a3];
  v8 = v6[9];
  v6[9] = v7;

  v9 = [(NSData *)self->_payload copyWithZone:a3];
  v10 = v6[7];
  v6[7] = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 10) = self->_messageType;
    *(v6 + 88) |= 4u;
  }

  v11 = [(NSData *)self->_senderID copyWithZone:a3];
  v12 = v6[8];
  v6[8] = v11;

  has = self->_has;
  if ((has & 0x10) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 6) = self->_awdlCacheID;
    *(v6 + 88) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v6 + 84) = self->_useProxy;
  *(v6 + 88) |= 0x10u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (has)
  {
LABEL_8:
    *(v6 + 2) = self->_aksSessionID;
    *(v6 + 88) |= 1u;
  }

LABEL_9:
  v14 = [(NSData *)self->_encryptedPayload copyWithZone:a3];
  v15 = v6[4];
  v6[4] = v14;

  v16 = [(NSData *)self->_authTag copyWithZone:a3];
  v17 = v6[2];
  v6[2] = v16;

  v18 = [(NSData *)self->_nonce copyWithZone:a3];
  v19 = v6[6];
  v6[6] = v18;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(v4 + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0 || self->_version != *(v4 + 20))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
    goto LABEL_43;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 9) && ![(NSData *)sessionID isEqual:?])
  {
    goto LABEL_43;
  }

  payload = self->_payload;
  if (payload | *(v4 + 7))
  {
    if (![(NSData *)payload isEqual:?])
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v9 = *(v4 + 88);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 88) & 4) == 0 || self->_messageType != *(v4 + 10))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 88) & 4) != 0)
  {
    goto LABEL_43;
  }

  senderID = self->_senderID;
  if (senderID | *(v4 + 8))
  {
    if (![(NSData *)senderID isEqual:?])
    {
      goto LABEL_43;
    }

    has = self->_has;
  }

  v11 = *(v4 + 88);
  if ((has & 0x10) == 0)
  {
    if ((*(v4 + 88) & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  if ((*(v4 + 88) & 0x10) == 0)
  {
    goto LABEL_43;
  }

  v12 = *(v4 + 84);
  if (self->_useProxy)
  {
    if ((*(v4 + 84) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_43;
  }

LABEL_21:
  if ((has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_awdlCacheID != *(v4 + 6))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_43;
  }

  if (has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_aksSessionID != *(v4 + 2))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_43;
  }

  encryptedPayload = self->_encryptedPayload;
  if (encryptedPayload | *(v4 + 4) && ![(NSData *)encryptedPayload isEqual:?])
  {
    goto LABEL_43;
  }

  authTag = self->_authTag;
  if (authTag | *(v4 + 2))
  {
    if (![(NSData *)authTag isEqual:?])
    {
      goto LABEL_43;
    }
  }

  nonce = self->_nonce;
  if (nonce | *(v4 + 6))
  {
    v16 = [(NSData *)nonce isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_44:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_sessionID hash];
  v5 = [(NSData *)self->_payload hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_messageType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSData *)self->_senderID hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v8 = 2654435761 * self->_useProxy;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = 2654435761 * self->_awdlCacheID;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = 2654435761 * self->_aksSessionID;
LABEL_14:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSData *)self->_encryptedPayload hash];
  v13 = v12 ^ [(NSData *)self->_authTag hash];
  return v11 ^ v13 ^ [(NSData *)self->_nonce hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 88) & 8) != 0)
  {
    self->_version = *(v4 + 20);
    *&self->_has |= 8u;
  }

  v6 = v4;
  if (*(v4 + 9))
  {
    [(SDAutoUnlockSessionWrapper *)self setSessionID:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(SDAutoUnlockSessionWrapper *)self setPayload:?];
    v4 = v6;
  }

  if ((*(v4 + 88) & 4) != 0)
  {
    self->_messageType = *(v4 + 10);
    *&self->_has |= 4u;
  }

  if (*(v4 + 8))
  {
    [(SDAutoUnlockSessionWrapper *)self setSenderID:?];
    v4 = v6;
  }

  v5 = *(v4 + 88);
  if ((v5 & 0x10) != 0)
  {
    self->_useProxy = *(v4 + 84);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_13:
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 88) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_awdlCacheID = *(v4 + 6);
  *&self->_has |= 2u;
  if (*(v4 + 88))
  {
LABEL_14:
    self->_aksSessionID = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_15:
  if (*(v4 + 4))
  {
    [(SDAutoUnlockSessionWrapper *)self setEncryptedPayload:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SDAutoUnlockSessionWrapper *)self setAuthTag:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(SDAutoUnlockSessionWrapper *)self setNonce:?];
    v4 = v6;
  }
}

@end