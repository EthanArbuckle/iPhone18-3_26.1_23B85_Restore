@interface SDAutoUnlockDeviceRegistrationStep
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockDeviceRegistrationStep

- (void)setHasVersion:(BOOL)version
{
  if (version)
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
  dictionaryRepresentation = [(SDAutoUnlockDeviceRegistrationStep *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_stepData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 2u;
  }

  if (self->_stepData)
  {
    v5 = toCopy;
    [toCopy setStepData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[6] = self->_version;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSData *)self->_stepData copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  stepData = self->_stepData;
  if (stepData | *(equalCopy + 2))
  {
    if (![(NSData *)stepData isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[7] & 2) != 0)
  {
    self->_version = fromCopy[6];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SDAutoUnlockDeviceRegistrationStep *)self setStepData:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_errorCode = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end