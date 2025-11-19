@interface APPBSegmentUpdateRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)accountStatesAsString:(int)a3;
- (id)accountTypesAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceModesAsString:(int)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAccountStates:(id)a3;
- (int)StringAsAccountTypes:(id)a3;
- (int)StringAsDeviceModes:(id)a3;
- (int)accountStateAtIndex:(unint64_t)a3;
- (int)accountTypeAtIndex:(unint64_t)a3;
- (int)deviceModeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)a3;
- (void)setHasIsFirstPartyIdentifier:(BOOL)a3;
- (void)setHasTimezone:(BOOL)a3;
- (void)setHasUpdateSentTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBSegmentUpdateRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = APPBSegmentUpdateRequest;
  [(APPBSegmentUpdateRequest *)&v3 dealloc];
}

+ (id)options
{
  if (qword_1004E6C00 != -1)
  {
    sub_100394278();
  }

  v3 = qword_1004E6BF8;

  return v3;
}

- (void)setHasIsFirstPartyIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUpdateSentTime:(BOOL)a3
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

- (void)setHasTimezone:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)a3
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

- (int)deviceModeAtIndex:(unint64_t)a3
{
  p_deviceModes = &self->_deviceModes;
  count = self->_deviceModes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_deviceModes->list[a3];
}

- (id)deviceModesAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DAE8 + a3);
  }

  return v4;
}

- (int)StringAsDeviceModes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EducationMode"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GuestMode"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountTypeAtIndex:(unint64_t)a3
{
  p_accountTypes = &self->_accountTypes;
  count = self->_accountTypes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_accountTypes->list[a3];
}

- (id)accountTypesAsString:(int)a3
{
  if (a3 >= 8)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DB00 + a3);
  }

  return v4;
}

- (int)StringAsAccountTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NoAccount"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Consumer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ManagedAccount"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"U13"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"T13"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"U18"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Unknown_Age"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SensitiveContentEligible"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountStateAtIndex:(unint64_t)a3
{
  p_accountStates = &self->_accountStates;
  count = self->_accountStates.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_accountStates->list[a3];
}

- (id)accountStatesAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DB40 + a3);
  }

  return v4;
}

- (int)StringAsAccountStates:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"No_iCloud"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Same_iCloud"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Diff_iCloud"])
  {
    v4 = 2;
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
  v7.super_class = APPBSegmentUpdateRequest;
  v3 = [(APPBSegmentUpdateRequest *)&v7 description];
  v4 = [(APPBSegmentUpdateRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v3 setObject:iAdID forKey:@"iAdID"];
  }

  segmentInfo = self->_segmentInfo;
  if (segmentInfo)
  {
    [v5 setObject:segmentInfo forKey:@"segmentInfo"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isFirstPartyIdentifier];
    [v5 setObject:v8 forKey:@"isFirstPartyIdentifier"];
  }

  advertisingIdentifier = self->_advertisingIdentifier;
  if (advertisingIdentifier)
  {
    [v5 setObject:advertisingIdentifier forKey:@"advertisingIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v31 = [NSNumber numberWithDouble:self->_iTunesRefreshTime];
    [v5 setObject:v31 forKey:@"iTunesRefreshTime"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v32 = [NSNumber numberWithDouble:self->_updateSentTime];
  [v5 setObject:v32 forKey:@"updateSentTime"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_49:
  *&v4 = self->_timezone;
  v33 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v33 forKey:@"timezone"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v11 = [NSNumber numberWithInt:self->_advertisingIdentifierMonthResetCount];
    [v5 setObject:v11 forKey:@"advertisingIdentifierMonthResetCount"];
  }

LABEL_14:
  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild)
  {
    [v5 setObject:osVersionAndBuild forKey:@"osVersionAndBuild"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v5 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v5 setObject:dPID forKey:@"DPID"];
  }

  p_deviceModes = &self->_deviceModes;
  if (self->_deviceModes.count)
  {
    v16 = [NSMutableArray arrayWithCapacity:?];
    if (self->_deviceModes.count)
    {
      v17 = 0;
      do
      {
        v18 = p_deviceModes->list[v17];
        if (v18 >= 3)
        {
          v19 = [NSString stringWithFormat:@"(unknown: %i)", p_deviceModes->list[v17]];
        }

        else
        {
          v19 = *(&off_10047DAE8 + v18);
        }

        [v16 addObject:v19];

        ++v17;
      }

      while (v17 < self->_deviceModes.count);
    }

    [v5 setObject:v16 forKey:@"deviceMode"];
  }

  p_accountTypes = &self->_accountTypes;
  if (self->_accountTypes.count)
  {
    v21 = [NSMutableArray arrayWithCapacity:?];
    if (self->_accountTypes.count)
    {
      v22 = 0;
      do
      {
        v23 = p_accountTypes->list[v22];
        if (v23 >= 8)
        {
          v24 = [NSString stringWithFormat:@"(unknown: %i)", p_accountTypes->list[v22]];
        }

        else
        {
          v24 = *(&off_10047DB00 + v23);
        }

        [v21 addObject:v24];

        ++v22;
      }

      while (v22 < self->_accountTypes.count);
    }

    [v5 setObject:v21 forKey:@"accountType"];
  }

  p_accountStates = &self->_accountStates;
  if (self->_accountStates.count)
  {
    v26 = [NSMutableArray arrayWithCapacity:?];
    if (p_accountStates->count)
    {
      v27 = 0;
      do
      {
        v28 = p_accountStates->list[v27];
        if (v28 >= 3)
        {
          v29 = [NSString stringWithFormat:@"(unknown: %i)", p_accountStates->list[v27]];
        }

        else
        {
          v29 = *(&off_10047DB40 + v28);
        }

        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < p_accountStates->count);
    }

    [v5 setObject:v26 forKey:@"accountState"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_segmentInfo)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_advertisingIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteDoubleField();
  v4 = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_34:
  PBDataWriterWriteFloatField();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_14:
  if (self->_osVersionAndBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_deviceModes.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v10;
      ++v6;
    }

    while (v6 < self->_deviceModes.count);
  }

  if (self->_accountTypes.count)
  {
    v7 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v10;
      ++v7;
    }

    while (v7 < self->_accountTypes.count);
  }

  p_accountStates = &self->_accountStates;
  if (p_accountStates->count)
  {
    v9 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v10;
      ++v9;
    }

    while (v9 < p_accountStates->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_iAdID)
  {
    [v4 setIAdID:?];
    v4 = v15;
  }

  if (self->_segmentInfo)
  {
    [v15 setSegmentInfo:?];
    v4 = v15;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 156) = self->_isFirstPartyIdentifier;
    *(v4 + 160) |= 0x10u;
  }

  if (self->_advertisingIdentifier)
  {
    [v15 setAdvertisingIdentifier:?];
    v4 = v15;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 10) = *&self->_iTunesRefreshTime;
    *(v4 + 160) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 11) = *&self->_updateSentTime;
  *(v4 + 160) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  *(v4 + 38) = LODWORD(self->_timezone);
  *(v4 + 160) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    *(v4 + 26) = self->_advertisingIdentifierMonthResetCount;
    *(v4 + 160) |= 4u;
  }

