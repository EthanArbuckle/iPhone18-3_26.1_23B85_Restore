@interface ALCLSessionCatherine
- (BOOL)isEqual:(id)equal;
- (id)activityTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)onsetReasonAsString:(int)string;
- (int)StringAsActivityType:(id)type;
- (int)StringAsOnsetReason:(id)reason;
- (int)onsetReason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFirstCatherine:(BOOL)catherine;
- (void)setHasFirstCatherineStartTime:(BOOL)time;
- (void)setHasLongestDropout:(BOOL)dropout;
- (void)setHasMaxGoodCatherine:(BOOL)catherine;
- (void)setHasMeanCatherine:(BOOL)catherine;
- (void)setHasMeanGoodCatherine:(BOOL)catherine;
- (void)setHasMinGoodCatherine:(BOOL)catherine;
- (void)setHasNCatherine:(BOOL)catherine;
- (void)setHasNDropout:(BOOL)dropout;
- (void)setHasNGoodCatherine:(BOOL)catherine;
- (void)setHasNHighCatherine:(BOOL)catherine;
- (void)setHasNInterpolatedCatherine:(BOOL)catherine;
- (void)setHasNLowCatherine:(BOOL)catherine;
- (void)setHasNSampleAndHoldCatherine:(BOOL)catherine;
- (void)setHasNVeryHighCatherine:(BOOL)catherine;
- (void)setHasNVeryLowCatherine:(BOOL)catherine;
- (void)setHasOnsetCatherine:(BOOL)catherine;
- (void)setHasOnsetReason:(BOOL)reason;
- (void)setHasPersistedMinHR:(BOOL)r;
- (void)setHasTotalDropoutTime:(BOOL)time;
- (void)setHasUserMaxCatherine:(BOOL)catherine;
- (void)writeTo:(id)to;
@end

@implementation ALCLSessionCatherine

