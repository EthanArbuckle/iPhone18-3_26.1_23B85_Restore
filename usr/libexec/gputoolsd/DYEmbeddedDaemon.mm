@interface DYEmbeddedDaemon
- (BOOL)bringAppToForeground:(id)a3;
- (BOOL)createInferiorTransportAndSetEnvironment:(id)a3 uniqueIdentifier:(id)a4 error:(id *)a5;
- (BOOL)launchInferior:(id)a3 finalEnvironment:(id *)a4 error:(id *)a5;
- (BOOL)launchUIServer:(id)a3 error:(id *)a4;
- (DYEmbeddedDaemon)initWithTransport:(id)a3 terminationHandler:(id)a4;
- (id)getApplications;
- (id)processApplication:(id)a3;
- (int)launchInferiorWithIdentifer:(id)a3 environment:(id)a4 arguments:(id)a5 error:(id *)a6;
- (int)launchInferiorWithPath:(id)a3 arguments:(id)a4 environment:(id)a5 workingDirectory:(id)a6 error:(id *)a7;
- (void)cacheInferiorAppIdentifier;
- (void)handleMessage:(id)a3;
- (void)terminate:(int)a3;
@end

@implementation DYEmbeddedDaemon

- (DYEmbeddedDaemon)initWithTransport:(id)a3 terminationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = DYEmbeddedDaemon;
  v8 = [(DYEmbeddedDaemon *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(DYEmbeddedDaemon *)v8 setTransport:v6];
    v10 = objc_retainBlock(v7);
    terminationHandler = v9->_terminationHandler;
    v9->_terminationHandler = v10;

    v12 = [(DYEmbeddedDaemon *)v9 transport];
    if (!v12)
    {
      __assert_rtn("[DYEmbeddedDaemon initWithTransport:terminationHandler:]", ", 0, "self.transport"");
    }

    v13 = [(DYEmbeddedDaemon *)v9 transport];
    [v13 setPrioritizeOutgoingMessages:1];

    v14 = dispatch_get_global_queue(-2, 0);
    v15 = dispatch_queue_create_with_target_V2("symbolicator", 0, v14);
    symbolicatorQueue = v9->_symbolicatorQueue;
    v9->_symbolicatorQueue = v15;

    v17 = v9;
  }

  return v9;
}

- (BOOL)createInferiorTransportAndSetEnvironment:(id)a3 uniqueIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKey:@"METAL_LOAD_INTERPOSER"];
  if ([v10 BOOLValue])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v8 objectForKey:@"METAL_DIAGNOSTICS_ENABLED"];
    v11 = [v12 BOOLValue];
  }

  v13 = [(DYEmbeddedDaemon *)self captureAPISupportForAPI:1];
  v14 = [v13 interposeDylibPath];
  [v8 setObject:v14 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];

  v15 = [(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:v8 withAPI:v11 uniqueIdentifier:v9 error:a5];
  return v15;
}

- (void)cacheInferiorAppIdentifier
{
  v3 = [RBSProcessIdentifier identifierWithPid:[(DYEmbeddedDaemon *)self inferiorPid]];
  v7 = [RBSProcessHandle handleForIdentifier:v3 error:0];

  if (v7)
  {
    v4 = [v7 bundle];
    v5 = [v4 identifier];
    guestAppIdentifier = self->_guestAppIdentifier;
    self->_guestAppIdentifier = v5;
  }

  else
  {
    [(DYEmbeddedDaemon *)self inferiorPid];
    DYLog();
  }
}

- (BOOL)bringAppToForeground:(id)a3
{
  v3 = a3;
  if (sub_100001938(v3) == -1)
  {
    v7 = 0;
  }

  else
  {
    v4 = +[DYFuture future];
    v5 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000019D4;
    v9[3] = &unk_10000C660;
    v6 = v4;
    v10 = v6;
    [v5 openApplication:v3 withOptions:0 completion:v9];
    v7 = [v6 BOOLResult];
  }

  return v7;
}

