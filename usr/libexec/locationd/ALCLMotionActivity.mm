@interface ALCLMotionActivity
- (BOOL)isEqual:(id)equal;
- (id)confidenceAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exitStateAsString:(int)string;
- (id)mountedConfidenceAsString:(int)string;
- (id)mountedStateAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsConfidence:(id)confidence;
- (int)StringAsExitState:(id)state;
- (int)StringAsMountedConfidence:(id)confidence;
- (int)StringAsMountedState:(id)state;
- (int)StringAsType:(id)type;
- (int)confidence;
- (int)exitState;
- (int)mountedConfidence;
- (int)mountedState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfidence:(BOOL)confidence;
- (void)setHasExitState:(BOOL)state;
- (void)setHasIsStanding:(BOOL)standing;
- (void)setHasIsVehicleConnected:(BOOL)connected;
- (void)setHasMountedConfidence:(BOOL)confidence;
- (void)setHasMountedState:(BOOL)state;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasTilt:(BOOL)tilt;
- (void)writeTo:(id)to;
@end

@implementation ALCLMotionActivity

- (id)typeAsString:(int)string
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

- (int)StringAsType:(id)type
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

- (int)confidence
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_confidence;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)confidenceAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024573E0 + string);
  }
}

- (int)StringAsConfidence:(id)confidence
{
  if ([confidence isEqualToString:@"kConfidenceLow"])
  {
    return 0;
  }

  if ([confidence isEqualToString:@"kConfidenceMedium"])
  {
    return 1;
  }

  if ([confidence isEqualToString:@"kConfidenceHigh"])
  {
    return 2;
  }

  return 0;
}

- (int)mountedState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_mountedState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMountedState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)mountedStateAsString:(int)string
{
  if (!string)
  {
    return @"kNotMounted";
  }

  if (string == 1)
  {
    return @"kMounted";
  }

  return [NSString stringWithFormat:@"(unknown: %i)", *&string];
}

- (int)StringAsMountedState:(id)state
{
  if ([state isEqualToString:@"kNotMounted"])
  {
    return 0;
  }

  else
  {
    return [state isEqualToString:@"kMounted"];
  }
}

- (int)mountedConfidence
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_mountedConfidence;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMountedConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)mountedConfidenceAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024573E0 + string);
  }
}