- (id)activityTypeAsString:(int)string
{
  if (string > 15029)
  {
    if (string > 15652)
    {
      if (string > 18224)
      {
        if (string <= 19149)
        {
          if (string > 19029)
          {
            if (string == 19030)
            {
              return @"kTypeIndoorSkatingSports";
            }

            if (string == 19090)
            {
              return @"kTypeCrossCountrySkiing";
            }
          }

          else
          {
            if (string == 18225)
            {
              return @"kTypePaddleSports";
            }

            if (string == 18240)
            {
              return @"kTypeSwimming";
            }
          }
        }

        else if (string <= 90120)
        {
          if (string == 19150)
          {
            return @"kTypeSummer";
          }

          if (string == 19160)
          {
            return @"kTypeSnowboarding";
          }
        }

        else
        {
          switch(string)
          {
            case 90121:
              return @"kTypeOutdoorHandCycling";
            case 90122:
              return @"kTypeIndoorHandCycling";
            case 90603:
              return @"kTypeOutdoorWheelchair";
          }
        }
      }

      else if (string <= 15709)
      {
        if (string > 15669)
        {
          if (string == 15670)
          {
            return @"kTypeTaiChi";
          }

          if (string == 15675)
          {
            return @"kTypeTennis";
          }
        }

        else
        {
          if (string == 15653)
          {
            return @"kTypeRacquetball";
          }

          if (string == 15660)
          {
            return @"kTypeTableTennis";
          }
        }
      }

      else if (string <= 17149)
      {
        if (string == 15710)
        {
          return @"kTypeVolleyball";
        }

        if (string == 15733)
        {
          return @"kTypeTrackAndField";
        }
      }

      else
      {
        switch(string)
        {
          case 17150:
            return @"kTypeIndoorWalking";
          case 18070:
            return @"kTypeOutdoorRowing";
          case 18200:
            return @"kTypeScubaDiving";
        }
      }
    }

    else if (string > 15349)
    {
      if (string <= 15591)
      {
        if (string > 15459)
        {
          if (string == 15460)
          {
            return @"kTypeLacrosse";
          }

          if (string == 15562)
          {
            return @"kTypeRugby";
          }
        }

        else
        {
          if (string == 15350)
          {
            return @"kTypeOutdoorHockey";
          }

          if (string == 15360)
          {
            return @"kTypeIndoorHockey";
          }
        }
      }

      else if (string <= 15619)
      {
        if (string == 15592)
        {
          return @"kTypeOutdoorSkatingSports";
        }

        if (string == 15610)
        {
          return @"kTypeOutdoorSoccer";
        }
      }

      else
      {
        switch(string)
        {
          case 15620:
            return @"kTypeSoftball";
          case 15621:
            return @"kTypeBaseball";
          case 15652:
            return @"kTypeSquash";
        }
      }
    }

    else if (string <= 15149)
    {
      if (string > 15099)
      {
        if (string == 15100)
        {
          return @"kTypeBoxing";
        }

        if (string == 15110)
        {
          return @"kTypeKickboxing";
        }
      }

      else
      {
        if (string == 15030)
        {
          return @"kTypeBadminton";
        }

        if (string == 15055)
        {
          return @"kTypeBasketball";
        }
      }
    }

    else if (string <= 15239)
    {
      if (string == 15150)
      {
        return @"kTypeCricket";
      }

      if (string == 15230)
      {
        return @"kTypeAmericanFootball";
      }
    }

    else
    {
      switch(string)
      {
        case 15240:
          return @"kTypeDiscSports";
        case 15255:
          return @"kTypeGolfing";
        case 15320:
          return @"kTypeHandball";
      }
    }

    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  if (string > 65)
  {
    if (string > 2067)
    {
      if (string <= 2149)
      {
        if (string > 2100)
        {
          if (string == 2101)
          {
            return @"kTypeCoolDown";
          }

          if (string == 2105)
          {
            return @"kTypePilates";
          }
        }

        else
        {
          if (string == 2068)
          {
            return @"kTypeJumpRope";
          }

          if (string == 2071)
          {
            return @"kTypeRowing";
          }
        }
      }

      else if (string <= 3015)
      {
        if (string == 2150)
        {
          return @"kTypeYoga";
        }

        if (string == 3015)
        {
          return @"kTypeDancing";
        }
      }

      else
      {
        switch(string)
        {
          case 3016:
            return @"kTypeStepTraining";
          case 11805:
            return @"kTypePushingWheelchair";
          case 12150:
            return @"kTypeIndoorRunning";
        }
      }
    }

    else if (string <= 2021)
    {
      if (string > 2009)
      {
        if (string == 2010)
        {
          return @"kTypeStationaryCycling";
        }

        if (string == 2020)
        {
          return @"kTypeCalisthenics";
        }
      }

      else
      {
        if (string == 66)
        {
          return @"kTypePickleball";
        }

        if (string == 100)
        {
          return @"kTypeCyclingLeg";
        }
      }
    }

    else if (string <= 2047)
    {
      if (string == 2022)
      {
        return @"kTypeFunctionalStrength";
      }

      if (string == 2024)
      {
        return @"kTypeCoreTraining";
      }
    }

    else
    {
      switch(string)
      {
        case 2048:
          return @"kTypeElliptical";
        case 2061:
          return @"kTypeCrossTraining";
        case 2065:
          return @"kTypeStairClimbing";
      }
    }

    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  if (string > 8)
  {
    if (string <= 51)
    {
      if (string > 10)
      {
        if (string == 11)
        {
          return @"kTypeInVehicleStatic";
        }

        if (string == 41)
        {
          return @"kTypeWalkingSlow";
        }

        return [NSString stringWithFormat:@"(unknown: %i)", *&string];
      }

      if (string == 9)
      {
        return @"kTypeMovingCoarse";
      }

      else
      {
        return @"kTypeInVehicleFrozen";
      }
    }

    else
    {
      if (string <= 62)
      {
        if (string == 52)
        {
          return @"kTypeVehicularInHand";
        }

        if (string == 56)
        {
          return @"kTypeDrivingOther";
        }

        return [NSString stringWithFormat:@"(unknown: %i)", *&string];
      }

      if (string == 63)
      {
        return @"kTypeMultiSportTransition";
      }

      else if (string == 64)
      {
        return @"kTypeIndoorSoccer";
      }

      else
      {
        return @"kTypeAustralianFootball";
      }
    }
  }

  else
  {
    if (string > 3)
    {
      if (string <= 5)
      {
        if (string == 4)
        {
          return @"kTypeWalking";
        }

        else
        {
          return @"kTypeDriving";
        }
      }

      else if (string == 6)
      {
        return @"kTypeCycling";
      }

      else if (string == 7)
      {
        return @"kTypeSemiStationary";
      }

      else
      {
        return @"kTypeRunning";
      }
    }

    if (string <= 1)
    {
      if (!string)
      {
        return @"kTypeUnknown";
      }

      if (string == 1)
      {
        return @"kTypeFrozen";
      }

      return [NSString stringWithFormat:@"(unknown: %i)", *&string];
    }

    if (string == 2)
    {
      return @"kTypeStatic";
    }

    else
    {
      return @"kTypeMoving";
    }
  }
}

- (int)StringAsActivityType:(id)type
{
  if ([type isEqualToString:@"kTypeUnknown"])
  {
    return 0;
  }

  if ([type isEqualToString:@"kTypeFrozen"])
  {
    return 1;
  }

  if ([type isEqualToString:@"kTypeStatic"])
  {
    return 2;
  }

  if ([type isEqualToString:@"kTypeMoving"])
  {
    return 3;
  }

  if ([type isEqualToString:@"kTypeWalking"])
  {
    return 4;
  }

  if ([type isEqualToString:@"kTypeDriving"])
  {
    return 5;
  }

  if ([type isEqualToString:@"kTypeCycling"])
  {
    return 6;
  }

  if ([type isEqualToString:@"kTypeSemiStationary"])
  {
    return 7;
  }

  if ([type isEqualToString:@"kTypeRunning"])
  {
    return 8;
  }

  if ([type isEqualToString:@"kTypeMovingCoarse"])
  {
    return 9;
  }

  if ([type isEqualToString:@"kTypeInVehicleFrozen"])
  {
    return 10;
  }

  if ([type isEqualToString:@"kTypeInVehicleStatic"])
  {
    return 11;
  }

  if ([type isEqualToString:@"kTypeWalkingSlow"])
  {
    return 41;
  }

  if ([type isEqualToString:@"kTypeVehicularInHand"])
  {
    return 52;
  }

  if ([type isEqualToString:@"kTypeDrivingOther"])
  {
    return 56;
  }

  if ([type isEqualToString:@"kTypeCyclingLeg"])
  {
    return 100;
  }

  if ([type isEqualToString:@"kTypeStationaryCycling"])
  {
    return 2010;
  }

  if ([type isEqualToString:@"kTypeCalisthenics"])
  {
    return 2020;
  }

  if ([type isEqualToString:@"kTypeElliptical"])
  {
    return 2048;
  }

  if ([type isEqualToString:@"kTypeCrossTraining"])
  {
    return 2061;
  }

  if ([type isEqualToString:@"kTypeStairClimbing"])
  {
    return 2065;
  }

  if ([type isEqualToString:@"kTypeRowing"])
  {
    return 2071;
  }

  if ([type isEqualToString:@"kTypeYoga"])
  {
    return 2150;
  }

  if ([type isEqualToString:@"kTypeDancing"])
  {
    return 3015;
  }

  if ([type isEqualToString:@"kTypePushingWheelchair"])
  {
    return 11805;
  }

  if ([type isEqualToString:@"kTypeIndoorRunning"])
  {
    return 12150;
  }

  if ([type isEqualToString:@"kTypeGolfing"])
  {
    return 15255;
  }

  if ([type isEqualToString:@"kTypeIndoorWalking"])
  {
    return 17150;
  }

  if ([type isEqualToString:@"kTypeSwimming"])
  {
    return 18240;
  }

  if ([type isEqualToString:@"kTypeSummer"])
  {
    return 19150;
  }

  if ([type isEqualToString:@"kTypeOutdoorWheelchair"])
  {
    return 90603;
  }

  if ([type isEqualToString:@"kTypeFunctionalStrength"])
  {
    return 2022;
  }

  if ([type isEqualToString:@"kTypeCoolDown"])
  {
    return 2101;
  }

  if ([type isEqualToString:@"kTypeCoreTraining"])
  {
    return 2024;
  }

  if ([type isEqualToString:@"kTypeTaiChi"])
  {
    return 15670;
  }

  if ([type isEqualToString:@"kTypePilates"])
  {
    return 2105;
  }

  if ([type isEqualToString:@"kTypeMultiSportTransition"])
  {
    return 63;
  }

  if ([type isEqualToString:@"kTypeScubaDiving"])
  {
    return 18200;
  }

  if ([type isEqualToString:@"kTypeKickboxing"])
  {
    return 15110;
  }

  if ([type isEqualToString:@"kTypeOutdoorRowing"])
  {
    return 18070;
  }

  if ([type isEqualToString:@"kTypeCrossCountrySkiing"])
  {
    return 19090;
  }

  if ([type isEqualToString:@"kTypeSnowboarding"])
  {
    return 19160;
  }

  if ([type isEqualToString:@"kTypePaddleSports"])
  {
    return 18225;
  }

  if ([type isEqualToString:@"kTypeOutdoorSoccer"])
  {
    return 15610;
  }

  if ([type isEqualToString:@"kTypeIndoorSoccer"])
  {
    return 64;
  }

  if ([type isEqualToString:@"kTypeAustralianFootball"])
  {
    return 65;
  }

  if ([type isEqualToString:@"kTypeAmericanFootball"])
  {
    return 15230;
  }

  if ([type isEqualToString:@"kTypeDiscSports"])
  {
    return 15240;
  }

  if ([type isEqualToString:@"kTypeRugby"])
  {
    return 15562;
  }

  if ([type isEqualToString:@"kTypeLacrosse"])
  {
    return 15460;
  }

  if ([type isEqualToString:@"kTypeOutdoorSkatingSports"])
  {
    return 15592;
  }

  if ([type isEqualToString:@"kTypeIndoorSkatingSports"])
  {
    return 19030;
  }

  if ([type isEqualToString:@"kTypeIndoorHockey"])
  {
    return 15360;
  }

  if ([type isEqualToString:@"kTypeOutdoorHockey"])
  {
    return 15350;
  }

  if ([type isEqualToString:@"kTypeBasketball"])
  {
    return 15055;
  }

  if ([type isEqualToString:@"kTypeTennis"])
  {
    return 15675;
  }

  if ([type isEqualToString:@"kTypeBadminton"])
  {
    return 15030;
  }

  if ([type isEqualToString:@"kTypeRacquetball"])
  {
    return 15653;
  }

  if ([type isEqualToString:@"kTypePickleball"])
  {
    return 66;
  }

  if ([type isEqualToString:@"kTypeVolleyball"])
  {
    return 15710;
  }

  if ([type isEqualToString:@"kTypeSquash"])
  {
    return 15652;
  }

  if ([type isEqualToString:@"kTypeHandball"])
  {
    return 15320;
  }

  if ([type isEqualToString:@"kTypeTrackAndField"])
  {
    return 15733;
  }

  if ([type isEqualToString:@"kTypeSoftball"])
  {
    return 15620;
  }

  if ([type isEqualToString:@"kTypeBaseball"])
  {
    return 15621;
  }

  if ([type isEqualToString:@"kTypeCricket"])
  {
    return 15150;
  }

  if ([type isEqualToString:@"kTypeTableTennis"])
  {
    return 15660;
  }

  if ([type isEqualToString:@"kTypeJumpRope"])
  {
    return 2068;
  }

  if ([type isEqualToString:@"kTypeBoxing"])
  {
    return 15100;
  }

  if ([type isEqualToString:@"kTypeStepTraining"])
  {
    return 3016;
  }

  if ([type isEqualToString:@"kTypeIndoorHandCycling"])
  {
    return 90122;
  }

  if ([type isEqualToString:@"kTypeOutdoorHandCycling"])
  {
    return 90121;
  }

  return 0;
}

- (void)setHasNCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasNVeryLowCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasNLowCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasNHighCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasNVeryHighCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNGoodCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasNInterpolatedCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasNSampleAndHoldCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMinGoodCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMaxGoodCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMeanCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasMeanGoodCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasFirstCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasFirstCatherineStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasLongestDropout:(BOOL)dropout
{
  if (dropout)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTotalDropoutTime:(BOOL)time
{
  if (time)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNDropout:(BOOL)dropout
{
  if (dropout)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)onsetReason
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_onsetReason;
  }

  else
  {
    return -1;
  }
}

- (void)setHasOnsetReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (id)onsetReasonAsString:(int)string
{
  if ((string + 1) >= 5)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_10246EB98[string + 1];
  }
}

- (int)StringAsOnsetReason:(id)reason
{
  if ([reason isEqualToString:@"kOnsetNotSet"])
  {
    return -1;
  }

  if ([reason isEqualToString:@"kOnsetElevated"])
  {
    return 0;
  }

  if ([reason isEqualToString:@"kOnsetActive"])
  {
    return 1;
  }

  if ([reason isEqualToString:@"kOnsetNotElevated"])
  {
    return 2;
  }

  if ([reason isEqualToString:@"kOnsetTimeout"])
  {
    return 3;
  }

  return -1;
}

- (void)setHasOnsetCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasUserMaxCatherine:(BOOL)catherine
{
  if (catherine)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasPersistedMinHR:(BOOL)r
{
  if (r)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLSessionCatherine;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLSessionCatherine *)&v3 description], [(ALCLSessionCatherine *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  activityType = self->_activityType;
  if (activityType > 15029)
  {
    if (activityType > 15652)
    {
      if (activityType > 18224)
      {
        if (activityType <= 19149)
        {
          if (activityType > 19029)
          {
            if (activityType == 19030)
            {
              v5 = @"kTypeIndoorSkatingSports";
              goto LABEL_172;
            }

            if (activityType == 19090)
            {
              v5 = @"kTypeCrossCountrySkiing";
              goto LABEL_172;
            }
          }

          else
          {
            if (activityType == 18225)
            {
              v5 = @"kTypePaddleSports";
              goto LABEL_172;
            }

            if (activityType == 18240)
            {
              v5 = @"kTypeSwimming";
              goto LABEL_172;
            }
          }
        }

        else if (activityType <= 90120)
        {
          if (activityType == 19150)
          {
            v5 = @"kTypeSummer";
            goto LABEL_172;
          }

          if (activityType == 19160)
          {
            v5 = @"kTypeSnowboarding";
            goto LABEL_172;
          }
        }

        else
        {
          switch(activityType)
          {
            case 90121:
              v5 = @"kTypeOutdoorHandCycling";
              goto LABEL_172;
            case 90122:
              v5 = @"kTypeIndoorHandCycling";
              goto LABEL_172;
            case 90603:
              v5 = @"kTypeOutdoorWheelchair";
              goto LABEL_172;
          }
        }
      }

      else if (activityType <= 15709)
      {
        if (activityType > 15669)
        {
          if (activityType == 15670)
          {
            v5 = @"kTypeTaiChi";
            goto LABEL_172;
          }

          if (activityType == 15675)
          {
            v5 = @"kTypeTennis";
            goto LABEL_172;
          }
        }

        else
        {
          if (activityType == 15653)
          {
            v5 = @"kTypeRacquetball";
            goto LABEL_172;
          }

          if (activityType == 15660)
          {
            v5 = @"kTypeTableTennis";
            goto LABEL_172;
          }
        }
      }

      else if (activityType <= 17149)
      {
        if (activityType == 15710)
        {
          v5 = @"kTypeVolleyball";
          goto LABEL_172;
        }

        if (activityType == 15733)
        {
          v5 = @"kTypeTrackAndField";
          goto LABEL_172;
        }
      }

      else
      {
        switch(activityType)
        {
          case 17150:
            v5 = @"kTypeIndoorWalking";
            goto LABEL_172;
          case 18070:
            v5 = @"kTypeOutdoorRowing";
            goto LABEL_172;
          case 18200:
            v5 = @"kTypeScubaDiving";
            goto LABEL_172;
        }
      }
    }

    else if (activityType > 15349)
    {
      if (activityType <= 15591)
      {
        if (activityType > 15459)
        {
          if (activityType == 15460)
          {
            v5 = @"kTypeLacrosse";
            goto LABEL_172;
          }

          if (activityType == 15562)
          {
            v5 = @"kTypeRugby";
            goto LABEL_172;
          }
        }

        else
        {
          if (activityType == 15350)
          {
            v5 = @"kTypeOutdoorHockey";
            goto LABEL_172;
          }

          if (activityType == 15360)
          {
            v5 = @"kTypeIndoorHockey";
            goto LABEL_172;
          }
        }
      }

      else if (activityType <= 15619)
      {
        if (activityType == 15592)
        {
          v5 = @"kTypeOutdoorSkatingSports";
          goto LABEL_172;
        }

        if (activityType == 15610)
        {
          v5 = @"kTypeOutdoorSoccer";
          goto LABEL_172;
        }
      }

      else
      {
        switch(activityType)
        {
          case 15620:
            v5 = @"kTypeSoftball";
            goto LABEL_172;
          case 15621:
            v5 = @"kTypeBaseball";
            goto LABEL_172;
          case 15652:
            v5 = @"kTypeSquash";
            goto LABEL_172;
        }
      }
    }

    else if (activityType <= 15149)
    {
      if (activityType > 15099)
      {
        if (activityType == 15100)
        {
          v5 = @"kTypeBoxing";
          goto LABEL_172;
        }

        if (activityType == 15110)
        {
          v5 = @"kTypeKickboxing";
          goto LABEL_172;
        }
      }

      else
      {
        if (activityType == 15030)
        {
          v5 = @"kTypeBadminton";
          goto LABEL_172;
        }

        if (activityType == 15055)
        {
          v5 = @"kTypeBasketball";
          goto LABEL_172;
        }
      }
    }

    else if (activityType <= 15239)
    {
      if (activityType == 15150)
      {
        v5 = @"kTypeCricket";
        goto LABEL_172;
      }

      if (activityType == 15230)
      {
        v5 = @"kTypeAmericanFootball";
        goto LABEL_172;
      }
    }

    else
    {
      switch(activityType)
      {
        case 15240:
          v5 = @"kTypeDiscSports";
          goto LABEL_172;
        case 15255:
          v5 = @"kTypeGolfing";
          goto LABEL_172;
        case 15320:
          v5 = @"kTypeHandball";
          goto LABEL_172;
      }
    }

    goto LABEL_171;
  }

  if (activityType > 65)
  {
    if (activityType > 2067)
    {
      if (activityType <= 2149)
      {
        if (activityType > 2100)
        {
          if (activityType == 2101)
          {
            v5 = @"kTypeCoolDown";
            goto LABEL_172;
          }

          if (activityType == 2105)
          {
            v5 = @"kTypePilates";
            goto LABEL_172;
          }
        }

        else
        {
          if (activityType == 2068)
          {
            v5 = @"kTypeJumpRope";
            goto LABEL_172;
          }

          if (activityType == 2071)
          {
            v5 = @"kTypeRowing";
            goto LABEL_172;
          }
        }
      }

      else if (activityType <= 3015)
      {
        if (activityType == 2150)
        {
          v5 = @"kTypeYoga";
          goto LABEL_172;
        }

        if (activityType == 3015)
        {
          v5 = @"kTypeDancing";
          goto LABEL_172;
        }
      }

      else
      {
        switch(activityType)
        {
          case 3016:
            v5 = @"kTypeStepTraining";
            goto LABEL_172;
          case 11805:
            v5 = @"kTypePushingWheelchair";
            goto LABEL_172;
          case 12150:
            v5 = @"kTypeIndoorRunning";
            goto LABEL_172;
        }
      }
    }

    else if (activityType <= 2021)
    {
      if (activityType > 2009)
      {
        if (activityType == 2010)
        {
          v5 = @"kTypeStationaryCycling";
          goto LABEL_172;
        }

        if (activityType == 2020)
        {
          v5 = @"kTypeCalisthenics";
          goto LABEL_172;
        }
      }

      else
      {
        if (activityType == 66)
        {
          v5 = @"kTypePickleball";
          goto LABEL_172;
        }

        if (activityType == 100)
        {
          v5 = @"kTypeCyclingLeg";
          goto LABEL_172;
        }
      }
    }

    else if (activityType <= 2047)
    {
      if (activityType == 2022)
      {
        v5 = @"kTypeFunctionalStrength";
        goto LABEL_172;
      }

      if (activityType == 2024)
      {
        v5 = @"kTypeCoreTraining";
        goto LABEL_172;
      }
    }

    else
    {
      switch(activityType)
      {
        case 2048:
          v5 = @"kTypeElliptical";
          goto LABEL_172;
        case 2061:
          v5 = @"kTypeCrossTraining";
          goto LABEL_172;
        case 2065:
          v5 = @"kTypeStairClimbing";
          goto LABEL_172;
      }
    }

    goto LABEL_171;
  }

  if (activityType > 8)
  {
    if (activityType <= 51)
    {
      if (activityType > 10)
      {
        if (activityType == 11)
        {
          v5 = @"kTypeInVehicleStatic";
          goto LABEL_172;
        }

        if (activityType == 41)
        {
          v5 = @"kTypeWalkingSlow";
          goto LABEL_172;
        }

        goto LABEL_171;
      }

      if (activityType == 9)
      {
        v5 = @"kTypeMovingCoarse";
      }

      else
      {
        v5 = @"kTypeInVehicleFrozen";
      }
    }

    else
    {
      if (activityType <= 62)
      {
        if (activityType == 52)
        {
          v5 = @"kTypeVehicularInHand";
          goto LABEL_172;
        }

        if (activityType == 56)
        {
          v5 = @"kTypeDrivingOther";
          goto LABEL_172;
        }

        goto LABEL_171;
      }

      if (activityType == 63)
      {
        v5 = @"kTypeMultiSportTransition";
      }

      else if (activityType == 64)
      {
        v5 = @"kTypeIndoorSoccer";
      }

      else
      {
        v5 = @"kTypeAustralianFootball";
      }
    }
  }

  else
  {
    if (activityType > 3)
    {
      if (activityType <= 5)
      {
        if (activityType == 4)
        {
          v5 = @"kTypeWalking";
        }

        else
        {
          v5 = @"kTypeDriving";
        }
      }

      else if (activityType == 6)
      {
        v5 = @"kTypeCycling";
      }

      else if (activityType == 7)
      {
        v5 = @"kTypeSemiStationary";
      }

      else
      {
        v5 = @"kTypeRunning";
      }

      goto LABEL_172;
    }

    if (activityType <= 1)
    {
      if (!activityType)
      {
        v5 = @"kTypeUnknown";
        goto LABEL_172;
      }

      if (activityType == 1)
      {
        v5 = @"kTypeFrozen";
        goto LABEL_172;
      }

LABEL_171:
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_activityType];
      goto LABEL_172;
    }

    if (activityType == 2)
    {
      v5 = @"kTypeStatic";
    }

    else
    {
      v5 = @"kTypeMoving";
    }
  }

LABEL_172:
  [v3 setObject:v5 forKey:@"activityType"];
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nCatherine), @"nCatherine"}];
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_174:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_198;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_174;
  }

  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nVeryLowCatherine), @"nVeryLowCatherine"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_175:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_198:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nLowCatherine), @"nLowCatherine"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_176:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_200;
  }

