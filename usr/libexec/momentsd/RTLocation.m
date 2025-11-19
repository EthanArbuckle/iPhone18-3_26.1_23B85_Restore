@interface RTLocation
+ (double)distanceFromlat1:(double)a3 lon1:(double)a4 tolat2:(double)a5 lon2:(double)a6;
+ (id)locationFromDictionary:(id)a3;
- (double)distanceFromLocation:(id)a3;
- (id)dictionary;
@end

@implementation RTLocation

- (id)dictionary
{
  v3 = objc_opt_new();
  [(RTLocation *)self latitude];
  v4 = [NSNumber numberWithDouble:?];
  [v3 setObject:v4 forKeyedSubscript:@"locationLatitude"];

  [(RTLocation *)self longitude];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"locationLongitude"];

  [(RTLocation *)self horizontalUncertainty];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"locationHorizontalUncertainty"];

  v7 = [(RTLocation *)self date];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"locationDate"];

  v9 = [v3 copy];

  return v9;
}

+ (double)distanceFromlat1:(double)a3 lon1:(double)a4 tolat2:(double)a5 lon2:(double)a6
{
  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  if (a6 < 0.0)
  {
    a6 = a6 + 360.0;
  }

  v6 = a6 - a4;
  if (v6 <= 180.0)
  {
    if (v6 < -180.0)
    {
      v6 = v6 + 360.0;
    }
  }

  else
  {
    v6 = v6 + -360.0;
  }

  v7 = (a5 - a3) * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = __sincos_stret((a3 + a5) * 0.0174532925 * 0.5);
  v10 = sqrt(v9.__sinval * -0.00669437999 * v9.__sinval + 1.0);
  return sqrt(v9.__cosval * (6378137.0 / v10) * v8 * (v9.__cosval * (6378137.0 / v10) * v8) + v7 * (6335439.33 / (v10 * (v10 * v10))) * (v7 * (6335439.33 / (v10 * (v10 * v10)))));
}

- (double)distanceFromLocation:(id)a3
{
  v4 = a3;
  [(RTLocation *)self latitude];
  v6 = v5;
  [(RTLocation *)self longitude];
  v8 = v7;
  [v4 latitude];
  v10 = v9;
  [v4 longitude];
  v12 = v11;

  [RTLocation distanceFromlat1:v6 lon1:v8 tolat2:v10 lon2:v12];
  return result;
}

+ (id)locationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"locationLatitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"locationLongitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"locationHorizontalUncertainty"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 objectForKeyedSubscript:@"locationDate"];

  [v13 doubleValue];
  v15 = v14;

  if (v15 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v15];
  }

  v17 = [[RTLocation alloc] initWithLatitude:v16 longitude:v6 horizontalUncertainty:v9 date:v12];

  return v17;
}

@end