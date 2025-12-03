@interface OTCliqueStatusWrapper
- (BOOL)isEqual:(id)equal;
- (OTCliqueStatusWrapper)initWithStatus:(int64_t)status;
- (id)description;
@end

@implementation OTCliqueStatusWrapper

- (id)description
{
  [(OTCliqueStatusWrapper *)self status];
  v2 = OTCliqueStatusToString();
  v3 = [NSString stringWithFormat:@"<CliqueStatus: %@>", v2];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    status = [equalCopy status];
    v6 = status == [(OTCliqueStatusWrapper *)self status];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OTCliqueStatusWrapper)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = OTCliqueStatusWrapper;
  result = [(OTCliqueStatusWrapper *)&v5 init];
  if (result)
  {
    result->_status = status;
  }

  return result;
}

@end