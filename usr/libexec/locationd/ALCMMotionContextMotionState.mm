@interface ALCMMotionContextMotionState
- (BOOL)isEqual:(id)equal;
- (id)confidenceAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exitStateAsString:(int)string;
- (id)mountedAsString:(int)string;
- (id)mountedConfidenceAsString:(int)string;
- (id)turnAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsConfidence:(id)confidence;
- (int)StringAsExitState:(id)state;
- (int)StringAsMounted:(id)mounted;
- (int)StringAsMountedConfidence:(id)confidence;
- (int)StringAsTurn:(id)turn;
- (int)StringAsType:(id)type;
- (int)exitState;
- (int)mounted;
- (int)mountedConfidence;
- (int)turn;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExitState:(BOOL)state;
- (void)setHasIsMoving:(BOOL)moving;
- (void)setHasIsVehicular:(BOOL)vehicular;
- (void)setHasMounted:(BOOL)mounted;
- (void)setHasMountedConfidence:(BOOL)confidence;
- (void)setHasTurn:(BOOL)turn;
- (void)writeTo:(id)to;
@end

@implementation ALCMMotionContextMotionState

- (id)typeAsString:(int)string
{
  if (string >= 0x4000)
  {
    if (string < 462848)
    {
      if (string < 196608)
      {
        switch(string)
        {
          case 16384:
            return @"kTypeDrivingMounted";
          case 65664:
            return @"kTypeCyclingSeat";
          case 131200:
            return @"kTypeCyclingChassis";
        }
      }

      else if (string > 327807)
      {
        if (string == 327808)
        {
          return @"kTypeCyclingTorso";
        }

        if (string == 397312)
        {
          return @"kTypeDrivingSeat";
        }
      }

      else
      {
        if (string == 196608)
        {
          return @"kTypeCyclingLeg";
        }

        if (string == 262272)
        {
          return @"kTypeCyclingArm";
        }
      }
    }

    else if (string > 720911)
    {
      if (string > 851979)
      {
        if (string == 851980)
        {
          return @"kTypeSemiStationaryPocket";
        }

        if (string == 917516)
        {
          return @"kTypeSemiStationaryArm";
        }
      }

      else
      {
        if (string == 720912)
        {
          return @"kTypeWalkingLeg";
        }

        if (string == 786448)
        {
          return @"kTypeWalkingArm";
        }
      }
    }

    else if (string > 589887)
    {
      if (string == 589888)
      {
        return @"kTypeRunningLeg";
      }

      if (string == 655424)
      {
        return @"kTypeRunningArm";
      }
    }

    else
    {
      if (string == 462848)
      {
        return @"kTypeDrivingArm";
      }

      if (string == 528384)
      {
        return @"kTypeDrivingStowed";
      }
    }
  }

  else if (string <= 63)
  {
    if (string <= 3)
    {
      switch(string)
      {
        case 0:
          return @"kTypeUnknown";
        case 1:
          return @"kTypeFrozen";
        case 2:
          return @"kTypeStatic";
      }
    }

    else if (string > 15)
    {
      if (string == 16)
      {
        return @"kTypeWalking";
      }

      if (string == 32)
      {
        return @"kTypeWalkingSlow";
      }
    }

    else
    {
      if (string == 4)
      {
        return @"kTypeMoving";
      }

      if (string == 12)
      {
        return @"kTypeSemiStationary";
      }
    }
  }

  else if (string > 4095)
  {
    if (string >= 0x2000)
    {
      if (string == 0x2000)
      {
        return @"kTypeVehicularInHand";
      }

      if (string == 12288)
      {
        return @"kTypeDrivingOther";
      }
    }

    else
    {
      if (string == 4096)
      {
        return @"kTypeDriving";
      }

      if (string == 4128)
      {
        return @"kTypeDrivingOrWalkingSlow";
      }
    }
  }

  else if (string > 255)
  {
    if (string == 256)
    {
      return @"kTypeInVehicleFrozen";
    }

    if (string == 512)
    {
      return @"kTypeInVehicleStatic";
    }
  }

  else
  {
    if (string == 64)
    {
      return @"kTypeRunning";
    }

    if (string == 128)
    {
      return @"kTypeCycling";
    }
  }

  return [NSString stringWithFormat:@"(unknown: %i)", *&string];
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
    return 4;
  }

  if ([type isEqualToString:@"kTypeSemiStationary"])
  {
    return 12;
  }

  if ([type isEqualToString:@"kTypeWalking"])
  {
    return 16;
  }

  if ([type isEqualToString:@"kTypeWalkingSlow"])
  {
    return 32;
  }

  if ([type isEqualToString:@"kTypeRunning"])
  {
    return 64;
  }

  if ([type isEqualToString:@"kTypeCycling"])
  {
    return 128;
  }

  if ([type isEqualToString:@"kTypeInVehicleFrozen"])
  {
    return 256;
  }

  if ([type isEqualToString:@"kTypeInVehicleStatic"])
  {
    return 512;
  }

  if ([type isEqualToString:@"kTypeDriving"])
  {
    return 4096;
  }

  if ([type isEqualToString:@"kTypeVehicularInHand"])
  {
    return 0x2000;
  }

  if ([type isEqualToString:@"kTypeDrivingOther"])
  {
    return 12288;
  }

  if ([type isEqualToString:@"kTypeDrivingMounted"])
  {
    return 0x4000;
  }

  if ([type isEqualToString:@"kTypeDrivingOrWalkingSlow"])
  {
    return 4128;
  }

  v5 = [type isEqualToString:@"kTypeCyclingSeat"];
  result = 65664;
  if ((v5 & 1) == 0)
  {
    if ([type isEqualToString:@"kTypeCyclingChassis"])
    {
      v6 = 65664;
      return v6 + 0x10000;
    }

    if ([type isEqualToString:@"kTypeCyclingLeg"])
    {
      return 196608;
    }

    else if ([type isEqualToString:@"kTypeCyclingArm"])
    {
      return 262272;
    }

    else if ([type isEqualToString:@"kTypeCyclingTorso"])
    {
      return 327808;
    }

    else
    {
      v7 = [type isEqualToString:@"kTypeDrivingSeat"];
      result = 397312;
      if ((v7 & 1) == 0)
      {
        if ([type isEqualToString:@"kTypeDrivingArm"])
        {
          v6 = 397312;
          return v6 + 0x10000;
        }

        if ([type isEqualToString:@"kTypeDrivingStowed"])
        {
          return 528384;
        }

        else
        {
          v8 = [type isEqualToString:@"kTypeRunningLeg"];
          result = 589888;
          if ((v8 & 1) == 0)
          {
            if ([type isEqualToString:@"kTypeRunningArm"])
            {
              v6 = 589888;
              return v6 + 0x10000;
            }

            v9 = [type isEqualToString:@"kTypeWalkingLeg"];
            result = 720912;
            if ((v9 & 1) == 0)
            {
              if ([type isEqualToString:@"kTypeWalkingArm"])
              {
                v6 = 720912;
                return v6 + 0x10000;
              }

              v10 = [type isEqualToString:@"kTypeSemiStationaryPocket"];
              result = 851980;
              if ((v10 & 1) == 0)
              {
                if ([type isEqualToString:@"kTypeSemiStationaryArm"])
                {
                  return 917516;
                }

                else
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)confidenceAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024569B8 + string);
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

- (int)mounted
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_mounted;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMounted:(BOOL)mounted
{
  if (mounted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)mountedAsString:(int)string
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

- (int)StringAsMounted:(id)mounted
{
  if ([mounted isEqualToString:@"kNotMounted"])
  {
    return 0;
  }

  else
  {
    return [mounted isEqualToString:@"kMounted"];
  }
}

- (int)mountedConfidence
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)mountedConfidenceAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024569B8 + string);
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

- (int)turn
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_turn;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTurn:(BOOL)turn
{
  if (turn)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)turnAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024569D0 + string);
  }
}

- (int)StringAsTurn:(id)turn
{
  if ([turn isEqualToString:@"kTurnStateUnknown"])
  {
    return 0;
  }

  if ([turn isEqualToString:@"kTurnStateStatic"])
  {
    return 1;
  }

  if ([turn isEqualToString:@"kTurnStateTurning"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasIsVehicular:(BOOL)vehicular
{
  if (vehicular)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsMoving:(BOOL)moving
{
  if (moving)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)exitState
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)exitStateAsString:(int)string
{
  if (string >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_1024569E8 + string);
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCMMotionContextMotionState;
  return [NSString stringWithFormat:@"%@ %@", [(ALCMMotionContextMotionState *)&v3 description], [(ALCMMotionContextMotionState *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  type = self->_type;
  if (type >= 0x4000)
  {
    if (type < 462848)
    {
      if (type < 196608)
      {
        switch(type)
        {
          case 16384:
            v5 = @"kTypeDrivingMounted";
            goto LABEL_75;
          case 65664:
            v5 = @"kTypeCyclingSeat";
            goto LABEL_75;
          case 131200:
            v5 = @"kTypeCyclingChassis";
            goto LABEL_75;
        }
      }

      else if (type > 327807)
      {
        if (type == 327808)
        {
          v5 = @"kTypeCyclingTorso";
          goto LABEL_75;
        }

        if (type == 397312)
        {
          v5 = @"kTypeDrivingSeat";
          goto LABEL_75;
        }
      }

      else
      {
        if (type == 196608)
        {
          v5 = @"kTypeCyclingLeg";
          goto LABEL_75;
        }

        if (type == 262272)
        {
          v5 = @"kTypeCyclingArm";
          goto LABEL_75;
        }
      }
    }

    else if (type > 720911)
    {
      if (type > 851979)
      {
        if (type == 851980)
        {
          v5 = @"kTypeSemiStationaryPocket";
          goto LABEL_75;
        }

        if (type == 917516)
        {
          v5 = @"kTypeSemiStationaryArm";
          goto LABEL_75;
        }
      }

      else
      {
        if (type == 720912)
        {
          v5 = @"kTypeWalkingLeg";
          goto LABEL_75;
        }

        if (type == 786448)
        {
          v5 = @"kTypeWalkingArm";
          goto LABEL_75;
        }
      }
    }

    else if (type > 589887)
    {
      if (type == 589888)
      {
        v5 = @"kTypeRunningLeg";
        goto LABEL_75;
      }

      if (type == 655424)
      {
        v5 = @"kTypeRunningArm";
        goto LABEL_75;
      }
    }

    else
    {
      if (type == 462848)
      {
        v5 = @"kTypeDrivingArm";
        goto LABEL_75;
      }

      if (type == 528384)
      {
        v5 = @"kTypeDrivingStowed";
        goto LABEL_75;
      }
    }
  }

  else if (type <= 63)
  {
    if (type <= 3)
    {
      switch(type)
      {
        case 0:
          v5 = @"kTypeUnknown";
          goto LABEL_75;
        case 1:
          v5 = @"kTypeFrozen";
          goto LABEL_75;
        case 2:
          v5 = @"kTypeStatic";
          goto LABEL_75;
      }
    }

    else if (type > 15)
    {
      if (type == 16)
      {
        v5 = @"kTypeWalking";
        goto LABEL_75;
      }

      if (type == 32)
      {
        v5 = @"kTypeWalkingSlow";
        goto LABEL_75;
      }
    }

    else
    {
      if (type == 4)
      {
        v5 = @"kTypeMoving";
        goto LABEL_75;
      }

      if (type == 12)
      {
        v5 = @"kTypeSemiStationary";
        goto LABEL_75;
      }
    }
  }

  else if (type > 4095)
  {
    if (type >= 0x2000)
    {
      if (type == 0x2000)
      {
        v5 = @"kTypeVehicularInHand";
        goto LABEL_75;
      }

      if (type == 12288)
      {
        v5 = @"kTypeDrivingOther";
        goto LABEL_75;
      }
    }

    else
    {
      if (type == 4096)
      {
        v5 = @"kTypeDriving";
        goto LABEL_75;
      }

      if (type == 4128)
      {
        v5 = @"kTypeDrivingOrWalkingSlow";
        goto LABEL_75;
      }
    }
  }

  else if (type > 255)
  {
    if (type == 256)
    {
      v5 = @"kTypeInVehicleFrozen";
      goto LABEL_75;
    }

    if (type == 512)
    {
      v5 = @"kTypeInVehicleStatic";
      goto LABEL_75;
    }
  }

  else
  {
    if (type == 64)
    {
      v5 = @"kTypeRunning";
      goto LABEL_75;
    }

    if (type == 128)
    {
      v5 = @"kTypeCycling";
      goto LABEL_75;
    }
  }

  v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
LABEL_75:
  [v3 setObject:v5 forKey:@"type"];
  confidence = self->_confidence;
  if (confidence >= 3)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_confidence];
  }

  else
  {
    v7 = *(&off_1024569B8 + confidence);
  }

  [v3 setObject:v7 forKey:@"confidence"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    mounted = self->_mounted;
    if (mounted)
    {
      if (mounted == 1)
      {
        v10 = @"kMounted";
      }

      else
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_mounted];
      }
    }

    else
    {
      v10 = @"kNotMounted";
    }

    [v3 setObject:v10 forKey:@"mounted"];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_80:
      if ((has & 0x10) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_92;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_80;
  }

  mountedConfidence = self->_mountedConfidence;
  if (mountedConfidence >= 3)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_mountedConfidence];
  }

  else
  {
    v12 = *(&off_1024569B8 + mountedConfidence);
  }

  [v3 setObject:v12 forKey:@"mountedConfidence"];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
LABEL_92:
    turn = self->_turn;
    if (turn >= 3)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_turn];
    }

    else
    {
      v14 = *(&off_1024569D0 + turn);
    }

    [v3 setObject:v14 forKey:@"turn"];
    has = self->_has;
  }