- (int)launchInferiorWithPath:(id)a3 arguments:(id)a4 environment:(id)a5 workingDirectory:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (([(DYEmbeddedDaemon *)self isAppleInternal]& 1) == 0)
  {
    [(DYEmbeddedDaemon *)self terminate:1];
    v30 = 0;
    goto LABEL_25;
  }

  if ([v15 length])
  {
    v47 = 0;
    v16 = +[NSFileManager defaultManager];
    v17 = [v16 fileExistsAtPath:v15 isDirectory:&v47];

    if (!v17 || (v47 & 1) == 0)
    {
      v50 = NSLocalizedDescriptionKey;
      v31 = [NSString stringWithFormat:@"Working directory doesn't exist. %@", v15];
      v51 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      *a7 = [DYError errorWithDomain:DYErrorDomain code:1 userInfo:v32];

LABEL_16:
      v30 = -1;
      goto LABEL_25;
    }
  }

  v18 = +[NSFileManager defaultManager];
  v19 = [v18 fileExistsAtPath:v12];

  if ((v19 & 1) == 0)
  {
    v48 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithFormat:@"Binary Launch Path doesn't exist. %@", v12];
    v49 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *a7 = [DYError errorWithDomain:DYErrorDomain code:1 userInfo:v34];

    goto LABEL_16;
  }

  v20 = [[DYUNIXDomainSocketTransport alloc] initWithMode:1];
  helperTransport = self->_helperTransport;
  self->_helperTransport = v20;

  v22 = [NSURL fileURLWithPath:@"/var/run/gputoolsdhelper.sock" isDirectory:0];
  [(DYTransport *)self->_helperTransport setUrl:v22];

  v23 = [(DYTransport *)self->_helperTransport newSourceWithQueue:&_dispatch_main_q];
  v24 = v23;
  if (v23)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000021E0;
    v46[3] = &unk_10000C688;
    v46[4] = self;
    [v23 setCancellationHandler:v46];
    [v24 resume];
    v43 = [(DYTransport *)self->_helperTransport connect];
    [v43 timeoutAfter:0 label:500.0];
    if ([v43 BOOLResult])
    {
      v41 = [NSDictionary dictionaryWithObjectsAndKeys:v12, kDYGuestAppLaunchPathKey, v14, kDYGuestAppLaunchEnvironmentKey, v13, kDYGuestAppLaunchArgumentsKey, v15, kDYGuestAppLaunchCurrentDirectoryKey, 0];
      v42 = [DYTransportMessage messageWithKind:1291 plistPayload:?];
      if (v42)
      {
        v25 = +[DYFuture future];
        v26 = self->_helperTransport;
        v27 = dispatch_get_global_queue(0, 0);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000022C4;
        v44[3] = &unk_10000C6B0;
        v40 = v25;
        v45 = v40;
        LOBYTE(v25) = [(DYTransport *)v26 send:v42 error:a7 replyQueue:v27 timeout:0 handler:v44];

        v28 = v43;
        if (v25)
        {
          v29 = [v40 result];
          if (a7)
          {
            *a7 = [v40 error];
          }

          v30 = [v29 intValue];
        }

        else
        {
          DYLog();
          [(DYEmbeddedDaemon *)self terminate:1];
          v30 = 0;
        }
      }

      else
      {
        DYLog();
        [(DYEmbeddedDaemon *)self terminate:1];
        v30 = 0;
        v28 = v43;
      }
    }

    else
    {
      DYLog();
      [(DYEmbeddedDaemon *)self terminate:1];
      v30 = 0;
      v28 = v43;
    }
  }

  else
  {
    v35 = [(DYTransport *)self->_helperTransport error];
    v36 = [v35 description];
    v37 = v36;
    v39 = [v36 UTF8String];
    DYLog();

    [(DYEmbeddedDaemon *)self terminate:1, v39];
    v30 = 0;
  }

LABEL_25:
  return v30;
}

