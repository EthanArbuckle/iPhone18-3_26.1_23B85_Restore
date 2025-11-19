@interface DIDiskArb
+ (DIDiskArb)diskArbWithError:(id *)a3;
- (BOOL)ejectWithBSDName:(id)a3 error:(id *)a4;
- (BOOL)mountWithDeviceName:(id)a3 args:(id)a4 filesystem:(id)a5 mountURL:(id)a6 error:(id *)a7;
- (BOOL)unmountWithMountPoint:(id)a3 error:(id *)a4;
- (BOOL)waitForDAIdleWithError:(id *)a3;
- (DIDisappearedMountPointDelegate)delegate;
- (DIDiskArb)initWithError:(id *)a3;
- (id)copyDescriptionWithBSDName:(id)a3;
- (void)addDisappearedCallbackWithMountPoint:(id)a3 shadowMountPoints:(id)a4 delegate:(id)a5;
- (void)onDiskDisappearedWithDisk:(__DADisk *)a3;
- (void)stop;
@end

@implementation DIDiskArb

+ (DIDiskArb)diskArbWithError:(id *)a3
{
  v3 = [[DIDiskArb alloc] initWithError:0];
  if (!v3)
  {
    v3 = objc_alloc_init(DIDiskArbEmulation);
  }

  return v3;
}

- (DIDiskArb)initWithError:(id *)a3
{
  v11.receiver = self;
  v11.super_class = DIDiskArb;
  v4 = [(DIDiskArb *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!&_DASessionCreate)
  {
    daSession = v4->_daSession;
    if (daSession)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = [DIError nilWithEnumValue:156 verboseInfo:@"Failed DA init" error:a3];
    goto LABEL_8;
  }

  daSession = DASessionCreate(0);
  v5->_daSession = daSession;
  if (!daSession)
  {
    goto LABEL_7;
  }

LABEL_4:
  Current = CFRunLoopGetCurrent();
  DASessionScheduleWithRunLoop(daSession, Current, kCFRunLoopDefaultMode);
LABEL_5:
  v8 = v5;
LABEL_8:
  v9 = v8;

  return v9;
}

- (void)stop
{
  context = self;
  objc_sync_enter(context);
  v2 = context;
  daSession = context->_daSession;
  if (daSession)
  {
    if (context->_inputMountedOnURL || context->_shadowMountedOnURLs)
    {
      DAUnregisterCallback(context->_daSession, sub_100029AC8, context);
      daSession = context->_daSession;
    }

    Current = CFRunLoopGetCurrent();
    DASessionUnscheduleFromRunLoop(daSession, Current, kCFRunLoopDefaultMode);
    CFRelease(context->_daSession);
    v2 = context;
    context->_daSession = 0;
  }

  objc_sync_exit(v2);
}

- (void)onDiskDisappearedWithDisk:(__DADisk *)a3
{
  if ([(DIDiskArb *)self daSession])
  {
    v5 = DADiskCopyDescription(a3);
    v6 = [(__CFDictionary *)v5 objectForKey:kDADiskDescriptionVolumePathKey];
    if (sub_1000E9608())
    {
      v7 = *__error();
      if (sub_1000E95F0())
      {
        v45 = 0;
        v8 = sub_1000E957C();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        *buf = 68158210;
        v48 = 39;
        v49 = 2080;
        v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        v51 = 2114;
        v52 = v6;
        LODWORD(v40) = 28;
        v39 = buf;
        v9 = _os_log_send_and_compose_impl();

        if (v9)
        {
          fprintf(__stderrp, "%s\n", v9);
          free(v9);
        }
      }

      else
      {
        v14 = sub_1000E957C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          v48 = 39;
          v49 = 2080;
          v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
          v51 = 2114;
          v52 = v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%.*s: Reached with diskURL=%{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v7;
    }

    if (v6)
    {
      v15 = [(DIDiskArb *)self inputMountedOnURL];
      if (v15)
      {
        v16 = v15;
        v17 = [(DIDiskArb *)self inputMountedOnURL];
        v18 = [v6 isEqual:v17];

        if (v18)
        {
          v19 = *__error();
          if (sub_1000E95F0())
          {
            v45 = 0;
            v20 = sub_1000E957C();
            os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            v21 = [v6 path];
            *buf = 68158211;
            v48 = 39;
            v49 = 2080;
            v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
            v51 = 2113;
            v52 = v21;
            LODWORD(v40) = 28;
            v39 = buf;
            v22 = _os_log_send_and_compose_impl();

            if (v22)
            {
              fprintf(__stderrp, "%s\n", v22);
              free(v22);
            }
          }

          else
          {
            v23 = sub_1000E957C();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = [v6 path];
              *buf = 68158211;
              v48 = 39;
              v49 = 2080;
              v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
              v51 = 2113;
              v52 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared", buf, 0x1Cu);
            }
          }

          *__error() = v19;
          v25 = [(DIDiskArb *)self delegate];
          [v25 onDisappearedMountPoint];
        }
      }

      v26 = [(DIDiskArb *)self shadowMountedOnURLs:v39];

      if (v26)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = [(DIDiskArb *)self shadowMountedOnURLs];
        v28 = [v27 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v42;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(v27);
              }

              if ([v6 isEqual:*(*(&v41 + 1) + 8 * i)])
              {
                v32 = *__error();
                if (sub_1000E95F0())
                {
                  v45 = 0;
                  v33 = sub_1000E957C();
                  os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                  v34 = [v6 path];
                  *buf = 68158211;
                  v48 = 39;
                  v49 = 2080;
                  v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                  v51 = 2113;
                  v52 = v34;
                  v35 = _os_log_send_and_compose_impl();

                  if (v35)
                  {
                    fprintf(__stderrp, "%s\n", v35);
                    free(v35);
                  }
                }

                else
                {
                  v36 = sub_1000E957C();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    v37 = [v6 path];
                    *buf = 68158211;
                    v48 = 39;
                    v49 = 2080;
                    v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                    v51 = 2113;
                    v52 = v37;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, 0x1Cu);
                  }
                }

                *__error() = v32;
                v38 = [(DIDiskArb *)self delegate];
                [v38 onDisappearedMountPoint];

                goto LABEL_44;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_44:
      }
    }
  }

  else
  {
    v10 = *__error();
    if (sub_1000E95F0())
    {
      v45 = 0;
      v11 = sub_1000E957C();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v48 = 39;
      v49 = 2080;
      v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E957C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v48 = 39;
        v49 = 2080;
        v50 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring, during shutdown", buf, 0x12u);
      }
    }

    *__error() = v10;
  }
}