LABEL_96:
  if ((has & 0x40) != 0)
  {
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isVehicular), @"isVehicular"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_98:
      if ((has & 2) == 0)
      {
        goto LABEL_99;
      }

LABEL_104:
      exitState = self->_exitState;
      if (exitState >= 3)
      {
        v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_exitState];
      }

      else
      {
        v17 = *(&off_1024569E8 + exitState);
      }

      [v3 setObject:v17 forKey:@"exitState"];
      if (*&self->_has)
      {
        goto LABEL_100;
      }

      return v3;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_98;
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isMoving), @"isMoving"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_104;
  }

LABEL_99:
  if (has)
  {
LABEL_100:
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_startTime), @"startTime"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_15:

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  *(to + 9) = self->_type;
  *(to + 4) = self->_confidence;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 6) = self->_mounted;
    *(to + 44) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_mountedConfidence;
  *(to + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 8) = self->_turn;
  *(to + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 41) = self->_isVehicular;
  *(to + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 40) = self->_isMoving;
  *(to + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 1) = self->_startTime;
    *(to + 44) |= 1u;
    return;
  }

LABEL_14:
  *(to + 5) = self->_exitState;
  *(to + 44) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 9) = self->_type;
  *(result + 4) = self->_confidence;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 6) = self->_mounted;
    *(result + 44) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_mountedConfidence;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 8) = self->_turn;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 41) = self->_isVehicular;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 40) = self->_isMoving;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 5) = self->_exitState;
  *(result + 44) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 1) = self->_startTime;
  *(result + 44) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (self->_type != *(equal + 9) || self->_confidence != *(equal + 4))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 44) & 4) == 0 || self->_mounted != *(equal + 6))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equal + 44) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 44) & 8) == 0 || self->_mountedConfidence != *(equal + 7))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equal + 44) & 8) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 44) & 0x10) == 0 || self->_turn != *(equal + 8))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equal + 44) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 44) & 0x40) == 0)
    {
      goto LABEL_43;
    }

    if (self->_isVehicular)
    {
      if ((*(equal + 41) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(equal + 41))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equal + 44) & 0x40) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equal + 44) & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_43:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 44) & 0x20) == 0)
  {
    goto LABEL_43;
  }

  if (self->_isMoving)
  {
    if ((*(equal + 40) & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  if (*(equal + 40))
  {
    goto LABEL_43;
  }

LABEL_23:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 44) & 2) == 0 || self->_exitState != *(equal + 5))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equal + 44) & 2) != 0)
  {
    goto LABEL_43;
  }

  LOBYTE(v5) = (*(equal + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equal + 44) & 1) == 0 || self->_startTime != *(equal + 1))
    {
      goto LABEL_43;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_mounted;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mountedConfidence;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_turn;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isVehicular;
    goto LABEL_10;
  }