LABEL_199:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nHighCatherine), @"nHighCatherine"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_177:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_201;
  }

LABEL_200:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nVeryHighCatherine), @"nVeryHighCatherine"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_178:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_202;
  }

LABEL_201:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nGoodCatherine), @"nGoodCatherine"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_179:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_203;
  }

LABEL_202:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nInterpolatedCatherine), @"nInterpolatedCatherine"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_180:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_204;
  }

LABEL_203:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nSampleAndHoldCatherine), @"nSampleAndHoldCatherine"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_181:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_204:
  *&v6 = self->_minGoodCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"minGoodCatherine"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_182:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_206;
  }

LABEL_205:
  *&v6 = self->_maxGoodCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"maxGoodCatherine"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_183:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_207;
  }

LABEL_206:
  *&v6 = self->_meanCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"meanCatherine"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_184:
    if ((*&has & 2) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_208;
  }

LABEL_207:
  *&v6 = self->_meanGoodCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"meanGoodCatherine"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_185:
    if ((*&has & 4) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_209;
  }

LABEL_208:
  *&v6 = self->_firstCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"firstCatherine"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_186:
    if ((*&has & 8) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_210;
  }

LABEL_209:
  *&v6 = self->_firstCatherineStartTime;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"firstCatherineStartTime"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_187:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_211;
  }

