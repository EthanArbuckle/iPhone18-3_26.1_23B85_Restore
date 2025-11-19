@interface APCacheableBaseObject
+ (id)cacheKeyForIdentifier:(id)a3;
+ (id)deserializeFromData:(id)a3 ignoreKeys:(id)a4;
+ (id)proxyForIdentifier:(id)a3;
- (APCacheableBaseObject)initWithCoder:(id)a3;
- (APCacheableBaseObject)initWithIdentifier:(id)a3;
- (NSString)cacheKey;
- (id)proxy;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APCacheableBaseObject

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APCacheableBaseObject *)self identifier];
  [v4 encodeObject:v5 forKey:@"_identifier"];
}

- (APCacheableBaseObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APCacheableBaseObject *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (APCacheableBaseObject)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(APCacheableBaseObject *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSString)cacheKey
{
  v3 = objc_opt_class();
  v4 = [(APCacheableBaseObject *)self identifier];
  v5 = [v3 cacheKeyForIdentifier:v4];

  return v5;
}

+ (id)cacheKeyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 kind];
  v6 = [v4 stringByAppendingPathExtension:v5];

  return v6;
}

- (id)serialize
{
  [(APCacheableBaseObject *)self lockObject];
  v9 = 0;
  v3 = [_APKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v4 = v9;
  [(APCacheableBaseObject *)self unlockObject];
  if (v4 || ![v3 length])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      *buf = 138543619;
      v11 = v6;
      v12 = 2113;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to serialize object %{public}@. Error: %{private}@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v5 = objc_getAssociatedObject(v3, "_memorySize");
    [(APCacheableBaseObject *)self setObjectSize:[v5 unsignedIntegerValue]];
    v7 = v3;
  }

  return v7;
}

+ (id)deserializeFromData:(id)a3 ignoreKeys:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v5 count])
  {
    v17 = 0;
    v7 = [[_APKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v17];

    v8 = v17;
    if (v7)
    {
      [v7 setIgnoreKeys:v5];
      [v7 setRequiresSecureCoding:1];
      [v7 setDecodingFailurePolicy:1];
      v9 = [NSSet setWithObject:objc_opt_class()];
      v16 = v8;
      v10 = [v7 decodeTopLevelObjectOfClasses:v9 forKey:NSKeyedArchiveRootObjectKey error:&v16];
      v11 = v16;

      v8 = v11;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];

    v8 = v15;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    v12 = v10;
    goto LABEL_13;
  }

LABEL_10:
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to deserialize object. Error: %{private}@", buf, 0xCu);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (id)proxyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 cacheKeyForIdentifier:v4];
  v6 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v7 = [APCacheableObjectProxy proxyWithCacheKey:v5 object:0 identifier:v4 inPersistentStore:v6];

  return v7;
}

- (id)proxy
{
  v3 = [(APCacheableBaseObject *)self cacheKey];
  v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v5 = [APCacheableObjectProxy proxyWithCacheKey:v3 object:self inPersistentStore:v4];

  return v5;
}

@end