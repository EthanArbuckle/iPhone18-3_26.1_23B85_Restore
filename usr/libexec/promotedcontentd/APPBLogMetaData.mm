@interface APPBLogMetaData
- (BOOL)isEqual:(id)equal;
- (id)adSpaceAsString:(int)string;
- (id)buttonStateAsString:(int)string;
- (id)clickSourceAsString:(int)string;
- (id)connectionTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)impressionSourceAsString:(int)string;
- (int)StringAsAdSpace:(id)space;
- (int)StringAsButtonState:(id)state;
- (int)StringAsClickSource:(id)source;
- (int)StringAsConnectionType:(id)type;
- (int)StringAsImpressionSource:(id)source;
- (int)adSpace;
- (int)buttonState;
- (int)clickSource;
- (int)connectionType;
- (int)impressionSource;
- (unint64_t)hash;
- (void)addComponentElements:(id)elements;
- (void)addTiltTrackBlob:(id)blob;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAdSpace:(BOOL)space;
- (void)setHasButtonState:(BOOL)state;
- (void)setHasClickSource:(BOOL)source;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasImpressionSequence:(BOOL)sequence;
- (void)setHasImpressionSource:(BOOL)source;
- (void)setHasMessageSequence:(BOOL)sequence;
- (void)setHasOverclickCount:(BOOL)count;
- (void)setHasSlotPosition:(BOOL)position;
- (void)setHasSlotWasVisuallyEngaged:(BOOL)engaged;
- (void)setHasTimeSinceAppResume:(BOOL)resume;
- (void)setHasTimeStamp:(BOOL)stamp;
- (void)writeTo:(id)to;
@end

@implementation APPBLogMetaData

- (void)setHasMessageSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasImpressionSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasOverclickCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)connectionType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)connectionTypeAsString:(int)string
{
  if (string >= 0xB)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D308 + string);
  }

  return v4;
}

- (int)StringAsConnectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownConnection"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"WiFi"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_G"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_5G"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_G"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_5G"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_75G"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Cellular_H_Plus"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Cellular_4G"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Cellular_5G"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)adSpace
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_adSpace;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAdSpace:(BOOL)space
{
  if (space)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)adSpaceAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D360 + string);
  }

  return v4;
}

- (int)StringAsAdSpace:(id)space
{
  spaceCopy = space;
  if ([spaceCopy isEqualToString:@"StationEntry"])
  {
    v4 = 0;
  }

  else if ([spaceCopy isEqualToString:@"SongSkip"])
  {
    v4 = 1;
  }

  else if ([spaceCopy isEqualToString:@"SongBreak"])
  {
    v4 = 2;
  }

  else if ([spaceCopy isEqualToString:@"FullScreenBanner"])
  {
    v4 = 3;
  }

  else if ([spaceCopy isEqualToString:@"ModalInterstitial"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTiltTrackBlob:(id)blob
{
  blobCopy = blob;
  tiltTrackBlobs = self->_tiltTrackBlobs;
  v8 = blobCopy;
  if (!tiltTrackBlobs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tiltTrackBlobs;
    self->_tiltTrackBlobs = v6;

    blobCopy = v8;
    tiltTrackBlobs = self->_tiltTrackBlobs;
  }

  [(NSMutableArray *)tiltTrackBlobs addObject:blobCopy];
}

- (void)setHasTimeStamp:(BOOL)stamp
{
  if (stamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTimeSinceAppResume:(BOOL)resume
{
  if (resume)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)impressionSource
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_impressionSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasImpressionSource:(BOOL)source
{
  if (source)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)impressionSourceAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D388 + string);
  }

  return v4;
}

- (int)StringAsImpressionSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"DefaultImpressionSource"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"MiniPlayer"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"MiniPlayerLamp"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"FullsizePlayer"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"HistoryView"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)clickSource
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_clickSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasClickSource:(BOOL)source
{
  if (source)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)clickSourceAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D3B0 + string);
  }

  return v4;
}

- (int)StringAsClickSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"DefaultClickSource"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"LogoImage"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"BasicSlate"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"AlphaSlate"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSlotPosition:(BOOL)position
{
  if (position)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasSlotWasVisuallyEngaged:(BOOL)engaged
{
  if (engaged)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (int)buttonState
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_buttonState;
  }

  else
  {
    return 5000;
  }
}

