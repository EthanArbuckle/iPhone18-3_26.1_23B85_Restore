@interface NIDLTDOACoordinatesUpdate
- (BOOL)isEqual:(id)a3;
- (NIDLTDOACoordinatesUpdate)initWithCoder:(id)a3;
- (NIDLTDOACoordinatesUpdate)initWithDLTDOACoordinatesType:(int64_t)a3 coordinates:;
- (__n128)coordinates;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIDLTDOACoordinatesUpdate

- (NIDLTDOACoordinatesUpdate)initWithDLTDOACoordinatesType:(int64_t)a3 coordinates:
{
  v6 = *v3;
  v7 = v3[1];
  v8.receiver = self;
  v8.super_class = NIDLTDOACoordinatesUpdate;
  result = [(NIDLTDOACoordinatesUpdate *)&v8 init];
  if (result)
  {
    result->_coordinatesType = a3;
    *result->_coordinates = v6;
    *&result->_coordinates[16] = v7;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@:\n", v4];

  coordinatesType = self->_coordinatesType;
  if (coordinatesType)
  {
    if (coordinatesType != 1)
    {
      goto LABEL_6;
    }

    v7 = @"relative coordinates:";
  }

  else
  {
    v7 = @"geodetic coordinates:";
  }

  [v5 appendString:v7];
LABEL_6:
  [v5 appendFormat:@"x: %.6f, ", *self->_coordinates];
  [v5 appendFormat:@"y: %.6f, ", *&self->_coordinates[8]];
  [v5 appendFormat:@"z: %.6f>", *&self->_coordinates[16]];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  coordinatesType = self->_coordinatesType;
  v6 = *&self->_coordinates[16];
  v8[0] = *self->_coordinates;
  v8[1] = v6;
  return [v4 initWithDLTDOACoordinatesType:coordinatesType coordinates:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:LODWORD(self->_coordinatesType) forKey:@"CoordinatesType"];
  v5 = *&self->_coordinates[16];
  v6[0] = *self->_coordinates;
  v6[1] = v5;
  [v4 encodeDoubleVector3:v6 forKey:@"Coordinates"];
}

- (NIDLTDOACoordinatesUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_coordinatesType = [v4 decodeIntForKey:@"CoordinatesType"];
    if (v5)
    {
      [v5 decodeDoubleVector3ForKey:@"Coordinates"];
      v7 = v10;
      v8 = vextq_s8(v7, v7, 8uLL).u64[0];
      *&v6 = v11;
    }

    else
    {
      v7.i64[0] = 0;
      v8 = 0;
      *&v6 = 0;
    }

    v7.i64[1] = v8;
    *self->_coordinates = v7;
    *&self->_coordinates[16] = v6;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      coordinatesType = self->_coordinatesType;
      v8 = [(NIDLTDOACoordinatesUpdate *)v5 coordinatesType];
      v16 = *&self->_coordinates[16];
      v17 = *self->_coordinates;
      if (v5)
      {
        [(NIDLTDOACoordinatesUpdate *)v5 coordinates];
        v9 = v18;
        v10 = vextq_s8(v9, v9, 8uLL).u64[0];
        v11.f64[0] = v19;
      }

      else
      {
        v9.f64[0] = 0.0;
        v10 = 0;
        v11.f64[0] = 0.0;
      }

      *&v9.f64[1] = v10;
      v11.f64[1] = v9.f64[0];
      v13 = vceqq_f64(v17, v9);
      v12 = ((v13.i64[0] & v13.i64[1] & vceqq_f64(v16, v11).u64[0] & 0x8000000000000000) != 0) != v7 && coordinatesType == v8;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithDouble:*self->_coordinates];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithDouble:*&self->_coordinates[8]];
  v6 = [v5 hash];
  v7 = [NSNumber numberWithDouble:*&self->_coordinates[16]];
  v8 = [v7 hash];
  v9 = [NSNumber numberWithInteger:SLODWORD(self->_coordinatesType)];
  v10 = v6 ^ v4;
  v11 = v8 ^ [v9 hash];

  return v10 ^ v11;
}

- (__n128)coordinates
{
  result = a1[1];
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  *a2 = result;
  return result;
}

@end