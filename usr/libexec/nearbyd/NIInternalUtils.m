@interface NIInternalUtils
+ (BOOL)nearbyObjectUpdateRate:(int64_t)a3 isGreaterThan:(int64_t)a4;
+ (const)AntennaDiversityOverrideToString:(int64_t)a3;
+ (const)NINearbyObjectDiscoveryPriorityToString:(int64_t)a3;
+ (const)NINearbyObjectUpdateRateToShortString:(int64_t)a3;
+ (const)NINearbyObjectUpdateRateToString:(int64_t)a3;
+ (const)NINearbyPeerUseCaseToString:(int64_t)a3;
+ (const)NIRelationshipSpecifierToString:(unint64_t)a3;
+ (const)NISessionBackgroundModeToString:(int64_t)a3;
+ (id)NISystemPassiveAccessIntentToString:(unsigned int)a3;
+ (id)NISystemResourceAvailabilityToString:(unint64_t)a3;
@end

@implementation NIInternalUtils

+ (const)NIRelationshipSpecifierToString:(unint64_t)a3
{
  if (a3 > 0xF)
  {
    return "N/A";
  }

  else
  {
    return off_10099CDE8[a3];
  }
}

+ (const)AntennaDiversityOverrideToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return "N/A";
  }

  else
  {
    return off_10099CE68[a3];
  }
}

+ (BOOL)nearbyObjectUpdateRate:(int64_t)a3 isGreaterThan:(int64_t)a4
{
  v4 = 9u >> (a4 & 0xF);
  if (a4 >= 4)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 8u >> (a4 & 0xF);
  if (a4 >= 4)
  {
    LOBYTE(v5) = 0;
  }

  if (a3)
  {
    LOBYTE(v5) = 0;
  }

  if (a3 == 1)
  {
    LOBYTE(v5) = v4;
  }

  if (a3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a3 == a4)
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (const)NISessionBackgroundModeToString:(int64_t)a3
{
  if (a3 >= 3)
  {
    sub_1004A72B8();
  }

  return off_10099CE80[a3];
}

+ (const)NINearbyPeerUseCaseToString:(int64_t)a3
{
  if (!a3)
  {
    return "Generic";
  }

  if (a3 != 1)
  {
    sub_1004A72E4();
  }

  return "[Redacted]";
}

+ (const)NINearbyObjectUpdateRateToString:(int64_t)a3
{
  if (a3 >= 4)
  {
    sub_1004A7310();
  }

  return off_10099CE98[a3];
}

+ (const)NINearbyObjectUpdateRateToShortString:(int64_t)a3
{
  if (a3 >= 4)
  {
    sub_1004A733C();
  }

  return off_10099CEB8[a3];
}

+ (const)NINearbyObjectDiscoveryPriorityToString:(int64_t)a3
{
  if (!a3)
  {
    return "Default";
  }

  if (a3 != 1)
  {
    sub_1004A7368();
  }

  return "Low";
}

+ (id)NISystemResourceAvailabilityToString:(unint64_t)a3
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    v5 = [NSMutableString stringWithString:@"Unavailable:"];
    v6 = v5;
    if (a3)
    {
      [v5 appendString:@"AirplaneMode|"];
    }

    if ((a3 & 2) != 0)
    {
      [v6 appendString:@"GeographicalRegion|"];
    }

    if ((a3 & 4) != 0)
    {
      [v6 appendString:@"RecoveringFromError|"];
    }

    if ((a3 & 8) != 0)
    {
      [v6 appendString:@"NotReady|"];
    }

    if ((a3 & 0x10) != 0)
    {
      [v6 appendString:@"Unsupported|"];
    }

    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
  }

  else
  {
    v7 = @"Available";
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

+ (id)NISystemPassiveAccessIntentToString:(unsigned int)a3
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    v5 = [NSMutableString stringWithString:@"Intent:"];
    v6 = v5;
    if (a3)
    {
      [v5 appendString:@"WristRaise|"];
    }

    if ((a3 & 2) != 0)
    {
      [v6 appendString:@"GeofenceEntry|"];
    }

    if ((a3 & 4) != 0)
    {
      [v6 appendString:@"WalletInteraction|"];
    }

    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
  }

  else
  {
    v7 = @"NoIntent";
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

@end