LABEL_210:
  *&v6 = self->_longestDropout;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"longestDropout"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_188:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_212;
  }

LABEL_211:
  *&v6 = self->_totalDropoutTime;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"totalDropoutTime"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_189:
    if ((*&has & 1) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_213;
  }

LABEL_212:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nDropout), @"nDropout"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_190:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_214;
  }

LABEL_213:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_startTime), @"startTime"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_191:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_218;
  }

LABEL_214:
  v9 = self->_onsetReason + 1;
  if (v9 >= 5)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_onsetReason];
  }

  else
  {
    v10 = off_10246EB98[v9];
  }

  [v3 setObject:v10 forKey:@"onsetReason"];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_192:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_193;
    }

LABEL_219:
    *&v6 = self->_userMaxCatherine;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"userMaxCatherine"}];
    if ((*&self->_has & 0x80000) == 0)
    {
      return v3;
    }

    goto LABEL_194;
  }

LABEL_218:
  *&v6 = self->_onsetCatherine;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"onsetCatherine"}];
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_219;
  }

LABEL_193:
  if ((*&has & 0x80000) != 0)
  {
LABEL_194:
    *&v6 = self->_persistedMinHR;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"persistedMinHR"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 0x80000) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_43:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((*&has & 0x80000) == 0)
  {
    return;
  }

