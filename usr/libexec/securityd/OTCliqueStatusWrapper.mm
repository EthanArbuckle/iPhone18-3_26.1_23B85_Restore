@interface OTCliqueStatusWrapper
- (BOOL)isEqual:(id)a3;
- (OTCliqueStatusWrapper)initWithStatus:(int64_t)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 status];
    v6 = v5 == [(OTCliqueStatusWrapper *)self status];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OTCliqueStatusWrapper)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = OTCliqueStatusWrapper;
  result = [(OTCliqueStatusWrapper *)&v5 init];
  if (result)
  {
    result->_status = a3;
  }

  return result;
}

@end