- (BOOL)waitForDAIdleWithError:(id *)a3
{
  v4 = *__error();
  if (sub_1000E95F0())
  {
    v5 = sub_1000E957C();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v18 = 36;
    v19 = 2080;
    v20 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v16) = 18;
    v15 = buf;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v18 = 36;
      v19 = 2080;
      v20 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Waiting for disk arbitration idle", buf, 0x12u);
    }
  }

  *__error() = v4;
  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self daSession];
  DARegisterIdleCallback();
  v8 = +[NSRunLoop currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    do
    {
      v9 = [NSDate dateWithTimeIntervalSinceNow:1.0, v15, v16];
      [v8 runMode:NSDefaultRunLoopMode beforeDate:v9];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  DAUnregisterCallback([(DIDiskArb *)self daSession], sub_10002A5C4, self);
  v10 = *__error();
  if (sub_1000E95F0())
  {
    v11 = sub_1000E957C();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v18 = 36;
    v19 = 2080;
    v20 = "[DIDiskArb waitForDAIdleWithError:]";
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = sub_1000E957C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v18 = 36;
      v19 = 2080;
      v20 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Disk arbitration idle callback received", buf, 0x12u);
    }
  }

  *__error() = v10;

  return 1;
}

- (void)addDisappearedCallbackWithMountPoint:(id)a3 shadowMountPoints:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    [(DIDiskArb *)self setInputMountedOnURL:v8];
    v34 = v9;
    [(DIDiskArb *)self setShadowMountedOnURLs:v9];
    v33 = v10;
    [(DIDiskArb *)self setDelegate:v10];
    v11 = *__error();
    if (sub_1000E95F0())
    {
      v41 = 0;
      v12 = sub_1000E957C();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v13 = [v8 path];
      *buf = 68158211;
      v44 = 77;
      v45 = 2080;
      v46 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
      v47 = 2113;
      v48 = v13;
      LODWORD(v31) = 28;
      v29 = buf;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        fprintf(__stderrp, "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = sub_1000E957C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v8 path];
        *buf = 68158211;
        v44 = 77;
        v45 = 2080;
        v46 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
        v47 = 2113;
        v48 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 0x1Cu);
      }
    }

    v36 = v8;
    *__error() = v11;
  }

  else
  {
    if (![v9 count])
    {
      goto LABEL_25;
    }

    v36 = 0;
    [(DIDiskArb *)self setInputMountedOnURL:0];
    v34 = v9;
    [(DIDiskArb *)self setShadowMountedOnURLs:v9];
    v33 = v10;
    [(DIDiskArb *)self setDelegate:v10];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = self;
  v17 = [(DIDiskArb *)self shadowMountedOnURLs:v29];
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = *__error();
        if (sub_1000E95F0())
        {
          v41 = 0;
          v24 = sub_1000E957C();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          v25 = [v22 path];
          *buf = 68158211;
          v44 = 77;
          v45 = 2080;
          v46 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
          v47 = 2113;
          v48 = v25;
          LODWORD(v32) = 28;
          v30 = buf;
          v26 = _os_log_send_and_compose_impl();

          if (v26)
          {
            fprintf(__stderrp, "%s\n", v26);
            free(v26);
          }
        }

        else
        {
          v27 = sub_1000E957C();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v22 path];
            *buf = 68158211;
            v44 = 77;
            v45 = 2080;
            v46 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
            v47 = 2113;
            v48 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, 0x1Cu);
          }
        }

        *__error() = v23;
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v19);
  }

  DARegisterDiskDisappearedCallback([(DIDiskArb *)v35 daSession], 0, sub_100029AC8, v35);
  v8 = v36;
  v10 = v33;
  v9 = v34;
