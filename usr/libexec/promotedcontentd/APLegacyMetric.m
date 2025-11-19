@interface APLegacyMetric
- (APLegacyMetric)init;
- (APLegacyMetric)initWithType:(int64_t)a3 purpose:(int64_t)a4 contentData:(id)a5 context:(id)a6 bundleIdentifier:(id)a7 properties:(id)a8;
- (NSString)contentIdentifier;
- (NSString)contextIdentifier;
- (void)setProperty:(id)a3 forKey:(id)a4 internal:(BOOL)a5;
@end

@implementation APLegacyMetric

- (APLegacyMetric)initWithType:(int64_t)a3 purpose:(int64_t)a4 contentData:(id)a5 context:(id)a6 bundleIdentifier:(id)a7 properties:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v30.receiver = self;
  v30.super_class = APLegacyMetric;
  v17 = [(APLegacyMetric *)&v30 init];
  if (v17)
  {
    v18 = +[NSDate date];
    timestamp = v17->_timestamp;
    v17->_timestamp = v18;

    v20 = +[NSUUID UUID];
    v21 = [v20 UUIDString];
    handle = v17->handle;
    v17->handle = v21;

    v17->_metric = a3;
    objc_storeStrong(&v17->_contentData, a5);
    objc_storeStrong(&v17->_context, a6);
    v23 = +[NSDictionary dictionary];
    properties = v17->_properties;
    v17->_properties = v23;

    v25 = +[NSDictionary dictionary];
    internalProperties = v17->_internalProperties;
    v17->_internalProperties = v25;

    v17->_purpose = a4;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1002E4638;
    v28[3] = &unk_10047DA60;
    v29 = v17;
    [v16 enumerateKeysAndObjectsUsingBlock:v28];
  }

  return v17;
}

- (void)setProperty:(id)a3 forKey:(id)a4 internal:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  if (v5)
  {
    [(APLegacyMetric *)self internalProperties];
  }

  else
  {
    [(APLegacyMetric *)self properties];
  }
  v9 = ;
  v10 = [v9 mutableCopy];

  if (v12)
  {
    [v10 setObject:v12 forKey:v8];
  }

  else
  {
    [v10 removeObjectForKey:v8];
  }

  v11 = [v10 copy];
  if (v5)
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
  v2 = [(APLegacyMetric *)self contentData];
  v3 = [v2 content];
  v4 = [v3 identifier];

  return v4;
}

- (NSString)contextIdentifier
{
  v2 = [(APLegacyMetric *)self context];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

@end