LABEL_9:
  v5 = 0;
LABEL_10:
  if ((*&self->_has & 0x20) != 0)
  {
    v6 = 2654435761 * self->_isMoving;
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_exitState;
  }

  else
  {
    v7 = 0;
  }

  if (*&self->_has)
  {
    v8 = 2654435761u * self->_startTime;
  }

  else
  {
    v8 = 0;
  }

  return (2654435761 * self->_confidence) ^ (2654435761 * self->_type) ^ v2 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  self->_type = *(from + 9);
  self->_confidence = *(from + 4);
  v3 = *(from + 44);
  if ((v3 & 4) != 0)
  {
    self->_mounted = *(from + 6);
    *&self->_has |= 4u;
    v3 = *(from + 44);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mountedConfidence = *(from + 7);
  *&self->_has |= 8u;
  v3 = *(from + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_turn = *(from + 8);
  *&self->_has |= 0x10u;
  v3 = *(from + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_isVehicular = *(from + 41);
  *&self->_has |= 0x40u;
  v3 = *(from + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_isMoving = *(from + 40);
  *&self->_has |= 0x20u;
  v3 = *(from + 44);
  if ((v3 & 2) == 0)
  {
LABEL_7:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_15:
    self->_startTime = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_14:
  self->_exitState = *(from + 5);
  *&self->_has |= 2u;
  if (*(from + 44))
  {
    goto LABEL_15;
  }
}

@end