@interface NIServerSpatialInteractionPayloadAggregator
+ (id)sharedInstance;
- (BOOL)findingEnabled;
- (NSData)aggregatedPresenceData;
- (NSData)aggregatedUWBData;
- (id)_initInternal;
- (unsigned)findingConfig;
- (unsigned)findingConfig2;
- (unsigned)findingStatus;
- (unsigned)handOrFaceDetection;
- (unsigned)regionPresenceDetection;
- (void)addPayloadChangeObserver:(id)observer;
- (void)commitChange;
- (void)removePayloadChangeObserver:(id)observer;
- (void)setFindingConfig2:(unsigned __int8)config2;
- (void)setFindingConfig:(unsigned __int8)config;
- (void)setFindingEnabled:(BOOL)enabled;
- (void)setFindingStatus:(unsigned __int8)status;
- (void)setHandOrFaceDetection:(unsigned __int8)detection;
- (void)setPresenceConfigEnabled:(BOOL)enabled;
- (void)setRegionPresenceDetection:(unsigned __int8)detection;
@end

@implementation NIServerSpatialInteractionPayloadAggregator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002729B0;
  block[3] = &unk_10098AD98;
  block[4] = self;
  if (qword_1009F2658 != -1)
  {
    dispatch_once(&qword_1009F2658, block);
  }

  v2 = qword_1009F2650;

  return v2;
}

- (id)_initInternal
{
  v12.receiver = self;
  v12.super_class = NIServerSpatialInteractionPayloadAggregator;
  v2 = [(NIServerSpatialInteractionPayloadAggregator *)&v12 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 15) = 0;
    *(v2 + 1) = 0;
    v11 = 0;
    v4 = [NSData dataWithBytes:&v11 length:1];
    v5 = v3[3];
    v3[3] = v4;

    v6 = [NSData dataWithBytes:&v11 length:1];
    v7 = v3[4];
    v3[4] = v6;

    v8 = +[NSHashTable weakObjectsHashTable];
    v9 = v3[5];
    v3[5] = v8;
  }

  return v3;
}

- (void)commitChange
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_findingEnabled)
  {
    v43 = 0;
    v41[0] = 1;
    v41[1] = self->_findingStatus;
    v42 = *&self->_findingConfig;
    v3 = [NSData dataWithBytes:v41 length:5];
    v4 = [(NSData *)self->_aggregatedUWBData isEqualToData:v3];
    v5 = qword_1009F9820;
    v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        sub_1004B559C(v5, v7, v8, v9, v10, v11, v12, v13);
      }

      goto LABEL_21;
    }

    if (v6)
    {
      aggregatedUWBData = self->_aggregatedUWBData;
      findingEnabled = self->_findingEnabled;
      findingStatus = self->_findingStatus;
      findingConfig = self->_findingConfig;
      *buf = 138413058;
      v46 = aggregatedUWBData;
      v47 = 1024;
      v48 = findingEnabled;
      v49 = 1024;
      v50 = findingStatus;
      v51 = 1024;
      v52 = findingConfig;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#type19,Commit change (non-empty uwb payload). Notify payload change with Aggregated uwb data: %@. Flag FE: %d. FS: %d. FC: %d", buf, 0x1Eu);
    }

    v25 = self->_aggregatedUWBData;
    self->_aggregatedUWBData = v3;

    goto LABEL_13;
  }

  v14 = self->_aggregatedUWBData;
  v15 = qword_1009F9820;
  v16 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      sub_1004B552C(v15, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = self->_aggregatedUWBData;
    self->_aggregatedUWBData = 0;

LABEL_13:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = self->_payloadChangeObservers;
    v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v27)
    {
      v28 = *v38;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v37 + 1) + 8 * i);
          payloadChangeObserverQueue = [v30 payloadChangeObserverQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100272DAC;
          block[3] = &unk_10098BD28;
          block[4] = v30;
          dispatch_async(payloadChangeObserverQueue, block);
        }

        v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v27);
    }

    goto LABEL_21;
  }

  if (v16)
  {
    sub_1004B5564(v15, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_21:
  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)aggregatedUWBData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_aggregatedUWBData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSData)aggregatedPresenceData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_aggregatedPresenceData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)findingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  findingEnabled = self->_findingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return findingEnabled;
}

- (unsigned)findingStatus
{
  os_unfair_lock_lock(&self->_lock);
  findingStatus = self->_findingStatus;
  os_unfair_lock_unlock(&self->_lock);
  return findingStatus;
}

- (unsigned)findingConfig
{
  os_unfair_lock_lock(&self->_lock);
  findingConfig = self->_findingConfig;
  os_unfair_lock_unlock(&self->_lock);
  return findingConfig;
}

- (unsigned)findingConfig2
{
  os_unfair_lock_lock(&self->_lock);
  findingConfig2 = self->_findingConfig2;
  os_unfair_lock_unlock(&self->_lock);
  return findingConfig2;
}

- (unsigned)regionPresenceDetection
{
  os_unfair_lock_lock(&self->_lock);
  regionPresenceDetection = self->_regionPresenceDetection;
  os_unfair_lock_unlock(&self->_lock);
  return regionPresenceDetection;
}

- (unsigned)handOrFaceDetection
{
  os_unfair_lock_lock(&self->_lock);
  handOrFaceDetection = self->_handOrFaceDetection;
  os_unfair_lock_unlock(&self->_lock);
  return handOrFaceDetection;
}

- (void)setFindingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_lock);
  self->_findingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPresenceConfigEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_lock);
  self->_presenceConfigEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFindingStatus:(unsigned __int8)status
{
  os_unfair_lock_lock(&self->_lock);
  self->_findingStatus = status;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFindingConfig2:(unsigned __int8)config2
{
  os_unfair_lock_lock(&self->_lock);
  self->_findingConfig2 = config2;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFindingConfig:(unsigned __int8)config
{
  os_unfair_lock_lock(&self->_lock);
  self->_findingConfig = config;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRegionPresenceDetection:(unsigned __int8)detection
{
  os_unfair_lock_lock(&self->_lock);
  self->_regionPresenceDetection = detection;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHandOrFaceDetection:(unsigned __int8)detection
{
  os_unfair_lock_lock(&self->_lock);
  self->_handOrFaceDetection = detection;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addPayloadChangeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_payloadChangeObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePayloadChangeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_payloadChangeObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end