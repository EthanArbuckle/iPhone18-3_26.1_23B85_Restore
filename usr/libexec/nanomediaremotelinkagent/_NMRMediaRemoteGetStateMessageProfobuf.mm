@interface _NMRMediaRemoteGetStateMessageProfobuf
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

@implementation _NMRMediaRemoteGetStateMessageProfobuf

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
  v7.super_class = _NMRMediaRemoteGetStateMessageProfobuf;
  v3 = [(_NMRMediaRemoteGetStateMessageProfobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRMediaRemoteGetStateMessageProfobuf *)self dictionaryRepresentation];
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

  knownDigest = self->_knownDigest;
  if (knownDigest)
  {
    [v3 setObject:knownDigest forKey:@"knownDigest"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v6 forKey:@"timestamp"];
  }

  nowPlayingInfoDigest = self->_nowPlayingInfoDigest;
  if (nowPlayingInfoDigest)
  {
    [v3 setObject:nowPlayingInfoDigest forKey:@"nowPlayingInfoDigest"];
  }

  applicationInfoDigest = self->_applicationInfoDigest;
  if (applicationInfoDigest)
  {
    [v3 setObject:applicationInfoDigest forKey:@"applicationInfoDigest"];
  }

  supportedCommandsDigest = self->_supportedCommandsDigest;
  if (supportedCommandsDigest)
  {
    [v3 setObject:supportedCommandsDigest forKey:@"supportedCommandsDigest"];
  }

  playbackQueueDigest = self->_playbackQueueDigest;
  if (playbackQueueDigest)
  {
    [v3 setObject:playbackQueueDigest forKey:@"playbackQueueDigest"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [NSNumber numberWithInt:self->_originIdentifier];
    [v3 setObject:v11 forKey:@"originIdentifier"];
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

  if (self->_knownDigest)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_nowPlayingInfoDigest)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_applicationInfoDigest)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_supportedCommandsDigest)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_playbackQueueDigest)
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
    toCopy[14] = self->_state;
    *(toCopy + 72) |= 4u;
  }

  v5 = toCopy;
  if (self->_knownDigest)
  {
    [toCopy setKnownDigest:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 72) |= 1u;
  }

  if (self->_nowPlayingInfoDigest)
  {
    [v5 setNowPlayingInfoDigest:?];
    toCopy = v5;
  }

  if (self->_applicationInfoDigest)
  {
    [v5 setApplicationInfoDigest:?];
    toCopy = v5;
  }

  if (self->_supportedCommandsDigest)
  {
    [v5 setSupportedCommandsDigest:?];
    toCopy = v5;
  }

  if (self->_playbackQueueDigest)
  {
    [v5 setPlaybackQueueDigest:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[10] = self->_originIdentifier;
    *(toCopy + 72) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[14] = self->_state;
    *(v5 + 72) |= 4u;
  }

  v7 = [(NSData *)self->_knownDigest copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  if (*&self->_has)
  {
    v6[1] = *&self->_timestamp;
    *(v6 + 72) |= 1u;
  }

  v9 = [(NSData *)self->_nowPlayingInfoDigest copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSData *)self->_applicationInfoDigest copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSData *)self->_supportedCommandsDigest copyWithZone:zone];
  v14 = v6[8];
  v6[8] = v13;

  v15 = [(NSData *)self->_playbackQueueDigest copyWithZone:zone];
  v16 = v6[6];
  v6[6] = v15;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_originIdentifier;
    *(v6 + 72) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = *(equalCopy + 72);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_state != *(equalCopy + 14))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_27;
  }

  knownDigest = self->_knownDigest;
  if (knownDigest | *(equalCopy + 3))
  {
    if (![(NSData *)knownDigest isEqual:?])
    {
LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 72);
  if (has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_27;
  }

  nowPlayingInfoDigest = self->_nowPlayingInfoDigest;
  if (nowPlayingInfoDigest | *(equalCopy + 4) && ![(NSData *)nowPlayingInfoDigest isEqual:?])
  {
    goto LABEL_27;
  }

  applicationInfoDigest = self->_applicationInfoDigest;
  if (applicationInfoDigest | *(equalCopy + 2))
  {
    if (![(NSData *)applicationInfoDigest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  supportedCommandsDigest = self->_supportedCommandsDigest;
  if (supportedCommandsDigest | *(equalCopy + 8))
  {
    if (![(NSData *)supportedCommandsDigest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  playbackQueueDigest = self->_playbackQueueDigest;
  if (playbackQueueDigest | *(equalCopy + 6))
  {
    if (![(NSData *)playbackQueueDigest isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v13 = (*(equalCopy + 72) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_originIdentifier != *(equalCopy + 10))
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

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

  v4 = [(NSData *)self->_knownDigest hash];
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

  v11 = [(NSData *)self->_nowPlayingInfoDigest hash];
  v12 = [(NSData *)self->_applicationInfoDigest hash];
  v13 = [(NSData *)self->_supportedCommandsDigest hash];
  v14 = [(NSData *)self->_playbackQueueDigest hash];
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 72) & 4) != 0)
  {
    self->_state = *(fromCopy + 14);
    *&self->_has |= 4u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self setKnownDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 72))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self setNowPlayingInfoDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self setApplicationInfoDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self setSupportedCommandsDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self setPlaybackQueueDigest:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 72) & 2) != 0)
  {
    self->_originIdentifier = *(fromCopy + 10);
    *&self->_has |= 2u;
  }
}

@end