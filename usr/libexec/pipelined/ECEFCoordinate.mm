@interface ECEFCoordinate
+ (id)fromLatLon:(id)lon;
- (id)initFromLatLon:(id)lon;
- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin usingENU:(id)u;
- (void)setFromLatLon:(id)lon;
- (void)setFromX:(double)x y:(double)y z:(double)z;
@end

@implementation ECEFCoordinate

- (void)setFromX:(double)x y:(double)y z:(double)z
{
  self->_x = x;
  self->_y = y;
  self->_z = z;
}

- (id)initFromLatLon:(id)lon
{
  v4 = [ECEFCoordinate fromLatLon:lon];

  return v4;
}

+ (id)fromLatLon:(id)lon
{
  lonCopy = lon;
  v4 = objc_alloc_init(ECEFCoordinate);
  [(ECEFCoordinate *)v4 setFromLatLon:lonCopy];

  return v4;
}

- (void)setFromLatLon:(id)lon
{
  lonCopy = lon;
  [lonCopy latitude];
  v5 = cos(v4 * 0.0174532925);
  [lonCopy latitude];
  v7 = sin(v6 * 0.0174532925);
  [lonCopy longitude];
  v9 = cos(v8 * 0.0174532925);
  [lonCopy longitude];
  v11 = sin(v10 * 0.0174532925);
  [lonCopy altitude];
  v12 = 6378137.0 / sqrt(v7 * -0.00669437999 * v7 + 1.0);
  self->_x = v9 * (v5 * (v12 + v13));
  [lonCopy altitude];
  self->_y = v11 * (v5 * (v12 + v14));
  [lonCopy altitude];
  self->_z = v7 * (v15 + v12 * 0.99330562);
}

- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin usingENU:(id)u
{
  uCopy = u;
  [uCopy setFromLatLonOrigin:origin andEcefOrigin:ecefOrigin andEcefPoint:self];
  [uCopy east];
  v10 = v9;
  [uCopy north];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.var0[1] = v14;
  result.var0[0] = v13;
  return result;
}

@end