- (int)launchInferiorWithIdentifer:(id)a3 environment:(id)a4 arguments:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  while (1)
  {
    v11 = sub_100001938(v8);
    *(v35 + 6) = v11;
    if (v11 == -1)
    {
      break;
    }

    kill(v11, 9);
    usleep(0x7A120u);
  }

  v40[0] = FBSOpenApplicationOptionKeyDebuggingOptions;
  v38[0] = FBSDebugOptionKeyWaitForDebugger;
  v38[1] = FBSDebugOptionKeyEnvironment;
  v39[0] = &__kCFBooleanTrue;
  v39[1] = v9;
  v38[2] = FBSDebugOptionKeyArguments;
  v39[2] = v10;
  v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
  v40[1] = FBSOpenApplicationOptionKeyUnlockDevice;
  v41[0] = v12;
  v41[1] = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

  v14 = dispatch_semaphore_create(0);
  v15 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v16 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000280C;
  v31[3] = &unk_10000C6D8;
  v33 = &v34;
  v17 = v14;
  v32 = v17;
  [v15 openApplication:v8 withOptions:v16 completion:v31];

  v18 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v17, v18);
  if (*(v35 + 6) == -1)
  {
    v22 = [v8 description];
    v23 = v22;
    v27 = [v22 UTF8String];
    DYLog();

    if (a6)
    {
      v24 = [NSDictionary dictionaryWithObject:@"Timed-out waiting for the application to launch." forKey:NSLocalizedDescriptionKey, v27];
      *a6 = [DYError errorWithDomain:DYErrorDomain code:5 userInfo:v24];
    }

    goto LABEL_12;
  }

  if ((sub_1000028F4(v8) & 1) == 0)
  {
    v30 = 0;
    v19 = task_for_pid(mach_task_self_, *(v35 + 6), &v30);
    if (v19)
    {
      v26 = *(v35 + 6);
      v28 = mach_error_string(v19);
      DYLog();
      kill(*(v35 + 6), 9);
      if (a6)
      {
        v20 = [NSDictionary dictionaryWithObject:@"Failed to get the application's task port." forKey:NSLocalizedDescriptionKey, v26, v28];
        *a6 = [DYError errorWithDomain:DYErrorDomain code:29 userInfo:v20];
      }

LABEL_12:
      v21 = 0;
      goto LABEL_13;
    }
  }

  v21 = *(v35 + 6);
LABEL_13:

  _Block_object_dispose(&v34, 8);
  return v21;
}

