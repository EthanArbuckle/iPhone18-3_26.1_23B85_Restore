@interface ENUCoordinate
+ (id)fromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5;
- (ENUCoordinate)initWithEast:(double)a3 north:(double)a4 up:(double)a5;
- (void)setFromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5;
@end

@implementation ENUCoordinate

- (ENUCoordinate)initWithEast:(double)a3 north:(double)a4 up:(double)a5
{
  self->_east = a3;
  self->_north = a4;
  self->_up = a5;
  return self;
}

+ (id)fromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(ENUCoordinate);
  [(ENUCoordinate *)v10 setFromLatLonOrigin:v7 andEcefOrigin:v8 andEcefPoint:v9];

  return v10;
}

- (void)setFromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5
{
  v38 = a3;
  v8 = a4;
  v9 = a5;
  [v38 latitude];
  v11 = v10;
  [v38 latitude];
  v13 = v12;
  [v38 longitude];
  v15 = v14;
  [v38 longitude];
  v17 = v16;
  [v9 x];
  v19 = v18;
  [v8 x];
  v21 = v20;
  v36 = v15;
  v37 = v13;
  [v9 y];
  v23 = v22;
  [v8 y];
  v25 = v24;
  [v9 z];
  v35 = v26;
  [v8 z];
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