@interface CRDNDNotDrivingAlert
+ (id)actions;
@end

@implementation CRDNDNotDrivingAlert

+ (id)actions
{
  v2 = [CRBulletin CARActionWithTitle:@"I'm a Passenger"];
  v9[0] = v2;
  v3 = [CRBulletin CARActionWithTitle:@"I've Pulled Over"];
  v9[1] = v3;
  v4 = [CARDNDDiagnosticsService TTRURLforEvent:0];
  v5 = [CRBulletin CARActionWithURL:v4 title:@"Incorrect Detection (File Radar)"];
  v9[2] = v5;
  v6 = [CRBulletin CARActionWithTitle:@"Other"];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

@end