LABEL_14:
  if (self->_osVersionAndBuild)
  {
    [v15 setOsVersionAndBuild:?];
  }

  if (self->_localeIdentifier)
  {
    [v15 setLocaleIdentifier:?];
  }

  if (self->_dPID)
  {
    [v15 setDPID:?];
  }

  if ([(APPBSegmentUpdateRequest *)self deviceModesCount])
  {
    [v15 clearDeviceModes];
    v6 = [(APPBSegmentUpdateRequest *)self deviceModesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v15 addDeviceMode:{-[APPBSegmentUpdateRequest deviceModeAtIndex:](self, "deviceModeAtIndex:", i)}];
      }
    }
  }

  if ([(APPBSegmentUpdateRequest *)self accountTypesCount])
  {
    [v15 clearAccountTypes];
    v9 = [(APPBSegmentUpdateRequest *)self accountTypesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v15 addAccountType:{-[APPBSegmentUpdateRequest accountTypeAtIndex:](self, "accountTypeAtIndex:", j)}];
      }
    }
  }

  if ([(APPBSegmentUpdateRequest *)self accountStatesCount])
  {
    [v15 clearAccountStates];
    v12 = [(APPBSegmentUpdateRequest *)self accountStatesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v15 addAccountState:{-[APPBSegmentUpdateRequest accountStateAtIndex:](self, "accountStateAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:a3];
  v7 = v5[15];
  v5[15] = v6;

  v8 = [(NSString *)self->_segmentInfo copyWithZone:a3];
  v9 = v5[18];
  v5[18] = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 156) = self->_isFirstPartyIdentifier;
    *(v5 + 160) |= 0x10u;
  }

  v10 = [(NSString *)self->_advertisingIdentifier copyWithZone:a3];
  v11 = v5[12];
  v5[12] = v10;

  has = self->_has;
  if (has)
  {
    v5[10] = *&self->_iTunesRefreshTime;
    *(v5 + 160) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 38) = LODWORD(self->_timezone);
      *(v5 + 160) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v5[11] = *&self->_updateSentTime;
  *(v5 + 160) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v5 + 26) = self->_advertisingIdentifierMonthResetCount;
    *(v5 + 160) |= 4u;
  }

LABEL_8:
  v13 = [(NSString *)self->_osVersionAndBuild copyWithZone:a3];
  v14 = v5[17];
  v5[17] = v13;

  v15 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v16 = v5[16];
  v5[16] = v15;

  v17 = [(NSData *)self->_dPID copyWithZone:a3];
  v18 = v5[14];
  v5[14] = v17;

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(v4 + 15))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_46;
    }
  }

  segmentInfo = self->_segmentInfo;
  if (segmentInfo | *(v4 + 18))
  {
    if (![(NSString *)segmentInfo isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 160) & 0x10) == 0)
    {
      goto LABEL_46;
    }

    if (self->_isFirstPartyIdentifier)
    {
      if ((*(v4 + 156) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 156))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 160) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  advertisingIdentifier = self->_advertisingIdentifier;
  if (!(advertisingIdentifier | *(v4 + 12)))
  {
    goto LABEL_11;
  }

  if (![(NSString *)advertisingIdentifier isEqual:?])
  {
LABEL_46:
    IsEqual = 0;
    goto LABEL_47;
  }

  has = self->_has;
