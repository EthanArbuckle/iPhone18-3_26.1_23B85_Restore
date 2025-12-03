@interface _NMRCommandOptionsProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsQueueEndAction:(id)action;
- (int)StringAsRepeatMode:(id)mode;
- (int)StringAsShuffleMode:(id)mode;
- (int)queueEndAction;
- (int)repeatMode;
- (int)shuffleMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExternalPlayerCommand:(BOOL)command;
- (void)setHasNegative:(BOOL)negative;
- (void)setHasPlaybackQueueInsertionPosition:(BOOL)position;
- (void)setHasPlaybackRate:(BOOL)rate;
- (void)setHasQueueEndAction:(BOOL)action;
- (void)setHasRadioStationID:(BOOL)d;
- (void)setHasRating:(BOOL)rating;
- (void)setHasRepeatMode:(BOOL)mode;
- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)position;
- (void)setHasSendOptions:(BOOL)options;
- (void)setHasShouldBeginRadioPlayback:(BOOL)playback;
- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)queue;
- (void)setHasShuffleMode:(BOOL)mode;
- (void)setHasSkipInterval:(BOOL)interval;
- (void)setHasTrackID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation _NMRCommandOptionsProtobuf

- (void)setHasExternalPlayerCommand:(BOOL)command
{
  if (command)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSkipInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasPlaybackRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNegative:(BOOL)negative
{
  if (negative)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)repeatMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_repeatMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRepeatMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsRepeatMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"All"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)shuffleMode
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_shuffleMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShuffleMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsShuffleMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrackID:(BOOL)d
{
  if (d)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRadioStationID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSendOptions:(BOOL)options
{
  if (options)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)position
{
  if (position)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)queue
{
  if (queue)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasShouldBeginRadioPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasPlaybackQueueInsertionPosition:(BOOL)position
{
  if (position)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)queueEndAction
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_queueEndAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasQueueEndAction:(BOOL)action
{
  if (action)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsQueueEndAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"Clear"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"None"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"Reset"])
  {
    v4 = 3;
  }

  else if ([actionCopy isEqualToString:@"AutoPlay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRCommandOptionsProtobuf;
  v3 = [(_NMRCommandOptionsProtobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRCommandOptionsProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    [v3 setObject:sourceID forKey:@"sourceID"];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v5 setObject:mediaType forKey:@"mediaType"];
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_externalPlayerCommand];
    [v5 setObject:v9 forKey:@"externalPlayerCommand"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  *&v4 = self->_skipInterval;
  v10 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v10 forKey:@"skipInterval"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *&v4 = self->_playbackRate;
  v11 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v11 forKey:@"playbackRate"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *&v4 = self->_rating;
  v12 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v12 forKey:@"rating"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [NSNumber numberWithBool:self->_negative];
  [v5 setObject:v13 forKey:@"negative"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [NSNumber numberWithDouble:self->_playbackPosition];
  [v5 setObject:v14 forKey:@"playbackPosition"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_20:
  repeatMode = self->_repeatMode;
  if (repeatMode >= 4)
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_repeatMode];
  }

  else
  {
    v16 = *(&off_1000494B8 + repeatMode);
  }

  [v5 setObject:v16 forKey:@"repeatMode"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_24:
    shuffleMode = self->_shuffleMode;
    if (shuffleMode >= 4)
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
    }

    else
    {
      v18 = *(&off_1000494D8 + shuffleMode);
    }

    [v5 setObject:v18 forKey:@"shuffleMode"];
  }

LABEL_28:
  contextID = self->_contextID;
  if (contextID)
  {
    [v5 setObject:contextID forKey:@"contextID"];
  }

  v20 = self->_has;
  if ((v20 & 4) != 0)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:self->_trackID];
    [v5 setObject:v21 forKey:@"trackID"];

    v20 = self->_has;
  }

  if ((v20 & 2) != 0)
  {
    v22 = [NSNumber numberWithLongLong:self->_radioStationID];
    [v5 setObject:v22 forKey:@"radioStationID"];
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash)
  {
    [v5 setObject:radioStationHash forKey:@"radioStationHash"];
  }

  systemAppPlaybackQueueData = self->_systemAppPlaybackQueueData;
  if (systemAppPlaybackQueueData)
  {
    [v5 setObject:systemAppPlaybackQueueData forKey:@"systemAppPlaybackQueueData"];
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID)
  {
    [v5 setObject:destinationAppDisplayID forKey:@"destinationAppDisplayID"];
  }

  v26 = self->_has;
  if ((v26 & 0x100) == 0)
  {
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_42;
    }

LABEL_55:
    v35 = [NSNumber numberWithBool:self->_requestDefermentToPlaybackQueuePosition];
    [v5 setObject:v35 forKey:@"requestDefermentToPlaybackQueuePosition"];

    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  v34 = [NSNumber numberWithUnsignedInt:self->_sendOptions];
  [v5 setObject:v34 forKey:@"sendOptions"];

  v26 = self->_has;
  if ((v26 & 0x2000) != 0)
  {
    goto LABEL_55;
  }

LABEL_42:
  if ((v26 & 0x8000) == 0)
  {
    goto LABEL_43;
  }

LABEL_56:
  v36 = [NSNumber numberWithBool:self->_shouldOverrideManuallyCuratedQueue];
  [v5 setObject:v36 forKey:@"shouldOverrideManuallyCuratedQueue"];

LABEL_43:
  stationURL = self->_stationURL;
  if (stationURL)
  {
    [v5 setObject:stationURL forKey:@"stationURL"];
  }

  v28 = self->_has;
  if ((v28 & 0x4000) != 0)
  {
    v29 = [NSNumber numberWithBool:self->_shouldBeginRadioPlayback];
    [v5 setObject:v29 forKey:@"shouldBeginRadioPlayback"];

    v28 = self->_has;
  }

  if ((v28 & 8) != 0)
  {
    v30 = [NSNumber numberWithInt:self->_playbackQueueInsertionPosition];
    [v5 setObject:v30 forKey:@"playbackQueueInsertionPosition"];
  }

  contentItemID = self->_contentItemID;
  if (contentItemID)
  {
    [v5 setObject:contentItemID forKey:@"contentItemID"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    queueEndAction = self->_queueEndAction;
    if (queueEndAction >= 5)
    {
      v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_queueEndAction];
    }

    else
    {
      v33 = *(&off_1000494F8 + queueEndAction);
    }

    [v5 setObject:v33 forKey:@"queueEndAction"];
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v24 = toCopy;
  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    externalPlayerCommand = self->_externalPlayerCommand;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  skipInterval = self->_skipInterval;
  PBDataWriterWriteFloatField();
  toCopy = v24;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  playbackRate = self->_playbackRate;
  PBDataWriterWriteFloatField();
  toCopy = v24;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  rating = self->_rating;
  PBDataWriterWriteFloatField();
  toCopy = v24;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  negative = self->_negative;
  PBDataWriterWriteBOOLField();
  toCopy = v24;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  playbackPosition = self->_playbackPosition;
  PBDataWriterWriteDoubleField();
  toCopy = v24;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  repeatMode = self->_repeatMode;
  PBDataWriterWriteInt32Field();
  toCopy = v24;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  toCopy = v24;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_51:
  trackID = self->_trackID;
  PBDataWriterWriteUint64Field();
  toCopy = v24;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    radioStationID = self->_radioStationID;
    PBDataWriterWriteInt64Field();
    toCopy = v24;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    PBDataWriterWriteDataField();
    toCopy = v24;
  }

  if (self->_destinationAppDisplayID)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  v7 = self->_has;
  if ((v7 & 0x100) != 0)
  {
    sendOptions = self->_sendOptions;
    PBDataWriterWriteUint32Field();
    toCopy = v24;
    v7 = self->_has;
  }

  if ((v7 & 0x2000) != 0)
  {
    requestDefermentToPlaybackQueuePosition = self->_requestDefermentToPlaybackQueuePosition;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    shouldOverrideManuallyCuratedQueue = self->_shouldOverrideManuallyCuratedQueue;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_stationURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  v11 = self->_has;
  if ((v11 & 0x4000) != 0)
  {
    shouldBeginRadioPlayback = self->_shouldBeginRadioPlayback;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    playbackQueueInsertionPosition = self->_playbackQueueInsertionPosition;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_contentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    queueEndAction = self->_queueEndAction;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sourceID)
  {
    [toCopy setSourceID:?];
    toCopy = v8;
  }

  if (self->_mediaType)
  {
    [v8 setMediaType:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(toCopy + 136) = self->_externalPlayerCommand;
    *(toCopy + 72) |= 0x800u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 26) = LODWORD(self->_skipInterval);
  *(toCopy + 72) |= 0x400u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 17) = LODWORD(self->_playbackRate);
  *(toCopy + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 22) = LODWORD(self->_rating);
  *(toCopy + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 137) = self->_negative;
  *(toCopy + 72) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 1) = *&self->_playbackPosition;
  *(toCopy + 72) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 23) = self->_repeatMode;
  *(toCopy + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 25) = self->_shuffleMode;
  *(toCopy + 72) |= 0x200u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_51:
  *(toCopy + 3) = self->_trackID;
  *(toCopy + 72) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(toCopy + 2) = self->_radioStationID;
    *(toCopy + 72) |= 2u;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    [v8 setRadioStationHash:?];
    toCopy = v8;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    [v8 setSystemAppPlaybackQueueData:?];
    toCopy = v8;
  }

  if (self->_destinationAppDisplayID)
  {
    [v8 setDestinationAppDisplayID:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    *(toCopy + 24) = self->_sendOptions;
    *(toCopy + 72) |= 0x100u;
    v6 = self->_has;
  }

  if ((v6 & 0x2000) != 0)
  {
    *(toCopy + 138) = self->_requestDefermentToPlaybackQueuePosition;
    *(toCopy + 72) |= 0x2000u;
  }

  if (self->_contextID)
  {
    [v8 setContextID:?];
    toCopy = v8;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(toCopy + 140) = self->_shouldOverrideManuallyCuratedQueue;
    *(toCopy + 72) |= 0x8000u;
  }

  if (self->_stationURL)
  {
    [v8 setStationURL:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x4000) != 0)
  {
    *(toCopy + 139) = self->_shouldBeginRadioPlayback;
    *(toCopy + 72) |= 0x4000u;
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    *(toCopy + 16) = self->_playbackQueueInsertionPosition;
    *(toCopy + 72) |= 8u;
  }

  if (self->_contentItemID)
  {
    [v8 setContentItemID:?];
    toCopy = v8;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 18) = self->_queueEndAction;
    *(toCopy + 72) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceID copyWithZone:zone];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(NSString *)self->_mediaType copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(v5 + 136) = self->_externalPlayerCommand;
    *(v5 + 72) |= 0x800u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 26) = LODWORD(self->_skipInterval);
  *(v5 + 72) |= 0x400u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 17) = LODWORD(self->_playbackRate);
  *(v5 + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 22) = LODWORD(self->_rating);
  *(v5 + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 137) = self->_negative;
  *(v5 + 72) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5[1] = *&self->_playbackPosition;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 23) = self->_repeatMode;
  *(v5 + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 25) = self->_shuffleMode;
  *(v5 + 72) |= 0x200u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  v5[3] = self->_trackID;
  *(v5 + 72) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v5[2] = self->_radioStationID;
    *(v5 + 72) |= 2u;
  }

