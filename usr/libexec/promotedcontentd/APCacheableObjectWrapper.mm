@interface APCacheableObjectWrapper
- (APCacheableObjectWrapper)initWithCoder:(id)a3;
- (APCacheableObjectWrapper)initWithObject:(id)a3 identifier:(id)a4;
- (int64_t)garbageCollect;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APCacheableObjectWrapper

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = APCacheableObjectWrapper;
  v4 = a3;
  [(APCacheableBaseObject *)&v6 encodeWithCoder:v4];
  v5 = [(APCacheableObjectWrapper *)self object:v6.receiver];
  [v4 encodeObject:v5 forKey:@"object"];
}

- (APCacheableObjectWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APCacheableObjectWrapper;
  v5 = [(APCacheableBaseObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_msgSend(objc_opt_class() forKey:{"objectClass"), @"object"}];
    object = v5->_object;
    v5->_object = v6;
  }

  return v5;
}

- (APCacheableObjectWrapper)initWithObject:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = [(APCacheableBaseObject *)self initWithIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, a3);
  }

  return v9;
}

- (int64_t)garbageCollect
{
  if (![(APCacheableObjectWrapper *)self canBeGarbageCollected])
  {
    return 0;
  }

  if (sub_100396B54(self))
  {
    return 1;
  }

  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() objectClass];
    v5 = objc_opt_class();
    v6 = [(APCacheableBaseObject *)self identifier];
    v7 = 138478083;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to remove '%{private}@' '%{public}@'.", &v7, 0x16u);
  }

  return -1;
}

@end