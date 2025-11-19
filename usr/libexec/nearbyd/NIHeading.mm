@interface NIHeading
- (BOOL)isEqual:(id)a3;
- (NIHeading)initWithCoder:(id)a3;
- (NIHeading)initWithTimestamp:(id)a3 trueHeading:(double)a4 magneticHeading:(double)a5 headingAccuracy:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIHeading

- (NIHeading)initWithTimestamp:(id)a3 trueHeading:(double)a4 magneticHeading:(double)a5 headingAccuracy:(double)a6
{
  v10 = a3;
  if (!v10)
  {
    __assert_rtn("[NIHeading initWithTimestamp:trueHeading:magneticHeading:headingAccuracy:]", "NILocation.mm", 235, "timestamp");
  }

  v15.receiver = self;
  v15.super_class = NIHeading;
  v11 = [(NIHeading *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    timestamp = v11->_timestamp;
    v11->_timestamp = v12;

    v11->_trueHeading = a4;
    v11->_magneticHeading = a5;
    v11->_headingAccuracy = a6;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NIHeading allocWithZone:a3];
  timestamp = self->_timestamp;
  trueHeading = self->_trueHeading;
  magneticHeading = self->_magneticHeading;
  headingAccuracy = self->_headingAccuracy;

  return [(NIHeading *)v4 initWithTimestamp:timestamp trueHeading:trueHeading magneticHeading:magneticHeading headingAccuracy:headingAccuracy];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v4 encodeDouble:@"trueHeading" forKey:self->_trueHeading];
  [v4 encodeDouble:@"magneticHeading" forKey:self->_magneticHeading];
  [v4 encodeDouble:@"headingAccuracy" forKey:self->_headingAccuracy];
}

- (NIHeading)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 decodeDoubleForKey:@"trueHeading"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"magneticHeading"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"headingAccuracy"];
    v11 = [[NIHeading alloc] initWithTimestamp:v5 trueHeading:v7 magneticHeading:v9 headingAccuracy:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v20 = 1;
LABEL_17:

      goto LABEL_18;
    }

    timestamp = self->_timestamp;
    if (!timestamp)
    {
      v8 = [(NIHeading *)v5 timestamp];

      if (!v8)
      {
        v10 = 1;
        goto LABEL_7;
      }

      timestamp = self->_timestamp;
    }

    v9 = [(NIHeading *)v6 timestamp];
    v10 = [(NSDate *)timestamp isEqual:v9];

LABEL_7:
    trueHeading = self->_trueHeading;
    [(NIHeading *)v6 trueHeading];
    v13 = v12;
    magneticHeading = self->_magneticHeading;
    [(NIHeading *)v6 magneticHeading];
    v16 = v15;
    headingAccuracy = self->_headingAccuracy;
    [(NIHeading *)v6 headingAccuracy];
    if (trueHeading == v13)
    {
      v19 = v10;
    }

    else
    {
      v19 = 0;
    }

    if (magneticHeading != v16)
    {
      v19 = 0;
    }

    if (headingAccuracy == v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_17;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v4 = [(NSDate *)timestamp hash];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithDouble:self->_trueHeading];
  v6 = [v5 hash];
  v7 = [NSNumber numberWithDouble:self->_magneticHeading];
  v8 = [v7 hash];
  v9 = [NSNumber numberWithDouble:self->_headingAccuracy];
  v10 = v6 ^ v4;
  v11 = v8 ^ [v9 hash];

  return v10 ^ v11;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIHeading *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = [NSString stringWithFormat:@"%.1fdeg", *&self->_trueHeading];
    v4 = [NSString stringWithFormat:@"%.1fdeg", *&self->_magneticHeading];
    v5 = [NSString stringWithFormat:@"%.1fdeg", *&self->_headingAccuracy];
    v6 = [NSString stringWithFormat:@"Time: %@. TrueHeading: %@. MagHeading: %@. HeadingAcc: %@", self->_timestamp, v3, v4, v5];
  }

  else
  {
    v6 = @"***";
  }

  return v6;
}

@end