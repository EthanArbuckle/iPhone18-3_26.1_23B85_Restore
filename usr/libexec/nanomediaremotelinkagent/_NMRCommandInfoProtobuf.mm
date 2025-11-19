@interface _NMRCommandInfoProtobuf
- (BOOL)isEqual:(id)a3;
- (double)preferredIntervalAtIndex:(unint64_t)a3;
- (float)supportedPlaybackRateAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)a3;
- (int)StringAsCurrentQueueEndAction:(id)a3;
- (int)StringAsRepeatMode:(id)a3;
- (int)StringAsShuffleMode:(id)a3;
- (int)StringAsSupportedQueueEndActions:(id)a3;
- (int)command;
- (int)currentQueueEndAction;
- (int)repeatMode;
- (int)shuffleMode;
- (int)supportedQueueEndActionAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasActive:(BOOL)a3;
- (void)setHasCurrentQueueEndAction:(BOOL)a3;
- (void)setHasEnabled:(BOOL)a3;
- (void)setHasMaximumRating:(BOOL)a3;
- (void)setHasMinimumRating:(BOOL)a3;
- (void)setHasPreferredPlaybackRate:(BOOL)a3;
- (void)setHasPresentationStyle:(BOOL)a3;
- (void)setHasRepeatMode:(BOOL)a3;
- (void)setHasShuffleMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRCommandInfoProtobuf

- (void)dealloc
{
  PBRepeatedDoubleClear();
  PBRepeatedFloatClear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = _NMRCommandInfoProtobuf;
  [(_NMRCommandInfoProtobuf *)&v3 dealloc];
}

