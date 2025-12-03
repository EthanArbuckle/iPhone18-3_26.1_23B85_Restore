@interface _NMRSendCommandMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)command;
- (int)command;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCommand:(BOOL)command;
- (void)setHasOriginIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation _NMRSendCommandMessageProtobuf

- (int)command
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommand:(BOOL)command
{
  if (command)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([commandCopy isEqualToString:@"Play"])
  {
    v4 = 1;
  }

  else if ([commandCopy isEqualToString:@"Pause"])
  {
    v4 = 2;
  }

  else if ([commandCopy isEqualToString:@"TogglePlayPause"])
  {
    v4 = 3;
  }

  else if ([commandCopy isEqualToString:@"Stop"])
  {
    v4 = 4;
  }

  else if ([commandCopy isEqualToString:@"NextTrack"])
  {
    v4 = 5;
  }

  else if ([commandCopy isEqualToString:@"PreviousTrack"])
  {
    v4 = 6;
  }

  else if ([commandCopy isEqualToString:@"AdvanceShuffleMode"])
  {
    v4 = 7;
  }

  else if ([commandCopy isEqualToString:@"AdvanceRepeatMode"])
  {
    v4 = 8;
  }

  else if ([commandCopy isEqualToString:@"BeginFastForward"])
  {
    v4 = 9;
  }

  else if ([commandCopy isEqualToString:@"EndFastForward"])
  {
    v4 = 10;
  }

  else if ([commandCopy isEqualToString:@"BeginRewind"])
  {
    v4 = 11;
  }

  else if ([commandCopy isEqualToString:@"EndRewind"])
  {
    v4 = 12;
  }

  else if ([commandCopy isEqualToString:@"Rewind15Seconds"])
  {
    v4 = 13;
  }

  else if ([commandCopy isEqualToString:@"FastForward15Seconds"])
  {
    v4 = 14;
  }

  else if ([commandCopy isEqualToString:@"Rewind30Seconds"])
  {
    v4 = 15;
  }

  else if ([commandCopy isEqualToString:@"FastForward30Seconds"])
  {
    v4 = 16;
  }

  else if ([commandCopy isEqualToString:@"SkipForward"])
  {
    v4 = 18;
  }

  else if ([commandCopy isEqualToString:@"SkipBackward"])
  {
    v4 = 19;
  }

  else if ([commandCopy isEqualToString:@"ChangePlaybackRate"])
  {
    v4 = 20;
  }

  else if ([commandCopy isEqualToString:@"RateTrack"])
  {
    v4 = 21;
  }

  else if ([commandCopy isEqualToString:@"LikeTrack"])
  {
    v4 = 22;
  }

  else if ([commandCopy isEqualToString:@"DislikeTrack"])
  {
    v4 = 23;
  }

  else if ([commandCopy isEqualToString:@"BookmarkTrack"])
  {
    v4 = 24;
  }

  else if ([commandCopy isEqualToString:@"SeekToPlaybackPosition"])
  {
    v4 = 45;
  }

  else if ([commandCopy isEqualToString:@"ChangeRepeatMode"])
  {
    v4 = 46;
  }

  else if ([commandCopy isEqualToString:@"ChangeShuffleMode"])
  {
    v4 = 47;
  }

  else if ([commandCopy isEqualToString:@"NextChapter"])
  {
    v4 = 25;
  }

  else if ([commandCopy isEqualToString:@"PreviousChapter"])
  {
    v4 = 26;
  }

  else if ([commandCopy isEqualToString:@"NextAlbum"])
  {
    v4 = 27;
  }

  else if ([commandCopy isEqualToString:@"PreviousAlbum"])
  {
    v4 = 28;
  }

  else if ([commandCopy isEqualToString:@"NextPlaylist"])
  {
    v4 = 29;
  }

  else if ([commandCopy isEqualToString:@"PreviousPlaylist"])
  {
    v4 = 30;
  }

  else if ([commandCopy isEqualToString:@"BanTrack"])
  {
    v4 = 31;
  }

  else if ([commandCopy isEqualToString:@"AddTrackToWishList"])
  {
    v4 = 32;
  }

  else if ([commandCopy isEqualToString:@"RemoveTrackFromWishList"])
  {
    v4 = 33;
  }

  else if ([commandCopy isEqualToString:@"NextInContext"])
  {
    v4 = 34;
  }

  else if ([commandCopy isEqualToString:@"PreviousInContext"])
  {
    v4 = 35;
  }

  else if ([commandCopy isEqualToString:@"ResetPlaybackTimeout"])
  {
    v4 = 41;
  }

  else if ([commandCopy isEqualToString:@"SetPlaybackQueue"])
  {
    v4 = 48;
  }

  else if ([commandCopy isEqualToString:@"AddNowPlayingItemToLibrary"])
  {
    v4 = 49;
  }

  else if ([commandCopy isEqualToString:@"CreateRadioStation"])
  {
    v4 = 50;
  }

  else if ([commandCopy isEqualToString:@"AddItemToLibrary"])
  {
    v4 = 51;
  }

  else if ([commandCopy isEqualToString:@"InsertIntoPlaybackQueue"])
  {
    v4 = 52;
  }

  else if ([commandCopy isEqualToString:@"PlayItemInPlaybackQueue"])
  {
    v4 = 53;
  }

  else if ([commandCopy isEqualToString:@"ChangeQueueEndAction"])
  {
    v4 = 135;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v7.super_class = _NMRSendCommandMessageProtobuf;
  v3 = [(_NMRSendCommandMessageProtobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRSendCommandMessageProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    command = self->_command;
    v5 = @"Unknown";
    switch(command)
    {
      case 0:
        break;
      case 1:
        v5 = @"Play";
        break;
      case 2:
        v5 = @"Pause";
        break;
      case 3:
        v5 = @"TogglePlayPause";
        break;
      case 4:
        v5 = @"Stop";
        break;
      case 5:
        v5 = @"NextTrack";
        break;
      case 6:
        v5 = @"PreviousTrack";
        break;
      case 7:
        v5 = @"AdvanceShuffleMode";
        break;
      case 8:
        v5 = @"AdvanceRepeatMode";
        break;
      case 9:
        v5 = @"BeginFastForward";
        break;
      case 10:
        v5 = @"EndFastForward";
        break;
      case 11:
        v5 = @"BeginRewind";
        break;
      case 12:
        v5 = @"EndRewind";
        break;
      case 13:
        v5 = @"Rewind15Seconds";
        break;
      case 14:
        v5 = @"FastForward15Seconds";
        break;
      case 15:
        v5 = @"Rewind30Seconds";
        break;
      case 16:
        v5 = @"FastForward30Seconds";
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
        v5 = @"SkipForward";
        break;
      case 19:
        v5 = @"SkipBackward";
        break;
      case 20:
        v5 = @"ChangePlaybackRate";
        break;
      case 21:
        v5 = @"RateTrack";
        break;
      case 22:
        v5 = @"LikeTrack";
        break;
      case 23:
        v5 = @"DislikeTrack";
        break;
      case 24:
        v5 = @"BookmarkTrack";
        break;
      case 25:
        v5 = @"NextChapter";
        break;
      case 26:
        v5 = @"PreviousChapter";
        break;
      case 27:
        v5 = @"NextAlbum";
        break;
      case 28:
        v5 = @"PreviousAlbum";
        break;
      case 29:
        v5 = @"NextPlaylist";
        break;
      case 30:
        v5 = @"PreviousPlaylist";
        break;
      case 31:
        v5 = @"BanTrack";
        break;
      case 32:
        v5 = @"AddTrackToWishList";
        break;
      case 33:
        v5 = @"RemoveTrackFromWishList";
        break;
      case 34:
        v5 = @"NextInContext";
        break;
      case 35:
        v5 = @"PreviousInContext";
        break;
      case 41:
        v5 = @"ResetPlaybackTimeout";
        break;
      case 45:
        v5 = @"SeekToPlaybackPosition";
        break;
      case 46:
        v5 = @"ChangeRepeatMode";
        break;
      case 47:
        v5 = @"ChangeShuffleMode";
        break;
      case 48:
        v5 = @"SetPlaybackQueue";
        break;
      case 49:
        v5 = @"AddNowPlayingItemToLibrary";
        break;
      case 50:
        v5 = @"CreateRadioStation";
        break;
      case 51:
        v5 = @"AddItemToLibrary";
        break;
      case 52:
        v5 = @"InsertIntoPlaybackQueue";
        break;
      case 53:
        v5 = @"PlayItemInPlaybackQueue";
        break;
      default:
        if (command == 135)
        {
          v5 = @"ChangeQueueEndAction";
        }

        else
        {
LABEL_6:
          v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_command];
        }

        break;
    }

    [v3 setObject:v5 forKey:@"command"];
  }

  options = self->_options;
  if (options)
  {
    dictionaryRepresentation = [(_NMRCommandOptionsProtobuf *)options dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"options"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v10 = [NSNumber numberWithInt:self->_originIdentifier];
    [v3 setObject:v10 forKey:@"originIdentifier"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_command;
    *(toCopy + 44) |= 2u;
  }

  v6 = toCopy;
  if (self->_options)
  {
    [toCopy setOptions:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[10] = self->_originIdentifier;
    *(toCopy + 44) |= 4u;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[6] = self->_command;
    *(v5 + 44) |= 2u;
  }

  v7 = [(_NMRCommandOptionsProtobuf *)self->_options copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if (has)
  {
    v6[1] = *&self->_timestamp;
    *(v6 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 10) = self->_originIdentifier;
    *(v6 + 44) |= 4u;
  }

  v10 = [(NSString *)self->_bundleID copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_command != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_22;
  }

  options = self->_options;
  if (options | *(equalCopy + 4))
  {
    if (![(_NMRCommandOptionsProtobuf *)options isEqual:?])
    {
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_22;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_originIdentifier != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 2))
  {
    v10 = [(NSString *)bundleID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_command;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_NMRCommandOptionsProtobuf *)self->_options hash];
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

  return v4 ^ v3 ^ v7 ^ v11 ^ [(NSString *)self->_bundleID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[11] & 2) != 0)
  {
    self->_command = fromCopy[6];
    *&self->_has |= 2u;
  }

  options = self->_options;
  v7 = *(v5 + 4);
  v9 = v5;
  if (options)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_NMRCommandOptionsProtobuf *)options mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_NMRSendCommandMessageProtobuf *)self setOptions:?];
  }

  v5 = v9;
LABEL_9:
  v8 = *(v5 + 44);
  if (v8)
  {
    self->_timestamp = *(v5 + 1);
    *&self->_has |= 1u;
    v8 = *(v5 + 44);
  }

  if ((v8 & 4) != 0)
  {
    self->_originIdentifier = v5[10];
    *&self->_has |= 4u;
  }

  if (*(v5 + 2))
  {
    [(_NMRSendCommandMessageProtobuf *)self setBundleID:?];
  }

  _objc_release_x1();
}

@end