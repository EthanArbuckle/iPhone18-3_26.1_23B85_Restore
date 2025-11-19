@interface _NMRMediaRemoteSetStateMessageProfobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOriginIdentifier:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRMediaRemoteSetStateMessageProfobuf

- (void)setHasState:(BOOL)a3
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

- (void)setHasOriginIdentifier:(BOOL)a3
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
  v7.super_class = _NMRMediaRemoteSetStateMessageProfobuf;
  v3 = [(_NMRMediaRemoteSetStateMessageProfobuf *)&v7 description];
  v4 = [(_NMRMediaRemoteSetStateMessageProfobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[16] = self->_state;
    *(v4 + 80) |= 4u;
  }

  if (self->_payload)
  {
    [v4 setPayload:?];
  }

  if (self->_digest)
  {
    [v4 setDigest:?];
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 80) |= 1u;
  }

  if (self->_nowPlayingInfo)
  {
    [v4 setNowPlayingInfo:?];
  }

  if (self->_applicationInfo)
  {
    [v4 setApplicationInfo:?];
  }

  if (self->_supportedCommands)
  {
    [v4 setSupportedCommands:?];
  }

  if (self->_playbackQueue)
  {
    [v4 setPlaybackQueue:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[10] = self->_originIdentifier;
    *(v4 + 80) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_state;
    *(v5 + 80) |= 4u;
  }

  v7 = [(NSData *)self->_payload copyWithZone:a3];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSData *)self->_digest copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  if (*&self->_has)
  {
    v6[1] = *&self->_timestamp;
    *(v6 + 80) |= 1u;
  }

  v11 = [(NSData *)self->_nowPlayingInfo copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSData *)self->_applicationInfo copyWithZone:a3];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(NSData *)self->_supportedCommands copyWithZone:a3];
  v16 = v6[9];
  v6[9] = v15;

  v17 = [(NSData *)self->_playbackQueue copyWithZone:a3];
  v18 = v6[7];
  v6[7] = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_originIdentifier;
    *(v6 + 80) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_state != *(v4 + 16))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  payload = self->_payload;
  if (payload | *(v4 + 6) && ![(NSData *)payload isEqual:?])
  {
    goto LABEL_28;
  }

  digest = self->_digest;
  if (digest | *(v4 + 3))
  {
    if (![(NSData *)digest isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v8 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_28;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo | *(v4 + 4) && ![(NSData *)nowPlayingInfo isEqual:?])
  {
    goto LABEL_28;
  }

  applicationInfo = self->_applicationInfo;
  if (applicationInfo | *(v4 + 2))
  {
    if (![(NSData *)applicationInfo isEqual:?])
    {
      goto LABEL_28;
    }
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands | *(v4 + 9))
  {
    if (![(NSData *)supportedCommands isEqual:?])
    {
      goto LABEL_28;
    }
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue | *(v4 + 7))
  {
    if (![(NSData *)playbackQueue isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v13 = (*(v4 + 80) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_originIdentifier != *(v4 + 10))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 80) & 4) != 0)
  {
    self->_state = *(v4 + 16);
    *&self->_has |= 4u;
  }

  v5 = v4;
  if (*(v4 + 6))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setPayload:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setDigest:?];
    v4 = v5;
  }

  if (*(v4 + 80))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setNowPlayingInfo:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setApplicationInfo:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setSupportedCommands:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self setPlaybackQueue:?];
    v4 = v5;
  }

  if ((*(v4 + 80) & 2) != 0)
  {
    self->_originIdentifier = *(v4 + 10);
    *&self->_has |= 2u;
  }
}

@end