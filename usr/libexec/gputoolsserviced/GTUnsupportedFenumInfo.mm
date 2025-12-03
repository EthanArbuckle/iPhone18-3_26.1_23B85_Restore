@interface GTUnsupportedFenumInfo
- (GTUnsupportedFenumInfo)initWithCoder:(id)coder;
- (GTUnsupportedFenumInfo)initWithFenum:(id)fenum category:(id)category customMessage:(id)message customRecoverySuggestion:(id)suggestion;
- (id)asError;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTUnsupportedFenumInfo

- (GTUnsupportedFenumInfo)initWithFenum:(id)fenum category:(id)category customMessage:(id)message customRecoverySuggestion:(id)suggestion
{
  fenumCopy = fenum;
  categoryCopy = category;
  messageCopy = message;
  suggestionCopy = suggestion;
  v18.receiver = self;
  v18.super_class = GTUnsupportedFenumInfo;
  v15 = [(GTUnsupportedFenumInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fenum, fenum);
    objc_storeStrong(&v16->_category, category);
    objc_storeStrong(&v16->_customMessage, message);
    objc_storeStrong(&v16->_customRecoverySuggestion, suggestion);
  }

  return v16;
}

- (GTUnsupportedFenumInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTUnsupportedFenumInfo;
  v5 = [(GTUnsupportedFenumInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fenum"];
    fenum = v5->_fenum;
    v5->_fenum = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customMessage"];
    customMessage = v5->_customMessage;
    v5->_customMessage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customRecoverySuggestion"];
    customRecoverySuggestion = v5->_customRecoverySuggestion;
    v5->_customRecoverySuggestion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fenum = self->_fenum;
  coderCopy = coder;
  [coderCopy encodeObject:fenum forKey:@"fenum"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_customMessage forKey:@"customMessage"];
  [coderCopy encodeObject:self->_customRecoverySuggestion forKey:@"customRecoverySuggestion"];
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