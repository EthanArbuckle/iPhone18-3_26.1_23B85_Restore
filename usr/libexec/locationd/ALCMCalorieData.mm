@interface ALCMCalorieData
- (BOOL)isEqual:(id)a3;
- (id)activityTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)truthMetsSourceAsString:(int)a3;
- (id)userMetsSourceAsString:(int)a3;
- (int)StringAsActivityType:(id)a3;
- (int)StringAsTruthMetsSource:(id)a3;
- (int)StringAsUserMetsSource:(id)a3;
- (int)truthMetsSource;
- (int)userMetsSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMetsHR:(BOOL)a3;
- (void)setHasMetsWR:(BOOL)a3;
- (void)setHasTruthMetsSource:(BOOL)a3;
- (void)setHasUserMetsSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALCMCalorieData

- (id)activityTypeAsString:(int)a3
{
  if (a3 > 15029)
  {
    if (a3 > 15652)
    {
      if (a3 > 18224)
      {
        if (a3 <= 19149)
        {
          if (a3 > 19029)
          {
            if (a3 == 19030)
            {
              return @"kTypeIndoorSkatingSports";
            }

            if (a3 == 19090)
            {
              return @"kTypeCrossCountrySkiing";
            }
          }

          else
          {
            if (a3 == 18225)
            {
              return @"kTypePaddleSports";
            }

            if (a3 == 18240)
            {
              return @"kTypeSwimming";
            }
          }
        }

        else if (a3 <= 90120)
        {
          if (a3 == 19150)
          {
            return @"kTypeSummer";
          }

          if (a3 == 19160)
          {
            return @"kTypeSnowboarding";
          }
        }

        else
        {
          switch(a3)
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

      else if (a3 <= 15709)
      {
        if (a3 > 15669)
        {
          if (a3 == 15670)
          {
            return @"kTypeTaiChi";
          }

          if (a3 == 15675)
          {
            return @"kTypeTennis";
          }
        }

        else
        {
          if (a3 == 15653)
          {
            return @"kTypeRacquetball";
          }

          if (a3 == 15660)
          {
            return @"kTypeTableTennis";
          }
        }
      }

      else if (a3 <= 17149)
      {
        if (a3 == 15710)
        {
          return @"kTypeVolleyball";
        }

        if (a3 == 15733)
        {
          return @"kTypeTrackAndField";
        }
      }

      else
      {
        switch(a3)
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

    else if (a3 > 15349)
    {
      if (a3 <= 15591)
      {
        if (a3 > 15459)
        {
          if (a3 == 15460)
          {
            return @"kTypeLacrosse";
          }

          if (a3 == 15562)
          {
            return @"kTypeRugby";
          }
        }

        else
        {
          if (a3 == 15350)
          {
            return @"kTypeOutdoorHockey";
          }

          if (a3 == 15360)
          {
            return @"kTypeIndoorHockey";
          }
        }
      }

      else if (a3 <= 15619)
      {
        if (a3 == 15592)
        {
          return @"kTypeOutdoorSkatingSports";
        }

        if (a3 == 15610)
        {
          return @"kTypeOutdoorSoccer";
        }
      }

      else
      {
        switch(a3)
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

    else if (a3 <= 15149)
    {
      if (a3 > 15099)
      {
        if (a3 == 15100)
        {
          return @"kTypeBoxing";
        }

        if (a3 == 15110)
        {
          return @"kTypeKickboxing";
        }
      }

      else
      {
        if (a3 == 15030)
        {
          return @"kTypeBadminton";
        }

        if (a3 == 15055)
        {
          return @"kTypeBasketball";
        }
      }
    }

    else if (a3 <= 15239)
    {
      if (a3 == 15150)
      {
        return @"kTypeCricket";
      }

      if (a3 == 15230)
      {
        return @"kTypeAmericanFootball";
      }
    }

    else
    {
      switch(a3)
      {
        case 15240:
          return @"kTypeDiscSports";
        case 15255:
          return @"kTypeGolfing";
        case 15320:
          return @"kTypeHandball";
      }
    }

    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  if (a3 > 65)
  {
    if (a3 > 2067)
    {
      if (a3 <= 2149)
      {
        if (a3 > 2100)
        {
          if (a3 == 2101)
          {
            return @"kTypeCoolDown";
          }

          if (a3 == 2105)
          {
            return @"kTypePilates";
          }
        }

        else
        {
          if (a3 == 2068)
          {
            return @"kTypeJumpRope";
          }

          if (a3 == 2071)
          {
            return @"kTypeRowing";
          }
        }
      }

      else if (a3 <= 3015)
      {
        if (a3 == 2150)
        {
          return @"kTypeYoga";
        }

        if (a3 == 3015)
        {
          return @"kTypeDancing";
        }
      }

      else
      {
        switch(a3)
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

    else if (a3 <= 2021)
    {
      if (a3 > 2009)
      {
        if (a3 == 2010)
        {
          return @"kTypeStationaryCycling";
        }

        if (a3 == 2020)
        {
          return @"kTypeCalisthenics";
        }
      }

      else
      {
        if (a3 == 66)
        {
          return @"kTypePickleball";
        }

        if (a3 == 100)
        {
          return @"kTypeCyclingLeg";
        }
      }
    }

    else if (a3 <= 2047)
    {
      if (a3 == 2022)
      {
        return @"kTypeFunctionalStrength";
      }

      if (a3 == 2024)
      {
        return @"kTypeCoreTraining";
      }
    }

    else
    {
      switch(a3)
      {
        case 2048:
          return @"kTypeElliptical";
        case 2061:
          return @"kTypeCrossTraining";
        case 2065:
          return @"kTypeStairClimbing";
      }
    }

    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  if (a3 > 8)
  {
    if (a3 <= 51)
    {
      if (a3 > 10)
      {
        if (a3 == 11)
        {
          return @"kTypeInVehicleStatic";
        }

        if (a3 == 41)
        {
          return @"kTypeWalkingSlow";
        }

        return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
      }

      if (a3 == 9)
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
      if (a3 <= 62)
      {
        if (a3 == 52)
        {
          return @"kTypeVehicularInHand";
        }

        if (a3 == 56)
        {
          return @"kTypeDrivingOther";
        }

        return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
      }

      if (a3 == 63)
      {
        return @"kTypeMultiSportTransition";
      }

      else if (a3 == 64)
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
    if (a3 > 3)
    {
      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          return @"kTypeWalking";
        }

        else
        {
          return @"kTypeDriving";
        }
      }

      else if (a3 == 6)
      {
        return @"kTypeCycling";
      }

      else if (a3 == 7)
      {
        return @"kTypeSemiStationary";
      }

      else
      {
        return @"kTypeRunning";
      }
    }

    if (a3 <= 1)
    {
      if (!a3)
      {
        return @"kTypeUnknown";
      }

      if (a3 == 1)
      {
        return @"kTypeFrozen";
      }

      return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
    }

    if (a3 == 2)
    {
      return @"kTypeStatic";
    }

    else
    {
      return @"kTypeMoving";
    }
  }
}

- (int)StringAsActivityType:(id)a3
{
  if ([a3 isEqualToString:@"kTypeUnknown"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kTypeFrozen"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kTypeStatic"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kTypeMoving"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kTypeWalking"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"kTypeDriving"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"kTypeCycling"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"kTypeSemiStationary"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"kTypeRunning"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"kTypeMovingCoarse"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"kTypeInVehicleFrozen"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"kTypeInVehicleStatic"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"kTypeWalkingSlow"])
  {
    return 41;
  }

  if ([a3 isEqualToString:@"kTypeVehicularInHand"])
  {
    return 52;
  }

  if ([a3 isEqualToString:@"kTypeDrivingOther"])
  {
    return 56;
  }

  if ([a3 isEqualToString:@"kTypeCyclingLeg"])
  {
    return 100;
  }

  if ([a3 isEqualToString:@"kTypeStationaryCycling"])
  {
    return 2010;
  }

  if ([a3 isEqualToString:@"kTypeCalisthenics"])
  {
    return 2020;
  }

  if ([a3 isEqualToString:@"kTypeElliptical"])
  {
    return 2048;
  }

  if ([a3 isEqualToString:@"kTypeCrossTraining"])
  {
    return 2061;
  }

  if ([a3 isEqualToString:@"kTypeStairClimbing"])
  {
    return 2065;
  }

  if ([a3 isEqualToString:@"kTypeRowing"])
  {
    return 2071;
  }

  if ([a3 isEqualToString:@"kTypeYoga"])
  {
    return 2150;
  }

  if ([a3 isEqualToString:@"kTypeDancing"])
  {
    return 3015;
  }

  if ([a3 isEqualToString:@"kTypePushingWheelchair"])
  {
    return 11805;
  }

  if ([a3 isEqualToString:@"kTypeIndoorRunning"])
  {
    return 12150;
  }

  if ([a3 isEqualToString:@"kTypeGolfing"])
  {
    return 15255;
  }

  if ([a3 isEqualToString:@"kTypeIndoorWalking"])
  {
    return 17150;
  }

  if ([a3 isEqualToString:@"kTypeSwimming"])
  {
    return 18240;
  }

  if ([a3 isEqualToString:@"kTypeSummer"])
  {
    return 19150;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorWheelchair"])
  {
    return 90603;
  }

  if ([a3 isEqualToString:@"kTypeFunctionalStrength"])
  {
    return 2022;
  }

  if ([a3 isEqualToString:@"kTypeCoolDown"])
  {
    return 2101;
  }

  if ([a3 isEqualToString:@"kTypeCoreTraining"])
  {
    return 2024;
  }

  if ([a3 isEqualToString:@"kTypeTaiChi"])
  {
    return 15670;
  }

  if ([a3 isEqualToString:@"kTypePilates"])
  {
    return 2105;
  }

  if ([a3 isEqualToString:@"kTypeMultiSportTransition"])
  {
    return 63;
  }

  if ([a3 isEqualToString:@"kTypeScubaDiving"])
  {
    return 18200;
  }

  if ([a3 isEqualToString:@"kTypeKickboxing"])
  {
    return 15110;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorRowing"])
  {
    return 18070;
  }

  if ([a3 isEqualToString:@"kTypeCrossCountrySkiing"])
  {
    return 19090;
  }

  if ([a3 isEqualToString:@"kTypeSnowboarding"])
  {
    return 19160;
  }

  if ([a3 isEqualToString:@"kTypePaddleSports"])
  {
    return 18225;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorSoccer"])
  {
    return 15610;
  }

  if ([a3 isEqualToString:@"kTypeIndoorSoccer"])
  {
    return 64;
  }

  if ([a3 isEqualToString:@"kTypeAustralianFootball"])
  {
    return 65;
  }

  if ([a3 isEqualToString:@"kTypeAmericanFootball"])
  {
    return 15230;
  }

  if ([a3 isEqualToString:@"kTypeDiscSports"])
  {
    return 15240;
  }

  if ([a3 isEqualToString:@"kTypeRugby"])
  {
    return 15562;
  }

  if ([a3 isEqualToString:@"kTypeLacrosse"])
  {
    return 15460;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorSkatingSports"])
  {
    return 15592;
  }

  if ([a3 isEqualToString:@"kTypeIndoorSkatingSports"])
  {
    return 19030;
  }

  if ([a3 isEqualToString:@"kTypeIndoorHockey"])
  {
    return 15360;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorHockey"])
  {
    return 15350;
  }

  if ([a3 isEqualToString:@"kTypeBasketball"])
  {
    return 15055;
  }

  if ([a3 isEqualToString:@"kTypeTennis"])
  {
    return 15675;
  }

  if ([a3 isEqualToString:@"kTypeBadminton"])
  {
    return 15030;
  }

  if ([a3 isEqualToString:@"kTypeRacquetball"])
  {
    return 15653;
  }

  if ([a3 isEqualToString:@"kTypePickleball"])
  {
    return 66;
  }

  if ([a3 isEqualToString:@"kTypeVolleyball"])
  {
    return 15710;
  }

  if ([a3 isEqualToString:@"kTypeSquash"])
  {
    return 15652;
  }

  if ([a3 isEqualToString:@"kTypeHandball"])
  {
    return 15320;
  }

  if ([a3 isEqualToString:@"kTypeTrackAndField"])
  {
    return 15733;
  }

  if ([a3 isEqualToString:@"kTypeSoftball"])
  {
    return 15620;
  }

  if ([a3 isEqualToString:@"kTypeBaseball"])
  {
    return 15621;
  }

  if ([a3 isEqualToString:@"kTypeCricket"])
  {
    return 15150;
  }

  if ([a3 isEqualToString:@"kTypeTableTennis"])
  {
    return 15660;
  }

  if ([a3 isEqualToString:@"kTypeJumpRope"])
  {
    return 2068;
  }

  if ([a3 isEqualToString:@"kTypeBoxing"])
  {
    return 15100;
  }

  if ([a3 isEqualToString:@"kTypeStepTraining"])
  {
    return 3016;
  }

  if ([a3 isEqualToString:@"kTypeIndoorHandCycling"])
  {
    return 90122;
  }

  if ([a3 isEqualToString:@"kTypeOutdoorHandCycling"])
  {
    return 90121;
  }

  return 0;
}

- (int)userMetsSource
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_userMetsSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUserMetsSource:(BOOL)a3
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

- (id)userMetsSourceAsString:(int)a3
{
  if (a3 >= 5)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_10246F0F8[a3];
  }
}

- (int)StringAsUserMetsSource:(id)a3
{
  if ([a3 isEqualToString:@"kWorkRate"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kHeartRate"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kCalibratedWorkRate"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kDefaultValue"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kFitnessMachine"])
  {
    return 4;
  }

  return 0;
}

- (int)truthMetsSource
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_truthMetsSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTruthMetsSource:(BOOL)a3
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

- (id)truthMetsSourceAsString:(int)a3
{
  if (a3 >= 5)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_10246F0F8[a3];
  }
}

- (int)StringAsTruthMetsSource:(id)a3
{
  if ([a3 isEqualToString:@"kWorkRate"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kHeartRate"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kCalibratedWorkRate"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kDefaultValue"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kFitnessMachine"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasMetsHR:(BOOL)a3
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

- (void)setHasMetsWR:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCMCalorieData;
  return [NSString stringWithFormat:@"%@ %@", [(ALCMCalorieData *)&v3 description], [(ALCMCalorieData *)self dictionaryRepresentation]];
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
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isStanding), @"isStanding"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_userMets), @"userMets"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_truthMets), @"truthMets"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    userMetsSource = self->_userMetsSource;
    if (userMetsSource >= 5)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_userMetsSource];
    }

    else
    {
      v10 = off_10246F0F8[userMetsSource];
    }

    [v3 setObject:v10 forKey:@"userMetsSource"];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_174:
      if ((has & 2) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_187;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_174;
  }

  truthMetsSource = self->_truthMetsSource;
  if (truthMetsSource >= 5)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_truthMetsSource];
  }

  else
  {
    v12 = off_10246F0F8[truthMetsSource];
  }

  [v3 setObject:v12 forKey:@"truthMetsSource"];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_175:
    if ((has & 4) == 0)
    {
      goto LABEL_176;
    }

LABEL_188:
    *&v6 = self->_metsWR;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"metsWR"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_177;
  }

LABEL_187:
  *&v6 = self->_metsHR;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"metsHR"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_188;
  }

LABEL_176:
  if (has)
  {
LABEL_177:
    *&v6 = self->_metsFM;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"metsFM"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_11:

  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_activityType;
  *(a3 + 48) = self->_isStanding;
  *(a3 + 2) = *&self->_userMets;
  *(a3 + 1) = *&self->_truthMets;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 11) = self->_userMetsSource;
    *(a3 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 10) = self->_truthMetsSource;
  *(a3 + 52) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a3 + 8) = LODWORD(self->_metsHR);
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_11:
    *(a3 + 7) = LODWORD(self->_metsFM);
    *(a3 + 52) |= 1u;
    return;
  }

LABEL_10:
  *(a3 + 9) = LODWORD(self->_metsWR);
  *(a3 + 52) |= 4u;
  if (*&self->_has)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 6) = self->_activityType;
  *(result + 48) = self->_isStanding;
  *(result + 2) = *&self->_userMets;
  *(result + 1) = *&self->_truthMets;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 11) = self->_userMetsSource;
    *(result + 52) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_truthMetsSource;
  *(result + 52) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 8) = LODWORD(self->_metsHR);
  *(result + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 9) = LODWORD(self->_metsWR);
  *(result + 52) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 7) = LODWORD(self->_metsFM);
  *(result + 52) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (self->_activityType != *(a3 + 6))
  {
    goto LABEL_33;
  }

  if (self->_isStanding)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  if (*(a3 + 48))
  {
LABEL_33:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_7:
  if (self->_userMets != *(a3 + 2) || self->_truthMets != *(a3 + 1))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(a3 + 52) & 0x10) == 0 || self->_userMetsSource != *(a3 + 11))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 52) & 0x10) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 52) & 8) == 0 || self->_truthMetsSource != *(a3 + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 52) & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 52) & 2) == 0 || self->_metsHR != *(a3 + 8))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 52) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 52) & 4) == 0 || self->_metsWR != *(a3 + 9))
    {
      goto LABEL_33;
    }
  }

  else if ((*(a3 + 52) & 4) != 0)
  {
    goto LABEL_33;
  }

  LOBYTE(v5) = (*(a3 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(a3 + 52) & 1) == 0 || self->_metsFM != *(a3 + 7))
    {
      goto LABEL_33;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  userMets = self->_userMets;
  if (userMets < 0.0)
  {
    userMets = -userMets;
  }

  *v3.i64 = floor(userMets + 0.5);
  v6 = (userMets - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  v9 = vbslq_s8(v8, v4, v3);
  v10 = 2654435761u * *v9.i64;
  v11 = v10 + v6;
  if (v6 <= 0.0)
  {
    v11 = 2654435761u * *v9.i64;
  }

  v12 = v10 - fabs(v6);
  if (v6 >= 0.0)
  {
    v12 = v11;
  }

  truthMets = self->_truthMets;
  if (truthMets < 0.0)
  {
    truthMets = -truthMets;
  }

  *v2.i64 = floor(truthMets + 0.5);
  v14 = (truthMets - *v2.i64) * 1.84467441e19;
  *v9.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v15 = vbslq_s8(v8, v9, v2);
  v16 = 2654435761u * *v15.i64;
  v17 = v16 + v14;
  if (v14 <= 0.0)
  {
    v17 = 2654435761u * *v15.i64;
  }

  *v15.i64 = fabs(v14);
  v18 = v16 - *v15.i64;
  if (v14 >= 0.0)
  {
    v18 = v17;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v19 = 2654435761 * self->_userMetsSource;
  }

  else
  {
    v19 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v20 = 2654435761 * self->_truthMetsSource;
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    metsHR = self->_metsHR;
    if (metsHR < 0.0)
    {
      metsHR = -metsHR;
    }

    *v15.i32 = floorf(metsHR + 0.5);
    v23 = (metsHR - *v15.i32) * 1.8447e19;
    *v9.i32 = *v15.i32 - (truncf(*v15.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v15 = vbslq_s8(v24, v9, v15);
    v21 = 2654435761u * *v15.i32;
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

  isStanding = self->_isStanding;
  if ((*&self->_has & 4) != 0)
  {
    metsWR = self->_metsWR;
    if (metsWR < 0.0)
    {
      metsWR = -metsWR;
    }

    *v15.i32 = floorf(metsWR + 0.5);
    v28 = (metsWR - *v15.i32) * 1.8447e19;
    *v9.i32 = *v15.i32 - (truncf(*v15.i32 * 5.421e-20) * 1.8447e19);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v15 = vbslq_s8(v29, v9, v15);
    v26 = 2654435761u * *v15.i32;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabsf(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  activityType = self->_activityType;
  if (*&self->_has)
  {
    metsFM = self->_metsFM;
    if (metsFM < 0.0)
    {
      metsFM = -metsFM;
    }

    *v15.i32 = floorf(metsFM + 0.5);
    v33 = (metsFM - *v15.i32) * 1.8447e19;
    *v9.i32 = *v15.i32 - (truncf(*v15.i32 * 5.421e-20) * 1.8447e19);
    v34.i64[0] = 0x8000000080000000;
    v34.i64[1] = 0x8000000080000000;
    v15.i32[0] = vbslq_s8(v34, v9, v15).i32[0];
    v35 = 2654435761u * *v15.i32;
    v36 = v35 + v33;
    if (v33 <= 0.0)
    {
      v36 = 2654435761u * *v15.i32;
    }

    v31 = v35 - fabsf(v33);
    if (v33 >= 0.0)
    {
      v31 = v36;
    }
  }

  else
  {
    v31 = 0;
  }

  return (2654435761 * isStanding) ^ (2654435761 * activityType) ^ v12 ^ v18 ^ v19 ^ v20 ^ v21 ^ v26 ^ v31;
}

- (void)mergeFrom:(id)a3
{
  self->_activityType = *(a3 + 6);
  self->_isStanding = *(a3 + 48);
  self->_userMets = *(a3 + 2);
  self->_truthMets = *(a3 + 1);
  v3 = *(a3 + 52);
  if ((v3 & 0x10) != 0)
  {
    self->_userMetsSource = *(a3 + 11);
    *&self->_has |= 0x10u;
    v3 = *(a3 + 52);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a3 + 52) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_truthMetsSource = *(a3 + 10);
  *&self->_has |= 8u;
  v3 = *(a3 + 52);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_metsHR = *(a3 + 8);
  *&self->_has |= 2u;
  v3 = *(a3 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_11:
    self->_metsFM = *(a3 + 7);
    *&self->_has |= 1u;
    return;
  }

LABEL_10:
  self->_metsWR = *(a3 + 9);
  *&self->_has |= 4u;
  if (*(a3 + 52))
  {
    goto LABEL_11;
  }
}

@end