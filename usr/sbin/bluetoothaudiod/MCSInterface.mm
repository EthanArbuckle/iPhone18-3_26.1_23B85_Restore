@interface MCSInterface
- (MCSInterface)initWithPeripheral:(id)peripheral service:(id)service;
- (id)extractMediaControlPointOpcodesSupported;
- (id)extractMediaPlayerName;
- (id)extractTrackDuration;
- (id)extractTrackPosition;
- (id)extractTrackTitle;
- (unsigned)extractMediaState;
- (void)didRequestCurrentTrackInfoRead;
- (void)didRequestMediaControlOpcodesSupportedRead;
- (void)didRequestMediaPlayerInfoRead;
- (void)didRequestMediaPlayerNameRead;
- (void)didRequestMediaStateRead;
- (void)didRequestTrackDurationRead;
- (void)didRequestTrackPositionRead;
- (void)didRequestTrackPositionWrite:(id)write;
- (void)didRequestTrackTitleRead;
- (void)extractPlayingOrder;
- (void)extractPlayingOrdersSupported;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation MCSInterface

- (MCSInterface)initWithPeripheral:(id)peripheral service:(id)service
{
  v7.receiver = self;
  v7.super_class = MCSInterface;
  v4 = [(ServiceInterface *)&v7 initWithPeripheral:peripheral service:service];
  v5 = v4;
  if (v4)
  {
    [(ServiceInterface *)v4 setIsPrimary:1];
    [(ServiceInterface *)v5 setStartTimeout:0.0];
  }

  return v5;
}

