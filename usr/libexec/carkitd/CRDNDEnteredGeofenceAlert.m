@interface CRDNDEnteredGeofenceAlert
+ (id)actions;
@end

@implementation CRDNDEnteredGeofenceAlert

+ (id)actions
{
  v2 = [CARDNDDiagnosticsService TTRURLforEvent:2];
  v3 = [CRBulletin CARActionWithURL:v2 title:@"[Internal] File Radar"];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end