@interface ECEFCoordinate
+ (id)fromLatLon:(id)a3;
- (id)initFromLatLon:(id)a3;
- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 usingENU:(id)a5;
- (void)setFromLatLon:(id)a3;
- (void)setFromX:(double)a3 y:(double)a4 z:(double)a5;
@end

@implementation ECEFCoordinate

- (void)setFromX:(double)a3 y:(double)a4 z:(double)a5
{
  self->_x = a3;
  self->_y = a4;
  self->_z = a5;
}

- (id)initFromLatLon:(id)a3
{
  v4 = [ECEFCoordinate fromLatLon:a3];

  return v4;
}

+ (id)fromLatLon:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ECEFCoordinate);
  [(ECEFCoordinate *)v4 setFromLatLon:v3];

  return v4;
}

- (void)setFromLatLon:(id)a3
{
  v16 = a3;
  [v16 latitude];
  v5 = cos(v4 * 0.0174532925);
  [v16 latitude];
  v7 = sin(v6 * 0.0174532925);
  [v16 longitude];
  v9 = cos(v8 * 0.0174532925);
  [v16 longitude];
  v11 = sin(v10 * 0.0174532925);
  [v16 altitude];
  v12 = 6378137.0 / sqrt(v7 * -0.00669437999 * v7 + 1.0);
  self->_x = v9 * (v5 * (v12 + v13));
  [v16 altitude];
  self->_y = v11 * (v5 * (v12 + v14));
  [v16 altitude];
  self->_z = v7 * (v15 + v12 * 0.99330562);
}

- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 usingENU:(id)a5
{
  v8 = a5;
  [v8 setFromLatLonOrigin:a3 andEcefOrigin:a4 andEcefPoint:self];
  [v8 east];
  v10 = v9;
  [v8 north];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.var0[1] = v14;
  result.var0[0] = v13;
  return result;
}

@end