- (int)StringAsMountedConfidence:(id)confidence
{
  if ([confidence isEqualToString:@"kConfidenceLow"])
  {
    return 0;
  }

  if ([confidence isEqualToString:@"kConfidenceMedium"])
  {
    return 1;
  }

  if ([confidence isEqualToString:@"kConfidenceHigh"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasIsStanding:(BOOL)standing
{
  if (standing)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTilt:(BOOL)tilt
{
  if (tilt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)exitState
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_exitState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasExitState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)exitStateAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024573F8 + string);
  }
}

- (int)StringAsExitState:(id)state
{
  if ([state isEqualToString:@"kNoDetection"])
  {
    return 0;
  }

  if ([state isEqualToString:@"kExitPreheat"])
  {
    return 1;
  }

  if ([state isEqualToString:@"kExitDetected"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsVehicleConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLMotionActivity;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLMotionActivity *)&v3 description], [(ALCLMotionActivity *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  type = self->_type;
  if (type > 15029)
  {
    if (type > 15652)
    {
      if (type > 18224)
      {
        if (type <= 19149)
        {
          if (type > 19029)
          {
            if (type == 19030)
            {
              v5 = @"kTypeIndoorSkatingSports";
              goto LABEL_172;
            }

            if (type == 19090)
            {
              v5 = @"kTypeCrossCountrySkiing";
              goto LABEL_172;
            }
          }

          else
          {
            if (type == 18225)
            {
              v5 = @"kTypePaddleSports";
              goto LABEL_172;
            }

            if (type == 18240)
            {
              v5 = @"kTypeSwimming";
              goto LABEL_172;
            }
          }
        }

        else if (type <= 90120)
        {
          if (type == 19150)
          {
            v5 = @"kTypeSummer";
            goto LABEL_172;
          }

          if (type == 19160)
          {
            v5 = @"kTypeSnowboarding";
            goto LABEL_172;
          }
        }

        else
        {
          switch(type)
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

      else if (type <= 15709)
      {
        if (type > 15669)
        {
          if (type == 15670)
          {
            v5 = @"kTypeTaiChi";
            goto LABEL_172;
          }

          if (type == 15675)
          {
            v5 = @"kTypeTennis";
            goto LABEL_172;
          }
        }

        else
        {
          if (type == 15653)
          {
            v5 = @"kTypeRacquetball";
            goto LABEL_172;
          }

          if (type == 15660)
          {
            v5 = @"kTypeTableTennis";
            goto LABEL_172;
          }
        }
      }

      else if (type <= 17149)
      {
        if (type == 15710)
        {
          v5 = @"kTypeVolleyball";
          goto LABEL_172;
        }

        if (type == 15733)
        {
          v5 = @"kTypeTrackAndField";
          goto LABEL_172;
        }
      }

      else
      {
        switch(type)
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

    else if (type > 15349)
    {
      if (type <= 15591)
      {
        if (type > 15459)
        {
          if (type == 15460)
          {
            v5 = @"kTypeLacrosse";
            goto LABEL_172;
          }

          if (type == 15562)
          {
            v5 = @"kTypeRugby";
            goto LABEL_172;
          }
        }

        else
        {
          if (type == 15350)
          {
            v5 = @"kTypeOutdoorHockey";
            goto LABEL_172;
          }

          if (type == 15360)
          {
            v5 = @"kTypeIndoorHockey";
            goto LABEL_172;
          }
        }
      }

      else if (type <= 15619)
      {
        if (type == 15592)
        {
          v5 = @"kTypeOutdoorSkatingSports";
          goto LABEL_172;
        }

        if (type == 15610)
        {
          v5 = @"kTypeOutdoorSoccer";
          goto LABEL_172;
        }
      }

      else
      {
        switch(type)
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

    else if (type <= 15149)
    {
      if (type > 15099)
      {
        if (type == 15100)
        {
          v5 = @"kTypeBoxing";
          goto LABEL_172;
        }

        if (type == 15110)
        {
          v5 = @"kTypeKickboxing";
          goto LABEL_172;
        }
      }

      else
      {
        if (type == 15030)
        {
          v5 = @"kTypeBadminton";
          goto LABEL_172;
        }

        if (type == 15055)
        {
          v5 = @"kTypeBasketball";
          goto LABEL_172;
        }
      }
    }

    else if (type <= 15239)
    {
      if (type == 15150)
      {
        v5 = @"kTypeCricket";
        goto LABEL_172;
      }

      if (type == 15230)
      {
        v5 = @"kTypeAmericanFootball";
        goto LABEL_172;
      }
    }

    else
    {
      switch(type)
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

  if (type > 65)
  {
    if (type > 2067)
    {
      if (type <= 2149)
      {
        if (type > 2100)
        {
          if (type == 2101)
          {
            v5 = @"kTypeCoolDown";
            goto LABEL_172;
          }

          if (type == 2105)
          {
            v5 = @"kTypePilates";
            goto LABEL_172;
          }
        }

        else
        {
          if (type == 2068)
          {
            v5 = @"kTypeJumpRope";
            goto LABEL_172;
          }

          if (type == 2071)
          {
            v5 = @"kTypeRowing";
            goto LABEL_172;
          }
        }
      }

      else if (type <= 3015)
      {
        if (type == 2150)
        {
          v5 = @"kTypeYoga";
          goto LABEL_172;
        }

        if (type == 3015)
        {
          v5 = @"kTypeDancing";
          goto LABEL_172;
        }
      }

      else
      {
        switch(type)
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

    else if (type <= 2021)
    {
      if (type > 2009)
      {
        if (type == 2010)
        {
          v5 = @"kTypeStationaryCycling";
          goto LABEL_172;
        }

        if (type == 2020)
        {
          v5 = @"kTypeCalisthenics";
          goto LABEL_172;
        }
      }

      else
      {
        if (type == 66)
        {
          v5 = @"kTypePickleball";
          goto LABEL_172;
        }

        if (type == 100)
        {
          v5 = @"kTypeCyclingLeg";
          goto LABEL_172;
        }
      }
    }

    else if (type <= 2047)
    {
      if (type == 2022)
      {
        v5 = @"kTypeFunctionalStrength";
        goto LABEL_172;
      }

      if (type == 2024)
      {
        v5 = @"kTypeCoreTraining";
        goto LABEL_172;
      }
    }

    else
    {
      switch(type)
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

  if (type > 8)
  {
    if (type <= 51)
    {
      if (type > 10)
      {
        if (type == 11)
        {
          v5 = @"kTypeInVehicleStatic";
          goto LABEL_172;
        }

        if (type == 41)
        {
          v5 = @"kTypeWalkingSlow";
          goto LABEL_172;
        }

        goto LABEL_171;
      }

      if (type == 9)
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
      if (type <= 62)
      {
        if (type == 52)
        {
          v5 = @"kTypeVehicularInHand";
          goto LABEL_172;
        }

        if (type == 56)
        {
          v5 = @"kTypeDrivingOther";
          goto LABEL_172;
        }

        goto LABEL_171;
      }

      if (type == 63)
      {
        v5 = @"kTypeMultiSportTransition";
      }

      else if (type == 64)
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
    if (type > 3)
    {
      if (type <= 5)
      {
        if (type == 4)
        {
          v5 = @"kTypeWalking";
        }

        else
        {
          v5 = @"kTypeDriving";
        }
      }

      else if (type == 6)
      {
        v5 = @"kTypeCycling";
      }

      else if (type == 7)
      {
        v5 = @"kTypeSemiStationary";
      }

      else
      {
        v5 = @"kTypeRunning";
      }

      goto LABEL_172;
    }

    if (type <= 1)
    {
      if (!type)
      {
        v5 = @"kTypeUnknown";
        goto LABEL_172;
      }

      if (type == 1)
      {
        v5 = @"kTypeFrozen";
        goto LABEL_172;
      }

LABEL_171:
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
      goto LABEL_172;
    }

    if (type == 2)
    {
      v5 = @"kTypeStatic";
    }

    else
    {
      v5 = @"kTypeMoving";
    }
  }

LABEL_172:
  [v3 setObject:v5 forKey:@"type"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    confidence = self->_confidence;
    if (confidence >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_confidence];
    }

    else
    {
      v9 = *(&off_1024573E0 + confidence);
    }

    [v3 setObject:v9 forKey:@"confidence"];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_174:
      if ((has & 0x10) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_186;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_174;
  }

  mountedState = self->_mountedState;
  if (mountedState)
  {
    if (mountedState == 1)
    {
      v11 = @"kMounted";
    }

    else
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_mountedState];
    }
  }

  else
  {
    v11 = @"kNotMounted";
  }

  [v3 setObject:v11 forKey:@"mountedState"];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
LABEL_186:
    mountedConfidence = self->_mountedConfidence;
    if (mountedConfidence >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_mountedConfidence];
    }

    else
    {
      v13 = *(&off_1024573E0 + mountedConfidence);
    }

    [v3 setObject:v13 forKey:@"mountedConfidence"];
    has = self->_has;
  }

LABEL_190:
  if ((has & 0x80) != 0)
  {
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isStanding), @"isStanding"}];
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    *&v6 = self->_tilt;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"tilt"}];
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    exitState = self->_exitState;
    if (exitState >= 3)
    {
      v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_exitState];
    }

    else
    {
      v17 = *(&off_1024573F8 + exitState);
    }

    [v3 setObject:v17 forKey:@"exitState"];
    v14 = self->_has;
    if ((v14 & 1) == 0)
    {
LABEL_196:
      if ((v14 & 2) == 0)
      {
        goto LABEL_197;
      }

LABEL_205:
      [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_startTime), @"startTime"}];
      if ((*&self->_has & 0x100) == 0)
      {
        return v3;
      }

      goto LABEL_198;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_196;
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_estExitTime), @"estExitTime"}];
  v14 = self->_has;
  if ((v14 & 2) != 0)
  {
    goto LABEL_205;
  }

LABEL_197:
  if ((v14 & 0x100) != 0)
  {
LABEL_198:
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isVehicleConnected), @"isVehicleConnected"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    PBDataWriterWriteFloatField();
  }

LABEL_7:
  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    v5 = self->_has;
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      PBDataWriterWriteDoubleField();
      if ((*&self->_has & 0x100) == 0)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v5 & 0x100) == 0)
  {
    return;
  }

LABEL_20:

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  *(to + 13) = self->_type;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 8) = self->_confidence;
    *(to + 30) |= 4u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 11) = self->_mountedState;
  *(to + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 10) = self->_mountedConfidence;
  *(to + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  *(to + 56) = self->_isStanding;
  *(to + 30) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(to + 12) = LODWORD(self->_tilt);
    *(to + 30) |= 0x40u;
  }