- (void)setHasButtonState:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)buttonStateAsString:(int)string
{
  if ((string - 5000) >= 8)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D3D0 + (string - 5000));
  }

  return v4;
}

- (int)StringAsButtonState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Get"])
  {
    v4 = 5000;
  }

  else if ([stateCopy isEqualToString:@"Purchase"])
  {
    v4 = 5001;
  }

  else if ([stateCopy isEqualToString:@"GetArcade"])
  {
    v4 = 5002;
  }

  else if ([stateCopy isEqualToString:@"GetPreorder"])
  {
    v4 = 5003;
  }

  else if ([stateCopy isEqualToString:@"PurchasePreorder"])
  {
    v4 = 5004;
  }

  else if ([stateCopy isEqualToString:@"Update"])
  {
    v4 = 5005;
  }

  else if ([stateCopy isEqualToString:@"Download"])
  {
    v4 = 5006;
  }

  else if ([stateCopy isEqualToString:@"Open"])
  {
    v4 = 5007;
  }

  else
  {
    v4 = 5000;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)addComponentElements:(id)elements
{
  elementsCopy = elements;
  componentElements = self->_componentElements;
  v8 = elementsCopy;
  if (!componentElements)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_componentElements;
    self->_componentElements = v6;

    elementsCopy = v8;
    componentElements = self->_componentElements;
  }

  [(NSMutableArray *)componentElements addObject:elementsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogMetaData;
  v3 = [(APPBLogMetaData *)&v7 description];
  dictionaryRepresentation = [(APPBLogMetaData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  batchId = self->_batchId;
  if (batchId)
  {
    [v3 setObject:batchId forKey:@"batchId"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v6 = [NSNumber numberWithInt:self->_messageSequence];
    [v4 setObject:v6 forKey:@"messageSequence"];
  }

  impressionIdentifierData = self->_impressionIdentifierData;
  if (impressionIdentifierData)
  {
    [v4 setObject:impressionIdentifierData forKey:@"impressionIdentifierData"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_impressionSequence];
    [v4 setObject:v9 forKey:@"impressionSequence"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  v10 = [NSNumber numberWithInt:self->_overclickCount];
  [v4 setObject:v10 forKey:@"overclickCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_14:
  connectionType = self->_connectionType;
  if (connectionType >= 0xB)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_connectionType];
  }

  else
  {
    v12 = *(&off_10047D308 + connectionType);
  }

  [v4 setObject:v12 forKey:@"connectionType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_18:
    adSpace = self->_adSpace;
    if (adSpace >= 5)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_adSpace];
    }

    else
    {
      v14 = *(&off_10047D360 + adSpace);
    }

    [v4 setObject:v14 forKey:@"adSpace"];
  }

LABEL_22:
  tiltStationBlob = self->_tiltStationBlob;
  if (tiltStationBlob)
  {
    [v4 setObject:tiltStationBlob forKey:@"tiltStationBlob"];
  }

  tiltTrackBlobs = self->_tiltTrackBlobs;
  if (tiltTrackBlobs)
  {
    [v4 setObject:tiltTrackBlobs forKey:@"tiltTrackBlob"];
  }

  v17 = self->_has;
  if ((v17 & 4) != 0)
  {
    v18 = [NSNumber numberWithDouble:self->_timeStamp];
    [v4 setObject:v18 forKey:@"timeStamp"];

    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_28:
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_28;
  }

  v19 = [NSNumber numberWithDouble:self->_timeSinceAppResume];
  [v4 setObject:v19 forKey:@"timeSinceAppResume"];

  v17 = self->_has;
  if ((v17 & 0x200) == 0)
  {
LABEL_29:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_33:
  impressionSource = self->_impressionSource;
  if (impressionSource >= 5)
  {
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_impressionSource];
  }

  else
  {
    v21 = *(&off_10047D388 + impressionSource);
  }

  [v4 setObject:v21 forKey:@"impressionSource"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_37:
    clickSource = self->_clickSource;
    if (clickSource >= 4)
    {
      v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_clickSource];
    }

    else
    {
      v23 = *(&off_10047D3B0 + clickSource);
    }

    [v4 setObject:v23 forKey:@"clickSource"];
  }

LABEL_41:
  slotIdentifier = self->_slotIdentifier;
  if (slotIdentifier)
  {
    [v4 setObject:slotIdentifier forKey:@"slotIdentifier"];
  }

  v25 = self->_has;
  if ((v25 & 0x1000) != 0)
  {
    v26 = [NSNumber numberWithInt:self->_slotPosition];
    [v4 setObject:v26 forKey:@"slotPosition"];

    v25 = self->_has;
  }

  if ((v25 & 0x2000) != 0)
  {
    v27 = [NSNumber numberWithBool:self->_slotWasVisuallyEngaged];
    [v4 setObject:v27 forKey:@"slotWasVisuallyEngaged"];
  }

  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v4 setObject:iAdID forKey:@"iAdID"];
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID)
  {
    [v4 setObject:anonymousDemandiAdID forKey:@"anonymousDemandiAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v4 setObject:dPID forKey:@"DPID"];
  }

  messageIdentifier = self->_messageIdentifier;
  if (messageIdentifier)
  {
    [v4 setObject:messageIdentifier forKey:@"messageIdentifier"];
  }

  screenSize = self->_screenSize;
  if (screenSize)
  {
    dictionaryRepresentation = [(APPBAdSize *)screenSize dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"screenSize"];
  }

  if (*&self->_has)
  {
    v35 = [NSNumber numberWithDouble:self->_screenScale];
    [v4 setObject:v35 forKey:@"screenScale"];
  }

  clientViewSize = self->_clientViewSize;
  if (clientViewSize)
  {
    dictionaryRepresentation2 = [(APPBAdSize *)clientViewSize dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"clientViewSize"];
  }

  selectedCreativeSize = self->_selectedCreativeSize;
  if (selectedCreativeSize)
  {
    dictionaryRepresentation3 = [(APPBAdSize *)selectedCreativeSize dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"selectedCreativeSize"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  adDataResponseIdentifier = self->_adDataResponseIdentifier;
  if (adDataResponseIdentifier)
  {
    [v4 setObject:adDataResponseIdentifier forKey:@"adDataResponseIdentifier"];
  }

  v42 = self->_has;
  if ((v42 & 0x10) != 0)
  {
    v43 = self->_buttonState - 5000;
    if (v43 >= 8)
    {
      v44 = [NSString stringWithFormat:@"(unknown: %i)", self->_buttonState];
    }

    else
    {
      v44 = *(&off_10047D3D0 + v43);
    }

    [v4 setObject:v44 forKey:@"buttonState"];

    v42 = self->_has;
  }

  if ((v42 & 0x80) != 0)
  {
    v45 = [NSNumber numberWithInt:self->_duration];
    [v4 setObject:v45 forKey:@"duration"];
  }

  if ([(NSMutableArray *)self->_componentElements count])
  {
    v46 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_componentElements, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = self->_componentElements;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v56;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v56 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation4 = [*(*(&v55 + 1) + 8 * i) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation4];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v49);
    }

    [v4 setObject:v46 forKey:@"componentElements"];
  }

  v53 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_batchId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_impressionIdentifierData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_68;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_68:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
  if (self->_tiltStationBlob)
  {
    PBDataWriterWriteDataField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_tiltTrackBlobs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteDataField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_23:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_72;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_23;
  }

  PBDataWriterWriteDoubleField();
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_24:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_72:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_25:
    PBDataWriterWriteInt32Field();
  }