- (BOOL)launchUIServer:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (([(DYEmbeddedDaemon *)self isAppleInternal]& 1) == 0)
  {
    [(DYEmbeddedDaemon *)self terminate:1];
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [v7 objectForKey:kDYGuestAppLaunchEnvironmentKey];
  if (v9)
  {
    [v8 addEntriesFromDictionary:v9];
  }

  v10 = [v7 objectForKey:kDYGuestAppLaunchReplayer];
  if (v10)
  {
    v4 = [v7 objectForKeyedSubscript:kDYGuestAppLaunchCapture];
    v11 = [v4 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  [(DYEmbeddedDaemon *)self setShouldLoadCapture:v11];
  if (v10)
  {
  }

  v12 = [v7 objectForKeyedSubscript:kDYGuestAppLaunchDiagnostics];
  -[DYEmbeddedDaemon setShouldLoadDiagnostics:](self, "setShouldLoadDiagnostics:", [v12 BOOLValue]);

  v13 = [(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:v8 uniqueIdentifier:0 error:a4];
  if (v13)
  {
    v14 = [[DYUNIXDomainSocketTransport alloc] initWithMode:1];
    helperTransport = self->_helperTransport;
    self->_helperTransport = v14;

    v16 = [NSURL fileURLWithPath:@"/var/run/gputoolsdhelper.sock" isDirectory:0];
    [(DYTransport *)self->_helperTransport setUrl:v16];

    v17 = [(DYTransport *)self->_helperTransport newSourceWithQueue:&_dispatch_main_q];
    if (!v17)
    {
      v18 = [(DYTransport *)self->_helperTransport error];
      v19 = [v18 description];
      v23 = [v19 UTF8String];
      DYLog();

      [(DYEmbeddedDaemon *)self terminate:1, v23];
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100002D60;
    v29[3] = &unk_10000C688;
    v29[4] = self;
    [v17 setCancellationHandler:v29];
    [v17 resume];
    v20 = [(DYTransport *)self->_helperTransport connect];
    [v20 timeoutAfter:0 label:500.0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100002EFC;
    v24[3] = &unk_10000C700;
    v21 = v20;
    v25 = v21;
    v26 = self;
    v27 = v8;
    v28 = v7;
    [v21 notifyOnQueue:&_dispatch_main_q handler:v24];
  }

  return v13;
}

- (BOOL)launchInferior:(id)a3 finalEnvironment:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 objectForKey:kDYGuestAppLaunchBundleIdentifierKey];
  v45 = [v8 objectForKey:kDYGuestAppLaunchPathKey];
  v10 = [v8 objectForKey:kDYGuestAppLaunchEnvironmentKey];
  v11 = [v10 mutableCopy];

  v12 = [v8 objectForKey:kDYGuestAppLaunchArgumentsKey];
  v43 = [v12 mutableCopy];

  v13 = [v8 objectForKey:kDYGuestAppLaunchCurrentDirectoryKey];
  v42 = [v13 mutableCopy];

  v14 = [(__CFString *)v9 isEqualToString:@"com.apple.gputools.ui-server"];
  if ([(__CFString *)v9 isEqualToString:@"com.apple.gputools.BinaryLaunch"])
  {
    v13 = [v11 objectForKey:@"BINARY_LAUNCH_PATH"];

    v9 = 0;
    v45 = v13;
  }

  v44 = [v8 objectForKey:kDYGuestAppLaunchReplayer];
  if (v44)
  {
    v13 = [v8 objectForKeyedSubscript:kDYGuestAppLaunchCapture];
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  [(DYEmbeddedDaemon *)self setShouldLoadCapture:v15];
  if (v44)
  {
  }

  v16 = [v8 objectForKeyedSubscript:kDYGuestAppLaunchDiagnostics];
  -[DYEmbeddedDaemon setShouldLoadDiagnostics:](self, "setShouldLoadDiagnostics:", [v16 BOOLValue]);

  if (v14)
  {
    v17 = [v11 objectForKey:@"GT_HOST_URL_MTL"];
    if (v17)
    {
      v39 = v11;
      v41 = [v11 objectForKey:@"GT_HOST_URL_MTL_DIAGNOSTICS"];
      v18 = [NSURL URLWithString:v17];
      v19 = [NSURL URLWithString:v41];
      v20 = [(DYEmbeddedDaemon *)self transport];
      v21 = v18;
      v22 = v19;
      v23 = [(DYEmbeddedDaemon *)self shouldLoadCapture];
      v24 = [(DYEmbeddedDaemon *)self shouldLoadDiagnostics];
      if (v20)
      {
        self = [v20 createNewSharedMemoryTransportWithURLs:v21 uniqueIdentifier:v22 loadCapture:0 loadDiagnostics:{v23, v24}];
      }

      else
      {
      }

      v34 = 1;
      v11 = v39;
      goto LABEL_45;
    }

LABEL_29:

    v34 = 0;
LABEL_45:

    return v34;
  }

  if (sub_1000028F4(v9))
  {
    v26 = 0;
  }

  else
  {
    v26 = [v11 objectForKey:@"GPUTOOLS_LOAD_GTMTLCAPTURE"];
  }

  [v26 intValue];
  DYSetGTMTLCaptureMode();
  if (![(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:v11 uniqueIdentifier:0 error:a5])
  {

    goto LABEL_29;
  }

  DYModifyEnvironmentForDualCaptureSupport();

  if (v9)
  {
    if (sub_1000028F4(v9))
    {
      v40 = v11;
      v27 = [v11 objectForKeyedSubscript:@"GPUTOOLS_LOAD_GTMTLREPLAYER2"];
      v28 = v27;
      if (!v27 || [v27 BOOLValue])
      {
        v46 = 0;
        v29 = +[FBSSystemService sharedService];
        v30 = [v29 canOpenApplication:@"com.apple.MTLReplayer" reason:&v46];
        if (v46 == 4)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        if (v31 == 1)
        {

          v9 = @"com.apple.MTLReplayer";
          v11 = v40;
          [v40 removeObjectForKey:@"METAL_LOAD_INTERPOSER"];
          v32 = [v40 objectForKeyedSubscript:@"METAL_DEBUG_ERROR_MODE"];
          v33 = v32;
          if (v32 && [v32 intValue] == 4)
          {
            [v40 removeObjectForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
          }
        }

        else
        {
          v11 = v40;
        }
      }

      [v11 removeObjectForKey:@"DYLD_INSERT_LIBRARIES"];
      v35 = +[NSUserDefaults standardUserDefaults];
      v36 = [v35 dictionaryForKey:@"GPUDebugger.ReplayerEnvironment"];

      v11 = v40;
      if (v36)
      {
        [v40 addEntriesFromDictionary:v36];
      }
    }

    [(DYEmbeddedDaemon *)self setInferiorPid:[(DYEmbeddedDaemon *)self launchInferiorWithIdentifer:v9 environment:v11 arguments:v43 error:a5]];
    if ([(DYEmbeddedDaemon *)self inferiorPid]>= 1)
    {
      objc_storeStrong(&self->_guestAppIdentifier, v9);
    }

    goto LABEL_40;
  }

  if (v45)
  {
    v9 = 0;
    [(DYEmbeddedDaemon *)self setInferiorPid:[(DYEmbeddedDaemon *)self launchInferiorWithPath:v45 arguments:v43 environment:v11 workingDirectory:v42 error:a5]];
LABEL_40:
    if ([(DYEmbeddedDaemon *)self inferiorPid]>= 1)
    {
      if (a4)
      {
        v37 = v11;
        *a4 = v11;
      }

      [(DYEmbeddedDaemon *)self setOwnsInferior:1];
      [(DYEmbeddedDaemon *)self observeInferior];
      kill([(DYEmbeddedDaemon *)self inferiorPid], 19);
    }

    v34 = [(DYEmbeddedDaemon *)self inferiorPid]> 0;

    goto LABEL_45;
  }

  result = dy_abort();
  __break(1u);
  return result;
}

- (id)processApplication:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 bundleURL];
  v6 = [v5 path];

  v7 = [v3 bundleIdentifier];
  [v4 setObject:v7 forKeyedSubscript:@"bundleIdentifier"];

  v8 = [v3 localizedName];
  [v4 setObject:v8 forKeyedSubscript:@"title"];

  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"fullpath"];
  }

  if (!CFStringGetFileSystemRepresentation(v6, buffer, 1024) || stat(buffer, &v22) == -1)
  {
    v11 = 0;
  }

  else
  {
    v9 = strlen(buffer);
    v10 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, buffer, v9, (v22.st_mode & 0xF000) == 0x4000);
    v11 = v10;
    if (v10)
    {
      v12 = CFBundleCopyInfoDictionaryForURL(v10);
      if (v12)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100003D3C;
        v21[3] = &unk_10000C720;
        v21[4] = v12;
        v21[5] = Mutable;
        v14 = objc_retainBlock(v21);
        (v14[2])(v14, kCFBundleInfoDictionaryVersionKey);
        (v14[2])(v14, kCFBundleExecutableKey);
        (v14[2])(v14, kCFBundleIdentifierKey);
        (v14[2])(v14, kCFBundleVersionKey);
        (v14[2])(v14, kCFBundleDevelopmentRegionKey);
        (v14[2])(v14, kCFBundleNameKey);
        (v14[2])(v14, @"CFBundleDisplayName");
        (v14[2])(v14, @"CFBundleSupportedPlatforms");
        (v14[2])(v14, @"DTCompiler");
        (v14[2])(v14, @"DTPlatformBuild");
        (v14[2])(v14, @"DTPlatformName");
        (v14[2])(v14, @"DTPlatformVersion");
        (v14[2])(v14, @"DTSDKName");
        (v14[2])(v14, @"DTXcode");
        (v14[2])(v14, @"DTXcodeBuild");
        (v14[2])(v14, @"LSRequiresIPhoneOS");
        (v14[2])(v14, @"MinimumOSVersion");
        (v14[2])(v14, @"UIDeviceFamily");
        (v14[2])(v14, @"UIRequiredDeviceCapabilities");
        Data = CFPropertyListCreateData(kCFAllocatorDefault, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          [v4 setObject:Mutable forKey:@"info plist"];
          CFRelease(Data);
        }

        CFRelease(v12);
        CFRelease(Mutable);
      }

      PathComponent = CFURLCreateCopyDeletingLastPathComponent(kCFAllocatorDefault, v11);
      v17 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, PathComponent, @"iTunesMetadata.plist", 0);
      CFRelease(PathComponent);
      v18 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v17);
      CFRelease(v17);
      if (v18)
      {
        if (CFReadStreamOpen(v18))
        {
          v19 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v18, 0, 0, 0, 0);
          CFReadStreamClose(v18);
          if (v19)
          {
            [v4 setObject:v19 forKey:@"itunes metadata"];
            CFRelease(v19);
          }
        }

        CFRelease(v18);
      }

      CFRelease(v11);
      v11 = v4;
    }
  }

  return v11;
}