LABEL_11:
  if (has)
  {
    if ((*(v4 + 160) & 1) == 0 || self->_iTunesRefreshTime != *(v4 + 10))
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 160))
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 160) & 2) == 0 || self->_updateSentTime != *(v4 + 11))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 160) & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 160) & 8) == 0 || self->_timezone != *(v4 + 38))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 160) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 160) & 4) == 0 || self->_advertisingIdentifierMonthResetCount != *(v4 + 26))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 160) & 4) != 0)
  {
    goto LABEL_46;
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild | *(v4 + 17) && ![(NSString *)osVersionAndBuild isEqual:?])
  {
    goto LABEL_46;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 16))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  dPID = self->_dPID;
  if (dPID | *(v4 + 14))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_46;
    }
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_46;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_47:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iAdID hash];
  v4 = [(NSString *)self->_segmentInfo hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_isFirstPartyIdentifier;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_advertisingIdentifier hash];
  if (*&self->_has)
  {
    iTunesRefreshTime = self->_iTunesRefreshTime;
    if (iTunesRefreshTime < 0.0)
    {
      iTunesRefreshTime = -iTunesRefreshTime;
    }

    *v7.i64 = floor(iTunesRefreshTime + 0.5);
    v11 = (iTunesRefreshTime - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v12), v8, v7);
    v9 = 2654435761u * *v7.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    updateSentTime = self->_updateSentTime;
    if (updateSentTime < 0.0)
    {
      updateSentTime = -updateSentTime;
    }

    *v7.i64 = floor(updateSentTime + 0.5);
    v15 = (updateSentTime - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v16), v8, v7);
    v13 = 2654435761u * *v7.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    timezone = self->_timezone;
    if (timezone < 0.0)
    {
      timezone = -timezone;
    }

    *v7.i32 = floorf(timezone + 0.5);
    v19 = (timezone - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v17 = 2654435761u * *vbslq_s8(v20, v8, v7).i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v21 = 2654435761 * self->_advertisingIdentifierMonthResetCount;
  }

  else
  {
    v21 = 0;
  }

  v22 = v4 ^ v3 ^ v5 ^ v6;
  v23 = v9 ^ v13 ^ v17 ^ v21 ^ [(NSString *)self->_osVersionAndBuild hash];
  v24 = v22 ^ v23 ^ [(NSString *)self->_localeIdentifier hash];
  v25 = [(NSData *)self->_dPID hash];
  v26 = v25 ^ PBRepeatedInt32Hash();
  v27 = v26 ^ PBRepeatedInt32Hash();
  return v24 ^ v27 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (*(v4 + 15))
  {
    [(APPBSegmentUpdateRequest *)self setIAdID:?];
    v4 = v15;
  }

  if (*(v4 + 18))
  {
    [(APPBSegmentUpdateRequest *)self setSegmentInfo:?];
    v4 = v15;
  }

  if ((*(v4 + 160) & 0x10) != 0)
  {
    self->_isFirstPartyIdentifier = *(v4 + 156);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 12))
  {
    [(APPBSegmentUpdateRequest *)self setAdvertisingIdentifier:?];
    v4 = v15;
  }

  v5 = *(v4 + 160);
  if (v5)
  {
    self->_iTunesRefreshTime = *(v4 + 10);
    *&self->_has |= 1u;
    v5 = *(v4 + 160);
    if ((v5 & 2) == 0)
    {
LABEL_11:
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((*(v4 + 160) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_updateSentTime = *(v4 + 11);
  *&self->_has |= 2u;
  v5 = *(v4 + 160);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_34:
  self->_timezone = *(v4 + 38);
  *&self->_has |= 8u;
  if ((*(v4 + 160) & 4) != 0)
  {
LABEL_13:
    self->_advertisingIdentifierMonthResetCount = *(v4 + 26);
    *&self->_has |= 4u;
  }

LABEL_14:
  if (*(v4 + 17))
  {
    [(APPBSegmentUpdateRequest *)self setOsVersionAndBuild:?];
    v4 = v15;
  }

  if (*(v4 + 16))
  {
    [(APPBSegmentUpdateRequest *)self setLocaleIdentifier:?];
    v4 = v15;
  }

  if (*(v4 + 14))
  {
    [(APPBSegmentUpdateRequest *)self setDPID:?];
    v4 = v15;
  }

  v6 = [v4 deviceModesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[APPBSegmentUpdateRequest addDeviceMode:](self, "addDeviceMode:", [v15 deviceModeAtIndex:i]);
    }
  }

  v9 = [v15 accountTypesCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[APPBSegmentUpdateRequest addAccountType:](self, "addAccountType:", [v15 accountTypeAtIndex:j]);
    }
  }

  v12 = [v15 accountStatesCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[APPBSegmentUpdateRequest addAccountState:](self, "addAccountState:", [v15 accountStateAtIndex:k]);
    }
  }
}

@end