LABEL_45:

  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  *(to + 4) = self->_activityType;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(to + 12) = self->_nCatherine;
    *(to + 26) |= 0x100u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 20) = self->_nVeryLowCatherine;
  *(to + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 17) = self->_nLowCatherine;
  *(to + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 15) = self->_nHighCatherine;
  *(to + 26) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 19) = self->_nVeryHighCatherine;
  *(to + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 14) = self->_nGoodCatherine;
  *(to + 26) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 16) = self->_nInterpolatedCatherine;
  *(to + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 18) = self->_nSampleAndHoldCatherine;
  *(to + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 11) = LODWORD(self->_minGoodCatherine);
  *(to + 26) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 8) = LODWORD(self->_maxGoodCatherine);
  *(to + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 9) = LODWORD(self->_meanCatherine);
  *(to + 26) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 10) = LODWORD(self->_meanGoodCatherine);
  *(to + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 5) = LODWORD(self->_firstCatherine);
  *(to + 26) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 6) = LODWORD(self->_firstCatherineStartTime);
  *(to + 26) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 7) = LODWORD(self->_longestDropout);
  *(to + 26) |= 8u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 24) = LODWORD(self->_totalDropoutTime);
  *(to + 26) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 13) = self->_nDropout;
  *(to + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 1) = *&self->_startTime;
  *(to + 26) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 22) = self->_onsetReason;
  *(to + 26) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(to + 21) = LODWORD(self->_onsetCatherine);
  *(to + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      return;
    }