LABEL_25:
}

- (BOOL)ejectWithBSDName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *__error();
  if (sub_1000E95F0())
  {
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v25 = 36;
    v26 = 2080;
    v27 = "[DIDiskArb ejectWithBSDName:error:]";
    v28 = 2112;
    v29 = v6;
    LODWORD(v23) = 28;
    v22 = buf;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v25 = 36;
      v26 = 2080;
      v27 = "[DIDiskArb ejectWithBSDName:error:]";
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v11 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [v6 fileSystemRepresentation]);
  if (v11)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskEject(v11, 0, sub_10002AF10, self);
    v12 = +[NSRunLoop currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      do
      {
        v13 = [NSDate dateWithTimeIntervalSinceNow:1.0, v22, v23];
        [v12 runMode:NSDefaultRunLoopMode beforeDate:v13];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    v14 = [(DIDiskArb *)self operationError];

    if (v14)
    {
      v15 = [(DIDiskArb *)self operationError];
      v16 = [DIError failWithInError:v15 outError:a4];
    }

    else
    {
      v17 = *__error();
      if (sub_1000E95F0())
      {
        v18 = sub_1000E957C();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        *buf = 68158210;
        v25 = 36;
        v26 = 2080;
        v27 = "[DIDiskArb ejectWithBSDName:error:]";
        v28 = 2112;
        v29 = v6;
        v19 = _os_log_send_and_compose_impl();

        if (v19)
        {
          fprintf(__stderrp, "%s\n", v19);
          free(v19);
        }
      }

      else
      {
        v20 = sub_1000E957C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v25 = 36;
          v26 = 2080;
          v27 = "[DIDiskArb ejectWithBSDName:error:]";
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
        }
      }

      *__error() = v17;
      v16 = 1;
    }
  }

  else
  {
    v16 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during eject" error:a4];
  }

  return v16;
}