LABEL_26:
  if (self->_slotIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((v12 & 0x1000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
  }

  if ((v12 & 0x2000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_messageIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_screenSize)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientViewSize)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_selectedCreativeSize)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adDataResponseIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v13 = self->_has;
  }

  if ((v13 & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = self->_componentElements;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_batchId)
  {
    [toCopy setBatchId:?];
    toCopy = v18;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(toCopy + 40) = self->_messageSequence;
    *(toCopy + 110) |= 0x400u;
  }

  if (self->_impressionIdentifierData)
  {
    [v18 setImpressionIdentifierData:?];
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(toCopy + 36) = self->_impressionSequence;
    *(toCopy + 110) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_64;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 41) = self->_overclickCount;
  *(toCopy + 110) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_64:
  *(toCopy + 24) = self->_connectionType;
  *(toCopy + 110) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 12) = self->_adSpace;
    *(toCopy + 110) |= 8u;
  }

LABEL_12:
  if (self->_tiltStationBlob)
  {
    [v18 setTiltStationBlob:?];
  }

  if ([(APPBLogMetaData *)self tiltTrackBlobsCount])
  {
    [v18 clearTiltTrackBlobs];
    tiltTrackBlobsCount = [(APPBLogMetaData *)self tiltTrackBlobsCount];
    if (tiltTrackBlobsCount)
    {
      v7 = tiltTrackBlobsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(APPBLogMetaData *)self tiltTrackBlobAtIndex:i];
        [v18 addTiltTrackBlob:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v18;
  if ((v10 & 4) != 0)
  {
    *(v18 + 3) = *&self->_timeStamp;
    *(v18 + 110) |= 4u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_20:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_68;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_20;
  }

  *(v18 + 2) = *&self->_timeSinceAppResume;
  *(v18 + 110) |= 2u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_21:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_68:
  *(v18 + 37) = self->_impressionSource;
  *(v18 + 110) |= 0x200u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_22:
    *(v18 + 19) = self->_clickSource;
    *(v18 + 110) |= 0x20u;
  }

LABEL_23:
  if (self->_slotIdentifier)
  {
    [v18 setSlotIdentifier:?];
    v11 = v18;
  }

  v12 = self->_has;
  if ((v12 & 0x1000) != 0)
  {
    v11[48] = self->_slotPosition;
    *(v11 + 110) |= 0x1000u;
    v12 = self->_has;
  }

  if ((v12 & 0x2000) != 0)
  {
    *(v11 + 216) = self->_slotWasVisuallyEngaged;
    *(v11 + 110) |= 0x2000u;
  }

  if (self->_iAdID)
  {
    [v18 setIAdID:?];
    v11 = v18;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v18 setAnonymousDemandiAdID:?];
    v11 = v18;
  }

  if (self->_contentiAdID)
  {
    [v18 setContentiAdID:?];
    v11 = v18;
  }

  if (self->_dPID)
  {
    [v18 setDPID:?];
    v11 = v18;
  }

  if (self->_messageIdentifier)
  {
    [v18 setMessageIdentifier:?];
    v11 = v18;
  }

  if (self->_screenSize)
  {
    [v18 setScreenSize:?];
    v11 = v18;
  }

  if (*&self->_has)
  {
    *(v11 + 1) = *&self->_screenScale;
    *(v11 + 110) |= 1u;
  }

  if (self->_clientViewSize)
  {
    [v18 setClientViewSize:?];
    v11 = v18;
  }

  if (self->_selectedCreativeSize)
  {
    [v18 setSelectedCreativeSize:?];
    v11 = v18;
  }

  if (self->_actionIdentifier)
  {
    [v18 setActionIdentifier:?];
    v11 = v18;
  }

  if (self->_adDataResponseIdentifier)
  {
    [v18 setAdDataResponseIdentifier:?];
    v11 = v18;
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v11[18] = self->_buttonState;
    *(v11 + 110) |= 0x10u;
    v13 = self->_has;
  }

  if ((v13 & 0x80) != 0)
  {
    v11[30] = self->_duration;
    *(v11 + 110) |= 0x80u;
  }

  if ([(APPBLogMetaData *)self componentElementsCount])
  {
    [v18 clearComponentElements];
    componentElementsCount = [(APPBLogMetaData *)self componentElementsCount];
    if (componentElementsCount)
    {
      v15 = componentElementsCount;
      for (j = 0; j != v15; ++j)
      {
        v17 = [(APPBLogMetaData *)self componentElementsAtIndex:j];
        [v18 addComponentElements:v17];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_batchId copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 40) = self->_messageSequence;
    *(v5 + 110) |= 0x400u;
  }

  v8 = [(NSData *)self->_impressionIdentifierData copyWithZone:zone];
  v9 = v5[17];
  v5[17] = v8;

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 36) = self->_impressionSequence;
    *(v5 + 110) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 41) = self->_overclickCount;
  *(v5 + 110) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_40:
  *(v5 + 24) = self->_connectionType;
  *(v5 + 110) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v5 + 12) = self->_adSpace;
    *(v5 + 110) |= 8u;
  }

