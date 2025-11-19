@interface CARDNDDiagnosticsService
+ (id)TTRURLforEvent:(unint64_t)a3;
+ (id)_radarURLForDiagnosticsAndDescriptionText:(id)a3;
+ (id)_radarURLForDiagnosticsAtTime:(id)a3 didEnterRhodesGeofence:(BOOL)a4;
+ (id)_radarURLForDiagnosticsAtTime:(id)a3 didStartRhodes:(BOOL)a4;
+ (id)_radarURLForDiagnosticsAtTime:(id)a3 withEvent:(unint64_t)a4;
@end

@implementation CARDNDDiagnosticsService

+ (id)TTRURLforEvent:(unint64_t)a3
{
  v5 = +[NSDate date];
  v6 = CRStringForDate();

  v7 = [a1 _radarURLForDiagnosticsAtTime:v6 withEvent:a3];

  return v7;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)a3 withEvent:(unint64_t)a4
{
  v7 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v11 = a1;
      v12 = v7;
      v13 = 1;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v11 = a1;
      v12 = v7;
      v13 = 0;
    }

    v14 = [v11 _radarURLForDiagnosticsAtTime:v12 didEnterRhodesGeofence:v13];
  }

  else
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_13;
      }

      v8 = a1;
      v9 = v7;
      v10 = 0;
    }

    else
    {
      v8 = a1;
      v9 = v7;
      v10 = 1;
    }

    v14 = [v8 _radarURLForDiagnosticsAtTime:v9 didStartRhodes:v10];
  }

  v4 = v14;
LABEL_13:

  return v4;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)a3 didStartRhodes:(BOOL)a4
{
  v4 = @"Exited DNDWD at %@";
  if (a4)
  {
    v4 = @"Entered DNDWD at %@";
  }

  v5 = [NSString stringWithFormat:v4, a3];
  v6 = [@"Please describe what you were doing to trigger Do Not Disturb While Driving. \n\n\n" stringByAppendingString:v5];

  v7 = [objc_opt_class() _radarURLForDiagnosticsAndDescriptionText:v6];

  return v7;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)a3 didEnterRhodesGeofence:(BOOL)a4
{
  v4 = @"Exited geofence at %@";
  if (a4)
  {
    v4 = @"Entered geofence at %@";
  }

  v5 = [NSString stringWithFormat:v4, a3];
  v6 = [objc_opt_class() _radarURLForDiagnosticsAndDescriptionText:v5];

  return v6;
}

+ (id)_radarURLForDiagnosticsAndDescriptionText:(id)a3
{
  v3 = a3;
  v4 = CRFormattedBuildAndDeviceIdentifier();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByAppendingString:@": [DNDWD]"];
  }

  else
  {
    v6 = @"[DNDWD]";
  }

  v14[0] = @"ComponentName";
  v14[1] = @"ComponentVersion";
  v15[0] = @"Do Not Disturb While Driving";
  v15[1] = @"1.0";
  v14[2] = @"ComponentID";
  v14[3] = @"Keywords";
  v15[2] = @"831192";
  v15[3] = @"814490";
  v14[4] = @"Reproducibility";
  v14[5] = @"Title";
  v15[4] = @"I Didn't Try";
  v15[5] = v6;
  v14[6] = @"ExtensionIdentifiers";
  v7 = [&off_1000E8D00 componentsJoinedByString:{@", "}];
  v15[6] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];
  v9 = [v8 mutableCopy];

  [v9 setObject:v3 forKeyedSubscript:@"Description"];
  v10 = CRURLEncodedString();
  v11 = [@"tap-to-radar://new?" stringByAppendingString:v10];
  v12 = [NSURL URLWithString:v11];

  return v12;
}

@end