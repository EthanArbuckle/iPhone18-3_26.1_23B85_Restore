@interface SDAutoUnlockDeviceRegistrationStep
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockDeviceRegistrationStep

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockDeviceRegistrationStep;
  v3 = [(SDAutoUnlockDeviceRegistrationStep *)&v7 description];
  v4 = [(SDAutoUnlockDeviceRegistrationStep *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  stepData = self->_stepData;
  if (stepData)
  {
    [v3 setObject:stepData forKey:@"stepData"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v6 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_stepData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 2u;
  }

  if (self->_stepData)
  {
    v5 = v4;
    [v4 setStepData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[6] = self->_version;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSData *)self->_stepData copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  stepData = self->_stepData;
  if (stepData | *(v4 + 2))
  {
    if (![(NSData *)stepData isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 28) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_stepData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[7] & 2) != 0)
  {
    self->_version = v4[6];
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(SDAutoUnlockDeviceRegistrationStep *)self setStepData:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_errorCode = v4[2];
    *&self->_has |= 1u;
  }
}

@end