LABEL_8:
  v11 = [(NSData *)self->_tiltStationBlob copyWithZone:zone];
  v12 = v5[25];
  v5[25] = v11;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = self->_tiltTrackBlobs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v56;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v55 + 1) + 8 * i) copyWithZone:zone];
        [v5 addTiltTrackBlob:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    v5[3] = *&self->_timeStamp;
    *(v5 + 110) |= 4u;
    v19 = self->_has;
    if ((v19 & 2) == 0)
    {
LABEL_17:
      if ((v19 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_44;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_17;
  }

  v5[2] = *&self->_timeSinceAppResume;
  *(v5 + 110) |= 2u;
  v19 = self->_has;
  if ((v19 & 0x200) == 0)
  {
LABEL_18:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_44:
  *(v5 + 37) = self->_impressionSource;
  *(v5 + 110) |= 0x200u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    *(v5 + 19) = self->_clickSource;
    *(v5 + 110) |= 0x20u;
  }

LABEL_20:
  v20 = [(NSString *)self->_slotIdentifier copyWithZone:zone];
  v21 = v5[23];
  v5[23] = v20;

  v22 = self->_has;
  if ((v22 & 0x1000) != 0)
  {
    *(v5 + 48) = self->_slotPosition;
    *(v5 + 110) |= 0x1000u;
    v22 = self->_has;
  }

  if ((v22 & 0x2000) != 0)
  {
    *(v5 + 216) = self->_slotWasVisuallyEngaged;
    *(v5 + 110) |= 0x2000u;
  }

  v23 = [(NSData *)self->_iAdID copyWithZone:zone];
  v24 = v5[16];
  v5[16] = v23;

  v25 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:zone];
  v26 = v5[7];
  v5[7] = v25;

  v27 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v28 = v5[13];
  v5[13] = v27;

  v29 = [(NSData *)self->_dPID copyWithZone:zone];
  v30 = v5[14];
  v5[14] = v29;

  v31 = [(NSData *)self->_messageIdentifier copyWithZone:zone];
  v32 = v5[19];
  v5[19] = v31;

  v33 = [(APPBAdSize *)self->_screenSize copyWithZone:zone];
  v34 = v5[21];
  v5[21] = v33;

  if (*&self->_has)
  {
    v5[1] = *&self->_screenScale;
    *(v5 + 110) |= 1u;
  }

  v35 = [(APPBAdSize *)self->_clientViewSize copyWithZone:zone];
  v36 = v5[10];
  v5[10] = v35;

  v37 = [(APPBAdSize *)self->_selectedCreativeSize copyWithZone:zone];
  v38 = v5[22];
  v5[22] = v37;

  v39 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v40 = v5[4];
  v5[4] = v39;

  v41 = [(NSString *)self->_adDataResponseIdentifier copyWithZone:zone];
  v42 = v5[5];
  v5[5] = v41;

  v43 = self->_has;
  if ((v43 & 0x10) != 0)
  {
    *(v5 + 18) = self->_buttonState;
    *(v5 + 110) |= 0x10u;
    v43 = self->_has;
  }

  if ((v43 & 0x80) != 0)
  {
    *(v5 + 30) = self->_duration;
    *(v5 + 110) |= 0x80u;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = self->_componentElements;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v52;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v52 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v51 + 1) + 8 * j) copyWithZone:{zone, v51}];
        [v5 addComponentElements:v49];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v46);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_82;
  }

  batchId = self->_batchId;
  if (batchId | *(equalCopy + 8))
  {
    if (![(NSString *)batchId isEqual:?])
    {
      goto LABEL_82;
    }
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 110) & 0x400) == 0 || self->_messageSequence != *(equalCopy + 40))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x400) != 0)
  {
    goto LABEL_82;
  }

  impressionIdentifierData = self->_impressionIdentifierData;
  if (impressionIdentifierData | *(equalCopy + 17))
  {
    if (![(NSData *)impressionIdentifierData isEqual:?])
    {
      goto LABEL_82;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 110);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 110) & 0x100) == 0 || self->_impressionSequence != *(equalCopy + 36))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x100) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x800) != 0)
  {
    if ((*(equalCopy + 110) & 0x800) == 0 || self->_overclickCount != *(equalCopy + 41))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x800) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_connectionType != *(equalCopy + 24))
    {
      goto LABEL_82;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_adSpace != *(equalCopy + 12))
    {
      goto LABEL_82;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_82;
  }

  tiltStationBlob = self->_tiltStationBlob;
  if (tiltStationBlob | *(equalCopy + 25) && ![(NSData *)tiltStationBlob isEqual:?])
  {
    goto LABEL_82;
  }

  tiltTrackBlobs = self->_tiltTrackBlobs;
  if (tiltTrackBlobs | *(equalCopy + 26))
  {
    if (![(NSMutableArray *)tiltTrackBlobs isEqual:?])
    {
      goto LABEL_82;
    }
  }

  v11 = self->_has;
  v12 = *(equalCopy + 110);
  if ((v11 & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_timeStamp != *(equalCopy + 3))
    {
      goto LABEL_82;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_82;
  }

  if ((v11 & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_timeSinceAppResume != *(equalCopy + 2))
    {
      goto LABEL_82;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 110) & 0x200) == 0 || self->_impressionSource != *(equalCopy + 37))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x200) != 0)
  {
    goto LABEL_82;
  }

  if ((v11 & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_clickSource != *(equalCopy + 19))
    {
      goto LABEL_82;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_82;
  }

  slotIdentifier = self->_slotIdentifier;
  if (slotIdentifier | *(equalCopy + 23))
  {
    if (![(NSString *)slotIdentifier isEqual:?])
    {
      goto LABEL_82;
    }

    v11 = self->_has;
  }

  if ((v11 & 0x1000) != 0)
  {
    if ((*(equalCopy + 110) & 0x1000) == 0 || self->_slotPosition != *(equalCopy + 48))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x1000) != 0)
  {
    goto LABEL_82;
  }

  if ((v11 & 0x2000) != 0)
  {
    if ((*(equalCopy + 110) & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    if (self->_slotWasVisuallyEngaged)
    {
      if ((*(equalCopy + 216) & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else if (*(equalCopy + 216))
    {
      goto LABEL_82;
    }
  }

  else if ((*(equalCopy + 110) & 0x2000) != 0)
  {
    goto LABEL_82;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 16) && ![(NSData *)iAdID isEqual:?])
  {
    goto LABEL_82;
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(equalCopy + 7))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_82;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(equalCopy + 13))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_82;
    }
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 14))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_82;
    }
  }

  messageIdentifier = self->_messageIdentifier;
  if (messageIdentifier | *(equalCopy + 19))
  {
    if (![(NSData *)messageIdentifier isEqual:?])
    {
      goto LABEL_82;
    }
  }

  screenSize = self->_screenSize;
  if (screenSize | *(equalCopy + 21))
  {
    if (![(APPBAdSize *)screenSize isEqual:?])
    {
      goto LABEL_82;
    }
  }

  v20 = *(equalCopy + 110);
  if (*&self->_has)
  {
    if ((v20 & 1) == 0 || self->_screenScale != *(equalCopy + 1))
    {
      goto LABEL_82;
    }
  }

  else if (v20)
  {
    goto LABEL_82;
  }

  clientViewSize = self->_clientViewSize;
  if (clientViewSize | *(equalCopy + 10) && ![(APPBAdSize *)clientViewSize isEqual:?])
  {
    goto LABEL_82;
  }

  selectedCreativeSize = self->_selectedCreativeSize;
  if (selectedCreativeSize | *(equalCopy + 22))
  {
    if (![(APPBAdSize *)selectedCreativeSize isEqual:?])
    {
      goto LABEL_82;
    }
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)actionIdentifier isEqual:?])
    {
      goto LABEL_82;
    }
  }

  adDataResponseIdentifier = self->_adDataResponseIdentifier;
  if (adDataResponseIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)adDataResponseIdentifier isEqual:?])
    {
      goto LABEL_82;
    }
  }

  v27 = self->_has;
  v28 = *(equalCopy + 110);
  if ((v27 & 0x10) != 0)
  {
    if ((v28 & 0x10) == 0 || self->_buttonState != *(equalCopy + 18))
    {
      goto LABEL_82;
    }
  }

  else if ((v28 & 0x10) != 0)
  {
    goto LABEL_82;
  }

  if ((v27 & 0x80) == 0)
  {
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_109;
    }

