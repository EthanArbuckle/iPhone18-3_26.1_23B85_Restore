@interface ENUCoordinate
+ (id)fromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point;
- (ENUCoordinate)initWithEast:(double)east north:(double)north up:(double)up;
- (void)setFromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point;
@end

@implementation ENUCoordinate

- (ENUCoordinate)initWithEast:(double)east north:(double)north up:(double)up
{
  self->_east = east;
  self->_north = north;
  self->_up = up;
  return self;
}

+ (id)fromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point
{
  originCopy = origin;
  ecefOriginCopy = ecefOrigin;
  pointCopy = point;
  v10 = objc_alloc_init(ENUCoordinate);
  [(ENUCoordinate *)v10 setFromLatLonOrigin:originCopy andEcefOrigin:ecefOriginCopy andEcefPoint:pointCopy];

  return v10;
}

- (void)setFromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point
{
  originCopy = origin;
  ecefOriginCopy = ecefOrigin;
  pointCopy = point;
  [originCopy latitude];
  v11 = v10;
  [originCopy latitude];
  v13 = v12;
  [originCopy longitude];
  v15 = v14;
  [originCopy longitude];
  v17 = v16;
  [pointCopy x];
  v19 = v18;
  [ecefOriginCopy x];
  v21 = v20;
  v36 = v15;
  v37 = v13;
  [pointCopy y];
  v23 = v22;
  [ecefOriginCopy y];
  v25 = v24;
  [pointCopy z];
  v35 = v26;
  [ecefOriginCopy z];
  v28 = v27;
  v29 = v23 - v25;
  v30 = v19 - v21;
  v31 = sin(v17 * 0.0174532925);
  v32 = cos(v36 * 0.0174532925);
  v33 = sin(v37 * 0.0174532925);
  v34 = cos(v11 * 0.0174532925);
  self->_east = v32 * v29 - v31 * v30;
  self->_north = -(v33 * v31) * v29 + -(v33 * v32) * v30 + v34 * (v35 - v28);
  self->_up = v34 * v31 * v29 + v34 * v32 * v30 + v33 * (v35 - v28);
}

@end