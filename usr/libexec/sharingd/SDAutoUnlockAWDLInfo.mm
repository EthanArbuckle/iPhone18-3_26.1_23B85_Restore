@interface SDAutoUnlockAWDLInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAuthPrompt:(BOOL)prompt;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasIsAuthenticatingForSiri:(BOOL)siri;
- (void)setHasSkipMotionCheck:(BOOL)check;
- (void)setHasSupportsConfirmationACK:(BOOL)k;
- (void)setHasUseToken:(BOOL)token;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockAWDLInfo

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUseToken:(BOOL)token
{
  if (token)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasAuthPrompt:(BOOL)prompt
{
  if (prompt)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupportsConfirmationACK:(BOOL)k
{
  if (k)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasSkipMotionCheck:(BOOL)check
{
  if (check)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsAuthenticatingForSiri:(BOOL)siri
{
  if (siri)
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
  v7.super_class = SDAutoUnlockAWDLInfo;
  v3 = [(SDAutoUnlockAWDLInfo *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockAWDLInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo)
  {
    [v3 setObject:awdlInfo forKey:@"awdlInfo"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_useToken];
    [v3 setObject:v6 forKey:@"useToken"];
  }

  keyData = self->_keyData;
  if (keyData)
  {
    [v3 setObject:keyData forKey:@"keyData"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v14 forKey:@"errorCode"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v15 = [NSNumber numberWithBool:self->_authPrompt];
  [v3 setObject:v15 forKey:@"authPrompt"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v9 = [NSNumber numberWithBool:self->_supportsConfirmationACK];
    [v3 setObject:v9 forKey:@"supportsConfirmationACK"];
  }

LABEL_13:
  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
  }

  v11 = self->_has;
  if (v11)
  {
    v16 = [NSNumber numberWithDouble:self->_phoneUnlockDate];
    [v3 setObject:v16 forKey:@"phoneUnlockDate"];

    v11 = self->_has;
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v17 = [NSNumber numberWithBool:self->_skipMotionCheck];
  [v3 setObject:v17 forKey:@"skipMotionCheck"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v12 = [NSNumber numberWithBool:self->_isAuthenticatingForSiri];
    [v3 setObject:v12 forKey:@"isAuthenticatingForSiri"];
  }

LABEL_19:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    useToken = self->_useToken;
    PBDataWriterWriteBOOLField();
  }

  if (self->_keyData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  authPrompt = self->_authPrompt;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    supportsConfirmationACK = self->_supportsConfirmationACK;
    PBDataWriterWriteBOOLField();
  }

LABEL_13:
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if (v8)
  {
    phoneUnlockDate = self->_phoneUnlockDate;
    PBDataWriterWriteDoubleField();
    v8 = self->_has;
    if ((v8 & 0x20) == 0)
    {
LABEL_17:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

  skipMotionCheck = self->_skipMotionCheck;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    isAuthenticatingForSiri = self->_isAuthenticatingForSiri;
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[12] = self->_version;
    *(toCopy + 60) |= 4u;
  }

  v7 = toCopy;
  if (self->_awdlInfo)
  {
    [toCopy setAwdlInfo:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(toCopy + 56) = self->_useToken;
    *(toCopy + 60) |= 0x80u;
  }

  if (self->_keyData)
  {
    [v7 setKeyData:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[8] = self->_errorCode;
    *(toCopy + 60) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 52) = self->_authPrompt;
  *(toCopy + 60) |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    *(toCopy + 55) = self->_supportsConfirmationACK;
    *(toCopy + 60) |= 0x40u;
  }

LABEL_13:
  if (self->_appName)
  {
    [v7 setAppName:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(toCopy + 1) = *&self->_phoneUnlockDate;
    *(toCopy + 60) |= 1u;
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_17:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 54) = self->_skipMotionCheck;
  *(toCopy + 60) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    *(toCopy + 53) = self->_isAuthenticatingForSiri;
    *(toCopy + 60) |= 0x10u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[12] = self->_version;
    *(v5 + 60) |= 4u;
  }

  v7 = [(NSData *)self->_awdlInfo copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v6 + 56) = self->_useToken;
    *(v6 + 60) |= 0x80u;
  }

  v9 = [(NSData *)self->_keyData copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 60) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 52) = self->_authPrompt;
  *(v6 + 60) |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(v6 + 55) = self->_supportsConfirmationACK;
    *(v6 + 60) |= 0x40u;
  }

LABEL_9:
  v12 = [(NSString *)self->_appName copyWithZone:zone];
  v13 = v6[2];
  v6[2] = v12;

  v14 = self->_has;
  if ((v14 & 1) == 0)
  {
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    *(v6 + 54) = self->_skipMotionCheck;
    *(v6 + 60) |= 0x20u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_12;
  }

  v6[1] = *&self->_phoneUnlockDate;
  *(v6 + 60) |= 1u;
  v14 = self->_has;
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v14 & 0x10) != 0)
  {
LABEL_12:
    *(v6 + 53) = self->_isAuthenticatingForSiri;
    *(v6 + 60) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = equalCopy[60];
  if ((has & 4) != 0)
  {
    if ((equalCopy[60] & 4) == 0 || self->_version != *(equalCopy + 12))
    {
      goto LABEL_58;
    }
  }

  else if ((equalCopy[60] & 4) != 0)
  {
    goto LABEL_58;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(equalCopy + 3))
  {
    if (![(NSData *)awdlInfo isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  v8 = equalCopy[60];
  if (has < 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v11 = equalCopy[56];
    if (self->_useToken)
    {
      if ((equalCopy[56] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (equalCopy[56])
    {
      goto LABEL_58;
    }
  }

  else if (v8 < 0)
  {
    goto LABEL_58;
  }

  keyData = self->_keyData;
  if (keyData | *(equalCopy + 5))
  {
    if (![(NSData *)keyData isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  v10 = equalCopy[60];
  if ((has & 2) != 0)
  {
    if ((equalCopy[60] & 2) == 0 || self->_errorCode != *(equalCopy + 8))
    {
      goto LABEL_58;
    }
  }

  else if ((equalCopy[60] & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((equalCopy[60] & 8) == 0)
    {
      goto LABEL_58;
    }

    v13 = equalCopy[52];
    if (self->_authPrompt)
    {
      if ((equalCopy[52] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (equalCopy[52])
    {
      goto LABEL_58;
    }
  }

  else if ((equalCopy[60] & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((equalCopy[60] & 0x40) == 0)
    {
      goto LABEL_58;
    }

    v14 = equalCopy[55];
    if (self->_supportsConfirmationACK)
    {
      if ((equalCopy[55] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (equalCopy[55])
    {
      goto LABEL_58;
    }
  }

  else if ((equalCopy[60] & 0x40) != 0)
  {
    goto LABEL_58;
  }

  appName = self->_appName;
  if (appName | *(equalCopy + 2))
  {
    if (![(NSString *)appName isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((equalCopy[60] & 1) == 0 || self->_phoneUnlockDate != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (equalCopy[60])
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((equalCopy[60] & 0x20) == 0)
    {
      goto LABEL_58;
    }

    v17 = equalCopy[54];
    if (self->_skipMotionCheck)
    {
      if ((equalCopy[54] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (equalCopy[54])
    {
      goto LABEL_58;
    }
  }

  else if ((equalCopy[60] & 0x20) != 0)
  {
    goto LABEL_58;
  }

  v15 = (equalCopy[60] & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((equalCopy[60] & 0x10) != 0)
    {
      if (self->_isAuthenticatingForSiri)
      {
        if (equalCopy[53])
        {
          goto LABEL_66;
        }
      }

      else if (!equalCopy[53])
      {
LABEL_66:
        v15 = 1;
        goto LABEL_59;
      }
    }

LABEL_58:
    v15 = 0;
  }

LABEL_59:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_awdlInfo hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v5 = 2654435761 * self->_useToken;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_keyData hash];
  if ((*&self->_has & 2) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v7 = 2654435761 * self->_errorCode;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761 * self->_authPrompt;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    v9 = 2654435761 * self->_supportsConfirmationACK;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSString *)self->_appName hash];
  if (*&self->_has)
  {
    phoneUnlockDate = self->_phoneUnlockDate;
    if (phoneUnlockDate < 0.0)
    {
      phoneUnlockDate = -phoneUnlockDate;
    }

    *v11.i64 = floor(phoneUnlockDate + 0.5);
    v15 = (phoneUnlockDate - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_skipMotionCheck;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v18 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v17 ^ v18;
  }

  v17 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v18 = 2654435761 * self->_isAuthenticatingForSiri;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[60] & 4) != 0)
  {
    self->_version = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SDAutoUnlockAWDLInfo *)self setAwdlInfo:?];
    fromCopy = v7;
  }

  if (fromCopy[60] < 0)
  {
    self->_useToken = fromCopy[56];
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 5))
  {
    [(SDAutoUnlockAWDLInfo *)self setKeyData:?];
    fromCopy = v7;
  }

  v5 = fromCopy[60];
  if ((v5 & 2) != 0)
  {
    self->_errorCode = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = fromCopy[60];
    if ((v5 & 8) == 0)
    {
LABEL_11:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((fromCopy[60] & 8) == 0)
  {
    goto LABEL_11;
  }

  self->_authPrompt = fromCopy[52];
  *&self->_has |= 8u;
  if ((fromCopy[60] & 0x40) != 0)
  {
LABEL_12:
    self->_supportsConfirmationACK = fromCopy[55];
    *&self->_has |= 0x40u;
  }

LABEL_13:
  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockAWDLInfo *)self setAppName:?];
    fromCopy = v7;
  }

  v6 = fromCopy[60];
  if (v6)
  {
    self->_phoneUnlockDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = fromCopy[60];
    if ((v6 & 0x20) == 0)
    {
LABEL_17:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((fromCopy[60] & 0x20) == 0)
  {
    goto LABEL_17;
  }

  self->_skipMotionCheck = fromCopy[54];
  *&self->_has |= 0x20u;
  if ((fromCopy[60] & 0x10) != 0)
  {
LABEL_18:
    self->_isAuthenticatingForSiri = fromCopy[53];
    *&self->_has |= 0x10u;
  }

LABEL_19:
}

@end