@interface _NMRNowPlayingApplicationStateProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProcessID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation _NMRNowPlayingApplicationStateProtobuf

- (void)setHasProcessID:(BOOL)d
{
  if (d)
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
  dictionaryRepresentation = [(_NMRNowPlayingApplicationStateProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_companionBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_localizedDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_watchBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_iconDigest)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    processID = self->_processID;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_companionBundleIdentifier)
  {
    [toCopy setCompanionBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_localizedDisplayName)
  {
    [v5 setLocalizedDisplayName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_playbackState;
    *(toCopy + 48) |= 1u;
  }

  if (self->_watchBundleIdentifier)
  {
    [v5 setWatchBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_iconDigest)
  {
    [v5 setIconDigest:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 9) = self->_processID;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_companionBundleIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_localizedDisplayName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_playbackState;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSString *)self->_watchBundleIdentifier copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_iconDigest copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 9) = self->_processID;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  companionBundleIdentifier = self->_companionBundleIdentifier;
  if (companionBundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)companionBundleIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  localizedDisplayName = self->_localizedDisplayName;
  if (localizedDisplayName | *(equalCopy + 3))
  {
    if (![(NSString *)localizedDisplayName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_playbackState != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  watchBundleIdentifier = self->_watchBundleIdentifier;
  if (watchBundleIdentifier | *(equalCopy + 5) && ![(NSString *)watchBundleIdentifier isEqual:?])
  {
    goto LABEL_19;
  }

  iconDigest = self->_iconDigest;
  if (iconDigest | *(equalCopy + 2))
  {
    if (![(NSData *)iconDigest isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_processID != *(equalCopy + 9))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setCompanionBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setLocalizedDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 48))
  {
    self->_playbackState = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setWatchBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self setIconDigest:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 48) & 2) != 0)
  {
    self->_processID = *(fromCopy + 9);
    *&self->_has |= 2u;
  }
}

@end