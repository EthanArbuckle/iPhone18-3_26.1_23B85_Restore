@interface NRGResourceRequest
- (id)sendWithTransport:(id)transport toDevice:(id)device withTimeout:(double)timeout;
- (void)abort;
- (void)handleResponse:(id)response;
- (void)invalidateTimer;
- (void)timerAbort:(id)abort;
@end

@implementation NRGResourceRequest

- (id)sendWithTransport:(id)transport toDevice:(id)device withTimeout:(double)timeout
{
  transportCopy = transport;
  deviceCopy = device;
  if (!self->_completionBlock)
  {
    sub_100011324();
  }

  if (!transportCopy)
  {
    sub_1000112F8();
  }

  if (self->_persistentTimer)
  {
    sub_1000112CC();
  }

  v10 = deviceCopy;
  v11 = objc_alloc_init(NRGPBResourceRequest);
  [(NRGPBResourceRequest *)v11 setType:self->_type];
  [(NRGPBResourceRequest *)v11 setIconVariant:self->_variant];
  [(NRGPBResourceRequest *)v11 setBundleID:self->_bundleID];
  v12 = IDSCopyIDForDevice();
  v13 = [transportCopy sendProtobufRequest:v11 type:0 priority:200 expectsResponse:1 requestHandler:0 errorHandler:&stru_100020738 toDevice:timeout withTimeout:v12];
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = v13;

  if (self->_idsIdentifier)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [NSString stringWithFormat:@"%@_resource", v16];

    timeout = [[PCPersistentTimer alloc] initWithTimeInterval:v17 serviceIdentifier:self target:"timerAbort:" selector:v17 userInfo:timeout + timeout];
    persistentTimer = self->_persistentTimer;
    self->_persistentTimer = timeout;

    [(PCPersistentTimer *)self->_persistentTimer setMinimumEarlyFireProportion:1.0];
    [(PCPersistentTimer *)self->_persistentTimer scheduleInQueue:&_dispatch_main_q];
  }

  else
  {
    (*(self->_completionBlock + 2))();
  }

  v20 = self->_idsIdentifier;
  v21 = v20;

  return v20;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  [(NRGResourceRequest *)self invalidateTimer];
  if (!responseCopy)
  {
LABEL_12:
    (*(self->_completionBlock + 2))();
    goto LABEL_13;
  }

  v5 = NRGGetActivePairedDevice();
  v6 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v7 = [v5 supportsCapability:v6];

  if (v7)
  {
    resource = [responseCopy resource];
    checksumData = [responseCopy checksumData];
    v10 = [resource matchesChecksumData:checksumData];

    if (!v10)
    {
      if ([responseCopy hasResource] && (objc_msgSend(responseCopy, "resource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v14))
      {
        v15 = nrg_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000113C8(self, responseCopy, v15);
        }
      }

      else
      {
        v15 = nrg_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          bundleID = self->_bundleID;
          variant = self->_variant;
          hasResource = [responseCopy hasResource];
          resource2 = [responseCopy resource];
          v20 = 138413058;
          v21 = bundleID;
          v22 = 1024;
          v23 = variant;
          v24 = 1024;
          v25 = hasResource;
          v26 = 2048;
          v27 = [resource2 length];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "no resource received for %@ (%d) hasResource %{BOOL}u response.resource.length %lu", &v20, 0x22u);
        }
      }

      goto LABEL_12;
    }
  }

  completionBlock = self->_completionBlock;
  resource3 = [responseCopy resource];
  completionBlock[2](completionBlock, resource3);

LABEL_13:
}

- (void)timerAbort:(id)abort
{
  abortCopy = abort;
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    userInfo = [abortCopy userInfo];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ timeout fired", &v9, 0x16u);
  }

  [(NRGResourceRequest *)self abort];
}

- (void)abort
{
  [(NRGResourceRequest *)self invalidateTimer];
  v3 = *(self->_completionBlock + 2);

  v3();
}

- (void)invalidateTimer
{
  [(PCPersistentTimer *)self->_persistentTimer invalidate];
  persistentTimer = self->_persistentTimer;
  self->_persistentTimer = 0;
}

@end