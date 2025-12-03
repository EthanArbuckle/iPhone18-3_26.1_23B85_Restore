@interface APCacheableObjectProxy
+ (BOOL)objectIsLoaded:(id)loaded;
+ (id)proxyWithCacheKey:(id)key object:(id)object identifier:(id)identifier inPersistentStore:(id)store;
- (APCacheableBaseObject)proxyObject;
- (APPersistentCachedStoreProtocol)persistentStore;
- (NSString)identifier;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation APCacheableObjectProxy

+ (id)proxyWithCacheKey:(id)key object:(id)object identifier:(id)identifier inPersistentStore:(id)store
{
  keyCopy = key;
  objectCopy = object;
  storeCopy = store;
  identifierCopy = identifier;
  v13 = [APCacheableObjectProxy alloc];
  cacheKey = v13->_cacheKey;
  v13->_cacheKey = keyCopy;
  v15 = keyCopy;

  proxyObject = v13->_proxyObject;
  v13->_proxyObject = objectCopy;
  v17 = objectCopy;

  objc_storeWeak(&v13->_persistentStore, storeCopy);
  v18 = [identifierCopy copy];

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
      cacheKey = [(APCacheableObjectProxy *)self cacheKey];
      v13 = 138543362;
      v14 = cacheKey;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Cacheable proxy is loading object %{public}@.", &v13, 0xCu);
    }

    provideIgnorableKeyNamesBlock = [(APCacheableObjectProxy *)self provideIgnorableKeyNamesBlock];

    if (provideIgnorableKeyNamesBlock)
    {
      provideIgnorableKeyNamesBlock2 = [(APCacheableObjectProxy *)self provideIgnorableKeyNamesBlock];
      provideIgnorableKeyNamesBlock = provideIgnorableKeyNamesBlock2[2]();
    }

    persistentStore = [(APCacheableObjectProxy *)self persistentStore];
    cacheKey2 = [(APCacheableObjectProxy *)self cacheKey];
    v3 = [persistentStore objectForKey:cacheKey2 ignoreKeys:provideIgnorableKeyNamesBlock];

    if (!v3)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        cacheKey3 = [(APCacheableObjectProxy *)self cacheKey];
        v13 = 138543362;
        v14 = cacheKey3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cacheable proxy failed to get object %{public}@ from cache.", &v13, 0xCu);
      }
    }
  }

  objc_storeStrong(&self->_proxyObject, v3);

  return v3;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  proxyObject = [(APCacheableObjectProxy *)self proxyObject];
  if (proxyObject)
  {
    [invocationCopy setTarget:proxyObject];
    [invocationCopy invoke];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  proxyObject = [(APCacheableObjectProxy *)self proxyObject];
  v5 = proxyObject;
  if (!proxyObject || ([proxyObject methodSignatureForSelector:selector], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
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
    identifier = identifier;
  }

  else
  {
    proxyObject = [(APCacheableObjectProxy *)self proxyObject];
    identifier = [proxyObject identifier];
  }

  return identifier;
}

+ (BOOL)objectIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  v4 = objc_opt_class();
  if ([v4 isEqual:objc_opt_class()])
  {
    _proxiedObjectIsAlive = [loadedCopy _proxiedObjectIsAlive];
  }

  else
  {
    _proxiedObjectIsAlive = 0;
  }

  return _proxiedObjectIsAlive;
}

- (APPersistentCachedStoreProtocol)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

@end