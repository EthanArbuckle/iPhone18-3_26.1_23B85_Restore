@interface _NMRNowPlayingInfoProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRepeatMode:(id)a3;
- (int)StringAsShuffleMode:(id)a3;
- (int)repeatMode;
- (int)shuffleMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasElapsedTime:(BOOL)a3;
- (void)setHasIsAdvertisement:(BOOL)a3;
- (void)setHasIsAlwaysLive:(BOOL)a3;
- (void)setHasIsExplicitTrack:(BOOL)a3;
- (void)setHasIsMusicApp:(BOOL)a3;
- (void)setHasPlaybackRate:(BOOL)a3;
- (void)setHasPreferredPlaybackRate:(BOOL)a3;
- (void)setHasRadioStationIdentifier:(BOOL)a3;
- (void)setHasRepeatMode:(BOOL)a3;
- (void)setHasShuffleMode:(BOOL)a3;
- (void)setHasStoreAdamID:(BOOL)a3;
- (void)setHasStoreSubscriptionAdamID:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUniqueIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRNowPlayingInfoProtobuf

- (void)setHasElapsedTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPlaybackRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)repeatMode
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_repeatMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRepeatMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsRepeatMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"All"])
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
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_shuffleMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShuffleMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsShuffleMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasUniqueIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsExplicitTrack:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasIsMusicApp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasRadioStationIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsAlwaysLive:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsAdvertisement:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasStoreSubscriptionAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPreferredPlaybackRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasStoreAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRNowPlayingInfoProtobuf;
  v3 = [(_NMRNowPlayingInfoProtobuf *)&v7 description];
  v4 = [(_NMRNowPlayingInfoProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  album = self->_album;
  if (album)
  {
    [v3 setObject:album forKey:@"album"];
  }

  artist = self->_artist;
  if (artist)
  {
    [v5 setObject:artist forKey:@"artist"];
  }

  has = self->_has;
  if (has)
  {
    v24 = [NSNumber numberWithDouble:self->_duration];
    [v5 setObject:v24 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  v25 = [NSNumber numberWithDouble:self->_elapsedTime];
  [v5 setObject:v25 forKey:@"elapsedTime"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *&v4 = self->_playbackRate;
  v26 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v26 forKey:@"playbackRate"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_46:
  repeatMode = self->_repeatMode;
  if (repeatMode >= 4)
  {
    v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_repeatMode];
  }

  else
  {
    v28 = off_100049348[repeatMode];
  }

  [v5 setObject:v28 forKey:@"repeatMode"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_58:
  shuffleMode = self->_shuffleMode;
  if (shuffleMode >= 4)
  {
    v36 = [NSString stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
  }

  else
  {
    v36 = off_100049368[shuffleMode];
  }

  [v5 setObject:v36 forKey:@"shuffleMode"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    v9 = [NSNumber numberWithDouble:self->_timestamp];
    [v5 setObject:v9 forKey:@"timestamp"];
  }

LABEL_12:
  title = self->_title;
  if (title)
  {
    [v5 setObject:title forKey:@"title"];
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v29 = [NSNumber numberWithUnsignedLongLong:self->_uniqueIdentifier];
    [v5 setObject:v29 forKey:@"uniqueIdentifier"];

    v11 = self->_has;
    if ((v11 & 0x2000) == 0)
    {
LABEL_16:
      if ((v11 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  v30 = [NSNumber numberWithBool:self->_isExplicitTrack];
  [v5 setObject:v30 forKey:@"isExplicitTrack"];

  v11 = self->_has;
  if ((v11 & 0x4000) == 0)
  {
LABEL_17:
    if ((v11 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_50:
  v31 = [NSNumber numberWithBool:self->_isMusicApp];
  [v5 setObject:v31 forKey:@"isMusicApp"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    v12 = [NSNumber numberWithLongLong:self->_radioStationIdentifier];
    [v5 setObject:v12 forKey:@"radioStationIdentifier"];
  }

LABEL_19:
  radioStationHash = self->_radioStationHash;
  if (radioStationHash)
  {
    [v5 setObject:radioStationHash forKey:@"radioStationHash"];
  }

  radioStationName = self->_radioStationName;
  if (radioStationName)
  {
    [v5 setObject:radioStationName forKey:@"radioStationName"];
  }

  artworkDataDigest = self->_artworkDataDigest;
  if (artworkDataDigest)
  {
    [v5 setObject:artworkDataDigest forKey:@"artworkDataDigest"];
  }

  v16 = self->_has;
  if ((v16 & 0x1000) != 0)
  {
    v32 = [NSNumber numberWithBool:self->_isAlwaysLive];
    [v5 setObject:v32 forKey:@"isAlwaysLive"];

    v16 = self->_has;
    if ((v16 & 0x800) == 0)
    {
LABEL_27:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_54;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

  v33 = [NSNumber numberWithBool:self->_isAdvertisement];
  [v5 setObject:v33 forKey:@"isAdvertisement"];

  v16 = self->_has;
  if ((v16 & 0x10) == 0)
  {
LABEL_28:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_54:
  v34 = [NSNumber numberWithLongLong:self->_storeSubscriptionAdamID];
  [v5 setObject:v34 forKey:@"storeSubscriptionAdamID"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_29:
    *&v4 = self->_preferredPlaybackRate;
    v17 = [NSNumber numberWithFloat:v4];
    [v5 setObject:v17 forKey:@"preferredPlaybackRate"];
  }

LABEL_30:
  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v5 setObject:mediaType forKey:@"mediaType"];
  }

  collectionInfoData = self->_collectionInfoData;
  if (collectionInfoData)
  {
    [v5 setObject:collectionInfoData forKey:@"collectionInfoData"];
  }

  artworkURL = self->_artworkURL;
  if (artworkURL)
  {
    [v5 setObject:artworkURL forKey:@"artworkURL"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v21 = [NSNumber numberWithLongLong:self->_storeAdamID];
    [v5 setObject:v21 forKey:@"storeAdamID"];
  }

  userInfoData = self->_userInfoData;
  if (userInfoData)
  {
    [v5 setObject:userInfoData forKey:@"userInfoData"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v23 = v4;
  if (self->_album)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v23;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  elapsedTime = self->_elapsedTime;
  PBDataWriterWriteDoubleField();
  v4 = v23;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  playbackRate = self->_playbackRate;
  PBDataWriterWriteFloatField();
  v4 = v23;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  repeatMode = self->_repeatMode;
  PBDataWriterWriteInt32Field();
  v4 = v23;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  v4 = v23;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v23;
  }

LABEL_12:
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    PBDataWriterWriteUint64Field();
    v4 = v23;
    v7 = self->_has;
    if ((v7 & 0x2000) == 0)
    {
LABEL_16:
      if ((v7 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  isExplicitTrack = self->_isExplicitTrack;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  v7 = self->_has;
  if ((v7 & 0x4000) == 0)
  {
LABEL_17:
    if ((v7 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  isMusicApp = self->_isMusicApp;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    radioStationIdentifier = self->_radioStationIdentifier;
    PBDataWriterWriteInt64Field();
    v4 = v23;
  }

LABEL_19:
  if (self->_radioStationHash)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_radioStationName)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_artworkDataDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v23;
  }

  v9 = self->_has;
  if ((v9 & 0x1000) != 0)
  {
    isAlwaysLive = self->_isAlwaysLive;
    PBDataWriterWriteBOOLField();
    v4 = v23;
    v9 = self->_has;
    if ((v9 & 0x800) == 0)
    {
LABEL_27:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_55;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

  isAdvertisement = self->_isAdvertisement;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_28:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_55:
  storeSubscriptionAdamID = self->_storeSubscriptionAdamID;
  PBDataWriterWriteInt64Field();
  v4 = v23;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_29:
    preferredPlaybackRate = self->_preferredPlaybackRate;
    PBDataWriterWriteFloatField();
    v4 = v23;
  }

LABEL_30:
  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_collectionInfoData)
  {
    PBDataWriterWriteDataField();
    v4 = v23;
  }

  if (self->_artworkURL)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if ((*&self->_has & 8) != 0)
  {
    storeAdamID = self->_storeAdamID;
    PBDataWriterWriteInt64Field();
    v4 = v23;
  }

  if (self->_userInfoData)
  {
    PBDataWriterWriteDataField();
    v4 = v23;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_album)
  {
    [v4 setAlbum:?];
    v4 = v8;
  }

  if (self->_artist)
  {
    [v8 setArtist:?];
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_duration;
    *(v4 + 82) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 2) = *&self->_elapsedTime;
  *(v4 + 82) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 28) = LODWORD(self->_playbackRate);
  *(v4 + 82) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 34) = self->_repeatMode;
  *(v4 + 82) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  *(v4 + 35) = self->_shuffleMode;
  *(v4 + 82) |= 0x400u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(v4 + 6) = *&self->_timestamp;
    *(v4 + 82) |= 0x20u;
  }

LABEL_12:
  if (self->_title)
  {
    [v8 setTitle:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 7) = self->_uniqueIdentifier;
    *(v4 + 82) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_16:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  *(v4 + 162) = self->_isExplicitTrack;
  *(v4 + 82) |= 0x2000u;
  v6 = self->_has;
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  *(v4 + 163) = self->_isMusicApp;
  *(v4 + 82) |= 0x4000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(v4 + 3) = self->_radioStationIdentifier;
    *(v4 + 82) |= 4u;
  }

LABEL_19:
  if (self->_radioStationHash)
  {
    [v8 setRadioStationHash:?];
    v4 = v8;
  }

  if (self->_radioStationName)
  {
    [v8 setRadioStationName:?];
    v4 = v8;
  }

  if (self->_artworkDataDigest)
  {
    [v8 setArtworkDataDigest:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x1000) != 0)
  {
    *(v4 + 161) = self->_isAlwaysLive;
    *(v4 + 82) |= 0x1000u;
    v7 = self->_has;
    if ((v7 & 0x800) == 0)
    {
LABEL_27:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_55;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

  *(v4 + 160) = self->_isAdvertisement;
  *(v4 + 82) |= 0x800u;
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_28:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_55:
  *(v4 + 5) = self->_storeSubscriptionAdamID;
  *(v4 + 82) |= 0x10u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_29:
    *(v4 + 29) = LODWORD(self->_preferredPlaybackRate);
    *(v4 + 82) |= 0x100u;
  }

LABEL_30:
  if (self->_mediaType)
  {
    [v8 setMediaType:?];
    v4 = v8;
  }

  if (self->_collectionInfoData)
  {
    [v8 setCollectionInfoData:?];
    v4 = v8;
  }

  if (self->_artworkURL)
  {
    [v8 setArtworkURL:?];
    v4 = v8;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = self->_storeAdamID;
    *(v4 + 82) |= 8u;
  }

  if (self->_userInfoData)
  {
    [v8 setUserInfoData:?];
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_album copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_artist copyWithZone:a3];
  v9 = v5[9];
  v5[9] = v8;

  has = self->_has;
  if (has)
  {
    v5[1] = *&self->_duration;
    *(v5 + 82) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v5[2] = *&self->_elapsedTime;
  *(v5 + 82) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 28) = LODWORD(self->_playbackRate);
  *(v5 + 82) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 34) = self->_repeatMode;
  *(v5 + 82) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  *(v5 + 35) = self->_shuffleMode;
  *(v5 + 82) |= 0x400u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5[6] = *&self->_timestamp;
    *(v5 + 82) |= 0x20u;
  }

LABEL_8:
  v11 = [(NSString *)self->_title copyWithZone:a3];
  v12 = v5[18];
  v5[18] = v11;

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    v5[7] = self->_uniqueIdentifier;
    *(v5 + 82) |= 0x40u;
    v13 = self->_has;
    if ((v13 & 0x2000) == 0)
    {
LABEL_10:
      if ((v13 & 0x4000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 162) = self->_isExplicitTrack;
  *(v5 + 82) |= 0x2000u;
  v13 = self->_has;
  if ((v13 & 0x4000) == 0)
  {
LABEL_11:
    if ((v13 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  *(v5 + 163) = self->_isMusicApp;
  *(v5 + 82) |= 0x4000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v5[3] = self->_radioStationIdentifier;
    *(v5 + 82) |= 4u;
  }

LABEL_13:
  v14 = [(NSString *)self->_radioStationHash copyWithZone:a3];
  v15 = v5[15];
  v5[15] = v14;

  v16 = [(NSString *)self->_radioStationName copyWithZone:a3];
  v17 = v5[16];
  v5[16] = v16;

  v18 = [(NSData *)self->_artworkDataDigest copyWithZone:a3];
  v19 = v5[10];
  v5[10] = v18;

  v20 = self->_has;
  if ((v20 & 0x1000) != 0)
  {
    *(v5 + 161) = self->_isAlwaysLive;
    *(v5 + 82) |= 0x1000u;
    v20 = self->_has;
    if ((v20 & 0x800) == 0)
    {
LABEL_15:
      if ((v20 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 160) = self->_isAdvertisement;
  *(v5 + 82) |= 0x800u;
  v20 = self->_has;
  if ((v20 & 0x10) == 0)
  {
LABEL_16:
    if ((v20 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_33:
  v5[5] = self->_storeSubscriptionAdamID;
  *(v5 + 82) |= 0x10u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_17:
    *(v5 + 29) = LODWORD(self->_preferredPlaybackRate);
    *(v5 + 82) |= 0x100u;
  }

LABEL_18:
  v21 = [(NSString *)self->_mediaType copyWithZone:a3];
  v22 = v5[13];
  v5[13] = v21;

  v23 = [(NSData *)self->_collectionInfoData copyWithZone:a3];
  v24 = v5[12];
  v5[12] = v23;

  v25 = [(NSString *)self->_artworkURL copyWithZone:a3];
  v26 = v5[11];
  v5[11] = v25;

  if ((*&self->_has & 8) != 0)
  {
    v5[4] = self->_storeAdamID;
    *(v5 + 82) |= 8u;
  }

  v27 = [(NSData *)self->_userInfoData copyWithZone:a3];
  v28 = v5[19];
  v5[19] = v27;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  album = self->_album;
  if (album | *(v4 + 8))
  {
    if (![(NSString *)album isEqual:?])
    {
      goto LABEL_77;
    }
  }

  artist = self->_artist;
  if (artist | *(v4 + 9))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_77;
    }
  }

  has = self->_has;
  v8 = *(v4 + 82);
  if (has)
  {
    if ((v8 & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_77;
    }
  }

  else if (v8)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_elapsedTime != *(v4 + 2))
    {
      goto LABEL_77;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_playbackRate != *(v4 + 28))
    {
      goto LABEL_77;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 82) & 0x200) == 0 || self->_repeatMode != *(v4 + 34))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 82) & 0x400) == 0 || self->_shuffleMode != *(v4 + 35))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_timestamp != *(v4 + 6))
    {
      goto LABEL_77;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  title = self->_title;
  if (title | *(v4 + 18))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_77;
    }

    has = self->_has;
  }

  v10 = *(v4 + 82);
  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_uniqueIdentifier != *(v4 + 7))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x2000) != 0)
  {
    if ((*(v4 + 82) & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    v11 = *(v4 + 162);
    if (self->_isExplicitTrack)
    {
      if ((*(v4 + 162) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 162))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x2000) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x4000) != 0)
  {
    if ((*(v4 + 82) & 0x4000) == 0)
    {
      goto LABEL_77;
    }

    v12 = *(v4 + 163);
    if (self->_isMusicApp)
    {
      if ((*(v4 + 163) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 163))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x4000) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_radioStationIdentifier != *(v4 + 3))
    {
      goto LABEL_77;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_77;
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash | *(v4 + 15) && ![(NSString *)radioStationHash isEqual:?])
  {
    goto LABEL_77;
  }

  radioStationName = self->_radioStationName;
  if (radioStationName | *(v4 + 16))
  {
    if (![(NSString *)radioStationName isEqual:?])
    {
      goto LABEL_77;
    }
  }

  artworkDataDigest = self->_artworkDataDigest;
  if (artworkDataDigest | *(v4 + 10))
  {
    if (![(NSData *)artworkDataDigest isEqual:?])
    {
      goto LABEL_77;
    }
  }

  v16 = self->_has;
  v17 = *(v4 + 82);
  if ((v16 & 0x1000) != 0)
  {
    if ((*(v4 + 82) & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    v20 = *(v4 + 161);
    if (self->_isAlwaysLive)
    {
      if ((*(v4 + 161) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 161))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x1000) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 82) & 0x800) == 0)
    {
      goto LABEL_77;
    }

    v21 = *(v4 + 160);
    if (self->_isAdvertisement)
    {
      if ((*(v4 + 160) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(v4 + 160))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((v16 & 0x10) != 0)
  {
    if ((v17 & 0x10) == 0 || self->_storeSubscriptionAdamID != *(v4 + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v17 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 82) & 0x100) == 0 || self->_preferredPlaybackRate != *(v4 + 29))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 82) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  mediaType = self->_mediaType;
  if (mediaType | *(v4 + 13) && ![(NSString *)mediaType isEqual:?])
  {
    goto LABEL_77;
  }

  collectionInfoData = self->_collectionInfoData;
  if (collectionInfoData | *(v4 + 12))
  {
    if (![(NSData *)collectionInfoData isEqual:?])
    {
      goto LABEL_77;
    }
  }

  artworkURL = self->_artworkURL;
  if (artworkURL | *(v4 + 11))
  {
    if (![(NSString *)artworkURL isEqual:?])
    {
      goto LABEL_77;
    }
  }

  v25 = *(v4 + 82);
  if ((*&self->_has & 8) == 0)
  {
    if ((v25 & 8) == 0)
    {
      goto LABEL_109;
    }

LABEL_77:
    v18 = 0;
    goto LABEL_78;
  }

  if ((v25 & 8) == 0 || self->_storeAdamID != *(v4 + 4))
  {
    goto LABEL_77;
  }

LABEL_109:
  userInfoData = self->_userInfoData;
  if (userInfoData | *(v4 + 19))
  {
    v18 = [(NSData *)userInfoData isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_78:

  return v18;
}

- (unint64_t)hash
{
  v53 = [(NSString *)self->_album hash];
  v52 = [(NSString *)self->_artist hash];
  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v3.i64 = floor(duration + 0.5);
    v8 = (duration - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((has & 2) != 0)
  {
    elapsedTime = self->_elapsedTime;
    if (elapsedTime < 0.0)
    {
      elapsedTime = -elapsedTime;
    }

    *v3.i64 = floor(elapsedTime + 0.5);
    v12 = (elapsedTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 0x80) != 0)
  {
    playbackRate = self->_playbackRate;
    if (playbackRate < 0.0)
    {
      playbackRate = -playbackRate;
    }

    *v3.i32 = floorf(playbackRate + 0.5);
    v16 = (playbackRate - *v3.i32) * 1.8447e19;
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

  if ((*&self->_has & 0x200) != 0)
  {
    v48 = 2654435761 * self->_repeatMode;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v48 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_27:
      v47 = 2654435761 * self->_shuffleMode;
      goto LABEL_30;
    }
  }

  v47 = 0;
LABEL_30:
  v50 = v10;
  v51 = v6;
  v49 = v14;
  if ((has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v3.i64 = floor(timestamp + 0.5);
    v20 = (timestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v4, v3).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v46 = v18;
  v45 = [(NSString *)self->_title hash];
  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v44 = 2654435761u * self->_uniqueIdentifier;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_40:
      v43 = 2654435761 * self->_isExplicitTrack;
      if ((*&self->_has & 0x4000) != 0)
      {
        goto LABEL_41;
      }

LABEL_45:
      v42 = 0;
      if ((v22 & 4) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v44 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_40;
    }
  }

  v43 = 0;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  v42 = 2654435761 * self->_isMusicApp;
  if ((v22 & 4) != 0)
  {
LABEL_42:
    v41 = 2654435761 * self->_radioStationIdentifier;
    goto LABEL_47;
  }

LABEL_46:
  v41 = 0;
LABEL_47:
  v40 = [(NSString *)self->_radioStationHash hash];
  v39 = [(NSString *)self->_radioStationName hash];
  v23 = [(NSData *)self->_artworkDataDigest hash];
  v26 = self->_has;
  if ((v26 & 0x1000) != 0)
  {
    v27 = 2654435761 * self->_isAlwaysLive;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_49:
      v28 = 2654435761 * self->_isAdvertisement;
      if ((v26 & 0x10) != 0)
      {
        goto LABEL_50;
      }

LABEL_57:
      v29 = 0;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_51;
      }

LABEL_58:
      v33 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    v27 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_49;
    }
  }

  v28 = 0;
  if ((v26 & 0x10) == 0)
  {
    goto LABEL_57;
  }

LABEL_50:
  v29 = 2654435761 * self->_storeSubscriptionAdamID;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_58;
  }

LABEL_51:
  preferredPlaybackRate = self->_preferredPlaybackRate;
  if (preferredPlaybackRate < 0.0)
  {
    preferredPlaybackRate = -preferredPlaybackRate;
  }

  *v24.i32 = floorf(preferredPlaybackRate + 0.5);
  v31 = (preferredPlaybackRate - *v24.i32) * 1.8447e19;
  *v25.i32 = *v24.i32 - (truncf(*v24.i32 * 5.421e-20) * 1.8447e19);
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  v33 = 2654435761u * *vbslq_s8(v32, v25, v24).i32;
  if (v31 >= 0.0)
  {
    if (v31 > 0.0)
    {
      v33 += v31;
    }
  }

  else
  {
    v33 -= fabsf(v31);
  }

LABEL_59:
  v34 = [(NSString *)self->_mediaType hash];
  v35 = [(NSData *)self->_collectionInfoData hash];
  v36 = [(NSString *)self->_artworkURL hash];
  if ((*&self->_has & 8) != 0)
  {
    v37 = 2654435761 * self->_storeAdamID;
  }

  else
  {
    v37 = 0;
  }

  return v52 ^ v53 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v23 ^ v27 ^ v28 ^ v29 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ [(NSData *)self->_userInfoData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 8))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setAlbum:?];
    v4 = v8;
  }

  if (*(v4 + 9))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setArtist:?];
    v4 = v8;
  }

  v5 = *(v4 + 82);
  if (v5)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 82);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_elapsedTime = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 82);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_playbackRate = *(v4 + 28);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 82);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_repeatMode = *(v4 + 34);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 82);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  self->_shuffleMode = *(v4 + 35);
  *&self->_has |= 0x400u;
  if ((*(v4 + 82) & 0x20) != 0)
  {
LABEL_11:
    self->_timestamp = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

LABEL_12:
  if (*(v4 + 18))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setTitle:?];
    v4 = v8;
  }

  v6 = *(v4 + 82);
  if ((v6 & 0x40) != 0)
  {
    self->_uniqueIdentifier = *(v4 + 7);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 82);
    if ((v6 & 0x2000) == 0)
    {
LABEL_16:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

  else if ((*(v4 + 82) & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  self->_isExplicitTrack = *(v4 + 162);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 82);
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  self->_isMusicApp = *(v4 + 163);
  *&self->_has |= 0x4000u;
  if ((*(v4 + 82) & 4) != 0)
  {
LABEL_18:
    self->_radioStationIdentifier = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_19:
  if (*(v4 + 15))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setRadioStationHash:?];
    v4 = v8;
  }

  if (*(v4 + 16))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setRadioStationName:?];
    v4 = v8;
  }

  if (*(v4 + 10))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setArtworkDataDigest:?];
    v4 = v8;
  }

  v7 = *(v4 + 82);
  if ((v7 & 0x1000) != 0)
  {
    self->_isAlwaysLive = *(v4 + 161);
    *&self->_has |= 0x1000u;
    v7 = *(v4 + 82);
    if ((v7 & 0x800) == 0)
    {
LABEL_27:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_55;
    }
  }

  else if ((*(v4 + 82) & 0x800) == 0)
  {
    goto LABEL_27;
  }

  self->_isAdvertisement = *(v4 + 160);
  *&self->_has |= 0x800u;
  v7 = *(v4 + 82);
  if ((v7 & 0x10) == 0)
  {
LABEL_28:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_55:
  self->_storeSubscriptionAdamID = *(v4 + 5);
  *&self->_has |= 0x10u;
  if ((*(v4 + 82) & 0x100) != 0)
  {
LABEL_29:
    self->_preferredPlaybackRate = *(v4 + 29);
    *&self->_has |= 0x100u;
  }

LABEL_30:
  if (*(v4 + 13))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setMediaType:?];
    v4 = v8;
  }

  if (*(v4 + 12))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setCollectionInfoData:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setArtworkURL:?];
    v4 = v8;
  }

  if ((*(v4 + 82) & 8) != 0)
  {
    self->_storeAdamID = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 19))
  {
    [(_NMRNowPlayingInfoProtobuf *)self setUserInfoData:?];
    v4 = v8;
  }
}

@end