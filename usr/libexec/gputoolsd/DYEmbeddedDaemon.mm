@interface DYEmbeddedDaemon
- (BOOL)bringAppToForeground:(id)foreground;
- (BOOL)createInferiorTransportAndSetEnvironment:(id)environment uniqueIdentifier:(id)identifier error:(id *)error;
- (BOOL)launchInferior:(id)inferior finalEnvironment:(id *)environment error:(id *)error;
- (BOOL)launchUIServer:(id)server error:(id *)error;
- (DYEmbeddedDaemon)initWithTransport:(id)transport terminationHandler:(id)handler;
- (id)getApplications;
- (id)processApplication:(id)application;
- (int)launchInferiorWithIdentifer:(id)identifer environment:(id)environment arguments:(id)arguments error:(id *)error;
- (int)launchInferiorWithPath:(id)path arguments:(id)arguments environment:(id)environment workingDirectory:(id)directory error:(id *)error;
- (void)cacheInferiorAppIdentifier;
- (void)handleMessage:(id)message;
- (void)terminate:(int)terminate;
@end

@implementation DYEmbeddedDaemon

- (DYEmbeddedDaemon)initWithTransport:(id)transport terminationHandler:(id)handler
{
  transportCopy = transport;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = DYEmbeddedDaemon;
  v8 = [(DYEmbeddedDaemon *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(DYEmbeddedDaemon *)v8 setTransport:transportCopy];
    v10 = objc_retainBlock(handlerCopy);
    terminationHandler = v9->_terminationHandler;
    v9->_terminationHandler = v10;

    transport = [(DYEmbeddedDaemon *)v9 transport];
    if (!transport)
    {
      __assert_rtn("[DYEmbeddedDaemon initWithTransport:terminationHandler:]", ", 0, "self.transport"");
    }

    transport2 = [(DYEmbeddedDaemon *)v9 transport];
    [transport2 setPrioritizeOutgoingMessages:1];

    v14 = dispatch_get_global_queue(-2, 0);
    v15 = dispatch_queue_create_with_target_V2("symbolicator", 0, v14);
    symbolicatorQueue = v9->_symbolicatorQueue;
    v9->_symbolicatorQueue = v15;

    v17 = v9;
  }

  return v9;
}

