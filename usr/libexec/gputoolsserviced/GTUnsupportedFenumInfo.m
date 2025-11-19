@interface GTUnsupportedFenumInfo
- (GTUnsupportedFenumInfo)initWithCoder:(id)a3;
- (GTUnsupportedFenumInfo)initWithFenum:(id)a3 category:(id)a4 customMessage:(id)a5 customRecoverySuggestion:(id)a6;
- (id)asError;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTUnsupportedFenumInfo

- (GTUnsupportedFenumInfo)initWithFenum:(id)a3 category:(id)a4 customMessage:(id)a5 customRecoverySuggestion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GTUnsupportedFenumInfo;
  v15 = [(GTUnsupportedFenumInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fenum, a3);
    objc_storeStrong(&v16->_category, a4);
    objc_storeStrong(&v16->_customMessage, a5);
    objc_storeStrong(&v16->_customRecoverySuggestion, a6);
  }

  return v16;
}

- (GTUnsupportedFenumInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GTUnsupportedFenumInfo;
  v5 = [(GTUnsupportedFenumInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fenum"];
    fenum = v5->_fenum;
    v5->_fenum = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customMessage"];
    customMessage = v5->_customMessage;
    v5->_customMessage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customRecoverySuggestion"];
    customRecoverySuggestion = v5->_customRecoverySuggestion;
    v5->_customRecoverySuggestion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fenum = self->_fenum;
  v5 = a3;
  [v5 encodeObject:fenum forKey:@"fenum"];
  [v5 encodeObject:self->_category forKey:@"category"];
  [v5 encodeObject:self->_customMessage forKey:@"customMessage"];
  [v5 encodeObject:self->_customRecoverySuggestion forKey:@"customRecoverySuggestion"];
}

- (id)asError
{
  if ([(NSString *)self->_fenum isEqualToString:&stru_1000413E8])
  {
    fenum = 0;
  }

  else
  {
    fenum = self->_fenum;
  }

  v4 = PrettifyFenumString(fenum, 0, 1);
  if ([(NSString *)self->_category isEqualToString:&stru_1000413E8])
  {
    category = 0;
  }

  else
  {
    category = self->_category;
  }

  v6 = category;
  if ([(NSString *)self->_customMessage isEqualToString:&stru_1000413E8])
  {
    customMessage = 0;
  }

  else
  {
    customMessage = self->_customMessage;
  }

  v8 = customMessage;
  if ([(NSString *)self->_customRecoverySuggestion isEqualToString:&stru_1000413E8])
  {
    customRecoverySuggestion = 0;
  }

  else
  {
    customRecoverySuggestion = self->_customRecoverySuggestion;
  }

  v10 = customRecoverySuggestion;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = v11;
  if (v6)
  {
    v13 = [NSString stringWithFormat:@"Capturing %@ is not supported.", v6];
    [v12 setObject:v13 forKey:NSLocalizedDescriptionKey];

    if (!v4)
    {
      goto LABEL_19;
    }

    v14 = [NSString stringWithFormat:@"Unsupported method: %@", v4];
    v15 = NSLocalizedFailureReasonErrorKey;
  }

  else
  {
    if (!v4)
    {
      [v11 setObject:@"Capturing disabled. Unsupported API usage." forKey:NSLocalizedDescriptionKey];
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v14 = [NSString stringWithFormat:@"Capturing %@ is not supported.", v4];
    v15 = NSLocalizedDescriptionKey;
  }

  [v12 setObject:v14 forKey:v15];

LABEL_19:
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_20:
  v16 = [v12 objectForKey:NSLocalizedFailureReasonErrorKey];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 stringByAppendingFormat:@"\n\n%@", v8];
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;
  [v12 setObject:v18 forKey:NSLocalizedFailureReasonErrorKey];

LABEL_24:
  if (!v10)
  {
    v10 = @"To enable capturing, disable calls to unsupported APIs and relaunch your application.";
  }

  [v12 setObject:v10 forKey:NSLocalizedRecoverySuggestionErrorKey];
  v20 = [NSError errorWithDomain:@"com.apple.gputools.capture" code:1000 userInfo:v12];

  return v20;
}

@end