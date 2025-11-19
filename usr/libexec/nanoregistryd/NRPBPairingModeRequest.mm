@interface NRPBPairingModeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBPairingModeRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPairingModeRequest;
  v3 = [(NRPBPairingModeRequest *)&v7 description];
  v4 = [(NRPBPairingModeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_pairingMode];
  [v3 setObject:v4 forKey:@"pairingMode"];

  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithInt:self->_phonePairingProtocolVersionMax];
    [v3 setObject:v8 forKey:@"phonePairingProtocolVersionMax"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithInt:self->_watchPairingProtocolVersion];
  [v3 setObject:v9 forKey:@"watchPairingProtocolVersion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v6 = [NSNumber numberWithInt:self->_phonePairingProtocolVersionMin];
    [v3 setObject:v6 forKey:@"phonePairingProtocolVersionMin"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  pairingMode = self->_pairingMode;
  v10 = v4;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    phonePairingProtocolVersionMax = self->_phonePairingProtocolVersionMax;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  watchPairingProtocolVersion = self->_watchPairingProtocolVersion;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    phonePairingProtocolVersionMin = self->_phonePairingProtocolVersionMin;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_pairingMode;
  has = self->_has;
  if (has)
  {
    *(result + 3) = self->_phonePairingProtocolVersionMax;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_watchPairingProtocolVersion;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_phonePairingProtocolVersionMin;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_pairingMode != *(v4 + 2))
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_phonePairingProtocolVersionMax != *(v4 + 3))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_watchPairingProtocolVersion != *(v4 + 5))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_17;
  }

  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_phonePairingProtocolVersionMin != *(v4 + 4))
    {
      goto LABEL_17;
    }

    v5 = 1;
  }

LABEL_18:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_phonePairingProtocolVersionMax;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_watchPairingProtocolVersion;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_phonePairingProtocolVersionMin;
  }

  else
  {
    v4 = 0;
  }

  return v2 ^ v3 ^ v4 ^ (2654435761 * self->_pairingMode);
}

@end