LABEL_82:
    v21 = 0;
    goto LABEL_83;
  }

  if ((v28 & 0x80) == 0 || self->_duration != *(equalCopy + 30))
  {
    goto LABEL_82;
  }

LABEL_109:
  componentElements = self->_componentElements;
  if (componentElements | *(equalCopy + 11))
  {
    v21 = [(NSMutableArray *)componentElements isEqual:?];
  }

  else
  {
    v21 = 1;
  }

LABEL_83:

  return v21;
}

- (unint64_t)hash
{
  v50 = [(NSString *)self->_batchId hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v49 = 2654435761 * self->_messageSequence;
  }

  else
  {
    v49 = 0;
  }

  v48 = [(NSData *)self->_impressionIdentifierData hash];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v47 = 2654435761 * self->_impressionSequence;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_6:
      v46 = 2654435761 * self->_overclickCount;
      if ((has & 0x40) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v45 = 0;
      if ((has & 8) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v47 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }
  }

  v46 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v45 = 2654435761 * self->_connectionType;
  if ((has & 8) != 0)
  {
LABEL_8:
    v44 = 2654435761 * self->_adSpace;
    goto LABEL_13;
  }

LABEL_12:
  v44 = 0;
LABEL_13:
  v43 = [(NSData *)self->_tiltStationBlob hash];
  v42 = [(NSMutableArray *)self->_tiltTrackBlobs hash];
  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    timeStamp = self->_timeStamp;
    if (timeStamp < 0.0)
    {
      timeStamp = -timeStamp;
    }

    *v4.i64 = floor(timeStamp + 0.5);
    v9 = (timeStamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v7 = 2654435761u * *v4.i64;
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

  if ((v6 & 2) != 0)
  {
    timeSinceAppResume = self->_timeSinceAppResume;
    if (timeSinceAppResume < 0.0)
    {
      timeSinceAppResume = -timeSinceAppResume;
    }

    *v4.i64 = floor(timeSinceAppResume + 0.5);
    v13 = (timeSinceAppResume - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v39 = 2654435761 * self->_impressionSource;
  }

  else
  {
    v39 = 0;
  }

  v40 = v11;
  v41 = v7;
  if ((v6 & 0x20) != 0)
  {
    v38 = 2654435761 * self->_clickSource;
  }

  else
  {
    v38 = 0;
  }

  v37 = [(NSString *)self->_slotIdentifier hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v36 = 2654435761 * self->_slotPosition;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v36 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_37:
      v35 = 2654435761 * self->_slotWasVisuallyEngaged;
      goto LABEL_40;
    }
  }

  v35 = 0;
LABEL_40:
  v34 = [(NSData *)self->_iAdID hash];
  v33 = [(NSData *)self->_anonymousDemandiAdID hash];
  v32 = [(NSData *)self->_contentiAdID hash];
  v15 = [(NSData *)self->_dPID hash];
  v16 = [(NSData *)self->_messageIdentifier hash];
  v17 = [(APPBAdSize *)self->_screenSize hash];
  if (*&self->_has)
  {
    screenScale = self->_screenScale;
    if (screenScale < 0.0)
    {
      screenScale = -screenScale;
    }

    *v18.i64 = floor(screenScale + 0.5);
    v22 = (screenScale - *v18.i64) * 1.84467441e19;
    *v19.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v19, v18).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = [(APPBAdSize *)self->_clientViewSize hash];
  v25 = [(APPBAdSize *)self->_selectedCreativeSize hash];
  v26 = [(NSString *)self->_actionIdentifier hash];
  v27 = [(NSString *)self->_adDataResponseIdentifier hash];
  v28 = self->_has;
  if ((v28 & 0x10) != 0)
  {
    v29 = 2654435761 * self->_buttonState;
    if ((v28 & 0x80) != 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v30 = 0;
    return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v15 ^ v16 ^ v17 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v29 ^ v30 ^ [(NSMutableArray *)self->_componentElements hash];
  }

  v29 = 0;
  if ((v28 & 0x80) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v30 = 2654435761 * self->_duration;
  return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v15 ^ v16 ^ v17 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v29 ^ v30 ^ [(NSMutableArray *)self->_componentElements hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(APPBLogMetaData *)self setBatchId:?];
  }

  if ((*(fromCopy + 110) & 0x400) != 0)
  {
    self->_messageSequence = *(fromCopy + 40);
    *&self->_has |= 0x400u;
  }

  if (*(fromCopy + 17))
  {
    [(APPBLogMetaData *)self setImpressionIdentifierData:?];
  }

  v5 = *(fromCopy + 110);
  if ((v5 & 0x100) != 0)
  {
    self->_impressionSequence = *(fromCopy + 36);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 110);
    if ((v5 & 0x800) == 0)
    {
LABEL_9:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }
  }

  else if ((*(fromCopy + 110) & 0x800) == 0)
  {
    goto LABEL_9;
  }

  self->_overclickCount = *(fromCopy + 41);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 110);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  self->_connectionType = *(fromCopy + 24);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 110) & 8) != 0)
  {
LABEL_11:
    self->_adSpace = *(fromCopy + 12);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 25))
  {
    [(APPBLogMetaData *)self setTiltStationBlob:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(fromCopy + 26);
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(APPBLogMetaData *)self addTiltTrackBlob:*(*(&v29 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v11 = *(fromCopy + 110);
  if ((v11 & 4) != 0)
  {
    self->_timeStamp = *(fromCopy + 3);
    *&self->_has |= 4u;
    v11 = *(fromCopy + 110);
    if ((v11 & 2) == 0)
    {
LABEL_23:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_51;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_23;
  }

  self->_timeSinceAppResume = *(fromCopy + 2);
  *&self->_has |= 2u;
  v11 = *(fromCopy + 110);
  if ((v11 & 0x200) == 0)
  {
LABEL_24:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  self->_impressionSource = *(fromCopy + 37);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 110) & 0x20) != 0)
  {
LABEL_25:
    self->_clickSource = *(fromCopy + 19);
    *&self->_has |= 0x20u;
  }

LABEL_26:
  if (*(fromCopy + 23))
  {
    [(APPBLogMetaData *)self setSlotIdentifier:?];
  }

  v12 = *(fromCopy + 110);
  if ((v12 & 0x1000) != 0)
  {
    self->_slotPosition = *(fromCopy + 48);
    *&self->_has |= 0x1000u;
    v12 = *(fromCopy + 110);
  }

  if ((v12 & 0x2000) != 0)
  {
    self->_slotWasVisuallyEngaged = *(fromCopy + 216);
    *&self->_has |= 0x2000u;
  }

  if (*(fromCopy + 16))
  {
    [(APPBLogMetaData *)self setIAdID:?];
  }

  if (*(fromCopy + 7))
  {
    [(APPBLogMetaData *)self setAnonymousDemandiAdID:?];
  }

  if (*(fromCopy + 13))
  {
    [(APPBLogMetaData *)self setContentiAdID:?];
  }

  if (*(fromCopy + 14))
  {
    [(APPBLogMetaData *)self setDPID:?];
  }

  if (*(fromCopy + 19))
  {
    [(APPBLogMetaData *)self setMessageIdentifier:?];
  }

  screenSize = self->_screenSize;
  v14 = *(fromCopy + 21);
  if (screenSize)
  {
    if (v14)
    {
      [(APPBAdSize *)screenSize mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(APPBLogMetaData *)self setScreenSize:?];
  }

  if (*(fromCopy + 110))
  {
    self->_screenScale = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  clientViewSize = self->_clientViewSize;
  v16 = *(fromCopy + 10);
  if (clientViewSize)
  {
    if (v16)
    {
      [(APPBAdSize *)clientViewSize mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(APPBLogMetaData *)self setClientViewSize:?];
  }

  selectedCreativeSize = self->_selectedCreativeSize;
  v18 = *(fromCopy + 22);
  if (selectedCreativeSize)
  {
    if (v18)
    {
      [(APPBAdSize *)selectedCreativeSize mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(APPBLogMetaData *)self setSelectedCreativeSize:?];
  }

  if (*(fromCopy + 4))
  {
    [(APPBLogMetaData *)self setActionIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(APPBLogMetaData *)self setAdDataResponseIdentifier:?];
  }

  v19 = *(fromCopy + 110);
  if ((v19 & 0x10) != 0)
  {
    self->_buttonState = *(fromCopy + 18);
    *&self->_has |= 0x10u;
    v19 = *(fromCopy + 110);
  }

  if ((v19 & 0x80) != 0)
  {
    self->_duration = *(fromCopy + 30);
    *&self->_has |= 0x80u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(fromCopy + 11);
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(APPBLogMetaData *)self addComponentElements:*(*(&v25 + 1) + 8 * j), v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v22);
  }
}

@end