@interface _NMRSendCommandResultMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)handlerReturnStatusAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasOriginIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRSendCommandResultMessageProtobuf

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = _NMRSendCommandResultMessageProtobuf;
  [(_NMRSendCommandResultMessageProtobuf *)&v3 dealloc];
}

- (void)setHasErrorCode:(BOOL)a3
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

- (unsigned)handlerReturnStatusAtIndex:(unint64_t)a3
{
  p_handlerReturnStatus = &self->_handlerReturnStatus;
  count = self->_handlerReturnStatus.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_handlerReturnStatus->list[a3];
}

- (void)setHasOriginIdentifier:(BOOL)a3
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
  v7.super_class = _NMRSendCommandResultMessageProtobuf;
  v3 = [(_NMRSendCommandResultMessageProtobuf *)&v7 description];
  v4 = [(_NMRSendCommandResultMessageProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v4 forKey:@"errorCode"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"handlerReturnStatus"];

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_originIdentifier];
    [v3 setObject:v8 forKey:@"originIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if ((*&self->_has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v11;
  }

  if (self->_handlerReturnStatus.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_handlerReturnStatus.list[v6];
      PBDataWriterWriteUint32Field();
      v4 = v11;
      ++v6;
    }

    while (v6 < self->_handlerReturnStatus.count);
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v11;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[10] = self->_errorCode;
    *(v4 + 48) |= 2u;
  }

  v9 = v4;
  if ([(_NMRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount])
  {
    [v9 clearHandlerReturnStatus];
    v5 = [(_NMRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v9 addHandlerReturnStatus:{-[_NMRSendCommandResultMessageProtobuf handlerReturnStatusAtIndex:](self, "handlerReturnStatusAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v9 + 4) = *&self->_timestamp;
    *(v9 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v9 + 11) = self->_originIdentifier;
    *(v9 + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if ((*&self->_has & 2) != 0)
  {
    v4[10] = self->_errorCode;
    *(v4 + 48) |= 2u;
  }

  PBRepeatedUInt32Copy();
  has = self->_has;
  if (has)
  {
    v5[4] = *&self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 11) = self->_originIdentifier;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_errorCode != *(v4 + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_17;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_17;
  }

  v6 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_originIdentifier != *(v4 + 11))
    {
      goto LABEL_17;
    }

    v6 = 1;
  }

LABEL_18:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_errorCode;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedUInt32Hash();
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v5.i64 = floor(timestamp + 0.5);
    v9 = (timestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[12] & 2) != 0)
  {
    self->_errorCode = v4[10];
    *&self->_has |= 2u;
  }

  v9 = v4;
  v5 = [v4 handlerReturnStatusCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[_NMRSendCommandResultMessageProtobuf addHandlerReturnStatus:](self, "addHandlerReturnStatus:", [v9 handlerReturnStatusAtIndex:i]);
    }
  }

  v8 = *(v9 + 48);
  if (v8)
  {
    self->_timestamp = *(v9 + 4);
    *&self->_has |= 1u;
    v8 = *(v9 + 48);
  }

  if ((v8 & 4) != 0)
  {
    self->_originIdentifier = *(v9 + 11);
    *&self->_has |= 4u;
  }
}

@end