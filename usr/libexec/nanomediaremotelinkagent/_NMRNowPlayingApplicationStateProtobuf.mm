@interface _NMRNowPlayingApplicationStateProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProcessID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRNowPlayingApplicationStateProtobuf

- (void)setHasProcessID:(BOOL)a3
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
  v7.super_class = _NMRNowPlayingApplicationStateProtobuf;
  v3 = [(_NMRNowPlayingApplicationStateProtobuf *)&v7 description];
  v4 = [(_NMRNowPlayingApplicationStateProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  companionBundleIdentifier = self->_companionBundleIdentifier;
  if (companionBundleIdentifier)
  {
    [v3 setObject:companionBundleIdentifier forKey:@"companionBundleIdentifier"];
  }

  localizedDisplayName = self->_localizedDisplayName;
  if (localizedDisplayName)
  {
    [v4 setObject:localizedDisplayName forKey:@"localizedDisplayName"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_playbackState];
    [v4 setObject:v7 forKey:@"playbackState"];
  }

  watchBundleIdentifier = self->_watchBundleIdentifier;
  if (watchBundleIdentifier)
  {
    [v4 setObject:watchBundleIdentifier forKey:@"watchBundleIdentifier"];
  }

  iconDigest = self->_iconDigest;
  if (iconDigest)
  {
    [v4 setObject:iconDigest forKey:@"iconDigest"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [NSNumber numberWithInt:self->_processID];
    [v4 setObject:v10 forKey:@"processID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_companionBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_localizedDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_watchBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_iconDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    processID = self->_processID;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_companionBundleIdentifier)
  {
    [v4 setCompanionBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_localizedDisplayName)
  {
    [v5 setLocalizedDisplayName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_playbackState;
    *(v4 + 48) |= 1u;
  }

  if (self->_watchBundleIdentifier)
  {
    [v5 setWatchBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_iconDigest)
  {
    [v5 setIconDigest:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 9) = self->_processID;
    *(v4 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_companionBundleIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_localizedDisplayName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_playbackState;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSString *)self->_watchBundleIdentifier copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_iconDigest copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 9) = self->_processID;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  companionBundleIdentifier = self->_companionBundleIdentifier;
  if (companionBundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)companionBundleIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  localizedDisplayName = self->_localizedDisplayName;
  if (localizedDisplayName | *(v4 + 3))
  {
    if (![(NSString *)localizedDisplayName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_playbackState != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  watchBundleIdentifier = self->_watchBundleIdentifier;
  if (watchBundleIdentifier | *(v4 + 5) && ![(NSString *)watchBundleIdentifier isEqual:?])
  {
    goto LABEL_19;
  }

  iconDigest = self->_iconDigest;
  if (iconDigest | *(v4 + 2))
  {
    if (![(NSData *)iconDigest isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_processID != *(v4 + 9))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_companionBundleIdentifier hash];
  v4 = [(NSString *)self->_localizedDisplayName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_playbackState;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_watchBundleIdentifier hash];
  v7 = [(NSData *)self->_iconDigest hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_processID;
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
  v5 = v4;
  if (*(v4 + 1))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setCompanionBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setLocalizedDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 48))
  {
    self->_playbackState = *(v4 + 8);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setWatchBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setIconDigest:?];
    v4 = v5;
  }

  if ((*(v4 + 48) & 2) != 0)
  {
    self->_processID = *(v4 + 9);
    *&self->_has |= 2u;
  }
}

@end