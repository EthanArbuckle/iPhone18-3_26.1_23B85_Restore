@interface SCPermissionsService
- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)policy;
- (SCPermissionsService)init;
- (void)_stopSharingEachParticipant:(id)participant fromSource:(id)source completion:(id)completion;
- (void)_stopSharingParticipants:(id)participants fromSource:(id)source completion:(id)completion;
- (void)fetchCompletedForSource:(id)source;
- (void)fetchPermissionsFromSources:(id)sources includingErrors:(id)errors queue:(id)queue completion:(id)completion;
- (void)fetchSharedResourcesOnQueue:(id)queue withCompletion:(id)completion;
- (void)fetchStartedForSource:(id)source;
- (void)stopSharingParticipation:(id)participation fromSource:(id)source completion:(id)completion;
- (void)stopSharingWithParticipants:(id)participants completion:(id)completion;
- (void)verifyDataUsagePoliciesForSources:(id)sources queue:(id)queue completion:(id)completion;
@end

@implementation SCPermissionsService

- (SCPermissionsService)init
{
  v15.receiver = self;
  v15.super_class = SCPermissionsService;
  v2 = [(SCPermissionsService *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_permissionsLock._os_unfair_lock_opaque = 0;
    v4 = os_log_create("com.apple.DigitalSeparation", "SCPermissionsService");
    v5 = qword_100015148;
    qword_100015148 = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    priorityAttribute = v3->_priorityAttribute;
    v3->_priorityAttribute = v7;

    v9 = dispatch_queue_create("com.apple.safetycheckd.SCPermissionsService.dataUsageQueue", v3->_priorityAttribute);
    dataUsageQueue = v3->_dataUsageQueue;
    v3->_dataUsageQueue = v9;

    v11 = dispatch_queue_create("com.apple.safetycheckd.SCPermissionsService.workQueue", v3->_priorityAttribute);
    workQueue = v3->_workQueue;
    v3->_workQueue = v11;

    v13 = +[NSMutableDictionary dictionary];
    [(SCPermissionsService *)v3 setFetchStartTimesBySource:v13];
  }

  return v3;
}

- (void)fetchSharedResourcesOnQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = objc_alloc_init(DSSourceRepository);
  sources = [v8 sources];

  if (MGGetBoolAnswer())
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002DE8;
    v10[3] = &unk_1000104F8;
    objc_copyWeak(&v13, &location);
    v11 = queueCopy;
    v12 = completionCopy;
    [(SCPermissionsService *)self verifyDataUsagePoliciesForSources:sources queue:v11 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SCPermissionsService *)self fetchPermissionsFromSources:sources includingErrors:&__NSArray0__struct queue:queueCopy completion:completionCopy];
  }
}

- (void)verifyDataUsagePoliciesForSources:(id)sources queue:(id)queue completion:(id)completion
{
  sourcesCopy = sources;
  queue = queue;
  completionCopy = completion;
  v38 = +[NSMutableArray array];
  v39 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [sourcesCopy count]);
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [sourcesCopy count]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v9 = sourcesCopy;
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        name = [v14 name];
        v16 = [DSSourceDescriptor sourceDescriptorForSource:name];

        dataUsageBundleIdentifier = [v16 dataUsageBundleIdentifier];
        if (dataUsageBundleIdentifier && [(SCPermissionsService *)self shouldAllowBundleIDWithNoPolicy:dataUsageBundleIdentifier])
        {
          name2 = [v14 name];
          [v39 setObject:name2 forKeyedSubscript:dataUsageBundleIdentifier];
        }

        name3 = [v14 name];
        [v8 setObject:v14 forKeyedSubscript:name3];
      }

      v11 = [v9 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v11);
  }

  v20 = v39;
  if ([v39 count])
  {
    v33 = v9;
    v21 = [[CoreTelephonyClient alloc] initWithQueue:self->_dataUsageQueue];
    v22 = dispatch_group_create();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obja = [v39 allKeys];
    v23 = [obja countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v50 + 1) + 8 * j);
          dispatch_group_enter(v22);
          v28 = [NSSet setWithObject:v27];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_100003330;
          v44[3] = &unk_100010520;
          v45 = v39;
          v46 = v27;
          v47 = v38;
          v48 = v22;
          v49 = v8;
          [v21 getLocalPolicies:v28 completion:v44];
        }

        v24 = [obja countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v24);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000036AC;
    block[3] = &unk_100010548;
    v29 = completionCopy;
    v43 = completionCopy;
    v41 = v8;
    v30 = v38;
    v42 = v38;
    queueCopy2 = queue;
    dispatch_group_notify(v22, queue, block);

    v20 = v39;
    v9 = v33;
  }

  else
  {
    v32 = sub_100002AF4();
    v29 = completionCopy;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "All sources have required data usage policies", buf, 2u);
    }

    v30 = v38;
    (*(completionCopy + 2))(completionCopy, v9, v38);
    queueCopy2 = queue;
  }
}

