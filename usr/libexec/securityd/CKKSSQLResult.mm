@interface CKKSSQLResult
- (BOOL)asBOOL;
- (id)asBase64DecodedData;
- (id)asISO8601Date;
- (id)asNSNumberInteger;
- (id)init:(id)a3;
- (int64_t)asNSInteger;
@end

@implementation CKKSSQLResult

- (id)asBase64DecodedData
{
  v3 = [(CKKSSQLResult *)self stringValue];

  if (v3)
  {
    v4 = [NSData alloc];
    v5 = [(CKKSSQLResult *)self stringValue];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)asISO8601Date
{
  v3 = [(CKKSSQLResult *)self stringValue];

  if (v3)
  {
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    v5 = [(CKKSSQLResult *)self stringValue];
    v6 = [v4 dateFromString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)asNSNumberInteger
{
  v3 = [(CKKSSQLResult *)self stringValue];

  if (v3)
  {
    v4 = [(CKKSSQLResult *)self stringValue];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)asNSInteger
{
  v2 = [(CKKSSQLResult *)self stringValue];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)asBOOL
{
  v2 = [(CKKSSQLResult *)self stringValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)init:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKKSSQLResult;
  v6 = [(CKKSSQLResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stringValue, a3);
  }

  return v7;
}

@end