- (id)getApplications
{
  v3 = +[NSMutableArray array];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100003F80;
  v15 = &unk_10000C748;
  v16 = self;
  v5 = v3;
  v17 = v5;
  [v4 enumerateBundlesOfType:1 block:&v12];

  if ([(DYEmbeddedDaemon *)self isAppleInternal])
  {
    v6 = objc_opt_new();
    [v5 addObject:v6];
    [v6 setObject:@"com.apple.gputools.ui-server" forKey:@"bundleIdentifier"];
    [v6 setObject:@"UI Server" forKey:@"title"];
    v7 = [NSDictionary alloc];
    v8 = [v7 initWithObjectsAndKeys:{@"Binary Launch", @"title", @"com.apple.gputools.BinaryLaunch", @"bundleIdentifier", 0, v12, v13, v14, v15, v16}];
    [v5 addObject:v8];
  }

  v9 = v17;
  v10 = v5;

  return v5;
}

- (void)handleMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 kind];
  if (v5 > 1291)
  {
    if (v5 > 1537)
    {
      if (v5 == 1538)
      {
        if ([(DYEmbeddedDaemon *)self inferiorPid])
        {
          symbolicatorQueue = self->_symbolicatorQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100004934;
          block[3] = &unk_10000C770;
          block[4] = self;
          v52 = v4;
          dispatch_async(symbolicatorQueue, block);
        }

        goto LABEL_57;
      }

      if (v5 != 2304)
      {
        goto LABEL_33;
      }

      v22 = DYMobileArchivesDirectory();
      v6 = [NSURL fileURLWithPath:v22 isDirectory:1];

      v23 = [DYFSStreamer alloc];
      v24 = [(DYEmbeddedDaemon *)self transport];
      v7 = [v23 initWithURL:v6 transport:v24 asSender:0];

      if (v7)
      {
        [v7 setOwner:@"mobile"];
        v14 = [v7 receiveTransfer:v4];
      }

      else
      {
        v14 = [(DYEmbeddedDaemon *)self transport];
        [DYFSStreamer denyTransfer:v4 transport:v14];
      }
    }

    else
    {
      if (v5 == 1292)
      {
        v6 = [v4 objectPayload];
        v30 = [v6 intValue];
        if (v30 != [(DYEmbeddedDaemon *)self inferiorPid]&& [(DYEmbeddedDaemon *)self inferiorPid]> 0 || !v30)
        {
          DYLog();
          [(DYEmbeddedDaemon *)self terminate:1, v30];
        }

        if (v30 == [(DYEmbeddedDaemon *)self inferiorPid])
        {
          if (!self->_guestAppIdentifier)
          {
            [(DYEmbeddedDaemon *)self cacheInferiorAppIdentifier];
          }
        }

        else
        {
          v53[0] = 0;
          v33 = task_for_pid(mach_task_self_, v30, v53);
          if (v33)
          {
            v47 = v30;
            v48 = mach_error_string(v33);
            DYLog();
          }

          [(DYEmbeddedDaemon *)self setInferiorPid:v30, v47, v48];
          [(DYEmbeddedDaemon *)self observeInferior];
          v34 = objc_alloc_init(DYGPUStatsReport);
          statsReport = self->_statsReport;
          self->_statsReport = v34;

          [(DYGPUStatsReport *)self->_statsReport setup];
          [(DYGPUStatsReport *)self->_statsReport startCollectingStats];
          if (!self->_guestAppIdentifier)
          {
            [(DYEmbeddedDaemon *)self cacheInferiorAppIdentifier];
          }
        }

        goto LABEL_56;
      }

      if (v5 != 1294)
      {
        goto LABEL_33;
      }

      v6 = objc_opt_new();
      v7 = objc_opt_new();
      for (i = 0; i != 5; ++i)
      {
        v9 = off_10000C790[i];
        v10 = MGCopyAnswer();
        if (v10)
        {
          [v7 setObject:v10 forKey:v9];
        }
      }

      if ([v7 count])
      {
        [v6 setObject:v7 forKey:@"screen-dimensions"];
      }

      v11 = [v4 attributeForKey:@"enable-metal-info"];
      v12 = [v11 BOOLValue];

      v13 = copy_metal_version();
      [v6 setObject:v13 forKey:@"metal_version"];

      v14 = +[NSMutableArray array];
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v16;
        if (((v12 | v16) & 1) == 0)
        {
          break;
        }

        v18 = [(DYEmbeddedDaemon *)self captureAPISupportForAPI:*(&unk_100008F60 + v15)];
        v19 = [v18 graphicsAPIInfo];
        if (v19)
        {
          [v14 addObjectsFromArray:v19];
        }

        v16 = 0;
        v15 = 1;
      }

      while ((v17 & 1) != 0);
      [v6 setObject:v14 forKey:@"gputools.contexts-info"];
      [v6 setObject:&off_10000D2B0 forKeyedSubscript:@"nativePointerSize"];
      v20 = [DYTransportMessage messageWithKind:1294 objectPayload:v6];
      v21 = [(DYEmbeddedDaemon *)self transport];
      [v21 send:v20 inReplyTo:v4 error:0];
    }

    goto LABEL_54;
  }

  if (v5 > 1288)
  {
    if (v5 != 1289)
    {
      if (v5 != 1290)
      {
        goto LABEL_33;
      }

      v6 = [NSBundle bundleWithIdentifier:@"com.apple.GPUTools"];
      v7 = [v6 URLForResource:@"version" withExtension:@"plist"];
      if (v7)
      {
        v49 = [[NSDictionary alloc] initWithContentsOfURL:v7];
      }

      else
      {
        v49 = 0;
      }

      DYGetGLInterposeDylibPath();
      v36 = DYMachOGetDylibCompatibilityVersion();
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1572864;
      }

      DYGetMTLInterposeDylibPath();
      v38 = DYMachOGetDylibCompatibilityVersion();
      v39 = DYCheckGLDispatchTableSize();
      v40 = [NSNumber numberWithUnsignedInt:v38];
      v41 = [NSNumber numberWithUnsignedInt:v37];
      v42 = [NSNumber numberWithBool:v39];
      v43 = [v6 infoDictionary];
      v44 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v40, @"interpose_version_metal", v41, @"interpose_version", v42, @"gl-dispatch-table-size-matches", v43, @"info", v49, @"version", 0];

      plist_filter(v44);
      v45 = [DYTransportMessage messageWithKind:1290 plistPayload:v44];
      v46 = [(DYEmbeddedDaemon *)self transport];
      [v46 send:v45 inReplyTo:v4 error:0];

      goto LABEL_55;
    }

    v31 = [(DYEmbeddedDaemon *)self bringAppToForeground:self->_guestAppIdentifier];
    v6 = [(DYEmbeddedDaemon *)self transport];
    v7 = [NSNumber numberWithBool:v31];
    v14 = [DYTransportMessage messageWithKind:1289 attributes:0 objectPayload:v7];
    [v6 send:v14 inReplyTo:v4 error:0];