- (void)start
{
  v17.receiver = self;
  v17.super_class = MCSInterface;
  [(ServiceInterface *)&v17 start];
  v15 = [CBUUID UUIDWithString:CBUUIDMediaPlayerNameCharacteristicString];
  v18[0] = v15;
  v14 = [CBUUID UUIDWithString:CBUUIDTrackChangedCharacteristicString];
  v18[1] = v14;
  v2 = [CBUUID UUIDWithString:CBUUIDTrackTitleCharacteristicString];
  v18[2] = v2;
  v3 = [CBUUID UUIDWithString:CBUUIDTrackDurationCharacteristicString];
  v18[3] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDTrackPositionCharacteristicString];
  v18[4] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDPlayingOrderCharacteristicString];
  v18[5] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDPlayingOrdersSupportedCharacteristicString];
  v18[6] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDMediaStateCharacteristicString];
  v18[7] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDMediaControlPointCharacteristicString];
  v18[8] = v8;
  v9 = [CBUUID UUIDWithString:CBUUIDMediaControlPointOpcodesSupportedCharacteristicString];
  v18[9] = v9;
  v10 = [CBUUID UUIDWithString:CBUUIDContentControlIdCharacteristicString];
  v18[10] = v10;
  v11 = [NSArray arrayWithObjects:v18 count:11];

  peripheral = [(ServiceInterface *)self peripheral];
  service = [(ServiceInterface *)self service];
  [peripheral discoverCharacteristics:v11 forService:service];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = MCSInterface;
  [(ServiceInterface *)&v2 stop];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = [service characteristics];
    v9 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (!v9)
    {
      goto LABEL_58;
    }

    v10 = v9;
    v11 = *v71;
    v67 = CBUUIDTrackChangedCharacteristicString;
    v68 = CBUUIDMediaPlayerNameCharacteristicString;
    v65 = CBUUIDTrackDurationCharacteristicString;
    v66 = CBUUIDTrackTitleCharacteristicString;
    v63 = CBUUIDPlayingOrderCharacteristicString;
    v64 = CBUUIDTrackPositionCharacteristicString;
    v61 = CBUUIDMediaStateCharacteristicString;
    v62 = CBUUIDPlayingOrdersSupportedCharacteristicString;
    v59 = CBUUIDMediaControlPointOpcodesSupportedCharacteristicString;
    v60 = CBUUIDMediaControlPointCharacteristicString;
    v58 = CBUUIDContentControlIdCharacteristicString;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * v12);
        mediaPlayerNameCharacteristic = [(MCSInterface *)self mediaPlayerNameCharacteristic];
        if (mediaPlayerNameCharacteristic)
        {
        }

        else
        {
          uUID = [v13 UUID];
          v16 = [CBUUID UUIDWithString:v68];
          v17 = [uUID isEqual:v16];

          if (v17)
          {
            [(MCSInterface *)self setMediaPlayerNameCharacteristic:v13];
            goto LABEL_53;
          }
        }

        trackChangedCharacteristic = [(MCSInterface *)self trackChangedCharacteristic];
        if (trackChangedCharacteristic)
        {
        }

        else
        {
          uUID2 = [v13 UUID];
          v20 = [CBUUID UUIDWithString:v67];
          v21 = [uUID2 isEqual:v20];

          if (v21)
          {
            [(MCSInterface *)self setTrackChangedCharacteristic:v13];
LABEL_15:
            [peripheralCopy setNotifyValue:1 forCharacteristic:v13];
            goto LABEL_56;
          }
        }

        trackTitleCharacteristic = [(MCSInterface *)self trackTitleCharacteristic];
        if (trackTitleCharacteristic)
        {
        }

        else
        {
          uUID3 = [v13 UUID];
          v24 = [CBUUID UUIDWithString:v66];
          v25 = [uUID3 isEqual:v24];

          if (v25)
          {
            [(MCSInterface *)self setTrackTitleCharacteristic:v13];
            goto LABEL_53;
          }
        }

        trackDurationCharacteristic = [(MCSInterface *)self trackDurationCharacteristic];
        if (trackDurationCharacteristic)
        {
        }

        else
        {
          uUID4 = [v13 UUID];
          v28 = [CBUUID UUIDWithString:v65];
          v29 = [uUID4 isEqual:v28];

          if (v29)
          {
            [(MCSInterface *)self setTrackDurationCharacteristic:v13];
            goto LABEL_53;
          }
        }

        trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];
        if (trackPositionCharacteristic)
        {
        }

        else
        {
          uUID5 = [v13 UUID];
          v32 = [CBUUID UUIDWithString:v64];
          v33 = [uUID5 isEqual:v32];

          if (v33)
          {
            [(MCSInterface *)self setTrackPositionCharacteristic:v13];
            goto LABEL_53;
          }
        }

        playingOrderCharacteristic = [(MCSInterface *)self playingOrderCharacteristic];
        if (playingOrderCharacteristic)
        {
        }

        else
        {
          uUID6 = [v13 UUID];
          v36 = [CBUUID UUIDWithString:v63];
          v37 = [uUID6 isEqual:v36];

          if (v37)
          {
            [(MCSInterface *)self setPlayingOrderCharacteristic:v13];
LABEL_53:
            if (([v13 properties] & 0x10) != 0)
            {
              [peripheralCopy setNotifyValue:1 forCharacteristic:v13];
            }

            goto LABEL_55;
          }
        }

        playingOrdersSupportedCharacteristic = [(MCSInterface *)self playingOrdersSupportedCharacteristic];
        if (playingOrdersSupportedCharacteristic)
        {
        }

        else
        {
          uUID7 = [v13 UUID];
          v40 = [CBUUID UUIDWithString:v62];
          v41 = [uUID7 isEqual:v40];

          if (v41)
          {
            [(MCSInterface *)self setPlayingOrdersSupportedCharacteristic:v13];
LABEL_55:
            [peripheralCopy readValueForCharacteristic:v13];
            goto LABEL_56;
          }
        }

        mediaStateCharacteristic = [(MCSInterface *)self mediaStateCharacteristic];
        if (mediaStateCharacteristic)
        {
        }

        else
        {
          uUID8 = [v13 UUID];
          v44 = [CBUUID UUIDWithString:v61];
          v45 = [uUID8 isEqual:v44];

          if (v45)
          {
            [(MCSInterface *)self setMediaStateCharacteristic:v13];
            goto LABEL_53;
          }
        }

        mediaControlPointCharacteristic = [(MCSInterface *)self mediaControlPointCharacteristic];
        if (mediaControlPointCharacteristic)
        {
        }

        else
        {
          uUID9 = [v13 UUID];
          v48 = [CBUUID UUIDWithString:v60];
          v49 = [uUID9 isEqual:v48];

          if (v49)
          {
            [(MCSInterface *)self setMediaControlPointCharacteristic:v13];
            if (([v13 properties] & 0x10) != 0)
            {
              goto LABEL_15;
            }

            goto LABEL_56;
          }
        }

        mediaControlPointOpcodesSupportedCharacteristic = [(MCSInterface *)self mediaControlPointOpcodesSupportedCharacteristic];
        if (mediaControlPointOpcodesSupportedCharacteristic)
        {
        }

        else
        {
          uUID10 = [v13 UUID];
          v52 = [CBUUID UUIDWithString:v59];
          v53 = [uUID10 isEqual:v52];

          if (v53)
          {
            [(MCSInterface *)self setMediaControlPointOpcodesSupportedCharacteristic:v13];
            goto LABEL_53;
          }
        }

        contentControlIdCharacteristic = [(MCSInterface *)self contentControlIdCharacteristic];
        if (contentControlIdCharacteristic)
        {

          goto LABEL_56;
        }

        uUID11 = [v13 UUID];
        v56 = [CBUUID UUIDWithString:v58];
        v57 = [uUID11 isEqual:v56];

        if (v57)
        {
          [(MCSInterface *)self setContentControlIdCharacteristic:v13];
          goto LABEL_53;
        }

