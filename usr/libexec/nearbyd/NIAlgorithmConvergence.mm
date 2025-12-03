@interface NIAlgorithmConvergence
- (BOOL)isEqual:(id)equal;
- (NIAlgorithmConvergence)initWithCoder:(id)coder;
- (NIAlgorithmConvergence)initWithStatus:(int64_t)status andReasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAlgorithmConvergence

- (NIAlgorithmConvergence)initWithStatus:(int64_t)status andReasons:(id)reasons
{
  reasonsCopy = reasons;
  v11.receiver = self;
  v11.super_class = NIAlgorithmConvergence;
  v8 = [(NIAlgorithmConvergence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = status;
    objc_storeStrong(&v8->_reasons, reasons);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_reasons)
  {
    v4 = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->_reasons, 1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[NIAlgorithmConvergence alloc] initWithStatus:self->_status andReasons:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  reasons = self->_reasons;
  if (reasons)
  {
    [coderCopy encodeObject:reasons forKey:@"reasons"];
  }
}

- (NIAlgorithmConvergence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"status"];
  if (![coderCopy containsValueForKey:@"reasons"])
  {
    v8 = 0;
    goto LABEL_5;
  }

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [NSSet setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"reasons"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:
    v9 = [[NIAlgorithmConvergence alloc] initWithStatus:v5 andReasons:v8];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    status = [v5 status];
    status = self->_status;
    reasons = [v5 reasons];
    if (reasons)
    {
      v9 = 0;
    }

    else
    {
      v9 = self->_reasons == 0;
    }

    reasons2 = [v5 reasons];
    v12 = [reasons2 isEqualToArray:self->_reasons];

    v10 = (status == status) & (v9 | v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithInteger:self->_status];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_reasons hash];

  return v5 ^ v4;
}

@end