LABEL_54:

LABEL_55:
LABEL_56:

    goto LABEL_57;
  }

  if (v5 == 264)
  {
    v25 = self->_statsReport;
    if (v25)
    {
      v26 = [(DYGPUStatsReport *)v25 lastStatsReport];
      v27 = [v26 copy];

      if (v27)
      {
        v28 = [DYTransportMessage messageWithKind:1296 objectPayload:v27];
        v29 = [(DYEmbeddedDaemon *)self transport];
        [v29 send:v28 error:0];
      }
    }

    goto LABEL_33;
  }

  if (v5 != 1288)
  {
LABEL_33:
    v50.receiver = self;
    v50.super_class = DYEmbeddedDaemon;
    [(DYEmbeddedDaemon *)&v50 handleMessage:v4];
  }

LABEL_57:
}

- (void)terminate:(int)a3
{
  DYLog();
  v4 = [(DYEmbeddedDaemon *)self inferiorPid];
  [(DYEmbeddedDaemon *)self setInferiorPid:0];
  statsReport = self->_statsReport;
  if (statsReport)
  {
    [(DYGPUStatsReport *)statsReport stopCollectingStats];
    v6 = self->_statsReport;
    self->_statsReport = 0;
  }

  if (v4 >= 1)
  {
    if ([(DYEmbeddedDaemon *)self ownsInferior])
    {
      kill(v4, 9);
    }

    if ([(DYEmbeddedDaemon *)self capturingInferior])
    {
      kill(v4, 9);
    }
  }

  [(DYTransport *)self->_helperTransport invalidate];
  v7 = [(DYEmbeddedDaemon *)self transport];
  [v7 destroySharedMemoryTransport];

  v8 = [(DYEmbeddedDaemon *)self transport];
  [v8 invalidate];

  v10.receiver = self;
  v10.super_class = DYEmbeddedDaemon;
  [(DYEmbeddedDaemon *)&v10 invalidate];
  (*(self->_terminationHandler + 2))();
}

@end