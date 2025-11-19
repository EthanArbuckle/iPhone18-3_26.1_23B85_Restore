@interface CRDNDGeofenceAlert
+ (id)alertForEnteringGeofence:(BOOL)a3;
@end

@implementation CRDNDGeofenceAlert

+ (id)alertForEnteringGeofence:(BOOL)a3
{
  v3 = off_1000DCA80;
  if (!a3)
  {
    v3 = &off_1000DCA88;
  }

  v4 = *v3;
  v5 = objc_opt_new();

  return v5;
}

@end