LABEL_45:
    *(to + 23) = LODWORD(self->_persistedMinHR);
    *(to + 26) |= 0x80000u;
    return;
  }

LABEL_44:
  *(to + 25) = LODWORD(self->_userMaxCatherine);
  *(to + 26) |= 0x200000u;
  if ((*&self->_has & 0x80000) != 0)
  {
    goto LABEL_45;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_activityType;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(result + 12) = self->_nCatherine;
    *(result + 26) |= 0x100u;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 20) = self->_nVeryLowCatherine;
  *(result + 26) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 17) = self->_nLowCatherine;
  *(result + 26) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 15) = self->_nHighCatherine;
  *(result + 26) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 19) = self->_nVeryHighCatherine;
  *(result + 26) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 14) = self->_nGoodCatherine;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 16) = self->_nInterpolatedCatherine;
  *(result + 26) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 18) = self->_nSampleAndHoldCatherine;
  *(result + 26) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 11) = LODWORD(self->_minGoodCatherine);
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 8) = LODWORD(self->_maxGoodCatherine);
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 9) = LODWORD(self->_meanCatherine);
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 10) = LODWORD(self->_meanGoodCatherine);
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 5) = LODWORD(self->_firstCatherine);
  *(result + 26) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 6) = LODWORD(self->_firstCatherineStartTime);
  *(result + 26) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 7) = LODWORD(self->_longestDropout);
  *(result + 26) |= 8u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 24) = LODWORD(self->_totalDropoutTime);
  *(result + 26) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 13) = self->_nDropout;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 1) = *&self->_startTime;
  *(result + 26) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 22) = self->_onsetReason;
  *(result + 26) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 21) = LODWORD(self->_onsetCatherine);
  *(result + 26) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_45:
  *(result + 25) = LODWORD(self->_userMaxCatherine);
  *(result + 26) |= 0x200000u;
  if ((*&self->_has & 0x80000) == 0)
  {
    return result;
  }