LABEL_12:
  v11 = [(NSString *)self->_radioStationHash copyWithZone:zone];
  v12 = v5[10];
  v5[10] = v11;

  v13 = [(NSData *)self->_systemAppPlaybackQueueData copyWithZone:zone];
  v14 = v5[16];
  v5[16] = v13;

  v15 = [(NSString *)self->_destinationAppDisplayID copyWithZone:zone];
  v16 = v5[6];
  v5[6] = v15;

  v17 = self->_has;
  if ((v17 & 0x100) != 0)
  {
    *(v5 + 24) = self->_sendOptions;
    *(v5 + 72) |= 0x100u;
    v17 = self->_has;
  }

  if ((v17 & 0x2000) != 0)
  {
    *(v5 + 138) = self->_requestDefermentToPlaybackQueuePosition;
    *(v5 + 72) |= 0x2000u;
  }

  v18 = [(NSString *)self->_contextID copyWithZone:zone];
  v19 = v5[5];
  v5[5] = v18;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 140) = self->_shouldOverrideManuallyCuratedQueue;
    *(v5 + 72) |= 0x8000u;
  }

  v20 = [(NSString *)self->_stationURL copyWithZone:zone];
  v21 = v5[15];
  v5[15] = v20;

  v22 = self->_has;
  if ((v22 & 0x4000) != 0)
  {
    *(v5 + 139) = self->_shouldBeginRadioPlayback;
    *(v5 + 72) |= 0x4000u;
    v22 = self->_has;
  }

  if ((v22 & 8) != 0)
  {
    *(v5 + 16) = self->_playbackQueueInsertionPosition;
    *(v5 + 72) |= 8u;
  }

  v23 = [(NSString *)self->_contentItemID copyWithZone:zone];
  v24 = v5[4];
  v5[4] = v23;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 18) = self->_queueEndAction;
    *(v5 + 72) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_116;
  }

  sourceID = self->_sourceID;
  if (sourceID | *(equalCopy + 14))
  {
    if (![(NSString *)sourceID isEqual:?])
    {
      goto LABEL_116;
    }
  }

  mediaType = self->_mediaType;
  if (mediaType | *(equalCopy + 7))
  {
    if (![(NSString *)mediaType isEqual:?])
    {
      goto LABEL_116;
    }
  }

  has = self->_has;
  v8 = equalCopy[72];
  if ((has & 0x800) != 0)
  {
    if ((equalCopy[72] & 0x800) == 0)
    {
      goto LABEL_116;
    }

    v9 = *(equalCopy + 136);
    if (self->_externalPlayerCommand)
    {
      if ((equalCopy[68] & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (equalCopy[68])
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x800) != 0)
  {
    goto LABEL_116;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((equalCopy[72] & 0x400) == 0 || self->_skipInterval != *(equalCopy + 26))
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x400) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_playbackRate != *(equalCopy + 17))
    {
      goto LABEL_116;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_rating != *(equalCopy + 22))
    {
      goto LABEL_116;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_116;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((equalCopy[72] & 0x1000) == 0)
    {
      goto LABEL_116;
    }

    v10 = *(equalCopy + 137);
    if (self->_negative)
    {
      if ((*(equalCopy + 137) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(equalCopy + 137))
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x1000) != 0)
  {
    goto LABEL_116;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_playbackPosition != *(equalCopy + 1))
    {
      goto LABEL_116;
    }
  }

  else if (v8)
  {
    goto LABEL_116;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_repeatMode != *(equalCopy + 23))
    {
      goto LABEL_116;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_116;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((equalCopy[72] & 0x200) == 0 || self->_shuffleMode != *(equalCopy + 25))
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x200) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_trackID != *(equalCopy + 3))
    {
      goto LABEL_116;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_radioStationID != *(equalCopy + 2))
    {
      goto LABEL_116;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_116;
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash | *(equalCopy + 10) && ![(NSString *)radioStationHash isEqual:?])
  {
    goto LABEL_116;
  }

  systemAppPlaybackQueueData = self->_systemAppPlaybackQueueData;
  if (systemAppPlaybackQueueData | *(equalCopy + 16))
  {
    if (![(NSData *)systemAppPlaybackQueueData isEqual:?])
    {
      goto LABEL_116;
    }
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID | *(equalCopy + 6))
  {
    if (![(NSString *)destinationAppDisplayID isEqual:?])
    {
      goto LABEL_116;
    }
  }

  v14 = self->_has;
  v15 = equalCopy[72];
  if ((v14 & 0x100) != 0)
  {
    if ((equalCopy[72] & 0x100) == 0 || self->_sendOptions != *(equalCopy + 24))
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x100) != 0)
  {
    goto LABEL_116;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((equalCopy[72] & 0x2000) == 0)
    {
      goto LABEL_116;
    }

    v20 = *(equalCopy + 138);
    if (self->_requestDefermentToPlaybackQueuePosition)
    {
      if ((equalCopy[69] & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (equalCopy[69])
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x2000) != 0)
  {
    goto LABEL_116;
  }

  contextID = self->_contextID;
  if (contextID | *(equalCopy + 5))
  {
    if (![(NSString *)contextID isEqual:?])
    {
      goto LABEL_116;
    }

    v14 = self->_has;
  }

  v17 = equalCopy[72];
  if (v14 < 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    v21 = *(equalCopy + 140);
    if (self->_shouldOverrideManuallyCuratedQueue)
    {
      if ((equalCopy[70] & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (equalCopy[70])
    {
      goto LABEL_116;
    }
  }

  else if (v17 < 0)
  {
    goto LABEL_116;
  }

  stationURL = self->_stationURL;
  if (stationURL | *(equalCopy + 15))
  {
    if (![(NSString *)stationURL isEqual:?])
    {
      goto LABEL_116;
    }

    v14 = self->_has;
  }

  v19 = equalCopy[72];
  if ((v14 & 0x4000) != 0)
  {
    if ((equalCopy[72] & 0x4000) == 0)
    {
      goto LABEL_116;
    }

    v22 = *(equalCopy + 139);
    if (self->_shouldBeginRadioPlayback)
    {
      if ((*(equalCopy + 139) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(equalCopy + 139))
    {
      goto LABEL_116;
    }
  }

  else if ((equalCopy[72] & 0x4000) != 0)
  {
    goto LABEL_116;
  }

  if ((v14 & 8) != 0)
  {
    if ((v19 & 8) == 0 || self->_playbackQueueInsertionPosition != *(equalCopy + 16))
    {
      goto LABEL_116;
    }
  }

  else if ((v19 & 8) != 0)
  {
    goto LABEL_116;
  }

  contentItemID = self->_contentItemID;
  if (contentItemID | *(equalCopy + 4))
  {
    if ([(NSString *)contentItemID isEqual:?])
    {
      v14 = self->_has;
      goto LABEL_111;
    }

LABEL_116:
    v25 = 0;
    goto LABEL_117;
  }

LABEL_111:
  v24 = equalCopy[72];
  if ((v14 & 0x20) != 0)
  {
    if ((v24 & 0x20) == 0 || self->_queueEndAction != *(equalCopy + 18))
    {
      goto LABEL_116;
    }

    v25 = 1;
  }

  else
  {
    v25 = (v24 & 0x20) == 0;
  }

LABEL_117:

  return v25;
}

- (unint64_t)hash
{
  v47 = [(NSString *)self->_sourceID hash];
  v46 = [(NSString *)self->_mediaType hash];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v45 = 2654435761 * self->_externalPlayerCommand;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v45 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  skipInterval = self->_skipInterval;
  if (skipInterval < 0.0)
  {
    skipInterval = -skipInterval;
  }

  *v3.i32 = floorf(skipInterval + 0.5);
  v7 = (skipInterval - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v3 = vbslq_s8(v8, v4, v3);
  v9 = 2654435761u * *v3.i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_9:
  if ((has & 0x10) != 0)
  {
    playbackRate = self->_playbackRate;
    if (playbackRate < 0.0)
    {
      playbackRate = -playbackRate;
    }

    *v3.i32 = floorf(playbackRate + 0.5);
    v12 = (playbackRate - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v13, v4, v3);
    v10 = 2654435761u * *v3.i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 0x40) != 0)
  {
    rating = self->_rating;
    if (rating < 0.0)
    {
      rating = -rating;
    }

    *v3.i32 = floorf(rating + 0.5);
    v16 = (rating - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v17, v4, v3);
    v14 = 2654435761u * *v3.i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v41 = 2654435761 * self->_negative;
    if (has)
    {
      goto LABEL_29;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

  v41 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  playbackPosition = self->_playbackPosition;
  if (playbackPosition < 0.0)
  {
    playbackPosition = -playbackPosition;
  }

  *v3.i64 = floor(playbackPosition + 0.5);
  v19 = (playbackPosition - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v4, v3).i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_35:
  if ((has & 0x80) == 0)
  {
    v39 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    v38 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v39 = 2654435761 * self->_repeatMode;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v38 = 2654435761 * self->_shuffleMode;
  if ((has & 4) != 0)
  {
LABEL_38:
    v37 = 2654435761u * self->_trackID;
    goto LABEL_42;
  }

LABEL_41:
  v37 = 0;
LABEL_42:
  v43 = v10;
  v44 = v9;
  v42 = v14;
  v40 = v21;
  if ((has & 2) != 0)
  {
    v36 = 2654435761 * self->_radioStationID;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(NSString *)self->_radioStationHash hash];
  v34 = [(NSData *)self->_systemAppPlaybackQueueData hash];
  v33 = [(NSString *)self->_destinationAppDisplayID hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v22 = 2654435761 * self->_sendOptions;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v22 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_47:
      v23 = 2654435761 * self->_requestDefermentToPlaybackQueuePosition;
      goto LABEL_50;
    }
  }

  v23 = 0;
LABEL_50:
  v24 = [(NSString *)self->_contextID hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v25 = 2654435761 * self->_shouldOverrideManuallyCuratedQueue;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(NSString *)self->_stationURL hash];
  v27 = self->_has;
  if ((v27 & 0x4000) != 0)
  {
    v28 = 2654435761 * self->_shouldBeginRadioPlayback;
    if ((v27 & 8) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v28 = 0;
    if ((v27 & 8) != 0)
    {
LABEL_55:
      v29 = 2654435761 * self->_playbackQueueInsertionPosition;
      goto LABEL_58;
    }
  }

  v29 = 0;
LABEL_58:
  v30 = [(NSString *)self->_contentItemID hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v31 = 2654435761 * self->_queueEndAction;
  }

  else
  {
    v31 = 0;
  }

  return v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 14))
  {
    [(_NMRCommandOptionsProtobuf *)self setSourceID:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(_NMRCommandOptionsProtobuf *)self setMediaType:?];
    fromCopy = v8;
  }

  v5 = fromCopy[72];
  if ((v5 & 0x800) != 0)
  {
    self->_externalPlayerCommand = *(fromCopy + 136);
    *&self->_has |= 0x800u;
    v5 = fromCopy[72];
    if ((v5 & 0x400) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((fromCopy[72] & 0x400) == 0)
  {
    goto LABEL_7;
  }

  self->_skipInterval = *(fromCopy + 26);
  *&self->_has |= 0x400u;
  v5 = fromCopy[72];
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_playbackRate = *(fromCopy + 17);
  *&self->_has |= 0x10u;
  v5 = fromCopy[72];
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_rating = *(fromCopy + 22);
  *&self->_has |= 0x40u;
  v5 = fromCopy[72];
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_negative = *(fromCopy + 137);
  *&self->_has |= 0x1000u;
  v5 = fromCopy[72];
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_playbackPosition = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = fromCopy[72];
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_repeatMode = *(fromCopy + 23);
  *&self->_has |= 0x80u;
  v5 = fromCopy[72];
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_shuffleMode = *(fromCopy + 25);
  *&self->_has |= 0x200u;
  v5 = fromCopy[72];
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_51:
  self->_trackID = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((fromCopy[72] & 2) != 0)
  {
LABEL_15:
    self->_radioStationID = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_16:
  if (*(fromCopy + 10))
  {
    [(_NMRCommandOptionsProtobuf *)self setRadioStationHash:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 16))
  {
    [(_NMRCommandOptionsProtobuf *)self setSystemAppPlaybackQueueData:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(_NMRCommandOptionsProtobuf *)self setDestinationAppDisplayID:?];
    fromCopy = v8;
  }

  v6 = fromCopy[72];
  if ((v6 & 0x100) != 0)
  {
    self->_sendOptions = *(fromCopy + 24);
    *&self->_has |= 0x100u;
    v6 = fromCopy[72];
  }

  if ((v6 & 0x2000) != 0)
  {
    self->_requestDefermentToPlaybackQueuePosition = *(fromCopy + 138);
    *&self->_has |= 0x2000u;
  }

  if (*(fromCopy + 5))
  {
    [(_NMRCommandOptionsProtobuf *)self setContextID:?];
    fromCopy = v8;
  }

  if (fromCopy[72] < 0)
  {
    self->_shouldOverrideManuallyCuratedQueue = *(fromCopy + 140);
    *&self->_has |= 0x8000u;
  }

  if (*(fromCopy + 15))
  {
    [(_NMRCommandOptionsProtobuf *)self setStationURL:?];
    fromCopy = v8;
  }

  v7 = fromCopy[72];
  if ((v7 & 0x4000) != 0)
  {
    self->_shouldBeginRadioPlayback = *(fromCopy + 139);
    *&self->_has |= 0x4000u;
    v7 = fromCopy[72];
  }

  if ((v7 & 8) != 0)
  {
    self->_playbackQueueInsertionPosition = *(fromCopy + 16);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 4))
  {
    [(_NMRCommandOptionsProtobuf *)self setContentItemID:?];
    fromCopy = v8;
  }

  if ((fromCopy[72] & 0x20) != 0)
  {
    self->_queueEndAction = *(fromCopy + 18);
    *&self->_has |= 0x20u;
  }
}

@end