- (BOOL)createInferiorTransportAndSetEnvironment:(id)environment uniqueIdentifier:(id)identifier error:(id *)error
{
  environmentCopy = environment;
  identifierCopy = identifier;
  v10 = [environmentCopy objectForKey:@"METAL_LOAD_INTERPOSER"];
  if ([v10 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v12 = [environmentCopy objectForKey:@"METAL_DIAGNOSTICS_ENABLED"];
    bOOLValue = [v12 BOOLValue];
  }

  v13 = [(DYEmbeddedDaemon *)self captureAPISupportForAPI:1];
  interposeDylibPath = [v13 interposeDylibPath];
  [environmentCopy setObject:interposeDylibPath forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];

  v15 = [(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:environmentCopy withAPI:bOOLValue uniqueIdentifier:identifierCopy error:error];
  return v15;
}

- (void)cacheInferiorAppIdentifier
{
  v3 = [RBSProcessIdentifier identifierWithPid:[(DYEmbeddedDaemon *)self inferiorPid]];
  v7 = [RBSProcessHandle handleForIdentifier:v3 error:0];

  if (v7)
  {
    bundle = [v7 bundle];
    identifier = [bundle identifier];
    guestAppIdentifier = self->_guestAppIdentifier;
    self->_guestAppIdentifier = identifier;
  }

  else
  {
    [(DYEmbeddedDaemon *)self inferiorPid];
    DYLog();
  }
}

- (BOOL)bringAppToForeground:(id)foreground
{
  foregroundCopy = foreground;
  if (sub_100001938(foregroundCopy) == -1)
  {
    bOOLResult = 0;
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
    [v5 openApplication:foregroundCopy withOptions:0 completion:v9];
    bOOLResult = [v6 BOOLResult];
  }

  return bOOLResult;
}

- (int)launchInferiorWithPath:(id)path arguments:(id)arguments environment:(id)environment workingDirectory:(id)directory error:(id *)error
{
  pathCopy = path;
  argumentsCopy = arguments;
  environmentCopy = environment;
  directoryCopy = directory;
  if (([(DYEmbeddedDaemon *)self isAppleInternal]& 1) == 0)
  {
    [(DYEmbeddedDaemon *)self terminate:1];
    intValue = 0;
    goto LABEL_25;
  }

  if ([directoryCopy length])
  {
    v47 = 0;
    v16 = +[NSFileManager defaultManager];
    v17 = [v16 fileExistsAtPath:directoryCopy isDirectory:&v47];

    if (!v17 || (v47 & 1) == 0)
    {
      v50 = NSLocalizedDescriptionKey;
      directoryCopy = [NSString stringWithFormat:@"Working directory doesn't exist. %@", directoryCopy];
      v51 = directoryCopy;
      v32 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      *error = [DYError errorWithDomain:DYErrorDomain code:1 userInfo:v32];

LABEL_16:
      intValue = -1;
      goto LABEL_25;
    }
  }

  v18 = +[NSFileManager defaultManager];
  v19 = [v18 fileExistsAtPath:pathCopy];

  if ((v19 & 1) == 0)
  {
    v48 = NSLocalizedDescriptionKey;
    pathCopy = [NSString stringWithFormat:@"Binary Launch Path doesn't exist. %@", pathCopy];
    v49 = pathCopy;
    v34 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *error = [DYError errorWithDomain:DYErrorDomain code:1 userInfo:v34];

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
    connect = [(DYTransport *)self->_helperTransport connect];
    [connect timeoutAfter:0 label:500.0];
    if ([connect BOOLResult])
    {
      v41 = [NSDictionary dictionaryWithObjectsAndKeys:pathCopy, kDYGuestAppLaunchPathKey, environmentCopy, kDYGuestAppLaunchEnvironmentKey, argumentsCopy, kDYGuestAppLaunchArgumentsKey, directoryCopy, kDYGuestAppLaunchCurrentDirectoryKey, 0];
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
        LOBYTE(v25) = [(DYTransport *)v26 send:v42 error:error replyQueue:v27 timeout:0 handler:v44];

        v28 = connect;
        if (v25)
        {
          result = [v40 result];
          if (error)
          {
            *error = [v40 error];
          }

          intValue = [result intValue];
        }

        else
        {
          DYLog();
          [(DYEmbeddedDaemon *)self terminate:1];
          intValue = 0;
        }
      }

      else
      {
        DYLog();
        [(DYEmbeddedDaemon *)self terminate:1];
        intValue = 0;
        v28 = connect;
      }
    }

    else
    {
      DYLog();
      [(DYEmbeddedDaemon *)self terminate:1];
      intValue = 0;
      v28 = connect;
    }
  }

  else
  {
    error = [(DYTransport *)self->_helperTransport error];
    v36 = [error description];
    v37 = v36;
    uTF8String = [v36 UTF8String];
    DYLog();

    [(DYEmbeddedDaemon *)self terminate:1, uTF8String];
    intValue = 0;
  }

LABEL_25:
  return intValue;
}

- (int)launchInferiorWithIdentifer:(id)identifer environment:(id)environment arguments:(id)arguments error:(id *)error
{
  identiferCopy = identifer;
  environmentCopy = environment;
  argumentsCopy = arguments;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  while (1)
  {
    v11 = sub_100001938(identiferCopy);
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
  v39[1] = environmentCopy;
  v38[2] = FBSDebugOptionKeyArguments;
  v39[2] = argumentsCopy;
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
  [v15 openApplication:identiferCopy withOptions:v16 completion:v31];

  v18 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v17, v18);
  if (*(v35 + 6) == -1)
  {
    v22 = [identiferCopy description];
    v23 = v22;
    uTF8String = [v22 UTF8String];
    DYLog();

    if (error)
    {
      v24 = [NSDictionary dictionaryWithObject:@"Timed-out waiting for the application to launch." forKey:NSLocalizedDescriptionKey, uTF8String];
      *error = [DYError errorWithDomain:DYErrorDomain code:5 userInfo:v24];
    }

    goto LABEL_12;
  }

  if ((sub_1000028F4(identiferCopy) & 1) == 0)
  {
    v30 = 0;
    v19 = task_for_pid(mach_task_self_, *(v35 + 6), &v30);
    if (v19)
    {
      v26 = *(v35 + 6);
      v28 = mach_error_string(v19);
      DYLog();
      kill(*(v35 + 6), 9);
      if (error)
      {
        v20 = [NSDictionary dictionaryWithObject:@"Failed to get the application's task port." forKey:NSLocalizedDescriptionKey, v26, v28];
        *error = [DYError errorWithDomain:DYErrorDomain code:29 userInfo:v20];
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

- (BOOL)launchUIServer:(id)server error:(id *)error
{
  serverCopy = server;
  if (([(DYEmbeddedDaemon *)self isAppleInternal]& 1) == 0)
  {
    [(DYEmbeddedDaemon *)self terminate:1];
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [serverCopy objectForKey:kDYGuestAppLaunchEnvironmentKey];
  if (v9)
  {
    [v8 addEntriesFromDictionary:v9];
  }

  v10 = [serverCopy objectForKey:kDYGuestAppLaunchReplayer];
  if (v10)
  {
    v4 = [serverCopy objectForKeyedSubscript:kDYGuestAppLaunchCapture];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(DYEmbeddedDaemon *)self setShouldLoadCapture:bOOLValue];
  if (v10)
  {
  }

  v12 = [serverCopy objectForKeyedSubscript:kDYGuestAppLaunchDiagnostics];
  -[DYEmbeddedDaemon setShouldLoadDiagnostics:](self, "setShouldLoadDiagnostics:", [v12 BOOLValue]);

  v13 = [(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:v8 uniqueIdentifier:0 error:error];
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
      error = [(DYTransport *)self->_helperTransport error];
      v19 = [error description];
      uTF8String = [v19 UTF8String];
      DYLog();

      [(DYEmbeddedDaemon *)self terminate:1, uTF8String];
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100002D60;
    v29[3] = &unk_10000C688;
    v29[4] = self;
    [v17 setCancellationHandler:v29];
    [v17 resume];
    connect = [(DYTransport *)self->_helperTransport connect];
    [connect timeoutAfter:0 label:500.0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100002EFC;
    v24[3] = &unk_10000C700;
    v21 = connect;
    v25 = v21;
    selfCopy = self;
    v27 = v8;
    v28 = serverCopy;
    [v21 notifyOnQueue:&_dispatch_main_q handler:v24];
  }

  return v13;
}

- (BOOL)launchInferior:(id)inferior finalEnvironment:(id *)environment error:(id *)error
{
  inferiorCopy = inferior;
  v9 = [inferiorCopy objectForKey:kDYGuestAppLaunchBundleIdentifierKey];
  v45 = [inferiorCopy objectForKey:kDYGuestAppLaunchPathKey];
  v10 = [inferiorCopy objectForKey:kDYGuestAppLaunchEnvironmentKey];
  v11 = [v10 mutableCopy];

  v12 = [inferiorCopy objectForKey:kDYGuestAppLaunchArgumentsKey];
  v43 = [v12 mutableCopy];

  v13 = [inferiorCopy objectForKey:kDYGuestAppLaunchCurrentDirectoryKey];
  v42 = [v13 mutableCopy];

  v14 = [(__CFString *)v9 isEqualToString:@"com.apple.gputools.ui-server"];
  if ([(__CFString *)v9 isEqualToString:@"com.apple.gputools.BinaryLaunch"])
  {
    v13 = [v11 objectForKey:@"BINARY_LAUNCH_PATH"];

    v9 = 0;
    v45 = v13;
  }

  v44 = [inferiorCopy objectForKey:kDYGuestAppLaunchReplayer];
  if (v44)
  {
    v13 = [inferiorCopy objectForKeyedSubscript:kDYGuestAppLaunchCapture];
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(DYEmbeddedDaemon *)self setShouldLoadCapture:bOOLValue];
  if (v44)
  {
  }

  v16 = [inferiorCopy objectForKeyedSubscript:kDYGuestAppLaunchDiagnostics];
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
      transport = [(DYEmbeddedDaemon *)self transport];
      v21 = v18;
      v22 = v19;
      shouldLoadCapture = [(DYEmbeddedDaemon *)self shouldLoadCapture];
      shouldLoadDiagnostics = [(DYEmbeddedDaemon *)self shouldLoadDiagnostics];
      if (transport)
      {
        self = [transport createNewSharedMemoryTransportWithURLs:v21 uniqueIdentifier:v22 loadCapture:0 loadDiagnostics:{shouldLoadCapture, shouldLoadDiagnostics}];
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
  if (![(DYEmbeddedDaemon *)self createInferiorTransportAndSetEnvironment:v11 uniqueIdentifier:0 error:error])
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

    [(DYEmbeddedDaemon *)self setInferiorPid:[(DYEmbeddedDaemon *)self launchInferiorWithIdentifer:v9 environment:v11 arguments:v43 error:error]];
    if ([(DYEmbeddedDaemon *)self inferiorPid]>= 1)
    {
      objc_storeStrong(&self->_guestAppIdentifier, v9);
    }

    goto LABEL_40;
  }

  if (v45)
  {
    v9 = 0;
    [(DYEmbeddedDaemon *)self setInferiorPid:[(DYEmbeddedDaemon *)self launchInferiorWithPath:v45 arguments:v43 environment:v11 workingDirectory:v42 error:error]];
LABEL_40:
    if ([(DYEmbeddedDaemon *)self inferiorPid]>= 1)
    {
      if (environment)
      {
        v37 = v11;
        *environment = v11;
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

- (id)processApplication:(id)application
{
  applicationCopy = application;
  v4 = objc_opt_new();
  bundleURL = [applicationCopy bundleURL];
  path = [bundleURL path];

  bundleIdentifier = [applicationCopy bundleIdentifier];
  [v4 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  localizedName = [applicationCopy localizedName];
  [v4 setObject:localizedName forKeyedSubscript:@"title"];

  if (path)
  {
    [v4 setObject:path forKeyedSubscript:@"fullpath"];
  }

  if (!CFStringGetFileSystemRepresentation(path, buffer, 1024) || stat(buffer, &v22) == -1)
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
  selfCopy = self;
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
    v8 = [v7 initWithObjectsAndKeys:{@"Binary Launch", @"title", @"com.apple.gputools.BinaryLaunch", @"bundleIdentifier", 0, v12, v13, v14, v15, selfCopy}];
    [v5 addObject:v8];
  }

  v9 = v17;
  v10 = v5;

  return v5;
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  kind = [messageCopy kind];
  if (kind > 1291)
  {
    if (kind > 1537)
    {
      if (kind == 1538)
      {
        if ([(DYEmbeddedDaemon *)self inferiorPid])
        {
          symbolicatorQueue = self->_symbolicatorQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100004934;
          block[3] = &unk_10000C770;
          block[4] = self;
          v52 = messageCopy;
          dispatch_async(symbolicatorQueue, block);
        }

        goto LABEL_57;
      }

      if (kind != 2304)
      {
        goto LABEL_33;
      }

      v22 = DYMobileArchivesDirectory();
      objectPayload = [NSURL fileURLWithPath:v22 isDirectory:1];

      v23 = [DYFSStreamer alloc];
      transport = [(DYEmbeddedDaemon *)self transport];
      v7 = [v23 initWithURL:objectPayload transport:transport asSender:0];

      if (v7)
      {
        [v7 setOwner:@"mobile"];
        transport2 = [v7 receiveTransfer:messageCopy];
      }

      else
      {
        transport2 = [(DYEmbeddedDaemon *)self transport];
        [DYFSStreamer denyTransfer:messageCopy transport:transport2];
      }
    }

    else
    {
      if (kind == 1292)
      {
        objectPayload = [messageCopy objectPayload];
        intValue = [objectPayload intValue];
        if (intValue != [(DYEmbeddedDaemon *)self inferiorPid]&& [(DYEmbeddedDaemon *)self inferiorPid]> 0 || !intValue)
        {
          DYLog();
          [(DYEmbeddedDaemon *)self terminate:1, intValue];
        }

        if (intValue == [(DYEmbeddedDaemon *)self inferiorPid])
        {
          if (!self->_guestAppIdentifier)
          {
            [(DYEmbeddedDaemon *)self cacheInferiorAppIdentifier];
          }
        }

        else
        {
          v53[0] = 0;
          v33 = task_for_pid(mach_task_self_, intValue, v53);
          if (v33)
          {
            v47 = intValue;
            v48 = mach_error_string(v33);
            DYLog();
          }

          [(DYEmbeddedDaemon *)self setInferiorPid:intValue, v47, v48];
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

      if (kind != 1294)
      {
        goto LABEL_33;
      }

      objectPayload = objc_opt_new();
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
        [objectPayload setObject:v7 forKey:@"screen-dimensions"];
      }

      v11 = [messageCopy attributeForKey:@"enable-metal-info"];
      bOOLValue = [v11 BOOLValue];

      v13 = copy_metal_version();
      [objectPayload setObject:v13 forKey:@"metal_version"];

      transport2 = +[NSMutableArray array];
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v16;
        if (((bOOLValue | v16) & 1) == 0)
        {
          break;
        }

        v18 = [(DYEmbeddedDaemon *)self captureAPISupportForAPI:*(&unk_100008F60 + v15)];
        graphicsAPIInfo = [v18 graphicsAPIInfo];
        if (graphicsAPIInfo)
        {
          [transport2 addObjectsFromArray:graphicsAPIInfo];
        }

        v16 = 0;
        v15 = 1;
      }

      while ((v17 & 1) != 0);
      [objectPayload setObject:transport2 forKey:@"gputools.contexts-info"];
      [objectPayload setObject:&off_10000D2B0 forKeyedSubscript:@"nativePointerSize"];
      v20 = [DYTransportMessage messageWithKind:1294 objectPayload:objectPayload];
      transport3 = [(DYEmbeddedDaemon *)self transport];
      [transport3 send:v20 inReplyTo:messageCopy error:0];
    }

    goto LABEL_54;
  }

  if (kind > 1288)
  {
    if (kind != 1289)
    {
      if (kind != 1290)
      {
        goto LABEL_33;
      }

      objectPayload = [NSBundle bundleWithIdentifier:@"com.apple.GPUTools"];
      v7 = [objectPayload URLForResource:@"version" withExtension:@"plist"];
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
      infoDictionary = [objectPayload infoDictionary];
      v44 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v40, @"interpose_version_metal", v41, @"interpose_version", v42, @"gl-dispatch-table-size-matches", infoDictionary, @"info", v49, @"version", 0];

      plist_filter(v44);
      v45 = [DYTransportMessage messageWithKind:1290 plistPayload:v44];
      transport4 = [(DYEmbeddedDaemon *)self transport];
      [transport4 send:v45 inReplyTo:messageCopy error:0];

      goto LABEL_55;
    }

    v31 = [(DYEmbeddedDaemon *)self bringAppToForeground:self->_guestAppIdentifier];
    objectPayload = [(DYEmbeddedDaemon *)self transport];
    v7 = [NSNumber numberWithBool:v31];
    transport2 = [DYTransportMessage messageWithKind:1289 attributes:0 objectPayload:v7];
    [objectPayload send:transport2 inReplyTo:messageCopy error:0];
LABEL_54:

LABEL_55:
LABEL_56:

    goto LABEL_57;
  }

  if (kind == 264)
  {
    v25 = self->_statsReport;
    if (v25)
    {
      lastStatsReport = [(DYGPUStatsReport *)v25 lastStatsReport];
      v27 = [lastStatsReport copy];

      if (v27)
      {
        v28 = [DYTransportMessage messageWithKind:1296 objectPayload:v27];
        transport5 = [(DYEmbeddedDaemon *)self transport];
        [transport5 send:v28 error:0];
      }
    }

    goto LABEL_33;
  }

  if (kind != 1288)
  {
LABEL_33:
    v50.receiver = self;
    v50.super_class = DYEmbeddedDaemon;
    [(DYEmbeddedDaemon *)&v50 handleMessage:messageCopy];
  }

LABEL_57:
}

- (void)terminate:(int)terminate
{
  DYLog();
  inferiorPid = [(DYEmbeddedDaemon *)self inferiorPid];
  [(DYEmbeddedDaemon *)self setInferiorPid:0];
  statsReport = self->_statsReport;
  if (statsReport)
  {
    [(DYGPUStatsReport *)statsReport stopCollectingStats];
    v6 = self->_statsReport;
    self->_statsReport = 0;
  }

  if (inferiorPid >= 1)
  {
    if ([(DYEmbeddedDaemon *)self ownsInferior])
    {
      kill(inferiorPid, 9);
    }

    if ([(DYEmbeddedDaemon *)self capturingInferior])
    {
      kill(inferiorPid, 9);
    }
  }

  [(DYTransport *)self->_helperTransport invalidate];
  transport = [(DYEmbeddedDaemon *)self transport];
  [transport destroySharedMemoryTransport];

  transport2 = [(DYEmbeddedDaemon *)self transport];
  [transport2 invalidate];

  v10.receiver = self;
  v10.super_class = DYEmbeddedDaemon;
  [(DYEmbeddedDaemon *)&v10 invalidate];
  (*(self->_terminationHandler + 2))();
}

@end