- (int)command
{
  if (*&self->_has)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCommand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Play"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Pause"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TogglePlayPause"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NextTrack"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PreviousTrack"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AdvanceShuffleMode"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AdvanceRepeatMode"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BeginFastForward"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EndFastForward"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BeginRewind"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"EndRewind"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Rewind15Seconds"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"FastForward15Seconds"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Rewind30Seconds"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"FastForward30Seconds"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SkipForward"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SkipBackward"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"ChangePlaybackRate"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"RateTrack"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"LikeTrack"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"DislikeTrack"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"BookmarkTrack"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SeekToPlaybackPosition"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"ChangeRepeatMode"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"ChangeShuffleMode"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"NextChapter"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"PreviousChapter"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"NextAlbum"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"PreviousAlbum"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"NextPlaylist"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"PreviousPlaylist"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"BanTrack"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"AddTrackToWishList"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"RemoveTrackFromWishList"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"NextInContext"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"PreviousInContext"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ResetPlaybackTimeout"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"SetPlaybackQueue"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"AddNowPlayingItemToLibrary"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"CreateRadioStation"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"AddItemToLibrary"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"InsertIntoPlaybackQueue"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"PlayItemInPlaybackQueue"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"ChangeQueueEndAction"])
  {
    v4 = 135;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEnabled:(BOOL)a3
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

- (void)setHasActive:(BOOL)a3
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

- (double)preferredIntervalAtIndex:(unint64_t)a3
{
  p_preferredIntervals = &self->_preferredIntervals;
  count = self->_preferredIntervals.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_preferredIntervals->list[a3];
}

- (void)setHasMinimumRating:(BOOL)a3
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

- (void)setHasMaximumRating:(BOOL)a3
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

- (float)supportedPlaybackRateAtIndex:(unint64_t)a3
{
  p_supportedPlaybackRates = &self->_supportedPlaybackRates;
  count = self->_supportedPlaybackRates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedPlaybackRates->list[a3];
}

- (int)repeatMode
{
  if ((*&self->_has & 0x40) != 0)
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
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
  if ((*&self->_has & 0x80) != 0)
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
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

- (void)setHasPresentationStyle:(BOOL)a3
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

- (void)setHasPreferredPlaybackRate:(BOOL)a3
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

- (int)currentQueueEndAction
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_currentQueueEndAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentQueueEndAction:(BOOL)a3
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

- (int)StringAsCurrentQueueEndAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Clear"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Reset"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AutoPlay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)supportedQueueEndActionAtIndex:(unint64_t)a3
{
  p_supportedQueueEndActions = &self->_supportedQueueEndActions;
  count = self->_supportedQueueEndActions.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedQueueEndActions->list[a3];
}

- (int)StringAsSupportedQueueEndActions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Clear"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Reset"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AutoPlay"])
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
  v7.super_class = _NMRCommandInfoProtobuf;
  v3 = [(_NMRCommandInfoProtobuf *)&v7 description];
  v4 = [(_NMRCommandInfoProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    command = self->_command;
    v6 = @"Unknown";
    switch(command)
    {
      case 0:
        break;
      case 1:
        v6 = @"Play";
        break;
      case 2:
        v6 = @"Pause";
        break;
      case 3:
        v6 = @"TogglePlayPause";
        break;
      case 4:
        v6 = @"Stop";
        break;
      case 5:
        v6 = @"NextTrack";
        break;
      case 6:
        v6 = @"PreviousTrack";
        break;
      case 7:
        v6 = @"AdvanceShuffleMode";
        break;
      case 8:
        v6 = @"AdvanceRepeatMode";
        break;
      case 9:
        v6 = @"BeginFastForward";
        break;
      case 10:
        v6 = @"EndFastForward";
        break;
      case 11:
        v6 = @"BeginRewind";
        break;
      case 12:
        v6 = @"EndRewind";
        break;
      case 13:
        v6 = @"Rewind15Seconds";
        break;
      case 14:
        v6 = @"FastForward15Seconds";
        break;
      case 15:
        v6 = @"Rewind30Seconds";
        break;
      case 16:
        v6 = @"FastForward30Seconds";
        break;
      case 17:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 42:
      case 43:
      case 44:
        goto LABEL_6;
      case 18:
        v6 = @"SkipForward";
        break;
      case 19:
        v6 = @"SkipBackward";
        break;
      case 20:
        v6 = @"ChangePlaybackRate";
        break;
      case 21:
        v6 = @"RateTrack";
        break;
      case 22:
        v6 = @"LikeTrack";
        break;
      case 23:
        v6 = @"DislikeTrack";
        break;
      case 24:
        v6 = @"BookmarkTrack";
        break;
      case 25:
        v6 = @"NextChapter";
        break;
      case 26:
        v6 = @"PreviousChapter";
        break;
      case 27:
        v6 = @"NextAlbum";
        break;
      case 28:
        v6 = @"PreviousAlbum";
        break;
      case 29:
        v6 = @"NextPlaylist";
        break;
      case 30:
        v6 = @"PreviousPlaylist";
        break;
      case 31:
        v6 = @"BanTrack";
        break;
      case 32:
        v6 = @"AddTrackToWishList";
        break;
      case 33:
        v6 = @"RemoveTrackFromWishList";
        break;
      case 34:
        v6 = @"NextInContext";
        break;
      case 35:
        v6 = @"PreviousInContext";
        break;
      case 41:
        v6 = @"ResetPlaybackTimeout";
        break;
      case 45:
        v6 = @"SeekToPlaybackPosition";
        break;
      case 46:
        v6 = @"ChangeRepeatMode";
        break;
      case 47:
        v6 = @"ChangeShuffleMode";
        break;
      case 48:
        v6 = @"SetPlaybackQueue";
        break;
      case 49:
        v6 = @"AddNowPlayingItemToLibrary";
        break;
      case 50:
        v6 = @"CreateRadioStation";
        break;
      case 51:
        v6 = @"AddItemToLibrary";
        break;
      case 52:
        v6 = @"InsertIntoPlaybackQueue";
        break;
      case 53:
        v6 = @"PlayItemInPlaybackQueue";
        break;
      default:
        if (command == 135)
        {
          v6 = @"ChangeQueueEndAction";
        }

        else
        {
LABEL_6:
          v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_command];
        }

        break;
    }

    [v3 setObject:v6 forKey:@"command"];

    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_enabled];
    [v3 setObject:v7 forKey:@"enabled"];

    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_active];
    [v3 setObject:v8 forKey:@"active"];
  }

  v9 = PBRepeatedDoubleNSArray();
  [v3 setObject:v9 forKey:@"preferredInterval"];

  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [v3 setObject:localizedTitle forKey:@"localizedTitle"];
  }

  localizedShortTitle = self->_localizedShortTitle;
  if (localizedShortTitle)
  {
    [v3 setObject:localizedShortTitle forKey:@"localizedShortTitle"];
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    *&v10 = self->_minimumRating;
    v14 = [NSNumber numberWithFloat:v10];
    [v3 setObject:v14 forKey:@"minimumRating"];

    v13 = self->_has;
  }

  if ((v13 & 4) != 0)
  {
    *&v10 = self->_maximumRating;
    v15 = [NSNumber numberWithFloat:v10];
    [v3 setObject:v15 forKey:@"maximumRating"];
  }

  v16 = PBRepeatedFloatNSArray();
  [v3 setObject:v16 forKey:@"supportedPlaybackRate"];

  v18 = self->_has;
  if ((v18 & 0x40) != 0)
  {
    repeatMode = self->_repeatMode;
    if (repeatMode >= 4)
    {
      v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_repeatMode];
    }

    else
    {
      v20 = off_1000493B0[repeatMode];
    }

    [v3 setObject:v20 forKey:@"repeatMode"];

    v18 = self->_has;
    if ((v18 & 0x80) == 0)
    {
LABEL_65:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_77;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_65;
  }

  shuffleMode = self->_shuffleMode;
  if (shuffleMode >= 4)
  {
    v22 = [NSString stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
  }

  else
  {
    v22 = off_1000493D0[shuffleMode];
  }

  [v3 setObject:v22 forKey:@"shuffleMode"];

  v18 = self->_has;
  if ((v18 & 0x20) == 0)
  {
LABEL_66:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_78;
  }

LABEL_77:
  v23 = [NSNumber numberWithInt:self->_presentationStyle];
  [v3 setObject:v23 forKey:@"presentationStyle"];

  v18 = self->_has;
  if ((v18 & 0x10) == 0)
  {
LABEL_67:
    if ((v18 & 2) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_79;
  }

LABEL_78:
  *&v17 = self->_preferredPlaybackRate;
  v24 = [NSNumber numberWithFloat:v17];
  [v3 setObject:v24 forKey:@"preferredPlaybackRate"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_83;
  }

LABEL_79:
  currentQueueEndAction = self->_currentQueueEndAction;
  if (currentQueueEndAction >= 5)
  {
    v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_currentQueueEndAction];
  }

  else
  {
    v26 = off_1000493F0[currentQueueEndAction];
  }

  [v3 setObject:v26 forKey:@"currentQueueEndAction"];

LABEL_83:
  p_supportedQueueEndActions = &self->_supportedQueueEndActions;
  if (self->_supportedQueueEndActions.count)
  {
    v28 = [NSMutableArray arrayWithCapacity:?];
    if (p_supportedQueueEndActions->count)
    {
      v29 = 0;
      do
      {
        v30 = p_supportedQueueEndActions->list[v29];
        if (v30 >= 5)
        {
          v31 = [NSString stringWithFormat:@"(unknown: %i)", p_supportedQueueEndActions->list[v29]];
        }

        else
        {
          v31 = off_1000493F0[v30];
        }

        [v28 addObject:v31];

        ++v29;
      }

      while (v29 < p_supportedQueueEndActions->count);
    }

    [v3 setObject:v28 forKey:@"supportedQueueEndAction"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v25 = v4;
  if (has)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    v4 = v25;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  enabled = self->_enabled;
  PBDataWriterWriteBOOLField();
  v4 = v25;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    active = self->_active;
    PBDataWriterWriteBOOLField();
    v4 = v25;
  }

LABEL_5:
  if (self->_preferredIntervals.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_preferredIntervals.list[v7];
      PBDataWriterWriteDoubleField();
      v4 = v25;
      ++v7;
    }

    while (v7 < self->_preferredIntervals.count);
  }

  if (self->_localizedTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v25;
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    minimumRating = self->_minimumRating;
    PBDataWriterWriteFloatField();
    v4 = v25;
    v9 = self->_has;
  }

  if ((v9 & 4) != 0)
  {
    maximumRating = self->_maximumRating;
    PBDataWriterWriteFloatField();
    v4 = v25;
  }

  if (self->_supportedPlaybackRates.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_supportedPlaybackRates.list[v12];
      PBDataWriterWriteFloatField();
      v4 = v25;
      ++v12;
    }

    while (v12 < self->_supportedPlaybackRates.count);
  }

  if (self->_localizedShortTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v25;
  }

  v14 = self->_has;
  if ((v14 & 0x40) != 0)
  {
    repeatMode = self->_repeatMode;
    PBDataWriterWriteInt32Field();
    v4 = v25;
    v14 = self->_has;
    if ((v14 & 0x80) == 0)
    {
LABEL_21:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  v4 = v25;
  v14 = self->_has;
  if ((v14 & 0x20) == 0)
  {
LABEL_22:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  presentationStyle = self->_presentationStyle;
  PBDataWriterWriteInt32Field();
  v4 = v25;
  v14 = self->_has;
  if ((v14 & 0x10) == 0)
  {
LABEL_23:
    if ((v14 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_37:
  preferredPlaybackRate = self->_preferredPlaybackRate;
  PBDataWriterWriteFloatField();
  v4 = v25;
  if ((*&self->_has & 2) != 0)
  {
LABEL_24:
    currentQueueEndAction = self->_currentQueueEndAction;
    PBDataWriterWriteInt32Field();
    v4 = v25;
  }

LABEL_25:
  p_supportedQueueEndActions = &self->_supportedQueueEndActions;
  if (p_supportedQueueEndActions->count)
  {
    v17 = 0;
    do
    {
      v18 = p_supportedQueueEndActions->list[v17];
      PBDataWriterWriteInt32Field();
      v4 = v25;
      ++v17;
    }

    while (v17 < p_supportedQueueEndActions->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_35:
    v4[129] = self->_enabled;
    *(v4 + 66) |= 0x200u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 20) = self->_command;
  *(v4 + 66) |= 1u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_35;
  }

LABEL_3:
  if ((has & 0x100) != 0)
  {
LABEL_4:
    v4[128] = self->_active;
    *(v4 + 66) |= 0x100u;
  }

LABEL_5:
  v17 = v4;
  if ([(_NMRCommandInfoProtobuf *)self preferredIntervalsCount])
  {
    [v17 clearPreferredIntervals];
    v6 = [(_NMRCommandInfoProtobuf *)self preferredIntervalsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [(_NMRCommandInfoProtobuf *)self preferredIntervalAtIndex:i];
        [v17 addPreferredInterval:?];
      }
    }
  }

  if (self->_localizedTitle)
  {
    [v17 setLocalizedTitle:?];
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    *(v17 + 27) = LODWORD(self->_minimumRating);
    *(v17 + 66) |= 8u;
    v9 = self->_has;
  }

  if ((v9 & 4) != 0)
  {
    *(v17 + 26) = LODWORD(self->_maximumRating);
    *(v17 + 66) |= 4u;
  }

  if ([(_NMRCommandInfoProtobuf *)self supportedPlaybackRatesCount])
  {
    [v17 clearSupportedPlaybackRates];
    v10 = [(_NMRCommandInfoProtobuf *)self supportedPlaybackRatesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [(_NMRCommandInfoProtobuf *)self supportedPlaybackRateAtIndex:j];
        [v17 addSupportedPlaybackRate:?];
      }
    }
  }

  if (self->_localizedShortTitle)
  {
    [v17 setLocalizedShortTitle:?];
  }

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    *(v17 + 30) = self->_repeatMode;
    *(v17 + 66) |= 0x40u;
    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_23:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  *(v17 + 31) = self->_shuffleMode;
  *(v17 + 66) |= 0x80u;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_24:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_25;
    }

LABEL_40:
    *(v17 + 28) = LODWORD(self->_preferredPlaybackRate);
    *(v17 + 66) |= 0x10u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_39:
  *(v17 + 29) = self->_presentationStyle;
  *(v17 + 66) |= 0x20u;
  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  if ((v13 & 2) != 0)
  {
LABEL_26:
    *(v17 + 21) = self->_currentQueueEndAction;
    *(v17 + 66) |= 2u;
  }

LABEL_27:
  if ([(_NMRCommandInfoProtobuf *)self supportedQueueEndActionsCount])
  {
    [v17 clearSupportedQueueEndActions];
    v14 = [(_NMRCommandInfoProtobuf *)self supportedQueueEndActionsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        [v17 addSupportedQueueEndAction:{-[_NMRCommandInfoProtobuf supportedQueueEndActionAtIndex:](self, "supportedQueueEndActionAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[20] = self->_command;
    *(v5 + 66) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 129) = self->_enabled;
  *(v5 + 66) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    *(v5 + 128) = self->_active;
    *(v5 + 66) |= 0x100u;
  }

LABEL_5:
  PBRepeatedDoubleCopy();
  v8 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  v9 = v6[12];
  v6[12] = v8;

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    *(v6 + 27) = LODWORD(self->_minimumRating);
    *(v6 + 66) |= 8u;
    v10 = self->_has;
  }

  if ((v10 & 4) != 0)
  {
    *(v6 + 26) = LODWORD(self->_maximumRating);
    *(v6 + 66) |= 4u;
  }

  PBRepeatedFloatCopy();
  v11 = [(NSString *)self->_localizedShortTitle copyWithZone:a3];
  v12 = v6[11];
  v6[11] = v11;

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    *(v6 + 30) = self->_repeatMode;
    *(v6 + 66) |= 0x40u;
    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_11:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 31) = self->_shuffleMode;
  *(v6 + 66) |= 0x80u;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_12:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    *(v6 + 28) = LODWORD(self->_preferredPlaybackRate);
    *(v6 + 66) |= 0x10u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v6 + 29) = self->_presentationStyle;
  *(v6 + 66) |= 0x20u;
  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v13 & 2) != 0)
  {
LABEL_14:
    *(v6 + 21) = self->_currentQueueEndAction;
    *(v6 + 66) |= 2u;
  }

LABEL_15:
  PBRepeatedInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  v5 = *(v4 + 66);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_command != *(v4 + 20))
    {
      goto LABEL_65;
    }
  }

  else if (v5)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 66) & 0x200) == 0)
    {
      goto LABEL_65;
    }

    v9 = *(v4 + 129);
    if (self->_enabled)
    {
      if ((*(v4 + 129) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (*(v4 + 129))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 66) & 0x200) != 0)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(v4 + 66) & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_65:
    IsEqual = 0;
    goto LABEL_66;
  }

  if ((*(v4 + 66) & 0x100) == 0)
  {
    goto LABEL_65;
  }

  v10 = *(v4 + 128);
  if (self->_active)
  {
    if ((*(v4 + 128) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(v4 + 128))
  {
    goto LABEL_65;
  }

LABEL_11:
  if (!PBRepeatedDoubleIsEqual())
  {
    goto LABEL_65;
  }

  localizedTitle = self->_localizedTitle;
  if (localizedTitle | *(v4 + 12))
  {
    if (![(NSString *)localizedTitle isEqual:?])
    {
      goto LABEL_65;
    }
  }

  has = self->_has;
  v8 = *(v4 + 66);
  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_minimumRating != *(v4 + 27))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_maximumRating != *(v4 + 26))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_65;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_65;
  }

  localizedShortTitle = self->_localizedShortTitle;
  if (localizedShortTitle | *(v4 + 11))
  {
    if (![(NSString *)localizedShortTitle isEqual:?])
    {
      goto LABEL_65;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 66);
  if ((v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_repeatMode != *(v4 + 30))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_shuffleMode != *(v4 + 31))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_presentationStyle != *(v4 + 29))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_preferredPlaybackRate != *(v4 + 28))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_65;
  }

  if ((v12 & 2) != 0)
  {
    if ((v13 & 2) == 0 || self->_currentQueueEndAction != *(v4 + 21))
    {
      goto LABEL_65;
    }
  }

  else if ((v13 & 2) != 0)
  {
    goto LABEL_65;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_66:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v32 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v32 = 2654435761 * self->_command;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_enabled;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_active;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = PBRepeatedDoubleHash();
  v6 = [(NSString *)self->_localizedTitle hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    minimumRating = self->_minimumRating;
    if (minimumRating < 0.0)
    {
      minimumRating = -minimumRating;
    }

    *v7.i32 = floorf(minimumRating + 0.5);
    v12 = (minimumRating - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v7 = vbslq_s8(v13, v8, v7);
    v10 = 2654435761u * *v7.i32;
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

  if ((has & 4) != 0)
  {
    maximumRating = self->_maximumRating;
    if (maximumRating < 0.0)
    {
      maximumRating = -maximumRating;
    }

    *v7.i32 = floorf(maximumRating + 0.5);
    v16 = (maximumRating - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v14 = 2654435761u * *vbslq_s8(v17, v8, v7).i32;
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

  v18 = PBRepeatedFloatHash();
  v19 = [(NSString *)self->_localizedShortTitle hash];
  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v23 = 2654435761 * self->_repeatMode;
    if ((v22 & 0x80) != 0)
    {
LABEL_26:
      v24 = 2654435761 * self->_shuffleMode;
      if ((v22 & 0x20) != 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      v25 = 0;
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      v29 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v23 = 0;
    if ((v22 & 0x80) != 0)
    {
      goto LABEL_26;
    }
  }

  v24 = 0;
  if ((v22 & 0x20) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v25 = 2654435761 * self->_presentationStyle;
  if ((v22 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  preferredPlaybackRate = self->_preferredPlaybackRate;
  if (preferredPlaybackRate < 0.0)
  {
    preferredPlaybackRate = -preferredPlaybackRate;
  }

  *v20.i32 = floorf(preferredPlaybackRate + 0.5);
  v27 = (preferredPlaybackRate - *v20.i32) * 1.8447e19;
  *v21.i32 = *v20.i32 - (truncf(*v20.i32 * 5.421e-20) * 1.8447e19);
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = 2654435761u * *vbslq_s8(v28, v21, v20).i32;
  if (v27 >= 0.0)
  {
    if (v27 > 0.0)
    {
      v29 += v27;
    }
  }

  else
  {
    v29 -= fabsf(v27);
  }

LABEL_36:
  if ((v22 & 2) != 0)
  {
    v30 = 2654435761 * self->_currentQueueEndAction;
  }

  else
  {
    v30 = 0;
  }

  return v3 ^ v32 ^ v4 ^ v5 ^ v10 ^ v14 ^ v18 ^ v6 ^ v19 ^ v23 ^ v24 ^ v25 ^ v29 ^ v30 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 66);
  if (v5)
  {
    self->_command = *(v4 + 20);
    *&self->_has |= 1u;
    v5 = *(v4 + 66);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 66) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_enabled = *(v4 + 129);
  *&self->_has |= 0x200u;
  if ((*(v4 + 66) & 0x100) != 0)
  {
LABEL_4:
    self->_active = *(v4 + 128);
    *&self->_has |= 0x100u;
  }

LABEL_5:
  v19 = v4;
  v6 = [v4 preferredIntervalsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v19 preferredIntervalAtIndex:i];
      [(_NMRCommandInfoProtobuf *)self addPreferredInterval:?];
    }
  }

  v9 = v19;
  if (v19[12])
  {
    [(_NMRCommandInfoProtobuf *)self setLocalizedTitle:?];
    v9 = v19;
  }

  v10 = *(v9 + 66);
  if ((v10 & 8) != 0)
  {
    self->_minimumRating = *(v9 + 27);
    *&self->_has |= 8u;
    v10 = *(v9 + 66);
  }

  if ((v10 & 4) != 0)
  {
    self->_maximumRating = *(v9 + 26);
    *&self->_has |= 4u;
  }

  v11 = [v9 supportedPlaybackRatesCount];
  if (v11)
  {
    v12 = v11;
    for (j = 0; j != v12; ++j)
    {
      [v19 supportedPlaybackRateAtIndex:j];
      [(_NMRCommandInfoProtobuf *)self addSupportedPlaybackRate:?];
    }
  }

  v14 = v19;
  if (v19[11])
  {
    [(_NMRCommandInfoProtobuf *)self setLocalizedShortTitle:?];
    v14 = v19;
  }

  v15 = *(v14 + 66);
  if ((v15 & 0x40) != 0)
  {
    self->_repeatMode = *(v14 + 30);
    *&self->_has |= 0x40u;
    v15 = *(v14 + 66);
    if ((v15 & 0x80) == 0)
    {
LABEL_21:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  self->_shuffleMode = *(v14 + 31);
  *&self->_has |= 0x80u;
  v15 = *(v14 + 66);
  if ((v15 & 0x20) == 0)
  {
LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_presentationStyle = *(v14 + 29);
  *&self->_has |= 0x20u;
  v15 = *(v14 + 66);
  if ((v15 & 0x10) == 0)
  {
LABEL_23:
    if ((v15 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_37:
  self->_preferredPlaybackRate = *(v14 + 28);
  *&self->_has |= 0x10u;
  if ((*(v14 + 66) & 2) != 0)
  {
LABEL_24:
    self->_currentQueueEndAction = *(v14 + 21);
    *&self->_has |= 2u;
  }

LABEL_25:
  v16 = [v14 supportedQueueEndActionsCount];
  if (v16)
  {
    v17 = v16;
    for (k = 0; k != v17; ++k)
    {
      -[_NMRCommandInfoProtobuf addSupportedQueueEndAction:](self, "addSupportedQueueEndAction:", [v19 supportedQueueEndActionAtIndex:k]);
    }
  }
}

@end