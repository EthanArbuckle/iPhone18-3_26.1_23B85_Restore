@interface NRLinkUpgradeReport
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation NRLinkUpgradeReport

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      advice = self->_advice;
      if (v5)
      {
        if (advice == v5->_advice)
        {
          advice = v5->_reason;
LABEL_6:
          v7 = self->_reason == advice;
LABEL_11:

          goto LABEL_12;
        }
      }

      else if (!advice)
      {
        goto LABEL_6;
      }

      v7 = 0;
      goto LABEL_11;
    }

    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (id)description
{
  v3 = [NSString alloc];
  advice = self->_advice;
  if (advice <= 1)
  {
    if (!advice)
    {
      advice = @"None";
      goto LABEL_13;
    }

    if (advice == 1)
    {
      advice = @"BluetoothDefault";
      goto LABEL_13;
    }
  }

  else
  {
    switch(advice)
    {
      case 2:
        advice = @"BluetoothClassic";
        goto LABEL_13;
      case 4:
        advice = @"WiFi";
        goto LABEL_13;
      case 128:
        advice = @"NoUpgrade";
        goto LABEL_13;
    }
  }

  advice = [[NSString alloc] initWithFormat:@"Unknown(%llu)", advice];
LABEL_13:
  reason = self->_reason;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = v7;
  if ((reason & 0x100) != 0)
  {
    [v7 addObject:@"TransferSizeSmall"];
    if ((reason & 0x200) == 0)
    {
LABEL_15:
      if ((reason & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }
  }

  else if ((reason & 0x200) == 0)
  {
    goto LABEL_15;
  }

  [v8 addObject:@"TransferSizeMedium"];
  if ((reason & 0x400) == 0)
  {
LABEL_16:
    if ((reason & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v8 addObject:@"TransferSizeLarge"];
  if ((reason & 0x4000) == 0)
  {
LABEL_17:
    if ((reason & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v8 addObject:@"ServiceClassVoice"];
  if ((reason & 0x8000) == 0)
  {
LABEL_18:
    if ((reason & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v8 addObject:@"ServiceClassVideo"];
  if ((reason & 0x40000) == 0)
  {
LABEL_19:
    if ((reason & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v8 addObject:@"RadioConditionPoor"];
  if ((reason & 0x80000) == 0)
  {
LABEL_20:
    if ((reason & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v8 addObject:@"RadioConditionFair"];
  if ((reason & 0x100000) == 0)
  {
LABEL_21:
    if ((reason & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v8 addObject:@"RadioConditionGood"];
  if ((reason & 0x200000) == 0)
  {
LABEL_22:
    if ((reason & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v8 addObject:@"RadioConditionBest"];
  if ((reason & 0x400000) == 0)
  {
LABEL_23:
    if ((reason & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v8 addObject:@"CongestionHigh"];
  if ((reason & 0x800000) == 0)
  {
LABEL_24:
    if ((reason & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v8 addObject:@"CongestionNotHigh"];
  if ((reason & 0x1000000) == 0)
  {
LABEL_25:
    if ((reason & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v8 addObject:@"PluggedIn"];
  if ((reason & 0x2000000) == 0)
  {
LABEL_26:
    if ((reason & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v8 addObject:@"NotPluggedIn"];
  if ((reason & 0x4000000) == 0)
  {
LABEL_27:
    if ((reason & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v8 addObject:@"BatteryPercentagePoor"];
  if ((reason & 0x8000000) == 0)
  {
LABEL_28:
    if ((reason & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v8 addObject:@"BatteryPercentageFair"];
  if ((reason & 0x10000000) == 0)
  {
LABEL_29:
    if ((reason & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v8 addObject:@"BatteryPercentageGood"];
  if ((reason & 0x20000000) == 0)
  {
LABEL_30:
    if ((reason & 0x100000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v8 addObject:@"BatteryPercentageBest"];
  if ((reason & 0x100000000000000) == 0)
  {
LABEL_31:
    if ((reason & 0x200000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v8 addObject:@"NSURLPathDataTransferComplete"];
  if ((reason & 0x200000000000000) == 0)
  {
LABEL_32:
    if ((reason & 0x400000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v8 addObject:@"RecommendationEngineRestarted"];
  if ((reason & 0x400000000000000) == 0)
  {
LABEL_33:
    if ((reason & 0x800000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v8 addObject:@"UnexpectedLinkSwitch"];
  if ((reason & 0x800000000000000) == 0)
  {
LABEL_34:
    if ((reason & 0x1000000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v8 addObject:@"CompanionLinkInactivity"];
  if ((reason & 0x1000000000000000) == 0)
  {
LABEL_35:
    if ((reason & 0x2000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v8 addObject:@"RadioConditionsDeteriorated"];
  if ((reason & 0x2000000000000000) == 0)
  {
LABEL_36:
    if ((reason & 0x4000000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_62:
  [v8 addObject:@"BatteryConditionsDeteriorated"];
  if ((reason & 0x4000000000000000) != 0)
  {
LABEL_37:
    [v8 addObject:@"LinkSwitchFailure"];
  }

LABEL_38:
  if ([v8 count])
  {
    v9 = [v8 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = @"<none>";
  }

  v10 = [v3 initWithFormat:@"[%@ %@ since:%.2f rate:%llu/hr]", advice, v9, *&self->_timeSinceLastAdvice, self->_rateOfAdvicePerHour];

  return v10;
}

@end