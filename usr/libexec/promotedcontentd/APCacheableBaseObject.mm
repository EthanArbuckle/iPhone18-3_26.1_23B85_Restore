@interface APCacheableBaseObject
+ (id)cacheKeyForIdentifier:(id)identifier;
+ (id)deserializeFromData:(id)data ignoreKeys:(id)keys;
+ (id)proxyForIdentifier:(id)identifier;
- (APCacheableBaseObject)initWithCoder:(id)coder;
- (APCacheableBaseObject)initWithIdentifier:(id)identifier;
- (NSString)cacheKey;
- (id)proxy;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APCacheableBaseObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(APCacheableBaseObject *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
}

- (APCacheableBaseObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(APCacheableBaseObject *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (APCacheableBaseObject)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(APCacheableBaseObject *)self init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSString)cacheKey
{
  v3 = objc_opt_class();
  identifier = [(APCacheableBaseObject *)self identifier];
  v5 = [v3 cacheKeyForIdentifier:identifier];

  return v5;
}

+ (id)cacheKeyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kind = [self kind];
  v6 = [identifierCopy stringByAppendingPathExtension:kind];

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
      identifier = [(APCacheableBaseObject *)self identifier];
      *buf = 138543619;
      v11 = identifier;
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

+ (id)deserializeFromData:(id)data ignoreKeys:(id)keys
{
  keysCopy = keys;
  dataCopy = data;
  if ([keysCopy count])
  {
    v17 = 0;
    v7 = [[_APKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v17];

    v8 = v17;
    if (v7)
    {
      [v7 setIgnoreKeys:keysCopy];
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
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v15];

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

+ (id)proxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self cacheKeyForIdentifier:identifierCopy];
  v6 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v7 = [APCacheableObjectProxy proxyWithCacheKey:v5 object:0 identifier:identifierCopy inPersistentStore:v6];

  return v7;
}

- (id)proxy
{
  cacheKey = [(APCacheableBaseObject *)self cacheKey];
  v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v5 = [APCacheableObjectProxy proxyWithCacheKey:cacheKey object:self inPersistentStore:v4];

  return v5;
}

@end