- (BOOL)shouldAllowBundleIDWithNoPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[DSUtilities allApps];
  v5 = ![policyCopy isEqualToString:@"com.apple.Health"] || objc_msgSend(v4, "containsObject:", policyCopy);

  return v5;
}

- (void)fetchPermissionsFromSources:(id)sources includingErrors:(id)errors queue:(id)queue completion:(id)completion
{
  sourcesCopy = sources;
  errorsCopy = errors;
  queueCopy = queue;
  completionCopy = completion;
  v12 = os_signpost_id_generate(qword_100015148);
  v13 = qword_100015148;
  v14 = v13;
  spid = v12;
  v15 = v12 - 1;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = +[NSMutableDictionary dictionary];
  v17 = [NSMutableArray arrayWithArray:errorsCopy];
  v18 = dispatch_group_create();
  objc_initWeak(&location, self);
  v19 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v45 = sourcesCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Fetching sharing permissions from sources: %{public}@", buf, 0xCu);
  }

  v20 = [sourcesCopy count];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B84;
  block[3] = &unk_1000105E8;
  v22 = v18;
  v38 = v22;
  v23 = sourcesCopy;
  v39 = v23;
  objc_copyWeak(&v42, &location);
  v24 = completionCopy;
  v25 = v17;
  v40 = v25;
  v26 = v16;
  v41 = v26;
  dispatch_apply(v20, workQueue, block);
  v27 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v22, v27))
  {
    v28 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
    {
      sub_100009764(v28);
    }

    v29 = [DSError errorWithCode:408];
    [v25 addObject:v29];

    v23 = 0;
  }

  v30 = qword_100015148;
  v31 = v30;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, spid, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  if ([v25 count])
  {
    v32 = [DSError errorWithCode:1 underlyingErrors:v25];
  }

  else
  {
    v32 = 0;
  }

  v33 = [v26 copy];
  (v24)[2](v24, v33, v32);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)fetchStartedForSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_permissionsLock);
  v5 = [NSNumber numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  fetchStartTimesBySource = [(SCPermissionsService *)self fetchStartTimesBySource];
  [fetchStartTimesBySource setObject:v5 forKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)fetchCompletedForSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_permissionsLock);
  fetchStartTimesBySource = [(SCPermissionsService *)self fetchStartTimesBySource];
  [fetchStartTimesBySource setObject:0 forKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&self->_permissionsLock);
}

- (void)stopSharingWithParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
  v33 = participantsCopy;
  allKeys = [participantsCopy allKeys];
  v7 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    *buf = 134217984;
    v55 = [allKeys count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "StopSharingWithParticipants:completion: stopping sharing of %ld sources", buf, 0xCu);
  }

  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v11 = objc_alloc_init(DSSourceRepository);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = allKeys;
  v12 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v12)
  {
    v13 = *v50;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [v11 objectForKeyedSubscript:v15];
        if (v16)
        {
          [v10 addObject:v16];
        }

        else
        {
          v17 = qword_100015148;
          if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v15;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Asked to stop sharing %@ but couldn't retrieve a source with that name", buf, 0xCu);
          }

          v18 = [DSError errorWithCode:2 sourceName:v15];
          [v9 addObject:v18];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v12);
  }

  v19 = dispatch_group_create();
  v20 = os_signpost_id_generate(qword_100015148);
  v21 = qword_100015148;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "stop", " enableTelemetry=YES ", buf, 2u);
  }

  v36 = v20;

  objc_initWeak(buf, self);
  v23 = [v10 count];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058D8;
  block[3] = &unk_100010688;
  v44 = v19;
  v25 = v10;
  v45 = v25;
  v26 = v9;
  v46 = v26;
  v47 = v33;
  v34 = v33;
  v27 = v19;
  objc_copyWeak(&v48, buf);
  dispatch_apply(v23, workQueue, block);
  v28 = self->_workQueue;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000061E0;
  v38[3] = &unk_1000106B0;
  v39 = v25;
  v40 = v26;
  v41 = completionCopy;
  v42 = v36;
  v29 = completionCopy;
  v30 = v26;
  v31 = v25;
  dispatch_group_notify(v27, v28, v38);

  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);
}