- (BOOL)mountWithDeviceName:(id)a3 args:(id)a4 filesystem:(id)a5 mountURL:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [v11 UTF8String]);
  if (!v14)
  {
    v15 = @"Failed to create DADisk during mount";
    v16 = 156;
    goto LABEL_5;
  }

  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self setOperationError:0];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *arguments = 0u;
  v42 = 0u;
  if ([v12 count] > 0x3F)
  {
    v15 = @"Too many mount arguments";
    v16 = 154;
LABEL_5:
    v17 = [DIError failWithEnumValue:v16 verboseInfo:v15 error:a7];
    goto LABEL_30;
  }

  if ([v12 count])
  {
    v18 = 0;
    do
    {
      v19 = [v12 objectAtIndexedSubscript:v18];
      arguments[v18] = v19;

      ++v18;
    }

    while (v18 < [v12 count]);
  }

  DADiskMountWithArguments(v14, v13, 0, sub_10002AF10, self, arguments);
  v20 = +[NSRunLoop currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    do
    {
      v21 = [NSDate dateWithTimeIntervalSinceNow:1.0];
      [v20 runMode:NSDefaultRunLoopMode beforeDate:v21];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  v22 = [(DIDiskArb *)self operationError];

  v17 = v22 == 0;
  v23 = *__error();
  v24 = sub_1000E95F0();
  if (v22)
  {
    if (v24)
    {
      v34 = v13;
      v25 = sub_1000E957C();
      os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      [(DIDiskArb *)self operationError];
      *buf = 68158210;
      *&buf[4] = 64;
      v37 = 2080;
      v38 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v40 = v39 = 2112;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        fprintf(__stderrp, "%s\n", v26);
        free(v26);
      }

      v13 = v34;
    }

    else
    {
      v30 = sub_1000E957C();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(DIDiskArb *)self operationError];
        v31 = v35 = v23;
        *buf = 0x4004100302;
        v37 = 2080;
        v38 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%.*s: Mount error: %@", buf, 0x1Cu);

        v23 = v35;
      }
    }

    *__error() = v23;
    if (a7)
    {
      *a7 = [(DIDiskArb *)self operationError];
    }
  }

  else
  {
    if (v24)
    {
      v27 = v23;
      v28 = sub_1000E957C();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      *&buf[4] = 64;
      v37 = 2080;
      v38 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v39 = 2114;
      v40 = v11;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        fprintf(__stderrp, "%s\n", v29);
        free(v29);
      }

      v23 = v27;
    }

    else
    {
      v32 = sub_1000E957C();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        *&buf[4] = 64;
        v37 = 2080;
        v38 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v39 = 2114;
        v40 = v11;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@ mounted successfully", buf, 0x1Cu);
      }
    }

    *__error() = v23;
  }

LABEL_30:
  return v17;
}

- (BOOL)unmountWithMountPoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *__error();
  if (sub_1000E95F0())
  {
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68158211;
    v26 = 41;
    v27 = 2080;
    v28 = "[DIDiskArb unmountWithMountPoint:error:]";
    v29 = 2113;
    v30 = v6;
    LODWORD(v24) = 28;
    v23 = buf;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v26 = 41;
      v27 = 2080;
      v28 = "[DIDiskArb unmountWithMountPoint:error:]";
      v29 = 2113;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v11 = [NSURL fileURLWithPath:v6];
  v12 = DADiskCreateFromVolumePath(0, [(DIDiskArb *)self daSession], v11);
  if (v12)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskUnmount(v12, 0, sub_10002AF10, self);
    v13 = +[NSRunLoop currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      do
      {
        v14 = [NSDate dateWithTimeIntervalSinceNow:1.0, v23, v24];
        [v13 runMode:NSDefaultRunLoopMode beforeDate:v14];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    v15 = [(DIDiskArb *)self operationError];

    if (v15)
    {
      v16 = [(DIDiskArb *)self operationError];
      v17 = [DIError failWithInError:v16 outError:a4];
    }

    else
    {
      v18 = *__error();
      if (sub_1000E95F0())
      {
        v19 = sub_1000E957C();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        *buf = 68158211;
        v26 = 41;
        v27 = 2080;
        v28 = "[DIDiskArb unmountWithMountPoint:error:]";
        v29 = 2113;
        v30 = v6;
        v20 = _os_log_send_and_compose_impl();

        if (v20)
        {
          fprintf(__stderrp, "%s\n", v20);
          free(v20);
        }
      }

      else
      {
        v21 = sub_1000E957C();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158211;
          v26 = 41;
          v27 = 2080;
          v28 = "[DIDiskArb unmountWithMountPoint:error:]";
          v29 = 2113;
          v30 = v6;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%.*s: %{private}@ unmounted successfully", buf, 0x1Cu);
        }
      }

      *__error() = v18;
      v17 = 1;
    }
  }

  else
  {
    v17 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during unmount" error:a4];
  }

  return v17;
}

- (id)copyDescriptionWithBSDName:(id)a3
{
  v4 = a3;
  v5 = [(DIDiskArb *)self daSession];
  v6 = [v4 fileSystemRepresentation];

  v7 = DADiskCreateFromBSDName(0, v5, v6);
  v8 = v7;
  if (v7)
  {
    v9 = DADiskCopyDescription(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DIDisappearedMountPointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end