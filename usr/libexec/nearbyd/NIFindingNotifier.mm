@interface NIFindingNotifier
- (NIFindingNotifier)initWithParentSession:(id)session;
- (void)notifyDiscoveredNearbyObjectWithToken:(id)token sharedConfigurationData:(id)data;
- (void)notifyRemovedNearbyObjectWithToken:(id)token;
- (void)notifyUpdatedHeadingForLocalDevice:(id)device;
- (void)notifyUpdatedLocation:(id)location forNearbyObjectWithToken:(id)token;
- (void)notifyUpdatedLocationForLocalDevice:(id)device;
@end

@implementation NIFindingNotifier

- (NIFindingNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NIFindingNotifier;
  v5 = [(NIFindingNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyDiscoveredNearbyObjectWithToken:(id)token sharedConfigurationData:(id)data
{
  tokenCopy = token;
  dataCopy = data;
  v9 = dataCopy;
  if (tokenCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2863 description:{@"Invalid parameter not satisfying: %@", @"token"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v23 = +[NSAssertionHandler currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2864 description:{@"Invalid parameter not satisfying: %@", @"configurationData"}];

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v35[0] = @"FindingEventDictKey_EventType";
    v35[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v36[0] = &off_1009C41A8;
    v36[1] = tokenCopy;
    v35[2] = @"FindingEventDictKey_SharedConfigurationData";
    v36[2] = v9;
    v11 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    if (+[NIPlatformInfo isInternalBuild])
    {
      getInternalLogObject = [WeakRetained getInternalLogObject];
      if (os_log_type_enabled(getInternalLogObject, OS_LOG_TYPE_DEFAULT))
      {
        getInternalIdentifier = [WeakRetained getInternalIdentifier];
        v14 = sub_10034A49C([WeakRetained internalState]);
        descriptionInternal = [tokenCopy descriptionInternal];
        *buf = 138413058;
        v28 = getInternalIdentifier;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = descriptionInternal;
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&_mh_execute_header, getInternalLogObject, OS_LOG_TYPE_DEFAULT, "Client: notifyDiscoveredNearbyObject STARTED [%@]. State: %@. Token: %@. Data: %@", buf, 0x2Au);
      }
    }

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003567E0;
    block[3] = &unk_10098A2E8;
    v17 = WeakRetained;
    v25 = v17;
    v18 = v11;
    v26 = v18;
    dispatch_sync(getInternalConnectionQueue, block);

    if (+[NIPlatformInfo isInternalBuild])
    {
      getInternalLogObject2 = [v17 getInternalLogObject];
      if (os_log_type_enabled(getInternalLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        getInternalIdentifier2 = [v17 getInternalIdentifier];
        *buf = 138412290;
        v28 = getInternalIdentifier2;
        _os_log_impl(&_mh_execute_header, getInternalLogObject2, OS_LOG_TYPE_DEFAULT, "Client: notifyDiscoveredNearbyObject FINISHED [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2868 description:@"Parent session is nil"];
  }
}

- (void)notifyRemovedNearbyObjectWithToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2893 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v28[0] = @"FindingEventDictKey_EventType";
    v28[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v29[0] = &off_1009C41C0;
    v29[1] = tokenCopy;
    v7 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    if (+[NIPlatformInfo isInternalBuild])
    {
      getInternalLogObject = [WeakRetained getInternalLogObject];
      if (os_log_type_enabled(getInternalLogObject, OS_LOG_TYPE_DEFAULT))
      {
        getInternalIdentifier = [WeakRetained getInternalIdentifier];
        v10 = sub_10034A49C([WeakRetained internalState]);
        descriptionInternal = [tokenCopy descriptionInternal];
        *buf = 138412802;
        v23 = getInternalIdentifier;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = descriptionInternal;
        _os_log_impl(&_mh_execute_header, getInternalLogObject, OS_LOG_TYPE_DEFAULT, "Client: notifyRemovedNearbyObject STARTED [%@]. State: %@. Token: %@", buf, 0x20u);
      }
    }

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100356C14;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v20 = v13;
    v14 = v7;
    v21 = v14;
    dispatch_sync(getInternalConnectionQueue, block);

    if (+[NIPlatformInfo isInternalBuild])
    {
      getInternalLogObject2 = [v13 getInternalLogObject];
      if (os_log_type_enabled(getInternalLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        getInternalIdentifier2 = [v13 getInternalIdentifier];
        *buf = 138412290;
        v23 = getInternalIdentifier2;
        _os_log_impl(&_mh_execute_header, getInternalLogObject2, OS_LOG_TYPE_DEFAULT, "Client: notifyRemovedNearbyObject FINISHED [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2897 description:@"Parent session is nil"];
  }
}

- (void)notifyUpdatedLocationForLocalDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2920 description:{@"Invalid parameter not satisfying: %@", @"location"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v15[0] = @"FindingEventDictKey_EventType";
    v15[1] = @"FindingEventDictKey_Location";
    v16[0] = &off_1009C4160;
    v16[1] = deviceCopy;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100356EAC;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v7;
    v9 = v7;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2924 description:@"Parent session is nil"];
  }
}

- (void)notifyUpdatedHeadingForLocalDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2937 description:{@"Invalid parameter not satisfying: %@", @"heading"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v15[0] = @"FindingEventDictKey_EventType";
    v15[1] = @"FindingEventDictKey_Heading";
    v16[0] = &off_1009C4178;
    v16[1] = deviceCopy;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100357144;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v7;
    v9 = v7;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2941 description:@"Parent session is nil"];
  }
}

- (void)notifyUpdatedLocation:(id)location forNearbyObjectWithToken:(id)token
{
  locationCopy = location;
  tokenCopy = token;
  v9 = tokenCopy;
  if (locationCopy)
  {
    if (tokenCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2954 description:{@"Invalid parameter not satisfying: %@", @"location"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2955 description:{@"Invalid parameter not satisfying: %@", @"token"}];

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v20[0] = @"FindingEventDictKey_EventType";
    v20[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v21[0] = &off_1009C4190;
    v21[1] = v9;
    v20[2] = @"FindingEventDictKey_Location";
    v21[2] = locationCopy;
    v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100357450;
    block[3] = &unk_10098A2E8;
    v18 = WeakRetained;
    v19 = v11;
    v13 = v11;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2959 description:@"Parent session is nil"];
  }
}

@end