- (void)stopSharingParticipation:(id)participation fromSource:(id)source completion:(id)completion
{
  participationCopy = participation;
  sourceCopy = source;
  completionCopy = completion;
  v11 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    name = [sourceCopy name];
    v14 = 138412546;
    v15 = name;
    v16 = 2112;
    v17 = participationCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "stopSharingWithSource: %@ participants: %@", &v14, 0x16u);
  }

  if ([participationCopy count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SCPermissionsService *)self _stopSharingParticipants:participationCopy fromSource:sourceCopy completion:completionCopy];
  }

  else
  {
    [(SCPermissionsService *)self _stopSharingEachParticipant:participationCopy fromSource:sourceCopy completion:completionCopy];
  }
}

- (void)_stopSharingParticipants:(id)participants fromSource:(id)source completion:(id)completion
{
  participantsCopy = participants;
  sourceCopy = source;
  completionCopy = completion;
  v10 = os_signpost_id_generate(qword_100015148);
  name = [sourceCopy name];
  v12 = [name isEqualToString:DSSourceNameCalendars];

  if (v12)
  {
    v13 = qword_100015148;
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Calendars", " enableTelemetry=YES ", buf, 2u);
    }

LABEL_55:

    goto LABEL_61;
  }

  name2 = [sourceCopy name];
  v16 = [name2 isEqualToString:DSSourceNameFindMy];

  if (v16)
  {
    v17 = qword_100015148;
    v14 = v17;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.FindMy", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name3 = [sourceCopy name];
  v19 = [name3 isEqualToString:DSSourceNamePhotos];

  if (v19)
  {
    v20 = qword_100015148;
    v14 = v20;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Photos", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name4 = [sourceCopy name];
  v22 = [name4 isEqualToString:DSSourceNameHomeSharing];

  if (v22)
  {
    v23 = qword_100015148;
    v14 = v23;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Home", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name5 = [sourceCopy name];
  v25 = [name5 isEqualToString:DSSourceNameHealthSharing];

  if (v25)
  {
    v26 = qword_100015148;
    v14 = v26;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Health", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name6 = [sourceCopy name];
  v28 = [name6 isEqualToString:DSSourceNameNotes];

  if (v28)
  {
    v29 = qword_100015148;
    v14 = v29;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name7 = [sourceCopy name];
  v31 = [name7 isEqualToString:DSSourceNameZelkova];

  if (v31)
  {
    v32 = qword_100015148;
    v14 = v32;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Zelkova", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name8 = [sourceCopy name];
  v34 = [name8 isEqualToString:DSSourceNameActivity];

  if (v34)
  {
    v35 = qword_100015148;
    v14 = v35;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Activity", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name9 = [sourceCopy name];
  v37 = [name9 isEqualToString:DSSourceNamePassKeys];

  if (v37)
  {
    v38 = qword_100015148;
    v14 = v38;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Passkeys", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name10 = [sourceCopy name];
  v40 = [name10 isEqualToString:DSSourceNameItemSharing];

  if (v40)
  {
    v41 = qword_100015148;
    v14 = v41;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.ItemSharing", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  name11 = [sourceCopy name];
  v43 = [name11 isEqualToString:DSSourceNameMaps];

  v44 = qword_100015148;
  v14 = v44;
  if (v43)
  {
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Maps", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stopParticipants.Notes", " enableTelemetry=YES ", buf, 2u);
  }

  v45 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
  {
    sub_1000099C0(v45, sourceCopy);
  }

LABEL_61:
  v46 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v47 = v46;
    name12 = [sourceCopy name];
    *buf = 138478083;
    v58 = participantsCopy;
    v59 = 2114;
    v60 = name12;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "_stopSharingParticipants: %{private}@ from source %{public}@", buf, 0x16u);
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000073C8;
  v52[3] = &unk_1000106D8;
  v49 = sourceCopy;
  v53 = v49;
  v56 = v10;
  v50 = participantsCopy;
  v54 = v50;
  v51 = completionCopy;
  v55 = v51;
  [v49 stopSharingWithParticipants:v50 completion:v52];
}

- (void)_stopSharingEachParticipant:(id)participant fromSource:(id)source completion:(id)completion
{
  participantCopy = participant;
  sourceCopy = source;
  completionCopy = completion;
  v11 = +[NSMutableArray array];
  v12 = os_signpost_id_generate(qword_100015148);
  name = [sourceCopy name];
  v14 = [name isEqualToString:DSSourceNameCalendars];

  if (v14)
  {
    v15 = qword_100015148;
    v16 = v15;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Calendars";
LABEL_45:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, v17, " enableTelemetry=YES ", buf, 2u);
LABEL_46:

    goto LABEL_47;
  }

  name2 = [sourceCopy name];
  v19 = [name2 isEqualToString:DSSourceNameFindMy];

  if (v19)
  {
    v20 = qword_100015148;
    v16 = v20;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.FindMy";
    goto LABEL_45;
  }

  name3 = [sourceCopy name];
  v22 = [name3 isEqualToString:DSSourceNamePhotos];

  if (v22)
  {
    v23 = qword_100015148;
    v16 = v23;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Photos";
    goto LABEL_45;
  }

  name4 = [sourceCopy name];
  v25 = [name4 isEqualToString:DSSourceNameHomeSharing];

  if (v25)
  {
    v26 = qword_100015148;
    v16 = v26;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v26))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Home";
    goto LABEL_45;
  }

  name5 = [sourceCopy name];
  v28 = [name5 isEqualToString:DSSourceNameHealthSharing];

  if (v28)
  {
    v29 = qword_100015148;
    v16 = v29;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Health";
    goto LABEL_45;
  }

  name6 = [sourceCopy name];
  v31 = [name6 isEqualToString:DSSourceNameNotes];

  if (v31)
  {
    v32 = qword_100015148;
    v16 = v32;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Notes";
    goto LABEL_45;
  }

  name7 = [sourceCopy name];
  v34 = [name7 isEqualToString:DSSourceNameZelkova];

  if (v34)
  {
    v35 = qword_100015148;
    v16 = v35;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v35))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Zelkova";
    goto LABEL_45;
  }

  name8 = [sourceCopy name];
  v37 = [name8 isEqualToString:DSSourceNameActivity];

  if (v37)
  {
    v38 = qword_100015148;
    v16 = v38;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Activity";
    goto LABEL_45;
  }

  name9 = [sourceCopy name];
  v40 = [name9 isEqualToString:DSSourceNamePassKeys];

  if (v40)
  {
    v41 = qword_100015148;
    v16 = v41;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v41))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Passkeys";
    goto LABEL_45;
  }

  name10 = [sourceCopy name];
  v43 = [name10 isEqualToString:DSSourceNameItemSharing];

  if (v43)
  {
    v44 = qword_100015148;
    v16 = v44;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.ItemSharing";
    goto LABEL_45;
  }

  name11 = [sourceCopy name];
  v46 = [name11 isEqualToString:DSSourceNameMaps];

  v47 = qword_100015148;
  v16 = v47;
  if (v46)
  {
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v47))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = "stop.Maps";
    goto LABEL_45;
  }

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "stop.Notes", " enableTelemetry=YES ", buf, 2u);
  }

  v58 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
  {
    sub_100009B44(v58, sourceCopy);
  }

LABEL_47:
  v48 = dispatch_group_create();
  v49 = dispatch_queue_create("com.apple.safetycheckd.SCPermissionsService.stopSharingWorkQueue", self->_priorityAttribute);
  v50 = [participantCopy count];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000082C8;
  block[3] = &unk_100010728;
  v64 = v48;
  v65 = participantCopy;
  v66 = sourceCopy;
  v51 = v11;
  v67 = v51;
  v68 = v12;
  v52 = sourceCopy;
  v53 = participantCopy;
  v54 = v48;
  dispatch_apply(v50, v49, block);
  workQueue = self->_workQueue;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000092F4;
  v59[3] = &unk_100010750;
  v61 = completionCopy;
  v62 = v12;
  v60 = v51;
  v56 = completionCopy;
  v57 = v51;
  dispatch_group_notify(v54, workQueue, v59);
}

@end