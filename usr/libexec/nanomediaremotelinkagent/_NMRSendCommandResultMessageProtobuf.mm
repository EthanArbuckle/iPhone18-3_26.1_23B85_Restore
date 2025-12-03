@interface _NMRSendCommandResultMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)handlerReturnStatusAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasOriginIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation _NMRSendCommandResultMessageProtobuf

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = _NMRSendCommandResultMessageProtobuf;
  [(_NMRSendCommandResultMessageProtobuf *)&v3 dealloc];
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

- (unsigned)handlerReturnStatusAtIndex:(unint64_t)index
{
  p_handlerReturnStatus = &self->_handlerReturnStatus;
  count = self->_handlerReturnStatus.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_handlerReturnStatus->list[index];
}

- (void)setHasOriginIdentifier:(BOOL)identifier
{
  if (identifier)
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
  dictionaryRepresentation = [(_NMRSendCommandResultMessageProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v11;
  }

  if (self->_handlerReturnStatus.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_handlerReturnStatus.list[v6];
      PBDataWriterWriteUint32Field();
      toCopy = v11;
      ++v6;
    }

    while (v6 < self->_handlerReturnStatus.count);
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v11;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[10] = self->_errorCode;
    *(toCopy + 48) |= 2u;
  }

  v9 = toCopy;
  if ([(_NMRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount])
  {
    [v9 clearHandlerReturnStatus];
    handlerReturnStatusCount = [(_NMRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount];
    if (handlerReturnStatusCount)
    {
      v6 = handlerReturnStatusCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_errorCode != *(equalCopy + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
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
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_17;
  }

  v6 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_originIdentifier != *(equalCopy + 11))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[12] & 2) != 0)
  {
    self->_errorCode = fromCopy[10];
    *&self->_has |= 2u;
  }

  v9 = fromCopy;
  handlerReturnStatusCount = [fromCopy handlerReturnStatusCount];
  if (handlerReturnStatusCount)
  {
    v6 = handlerReturnStatusCount;
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