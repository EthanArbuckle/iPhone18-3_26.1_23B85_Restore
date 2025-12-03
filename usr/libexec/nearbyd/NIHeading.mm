@interface NIHeading
- (BOOL)isEqual:(id)equal;
- (NIHeading)initWithCoder:(id)coder;
- (NIHeading)initWithTimestamp:(id)timestamp trueHeading:(double)heading magneticHeading:(double)magneticHeading headingAccuracy:(double)accuracy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIHeading

- (NIHeading)initWithTimestamp:(id)timestamp trueHeading:(double)heading magneticHeading:(double)magneticHeading headingAccuracy:(double)accuracy
{
  timestampCopy = timestamp;
  if (!timestampCopy)
  {
    __assert_rtn("[NIHeading initWithTimestamp:trueHeading:magneticHeading:headingAccuracy:]", "NILocation.mm", 235, "timestamp");
  }

  v15.receiver = self;
  v15.super_class = NIHeading;
  v11 = [(NIHeading *)&v15 init];
  if (v11)
  {
    v12 = [timestampCopy copy];
    timestamp = v11->_timestamp;
    v11->_timestamp = v12;

    v11->_trueHeading = heading;
    v11->_magneticHeading = magneticHeading;
    v11->_headingAccuracy = accuracy;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NIHeading allocWithZone:zone];
  timestamp = self->_timestamp;
  trueHeading = self->_trueHeading;
  magneticHeading = self->_magneticHeading;
  headingAccuracy = self->_headingAccuracy;

  return [(NIHeading *)v4 initWithTimestamp:timestamp trueHeading:trueHeading magneticHeading:magneticHeading headingAccuracy:headingAccuracy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeDouble:@"trueHeading" forKey:self->_trueHeading];
  [coderCopy encodeDouble:@"magneticHeading" forKey:self->_magneticHeading];
  [coderCopy encodeDouble:@"headingAccuracy" forKey:self->_headingAccuracy];
}

- (NIHeading)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [coderCopy decodeDoubleForKey:@"trueHeading"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"magneticHeading"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"headingAccuracy"];
    v11 = [[NIHeading alloc] initWithTimestamp:v5 trueHeading:v7 magneticHeading:v9 headingAccuracy:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
      timestamp = [(NIHeading *)v5 timestamp];

      if (!timestamp)
      {
        v10 = 1;
        goto LABEL_7;
      }

      timestamp = self->_timestamp;
    }

    timestamp2 = [(NIHeading *)v6 timestamp];
    v10 = [(NSDate *)timestamp isEqual:timestamp2];

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
  descriptionInternal = [(NIHeading *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

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