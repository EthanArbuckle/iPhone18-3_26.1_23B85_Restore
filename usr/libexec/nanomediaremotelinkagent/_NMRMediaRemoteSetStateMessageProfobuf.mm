@interface _NMRMediaRemoteSetStateMessageProfobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOriginIdentifier:(BOOL)identifier;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation _NMRMediaRemoteSetStateMessageProfobuf

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOriginIdentifier:(BOOL)identifier
{
  if (identifier)
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
  v7.super_class = _NMRMediaRemoteSetStateMessageProfobuf;
  v3 = [(_NMRMediaRemoteSetStateMessageProfobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRMediaRemoteSetStateMessageProfobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [NSNumber numberWithInt:self->_state];
    [v3 setObject:v4 forKey:@"state"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  digest = self->_digest;
  if (digest)
  {
    [v3 setObject:digest forKey:@"digest"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo)
  {
    [v3 setObject:nowPlayingInfo forKey:@"nowPlayingInfo"];
  }

  applicationInfo = self->_applicationInfo;
  if (applicationInfo)
  {
    [v3 setObject:applicationInfo forKey:@"applicationInfo"];
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands)
  {
    [v3 setObject:supportedCommands forKey:@"supportedCommands"];
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue)
  {
    [v3 setObject:playbackQueue forKey:@"playbackQueue"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_originIdentifier];
    [v3 setObject:v12 forKey:@"originIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_digest)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_nowPlayingInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_applicationInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_supportedCommands)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_playbackQueue)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[16] = self->_state;
    *(toCopy + 80) |= 4u;
  }

  if (self->_payload)
  {
    [toCopy setPayload:?];
  }

  if (self->_digest)
  {
    [toCopy setDigest:?];
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 80) |= 1u;
  }

  if (self->_nowPlayingInfo)
  {
    [toCopy setNowPlayingInfo:?];
  }

  if (self->_applicationInfo)
  {
    [toCopy setApplicationInfo:?];
  }

  if (self->_supportedCommands)
  {
    [toCopy setSupportedCommands:?];
  }

  if (self->_playbackQueue)
  {
    [toCopy setPlaybackQueue:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[10] = self->_originIdentifier;
    *(toCopy + 80) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_state;
    *(v5 + 80) |= 4u;
  }

  v7 = [(NSData *)self->_payload copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSData *)self->_digest copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  if (*&self->_has)
  {
    v6[1] = *&self->_timestamp;
    *(v6 + 80) |= 1u;
  }

  v11 = [(NSData *)self->_nowPlayingInfo copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSData *)self->_applicationInfo copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(NSData *)self->_supportedCommands copyWithZone:zone];
  v16 = v6[9];
  v6[9] = v15;

  v17 = [(NSData *)self->_playbackQueue copyWithZone:zone];
  v18 = v6[7];
  v6[7] = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_originIdentifier;
    *(v6 + 80) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_state != *(equalCopy + 16))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  payload = self->_payload;
  if (payload | *(equalCopy + 6) && ![(NSData *)payload isEqual:?])
  {
    goto LABEL_28;
  }

  digest = self->_digest;
  if (digest | *(equalCopy + 3))
  {
    if (![(NSData *)digest isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_28;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo | *(equalCopy + 4) && ![(NSData *)nowPlayingInfo isEqual:?])
  {
    goto LABEL_28;
  }

  applicationInfo = self->_applicationInfo;
  if (applicationInfo | *(equalCopy + 2))
  {
    if (![(NSData *)applicationInfo isEqual:?])
    {
      goto LABEL_28;
    }
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands | *(equalCopy + 9))
  {
    if (![(NSData *)supportedCommands isEqual:?])
    {
      goto LABEL_28;
    }
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue | *(equalCopy + 7))
  {
    if (![(NSData *)playbackQueue isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v13 = (*(equalCopy + 80) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_originIdentifier != *(equalCopy + 10))
    {
      goto LABEL_28;
    }

    v13 = 1;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_state;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_payload hash];
  v5 = [(NSData *)self->_digest hash];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v6.i64 = floor(timestamp + 0.5);
    v10 = (timestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = [(NSData *)self->_nowPlayingInfo hash];
  v13 = [(NSData *)self->_applicationInfo hash];
  v14 = [(NSData *)self->_supportedCommands hash];
  v15 = [(NSData *)self->_playbackQueue hash];
  if ((*&self->_has & 2) != 0)
  {
    v16 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 80) & 4) != 0)
  {
    self->_state = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setPayload:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 80))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setNowPlayingInfo:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setApplicationInfo:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setSupportedCommands:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setPlaybackQueue:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 80) & 2) != 0)
  {
    self->_originIdentifier = *(fromCopy + 10);
    *&self->_has |= 2u;
  }
}

@end