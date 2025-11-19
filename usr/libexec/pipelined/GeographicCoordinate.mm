@interface GeographicCoordinate
+ (id)fromECEFCoordinate:(id)a3;
- (GeographicCoordinate)init;
- (id)initFromECEFCoordinate:(id)a3;
- (void)setFromECEFCoordinate:(id)a3;
- (void)setFromLatitude:(double)a3 longitude:(double)a4 andAltitude:(double)a5;
@end

@implementation GeographicCoordinate

- (GeographicCoordinate)init
{
  v3.receiver = self;
  v3.super_class = GeographicCoordinate;
  return [[(GeographicCoordinate *)&v3 init] initWithLatitude:NAN longitude:NAN andAltitude:NAN];
}

- (void)setFromLatitude:(double)a3 longitude:(double)a4 andAltitude:(double)a5
{
  self->_latitude = a3;
  self->_longitude = a4;
  self->_altitude = a5;
}

+ (id)fromECEFCoordinate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GeographicCoordinate);
  [(GeographicCoordinate *)v4 setFromECEFCoordinate:v3];

  return v4;
}

- (id)initFromECEFCoordinate:(id)a3
{
  v4 = [GeographicCoordinate fromECEFCoordinate:a3];

  return v4;
}

- (void)setFromECEFCoordinate:(id)a3
{
  v28 = a3;
  [v28 x];
  v5 = v4;
  [v28 x];
  v7 = v6;
  [v28 y];
  v9 = v8;
  [v28 y];
  v11 = v10;
  [v28 y];
  v13 = v12;
  [v28 x];
  v14 = sqrt(v9 * v11 + v5 * v7);
  self->_longitude = atan2(v13, v15) / 0.0174532925;
  v16 = v14 * 0.99330562;
  v17 = 0.0;
  v18 = 1.57079633;
  if (v14 * 0.99330562 == 0.0)
  {
    v19 = v28;
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
    v22 = 0.0;
    [v28 z];
    while (1)
    {
      v18 = atan2(v23, v16);
      v24 = __sincos_stret(v18);
      v25 = 6378137.0 / sqrt(v24.__sinval * -0.00669437999 * v24.__sinval + 1.0);
      v17 = v14 / v24.__cosval - v25;
      if (vabdd_f64(v22, v18) >= 0.000001)
      {
        v19 = v28;
        if (v20 > 8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v26 = vabdd_f64(v21, v17) < 0.001 || v20 >= 9;
        v19 = v28;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      ++v20;
      v16 = v14 * (v25 / (v17 + v25) * -0.00669437999 + 1.0);
      v21 = v14 / v24.__cosval - v25;
      v22 = v18;
      if (v16 == 0.0)
      {
        break;
      }

      [v19 z];
    }

    v18 = v27;
  }

LABEL_15:
  self->_latitude = v18 / 0.0174532925;
  self->_altitude = v17;
}

@end