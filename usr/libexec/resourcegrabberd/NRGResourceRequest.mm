@interface NRGResourceRequest
- (id)sendWithTransport:(id)a3 toDevice:(id)a4 withTimeout:(double)a5;
- (void)abort;
- (void)handleResponse:(id)a3;
- (void)invalidateTimer;
- (void)timerAbort:(id)a3;
@end

@implementation NRGResourceRequest

- (id)sendWithTransport:(id)a3 toDevice:(id)a4 withTimeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_completionBlock)
  {
    sub_100011324();
  }

  if (!v8)
  {
    sub_1000112F8();
  }

  if (self->_persistentTimer)
  {
    sub_1000112CC();
  }

  v10 = v9;
  v11 = objc_alloc_init(NRGPBResourceRequest);
  [(NRGPBResourceRequest *)v11 setType:self->_type];
  [(NRGPBResourceRequest *)v11 setIconVariant:self->_variant];
  [(NRGPBResourceRequest *)v11 setBundleID:self->_bundleID];
  v12 = IDSCopyIDForDevice();
  v13 = [v8 sendProtobufRequest:v11 type:0 priority:200 expectsResponse:1 requestHandler:0 errorHandler:&stru_100020738 toDevice:a5 withTimeout:v12];
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = v13;

  if (self->_idsIdentifier)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [NSString stringWithFormat:@"%@_resource", v16];

    v18 = [[PCPersistentTimer alloc] initWithTimeInterval:v17 serviceIdentifier:self target:"timerAbort:" selector:v17 userInfo:a5 + a5];
    persistentTimer = self->_persistentTimer;
    self->_persistentTimer = v18;

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

- (void)handleResponse:(id)a3
{
  v4 = a3;
  [(NRGResourceRequest *)self invalidateTimer];
  if (!v4)
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
    v8 = [v4 resource];
    v9 = [v4 checksumData];
    v10 = [v8 matchesChecksumData:v9];

    if (!v10)
    {
      if ([v4 hasResource] && (objc_msgSend(v4, "resource"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v14))
      {
        v15 = nrg_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000113C8(self, v4, v15);
        }
      }

      else
      {
        v15 = nrg_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          bundleID = self->_bundleID;
          variant = self->_variant;
          v18 = [v4 hasResource];
          v19 = [v4 resource];
          v20 = 138413058;
          v21 = bundleID;
          v22 = 1024;
          v23 = variant;
          v24 = 1024;
          v25 = v18;
          v26 = 2048;
          v27 = [v19 length];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "no resource received for %@ (%d) hasResource %{BOOL}u response.resource.length %lu", &v20, 0x22u);
        }
      }

      goto LABEL_12;
    }
  }

  completionBlock = self->_completionBlock;
  v12 = [v4 resource];
  completionBlock[2](completionBlock, v12);

LABEL_13:
}

- (void)timerAbort:(id)a3
{
  v4 = a3;
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 userInfo];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
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