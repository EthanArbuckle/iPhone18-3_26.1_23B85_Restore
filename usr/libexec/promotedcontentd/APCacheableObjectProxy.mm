@interface APCacheableObjectProxy
+ (BOOL)objectIsLoaded:(id)a3;
+ (id)proxyWithCacheKey:(id)a3 object:(id)a4 identifier:(id)a5 inPersistentStore:(id)a6;
- (APCacheableBaseObject)proxyObject;
- (APPersistentCachedStoreProtocol)persistentStore;
- (NSString)identifier;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation APCacheableObjectProxy

+ (id)proxyWithCacheKey:(id)a3 object:(id)a4 identifier:(id)a5 inPersistentStore:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [APCacheableObjectProxy alloc];
  cacheKey = v13->_cacheKey;
  v13->_cacheKey = v9;
  v15 = v9;

  proxyObject = v13->_proxyObject;
  v13->_proxyObject = v10;
  v17 = v10;

  objc_storeWeak(&v13->_persistentStore, v11);
  v18 = [v12 copy];

  identifier = v13->_identifier;
  v13->_identifier = v18;

  return v13;
}

- (APCacheableBaseObject)proxyObject
{
  v3 = self->_proxyObject;
  if (!v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(APCacheableObjectProxy *)self cacheKey];
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Cacheable proxy is loading object %{public}@.", &v13, 0xCu);
    }

    v6 = [(APCacheableObjectProxy *)self provideIgnorableKeyNamesBlock];

    if (v6)
    {
      v7 = [(APCacheableObjectProxy *)self provideIgnorableKeyNamesBlock];
      v6 = v7[2]();
    }

    v8 = [(APCacheableObjectProxy *)self persistentStore];
    v9 = [(APCacheableObjectProxy *)self cacheKey];
    v3 = [v8 objectForKey:v9 ignoreKeys:v6];

    if (!v3)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(APCacheableObjectProxy *)self cacheKey];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cacheable proxy failed to get object %{public}@ from cache.", &v13, 0xCu);
      }
    }
  }

  objc_storeStrong(&self->_proxyObject, v3);

  return v3;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(APCacheableObjectProxy *)self proxyObject];
  if (v4)
  {
    [v5 setTarget:v4];
    [v5 invoke];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(APCacheableObjectProxy *)self proxyObject];
  v5 = v4;
  if (!v4 || ([v4 methodSignatureForSelector:a3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [NSMethodSignature signatureWithObjCTypes:"C@:"];
  }

  return v6;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v4 = [(APCacheableObjectProxy *)self proxyObject];
    v3 = [v4 identifier];
  }

  return v3;
}

+ (BOOL)objectIsLoaded:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if ([v4 isEqual:objc_opt_class()])
  {
    v5 = [v3 _proxiedObjectIsAlive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (APPersistentCachedStoreProtocol)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

@end