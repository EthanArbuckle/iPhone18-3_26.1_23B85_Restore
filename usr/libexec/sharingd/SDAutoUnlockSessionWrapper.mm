@interface SDAutoUnlockSessionWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAwdlCacheID:(BOOL)d;
- (void)setHasMessageType:(BOOL)type;
- (void)setHasUseProxy:(BOOL)proxy;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockSessionWrapper

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

- (void)setHasMessageType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUseProxy:(BOOL)proxy
{
  if (proxy)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAwdlCacheID:(BOOL)d
{
  if (d)
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
  dictionaryRepresentation = [(SDAutoUnlockSessionWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    messageType = self->_messageType;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }

  if (self->_senderID)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    useProxy = self->_useProxy;
    PBDataWriterWriteBOOLField();
    toCopy = v11;
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
  toCopy = v11;
  if (*&self->_has)
  {
LABEL_14:
    aksSessionID = self->_aksSessionID;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }

LABEL_15:
  if (self->_encryptedPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_authTag)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_nonce)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[20] = self->_version;
    *(toCopy + 88) |= 8u;
  }

  v6 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v6;
  }

  if (self->_payload)
  {
    [v6 setPayload:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[10] = self->_messageType;
    *(toCopy + 88) |= 4u;
  }

  if (self->_senderID)
  {
    [v6 setSenderID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(toCopy + 84) = self->_useProxy;
    *(toCopy + 88) |= 0x10u;
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

  toCopy[6] = self->_awdlCacheID;
  *(toCopy + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_14:
    toCopy[2] = self->_aksSessionID;
    *(toCopy + 88) |= 1u;
  }

LABEL_15:
  if (self->_encryptedPayload)
  {
    [v6 setEncryptedPayload:?];
    toCopy = v6;
  }

  if (self->_authTag)
  {
    [v6 setAuthTag:?];
    toCopy = v6;
  }

  if (self->_nonce)
  {
    [v6 setNonce:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    v5[20] = self->_version;
    *(v5 + 88) |= 8u;
  }

  v7 = [(NSData *)self->_sessionID copyWithZone:zone];
  v8 = v6[9];
  v6[9] = v7;

  v9 = [(NSData *)self->_payload copyWithZone:zone];
  v10 = v6[7];
  v6[7] = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 10) = self->_messageType;
    *(v6 + 88) |= 4u;
  }

  v11 = [(NSData *)self->_senderID copyWithZone:zone];
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
  v14 = [(NSData *)self->_encryptedPayload copyWithZone:zone];
  v15 = v6[4];
  v6[4] = v14;

  v16 = [(NSData *)self->_authTag copyWithZone:zone];
  v17 = v6[2];
  v6[2] = v16;

  v18 = [(NSData *)self->_nonce copyWithZone:zone];
  v19 = v6[6];
  v6[6] = v18;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(equalCopy + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0 || self->_version != *(equalCopy + 20))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_43;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 9) && ![(NSData *)sessionID isEqual:?])
  {
    goto LABEL_43;
  }

  payload = self->_payload;
  if (payload | *(equalCopy + 7))
  {
    if (![(NSData *)payload isEqual:?])
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 88);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_messageType != *(equalCopy + 10))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
    goto LABEL_43;
  }

  senderID = self->_senderID;
  if (senderID | *(equalCopy + 8))
  {
    if (![(NSData *)senderID isEqual:?])
    {
      goto LABEL_43;
    }

    has = self->_has;
  }

  v11 = *(equalCopy + 88);
  if ((has & 0x10) == 0)
  {
    if ((*(equalCopy + 88) & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  if ((*(equalCopy + 88) & 0x10) == 0)
  {
    goto LABEL_43;
  }

  v12 = *(equalCopy + 84);
  if (self->_useProxy)
  {
    if ((*(equalCopy + 84) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_43;
  }

LABEL_21:
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_awdlCacheID != *(equalCopy + 6))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_43;
  }

  if (has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_aksSessionID != *(equalCopy + 2))
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_43;
  }

  encryptedPayload = self->_encryptedPayload;
  if (encryptedPayload | *(equalCopy + 4) && ![(NSData *)encryptedPayload isEqual:?])
  {
    goto LABEL_43;
  }

  authTag = self->_authTag;
  if (authTag | *(equalCopy + 2))
  {
    if (![(NSData *)authTag isEqual:?])
    {
      goto LABEL_43;
    }
  }

  nonce = self->_nonce;
  if (nonce | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 88) & 8) != 0)
  {
    self->_version = *(fromCopy + 20);
    *&self->_has |= 8u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(SDAutoUnlockSessionWrapper *)self setSessionID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(SDAutoUnlockSessionWrapper *)self setPayload:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 88) & 4) != 0)
  {
    self->_messageType = *(fromCopy + 10);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 8))
  {
    [(SDAutoUnlockSessionWrapper *)self setSenderID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 88);
  if ((v5 & 0x10) != 0)
  {
    self->_useProxy = *(fromCopy + 84);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 88);
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

  else if ((*(fromCopy + 88) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_awdlCacheID = *(fromCopy + 6);
  *&self->_has |= 2u;
  if (*(fromCopy + 88))
  {
LABEL_14:
    self->_aksSessionID = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_15:
  if (*(fromCopy + 4))
  {
    [(SDAutoUnlockSessionWrapper *)self setEncryptedPayload:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockSessionWrapper *)self setAuthTag:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(SDAutoUnlockSessionWrapper *)self setNonce:?];
    fromCopy = v6;
  }
}

@end