LABEL_7:
  *(to + 3) = *&self->_timestamp;
  v4 = self->_has;
  if ((v4 & 8) != 0)
  {
    *(to + 9) = self->_exitState;
    *(to + 30) |= 8u;
    v4 = self->_has;
    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v4 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(to + 1) = *&self->_estExitTime;
  *(to + 30) |= 1u;
  v4 = self->_has;
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

LABEL_20:
    *(to + 57) = self->_isVehicleConnected;
    *(to + 30) |= 0x100u;
    return;
  }

LABEL_19:
  *(to + 2) = *&self->_startTime;
  *(to + 30) |= 2u;
  if ((*&self->_has & 0x100) != 0)
  {
    goto LABEL_20;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 13) = self->_type;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 8) = self->_confidence;
    *(result + 30) |= 4u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 11) = self->_mountedState;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 10) = self->_mountedConfidence;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  *(result + 56) = self->_isStanding;
  *(result + 30) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(result + 12) = LODWORD(self->_tilt);
    *(result + 30) |= 0x40u;
  }

LABEL_7:
  *(result + 3) = *&self->_timestamp;
  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(result + 9) = self->_exitState;
    *(result + 30) |= 8u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(result + 1) = *&self->_estExitTime;
  *(result + 30) |= 1u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(result + 2) = *&self->_startTime;
  *(result + 30) |= 2u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 57) = self->_isVehicleConnected;
  *(result + 30) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (self->_type != *(equal + 13))
  {
    goto LABEL_49;
  }

  has = self->_has;
  v7 = *(equal + 30);
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_confidence != *(equal + 8))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_mountedState != *(equal + 11))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_mountedConfidence != *(equal + 10))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    if (self->_isStanding)
    {
      if ((*(equal + 56) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equal + 56))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_tilt != *(equal + 12))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  if (self->_timestamp != *(equal + 3))
  {
LABEL_49:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_exitState != *(equal + 9))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_49;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_estExitTime != *(equal + 1))
    {
      goto LABEL_49;
    }
  }

  else if (v7)
  {
    goto LABEL_49;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_startTime != *(equal + 2))
    {
      goto LABEL_49;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_49;
  }

  LOBYTE(v5) = (v7 & 0x100) == 0;
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equal + 30) & 0x100) == 0)
    {
      goto LABEL_49;
    }

    if (self->_isVehicleConnected)
    {
      if ((*(equal + 57) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equal + 57))
    {
      goto LABEL_49;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = 2654435761 * self->_confidence;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_mountedState;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_mountedConfidence;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v8 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v8 = 2654435761 * self->_isStanding;
  if ((has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  tilt = self->_tilt;
  if (tilt < 0.0)
  {
    tilt = -tilt;
  }

  *v2.i32 = floorf(tilt + 0.5);
  v10 = (tilt - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v11, v3, v2);
  v12 = 2654435761u * *v2.i32;
  v13 = v12 + v10;
  if (v10 <= 0.0)
  {
    v13 = 2654435761u * *v2.i32;
  }

  v14 = v12 - fabsf(v10);
  if (v10 >= 0.0)
  {
    v14 = v13;
  }

LABEL_18:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v16 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vbslq_s8(vnegq_f64(v17), v3, v2);
  v19 = 2654435761u * *v18.i64;
  v20 = v19 + v16;
  if (v16 <= 0.0)
  {
    v20 = 2654435761u * *v18.i64;
  }

  v21 = v19 - fabs(v16);
  if (v16 >= 0.0)
  {
    v21 = v20;
  }

  if ((has & 8) != 0)
  {
    v22 = 2654435761 * self->_exitState;
  }

  else
  {
    v22 = 0;
  }

  if (has)
  {
    estExitTime = self->_estExitTime;
    if (estExitTime < 0.0)
    {
      estExitTime = -estExitTime;
    }

    *v18.i64 = floor(estExitTime + 0.5);
    v25 = (estExitTime - *v18.i64) * 1.84467441e19;
    *v3.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v18 = vbslq_s8(vnegq_f64(v26), v3, v18);
    v23 = 2654435761u * *v18.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((has & 2) != 0)
  {
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v18.i64 = floor(startTime + 0.5);
    v29 = (startTime - *v18.i64) * 1.84467441e19;
    *v3.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v27 = 2654435761u * *vbslq_s8(vnegq_f64(v30), v3, v18).i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v31 = 2654435761 * self->_isVehicleConnected;
  }

  else
  {
    v31 = 0;
  }

  return v5 ^ v6 ^ v7 ^ v8 ^ v14 ^ (2654435761 * self->_type) ^ v22 ^ v23 ^ v27 ^ v31 ^ v21;
}

- (void)mergeFrom:(id)from
{
  self->_type = *(from + 13);
  v3 = *(from + 30);
  if ((v3 & 4) != 0)
  {
    self->_confidence = *(from + 8);
    *&self->_has |= 4u;
    v3 = *(from + 30);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_mountedState = *(from + 11);
  *&self->_has |= 0x20u;
  v3 = *(from + 30);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_mountedConfidence = *(from + 10);
  *&self->_has |= 0x10u;
  v3 = *(from + 30);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  self->_isStanding = *(from + 56);
  *&self->_has |= 0x80u;
  if ((*(from + 30) & 0x40) != 0)
  {
LABEL_6:
    self->_tilt = *(from + 12);
    *&self->_has |= 0x40u;
  }

LABEL_7:
  self->_timestamp = *(from + 3);
  v4 = *(from + 30);
  if ((v4 & 8) != 0)
  {
    self->_exitState = *(from + 9);
    *&self->_has |= 8u;
    v4 = *(from + 30);
    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v4 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_estExitTime = *(from + 1);
  *&self->_has |= 1u;
  v4 = *(from + 30);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

LABEL_20:
    self->_isVehicleConnected = *(from + 57);
    *&self->_has |= 0x100u;
    return;
  }

LABEL_19:
  self->_startTime = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 30) & 0x100) != 0)
  {
    goto LABEL_20;
  }
}

@end