LABEL_23:
  *(result + 23) = LODWORD(self->_persistedMinHR);
  *(result + 26) |= 0x80000u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_activityType != *(equal + 4))
    {
LABEL_112:
      LOBYTE(v5) = 0;
      return v5;
    }

    has = self->_has;
    v7 = *(equal + 26);
    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_nCatherine != *(equal + 12))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_nVeryLowCatherine != *(equal + 20))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_nLowCatherine != *(equal + 17))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_nHighCatherine != *(equal + 15))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_nVeryHighCatherine != *(equal + 19))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_nGoodCatherine != *(equal + 14))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_nInterpolatedCatherine != *(equal + 16))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_nSampleAndHoldCatherine != *(equal + 18))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_minGoodCatherine != *(equal + 11))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_maxGoodCatherine != *(equal + 8))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_meanCatherine != *(equal + 9))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_meanGoodCatherine != *(equal + 10))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_firstCatherine != *(equal + 5))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_firstCatherineStartTime != *(equal + 6))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_longestDropout != *(equal + 7))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_totalDropoutTime != *(equal + 24))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_nDropout != *(equal + 13))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_112;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_startTime != *(equal + 1))
      {
        goto LABEL_112;
      }
    }

    else if (v7)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_onsetReason != *(equal + 22))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_onsetCatherine != *(equal + 21))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_112;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_userMaxCatherine != *(equal + 25))
      {
        goto LABEL_112;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_112;
    }

    LOBYTE(v5) = (v7 & 0x80000) == 0;
    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_persistedMinHR != *(equal + 23))
      {
        goto LABEL_112;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    v5 = 2654435761 * self->_nCatherine;
    if ((*&has & 0x10000) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_nVeryLowCatherine;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_nLowCatherine;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_nHighCatherine;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_nVeryHighCatherine;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_nGoodCatherine;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_nInterpolatedCatherine;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    v12 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v11 = 0;
  if ((*&has & 0x4000) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v12 = 2654435761 * self->_nSampleAndHoldCatherine;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  minGoodCatherine = self->_minGoodCatherine;
  if (minGoodCatherine < 0.0)
  {
    minGoodCatherine = -minGoodCatherine;
  }

  *v2.i32 = floorf(minGoodCatherine + 0.5);
  v14 = (minGoodCatherine - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v15, v3, v2);
  v16 = 2654435761u * *v2.i32;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabsf(v14);
  }

LABEL_23:
  if ((*&has & 0x10) != 0)
  {
    maxGoodCatherine = self->_maxGoodCatherine;
    if (maxGoodCatherine < 0.0)
    {
      maxGoodCatherine = -maxGoodCatherine;
    }

    *v2.i32 = floorf(maxGoodCatherine + 0.5);
    v19 = (maxGoodCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v20, v3, v2);
    v17 = 2654435761u * *v2.i32;
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

  if ((*&has & 0x20) != 0)
  {
    meanCatherine = self->_meanCatherine;
    if (meanCatherine < 0.0)
    {
      meanCatherine = -meanCatherine;
    }

    *v2.i32 = floorf(meanCatherine + 0.5);
    v23 = (meanCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v24, v3, v2);
    v21 = 2654435761u * *v2.i32;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabsf(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    meanGoodCatherine = self->_meanGoodCatherine;
    if (meanGoodCatherine < 0.0)
    {
      meanGoodCatherine = -meanGoodCatherine;
    }

    *v2.i32 = floorf(meanGoodCatherine + 0.5);
    v27 = (meanGoodCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v28, v3, v2);
    v25 = 2654435761u * *v2.i32;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabsf(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&has & 2) != 0)
  {
    firstCatherine = self->_firstCatherine;
    if (firstCatherine < 0.0)
    {
      firstCatherine = -firstCatherine;
    }

    *v2.i32 = floorf(firstCatherine + 0.5);
    v31 = (firstCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v32, v3, v2);
    v29 = 2654435761u * *v2.i32;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabsf(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&has & 4) != 0)
  {
    firstCatherineStartTime = self->_firstCatherineStartTime;
    if (firstCatherineStartTime < 0.0)
    {
      firstCatherineStartTime = -firstCatherineStartTime;
    }

    *v2.i32 = floorf(firstCatherineStartTime + 0.5);
    v35 = (firstCatherineStartTime - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v36.i64[0] = 0x8000000080000000;
    v36.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v36, v3, v2);
    v33 = 2654435761u * *v2.i32;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabsf(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((*&has & 8) != 0)
  {
    longestDropout = self->_longestDropout;
    if (longestDropout < 0.0)
    {
      longestDropout = -longestDropout;
    }

    *v2.i32 = floorf(longestDropout + 0.5);
    v39 = (longestDropout - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v40, v3, v2);
    v37 = 2654435761u * *v2.i32;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabsf(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((*&has & 0x100000) != 0)
  {
    totalDropoutTime = self->_totalDropoutTime;
    if (totalDropoutTime < 0.0)
    {
      totalDropoutTime = -totalDropoutTime;
    }

    *v2.i32 = floorf(totalDropoutTime + 0.5);
    v43 = (totalDropoutTime - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v44.i64[0] = 0x8000000080000000;
    v44.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v44, v3, v2);
    v41 = 2654435761u * *v2.i32;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabsf(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    v45 = 2654435761 * self->_nDropout;
    if (*&has)
    {
      goto LABEL_83;
    }

LABEL_88:
    v49 = 0;
    goto LABEL_89;
  }

  v45 = 0;
  if ((*&has & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_83:
  startTime = self->_startTime;
  if (startTime < 0.0)
  {
    startTime = -startTime;
  }

  *v2.i64 = floor(startTime + 0.5);
  v47 = (startTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v48.f64[0] = NAN;
  v48.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v48), v3, v2);
  v49 = 2654435761u * *v2.i64;
  if (v47 >= 0.0)
  {
    if (v47 > 0.0)
    {
      v49 += v47;
    }
  }

  else
  {
    v49 -= fabs(v47);
  }

LABEL_89:
  if ((*&has & 0x40000) != 0)
  {
    v50 = 2654435761 * self->_onsetReason;
  }

  else
  {
    v50 = 0;
  }

  if ((*&has & 0x20000) != 0)
  {
    onsetCatherine = self->_onsetCatherine;
    if (onsetCatherine < 0.0)
    {
      onsetCatherine = -onsetCatherine;
    }

    *v2.i32 = floorf(onsetCatherine + 0.5);
    v53 = (onsetCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v54.i64[0] = 0x8000000080000000;
    v54.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v54, v3, v2);
    v51 = 2654435761u * *v2.i32;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabsf(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((*&has & 0x200000) != 0)
  {
    userMaxCatherine = self->_userMaxCatherine;
    if (userMaxCatherine < 0.0)
    {
      userMaxCatherine = -userMaxCatherine;
    }

    *v2.i32 = floorf(userMaxCatherine + 0.5);
    v57 = (userMaxCatherine - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v58.i64[0] = 0x8000000080000000;
    v58.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v58, v3, v2);
    v55 = 2654435761u * *v2.i32;
    if (v57 >= 0.0)
    {
      if (v57 > 0.0)
      {
        v55 += v57;
      }
    }

    else
    {
      v55 -= fabsf(v57);
    }
  }

  else
  {
    v55 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    persistedMinHR = self->_persistedMinHR;
    if (persistedMinHR < 0.0)
    {
      persistedMinHR = -persistedMinHR;
    }

    *v2.i32 = floorf(persistedMinHR + 0.5);
    v61 = (persistedMinHR - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v62.i64[0] = 0x8000000080000000;
    v62.i64[1] = 0x8000000080000000;
    v59 = 2654435761u * *vbslq_s8(v62, v3, v2).i32;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabsf(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  return v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v16 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v41 ^ (2654435761 * self->_activityType) ^ v45 ^ v49 ^ v50 ^ v51 ^ v55 ^ v59;
}

- (void)mergeFrom:(id)from
{
  self->_activityType = *(from + 4);
  v3 = *(from + 26);
  if ((v3 & 0x100) != 0)
  {
    self->_nCatherine = *(from + 12);
    *&self->_has |= 0x100u;
    v3 = *(from + 26);
    if ((v3 & 0x10000) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  self->_nVeryLowCatherine = *(from + 20);
  *&self->_has |= 0x10000u;
  v3 = *(from + 26);
  if ((v3 & 0x2000) == 0)
  {
LABEL_4:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_nLowCatherine = *(from + 17);
  *&self->_has |= 0x2000u;
  v3 = *(from + 26);
  if ((v3 & 0x800) == 0)
  {
LABEL_5:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_nHighCatherine = *(from + 15);
  *&self->_has |= 0x800u;
  v3 = *(from + 26);
  if ((v3 & 0x8000) == 0)
  {
LABEL_6:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_nVeryHighCatherine = *(from + 19);
  *&self->_has |= 0x8000u;
  v3 = *(from + 26);
  if ((v3 & 0x400) == 0)
  {
LABEL_7:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_nGoodCatherine = *(from + 14);
  *&self->_has |= 0x400u;
  v3 = *(from + 26);
  if ((v3 & 0x1000) == 0)
  {
LABEL_8:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_nInterpolatedCatherine = *(from + 16);
  *&self->_has |= 0x1000u;
  v3 = *(from + 26);
  if ((v3 & 0x4000) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_nSampleAndHoldCatherine = *(from + 18);
  *&self->_has |= 0x4000u;
  v3 = *(from + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_minGoodCatherine = *(from + 11);
  *&self->_has |= 0x80u;
  v3 = *(from + 26);
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_maxGoodCatherine = *(from + 8);
  *&self->_has |= 0x10u;
  v3 = *(from + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_meanCatherine = *(from + 9);
  *&self->_has |= 0x20u;
  v3 = *(from + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_meanGoodCatherine = *(from + 10);
  *&self->_has |= 0x40u;
  v3 = *(from + 26);
  if ((v3 & 2) == 0)
  {
LABEL_14:
    if ((v3 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_firstCatherine = *(from + 5);
  *&self->_has |= 2u;
  v3 = *(from + 26);
  if ((v3 & 4) == 0)
  {
LABEL_15:
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_firstCatherineStartTime = *(from + 6);
  *&self->_has |= 4u;
  v3 = *(from + 26);
  if ((v3 & 8) == 0)
  {
LABEL_16:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_longestDropout = *(from + 7);
  *&self->_has |= 8u;
  v3 = *(from + 26);
  if ((v3 & 0x100000) == 0)
  {
LABEL_17:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_totalDropoutTime = *(from + 24);
  *&self->_has |= 0x100000u;
  v3 = *(from + 26);
  if ((v3 & 0x200) == 0)
  {
LABEL_18:
    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_nDropout = *(from + 13);
  *&self->_has |= 0x200u;
  v3 = *(from + 26);
  if ((v3 & 1) == 0)
  {
LABEL_19:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_startTime = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 26);
  if ((v3 & 0x40000) == 0)
  {
LABEL_20:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_onsetReason = *(from + 22);
  *&self->_has |= 0x40000u;
  v3 = *(from + 26);
  if ((v3 & 0x20000) == 0)
  {
LABEL_21:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_onsetCatherine = *(from + 21);
  *&self->_has |= 0x20000u;
  v3 = *(from + 26);
  if ((v3 & 0x200000) == 0)
  {
LABEL_22:
    if ((v3 & 0x80000) == 0)
    {
      return;
    }

LABEL_45:
    self->_persistedMinHR = *(from + 23);
    *&self->_has |= 0x80000u;
    return;
  }

LABEL_44:
  self->_userMaxCatherine = *(from + 25);
  *&self->_has |= 0x200000u;
  if ((*(from + 26) & 0x80000) != 0)
  {
    goto LABEL_45;
  }
}

@end