LABEL_56:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (!v10)
      {
LABEL_58:

        break;
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (!error)
  {
    mediaPlayerNameCharacteristic = [(MCSInterface *)self mediaPlayerNameCharacteristic];

    if (mediaPlayerNameCharacteristic == characteristicCopy)
    {
      extractMediaPlayerName = [(MCSInterface *)self extractMediaPlayerName];
      goto LABEL_2;
    }

    trackChangedCharacteristic = [(MCSInterface *)self trackChangedCharacteristic];

    if (trackChangedCharacteristic != characteristicCopy)
    {
      trackTitleCharacteristic = [(MCSInterface *)self trackTitleCharacteristic];

      if (trackTitleCharacteristic == characteristicCopy)
      {
        extractTrackTitle = [(MCSInterface *)self extractTrackTitle];
        goto LABEL_2;
      }

      trackDurationCharacteristic = [(MCSInterface *)self trackDurationCharacteristic];

      if (trackDurationCharacteristic == characteristicCopy)
      {
        extractTrackDuration = [(MCSInterface *)self extractTrackDuration];
        goto LABEL_2;
      }

      trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];

      if (trackPositionCharacteristic == characteristicCopy)
      {
        extractTrackPosition = [(MCSInterface *)self extractTrackPosition];
        goto LABEL_2;
      }

      playingOrderCharacteristic = [(MCSInterface *)self playingOrderCharacteristic];

      if (playingOrderCharacteristic != characteristicCopy)
      {
        playingOrdersSupportedCharacteristic = [(MCSInterface *)self playingOrdersSupportedCharacteristic];

        if (playingOrdersSupportedCharacteristic != characteristicCopy)
        {
          mediaStateCharacteristic = [(MCSInterface *)self mediaStateCharacteristic];

          if (mediaStateCharacteristic == characteristicCopy)
          {
            [(MCSInterface *)self extractMediaState];
            goto LABEL_2;
          }

          mediaControlPointCharacteristic = [(MCSInterface *)self mediaControlPointCharacteristic];

          if (mediaControlPointCharacteristic == characteristicCopy)
          {
            v19 = qword_1000A9FE0;
            if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_2;
            }

            *buf = 0;
            v20 = "Update for media control point";
            v21 = buf;
LABEL_23:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
            goto LABEL_2;
          }

          mediaControlPointOpcodesSupportedCharacteristic = [(MCSInterface *)self mediaControlPointOpcodesSupportedCharacteristic];

          if (mediaControlPointOpcodesSupportedCharacteristic == characteristicCopy)
          {
            extractMediaControlPointOpcodesSupported = [(MCSInterface *)self extractMediaControlPointOpcodesSupported];
            goto LABEL_2;
          }

          contentControlIdCharacteristic = [(MCSInterface *)self contentControlIdCharacteristic];

          if (contentControlIdCharacteristic == characteristicCopy)
          {
            v19 = qword_1000A9FE0;
            if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
            {
              v27 = 0;
              v20 = "Update content control";
              v21 = &v27;
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

LABEL_2:
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didWriteValueForCharacteristic", v6, 2u);
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didUpdateNotificationStateForCharacteristic", v6, 2u);
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didDiscoverDescriptorsForCharacteristic", v6, 2u);
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didUpdateValueForDescriptor", v6, 2u);
  }
}

- (id)extractMediaPlayerName
{
  mediaPlayerNameCharacteristic = [(MCSInterface *)self mediaPlayerNameCharacteristic];
  value = [mediaPlayerNameCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v5 = +[NSMutableString string];
  v6 = [v4 readString:v5];
  v7 = qword_1000A9FE0;
  v8 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = 138412290;
    v14 = v5;
    v9 = "Extracted player name %@";
    v10 = v7;
    v11 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    LOWORD(v13) = 0;
    v9 = "empty name?";
    v10 = v7;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
LABEL_7:

  return v5;
}

- (id)extractTrackTitle
{
  trackTitleCharacteristic = [(MCSInterface *)self trackTitleCharacteristic];
  value = [trackTitleCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v5 = +[NSMutableString string];
  v6 = [v4 readString:v5];
  v7 = qword_1000A9FE0;
  v8 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = 138412290;
    v14 = v5;
    v9 = "Extracted track title %@";
    v10 = v7;
    v11 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    LOWORD(v13) = 0;
    v9 = "empty track title?";
    v10 = v7;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
LABEL_7:

  return v5;
}

- (id)extractTrackDuration
{
  trackDurationCharacteristic = [(MCSInterface *)self trackDurationCharacteristic];
  value = [trackDurationCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v8 = -1;
  [v4 readUint32:&v8];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Extracted track position %d", buf, 8u);
  }

  v6 = [NSNumber numberWithUnsignedInt:v8];

  return v6;
}

- (void)extractPlayingOrder
{
  playingOrderCharacteristic = [(MCSInterface *)self playingOrderCharacteristic];
  value = [playingOrderCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v10 = 0;
  LODWORD(value) = [v4 readUint8:&v10];
  v5 = qword_1000A9FE0;
  v6 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (value)
  {
    if (v6)
    {
      *buf = 67109120;
      v12 = v10;
      v7 = "Extracted playing order %d";
      v8 = v5;
      v9 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "empty playing order?";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }
}

- (void)extractPlayingOrdersSupported
{
  playingOrdersSupportedCharacteristic = [(MCSInterface *)self playingOrdersSupportedCharacteristic];
  value = [playingOrdersSupportedCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v10 = 0;
  LODWORD(value) = [v4 readUint16:&v10];
  v5 = qword_1000A9FE0;
  v6 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (value)
  {
    if (v6)
    {
      *buf = 67109120;
      v12 = v10;
      v7 = "Extracted playing orders supported %d";
      v8 = v5;
      v9 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "empty playing order?";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }
}

- (unsigned)extractMediaState
{
  mediaStateCharacteristic = [(MCSInterface *)self mediaStateCharacteristic];
  value = [mediaStateCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v12 = 0;
  LODWORD(value) = [v4 readUint8:&v12];
  v5 = qword_1000A9FE0;
  v6 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (value)
  {
    if (v6)
    {
      *buf = 67109120;
      v14 = v12;
      v7 = "Extracted media state %d";
      v8 = v5;
      v9 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "empty media state?";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = v12;

  return v10;
}

- (id)extractTrackPosition
{
  trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];
  value = [trackPositionCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v8 = -1;
  [v4 readUint32:&v8];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Extracted track position %d", buf, 8u);
  }

  v6 = [NSNumber numberWithUnsignedInt:v8];

  return v6;
}

- (id)extractMediaControlPointOpcodesSupported
{
  mediaControlPointOpcodesSupportedCharacteristic = [(MCSInterface *)self mediaControlPointOpcodesSupportedCharacteristic];
  value = [mediaControlPointOpcodesSupportedCharacteristic value];
  v4 = [DataInputStream inputStreamWithData:value byteOrder:1];

  v5 = +[NSMutableArray array];
  v30 = 0;
  [v4 readUint32:&v30];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v32 = v30;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "supported opcodes raw val: %d", buf, 8u);
  }

  v7 = v30;
  if (v30)
  {
    v10 = [NSNumber numberWithChar:1];
    [v5 addObject:v10];

    v7 = v30;
    if ((v30 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithChar:2];
  [v5 addObject:v11];

  v7 = v30;
  if ((v30 & 4) == 0)
  {
LABEL_6:
    if ((v7 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = [NSNumber numberWithChar:3];
  [v5 addObject:v12];

  v7 = v30;
  if ((v30 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = [NSNumber numberWithChar:4];
  [v5 addObject:v13];

  v7 = v30;
  if ((v30 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = [NSNumber numberWithChar:5];
  [v5 addObject:v14];

  v7 = v30;
  if ((v30 & 0x20) == 0)
  {
LABEL_9:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = [NSNumber numberWithChar:16];
  [v5 addObject:v15];

  v7 = v30;
  if ((v30 & 0x40) == 0)
  {
LABEL_10:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = [NSNumber numberWithChar:32];
  [v5 addObject:v16];

  v7 = v30;
  if ((v30 & 0x80) == 0)
  {
LABEL_11:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = [NSNumber numberWithChar:33];
  [v5 addObject:v17];

  v7 = v30;
  if ((v30 & 0x100) == 0)
  {
LABEL_12:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = [NSNumber numberWithChar:34];
  [v5 addObject:v18];

  v7 = v30;
  if ((v30 & 0x200) == 0)
  {
LABEL_13:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = [NSNumber numberWithChar:35];
  [v5 addObject:v19];

  v7 = v30;
  if ((v30 & 0x400) == 0)
  {
LABEL_14:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = [NSNumber numberWithChar:36];
  [v5 addObject:v20];

  v7 = v30;
  if ((v30 & 0x800) == 0)
  {
LABEL_15:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = [NSNumber numberWithChar:48];
  [v5 addObject:v21];

  v7 = v30;
  if ((v30 & 0x1000) == 0)
  {
LABEL_16:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = [NSNumber numberWithChar:49];
  [v5 addObject:v22];

  v7 = v30;
  if ((v30 & 0x2000) == 0)
  {
LABEL_17:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v23 = [NSNumber numberWithChar:50];
  [v5 addObject:v23];

  v7 = v30;
  if ((v30 & 0x4000) == 0)
  {
LABEL_18:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v24 = [NSNumber numberWithChar:51];
  [v5 addObject:v24];

  v7 = v30;
  if ((v30 & 0x8000) == 0)
  {
LABEL_19:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v25 = [NSNumber numberWithChar:52];
  [v5 addObject:v25];

  v7 = v30;
  if ((v30 & 0x10000) == 0)
  {
LABEL_20:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v26 = [NSNumber numberWithChar:64];
  [v5 addObject:v26];

  v7 = v30;
  if ((v30 & 0x20000) == 0)
  {
LABEL_21:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v27 = [NSNumber numberWithChar:65];
  [v5 addObject:v27];

  v7 = v30;
  if ((v30 & 0x40000) == 0)
  {
LABEL_22:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v28 = [NSNumber numberWithChar:66];
  [v5 addObject:v28];

  v7 = v30;
  if ((v30 & 0x80000) == 0)
  {
LABEL_23:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_47:
  v29 = [NSNumber numberWithChar:67];
  [v5 addObject:v29];

  if ((v30 & 0x100000) != 0)
  {
LABEL_24:
    v8 = [NSNumber numberWithChar:68];
    [v5 addObject:v8];
  }

LABEL_25:

  return v5;
}

- (void)didRequestMediaPlayerNameRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  mediaPlayerNameCharacteristic = [(MCSInterface *)self mediaPlayerNameCharacteristic];
  [peripheral readValueForCharacteristic:mediaPlayerNameCharacteristic];
}

- (void)didRequestTrackTitleRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  trackTitleCharacteristic = [(MCSInterface *)self trackTitleCharacteristic];
  [peripheral readValueForCharacteristic:trackTitleCharacteristic];
}

- (void)didRequestTrackDurationRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  trackDurationCharacteristic = [(MCSInterface *)self trackDurationCharacteristic];
  [peripheral readValueForCharacteristic:trackDurationCharacteristic];
}

- (void)didRequestTrackPositionRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];
  [peripheral readValueForCharacteristic:trackPositionCharacteristic];
}

- (void)didRequestTrackPositionWrite:(id)write
{
  writeCopy = write;
  trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];

  if (trackPositionCharacteristic)
  {
    v6 = [DataOutputStream outputStreamWithByteOrder:1];
    [writeCopy doubleValue];
    [v6 writeUint32:(v7 * 100.0)];
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      [writeCopy doubleValue];
      v14[0] = 67109120;
      v14[1] = 100 * v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Writing track position to MCS server: %d", v14, 8u);
    }

    peripheral = [(ServiceInterface *)self peripheral];
    data = [v6 data];
    trackPositionCharacteristic2 = [(MCSInterface *)self trackPositionCharacteristic];
    [peripheral writeValue:data forCharacteristic:trackPositionCharacteristic2 type:1];
  }
}

- (void)didRequestMediaStateRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  mediaStateCharacteristic = [(MCSInterface *)self mediaStateCharacteristic];
  [peripheral readValueForCharacteristic:mediaStateCharacteristic];
}

- (void)didRequestMediaControlOpcodesSupportedRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  mediaControlPointOpcodesSupportedCharacteristic = [(MCSInterface *)self mediaControlPointOpcodesSupportedCharacteristic];
  [peripheral readValueForCharacteristic:mediaControlPointOpcodesSupportedCharacteristic];
}

- (void)didRequestMediaPlayerInfoRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  mediaPlayerNameCharacteristic = [(MCSInterface *)self mediaPlayerNameCharacteristic];
  [peripheral readValueForCharacteristic:mediaPlayerNameCharacteristic];

  peripheral2 = [(ServiceInterface *)self peripheral];
  mediaStateCharacteristic = [(MCSInterface *)self mediaStateCharacteristic];
  [peripheral2 readValueForCharacteristic:mediaStateCharacteristic];
}

- (void)didRequestCurrentTrackInfoRead
{
  peripheral = [(ServiceInterface *)self peripheral];
  trackTitleCharacteristic = [(MCSInterface *)self trackTitleCharacteristic];
  [peripheral readValueForCharacteristic:trackTitleCharacteristic];

  peripheral2 = [(ServiceInterface *)self peripheral];
  trackDurationCharacteristic = [(MCSInterface *)self trackDurationCharacteristic];
  [peripheral2 readValueForCharacteristic:trackDurationCharacteristic];

  peripheral3 = [(ServiceInterface *)self peripheral];
  trackPositionCharacteristic = [(MCSInterface *)self trackPositionCharacteristic];
  [peripheral3 readValueForCharacteristic:trackPositionCharacteristic];
}

@end