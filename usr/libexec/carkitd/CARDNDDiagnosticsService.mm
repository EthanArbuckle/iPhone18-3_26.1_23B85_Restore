@interface CARDNDDiagnosticsService
+ (id)TTRURLforEvent:(unint64_t)event;
+ (id)_radarURLForDiagnosticsAndDescriptionText:(id)text;
+ (id)_radarURLForDiagnosticsAtTime:(id)time didEnterRhodesGeofence:(BOOL)geofence;
+ (id)_radarURLForDiagnosticsAtTime:(id)time didStartRhodes:(BOOL)rhodes;
+ (id)_radarURLForDiagnosticsAtTime:(id)time withEvent:(unint64_t)event;
@end

@implementation CARDNDDiagnosticsService

+ (id)TTRURLforEvent:(unint64_t)event
{
  v5 = +[NSDate date];
  v6 = CRStringForDate();

  v7 = [self _radarURLForDiagnosticsAtTime:v6 withEvent:event];

  return v7;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)time withEvent:(unint64_t)event
{
  timeCopy = time;
  if (event > 1)
  {
    if (event == 2)
    {
      selfCopy2 = self;
      v12 = timeCopy;
      v13 = 1;
    }

    else
    {
      if (event != 3)
      {
        goto LABEL_13;
      }

      selfCopy2 = self;
      v12 = timeCopy;
      v13 = 0;
    }

    v14 = [selfCopy2 _radarURLForDiagnosticsAtTime:v12 didEnterRhodesGeofence:v13];
  }

  else
  {
    if (event)
    {
      if (event != 1)
      {
        goto LABEL_13;
      }

      selfCopy4 = self;
      v9 = timeCopy;
      v10 = 0;
    }

    else
    {
      selfCopy4 = self;
      v9 = timeCopy;
      v10 = 1;
    }

    v14 = [selfCopy4 _radarURLForDiagnosticsAtTime:v9 didStartRhodes:v10];
  }

  v4 = v14;
LABEL_13:

  return v4;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)time didStartRhodes:(BOOL)rhodes
{
  v4 = @"Exited DNDWD at %@";
  if (rhodes)
  {
    v4 = @"Entered DNDWD at %@";
  }

  time = [NSString stringWithFormat:v4, time];
  v6 = [@"Please describe what you were doing to trigger Do Not Disturb While Driving. \n\n\n" stringByAppendingString:time];

  v7 = [objc_opt_class() _radarURLForDiagnosticsAndDescriptionText:v6];

  return v7;
}

+ (id)_radarURLForDiagnosticsAtTime:(id)time didEnterRhodesGeofence:(BOOL)geofence
{
  v4 = @"Exited geofence at %@";
  if (geofence)
  {
    v4 = @"Entered geofence at %@";
  }

  time = [NSString stringWithFormat:v4, time];
  v6 = [objc_opt_class() _radarURLForDiagnosticsAndDescriptionText:time];

  return v6;
}

+ (id)_radarURLForDiagnosticsAndDescriptionText:(id)text
{
  textCopy = text;
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

  [v9 setObject:textCopy forKeyedSubscript:@"Description"];
  v10 = CRURLEncodedString();
  v11 = [@"tap-to-radar://new?" stringByAppendingString:v10];
  v12 = [NSURL URLWithString:v11];

  return v12;
}

@end