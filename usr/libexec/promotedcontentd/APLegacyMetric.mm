@interface APLegacyMetric
- (APLegacyMetric)init;
- (APLegacyMetric)initWithType:(int64_t)type purpose:(int64_t)purpose contentData:(id)data context:(id)context bundleIdentifier:(id)identifier properties:(id)properties;
- (NSString)contentIdentifier;
- (NSString)contextIdentifier;
- (void)setProperty:(id)property forKey:(id)key internal:(BOOL)internal;
@end

@implementation APLegacyMetric

- (APLegacyMetric)initWithType:(int64_t)type purpose:(int64_t)purpose contentData:(id)data context:(id)context bundleIdentifier:(id)identifier properties:(id)properties
{
  dataCopy = data;
  contextCopy = context;
  propertiesCopy = properties;
  v30.receiver = self;
  v30.super_class = APLegacyMetric;
  v17 = [(APLegacyMetric *)&v30 init];
  if (v17)
  {
    v18 = +[NSDate date];
    timestamp = v17->_timestamp;
    v17->_timestamp = v18;

    v20 = +[NSUUID UUID];
    uUIDString = [v20 UUIDString];
    handle = v17->handle;
    v17->handle = uUIDString;

    v17->_metric = type;
    objc_storeStrong(&v17->_contentData, data);
    objc_storeStrong(&v17->_context, context);
    v23 = +[NSDictionary dictionary];
    properties = v17->_properties;
    v17->_properties = v23;

    v25 = +[NSDictionary dictionary];
    internalProperties = v17->_internalProperties;
    v17->_internalProperties = v25;

    v17->_purpose = purpose;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1002E4638;
    v28[3] = &unk_10047DA60;
    v29 = v17;
    [propertiesCopy enumerateKeysAndObjectsUsingBlock:v28];
  }

  return v17;
}

- (void)setProperty:(id)property forKey:(id)key internal:(BOOL)internal
{
  internalCopy = internal;
  propertyCopy = property;
  keyCopy = key;
  if (internalCopy)
  {
    [(APLegacyMetric *)self internalProperties];
  }

  else
  {
    [(APLegacyMetric *)self properties];
  }
  v9 = ;
  v10 = [v9 mutableCopy];

  if (propertyCopy)
  {
    [v10 setObject:propertyCopy forKey:keyCopy];
  }

  else
  {
    [v10 removeObjectForKey:keyCopy];
  }

  v11 = [v10 copy];
  if (internalCopy)
  {
    [(APLegacyMetric *)self setInternalProperties:v11];
  }

  else
  {
    [(APLegacyMetric *)self setProperties:v11];
  }
}

- (APLegacyMetric)init
{
  v5.receiver = self;
  v5.super_class = APLegacyMetric;
  v2 = [(APLegacyMetric *)&v5 init];
  if (v2)
  {
    v3 = +[NSDate date];
    [(APLegacyMetric *)v2 setTimestamp:v3];
  }

  return v2;
}

- (NSString)contentIdentifier
{
  contentData = [(APLegacyMetric *)self contentData];
  content = [contentData content];
  identifier = [content identifier];

  return identifier;
}

- (NSString)contextIdentifier
{
  context = [(APLegacyMetric *)self context];
  identifier = [context identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

@end