@interface NIServerFindingServiceObserverRelay
+ (id)sharedInstance;
- (NIServerFindingServiceObserverRelay)init;
- (id).cxx_construct;
- (id)observerTokens;
- (void)_cleanupStaleObservers;
- (void)addObserver:(id)observer identifier:(id)identifier token:(id)token;
- (void)relayToObserversForToken:(id)token blockToRelay:(id)relay;
- (void)removeObserverWithIdentifier:(id)identifier;
@end

@implementation NIServerFindingServiceObserverRelay

+ (id)sharedInstance
{
  if (qword_1009F25A8 != -1)
  {
    sub_1004B08B8();
  }

  v3 = qword_1009F25A0;

  return v3;
}

- (NIServerFindingServiceObserverRelay)init
{
  v8.receiver = self;
  v8.super_class = NIServerFindingServiceObserverRelay;
  v2 = [(NIServerFindingServiceObserverRelay *)&v8 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;
  }

  return v2;
}

- (void)addObserver:(id)observer identifier:(id)identifier token:(id)token
{
  observerCopy = observer;
  identifierCopy = identifier;
  tokenCopy = token;
  std::mutex::lock((self + 24));
  [(NIServerFindingServiceObserverRelay *)self _cleanupStaleObservers];
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-ses,Add observer to relay: %{public}@", &v14, 0xCu);
  }

  [*(self + 1) setObject:observerCopy forKey:identifierCopy];
  [*(self + 2) setObject:tokenCopy forKey:identifierCopy];
  std::mutex::unlock((self + 24));
  v12 = +[NIServerFindingServicePool sharedInstance];
  v13 = [v12 serviceForToken:tokenCopy createIfNotExists:0];
  [v13 relayInfoToNewObserver:observerCopy];
}

- (void)removeObserverWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  std::mutex::lock((self + 24));
  [(NIServerFindingServiceObserverRelay *)self _cleanupStaleObservers];
  v5 = [*(self + 2) objectForKey:identifierCopy];

  if (v5)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-ses,Remove observer from relay: %{public}@", &v7, 0xCu);
    }

    [*(self + 1) removeObjectForKey:identifierCopy];
    [*(self + 2) removeObjectForKey:identifierCopy];
  }

  std::mutex::unlock((self + 24));
}

- (id)observerTokens
{
  std::mutex::lock((self + 24));
  [(NIServerFindingServiceObserverRelay *)self _cleanupStaleObservers];
  allValues = [*(self + 2) allValues];
  std::mutex::unlock((self + 24));

  return allValues;
}

- (void)relayToObserversForToken:(id)token blockToRelay:(id)relay
{
  tokenCopy = token;
  relayCopy = relay;
  std::mutex::lock((self + 24));
  [(NIServerFindingServiceObserverRelay *)self _cleanupStaleObservers];
  keyEnumerator = [*(self + 1) keyEnumerator];
  for (i = 0; ; i = nextObject)
  {
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v10 = [*(self + 1) objectForKey:nextObject];
    if (v10)
    {
      v11 = [*(self + 2) objectForKey:nextObject];
      v12 = v11;
      if (v11)
      {
        if ([v11 isEqual:tokenCopy])
        {
          relayCopy[2](relayCopy, v10);
        }
      }
    }
  }

  std::mutex::unlock((self + 24));
}

- (void)_cleanupStaleObservers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100241B3C;
  v11 = sub_100241B4C;
  v12 = objc_opt_new();
  v3 = *(self + 2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10024BE3C;
  v6[3] = &unk_1009A0460;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024BEC8;
  v5[3] = &unk_10099D008;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
  _Block_object_dispose(&v7, 8);
}

- (id).cxx_construct
{
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 10) = 0;
  return self;
}

@end