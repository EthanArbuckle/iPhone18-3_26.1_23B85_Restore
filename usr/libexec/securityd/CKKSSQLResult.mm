@interface CKKSSQLResult
- (BOOL)asBOOL;
- (id)asBase64DecodedData;
- (id)asISO8601Date;
- (id)asNSNumberInteger;
- (id)init:(id)init;
- (int64_t)asNSInteger;
@end

@implementation CKKSSQLResult

- (id)asBase64DecodedData
{
  stringValue = [(CKKSSQLResult *)self stringValue];

  if (stringValue)
  {
    v4 = [NSData alloc];
    stringValue2 = [(CKKSSQLResult *)self stringValue];
    v6 = [v4 initWithBase64EncodedString:stringValue2 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)asISO8601Date
{
  stringValue = [(CKKSSQLResult *)self stringValue];

  if (stringValue)
  {
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    stringValue2 = [(CKKSSQLResult *)self stringValue];
    v6 = [v4 dateFromString:stringValue2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)asNSNumberInteger
{
  stringValue = [(CKKSSQLResult *)self stringValue];

  if (stringValue)
  {
    stringValue2 = [(CKKSSQLResult *)self stringValue];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [stringValue2 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)asNSInteger
{
  stringValue = [(CKKSSQLResult *)self stringValue];
  integerValue = [stringValue integerValue];

  return integerValue;
}

- (BOOL)asBOOL
{
  stringValue = [(CKKSSQLResult *)self stringValue];
  bOOLValue = [stringValue BOOLValue];

  return bOOLValue;
}

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = CKKSSQLResult;
  v6 = [(CKKSSQLResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stringValue, init);
  }

  return v7;
}

@end