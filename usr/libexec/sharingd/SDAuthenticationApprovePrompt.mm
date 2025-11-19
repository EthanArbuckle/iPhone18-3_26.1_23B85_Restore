@interface SDAuthenticationApprovePrompt
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBiometricOnly:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationApprovePrompt

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasBiometricOnly:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationApprovePrompt;
  v3 = [(SDAuthenticationApprovePrompt *)&v7 description];
  v4 = [(SDAuthenticationApprovePrompt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_biometricOnly];
    [v3 setObject:v10 forKey:@"biometricOnly"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    biometricOnly = self->_biometricOnly;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[9] = self->_version;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[8] = self->_type;
    *(v4 + 44) |= 1u;
  }

  v6 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v6;
  }

  if (self->_appName)
  {
    [v6 setAppName:?];
    v4 = v6;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 40) = self->_biometricOnly;
    *(v4 + 44) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[9] = self->_version;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[8] = self->_type;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(NSString *)self->_appName copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  v12 = [(NSString *)self->_bundleID copyWithZone:a3];
  v13 = v6[2];
  v6[2] = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_biometricOnly;
    *(v6 + 44) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_version != *(v4 + 9))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_20;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_20;
  }

  appName = self->_appName;
  if (appName | *(v4 + 1))
  {
    if (![(NSString *)appName isEqual:?])
    {
      goto LABEL_20;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v9 = (*(v4 + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
LABEL_20:
      v9 = 0;
      goto LABEL_21;
    }

    if (self->_biometricOnly)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_20;
    }

    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_sessionID hash];
  v6 = [(NSString *)self->_appName hash];
  v7 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_biometricOnly;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 9);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(SDAuthenticationApprovePrompt *)self setSessionID:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(SDAuthenticationApprovePrompt *)self setAppName:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SDAuthenticationApprovePrompt *)self setBundleID:?];
    v4 = v6;
  }

  if ((*(v4 + 44) & 4) != 0)
  {
    self->_biometricOnly = *(v4 + 40);
    *&self->_has |= 4u;
  }
}

@end