@interface CRDNDGeofenceAlert
+ (id)alertForEnteringGeofence:(BOOL)geofence;
@end

@implementation CRDNDGeofenceAlert

+ (id)alertForEnteringGeofence:(BOOL)geofence
{
  v3 = off_1000DCA80;
  if (!geofence)
  {
    v3 = &off_1000DCA88;
  }

  v4 = *v3;
  v5 = objc_opt_new();

  return v5;
}

@end