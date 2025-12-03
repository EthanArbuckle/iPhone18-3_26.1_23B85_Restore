@interface NRFeatureFlags
+ (id)sharedInstance;
- (NRFeatureFlags)init;
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation NRFeatureFlags

+ (id)sharedInstance
{
  if (qword_1001B3818 != -1)
  {
    sub_1000FFF70();
  }

  v3 = qword_1001B3810;

  return v3;
}

- (NRFeatureFlags)init
{
  v4.receiver = self;
  v4.super_class = NRFeatureFlags;
  v2 = [(NRFeatureFlags *)&v4 init];
  if (v2)
  {
    v2->_networkRelayPairing = _os_feature_enabled_impl();
    v2->_albertReportPairingMode = _os_feature_enabled_impl();
    v2->_watchTransfer = _os_feature_enabled_impl();
  }

  return v2;
}

- (id)description
{
  _dictionaryRepresentation = [(NRFeatureFlags *)self _dictionaryRepresentation];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100052A5C;
  v11 = &unk_1001778F0;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  [_dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:&v8];
  v4 = [NSString alloc];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 initWithFormat:@"NRFeatureFlags:- %@", v5, v8, v9, v10, v11];

  return v6;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  outCount = 0;
  v4 = objc_opt_class();
  v5 = class_copyPropertyList(v4, &outCount);
  v6 = v5;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v8 = [[NSString alloc] initWithCString:property_getName(v6[i]) encoding:4];
      v9 = [(NRFeatureFlags *)self valueForKey:v8];
      v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 BOOLValue]);
      [v3 setObject:v10 forKeyedSubscript:v8];
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  free(v6);
LABEL_7:

  return v3;
}

@end