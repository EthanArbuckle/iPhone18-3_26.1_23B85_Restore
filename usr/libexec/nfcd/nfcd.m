void sub_100001D40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&_mh_execute_header, "NFScreenStateMonitor blanked screen state update", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001E88;
    v14[3] = &unk_10031BC20;
    v15 = WeakRetained;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    dispatch_async(v13, v14);
  }
}

void sub_100001E88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (!v1)
  {
    goto LABEL_40;
  }

  if (!v5)
  {
    MKBGetDeviceLockState();
    goto LABEL_32;
  }

  v7 = [v5 displayBacklightLevel];
  MKBGetDeviceLockState();
  if (v7 < 1)
  {
LABEL_32:
    v11 = 0;
    goto LABEL_35;
  }

  sub_10027EB38(v8);
  v11 = 1;
  if (!*(v10 + 4064))
  {
    goto LABEL_35;
  }

  if (!v6)
  {
    goto LABEL_35;
  }

  v12 = v9;
  if (!v9)
  {
    goto LABEL_35;
  }

  if (NFIsInternalBuild())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_frontBoardServiceMonitorHandler:layout:transitionContext:");
      v19 = [v6 transitionReasons];
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i devLockState=%d, transitionReasons: %@", v20, ClassName, Name, 206, v12, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(v1);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(v1);
      v25 = sel_getName("_frontBoardServiceMonitorHandler:layout:transitionContext:");
      v26 = [v6 transitionReasons];
      *buf = 67110402;
      v44 = v23;
      v45 = 2082;
      v46 = v24;
      v47 = 2082;
      v48 = v25;
      v49 = 1024;
      v50 = 206;
      v51 = 1024;
      v52 = v12;
      v53 = 2112;
      v54 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i devLockState=%d, transitionReasons: %@", buf, 0x32u);
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = [v6 transitionReasons];
  v28 = [v27 countByEnumeratingWithState:&v39 objects:buf count:16];
  if (!v28)
  {
LABEL_33:

    goto LABEL_34;
  }

  v30 = v28;
  v31 = *v40;
  v32 = 1;
  do
  {
    for (i = 0; i != v30; i = i + 1)
    {
      if (*v40 != v31)
      {
        objc_enumerationMutation(v27);
      }

      v34 = *(*(&v39 + 1) + 8 * i);
      v35 = sub_10027E4DC(v29);
      if (v35 <= 0x25)
      {
        if (!v35)
        {
          continue;
        }

        if (((1 << v35) & 0x26601122FCLL) != 0)
        {
          goto LABEL_33;
        }
      }

      v32 = 0;
    }

    v30 = [v27 countByEnumeratingWithState:&v39 objects:buf count:16];
  }

  while (v30);

  if ((v32 & 1) == 0)
  {
    v11 = 2;
    goto LABEL_35;
  }

LABEL_34:
  v11 = 1;
LABEL_35:
  v36 = v1;
  objc_sync_enter(v36);
  if (v11 == v36[5])
  {
    objc_sync_exit(v36);
    goto LABEL_39;
  }

  v36[5] = v11;
  objc_sync_exit(v36);

  WeakRetained = objc_loadWeakRetained(v36 + 2);
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v36 = objc_loadWeakRetained(v36 + 2);
    [v36 didScreenStateChange:v11];
LABEL_39:
  }

LABEL_40:
}

void sub_100002244(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = "NFCC field on";
  }

  else
  {
    v4 = "NFCC field off";
  }

  v5 = _os_activity_create(&_mh_execute_header, v4, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v5, state);
  os_activity_scope_leave(state);

  if (a1)
  {
    if (*(a1 + 169) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("driverDidDetectFieldChange:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Driver session is closed", v11, ClassName, Name, 802);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        v15 = object_getClassName(a1);
        v16 = sel_getName("driverDidDetectFieldChange:");
        *state = 67109890;
        *&state[4] = v14;
        *&state[8] = 2082;
        *&state[10] = v15;
        v25 = 2082;
        v26 = v16;
        v27 = 1024;
        v28 = 802;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Driver session is closed", state, 0x22u);
      }
    }

    else
    {
      [*(a1 + 72) lock];
      v17 = *(a1 + 88);
      if (!a2)
      {
        [v17 startTimer:0.5];
        [*(a1 + 72) unlock];
        [*(a1 + 208) handleFieldReset];
        return;
      }

      [v17 stopTimer];
      if (*(a1 + 164) == 1)
      {
        *(a1 + 164) = 2;
      }

      if (*(a1 + 170))
      {
        [*(a1 + 72) unlock];
        return;
      }

      *(a1 + 170) = 1;
      *(a1 + 152) = mach_absolute_time();
      PLLogRegisteredEvent();
      [*(a1 + 80) startTimer:60.0 leeway:0.5];
      v18 = +[NFPowerAssertion sharedPowerAssertion];
      [v18 holdPowerAssertion:@"FieldDetect" behaviourWhenSleepStarted:0];

      mach_absolute_time();
      v19 = *(a1 + 144);
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v21 = *(a1 + 104);
      if (v21)
      {
        if (*(a1 + 144) && ElapsedTimeInMillisecondsFromMachTime <= 0x3E8)
        {
          if ((*(a1 + 168) & 1) == 0)
          {
            *(a1 + 168) = 1;
            *(a1 + 144) = 0;
            [*(a1 + 72) unlock];
            [*(a1 + 224) driverFieldEntered];
            v22 = [*(a1 + 104) copy];
            [v22 setCachedBeforeRFReset:1];
            [*(a1 + 208) handleFieldNotification:v22];

            return;
          }
        }

        else
        {
          *(a1 + 168) = 0;
          *(a1 + 104) = 0;
        }
      }

      *(a1 + 144) = 0;
      [*(a1 + 72) unlock];
      [*(a1 + 224) driverFieldEntered];
    }
  }
}

void sub_10000257C(void *a1, io_registry_entry_t a2, int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "Camera state updated", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v6, state);
  os_activity_scope_leave(state);

  if (a3 == -536870608)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"FrontCameraActive", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      TypeID = CFBooleanGetTypeID();
      v10 = CFGetTypeID(v8);
      if (v8 == kCFBooleanTrue && TypeID == v10)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v12 = 0;
    }

    v13 = IORegistryEntryCreateCFProperty(a2, @"BackCameraActive", kCFAllocatorDefault, 0);
    if (v13)
    {
      v14 = v13;
      v15 = CFBooleanGetTypeID();
      v17 = v15 == CFGetTypeID(v14) && v14 == kCFBooleanTrue;
      v12 = v12 | v17;
      CFRelease(v14);
    }

    v18 = IORegistryEntryCreateCFProperty(a2, @"BackTeleCameraActive", kCFAllocatorDefault, 0);
    if (v18)
    {
      v19 = v18;
      v20 = CFBooleanGetTypeID();
      v21 = CFGetTypeID(v19);
      if (v19 == kCFBooleanTrue && v20 == v21)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      v12 = v23 | v12;
      CFRelease(v19);
    }

    v24 = IORegistryEntryCreateCFProperty(a2, @"BackSuperWideCameraActive", kCFAllocatorDefault, 0);
    if (v24)
    {
      v25 = v24;
      v26 = CFBooleanGetTypeID();
      v27 = CFGetTypeID(v25);
      if (v25 == kCFBooleanTrue && v26 == v27)
      {
        v29 = 8;
      }

      else
      {
        v29 = 0;
      }

      v12 = v29 | v12;
      CFRelease(v25);
    }

    if (a1)
    {
      v30 = a1;
      objc_sync_enter(v30);
      isa = v30[7].isa;
      if (isa == v12 || (BYTE4(v30[7].isa) & 1) != 0)
      {
        objc_sync_exit(v30);
      }

      else
      {
        LODWORD(v30[7].isa) = v12;
        [(objc_class *)v30[1].isa startTimer:0.100000001];
        if (LODWORD(v30[8].isa) == -1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v33 = Logger;
            Class = object_getClass(v30);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v30);
            Name = sel_getName("_updateCameraStateValue:");
            v37 = 45;
            if (isMetaClass)
            {
              v37 = 43;
            }

            v33(6, "%c[%{public}s %{public}s]:%i Initial state before debounce=%d", v37, ClassName, Name, 282, isa);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = object_getClass(v30);
            if (class_isMetaClass(v39))
            {
              v40 = 43;
            }

            else
            {
              v40 = 45;
            }

            v41 = object_getClassName(v30);
            v42 = sel_getName("_updateCameraStateValue:");
            v43 = isa;
            *state = 67110146;
            *&state[4] = v40;
            *&state[8] = 2082;
            *&state[10] = v41;
            v58 = 2082;
            v59 = v42;
            v60 = 1024;
            v61 = 282;
            v62 = 1024;
            v63 = isa;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Initial state before debounce=%d", state, 0x28u);
          }

          else
          {
            v43 = isa;
          }

          LODWORD(v30[8].isa) = v43;
        }

        objc_sync_exit(v30);

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(v30);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(v30);
          v56 = sel_getName("_updateCameraStateValue:");
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(6, "%c[%{public}s %{public}s]:%i current=%d, new=%d", v49, v48, v56, 289, isa, v12);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = object_getClass(v30);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(v30);
          v54 = sel_getName("_updateCameraStateValue:");
          *state = 67110402;
          *&state[4] = v52;
          *&state[8] = 2082;
          *&state[10] = v53;
          v58 = 2082;
          v59 = v54;
          v60 = 1024;
          v61 = 289;
          v62 = 1024;
          v63 = isa;
          v64 = 1024;
          v65 = v12;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i current=%d, new=%d", state, 0x2Eu);
        }

        v30 = v50;
      }
    }
  }
}

void sub_100002A64(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.touch.eventTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(WeakRetained);
      if (class_isMetaClass(Class))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      isa_low = WeakRetained[4];
      if (isa_low)
      {
        isa_low = LOBYTE(isa_low[1].isa);
      }

      v5(4, "%c[%{public}s %{public}s]:%i Touch system ready event expired, systemReady=%d", v7, ClassName, Name, 675, isa_low);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(WeakRetained);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(WeakRetained);
      v15 = sel_getName(*(a1 + 40));
      v16 = WeakRetained[4];
      if (v16)
      {
        LODWORD(v16) = LOBYTE(v16[1].isa);
      }

      LODWORD(state) = 67110146;
      HIDWORD(state) = v13;
      *state_8 = 2082;
      *&state_8[2] = v14;
      *&state_8[10] = 2082;
      *&state_8[12] = v15;
      *&state_8[20] = 1024;
      *&state_8[22] = 675;
      *&state_8[26] = 1024;
      *&state_8[28] = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Touch system ready event expired, systemReady=%d", &state, 0x28u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(v19);
      v21 = object_getClassName(WeakRetained);
      v29 = sel_getName("_touchSystemReadyExpired");
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i ", v22, v21, v29, 953);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(WeakRetained);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(WeakRetained);
      v27 = sel_getName("_touchSystemReadyExpired");
      LODWORD(state) = 67109890;
      HIDWORD(state) = v25;
      *state_8 = 2082;
      *&state_8[2] = v26;
      *&state_8[10] = 2082;
      *&state_8[12] = v27;
      *&state_8[20] = 1024;
      *&state_8[22] = 953;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &state, 0x22u);
    }

    dispatch_assert_queue_V2(WeakRetained[10]);
    v28 = WeakRetained[9];
    state = _NSConcreteStackBlock;
    *state_8 = 3221225472;
    *&state_8[8] = sub_100002DC4;
    *&state_8[16] = &unk_100315F30;
    *&state_8[24] = WeakRetained;
    dispatch_async(v28, &state);
  }
}

void sub_100002DC4(uint64_t a1)
{
  *(*(a1 + 32) + 153) = 0;
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 32))
  {
    *(v1 + 152) = 1;
  }

  v2 = +[_NFHardwareManager sharedHardwareManager];
  [v2 maybeStartNextSession];
}

uint64_t sub_100002E88(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[12];
  if (!v2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_hasBeenFirstUnlocked");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Not init'ed", v10, ClassName, Name, 3100);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67109890;
      v16 = v13;
      v17 = 2082;
      v18 = object_getClassName(a1);
      v19 = 2082;
      v20 = sel_getName("_hasBeenFirstUnlocked");
      v21 = 1024;
      v22 = 3100;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not init'ed", buf, 0x22u);
    }

    return 0;
  }

  if (!sub_1000030C8(v2))
  {
    return 0;
  }

  v3 = a1[12];

  return sub_100003110(v3);
}

uint64_t sub_100003068(id *a1)
{
  if (!a1 || a1[37] != 1 || !sub_100002E88(a1))
  {
    return 0;
  }

  return sub_100003158(a1);
}

uint64_t sub_1000030C8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[12];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100003110(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[13];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100003158(id *a1)
{
  if (a1)
  {
    v2 = a1[16];
    v3 = [v2 fieldDetectRequested];

    v4 = a1[2];
    v5 = [v4 isActive];

    v6 = [a1 expressModeManager];
    if (v6)
    {
      if (*(v6 + 152) == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = *(v6 + 179);
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v5 | v7 | sub_1000040FC(a1) | v3;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100003384(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(v1);
    v2 = v1[36];
    objc_sync_exit(v1);

    if ((v2 - 1) <= 3)
    {
      return (v2 + 1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100003478(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[14] != 0;
  objc_sync_exit(v1);

  return v2;
}

void sub_1000034C8(uint64_t a1, double a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC temperature ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  if (a1)
  {
    [*(a1 + 208) handleTemperatureChange:a2];
  }
}

id *sub_100003548(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[20];
    objc_sync_enter(v2);
    v1 = [v1[20] copy];
    objc_sync_exit(v2);
  }

  return v1;
}

uint64_t sub_10000361C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 120);

    return [v4 handleFieldReset];
  }

  return result;
}

void sub_100003678(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 72) lock];
    if (*(a1 + 164) == 2)
    {
      *(a1 + 164) = 1;
    }

    if (*(a1 + 170) == 1)
    {
      *(a1 + 144) = mach_absolute_time();
      *(a1 + 170) = 0;
      *(a1 + 168) = 0;
      [*(a1 + 80) stopTimer];
    }

    [*(a1 + 72) unlock];
    if ((*(a1 + 169) & 1) == 0)
    {
      [*(a1 + 224) driverFieldExited];
    }

    PLLogRegisteredEvent();
    v2 = +[NFPowerAssertion sharedPowerAssertion];
    [v2 releasePowerAssertion:@"FieldDetect"];
  }
}

id sub_100003898()
{
  objc_opt_self();
  if (qword_10035DB10 != -1)
  {
    dispatch_once(&qword_10035DB10, &stru_10031C5B0);
  }

  v0 = qword_10035DB08;

  return v0;
}

void sub_10000394C(uint64_t a1)
{
  if (a1 && *(a1 + 8))
  {
    v2 = +[NFCALogger sharedCALogger];
    v3 = [v2 getDurationFrom:*(a1 + 8)];

    v16[0] = @"duration";
    v4 = [NSNumber numberWithUnsignedInt:v3];
    v17[0] = v4;
    v16[1] = @"technology";
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 16)];
    v17[1] = v5;
    v16[2] = @"ECPInformation";
    v6 = [NSNumber numberWithBool:*(a1 + 20)];
    v7 = v6;
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = &stru_10031EA18;
    }

    v17[2] = v6;
    v17[3] = v8;
    v16[3] = @"ECPPayload";
    v16[4] = @"ECPType";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
    v17[4] = v9;
    v16[5] = @"terminalSubType";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 36)];
    v17[5] = v10;
    v16[6] = @"terminalType";
    v11 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v17[6] = v11;
    v16[7] = @"terminalMode";
    v12 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
    v17[7] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:8];

    v14 = +[NFCALogger sharedCALogger];
    [v14 postCAEventFor:@"com.apple.nfcd.fieldTechnology" eventInput:v13];

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    v15 = *(a1 + 24);
    *(a1 + 24) = 0;

    *(a1 + 32) = xmmword_100297C40;
  }
}

void sub_100003B94(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    [v1 notifyPresentmentFieldExit];
  }
}

uint64_t sub_100003CE4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 128);
  v3 = 1;
  if (([v2 isAsserted:1] & 1) == 0)
  {
    v4 = *(a1 + 128);
    v3 = [v4 isAsserted:2];
  }

  return v3;
}

xpc_connection_t *sub_100003D58(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 6);
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      mach_service = xpc_connection_create_mach_service([*(a1 + 3) UTF8String], *(a1 + 4), 2uLL);
      v4 = v1[6];
      v1[6] = mach_service;

      if (v1[6])
      {
        objc_initWeak(&location, v1);
        v5 = v1[6];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1002345B4;
        handler[3] = &unk_10031C8A8;
        objc_copyWeak(v18, &location);
        v18[1] = "_syncSetupConnection";
        xpc_connection_set_event_handler(v5, handler);
        xpc_connection_activate(v1[6]);
        v1 = v1[6];
        objc_destroyWeak(v18);
        objc_destroyWeak(&location);
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v7 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("_syncSetupConnection");
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v7(3, "%c[%{public}s %{public}s]:%i Invalid connection creation", v11, ClassName, Name, 59);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = object_getClass(v1);
          if (class_isMetaClass(v13))
          {
            v14 = 43;
          }

          else
          {
            v14 = 45;
          }

          LODWORD(location) = 67109890;
          HIDWORD(location) = v14;
          v20 = 2082;
          v21 = object_getClassName(v1);
          v22 = 2082;
          v23 = sel_getName("_syncSetupConnection");
          v24 = 1024;
          v25 = 59;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid connection creation", &location, 0x22u);
        }

        v1 = 0;
      }
    }
  }

  return v1;
}

void sub_100003FD0(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000040B0;
    v3[3] = &unk_1003157C0;
    v3[4] = a1;
    v3[5] = &v4;
    os_unfair_lock_lock((a1 + 16));
    sub_1000040B0(v3);
    os_unfair_lock_unlock((a1 + 16));
    if (*(v5 + 24) == 1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        sub_100235634(v2, &off_100339350, 1);
      }
    }

    _Block_object_dispose(&v4, 8);
  }
}

uint64_t sub_1000040B0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && *(v1 + 34) == 1)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    v2 = *(result + 32);
    if (v2)
    {
      *(v2 + 34) = 0;
    }
  }

  return result;
}

uint64_t sub_1000040FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = *(result + 192);
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = [v7 startOnFieldList];
          if (v8)
          {
            v9 = v8;
            v10 = [v7 parentToken];

            if (!v10)
            {

              return 1;
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v11 = *(v1 + 120);
    if (v11)
    {
      goto LABEL_12;
    }

    v11 = *(v1 + 184);
    v12 = [v11 firstObject];
    v13 = [v12 startOnFieldList];
    if (!v13)
    {

LABEL_12:
      return 0;
    }

    v14 = v13;
    v15 = *(v1 + 184);
    v16 = [v15 firstObject];
    v17 = [v16 parentToken];

    return !v17;
  }

  return result;
}

id *sub_10000431C(id *a1)
{
  if (a1)
  {
    if (!a1[1] || (*(a1 + 169) & 1) != 0)
    {
      a1 = 0;

      return a1;
    }

    a1 = a1[15];
  }

  return a1;
}

void sub_100004370(void *a1)
{
  if (a1)
  {
    v2 = [a1 fieldDetectSessions];
    v3 = [v2 count];

    if (v3)
    {
      v4 = objc_opt_new();
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [a1 fieldDetectSessions];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (!*(*(&v11 + 1) + 8 * v9))
            {
              [v4 addObject:0];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      v10 = [a1 fieldDetectSessions];
      [v10 minusHashTable:v4];
    }
  }
}

id sub_1000044D0(void *a1)
{
  v2 = [a1 controllerInfo];
  if ([v2 siliconName] < 7)
  {
    v4 = 0;
  }

  else
  {
    v3 = [a1 controllerInfo];
    v4 = [v3 poweredRunDuringSleep];
  }

  return v4;
}

void sub_10000453C(uint64_t a1)
{
  if (a1 && sub_1000044D0(a1))
  {
    if (*(a1 + 348) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("openDriverForDPDTimers");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v3(6, "%c[%{public}s %{public}s]:%i SE keep alive active", v7, ClassName, Name, 69);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v63 = v10;
      v64 = 2082;
      v65 = object_getClassName(a1);
      v66 = 2082;
      v67 = sel_getName("openDriverForDPDTimers");
      v68 = 1024;
      v69 = 69;
      v11 = "%c[%{public}s %{public}s]:%i SE keep alive active";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x22u);
LABEL_28:

      return;
    }

    if (*(a1 + 347) != 1)
    {
      return;
    }

    v12 = [a1 expressModeManager];
    if (v12)
    {
      if (*(v12 + 152) == 1)
      {

LABEL_18:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v15 = v14;
          v16 = object_getClass(a1);
          v17 = class_isMetaClass(v16);
          v18 = object_getClassName(a1);
          v55 = sel_getName("openDriverForDPDTimers");
          v19 = 45;
          if (v17)
          {
            v19 = 43;
          }

          v15(6, "%c[%{public}s %{public}s]:%i EMM in progress", v19, v18, v55, 81);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v8 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        *buf = 67109890;
        v63 = v21;
        v64 = 2082;
        v65 = object_getClassName(a1);
        v66 = 2082;
        v67 = sel_getName("openDriverForDPDTimers");
        v68 = 1024;
        v69 = 81;
        v11 = "%c[%{public}s %{public}s]:%i EMM in progress";
        goto LABEL_27;
      }

      v13 = *(v12 + 179);

      if (v13 == 1)
      {
        goto LABEL_18;
      }
    }

    if (sub_1000065FC(a1))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v23 = v22;
        v24 = object_getClass(a1);
        v25 = class_isMetaClass(v24);
        v26 = object_getClassName(a1);
        v56 = sel_getName("openDriverForDPDTimers");
        v27 = 45;
        if (v25)
        {
          v27 = 43;
        }

        v23(6, "%c[%{public}s %{public}s]:%i Active session", v27, v26, v56, 86);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v63 = v29;
      v64 = 2082;
      v65 = object_getClassName(a1);
      v66 = 2082;
      v67 = sel_getName("openDriverForDPDTimers");
      v68 = 1024;
      v69 = 86;
      v11 = "%c[%{public}s %{public}s]:%i Active session";
      goto LABEL_27;
    }

    v30 = sub_1001E9A8C(a1);
    if (v30 > 0.0)
    {
      v31 = v30;
      v32 = [a1 driverWrapper];
      v33 = sub_10021A4A0(v32, @"SE KeepAlive", 0);

      if (!v33)
      {
        *(a1 + 348) = 1;
        v61 = 0;
        v34 = [a1 driverWrapper];
        v33 = sub_100224BB8(v34, &v61);

        if (v61 == 1 && !v33)
        {
          v35 = [a1 driverWrapper];
          sub_1001AA264(v35, 16);
        }

        objc_initWeak(&location, a1);
        v36 = *(a1 + 152);

        if (!v36)
        {
          v37 = [NFTimer alloc];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1001E9EC0;
          v58[3] = &unk_100316610;
          objc_copyWeak(v59, &location);
          v59[1] = "openDriverForDPDTimers";
          v38 = *(a1 + 240);
          v39 = [v37 initWithCallback:v58 queue:v38];
          v40 = *(a1 + 152);
          *(a1 + 152) = v39;

          objc_destroyWeak(v59);
        }

        v41 = *(a1 + 152);
        [v41 stopTimer];

        v42 = *(a1 + 152);
        [v42 startTimer:v31];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v44 = v43;
          v45 = object_getClass(a1);
          v46 = class_isMetaClass(v45);
          v47 = object_getClassName(a1);
          v57 = sel_getName("openDriverForDPDTimers");
          v48 = 45;
          if (v46)
          {
            v48 = 43;
          }

          v44(6, "%c[%{public}s %{public}s]:%i Check in %fs", v48, v47, v57, 129, *&v31);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = object_getClass(a1);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(a1);
          v53 = sel_getName("openDriverForDPDTimers");
          *buf = 67110146;
          v63 = v51;
          v64 = 2082;
          v65 = v52;
          v66 = 2082;
          v67 = v53;
          v68 = 1024;
          v69 = 129;
          v70 = 2048;
          v71 = v31;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Check in %fs", buf, 0x2Cu);
        }

        objc_destroyWeak(&location);
      }
    }

    *(a1 + 347) = 0;
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  for (i = 0; i != 5; ++i)
  {
    v2 = dword_100296E50[i];
    signal(dword_100296E50[i], 1);
    v3 = dispatch_source_create(&_dispatch_source_type_signal, v2, 0, 0);
    v4 = &qword_10035D9C0[i];
    v5 = v4[1];
    v4[1] = v3;

    dispatch_set_context(v4[1], v2);
    dispatch_source_set_event_handler_f(v4[1], sub_1000A9514);
    dispatch_resume(v4[1]);
  }

  [NSError _setFileNameLocalizationEnabled:0];
  NFSetThreadPriority();
  v6 = objc_alloc_init(NFMemoryObserver);
  sub_1002342B0(v6);
  v7 = +[_NFHardwareManager sharedHardwareManager];
  v8 = +[NFSecureXPCEventPublisherManager sharedManager];
  v9 = [v7 xpcEventNotificationQueue];
  [v8 startPublisherWithXPCQueue:0 eventSendQueue:v9];

  if ((NFProductIsPhone() & 1) != 0 || NFProductIsWatch())
  {
    v10 = [NFWalletPresentationService alloc];
    v11 = [v8 wallet];
    v12 = sub_100045308(v10, v11);
    v13 = qword_10035D9C0[0];
    qword_10035D9C0[0] = v12;

    sub_100045384(qword_10035D9C0[0]);
    sub_1001262F4(v7, qword_10035D9C0[0]);
  }

  [v7 start];
  v14 = +[_NFACHardwareManager sharedHardwareManager];
  [v14 start];

  objc_autoreleasePoolPop(v0);
  do
  {
    v15 = objc_autoreleasePoolPush();
    CFRunLoopGetCurrent();
    v16 = CFRunLoopRunSpecific();
    objc_autoreleasePoolPop(v15);
  }

  while ((v16 - 3) < 0xFFFFFFFE);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Exiting", "main", 182);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "main";
    v22 = 1024;
    v23 = 182;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Exiting", buf, 0x12u);
  }

  return 0;
}

void sub_1000052AC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 10)
    {
      v6 = WeakRetained;
      objc_sync_enter(v6);
      *(v6 + 60) = 0;
      objc_sync_exit(v6);

      v7 = dispatch_time(0, 100000001);
      v8 = v6[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001830D8;
      block[3] = &unk_100315F30;
      block[4] = v6;
      dispatch_after(v7, v8, block);
    }

    else if (a2 == 9)
    {
      v5 = WeakRetained;
      objc_sync_enter(v5);
      v5[60] = 1;
      objc_sync_exit(v5);
    }
  }
}

void sub_100005420(void *a1)
{
  if (a1)
  {
    out_token = 0;
    if (notify_register_check("com.apple.request.hipuncap", &out_token))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_postCLTMNotification");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v3(3, "%c[%{public}s %{public}s]:%i Fail to set client ID for CTLM notification, continue to post notification", v7, ClassName, Name, 7103);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = object_getClass(a1);
        if (class_isMetaClass(v9))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        v11 = object_getClassName(a1);
        v12 = sel_getName("_postCLTMNotification");
        *buf = 67109890;
        v70 = v10;
        v71 = 2082;
        v72 = v11;
        v73 = 2082;
        v74 = v12;
        v75 = 1024;
        v76 = 7103;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to set client ID for CTLM notification, continue to post notification", buf, 0x22u);
      }

      v13 = notify_post("com.apple.request.hipuncap");
      v14 = NFSharedSignpostLog();
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLTM_DEALY_PERFORMANCE_RESTRICTION_NOTIFICATION", "com.apple.request.hipuncap", buf, 2u);
      }

      if (v13)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v16 = v15;
          v17 = object_getClass(a1);
          v18 = class_isMetaClass(v17);
          v60 = object_getClassName(a1);
          v64 = sel_getName("_postCLTMNotification");
          v19 = 45;
          if (v18)
          {
            v19 = 43;
          }

          v16(3, "%c[%{public}s %{public}s]:%i Failed to notify : %d", v19, v60, v64, 7107, v13);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v21 = object_getClass(a1);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        v23 = object_getClassName(a1);
        v24 = sel_getName("_postCLTMNotification");
        *buf = 67110146;
        v70 = v22;
        v71 = 2082;
        v72 = v23;
        v73 = 2082;
        v74 = v24;
        v75 = 1024;
        v76 = 7107;
        v77 = 1024;
        v78 = v13;
        v25 = "%c[%{public}s %{public}s]:%i Failed to notify : %d";
LABEL_58:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v25, buf, 0x28u);
LABEL_59:
      }
    }

    else
    {
      if (notify_set_state(out_token, 1uLL))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v65 = sel_getName("_postCLTMNotification");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(3, "%c[%{public}s %{public}s]:%i Fail to set client ID for CTLM notification", v31, v30, v65, 7089);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = object_getClass(a1);
          if (class_isMetaClass(v33))
          {
            v34 = 43;
          }

          else
          {
            v34 = 45;
          }

          v35 = object_getClassName(a1);
          v36 = sel_getName("_postCLTMNotification");
          *buf = 67109890;
          v70 = v34;
          v71 = 2082;
          v72 = v35;
          v73 = 2082;
          v74 = v36;
          v75 = 1024;
          v76 = 7089;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to set client ID for CTLM notification", buf, 0x22u);
        }
      }

      v37 = notify_post("com.apple.request.hipuncap");
      v38 = NFSharedSignpostLog();
      if (os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLTM_DEALY_PERFORMANCE_RESTRICTION_NOTIFICATION", "com.apple.request.hipuncap", buf, 2u);
      }

      if (v37)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(a1);
          v42 = class_isMetaClass(v41);
          v61 = object_getClassName(a1);
          v66 = sel_getName("_postCLTMNotification");
          v43 = 45;
          if (v42)
          {
            v43 = 43;
          }

          v40(3, "%c[%{public}s %{public}s]:%i Failed to notify : %d", v43, v61, v66, 7095, v37);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = object_getClass(a1);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(a1);
          v48 = sel_getName("_postCLTMNotification");
          *buf = 67110146;
          v70 = v46;
          v71 = 2082;
          v72 = v47;
          v73 = 2082;
          v74 = v48;
          v75 = 1024;
          v76 = 7095;
          v77 = 1024;
          v78 = v37;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to notify : %d", buf, 0x28u);
        }
      }

      v49 = notify_cancel(out_token);
      if (v49)
      {
        v50 = v49;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v51 = NFLogGetLogger();
        if (v51)
        {
          v52 = v51;
          v53 = object_getClass(a1);
          v54 = class_isMetaClass(v53);
          v62 = object_getClassName(a1);
          v67 = sel_getName("_postCLTMNotification");
          v55 = 45;
          if (v54)
          {
            v55 = 43;
          }

          v52(3, "%c[%{public}s %{public}s]:%i Failed to cancel notify : %d", v55, v62, v67, 7100, v50);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v56 = object_getClass(a1);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(a1);
        v59 = sel_getName("_postCLTMNotification");
        *buf = 67110146;
        v70 = v57;
        v71 = 2082;
        v72 = v58;
        v73 = 2082;
        v74 = v59;
        v75 = 1024;
        v76 = 7100;
        v77 = 1024;
        v78 = v50;
        v25 = "%c[%{public}s %{public}s]:%i Failed to cancel notify : %d";
        goto LABEL_58;
      }
    }
  }
}

void sub_100005B20(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    *(a1 + 32) = xmmword_100297C40;
    v3 = +[NFCALogger sharedCALogger];
    *(a1 + 8) = [v3 getTimestamp];
  }
}

uint64_t sub_100005D64(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[1];
  objc_sync_exit(v1);

  return v2;
}

id sub_100005F24()
{
  objc_opt_self();
  if (qword_10035DA58 != -1)
  {
    dispatch_once(&qword_10035DA58, &stru_10031A998);
  }

  v0 = qword_10035DA50;

  return v0;
}

void sub_100005F7C(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100006010;
    v2[3] = &unk_100315F30;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 3);
    sub_100006010(v2);
    os_unfair_lock_unlock(a1 + 3);
  }
}

void sub_100006010(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 8) = 0;
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  sub_100184DEC(v2, 0);
}

BOOL sub_100006030(_BOOL8 result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = [v2 nfcRadioEnabled:0 showUIPopup:0];

  if (!v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("expressModesActive");
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i NFC radio disabled", v18, ClassName, Name, 829);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(v1);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v46 = v21;
      v47 = 2082;
      v48 = object_getClassName(v1);
      v49 = 2082;
      v50 = sel_getName("expressModesActive");
      v51 = 1024;
      v52 = 829;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC radio disabled", buf, 0x22u);
    }

    return 0;
  }

  if (*(v1 + 179) != 1)
  {
    v22 = *(v1 + 40);
    if (v22)
    {
      v23 = vaddvq_s64(vaddq_s64(*(v22 + 24), *(v22 + 40))) + *(v22 + 56) + *(v22 + 64);
    }

    else
    {
      v23 = 0;
    }

    if ((*(v1 + 178) & 1) == 0 && *(v1 + 152) != 1 && (*(v1 + 177) & 1) == 0 && (*(v1 + 184) & 1) == 0 && !v23)
    {
      goto LABEL_49;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(v1);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(v1);
      v29 = sel_getName("expressModesActive");
      if (*(v1 + 178))
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v44 = v30;
      v31 = 43;
      if (!v27)
      {
        v31 = 45;
      }

      v25(6, "%c[%{public}s %{public}s]:%i Delayed=%{public}@ controlState=%ld paused=%d spAssertion=%d numberOfApplets=%d", v31, v28, v29, 845, v44, *(v1 + 152), *(v1 + 177), *(v1 + 184), v23);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(v1);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(v1);
      v36 = sel_getName("expressModesActive");
      if (*(v1 + 178))
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = *(v1 + 152);
      v39 = *(v1 + 177);
      v40 = *(v1 + 184);
      *buf = 67111170;
      v46 = v34;
      v47 = 2082;
      v48 = v35;
      v49 = 2082;
      v50 = v36;
      v51 = 1024;
      v52 = 845;
      v53 = 2114;
      v54 = v37;
      v55 = 2048;
      v56 = v38;
      v57 = 1024;
      v58 = v39;
      v59 = 1024;
      v60 = v40;
      v61 = 1024;
      v62 = v23;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delayed=%{public}@ controlState=%ld paused=%d spAssertion=%d numberOfApplets=%d", buf, 0x48u);
    }

    if ((*(v1 + 178) & 1) == 0 && (*(v1 + 177) & 1) == 0)
    {
LABEL_49:
      if ((*(v1 + 184) & 1) == 0)
      {
        return *(v1 + 152) == 1 && v23 != 0;
      }
    }

    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFLogGetLogger();
  if (v4)
  {
    v5 = v4;
    v6 = object_getClass(v1);
    v7 = class_isMetaClass(v6);
    v8 = object_getClassName(v1);
    v42 = sel_getName("expressModesActive");
    v9 = 45;
    if (v7)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i EMM Test mode : YES", v9, v8, v42, 833);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(v1);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v46 = v12;
    v47 = 2082;
    v48 = object_getClassName(v1);
    v49 = 2082;
    v50 = sel_getName("expressModesActive");
    v51 = 1024;
    v52 = 833;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i EMM Test mode : YES", buf, 0x22u);
  }

  return 1;
}

uint64_t sub_100006544(char *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10000658C(a1);
    if (v2)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      LOBYTE(v1) = v1[185];
    }
  }

  return v1 & 1;
}

char *sub_10000658C(char *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = sub_1000065FC(v2);
    v4 = 56;
    if (v3)
    {
      v4 = 48;
    }

    v1 = *&v1[v4];
  }

  return v1;
}

uint64_t sub_1000065FC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 184);
    objc_sync_enter(v2);
    v1 = *(v1 + 120) != 0;
    objc_sync_exit(v2);
  }

  return v1;
}

BOOL sub_100006848(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = *(v1 + 5);
  objc_sync_exit(v1);

  if (!NFIsInternalBuild() || v2)
  {
    return v2;
  }

  v3 = v1[12];
  if (v3 == -1)
  {
    return 0;
  }

  state64 = 0;
  return !notify_get_state(v3, &state64) && state64 == 1;
}

id sub_1000068CC()
{
  objc_opt_self();
  if (qword_10035DA48 != -1)
  {
    dispatch_once(&qword_10035DA48, &stru_10031A8E8);
  }

  v0 = qword_10035DA40;

  return v0;
}

id sub_10000692C()
{
  objc_opt_self();
  if (qword_10035D950 != -1)
  {
    dispatch_once(&qword_10035D950, &stru_100316A80);
  }

  v0 = qword_10035D948;

  return v0;
}

id sub_100006984()
{
  objc_opt_self();
  if (qword_10035D940 != -1)
  {
    dispatch_once(&qword_10035D940, &stru_100316A60);
  }

  v0 = qword_10035D938;

  return v0;
}

uint64_t sub_1000069DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000069EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000069FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006A9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006AAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006ABC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006ACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006ADC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006AEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006AFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006B6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006B7C(uint64_t a1)
{
  if (a1)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(a1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v19;
      sub_10027E964(v7);
      sub_10027E9D0(v10);
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(v1 + 4088) identifierWithPid:{objc_msgSend(*(*(&v18 + 1) + 8 * v11), "processIdentifier")}];
          if (v12)
          {
            v13 = [*(v2 + 8) predicateMatchingIdentifier:v12];
            if (v13)
            {
              [v4 addObject:v13];
            }
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006D4C;
    v16[3] = &unk_100316138;
    v17 = v4;
    v15 = v4;
    [v14 updateConfiguration:v16];
  }
}

void *sub_100006D58(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_10002BB84(a1);
    if (v2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v4 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("getExpressPassConfig");
        v9 = [v2 description];
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v4(3, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 729, v9);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(v1);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(v1);
        v15 = sel_getName("getExpressPassConfig");
        v16 = [v2 description];
        *buf = 67110146;
        v21 = v13;
        v22 = 2082;
        v23 = v14;
        v24 = 2082;
        v25 = v15;
        v26 = 1024;
        v27 = 729;
        v28 = 2114;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v1 = 0;
    }

    else
    {
      v17 = v1[5];
      if (v17)
      {
        v17 = v17[2];
      }

      v18 = v17;
      v1 = [v18 copy];
    }
  }

  return v1;
}

id sub_1000077E0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) options];
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[4];
    }

    v5 = v3;
    v6 = [v5 clientInfo];
    sub_10017D968(v4, v6);
  }

  if (([*(*(a1 + 32) + 32) options] & 8) == 0)
  {
LABEL_53:
    result = [*(a1 + 32) setState:2];
    if ((v2 & 4) == 0)
    {
      return result;
    }

    return [*(a1 + 40) maybeStartNextSession];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = v7[54];
  }

  v8 = v7;
  v9 = [v8 count];

  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[54];
  }

  v11 = v10;
  v12 = v11;
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  [v11 addObject:v14];

  v15 = [*(a1 + 40) expressModeManager];
  if (v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(5, "%c[%{public}s %{public}s]:%i Multiple assertions detected; disabling all express", v21, ClassName, Name, 177);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(*(a1 + 32));
      v26 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v63 = v24;
      v64 = 2082;
      v65 = v25;
      v66 = 2082;
      v67 = v26;
      v68 = 1024;
      v69 = 177;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Multiple assertions detected; disabling all express", buf, 0x22u);
    }

    v27 = objc_opt_new();
  }

  else
  {
    v27 = [*(*(a1 + 32) + 32) expressPassIDList];
  }

  v28 = v27;
  if (v15)
  {
    sub_10003B14C(v15, *(v15 + 48), v27);
  }

  if (v15)
  {
    v29 = *(v15 + 181);
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_100006030(v15);
  if (!sub_1000065FC(*(a1 + 40)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(*(a1 + 32));
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(*(a1 + 32));
      v61 = sel_getName(*(a1 + 48));
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v47(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", v51, v50, v61, 187, v29 & 1, v30);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 48));
      *buf = 67110402;
      v63 = v54;
      v64 = 2082;
      v65 = v55;
      v66 = 2082;
      v67 = v56;
      v68 = 1024;
      v69 = 187;
      v70 = 1024;
      v71 = v29 & 1;
      v72 = 1024;
      v73 = v30;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", buf, 0x2Eu);
    }

    if (!(v29 & 1 | !v30))
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

  v31 = *(a1 + 40);
  v32 = [*(a1 + 32) xpc];
  v33 = sub_1000E9E3C(v31, v32);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v34 = NFLogGetLogger();
  if (v34)
  {
    v35 = v34;
    v36 = object_getClass(*(a1 + 32));
    v37 = class_isMetaClass(v36);
    v58 = object_getClassName(*(a1 + 32));
    v60 = sel_getName(*(a1 + 48));
    v38 = 45;
    if (v37)
    {
      v38 = 43;
    }

    v35(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", v38, v58, v60, 189, v29 & 1, v30, v33);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    v42 = object_getClassName(*(a1 + 32));
    v43 = sel_getName(*(a1 + 48));
    *buf = 67110658;
    v63 = v41;
    v64 = 2082;
    v65 = v42;
    v66 = 2082;
    v67 = v43;
    v68 = 1024;
    v69 = 189;
    v70 = 1024;
    v71 = v29 & 1;
    v72 = 1024;
    v73 = v30;
    v74 = 1024;
    v75 = v33;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", buf, 0x34u);
  }

  if (v29 & 1 | !v30 || ((v33 ^ 1) & 1) != 0 || ([*(a1 + 40) lastKnownRoutingConfig], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "contactlessOnAny"), v44, v45))
  {
LABEL_52:

    goto LABEL_53;
  }

LABEL_41:
  sub_10002E9BC(v15);

  [*(a1 + 32) setState:2];
  return [*(a1 + 40) maybeStartNextSession];
}

id *sub_100007D90(id *a1)
{
  if (a1)
  {
    a1 = a1[30];
    v1 = vars8;
  }

  return a1;
}

BOOL sub_100007EE0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    objc_sync_enter(v2);
    [*(v2 + 12) stopTimer];
    [*(v2 + 11) stopTimer];
    *(v2 + 43) = 0;
    v2[176] = 0;
    *(v2 + 181) = 0;
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;

    v2[183] = 0;
    objc_sync_exit(v2);
  }

  return a1 != 0;
}

void sub_100007F80(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("assertPKForegroundPresentment");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 395);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v16 = v10;
      v17 = 2082;
      v18 = object_getClassName(a1);
      v19 = 2082;
      v20 = sel_getName("assertPKForegroundPresentment");
      v21 = 1024;
      v22 = 395;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v13 = NSKeyValueChangeNewKey;
    v14 = &off_1003302E8;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [a1 observeValueForKeyPath:0 ofObject:0 change:v11 context:off_10035B318];
  }
}

void sub_100008160(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000081FC;
    v2[3] = &unk_100315F58;
    v2[4] = a1;
    v2[5] = "_updatePresenterAvailable";
    os_unfair_lock_lock(a1 + 4);
    sub_1000081FC(v2);
    os_unfair_lock_unlock(a1 + 4);
  }
}

void sub_1000081FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 > 4)
  {
    v5 = 0;
    if (*(v2 + 32))
    {
LABEL_6:
      *(v2 + 32) = v5;
      v6 = *(a1 + 32);
      if (v6)
      {
        LOBYTE(v5) = (*(v6 + 33) ^ 1) & v5;
      }

      goto LABEL_8;
    }

LABEL_24:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i No change (%{public}d)", v24, ClassName, Name, 163, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v34 = v27;
      v35 = 2082;
      v36 = v28;
      v37 = 2082;
      v38 = v29;
      v39 = 1024;
      v40 = 163;
      v41 = 1026;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No change (%{public}d)", buf, 0x28u);
    }

    return;
  }

  v4 = [*(v2 + qword_100296C50[v3]) isEligibleForDoubleClick];
  v5 = v4;
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v4 == *(v2 + 32))
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if ((v4 & 1) == 0)
  {
    v5 = 0;
    goto LABEL_24;
  }

  LOBYTE(v5) = 1;
LABEL_8:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v8 = v7;
    v9 = object_getClass(*(a1 + 32));
    v10 = class_isMetaClass(v9);
    v11 = object_getClassName(*(a1 + 32));
    v31 = sel_getName(*(a1 + 40));
    v12 = 45;
    if (v10)
    {
      v12 = 43;
    }

    v8(5, "%c[%{public}s %{public}s]:%i Consumer available=%{public}d, domain=%{public}lu", v12, v11, v31, 171, v5 & 1, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(*(a1 + 32));
    v17 = sel_getName(*(a1 + 40));
    *buf = 67110402;
    v34 = v15;
    v35 = 2082;
    v36 = v16;
    v37 = 2082;
    v38 = v17;
    v39 = 1024;
    v40 = 171;
    v41 = 1026;
    v42 = v5 & 1;
    v43 = 2050;
    v44 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Consumer available=%{public}d, domain=%{public}lu", buf, 0x32u);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 64);
  }

  else
  {
    v19 = 0;
  }

  [v19 setBool:v5 & 1 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
}

void sub_100008AA4(uint64_t a1)
{
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = *(a1 + 184);
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v21;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 += [*(*(&v20 + 1) + 8 * i) priority];
        }

        v4 = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
      }

      while (v4);
    }

    else
    {
      LOWORD(v5) = 0;
    }

    if (v5 != *(a1 + 342))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("updatePrioritySessionCount");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i Priority session count = %d", v12, ClassName, Name, 218, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(a1);
        v17 = sel_getName("updatePrioritySessionCount");
        *buf = 67110146;
        v25 = v15;
        v26 = 2082;
        v27 = v16;
        v28 = 2082;
        v29 = v17;
        v30 = 1024;
        v31 = 218;
        v32 = 1024;
        v33 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Priority session count = %d", buf, 0x28u);
      }

      *(a1 + 342) = v5;
    }
  }
}

uint64_t sub_10000976C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[16];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

NFRoutingConfig *sub_1000097C0()
{
  objc_opt_self();
  v0 = [NFRoutingConfig alloc];
  if (v0)
  {
    v0 = sub_10004B388(&v0->super.isa, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
    if (v0)
    {
      v0->_wantsMultiTag = 1;
    }
  }

  return v0;
}

void sub_100009848(void *a1, uint64_t a2, int a3)
{
  if (a3 > -469794814)
  {
    switch(a3)
    {
      case -469794813:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Baseband power on", "BBNotificationCallback", 151);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 136446466;
        v16 = "BBNotificationCallback";
        v17 = 1024;
        v18 = 151;
        v10 = "%{public}s:%i Baseband power on";
        break;
      case -469794812:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(6, "%s:%i baseband down", "BBNotificationCallback", 154);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:

          return;
        }

        *buf = 136446466;
        v16 = "BBNotificationCallback";
        v17 = 1024;
        v18 = 154;
        v10 = "%{public}s:%i baseband down";
        break;
      case -469794811:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v4 = NFLogGetLogger();
        if (v4)
        {
          v4(6, "%s:%i baseband up", "BBNotificationCallback", 157);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v5 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 136446466;
        v16 = "BBNotificationCallback";
        v17 = 1024;
        v18 = 157;
        v6 = "%{public}s:%i baseband up";
        goto LABEL_29;
      default:
        return;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);
    goto LABEL_24;
  }

  if (a3 == -469794816)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(6, "%s:%i baseband reset", "BBNotificationCallback", 143);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v16 = "BBNotificationCallback";
    v17 = 1024;
    v18 = 143;
    v6 = "%{public}s:%i baseband reset";
  }

  else
  {
    if (a3 != -469794815)
    {
      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(6, "%s:%i baseband alive", "BBNotificationCallback", 147);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v16 = "BBNotificationCallback";
    v17 = 1024;
    v18 = 147;
    v6 = "%{public}s:%i baseband alive";
  }

LABEL_29:
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
LABEL_30:

  if (a1)
  {
    v13 = sub_10000976C(a1);
    sub_1001A3B2C(a1);
    v14 = sub_10000976C(a1);
    if (v13 != v14)
    {
      sub_1001A3B94(a1, v14);
    }
  }
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = (a2 + *a4);
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

uint64_t sub_100009E84(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = (a2 + v7);
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v46 = a7;
  v47 = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  result = sub_100009E84(a1, a6, &v46);
  if (result)
  {
    return result;
  }

  v17 = v46;
  if (v46 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v46;
  if (a7 < v46)
  {
    goto LABEL_74;
  }

  v19 = a6 + a7;
  v20 = a6 + v46;
  if (a6 + v46 < v19)
  {
    result = sub_10000A338(a2, a3, a4, a5, &v47);
    if (result)
    {
      return result;
    }

    v46 = v18;
    if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
    {
      goto LABEL_73;
    }

    v44 = a6 + v11;
    v21 = v47;
    result = DEREncodeLengthSized(v47, a6 + v17, v18, &v46);
    if (result)
    {
      return result;
    }

    v22 = v44;
    if (__CFADD__(v20, v46))
    {
LABEL_72:
      __break(0x5513u);
      goto LABEL_73;
    }

    v23 = v18 - v46;
    if (v18 >= v46)
    {
      v24 = (v20 + v46);
      if (!__CFADD__(v20 + v46, v21))
      {
        if (&v24[v21] > v19)
        {
          return 7;
        }

        if (a4)
        {
          v25 = 0;
          v43 = a2 + a3;
          v42 = ~a5;
          v26 = a5 + 8;
          v41 = 24 * a4;
          do
          {
            if (v25 > v42)
            {
              goto LABEL_72;
            }

            v27 = *(v26 - 8);
            if (v27 > ~a2)
            {
              goto LABEL_72;
            }

            v28 = (a2 + v27);
            v29 = *(v26 + 8);
            if ((v29 & 0x200) != 0)
            {
              v38 = v28 < a2 || (v28 + 2) > v43;
              if (v38 || v24 > v22 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v22 - v24;
            }

            else
            {
              if (v29)
              {
                if (v28 < a2 || (v28 + 2) > v43)
                {
                  goto LABEL_73;
                }

                if (!v28[1])
                {
                  goto LABEL_69;
                }
              }

              v46 = v23;
              if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
              {
                goto LABEL_73;
              }

              result = sub_100009E84(*v26, v24, &v46);
              if (result)
              {
                return result;
              }

              if (__CFADD__(v24, v46))
              {
                goto LABEL_72;
              }

              v31 = v23 - v46;
              if (v23 < v46)
              {
                goto LABEL_74;
              }

              if (v28 < a2 || (v28 + 2) > v43)
              {
                goto LABEL_73;
              }

              v32 = v28[1];
              v47 = v32;
              v33 = 1;
              if ((v29 & 0x100) != 0 && v32 && **v28 < 0)
              {
                v33 = 0;
                v47 = ++v32;
              }

              v34 = &v24[v46];
              v46 = v23 - v46;
              if (v34 > v44 || v34 < a6 || v31 > v44 - v34)
              {
                goto LABEL_73;
              }

              result = DEREncodeLengthSized(v32, v34, v31, &v46);
              if (result)
              {
                return result;
              }

              v35 = v46;
              if (__CFADD__(v34, v46))
              {
                goto LABEL_72;
              }

              v23 = v31 - v46;
              if (v31 < v46)
              {
                goto LABEL_74;
              }

              v24 = (v34 + v46);
              if ((v33 & 1) == 0)
              {
                if (v24 == -1)
                {
                  goto LABEL_72;
                }

                if (v24 >= v44 || v24 < a6)
                {
                  goto LABEL_73;
                }

                *v24 = 0;
                --v23;
                if (v31 == v35)
                {
                  goto LABEL_74;
                }

                ++v24;
              }

              if (v24 > v44 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v44 - v24;
            }

            if (v36 > v37)
            {
              goto LABEL_73;
            }

            result = memmove(v24, *v28, v36);
            if (v24 > &v24[v36])
            {
              goto LABEL_73;
            }

            v39 = v28[1];
            v22 = v44;
            if (__CFADD__(v24, v39))
            {
              goto LABEL_72;
            }

            v40 = v23 >= v39;
            v23 -= v39;
            if (!v40)
            {
              goto LABEL_74;
            }

            v24 += v39;
LABEL_69:
            v26 += 24;
            v25 += 24;
          }

          while (v41 != v25);
        }

        if (&v24[-a6] <= *a8)
        {
          result = 0;
          *a8 = &v24[-a6];
          return result;
        }

LABEL_73:
        __break(0x5519u);
      }

      goto LABEL_72;
    }

LABEL_74:
    __break(0x5515u);
    return result;
  }

  return 7;
}

unint64_t sub_10000A338(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t *a6)
{
  v17 = 0;
  result = sub_10000A338(a2, a3, a4, a5, &v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17 >= 0x80)
    {
      v13 = v17;
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17), v16 = v15 + v17, v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

unint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, &v5))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void sub_10000A684(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    *(a1 + 86) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v2 = +[NFCALogger sharedCALogger];
    *(a1 + 32) = [v2 getTimestamp];

    ++*(a1 + 48);
  }
}

uint64_t sub_10000A6F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v6 = v3;
      if (([v3 code] & 0x8000000000000000) != 0 || objc_msgSend(v6, "code") > 75)
      {
        v3 = 6;
      }

      else
      {
        v3 = [v6 code];
      }

      v4 = v6;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 44) = v3;
  }

  return _objc_release_x1(v3, v4);
}

int32x4_t sub_10000A778(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v2 = +[NFCALogger sharedCALogger];
      v3 = [v2 getDurationFrom:*(a1 + 32)];
      v18 = v3;

      v19[0] = @"connectedDuration";
      v17 = [NSNumber numberWithUnsignedInt:v3];
      v20[0] = v17;
      v19[1] = @"rawBytesRx";
      v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 16)];
      v20[1] = v4;
      v19[2] = @"rawBytesTx";
      v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 8)];
      v20[2] = v5;
      v19[3] = @"rawCommandCount";
      v6 = [NSNumber numberWithUnsignedInt:*(a1 + 24)];
      v20[3] = v6;
      v19[4] = @"isConnectionHandover";
      v7 = [NSNumber numberWithBool:*(a1 + 84)];
      v20[4] = v7;
      v19[5] = @"wasRead";
      v8 = [NSNumber numberWithBool:*(a1 + 40)];
      v20[5] = v8;
      v19[6] = @"resultCode";
      v9 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
      v20[6] = v9;
      v19[7] = @"isCoreNFC";
      v10 = [NSNumber numberWithBool:*(a1 + 85)];
      v20[7] = v10;
      v19[8] = @"didUsePaymentAid";
      v11 = [NSNumber numberWithBool:*(a1 + 86)];
      v20[8] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:9];

      v13 = +[NFCALogger sharedCALogger];
      [v13 postCAEventFor:@"com.apple.nfcd.hceTagRead" eventInput:v12];

      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    v15.i32[0] = v14;
    v15.i32[1] = *(a1 + 16);
    v15.i32[2] = *(a1 + 8);
    v15.i32[3] = *(a1 + 24);
    result = vaddq_s32(*(a1 + 68), v15);
    *(a1 + 68) = result;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    *(a1 + 86) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_10000AA28(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 77) = 0;
    v2 = +[NFCALogger sharedCALogger];
    *(a1 + 56) = [v2 getTimestamp];
  }
}

void sub_10000AA98(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      sub_10000A778(a1);
    }

    if (*(a1 + 56))
    {
      v2 = +[NFCALogger sharedCALogger];
      *(a1 + 64) = [v2 getDurationFrom:*(a1 + 56)];

      v13[0] = @"sessionDuration";
      v12 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
      v14[0] = v12;
      v13[1] = @"connectedDuration";
      v3 = [NSNumber numberWithUnsignedInt:*(a1 + 68)];
      v14[1] = v3;
      v13[2] = @"rawBytesRx";
      v4 = [NSNumber numberWithUnsignedInt:*(a1 + 72)];
      v14[2] = v4;
      v13[3] = @"rawBytesTx";
      v5 = [NSNumber numberWithUnsignedInt:*(a1 + 76)];
      v14[3] = v5;
      v13[4] = @"rawCommandCount";
      v6 = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
      v14[4] = v6;
      v13[5] = @"isConnectionHandover";
      v7 = [NSNumber numberWithBool:*(a1 + 84)];
      v14[5] = v7;
      v13[6] = @"isCoreNFC";
      v8 = [NSNumber numberWithBool:*(a1 + 85)];
      v14[6] = v8;
      v13[7] = @"didUsePaymentAid";
      v9 = [NSNumber numberWithBool:*(a1 + 87)];
      v14[7] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

      v11 = +[NFCALogger sharedCALogger];
      [v11 postCAEventFor:@"com.apple.nfcd.hceSessionEvent" eventInput:v10];
    }

    *(a1 + 48) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 77) = 0;
  }
}

unsigned __int8 *sub_10000ADB0(unsigned __int8 *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = +[_NFHardwareManager sharedHardwareManager];
    v9 = [v8 secureElementWrapper];
    v10 = a1[112];
    if (v10 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        v15 = v7;
        v16 = a3;
        ClassName = object_getClassName(a1);
        Name = sel_getName("_getAppletForAid:routingChangeAllow:appletCacheMiss:");
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v28 = ClassName;
        a3 = v16;
        v7 = v15;
        v12(6, "%c[%{public}s %{public}s]:%i Factory test mode", v18, v28, Name, 112);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        *buf = 67109890;
        v32 = v21;
        v33 = 2082;
        v34 = object_getClassName(a1);
        v35 = 2082;
        v36 = sel_getName("_getAppletForAid:routingChangeAllow:appletCacheMiss:");
        v37 = 1024;
        v38 = 112;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Factory test mode", buf, 0x22u);
      }
    }

    v22 = [NSData NF_dataWithHexString:v7];
    if (a4)
    {
      *a4 = 0;
    }

    v30 = 0;
    v23 = sub_100258B98(v9, v22, v10 ^ 1, &v30);
    v24 = v30;
    v25 = v24;
    if (v24 && [v24 code] == 73)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (!a3)
      {
        a1 = 0;
        goto LABEL_23;
      }

      a1 = [a1 getSecureElementWrapperAndSetRouting];

      if (!a1)
      {
        v9 = 0;
        goto LABEL_23;
      }

      v26 = sub_100258B60(a1, v22, v10 ^ 1, 0);

      v9 = a1;
      v23 = v26;
    }

    a1 = v23;
    v23 = a1;
LABEL_23:
  }

  return a1;
}

void sub_10000DC88(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[NSMutableDictionary alloc] initWithDictionary:v5];

  v7 = [v6 objectForKeyedSubscript:@"ClosedLoopTCIs"];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"TCIs"];
    [v6 removeObjectForKey:@"ClosedLoopTCIs"];
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:v8];
}

id sub_10000E24C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6)
{
  v200 = a2;
  v9 = a3;
  v206 = a5;
  v210 = a1;
  if (!a1)
  {
    v45 = 0;
    goto LABEL_142;
  }

  v10 = [[NSData alloc] initWithBytes:&unk_100296AC8 length:13];
  v11 = [v10 NF_asHexString];

  v12 = [[NSData alloc] initWithBytes:&unk_100296AD5 length:7];
  v13 = [v12 NF_asHexString];

  v14 = [[NSData alloc] initWithBytes:&unk_100296ADC length:7];
  v197 = [v14 NF_asHexString];

  v15 = [[NSData alloc] initWithBytes:&unk_100296AE3 length:9];
  v16 = [v15 NF_asHexString];

  v17 = [v9 identifier];
  v193 = v11;
  v18 = [v17 compare:v11 options:1 range:{0, objc_msgSend(v11, "length")}];

  v208 = v9;
  v199 = v13;
  v192 = v16;
  if (v18)
  {
    v19 = [v9 identifier];
    if ([v19 compare:v13 options:1 range:{0, objc_msgSend(v13, "length")}])
    {
      v20 = [v9 identifier];
      v21 = [v20 compare:v197 options:1 range:{0, objc_msgSend(v197, "length")}];

      if (v21)
      {
        v22 = [v9 identifier];
        v23 = [v22 compare:v16 options:1 range:{0, objc_msgSend(v16, "length")}];

        if (v23)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v25 = Logger;
            Class = object_getClass(v210);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v210);
            Name = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
            v30 = [v9 identifier];
            v31 = 45;
            if (isMetaClass)
            {
              v31 = 43;
            }

            v25(3, "%c[%{public}s %{public}s]:%i keys are not supported on %{public}@", v31, ClassName, Name, 620, v30);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = object_getClass(v210);
            if (class_isMetaClass(v33))
            {
              v34 = 43;
            }

            else
            {
              v34 = 45;
            }

            v35 = object_getClassName(v210);
            v36 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
            v37 = [v9 identifier];
            *buf = 67110146;
            *&buf[4] = v34;
            v222 = 2082;
            v223 = v35;
            v224 = 2082;
            v225 = v36;
            v226 = 1024;
            v227 = 620;
            v228 = 2114;
            v229 = v37;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i keys are not supported on %{public}@", buf, 0x2Cu);
          }

          v38 = [NSString alloc];
          v39 = [v9 identifier];
          v40 = [v38 initWithFormat:@"enableExpressForKeys:onApplet:%@ enable:%d authorization:%d uid:", v39, a4, v206 != 0];

          v202 = v40;
          sub_100199548(NFBugCapture, @"Express Mode Failure", @"Keys not supported on applet", v40, 0, 0);
          v41 = [NSError alloc];
          v42 = [NSString stringWithUTF8String:"nfcd"];
          v245[0] = NSLocalizedDescriptionKey;
          v203 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v246[0] = v203;
          v246[1] = &off_10032F988;
          v245[1] = @"Line";
          v245[2] = @"Method";
          v201 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
          v246[2] = v201;
          v245[3] = NSDebugDescriptionErrorKey;
          obj = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 627];
          v246[3] = obj;
          v245[4] = NSLocalizedFailureReasonErrorKey;
          v43 = [[NSString alloc] initWithFormat:@"keys are not supported on the applet"];
          v246[4] = v43;
          v44 = [NSDictionary dictionaryWithObjects:v246 forKeys:v245 count:5];
          v198 = v42;
          v45 = [v41 initWithDomain:v42 code:10 userInfo:v44];
          goto LABEL_139;
        }

        v164 = +[NSUserDefaults standardUserDefaults];
        if ([v164 BOOLForKey:@"debugAcwgBackwardsSpecCompliance"])
        {
          v216 = 8;
          v215 = 1798;
          *buf = 0x807060504030201;
          v202 = [[NSData alloc] initWithBytes:buf length:8];
          v165 = [NSData alloc];
          v166 = 3;
        }

        else
        {
          LOBYTE(v215) = 3;
          buf[2] = 3;
          *buf = 513;
          v202 = [[NSData alloc] initWithBytes:buf length:3];
          v165 = [NSData alloc];
          v166 = 1;
        }

        v198 = [v165 initWithBytes:&v215 length:v166];
        v46 = v199;

        v194 = 1;
        goto LABEL_19;
      }
    }

    else
    {
    }

    LOBYTE(v215) = -17;
    *buf = 50463215;
    v202 = [[NSData alloc] initWithBytes:buf length:4];
    v198 = [[NSData alloc] initWithBytes:&v215 length:1];
    v194 = 0;
    v46 = v199;
  }

  else
  {
    LOBYTE(v215) = 6;
    *&buf[4] = 1540;
    *buf = 50462976;
    v202 = [[NSData alloc] initWithBytes:buf length:6];
    v198 = [[NSData alloc] initWithBytes:&v215 length:1];
    v194 = 0;
    v46 = v13;
  }

LABEL_19:
  v203 = [v210 getSecureElementWrapperAndSetRouting];
  if (!v203)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v131 = NFLogGetLogger();
    if (v131)
    {
      v132 = v131;
      v133 = object_getClass(v210);
      v134 = class_isMetaClass(v133);
      v135 = object_getClassName(v210);
      v185 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
      v136 = 45;
      if (v134)
      {
        v136 = 43;
      }

      v132(3, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", v136, v135, v185, 632);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v137 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
    {
      v138 = object_getClass(v210);
      if (class_isMetaClass(v138))
      {
        v139 = 43;
      }

      else
      {
        v139 = 45;
      }

      v140 = object_getClassName(v210);
      v141 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
      *buf = 67109890;
      *&buf[4] = v139;
      v222 = 2082;
      v223 = v140;
      v224 = 2082;
      v225 = v141;
      v226 = 1024;
      v227 = 632;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize eSE wrapper", buf, 0x22u);
    }

    v142 = [NSError alloc];
    v143 = [NSString stringWithUTF8String:"nfcd"];
    v243[0] = NSLocalizedDescriptionKey;
    obj = [NSString stringWithUTF8String:"Stack Error"];
    v244[0] = obj;
    v244[1] = &off_10032F9A0;
    v243[1] = @"Line";
    v243[2] = @"Method";
    v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
    v244[2] = v43;
    v243[3] = NSDebugDescriptionErrorKey;
    v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 633];
    v244[3] = v44;
    v243[4] = NSLocalizedFailureReasonErrorKey;
    v144 = [[NSString alloc] initWithFormat:@"Failed to initialize eSE wrapper"];
    v244[4] = v144;
    v145 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:5];
    v146 = v142;
    v201 = v143;
    v147 = v143;
    v148 = 15;
    goto LABEL_137;
  }

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  obj = v200;
  v204 = [obj countByEnumeratingWithState:&v211 objects:v242 count:16];
  v47 = 0;
  v48 = 0;
  if (!v204)
  {
    goto LABEL_97;
  }

  v49 = v194;
  if (!v18)
  {
    v49 = 1;
  }

  v195 = v49;
  v205 = *v212;
  if (a4)
  {
    v50 = @"enable";
  }

  else
  {
    v50 = @"disable";
  }

  v189 = v50;
  v51 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  do
  {
    v188 = v48;
    v201 = v47;
    v52 = 0;
    do
    {
      if (*v212 != v205)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v211 + 1) + 8 * v52);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v167 = NFLogGetLogger();
        if (v167)
        {
          v168 = v167;
          v169 = object_getClass(v210);
          v170 = class_isMetaClass(v169);
          v171 = object_getClassName(v210);
          v187 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          v172 = 45;
          if (v170)
          {
            v172 = 43;
          }

          v168(3, "%c[%{public}s %{public}s]:%i Invalid type", v172, v171, v187, 643);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v173 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
        {
          v174 = object_getClass(v210);
          if (class_isMetaClass(v174))
          {
            v175 = 43;
          }

          else
          {
            v175 = 45;
          }

          v176 = object_getClassName(v210);
          v177 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          *buf = 67109890;
          *&buf[4] = v175;
          v222 = 2082;
          v223 = v176;
          v224 = 2082;
          v225 = v177;
          v226 = 1024;
          v227 = 643;
          _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type", buf, 0x22u);
        }

        v178 = [NSError alloc];
        v43 = [NSString stringWithUTF8String:"nfcd"];
        v240[0] = NSLocalizedDescriptionKey;
        v44 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v241[0] = v44;
        v241[1] = &off_10032F9B8;
        v240[1] = @"Line";
        v240[2] = @"Method";
        v144 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
        v241[2] = v144;
        v240[3] = NSDebugDescriptionErrorKey;
        v145 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 644];
        v241[3] = v145;
        v240[4] = NSLocalizedFailureReasonErrorKey;
        v161 = [[NSString alloc] initWithFormat:@"Invalid key type"];
        v241[4] = v161;
        v162 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:5];
        v45 = [v178 initWithDomain:v43 code:10 userInfo:v162];
        goto LABEL_132;
      }

      v43 = [(__CFString *)v53 objectForKeyedSubscript:@"keyIdentifier"];
      if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v149 = NFLogGetLogger();
        if (v149)
        {
          v150 = v149;
          v151 = object_getClass(v210);
          v152 = class_isMetaClass(v151);
          v153 = object_getClassName(v210);
          v186 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          v154 = 45;
          if (v152)
          {
            v154 = 43;
          }

          v150(3, "%c[%{public}s %{public}s]:%i key ID is missing or has an invalid type ?!", v154, v153, v186, 742);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v155 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          v156 = object_getClass(v210);
          if (class_isMetaClass(v156))
          {
            v157 = 43;
          }

          else
          {
            v157 = 45;
          }

          v158 = object_getClassName(v210);
          v159 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          *buf = 67109890;
          *&buf[4] = v157;
          v222 = 2082;
          v223 = v158;
          v224 = 2082;
          v225 = v159;
          v226 = 1024;
          v227 = 742;
          _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i key ID is missing or has an invalid type ?!", buf, 0x22u);
        }

        v160 = [NSError alloc];
        v44 = [NSString stringWithUTF8String:"nfcd"];
        v219[0] = NSLocalizedDescriptionKey;
        v144 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v220[0] = v144;
        v220[1] = &off_10032FA00;
        v219[1] = @"Line";
        v219[2] = @"Method";
        v145 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
        v220[2] = v145;
        v219[3] = NSDebugDescriptionErrorKey;
        v161 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 743];
        v220[3] = v161;
        v219[4] = NSLocalizedFailureReasonErrorKey;
        v162 = [[NSString alloc] initWithFormat:@"key ID is missing or has an invalid type ?!"];
        v220[4] = v162;
        v163 = [NSDictionary dictionaryWithObjects:v220 forKeys:v219 count:5];
        v45 = [v160 initWithDomain:v44 code:10 userInfo:v163];

LABEL_132:
        goto LABEL_138;
      }

      v54 = v51[470];
      v55 = [(__CFString *)v53 objectForKeyedSubscript:@"UWBExpressEnabled"];
      v56 = [v54 numberWithBool:{objc_msgSend(v55, "BOOLValue")}];

      v209 = v56;
      if (v56)
      {
        v57 = v51[470];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v82 = NFLogGetLogger();
          if (v82)
          {
            v83 = v82;
            v84 = object_getClass(v210);
            v85 = class_isMetaClass(v84);
            v86 = object_getClassName(v210);
            v183 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
            v87 = 45;
            if (v85)
            {
              v87 = 43;
            }

            v83(3, "%c[%{public}s %{public}s]:%i Invalid UWB type", v87, v86, v183, 656);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v88 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v89 = object_getClass(v210);
            if (class_isMetaClass(v89))
            {
              v90 = 43;
            }

            else
            {
              v90 = 45;
            }

            v91 = object_getClassName(v210);
            v92 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
            *buf = 67109890;
            *&buf[4] = v90;
            v222 = 2082;
            v223 = v91;
            v224 = 2082;
            v225 = v92;
            v226 = 1024;
            v227 = 656;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid UWB type", buf, 0x22u);
          }

          v93 = [NSError alloc];
          v63 = [NSString stringWithUTF8String:"nfcd"];
          v238[0] = NSLocalizedDescriptionKey;
          v77 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v239[0] = v77;
          v239[1] = &off_10032F9D0;
          v238[1] = @"Line";
          v238[2] = @"Method";
          v78 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
          v239[2] = v78;
          v238[3] = NSDebugDescriptionErrorKey;
          v94 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 657];
          v239[3] = v94;
          v238[4] = NSLocalizedFailureReasonErrorKey;
          v95 = [[NSString alloc] initWithFormat:@"Invalid UWB value type"];
          v239[4] = v95;
          v96 = [NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:5];
          v190 = [v93 initWithDomain:v63 code:10 userInfo:v96];

          goto LABEL_64;
        }
      }

      v58 = [v56 BOOLValue];
      if (!(v195 & 1 | ((v58 & 1) == 0)))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v65 = NFLogGetLogger();
        if (v65)
        {
          v66 = v65;
          v67 = object_getClass(v210);
          v68 = class_isMetaClass(v67);
          v69 = object_getClassName(v210);
          v182 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          v70 = 45;
          if (v68)
          {
            v70 = 43;
          }

          v66(3, "%c[%{public}s %{public}s]:%i what you talking 'bout Willis?!", v70, v69, v182, 662);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v71 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = object_getClass(v210);
          if (class_isMetaClass(v72))
          {
            v73 = 43;
          }

          else
          {
            v73 = 45;
          }

          v74 = object_getClassName(v210);
          v75 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
          *buf = 67109890;
          *&buf[4] = v73;
          v222 = 2082;
          v223 = v74;
          v224 = 2082;
          v225 = v75;
          v226 = 1024;
          v227 = 662;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i what you talking 'bout Willis?!", buf, 0x22u);
        }

        v76 = [NSError alloc];
        v63 = [NSString stringWithUTF8String:"nfcd"];
        v236[0] = NSLocalizedDescriptionKey;
        v77 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v237[0] = v77;
        v237[1] = &off_10032F9E8;
        v236[1] = @"Line";
        v236[2] = @"Method";
        v78 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
        v237[2] = v78;
        v236[3] = NSDebugDescriptionErrorKey;
        v79 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 663];
        v237[3] = v79;
        v236[4] = NSLocalizedFailureReasonErrorKey;
        v80 = [[NSString alloc] initWithFormat:@"what you talking 'bout Willis?!"];
        v237[4] = v80;
        v81 = [NSDictionary dictionaryWithObjects:v237 forKeys:v236 count:5];
        v190 = [v76 initWithDomain:v63 code:10 userInfo:v81];

LABEL_64:
        v97 = 0;
        v51 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        goto LABEL_92;
      }

      if (v194)
      {
        if (!a4)
        {
          goto LABEL_68;
        }

        v59 = [(__CFString *)v53 objectForKeyedSubscript:@"expressEnabled"];
        v60 = [v59 BOOLValue];

        v61 = [v56 BOOLValue];
        if (v60)
        {
          v62 = v198;
        }

        else
        {
          v62 = 0;
        }

        v63 = v62;
        if (v61)
        {
          v64 = v198;
        }

        else
        {
          v64 = 0;
        }
      }

      else
      {
        if (!a4)
        {
LABEL_68:
          v64 = v202;
          v63 = v64;
          goto LABEL_69;
        }

        if (v58)
        {
          v63 = v202;
          v64 = v198;
        }

        else
        {
          v63 = v198;
          v64 = v202;
        }
      }

LABEL_69:
      v77 = v64;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(v210);
        v101 = class_isMetaClass(v100);
        v102 = object_getClassName(v210);
        v103 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
        v104 = [v208 identifier];
        v181 = v102;
        v105 = 45;
        if (v101)
        {
          v105 = 43;
        }

        v51 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        v99(6, "%c[%{public}s %{public}s]:%i %{public}@ express for key:%{public}@ AID:%{public}@", v105, v181, v103, 718, v189, v53, v104);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v106 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        v107 = object_getClass(v210);
        if (class_isMetaClass(v107))
        {
          v108 = 43;
        }

        else
        {
          v108 = 45;
        }

        v109 = object_getClassName(v210);
        v110 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
        v111 = [v208 identifier];
        *buf = 67110658;
        *&buf[4] = v108;
        v222 = 2082;
        v223 = v109;
        v224 = 2082;
        v225 = v110;
        v226 = 1024;
        v227 = 718;
        v228 = 2114;
        v229 = v189;
        v230 = 2114;
        v231 = v53;
        v232 = 2114;
        v233 = v111;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ express for key:%{public}@ AID:%{public}@", buf, 0x40u);

        v51 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      }

      v112 = sub_10025B888(v203, v63, v77, v43, v208, v206, a6);
      v78 = v112;
      if (!v112)
      {
        goto LABEL_81;
      }

      if ([v112 code] == 65)
      {
        ++v188;
LABEL_81:
        v97 = 1;
        goto LABEL_92;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v113 = NFLogGetLogger();
      if (v113)
      {
        v114 = v113;
        v115 = object_getClass(v210);
        v116 = class_isMetaClass(v115);
        v117 = object_getClassName(v210);
        v184 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
        v118 = 45;
        if (v116)
        {
          v118 = 43;
        }

        v114(3, "%c[%{public}s %{public}s]:%i failed to setup transaction codes contactless:%{public}@ wired:%{public}@ on key %{public}@: %{public}@", v118, v117, v184, 731, v63, v77, v53, v78);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v119 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        v120 = object_getClass(v210);
        if (class_isMetaClass(v120))
        {
          v121 = 43;
        }

        else
        {
          v121 = 45;
        }

        v122 = object_getClassName(v210);
        v123 = sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:");
        *buf = 67110914;
        *&buf[4] = v121;
        v222 = 2082;
        v223 = v122;
        v224 = 2082;
        v225 = v123;
        v226 = 1024;
        v227 = 731;
        v228 = 2114;
        v229 = v63;
        v230 = 2114;
        v231 = v77;
        v232 = 2114;
        v233 = v53;
        v234 = 2114;
        v235 = v78;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to setup transaction codes contactless:%{public}@ wired:%{public}@ on key %{public}@: %{public}@", buf, 0x4Au);
      }

      v78 = v78;
      v124 = [NSString alloc];
      v125 = [v208 identifier];
      v126 = [v124 initWithFormat:@"setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:%@ authorization:%d uid:", v125, v206 != 0];

      sub_100199548(NFBugCapture, @"Express Mode Failure", @"Fail to setup transaction codes", v126, 0, 0);
      v97 = 1;
      v201 = v78;
LABEL_92:

      if (!v97)
      {
        v46 = v199;
        v179 = v201;
        v45 = v190;
        goto LABEL_140;
      }

      v52 = v52 + 1;
    }

    while (v204 != v52);
    v127 = [obj countByEnumeratingWithState:&v211 objects:v242 count:16];
    v9 = v208;
    v46 = v199;
    v47 = v201;
    v48 = v188;
    v204 = v127;
  }

  while (v127);
LABEL_97:

  +[NFGeneralStatisticsCALogger postAnalyticsSetupEndpoints:totalUnknowntoSE:](NFGeneralStatisticsCALogger, "postAnalyticsSetupEndpoints:totalUnknowntoSE:", [obj count], v48);
  if (v47)
  {
    v128 = [NSError alloc];
    obj = [NSString stringWithUTF8String:"nfcd"];
    v129 = [v47 code];
    v217[0] = NSLocalizedDescriptionKey;
    if ([v47 code] > 75)
    {
      v130 = 76;
    }

    else
    {
      v130 = [v47 code];
    }

    v43 = [NSString stringWithUTF8String:off_1003152E8[v130]];
    v218[0] = v43;
    v218[1] = v47;
    v201 = v47;
    v217[1] = NSUnderlyingErrorKey;
    v217[2] = @"Line";
    v218[2] = &off_10032FA18;
    v217[3] = @"Method";
    v44 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:")];
    v218[3] = v44;
    v217[4] = NSDebugDescriptionErrorKey;
    v144 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableExpressForKeys:onApplet:enable:authorization:uid:"), 749];
    v218[4] = v144;
    v145 = [NSDictionary dictionaryWithObjects:v218 forKeys:v217 count:5];
    v146 = v128;
    v147 = obj;
    v148 = v129;
LABEL_137:
    v45 = [v146 initWithDomain:v147 code:v148 userInfo:v145];
LABEL_138:

LABEL_139:
    v46 = v199;
    v179 = v201;
LABEL_140:

    v9 = v208;
  }

  else
  {
    v45 = 0;
  }

LABEL_142:

  return v45;
}

id sub_100012574(id *a1, int a2)
{
  if (a1)
  {
    v4 = a1[2];
    v5 = [v4 count];

    if (v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("setFactoryTestConfigInECP2Mode:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Config is not empty, cannot configure factory test mode", v11, ClassName, Name, 975);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v82 = v14;
        v83 = 2082;
        v84 = object_getClassName(a1);
        v85 = 2082;
        v86 = sel_getName("setFactoryTestConfigInECP2Mode:");
        v87 = 1024;
        v88 = 975;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Config is not empty, cannot configure factory test mode", buf, 0x22u);
      }

      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v97[0] = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Invalid State"];
      v98[0] = v17;
      v98[1] = &off_10032FA60;
      v97[1] = @"Line";
      v97[2] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setFactoryTestConfigInECP2Mode:")];
      v98[2] = v18;
      v97[3] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setFactoryTestConfigInECP2Mode:"), 976];
      v98[3] = v19;
      v97[4] = NSLocalizedFailureReasonErrorKey;
      v20 = [[NSString alloc] initWithFormat:@"Config is not empty"];
      v98[4] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:5];
      v22 = [v15 initWithDomain:v16 code:12 userInfo:v21];
    }

    else
    {
      v23 = [[NSData alloc] initWithBytes:"FACTORYTESTAPP" length:14];
      v24 = [v23 NF_asHexString];
      v16 = sub_10000ADB0(a1, v24, 1, 0);

      if (v16)
      {
        if ([v16 authTransientSupport])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFLogGetLogger();
          if (v25)
          {
            v26 = v25;
            v27 = object_getClass(a1);
            v28 = class_isMetaClass(v27);
            v29 = object_getClassName(a1);
            v30 = sel_getName("setFactoryTestConfigInECP2Mode:");
            v31 = [v16 identifier];
            v32 = 45;
            if (v28)
            {
              v32 = 43;
            }

            v26(3, "%c[%{public}s %{public}s]:%i Authorization is enabled for %{public}@", v32, v29, v30, 986, v31);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v33 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = object_getClass(a1);
            if (class_isMetaClass(v34))
            {
              v35 = 43;
            }

            else
            {
              v35 = 45;
            }

            v36 = object_getClassName(a1);
            v37 = sel_getName("setFactoryTestConfigInECP2Mode:");
            v38 = [v16 identifier];
            *buf = 67110146;
            v82 = v35;
            v83 = 2082;
            v84 = v36;
            v85 = 2082;
            v86 = v37;
            v87 = 1024;
            v88 = 986;
            v89 = 2114;
            v90 = v38;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Authorization is enabled for %{public}@", buf, 0x2Cu);
          }

          v39 = [NSError alloc];
          v17 = [NSString stringWithUTF8String:"nfcd"];
          v93[0] = NSLocalizedDescriptionKey;
          v18 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v94[0] = v18;
          v94[1] = &off_10032FA90;
          v93[1] = @"Line";
          v93[2] = @"Method";
          v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setFactoryTestConfigInECP2Mode:")];
          v94[2] = v40;
          v93[3] = NSDebugDescriptionErrorKey;
          v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setFactoryTestConfigInECP2Mode:"), 987];
          v94[3] = v41;
          v93[4] = NSLocalizedFailureReasonErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"Authorization enabled on express applet"];
          v94[4] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:5];
          v22 = [v39 initWithDomain:v17 code:10 userInfo:v43];
        }

        else
        {
          v17 = objc_opt_new();
          v57 = objc_opt_new();
          v18 = v57;
          if (a2)
          {
            [v57 setObject:@"ECP2" forKeyedSubscript:@"ExpressType"];
            v58 = objc_opt_new();
            v59 = [NSData NF_dataWithHexString:@"020000"];
            v60 = [[NSArray alloc] initWithObjects:{v59, 0}];
            [v58 setObject:v60 forKeyedSubscript:@"primaryTCIs"];

            [v18 setObject:v58 forKeyedSubscript:@"ECP2Info"];
          }

          else
          {
            [v57 setObject:@"GenericA" forKeyedSubscript:@"ExpressType"];
          }

          v61 = [v16 identifier];
          [v18 setObject:v61 forKeyedSubscript:@"appletIdentifier"];

          [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:@"expressEnabled"];
          v62 = arc4random();
          v80 = arc4random() | (v62 << 32);
          v40 = [[NSData alloc] initWithBytes:&v80 length:8];
          v63 = [v40 NF_asHexString];
          [v18 setObject:v63 forKeyedSubscript:@"passUniqueID"];

          [v17 addObject:v18];
          [a1 dumpConfig:v17 logLevel:6 prefix:@"factory test config"];
          v22 = [a1 reconfigureWithArray:v17 restoreAuthorization:0 updateStorage:1];
          if (v22)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v64 = NFLogGetLogger();
            if (v64)
            {
              v65 = v64;
              v66 = object_getClass(a1);
              v67 = class_isMetaClass(v66);
              v68 = object_getClassName(a1);
              v79 = sel_getName("setFactoryTestConfigInECP2Mode:");
              v69 = 45;
              if (v67)
              {
                v69 = 43;
              }

              v65(3, "%c[%{public}s %{public}s]:%i Failed to set express config: %{public}@; error: %{public}@", v69, v68, v79, 1017, v17, v22);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v70 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v71 = object_getClass(a1);
              if (class_isMetaClass(v71))
              {
                v72 = 43;
              }

              else
              {
                v72 = 45;
              }

              v73 = object_getClassName(a1);
              v74 = sel_getName("setFactoryTestConfigInECP2Mode:");
              *buf = 67110402;
              v82 = v72;
              v83 = 2082;
              v84 = v73;
              v85 = 2082;
              v86 = v74;
              v87 = 1024;
              v88 = 1017;
              v89 = 2114;
              v90 = v17;
              v91 = 2114;
              v92 = v22;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set express config: %{public}@; error: %{public}@", buf, 0x36u);
            }

            v75 = v22;
          }
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(a1);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(a1);
          v78 = sel_getName("setFactoryTestConfigInECP2Mode:");
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(3, "%c[%{public}s %{public}s]:%i Failed to find FTA applet", v49, v48, v78, 981);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = object_getClass(a1);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          *buf = 67109890;
          v82 = v52;
          v83 = 2082;
          v84 = object_getClassName(a1);
          v85 = 2082;
          v86 = sel_getName("setFactoryTestConfigInECP2Mode:");
          v87 = 1024;
          v88 = 981;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find FTA applet", buf, 0x22u);
        }

        v53 = [NSError alloc];
        v17 = [NSString stringWithUTF8String:"nfcd"];
        v95[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"Invalid State"];
        v96[0] = v18;
        v96[1] = &off_10032FA78;
        v95[1] = @"Line";
        v95[2] = @"Method";
        v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setFactoryTestConfigInECP2Mode:")];
        v96[2] = v54;
        v95[3] = NSDebugDescriptionErrorKey;
        v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setFactoryTestConfigInECP2Mode:"), 982];
        v96[3] = v55;
        v56 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
        v22 = [v53 initWithDomain:v17 code:12 userInfo:v56];

        v16 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

BOOL sub_1000130F8(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = [a1 getSecureElementWrapperAndSetRouting];
  v13 = 0;
  v7 = sub_1002641A4(v6, v5, &v13);

  v8 = v13;
  v9 = [v7 mutableCopy];
  v10 = v9;

  *a3 = v9;
  v11 = v8 == 0;

  return v11;
}

uint64_t sub_100015150(void *a1, int a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = @"embedded";
  if (a2 != 1)
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = a1;
  objc_sync_enter(v8);
  if (!v8[1])
  {
    v63 = +[NSAssertionHandler currentHandler];
    [v63 handleFailureInMethod:"getSecureElementInfo:info:" object:v8 file:@"NFDriverWrapper+SE.m" lineNumber:32 description:@"driver not open"];

    v64 = v8[1];
  }

  memset(v78, 0, 512);
  v9 = v78;
  if ((NFDriverGetSecureElementInfo() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v40 = Logger;
      Class = object_getClass(v8);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v8);
      Name = sel_getName("getSecureElementInfo:info:");
      v44 = 45;
      if (isMetaClass)
      {
        v44 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Failed to get info", v44, ClassName, Name, 36);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = object_getClass(v8);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      *buf = 67109890;
      v71 = v47;
      v72 = 2082;
      v73 = object_getClassName(v8);
      v74 = 2082;
      v75 = sel_getName("getSecureElementInfo:info:");
      v76 = 1024;
      v77 = 36;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
    }

    v48 = 0;
    goto LABEL_49;
  }

  v66 = a3;
  v67 = v7;
  v69 = [[NSData alloc] initWithBytes:&v81 length:24];
  v68 = [[NSData alloc] initWithBytes:&v82 length:24];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 3;
  do
  {
    if (*(v9 + 32))
    {
      v14 = *(v9 + 264);
      if (v14 == 1)
      {
        v15 = [[NSData alloc] initWithBytes:v9 length:*(v9 + 32)];

        v14 = *(v9 + 264);
        v10 = v15;
      }

      if (v14 == 2)
      {
        v16 = [[NSData alloc] initWithBytes:v9 length:*(v9 + 32)];

        v14 = *(v9 + 264);
        v12 = v16;
      }

      if (v14 == 3)
      {
        v17 = [[NSData alloc] initWithBytes:v9 length:*(v9 + 32)];

        v11 = v17;
      }
    }

    v9 += 17;
    --v13;
  }

  while (v13);
  v18 = [[NSMutableDictionary alloc] initWithCapacity:32];
  v19 = v18;
  if (a2 == 1)
  {
    [v18 setObject:@"embedded" forKey:@"identifier"];
    v20 = [[NSString alloc] initWithUTF8String:&v80];
    [v19 setObject:v20 forKey:@"platformIdentifier"];

    v21 = [NSNumber numberWithUnsignedInteger:__rev16(v83)];
    [v19 setObject:v21 forKey:@"OSVersion"];

    v22 = [NSNumber numberWithUnsignedInteger:(v83 << 16) | (HIBYTE(v83) << 8) | v84];
    [v19 setObject:v22 forKey:@"fullOSVersion"];

    v23 = [NSNumber numberWithUnsignedInteger:v91];
    [v19 setObject:v23 forKey:@"firmwareVersion"];

    v24 = [NSNumber numberWithUnsignedInteger:v94];
    [v19 setObject:v24 forKey:@"compiledFWVersion"];

    v25 = [NSNumber numberWithUnsignedInteger:v92];
    [v19 setObject:v25 forKey:@"hardwareVersion"];

    v26 = [NSNumber numberWithUnsignedInteger:v100];
    [v19 setObject:v26 forKey:@"deviceType"];

    v27 = [NSNumber numberWithUnsignedInteger:v95];
    [v19 setObject:v27 forKey:@"sequenceCounter"];

    v28 = [NSNumber numberWithUnsignedInteger:v96];
    [v19 setObject:v28 forKey:@"referenceCounter"];

    v29 = [NSNumber numberWithUnsignedInteger:v101];
    [v19 setObject:v29 forKey:@"osid"];

    v30 = [NSNumber numberWithUnsignedInteger:v102];
    [v19 setObject:v30 forKey:@"otherOSValid"];

    v31 = [NSNumber numberWithUnsignedInteger:v103];
    [v19 setObject:v31 forKey:@"restrictedMode"];

    v32 = [NSNumber numberWithUnsignedInteger:v85];
    [v19 setObject:v32 forKey:@"OSMode"];

    v33 = [NSNumber numberWithUnsignedInteger:v86];
    [v19 setObject:v33 forKey:@"signingKeyType"];

    v34 = [NSNumber numberWithUnsignedInteger:v87];
    [v19 setObject:v34 forKey:@"migrationState"];

    v35 = [NSNumber numberWithUnsignedInteger:v97];
    [v19 setObject:v35 forKey:@"migrationPackages"];

    v36 = [NSNumber numberWithUnsignedInteger:v98];
    [v19 setObject:v36 forKey:@"migrationInstances"];

    v37 = [NSNumber numberWithUnsignedInteger:v88];
    [v19 setObject:v37 forKey:@"migrationContext"];

    v38 = [NSNumber numberWithUnsignedInteger:v93];
    [v19 setObject:v38 forKey:@"persistentConfigID"];

    if (v69)
    {
      [v19 setObject:v69 forKey:@"serialNumber"];
    }

    else
    {
      v49 = +[NSData data];
      [v19 setObject:v49 forKey:@"serialNumber"];
    }

    if (v68)
    {
      [v19 setObject:v68 forKey:@"systemOSSerialNumber"];
      if (!v10)
      {
LABEL_33:
        if (v12)
        {
          [v19 setObject:v12 forKey:@"ecdsaCertificate"];
        }

        if (v11)
        {
          [v19 setObject:v11 forKey:@"eckaCertificate"];
        }

        goto LABEL_37;
      }
    }

    else
    {
      v62 = +[NSData data];
      [v19 setObject:v62 forKey:@"systemOSSerialNumber"];

      if (!v10)
      {
        goto LABEL_33;
      }
    }

    [v19 setObject:v10 forKey:@"rsaCertificate"];
    goto LABEL_33;
  }

LABEL_37:
  if (v99)
  {
    v50 = [NSData alloc];
    v51 = [v50 initWithBytes:&v79 length:v99];
  }

  else
  {
    v51 = +[NSData data];
  }

  v52 = v51;
  [v19 setObject:v51 forKey:@"manifestQuery"];

  v53 = [NSNumber numberWithBool:1];
  [v19 setObject:v53 forKey:@"personalisable"];

  v54 = [NSNumber numberWithInteger:v89];
  [v19 setObject:v54 forKey:@"supportedTechnologies"];

  v55 = [NSNumber numberWithInteger:v90];
  [v19 setObject:v55 forKey:@"seType"];

  v56 = [NSNumber numberWithUnsignedInteger:v104];
  [v19 setObject:v56 forKey:@"osUpdateMode"];

  v57 = [v8 isJCOPTooOld:v100 prod:v86 == 2 version:v95];
  v58 = v57;
  if (a2 == 1 && (v57 & 1) == 0)
  {
    v58 = v88 == 3 && v87 > 1;
  }

  v60 = [NSNumber numberWithBool:v58];
  [v19 setObject:v60 forKey:@"jcopTooOld"];

  *v66 = [[NFHardwareSecureElementInfo alloc] initWithDictionary:v19];
  v48 = 1;
  v7 = v67;
LABEL_49:
  objc_sync_exit(v8);

  return v48;
}

BOOL sub_100015AE4(uint64_t a1, void *a2)
{
  objc_opt_self();
  if (a2)
  {
    *a2 = NFDriverCopySEIDFromFDR();
  }

  return a2 != 0;
}

uint64_t sub_100015B4C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    goto LABEL_17;
  }

  if (!*(v1 + 1))
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:"setSecureElement:alwaysOn:" object:v1 file:@"NFDriverWrapper+SE.m" lineNumber:167 description:@"driver not open"];

    v14 = *(v1 + 1);
  }

  if ((NFDriverSetSecureElementAlwaysOn() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("setSecureElement:alwaysOn:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Failed to send command", v8, ClassName, Name, 170);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(v1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67109890;
      v17 = v11;
      v18 = 2082;
      v19 = object_getClassName(v1);
      v20 = 2082;
      v21 = sel_getName("setSecureElement:alwaysOn:");
      v22 = 1024;
      v23 = 170;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send command", buf, 0x22u);
    }

LABEL_17:
    v2 = 0;
    goto LABEL_18;
  }

  v2 = 1;
LABEL_18:
  objc_sync_exit(v1);

  return v2;
}

id sub_100015D60(void *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169) != 1)
  {
    v11 = *(v1 + 1);
    if (NFDriverSetSecureElementPower())
    {
      v12 = *(v1 + 1);
      if (NFDriverSetSecureElementPower())
      {
        objc_sync_exit(v1);

LABEL_7:
        v13 = 0;
        goto LABEL_30;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("sePowerCycle:");
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i Failed to power SE back on", v31, ClassName, Name, 190);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = object_getClass(v1);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        *buf = 67109890;
        v44 = v34;
        v45 = 2082;
        v46 = object_getClassName(v1);
        v47 = 2082;
        v48 = sel_getName("sePowerCycle:");
        v49 = 1024;
        v50 = 190;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to power SE back on", buf, 0x22u);
      }

      v35 = *(v1 + 1);
      NFDriverSimulateCrash();
      v23 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v39[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Stack Error"];
      v40[0] = v4;
      v40[1] = &off_10032FAD8;
      v39[1] = @"Line";
      v39[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sePowerCycle:")];
      v40[2] = v5;
      v39[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sePowerCycle:"), 192];
      v40[3] = v6;
      v24 = v40;
      v25 = v39;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v15 = v14;
        v16 = object_getClass(v1);
        v17 = class_isMetaClass(v16);
        v18 = object_getClassName(v1);
        v37 = sel_getName("sePowerCycle:");
        v19 = 45;
        if (v17)
        {
          v19 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i Failed to power SE off", v19, v18, v37, 186);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = object_getClass(v1);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        *buf = 67109890;
        v44 = v22;
        v45 = 2082;
        v46 = object_getClassName(v1);
        v47 = 2082;
        v48 = sel_getName("sePowerCycle:");
        v49 = 1024;
        v50 = 186;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to power SE off", buf, 0x22u);
      }

      v23 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v41[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Stack Error"];
      v42[0] = v4;
      v42[1] = &off_10032FAC0;
      v41[1] = @"Line";
      v41[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sePowerCycle:")];
      v42[2] = v5;
      v41[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sePowerCycle:"), 187];
      v42[3] = v6;
      v24 = v42;
      v25 = v41;
    }

    v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:4];
    v8 = v23;
    v9 = v3;
    v10 = 15;
    goto LABEL_29;
  }

  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v51[0] = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"Aborted"];
  v52[0] = v4;
  v52[1] = &off_10032FAA8;
  v51[1] = @"Line";
  v51[2] = @"Method";
  v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sePowerCycle:")];
  v52[2] = v5;
  v51[3] = NSDebugDescriptionErrorKey;
  v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sePowerCycle:"), 182];
  v52[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v8 = v2;
  v9 = v3;
  v10 = 3;
LABEL_29:
  v13 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

  objc_sync_exit(v1);
LABEL_30:

  return v13;
}

id sub_1000163DC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v32[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v33[0] = v4;
      v33[1] = &off_10032FAF0;
      v32[1] = @"Line";
      v32[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("seSoftReset:")];
      v33[2] = v5;
      v32[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("seSoftReset:"), 205];
      v33[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
      v8 = [v2 initWithDomain:ErrorCode code:3 userInfo:v7];

LABEL_15:
      objc_sync_exit(v1);

      goto LABEL_16;
    }

    v9 = *(v1 + 1);
    if (NFDriverHCISoftReset())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("seSoftReset:");
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Failed to soft reset the SE", v15, ClassName, Name, 210);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(v1);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v25 = v18;
        v26 = 2082;
        v27 = object_getClassName(v1);
        v28 = 2082;
        v29 = sel_getName("seSoftReset:");
        v30 = 1024;
        v31 = 210;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to soft reset the SE", buf, 0x22u);
      }

      ErrorCode = NFDriverCreateErrorCode();
      v19 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:"Stack Error"];
      v22[1] = NSUnderlyingErrorKey;
      v23[0] = v5;
      v23[1] = ErrorCode;
      v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v8 = [v19 initWithDomain:v4 code:15 userInfo:v6];
      goto LABEL_15;
    }

    objc_sync_exit(v1);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

uint64_t sub_1000167B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 8))
    {
      v2 = +[NSAssertionHandler currentHandler];
      [v2 handleFailureInMethod:"redactLogging:" object:v1 file:@"NFDriverWrapper+SE.m" lineNumber:225 description:@"driver not open"];

      v3 = *(v1 + 8);
    }

    return NFDriverRedactLogging();
  }

  return result;
}

id sub_100016848(void *a1, int a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    a1 = sub_100016888(a1, a2, a3, 0, a4, 0, a5);
    v5 = vars8;
  }

  return a1;
}

id sub_100016888(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v11 = a3;
  if (a1)
  {
    v12 = a1;
    objc_sync_enter(v12);
    if (*(v12 + 169) == 1)
    {
      if (!a7)
      {
LABEL_43:
        Ownership = 0;
LABEL_44:
        objc_sync_exit(v12);

        goto LABEL_45;
      }

      v13 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v103[0] = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"Aborted"];
      v104[0] = v15;
      v104[1] = &off_10032FB08;
      v103[1] = @"Line";
      v103[2] = @"Method";
      v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
      v104[2] = v16;
      v103[3] = NSDebugDescriptionErrorKey;
      v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 245];
      v104[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
      v19 = v13;
      v20 = ErrorCode;
      v21 = 3;
      goto LABEL_40;
    }

    if (!*(v12 + 1))
    {
      v77 = +[NSAssertionHandler currentHandler];
      [v77 handleFailureInMethod:"secureElement:transceive:toOS:allowInVirtual:redact:error:" object:v12 file:@"NFDriverWrapper+SE.m" lineNumber:249 description:@"driver not open"];
    }

    if ([v11 length])
    {
      v22 = *(v12 + 1);
      if (*(v22 + 52) == 1)
      {
        if (a2 != 1 || (*(v22 + 44) - 1) >= 2)
        {
LABEL_29:
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v39 = Logger;
            Class = object_getClass(v12);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v12);
            Name = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
            v43 = 45;
            if (isMetaClass)
            {
              v43 = 43;
            }

            v39(3, "%c[%{public}s %{public}s]:%i SE not in proper mode", v43, ClassName, Name, 271);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = object_getClass(v12);
            if (class_isMetaClass(v45))
            {
              v46 = 43;
            }

            else
            {
              v46 = 45;
            }

            *buf = 67109890;
            v90 = v46;
            v91 = 2082;
            v92 = object_getClassName(v12);
            v93 = 2082;
            v94 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
            v95 = 1024;
            v96 = 271;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE not in proper mode", buf, 0x22u);
          }

          if (!a7)
          {
            goto LABEL_43;
          }

          v47 = [NSError alloc];
          ErrorCode = [NSString stringWithUTF8String:"nfcd"];
          v99[0] = NSLocalizedDescriptionKey;
          v15 = [NSString stringWithUTF8String:"Invalid State"];
          v100[0] = v15;
          v100[1] = &off_10032FB38;
          v99[1] = @"Line";
          v99[2] = @"Method";
          v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
          v100[2] = v16;
          v99[3] = NSDebugDescriptionErrorKey;
          v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 272];
          v100[3] = v17;
          v18 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
          v19 = v47;
          v20 = ErrorCode;
          v21 = 12;
          goto LABEL_40;
        }
      }

      else if (a2 != 1 || *(v22 + 44) != 1)
      {
        goto LABEL_29;
      }

      [v11 bytes];
      [v11 length];
      if (NFDataCreateWithBytesNoCopy())
      {
        if (a6)
        {
          v33 = *(v12 + 1);
          NFDriverRedactLogging();
          v34 = *(v12 + 1);
          v35 = NFDriverSecureElementTransceive();
          v36 = *(v12 + 1);
          NFDriverRedactLogging();
          if (v35)
          {
            NFDataRelease();
            Ownership = [NSData _newZeroingDataWithBytesNoCopy:*v35 length:v35[1] deallocator:NSDataDeallocatorFree];
            NFDataRelinquishOwnership();
LABEL_61:
            NFDataRelease();
            if (!a7)
            {
              goto LABEL_44;
            }

            if (Ownership)
            {
              *a7 = 0;
              goto LABEL_44;
            }

            v71 = [NSError alloc];
            ErrorCode = [NSString stringWithUTF8String:"nfcd"];
            v83[0] = NSLocalizedDescriptionKey;
            v15 = [NSString stringWithUTF8String:"No resources"];
            v84[0] = v15;
            v84[1] = &off_10032FBC8;
            v83[1] = @"Line";
            v83[2] = @"Method";
            v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
            v84[2] = v16;
            v83[3] = NSDebugDescriptionErrorKey;
            v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 325];
            v84[3] = v17;
            v18 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:4];
            v72 = [v71 initWithDomain:ErrorCode code:34 userInfo:v18];
            *a7 = v72;

            goto LABEL_41;
          }
        }

        else
        {
          v60 = *(v12 + 1);
          if (NFDriverSecureElementTransceive())
          {
            NFDataRelease();
            Ownership = NFDataToCFDataCreateOwnership();
            goto LABEL_61;
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFLogGetLogger();
        if (v61)
        {
          v62 = v61;
          v63 = object_getClass(v12);
          v64 = class_isMetaClass(v63);
          v65 = object_getClassName(v12);
          v80 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
          v66 = 45;
          if (v64)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Transceive failed", v66, v65, v80, 295);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = object_getClass(v12);
          if (class_isMetaClass(v68))
          {
            v69 = 43;
          }

          else
          {
            v69 = 45;
          }

          *buf = 67109890;
          v90 = v69;
          v91 = 2082;
          v92 = object_getClassName(v12);
          v93 = 2082;
          v94 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
          v95 = 1024;
          v96 = 295;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Transceive failed", buf, 0x22u);
        }

        NFDataRelease();
        if (!a7)
        {
          goto LABEL_43;
        }

        ErrorCode = NFDriverCreateErrorCode();
        v70 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v82 = [ErrorCode code];
        v85[0] = NSLocalizedDescriptionKey;
        if ([ErrorCode code] > 75)
        {
          v73 = 76;
        }

        else
        {
          v73 = [ErrorCode code];
        }

        v16 = [NSString stringWithUTF8String:off_100315550[v73]];
        v86[0] = v16;
        v86[1] = ErrorCode;
        v85[1] = NSUnderlyingErrorKey;
        v85[2] = @"Line";
        v86[2] = &off_10032FBB0;
        v85[3] = @"Method";
        v74 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
        v86[3] = v74;
        v85[4] = NSDebugDescriptionErrorKey;
        v75 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 306];
        v86[4] = v75;
        v76 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
        *a7 = [v70 initWithDomain:v15 code:v82 userInfo:v76];

        goto LABEL_42;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(v12);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(v12);
        v54 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
        v81 = [v11 length];
        v55 = 45;
        if (v52)
        {
          v55 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Failed to create CAPDU of length=%lu", v55, v53, v54, 278, v81);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = object_getClass(v12);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        *buf = 67110146;
        v90 = v58;
        v91 = 2082;
        v92 = object_getClassName(v12);
        v93 = 2082;
        v94 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
        v95 = 1024;
        v96 = 278;
        v97 = 2048;
        v98 = [v11 length];
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create CAPDU of length=%lu", buf, 0x2Cu);
      }

      if (!a7)
      {
        goto LABEL_43;
      }

      v59 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v87[0] = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"No resources"];
      v88[0] = v15;
      v88[1] = &off_10032FB50;
      v87[1] = @"Line";
      v87[2] = @"Method";
      v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
      v88[2] = v16;
      v87[3] = NSDebugDescriptionErrorKey;
      v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 279];
      v88[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
      v19 = v59;
      v20 = ErrorCode;
      v21 = 34;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(v12);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(v12);
        v78 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Missing command", v28, v27, v78, 252);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(v12);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        *buf = 67109890;
        v90 = v31;
        v91 = 2082;
        v92 = object_getClassName(v12);
        v93 = 2082;
        v94 = sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:");
        v95 = 1024;
        v96 = 252;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing command", buf, 0x22u);
      }

      if (!a7)
      {
        goto LABEL_43;
      }

      v32 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v101[0] = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v102[0] = v15;
      v102[1] = &off_10032FB20;
      v101[1] = @"Line";
      v101[2] = @"Method";
      v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:")];
      v102[2] = v16;
      v101[3] = NSDebugDescriptionErrorKey;
      v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("secureElement:transceive:toOS:allowInVirtual:redact:error:"), 253];
      v102[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:4];
      v19 = v32;
      v20 = ErrorCode;
      v21 = 10;
    }

LABEL_40:
    *a7 = [v19 initWithDomain:v20 code:v21 userInfo:v18];
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  Ownership = 0;
LABEL_45:

  return Ownership;
}

uint64_t sub_100017A08(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  objc_sync_enter(v4);
  if (*(v4 + 169) != 1)
  {
    v14 = *(v4 + 1);
    OSUpdateLog = NFDriverGetOSUpdateLog();
    v16 = OSUpdateLog;
    if (!a3 || OSUpdateLog)
    {
      goto LABEL_10;
    }

    v17 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v19[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Stack Error"];
    v20[0] = v7;
    v20[1] = &off_10032FBF8;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getOSUpdateLogFromSecureElement:error:")];
    v20[2] = v8;
    v19[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getOSUpdateLogFromSecureElement:error:"), 341];
    v20[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
    v11 = v17;
    v12 = v6;
    v13 = 15;
    goto LABEL_8;
  }

  if (a3)
  {
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v21[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Invalid State"];
    v22[0] = v7;
    v22[1] = &off_10032FBE0;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getOSUpdateLogFromSecureElement:error:")];
    v22[2] = v8;
    v21[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getOSUpdateLogFromSecureElement:error:"), 335];
    v22[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
    v11 = v5;
    v12 = v6;
    v13 = 12;
LABEL_8:
    *a3 = [v11 initWithDomain:v12 code:v13 userInfo:v10];
  }

  v16 = 0;
LABEL_10:
  objc_sync_exit(v4);

  return v16;
}

id sub_100017D24(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = a1;
    objc_sync_enter(v7);
    if (*(v7 + 169) == 1)
    {
      if (a4)
      {
        v8 = [NSError alloc];
        v9 = [NSString stringWithUTF8String:"nfcd"];
        v25[0] = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithUTF8String:"Invalid State"];
        v26[0] = v10;
        v26[1] = &off_10032FC10;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAttackCounterLogFromSecureElement:asBinary:error:")];
        v26[2] = v11;
        v25[3] = NSDebugDescriptionErrorKey;
        v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAttackCounterLogFromSecureElement:asBinary:error:"), 358];
        v26[3] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
        *a4 = [v8 initWithDomain:v9 code:12 userInfo:v13];
      }

      v14 = 0;
    }

    else
    {
      v15 = *(v7 + 1);
      if (NFDriverSecureElementGetAttackCounterLog())
      {
        objc_sync_exit(v7);

        free(0);
        if (a4)
        {
          *a4 = 0;
        }

        v14 = v6;
        goto LABEL_14;
      }

      if (a4)
      {
        v16 = [NSError alloc];
        v17 = [NSString stringWithUTF8String:"nfcd"];
        v23[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"Stack Error"];
        v24[0] = v18;
        v24[1] = &off_10032FC28;
        v23[1] = @"Line";
        v23[2] = @"Method";
        v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAttackCounterLogFromSecureElement:asBinary:error:")];
        v24[2] = v19;
        v23[3] = NSDebugDescriptionErrorKey;
        v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAttackCounterLogFromSecureElement:asBinary:error:"), 363];
        v24[3] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
        *a4 = [v16 initWithDomain:v17 code:15 userInfo:v21];
      }

      v14 = v6;
    }

    objc_sync_exit(v7);

LABEL_14:
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

uint64_t sub_1000181CC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    PresenceOfAttackLog = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    PresenceOfAttackLog = NFDriverSecureElementGetPresenceOfAttackLog();
  }

  objc_sync_exit(v1);

  return PresenceOfAttackLog;
}

uint64_t sub_100018244(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    UnlockRequestInfo = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    UnlockRequestInfo = NFDriverGetUnlockRequestInfo();
  }

  objc_sync_exit(v1);

  return UnlockRequestInfo;
}

id sub_1000182AC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v17[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Invalid State"];
      v18[0] = v4;
      v18[1] = &off_10032FC40;
      v17[1] = @"Line";
      v17[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getReaderProhibitTimerInfo:")];
      v18[2] = v5;
      v17[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getReaderProhibitTimerInfo:"), 411];
      v18[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      v8 = v2;
      v9 = v3;
      v10 = 12;
    }

    else
    {
      v11 = *(v1 + 1);
      if (!NFDriverGetReaderProhibitTimer())
      {
        v13 = 0;
        goto LABEL_7;
      }

      v12 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Stack Error"];
      v16[0] = v4;
      v16[1] = &off_10032FC58;
      v15[1] = @"Line";
      v15[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getReaderProhibitTimerInfo:")];
      v16[2] = v5;
      v15[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getReaderProhibitTimerInfo:"), 416];
      v16[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      v8 = v12;
      v9 = v3;
      v10 = 15;
    }

    v13 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

LABEL_7:
    objc_sync_exit(v1);

    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

id sub_1000185C8(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = qword_10035DB80;
    if (!qword_10035DB80)
    {
      v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nfcd.hwmanager"];
      v6 = qword_10035DB80;
      qword_10035DB80 = v5;

      [qword_10035DB80 setDelegate:a1];
      v4 = qword_10035DB80;
      if (v3)
      {
        [qword_10035DB80 _setQueue:v3];
        v4 = qword_10035DB80;
      }
    }

    a1 = v4;
  }

  return a1;
}

id sub_10001866C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = qword_10035DB88;
    if (!qword_10035DB88)
    {
      v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nfcd.service.corenfc"];
      v6 = qword_10035DB88;
      qword_10035DB88 = v5;

      [qword_10035DB88 setDelegate:a1];
      v4 = qword_10035DB88;
      if (v3)
      {
        [qword_10035DB88 _setQueue:v3];
        v4 = qword_10035DB88;
      }
    }

    a1 = v4;
  }

  return a1;
}

void sub_100019648(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "_NFHardwareManger xpcInvalidated", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  sub_1000E8494(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 1);
}

void sub_1000196C0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "_NFHardwareManger xpcInterrupted", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  sub_1000E8494(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0);
}

uint64_t sub_10001A63C(void *a1)
{
  v1 = a1;
  v2 = [[NSData alloc] initWithBytes:&unk_100296B68 length:7];
  v3 = [v2 length];

  v4 = [[NSData alloc] initWithBytes:&unk_100296B6F length:7];
  v5 = [v4 length];

  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if ([v1 length] >= v6)
  {
    v9 = [[NSData alloc] initWithBytes:&unk_100296B68 length:7];
    v10 = [v1 subdataWithRange:{0, objc_msgSend(v9, "length")}];
    v11 = [[NSData alloc] initWithBytes:&unk_100296B68 length:7];
    if ([v10 isEqualToData:v11])
    {
    }

    else
    {
      v19 = [[NSData alloc] initWithBytes:&unk_100296B6F length:7];
      v20 = [v1 subdataWithRange:{0, objc_msgSend(v19, "length")}];
      v21 = [[NSData alloc] initWithBytes:&unk_100296B6F length:7];
      v22 = [v20 isEqualToData:v21];

      if ((v22 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = 2;
    goto LABEL_16;
  }

LABEL_5:
  v7 = [v1 length];
  v8 = [[NSData alloc] initWithBytes:&unk_100296B51 length:9];
  if (v7 >= [v8 length])
  {
    v12 = [[NSData alloc] initWithBytes:&unk_100296B51 length:9];
    v13 = [v1 subdataWithRange:{0, objc_msgSend(v12, "length")}];
    v14 = [[NSData alloc] initWithBytes:&unk_100296B51 length:9];
    v15 = [v13 isEqualToData:v14];

    if (v15)
    {
      v16 = 3;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v17 = [v1 length];
  v18 = [[NSData alloc] initWithBytes:&unk_100296B2C length:13];
  if (v17 >= [v18 length])
  {
    v23 = [[NSData alloc] initWithBytes:&unk_100296B2C length:13];
    v24 = [v1 subdataWithRange:{0, objc_msgSend(v23, "length")}];
    v25 = [[NSData alloc] initWithBytes:&unk_100296B2C length:13];
    v26 = [v24 isEqualToData:v25];

    v16 = v26 & 1;
  }

  else
  {

    v16 = 0;
  }

LABEL_16:

  return v16;
}

id sub_10001CAF8(id *a1)
{
  v2 = @"A000000704C0000000000002";
  objc_opt_self();
  v3 = [NFTrustDBApplet alloc];
  v4 = v3;
  if (v3)
  {
    [(NFTrustDBApplet *)v3 setInstanceAID:@"A000000704C0000000000002"];
    v5 = [NSMutableArray arrayWithCapacity:2];
    v6 = [KeyInSlot alloc];
    [v5 addObject:v6];

    v7 = [KeyInSlot alloc];
    [v5 addObject:v7];

    [(NFTrustDBApplet *)v4 setMap:v5];
  }

  v8 = v4;
  if (!a1[1])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("addApplet:");
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Could not add object to NFTrustDataBase, failed to connect to database", v28, ClassName, Name, 278);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(a1);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67109890;
      v70 = v31;
      v71 = 2082;
      v72 = object_getClassName(a1);
      v73 = 2082;
      v74 = sel_getName("addApplet:");
      v75 = 1024;
      v76 = 278;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not add object to NFTrustDataBase, failed to connect to database", buf, 0x22u);
    }

    v32 = sub_10013DE50();
    goto LABEL_36;
  }

  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(a1);
      v36 = class_isMetaClass(v35);
      v37 = object_getClassName(a1);
      v66 = sel_getName("addApplet:");
      v38 = 45;
      if (v36)
      {
        v38 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Can not add nil object to NFTrust DB", v38, v37, v66, 283);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(a1);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      *buf = 67109890;
      v70 = v41;
      v71 = 2082;
      v72 = object_getClassName(a1);
      v73 = 2082;
      v74 = sel_getName("addApplet:");
      v75 = 1024;
      v76 = 283;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can not add nil object to NFTrust DB", buf, 0x22u);
    }

    v32 = sub_10013E33C(@"Can not add nil object to NFTrust DB");
LABEL_36:
    v22 = v32;
    goto LABEL_44;
  }

  v9 = objc_opt_class();
  v68 = 0;
  v10 = sub_10001E524(a1, v9, &v68);
  v11 = v68;
  if (v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = object_getClass(a1);
      v15 = class_isMetaClass(v14);
      v63 = object_getClassName(a1);
      v64 = sel_getName("addApplet:");
      v16 = 45;
      if (v15)
      {
        v16 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBApplet in DataBase : %{public}@", v16, v63, v64, 292, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(a1);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(a1);
      v21 = sel_getName("addApplet:");
      *buf = 67110146;
      v70 = v19;
      v71 = 2082;
      v72 = v20;
      v73 = 2082;
      v74 = v21;
      v75 = 1024;
      v76 = 292;
      v77 = 2114;
      v78 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBApplet in DataBase : %{public}@", buf, 0x2Cu);
    }

    v22 = v11;
  }

  else
  {
    if (!v10)
    {
      v10 = objc_opt_new();
      v42 = a1[1];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      [v42 setValue:v10 forKey:v44];
    }

    v45 = [(NFTrustDBApplet *)v8 instanceAID];
    v46 = [v10 objectForKeyedSubscript:v45];

    if (v46)
    {
      v47 = [NSString alloc];
      v48 = [(NFTrustDBApplet *)v8 instanceAID];
      v49 = [v47 initWithFormat:@"Could not add NFTrustDBApplet with identifier %@, object already exists", v48];
      v22 = sub_10013DC5C(v49);
    }

    else
    {
      v48 = [(NFTrustDBApplet *)v8 instanceAID];
      [v10 setObject:v8 forKey:v48];
      v22 = 0;
    }
  }

LABEL_44:
  if (v22)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(a1);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(a1);
      v67 = sel_getName("addNFTrustApplet");
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i Could not add NFTrustDBAppelt to DB", v55, v54, v67, 62);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = object_getClass(a1);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(a1);
      v60 = sel_getName("addNFTrustApplet");
      *buf = 67109890;
      v70 = v58;
      v71 = 2082;
      v72 = v59;
      v73 = 2082;
      v74 = v60;
      v75 = 1024;
      v76 = 62;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not add NFTrustDBAppelt to DB", buf, 0x22u);
    }

    v61 = v22;
  }

  return v22;
}

void sub_10001D234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 || ([v3 moduleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(&off_100338F58, "containsObject:", v5), v5, v6))
    {
      v7 = +[NSDistributedNotificationCenter defaultCenter];
      [v7 postNotificationName:@"com.apple.stockholm.se.mfd" object:0 userInfo:0];

      notify_post("com.apple.stockholm.se.mfd");
    }

    v8 = [v4 identifier];
    if (!v8)
    {
      sub_10001F4E8(a1);

LABEL_34:
      goto LABEL_35;
    }

    v167 = 0;
    v9 = sub_10001E1AC(a1, v8, &v167);
    v10 = v167;
    v11 = v10;
    if (v9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("markApplicationForDelete:");
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Could not find PurpleTrust instance with AID %{public}@ in DB : %{public}@", v17, ClassName, Name, 92, v8, v9);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(a1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(a1);
        v22 = sel_getName("markApplicationForDelete:");
        *buf = 67110402;
        v170 = v20;
        v171 = 2082;
        v172 = v21;
        v173 = 2082;
        v174 = v22;
        v175 = 1024;
        v176 = 92;
        v177 = 2114;
        v178 = v8;
        v179 = 2114;
        v180 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find PurpleTrust instance with AID %{public}@ in DB : %{public}@", buf, 0x36u);
      }

      goto LABEL_17;
    }

    if (!v10)
    {
LABEL_17:

LABEL_33:
      goto LABEL_34;
    }

    v23 = objc_opt_class();
    v166 = 0;
    v24 = sub_10001E524(a1, v23, &v166);
    v25 = v166;
    v26 = [v24 allValues];

    v161 = v11;
    v160 = v26;
    if (v25)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v28 = v27;
        v29 = object_getClass(a1);
        v30 = class_isMetaClass(v29);
        v31 = object_getClassName(a1);
        v32 = v8;
        v33 = sel_getName("markApplicationForDelete:");
        v34 = [v11 instanceAID];
        v150 = v33;
        v8 = v32;
        v35 = 45;
        if (v30)
        {
          v35 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i Could not get PurpleTrust keys of instance '%{public}@' : %{public}@", v35, v31, v150, 104, v34, v25);

        v11 = v161;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(a1);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(a1);
        v40 = sel_getName("markApplicationForDelete:");
        v41 = [v11 instanceAID];
        *buf = 67110402;
        v170 = v38;
        v171 = 2082;
        v172 = v39;
        v173 = 2082;
        v174 = v40;
        v175 = 1024;
        v176 = 104;
        v177 = 2114;
        v178 = v41;
        v179 = 2114;
        v180 = v25;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get PurpleTrust keys of instance '%{public}@' : %{public}@", buf, 0x36u);

        v11 = v161;
      }

      goto LABEL_30;
    }

    if (v26)
    {
      v158 = v8;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v43 = v26;
      v44 = [v43 countByEnumeratingWithState:&v162 objects:v168 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v163;
        while (2)
        {
          for (i = 0; i != v45; i = i + 1)
          {
            if (*v163 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v162 + 1) + 8 * i);
            v49 = [v48 instanceAID];
            v50 = [v11 instanceAID];
            v51 = [v49 isEqualToString:v50];

            if (v51)
            {
              v52 = sub_10001E890(a1, v48);
              if (v52)
              {
                v25 = v52;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v62 = NFLogGetLogger();
                if (v62)
                {
                  v63 = v62;
                  v64 = object_getClass(a1);
                  if (class_isMetaClass(v64))
                  {
                    v65 = 43;
                  }

                  else
                  {
                    v65 = 45;
                  }

                  v66 = object_getClassName(a1);
                  v67 = sel_getName("markApplicationForDelete:");
                  if (v48)
                  {
                    v68 = v48[1];
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v63(3, "%c[%{public}s %{public}s]:%i Could not delete PurpleTrust Key '%{public}@' from DB : %{public}@", v65, v66, v67, 116, v68, v25);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v69 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  v70 = object_getClass(a1);
                  if (class_isMetaClass(v70))
                  {
                    v71 = 43;
                  }

                  else
                  {
                    v71 = 45;
                  }

                  v72 = object_getClassName(a1);
                  v73 = sel_getName("markApplicationForDelete:");
                  if (v48)
                  {
                    v74 = v48[1];
                  }

                  else
                  {
                    v74 = 0;
                  }

                  *buf = 67110402;
                  v170 = v71;
                  v171 = 2082;
                  v172 = v72;
                  v173 = 2082;
                  v174 = v73;
                  v175 = 1024;
                  v176 = 116;
                  v177 = 2114;
                  v178 = v74;
                  v179 = 2114;
                  v180 = v25;
                  v75 = v74;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete PurpleTrust Key '%{public}@' from DB : %{public}@", buf, 0x36u);
                }

                v8 = v158;
                v42 = v160;
                goto LABEL_66;
              }
            }

            v11 = v161;
          }

          v45 = [v43 countByEnumeratingWithState:&v162 objects:v168 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      v8 = v158;
    }

    v53 = v11;
    v54 = *(a1 + 8);
    if (!v54)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v76 = NFLogGetLogger();
      if (v76)
      {
        v77 = v76;
        v78 = object_getClass(a1);
        v79 = class_isMetaClass(v78);
        v80 = object_getClassName(a1);
        v151 = sel_getName("removeApplet:");
        v81 = 45;
        if (v79)
        {
          v81 = 43;
        }

        v146 = v80;
        v11 = v161;
        v77(3, "%c[%{public}s %{public}s]:%i Could not remove NFTrustDBApplet from NFTrustDataBase, failed to connect to database", v81, v146, v151, 318);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = object_getClass(a1);
        if (class_isMetaClass(v83))
        {
          v84 = 43;
        }

        else
        {
          v84 = 45;
        }

        v85 = object_getClassName(a1);
        v86 = sel_getName("removeApplet:");
        *buf = 67109890;
        v170 = v84;
        v171 = 2082;
        v172 = v85;
        v173 = 2082;
        v174 = v86;
        v175 = 1024;
        v176 = 318;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not remove NFTrustDBApplet from NFTrustDataBase, failed to connect to database", buf, 0x22u);
      }

      v25 = sub_10013DE50();
      goto LABEL_99;
    }

    v55 = v54;
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = [v55 valueForKey:v57];

    if (v58)
    {
      v59 = [v53 instanceAID];
      v60 = [v58 valueForKey:v59];

      if (!v60)
      {
        v159 = v8;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFLogGetLogger();
        if (v99)
        {
          v100 = v99;
          v101 = object_getClass(a1);
          v156 = class_isMetaClass(v101);
          v157 = object_getClassName(a1);
          v102 = sel_getName("removeApplet:");
          v103 = [v53 instanceAID];
          v104 = 45;
          if (v156)
          {
            v104 = 43;
          }

          v100(3, "%c[%{public}s %{public}s]:%i Could not remove NFTrustDBApplet with identifier %{public}@, object does not exists", v104, v157, v102, 336, v103);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v105 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          v106 = object_getClass(a1);
          if (class_isMetaClass(v106))
          {
            v107 = 43;
          }

          else
          {
            v107 = 45;
          }

          v108 = object_getClassName(a1);
          v109 = sel_getName("removeApplet:");
          v110 = [v53 instanceAID];
          *buf = 67110146;
          v170 = v107;
          v171 = 2082;
          v172 = v108;
          v173 = 2082;
          v174 = v109;
          v175 = 1024;
          v176 = 336;
          v177 = 2114;
          v178 = v110;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not remove NFTrustDBApplet with identifier %{public}@, object does not exists", buf, 0x2Cu);
        }

        v111 = [NSString alloc];
        v112 = [v53 instanceAID];
        v113 = [v111 initWithFormat:@"Could not remove NFTrustDBApplet with identifier %@, object does not exists", v112];
        v25 = sub_10013DC5C(v113);

        v8 = v159;
        v11 = v161;
        goto LABEL_98;
      }

      v61 = [v53 instanceAID];
      [v58 removeObjectForKey:v61];

      v25 = 0;
    }

    else
    {
      v87 = v8;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFLogGetLogger();
      if (v88)
      {
        v89 = v88;
        v90 = object_getClass(a1);
        v91 = class_isMetaClass(v90);
        v92 = object_getClassName(a1);
        v152 = sel_getName("removeApplet:");
        v93 = 45;
        if (v91)
        {
          v93 = 43;
        }

        v89(3, "%c[%{public}s %{public}s]:%i Trying to remove a NFTrustDBApplet that does not exists", v93, v92, v152, 331);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v94 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = object_getClass(a1);
        if (class_isMetaClass(v95))
        {
          v96 = 43;
        }

        else
        {
          v96 = 45;
        }

        v97 = object_getClassName(a1);
        v98 = sel_getName("removeApplet:");
        *buf = 67109890;
        v170 = v96;
        v171 = 2082;
        v172 = v97;
        v173 = 2082;
        v174 = v98;
        v175 = 1024;
        v176 = 331;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Trying to remove a NFTrustDBApplet that does not exists", buf, 0x22u);
      }

      v25 = sub_10013DC5C(@"Trying to remove a NFTrustDBApplet that does not exists");
      v8 = v87;
    }

    v11 = v161;
LABEL_98:

LABEL_99:
    if (!v25)
    {
      v124 = sub_10001CAF8(a1);

      if (v124)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v125 = NFLogGetLogger();
        v42 = v160;
        if (v125)
        {
          v126 = v125;
          v127 = object_getClass(a1);
          v128 = class_isMetaClass(v127);
          v129 = object_getClassName(a1);
          v154 = sel_getName("markApplicationForDelete:");
          v130 = 45;
          if (v128)
          {
            v130 = 43;
          }

          v148 = v129;
          v11 = v161;
          v126(3, "%c[%{public}s %{public}s]:%i Could not addNFTrustApplet after MFD", v130, v148, v154, 128);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v131 = object_getClass(a1);
          if (class_isMetaClass(v131))
          {
            v132 = 43;
          }

          else
          {
            v132 = 45;
          }

          v133 = object_getClassName(a1);
          v134 = sel_getName("markApplicationForDelete:");
          *buf = 67109890;
          v170 = v132;
          v171 = 2082;
          v172 = v133;
          v173 = 2082;
          v174 = v134;
          v175 = 1024;
          v176 = 128;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not addNFTrustApplet after MFD", buf, 0x22u);
        }
      }

      else
      {
        v135 = sub_10001EE48(a1);

        v42 = v160;
        if (!v135)
        {
          goto LABEL_32;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v136 = NFLogGetLogger();
        if (v136)
        {
          v137 = v136;
          v138 = object_getClass(a1);
          v139 = class_isMetaClass(v138);
          v140 = object_getClassName(a1);
          v155 = sel_getName("markApplicationForDelete:");
          v141 = 45;
          if (v139)
          {
            v141 = 43;
          }

          v137(3, "%c[%{public}s %{public}s]:%i Could not commit after MFD", v141, v140, v155, 133);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v142 = object_getClass(a1);
          if (class_isMetaClass(v142))
          {
            v143 = 43;
          }

          else
          {
            v143 = 45;
          }

          v144 = object_getClassName(a1);
          v145 = sel_getName("markApplicationForDelete:");
          *buf = 67109890;
          v170 = v143;
          v171 = 2082;
          v172 = v144;
          v173 = 2082;
          v174 = v145;
          v175 = 1024;
          v176 = 133;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not commit after MFD", buf, 0x22u);
        }

LABEL_66:
        v11 = v161;
      }

LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v114 = NFLogGetLogger();
    if (v114)
    {
      v115 = v114;
      v116 = object_getClass(a1);
      v117 = class_isMetaClass(v116);
      v118 = object_getClassName(a1);
      v153 = sel_getName("markApplicationForDelete:");
      v119 = 45;
      if (v117)
      {
        v119 = 43;
      }

      v147 = v118;
      v11 = v161;
      v115(3, "%c[%{public}s %{public}s]:%i Could not delete PurpleTrust instance with AID %{public}@ from DB : %{public}@", v119, v147, v153, 123, v8, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v120 = object_getClass(a1);
      if (class_isMetaClass(v120))
      {
        v121 = 43;
      }

      else
      {
        v121 = 45;
      }

      v122 = object_getClassName(a1);
      v123 = sel_getName("markApplicationForDelete:");
      *buf = 67110402;
      v170 = v121;
      v171 = 2082;
      v172 = v122;
      v173 = 2082;
      v174 = v123;
      v175 = 1024;
      v176 = 123;
      v177 = 2114;
      v178 = v8;
      v179 = 2114;
      v180 = v25;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete PurpleTrust instance with AID %{public}@ from DB : %{public}@", buf, 0x36u);
    }

LABEL_30:

    v42 = v160;
    goto LABEL_31;
  }

LABEL_35:
}

id *sub_10001E1AC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!a1[1])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getAppletWithIdentifier:object:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Could not getNFTrustDBAppletWithIdentifier %{public}@, failed to connect to database", v14, ClassName, Name, 352, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      *buf = 67110146;
      v33 = v17;
      v34 = 2082;
      v35 = object_getClassName(a1);
      v36 = 2082;
      v37 = sel_getName("getAppletWithIdentifier:object:");
      v38 = 1024;
      v39 = 352;
      v40 = 2114;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not getNFTrustDBAppletWithIdentifier %{public}@, failed to connect to database", buf, 0x2Cu);
    }

    v18 = sub_10013DE50();
    goto LABEL_27;
  }

  if (!a3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(a1);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(a1);
      v31 = sel_getName("getAppletWithIdentifier:object:");
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i NFTrustDBApplet can not be nil", v24, v23, v31, 357);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67109890;
      v33 = v27;
      v34 = 2082;
      v35 = object_getClassName(a1);
      v36 = 2082;
      v37 = sel_getName("getAppletWithIdentifier:object:");
      v38 = 1024;
      v39 = 357;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFTrustDBApplet can not be nil", buf, 0x22u);
    }

    v18 = sub_10013DC5C(&stru_10031EA18);
LABEL_27:
    a1 = v18;
    goto LABEL_28;
  }

  *a3 = 0;
  v6 = a1[1];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 valueForKey:v8];

  if (v9)
  {
    *a3 = [v9 valueForKey:v5];
  }

  a1 = 0;
LABEL_28:

  return a1;
}

id sub_10001E524(void *a1, objc_class *a2, void *a3)
{
  if (!a1)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getDictionaryOfObjectOfType:error:");
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Error can not be nil", v15, ClassName, Name, 379);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(a1);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v36 = v18;
      v37 = 2082;
      v38 = object_getClassName(a1);
      v39 = 2082;
      v40 = sel_getName("getDictionaryOfObjectOfType:error:");
      v41 = 1024;
      v42 = 379;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error can not be nil", buf, 0x22u);
    }

    goto LABEL_15;
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = v6;
    v8 = NSStringFromClass(a2);
    v9 = [v7 valueForKey:v8];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(a1);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(a1);
      v24 = sel_getName("getDictionaryOfObjectOfType:error:");
      v25 = NSStringFromClass(a2);
      v26 = 45;
      if (v22)
      {
        v26 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Could not getDictionaryOfObjectOfType %{public}@, failed to connect to database", v26, v23, v24, 384, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(a1);
      v31 = sel_getName("getDictionaryOfObjectOfType:error:");
      v32 = NSStringFromClass(a2);
      *buf = 67110146;
      v36 = v29;
      v37 = 2082;
      v38 = v30;
      v39 = 2082;
      v40 = v31;
      v41 = 1024;
      v42 = 384;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not getDictionaryOfObjectOfType %{public}@, failed to connect to database", buf, 0x2Cu);
    }

    sub_10013DE50();
    *a3 = v9 = 0;
  }

LABEL_26:

  return v9;
}

id sub_10001E890(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_54;
  }

  if (!a1[1])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("removeKey:");
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Could not remove object to NFTrustDataBase, failed to connect to database", v24, ClassName, Name, 412);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67109890;
      v64 = v27;
      v65 = 2082;
      v66 = object_getClassName(a1);
      v67 = 2082;
      v68 = sel_getName("removeKey:");
      v69 = 1024;
      v70 = 412;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not remove object to NFTrustDataBase, failed to connect to database", buf, 0x22u);
    }

    v28 = sub_10013DE50();
    goto LABEL_35;
  }

  if (!v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(a1);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(a1);
      v55 = sel_getName("removeKey:");
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(3, "%c[%{public}s %{public}s]:%i Can not remove nil NFTrustDBKey from DB", v34, v33, v55, 417);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = object_getClass(a1);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      *buf = 67109890;
      v64 = v37;
      v65 = 2082;
      v66 = object_getClassName(a1);
      v67 = 2082;
      v68 = sel_getName("removeKey:");
      v69 = 1024;
      v70 = 417;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can not remove nil NFTrustDBKey from DB", buf, 0x22u);
    }

    v28 = sub_10013E33C(@"Can not remove nil NFTrustDBKey from DB");
LABEL_35:
    v18 = v28;
    goto LABEL_54;
  }

  v5 = objc_opt_class();
  v61 = 0;
  v6 = sub_10001E524(a1, v5, &v61);
  v7 = v61;
  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v9 = v8;
      v10 = object_getClass(a1);
      v11 = class_isMetaClass(v10);
      v52 = object_getClassName(a1);
      v53 = sel_getName("removeKey:");
      v12 = 45;
      if (v11)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBKey in DataBase : %{public}@", v12, v52, v53, 426, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(a1);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(a1);
      v17 = sel_getName("removeKey:");
      *buf = 67110146;
      v64 = v15;
      v65 = 2082;
      v66 = v16;
      v67 = 2082;
      v68 = v17;
      v69 = 1024;
      v70 = 426;
      v71 = 2114;
      v72 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBKey in DataBase : %{public}@", buf, 0x2Cu);
    }

    v18 = v7;
  }

  else if (v6)
  {
    v56 = v6;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v38 = v6;
    v39 = [v38 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        v42 = 0;
        do
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v57 + 1) + 8 * v42);
          v44 = [v38 objectForKeyedSubscript:v43];
          v45 = v44;
          if (v44)
          {
            v46 = *(v44 + 8);
          }

          else
          {
            v46 = 0;
          }

          v47 = v4[1];
          v48 = v46;
          LODWORD(v47) = [v48 isEqualToString:v47];

          if (v47)
          {
            [v38 removeObjectForKey:v43];
            goto LABEL_51;
          }

          v42 = v42 + 1;
        }

        while (v40 != v42);
        v49 = [v38 countByEnumeratingWithState:&v57 objects:v62 count:16];
        v40 = v49;
      }

      while (v49);
    }

LABEL_51:

    v18 = 0;
    v7 = 0;
    v6 = v56;
  }

  else
  {
    v50 = [[NSString alloc] initWithFormat:@"Could not remove NFTrustDBKey with identifier %@, object does not exists", v4[1]];
    v18 = sub_10013DC5C(v50);
  }

LABEL_54:

  return v18;
}

id sub_10001EE48(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v43 = 0;
      v3 = v2;
      v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v43];
      v5 = v43;

      if (v5)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v7 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("commit");
          v10 = 45;
          if (isMetaClass)
          {
            v10 = 43;
          }

          v7(3, "%c[%{public}s %{public}s]:%i Error while archiving NFTrustDataBase : %{public}@", v10, ClassName, Name, 245, v5);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = object_getClass(a1);
          if (class_isMetaClass(v12))
          {
            v13 = 43;
          }

          else
          {
            v13 = 45;
          }

          v14 = object_getClassName(a1);
          v15 = sel_getName("commit");
          *buf = 67110146;
          v45 = v13;
          v46 = 2082;
          v47 = v14;
          v48 = 2082;
          v49 = v15;
          v50 = 1024;
          v51 = 245;
          v52 = 2114;
          v53 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while archiving NFTrustDataBase : %{public}@", buf, 0x2Cu);
        }

        v16 = v5;
      }

      else
      {
        if (v4)
        {
          [*(a1 + 16) setObject:v4 forKey:@"PurpleTrustData"];
          v17 = 0;
          goto LABEL_27;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          v30 = object_getClass(a1);
          v31 = class_isMetaClass(v30);
          v32 = object_getClassName(a1);
          v42 = sel_getName("commit");
          v33 = 45;
          if (v31)
          {
            v33 = 43;
          }

          v29(3, "%c[%{public}s %{public}s]:%i Archiving NFTrustDataBase resulted in nil data, do not commit", v33, v32, v42, 250);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = object_getClass(a1);
          if (class_isMetaClass(v35))
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          v37 = object_getClassName(a1);
          v38 = sel_getName("commit");
          *buf = 67109890;
          v45 = v36;
          v46 = 2082;
          v47 = v37;
          v48 = 2082;
          v49 = v38;
          v50 = 1024;
          v51 = 250;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Archiving NFTrustDataBase resulted in nil data, do not commit", buf, 0x22u);
        }

        v16 = sub_10013DE50();
      }

      v17 = v16;
LABEL_27:

      goto LABEL_28;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(a1);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(a1);
      v41 = sel_getName("commit");
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Could not commit NFTrustDataBase, database seems to be empty", v23, v22, v41, 238);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(a1);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      *buf = 67109890;
      v45 = v26;
      v46 = 2082;
      v47 = object_getClassName(a1);
      v48 = 2082;
      v49 = sel_getName("commit");
      v50 = 1024;
      v51 = 238;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not commit NFTrustDataBase, database seems to be empty", buf, 0x22u);
    }

    v17 = sub_10013DE50();
  }

  else
  {
    v17 = 0;
  }

LABEL_28:

  return v17;
}

id *sub_10001F2CC(id *a1)
{
  if (a1)
  {
    a1 = sub_10001F4E8(a1);
    v1 = vars8;
  }

  return a1;
}

id sub_10001F2FC()
{
  objc_opt_self();
  if (qword_10035D8F8 != -1)
  {
    dispatch_once(&qword_10035D8F8, &stru_100315840);
  }

  v0 = qword_10035D900;

  return v0;
}

void sub_10001F354(id a1)
{
  v17 = [NSSet alloc];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v17 initWithObjects:{v16, v15, v14, v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = qword_10035D900;
  qword_10035D900 = v11;

  _objc_release_x1(v11, v12);
}

id *sub_10001F4E8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = v1[1];
    v1[1] = v2;

    v4 = sub_10001CAF8(v1);
    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("create");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Could not add NFTrustDBAppelt to DB : %{public}@", v9, ClassName, Name, 266, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = object_getClass(v1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        *buf = 67110146;
        v18 = v12;
        v19 = 2082;
        v20 = object_getClassName(v1);
        v21 = 2082;
        v22 = sel_getName("create");
        v23 = 1024;
        v24 = 266;
        v25 = 2114;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not add NFTrustDBAppelt to DB : %{public}@", buf, 0x2Cu);
      }

      v13 = v4;
    }

    else
    {
      v13 = sub_10001EE48(v1);
    }

    v1 = v13;
  }

  return v1;
}

id sub_10001F6E4()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F788;
  block[3] = &unk_100315860;
  block[4] = objc_opt_self();
  if (qword_10035D908 != -1)
  {
    dispatch_once(&qword_10035D908, block);
  }

  v0 = qword_10035D910;

  return v0;
}

void sub_10001F788(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = [NFTrustDataBase alloc];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  userDefaults = v3->_userDefaults;
  v3->_userDefaults = v4;

  v6 = [(NSUserDefaults *)v3->_userDefaults dataForKey:@"PurpleTrustData"];
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v24 = sub_10001F4E8(&v3->super.isa);
LABEL_15:

LABEL_16:
    v25 = v3;
    goto LABEL_31;
  }

  v8 = sub_10001F2FC();
  v42 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:&v42];
  v10 = v42;

  if (!v10)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v29 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("withUserDetaultsDataBase");
        v33 = 45;
        if (isMetaClass)
        {
          v33 = 43;
        }

        v29(3, "%c[%{public}s %{public}s]:%i Unarchive database failed", v33, ClassName, Name, 199);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v34 = object_getClass(v2);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(v2);
      v37 = sel_getName("withUserDetaultsDataBase");
      *buf = 67109890;
      v44 = v35;
      v45 = 2082;
      v46 = v36;
      v47 = 2082;
      v48 = v37;
      v49 = 1024;
      v50 = 199;
      v21 = "%c[%{public}s %{public}s]:%i Unarchive database failed";
      v22 = v16;
      v23 = 34;
      goto LABEL_29;
    }

    v26 = [[NSMutableDictionary alloc] initWithDictionary:v9];
    dictionary = v3->_dictionary;
    v3->_dictionary = v26;

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(v2);
    v14 = class_isMetaClass(v13);
    v39 = object_getClassName(v2);
    v40 = sel_getName("withUserDetaultsDataBase");
    v15 = 45;
    if (v14)
    {
      v15 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i Error while unarchiving NFTrustDatBase : %{public}@", v15, v39, v40, 194, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_30;
  }

  v17 = object_getClass(v2);
  if (class_isMetaClass(v17))
  {
    v18 = 43;
  }

  else
  {
    v18 = 45;
  }

  v19 = object_getClassName(v2);
  v20 = sel_getName("withUserDetaultsDataBase");
  *buf = 67110146;
  v44 = v18;
  v45 = 2082;
  v46 = v19;
  v47 = 2082;
  v48 = v20;
  v49 = 1024;
  v50 = 194;
  v51 = 2114;
  v52 = v10;
  v21 = "%c[%{public}s %{public}s]:%i Error while unarchiving NFTrustDatBase : %{public}@";
  v22 = v16;
  v23 = 44;
LABEL_29:
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_30:

  v25 = 0;
LABEL_31:

  v38 = qword_10035D910;
  qword_10035D910 = v25;
}

id sub_10001FB8C(void *a1)
{
  if (a1)
  {
    a1 = [a1 instanceAID];
    v1 = vars8;
  }

  return a1;
}

void sub_10001FBBC(void *a1, objc_class *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9 = 0;
    v6 = sub_10001E524(a1, a2, &v9);
    v7 = v9;
    if (v7)
    {
      v5[2](v5, 0, v7);
    }

    else
    {
      v8 = [v6 allValues];
      (v5)[2](v5, v8, 0);
    }
  }
}

id sub_10001FC80(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_37;
  }

  if (!a1[1])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v22 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("addKey:");
      v26 = 45;
      if (isMetaClass)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Could not add object to NFTrustDataBase, failed to connect to database", v26, ClassName, Name, 451);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v65 = v29;
      v66 = 2082;
      v67 = object_getClassName(a1);
      v68 = 2082;
      v69 = sel_getName("addKey:");
      v70 = 1024;
      v71 = 451;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not add object to NFTrustDataBase, failed to connect to database", buf, 0x22u);
    }

    v30 = sub_10013DE50();
    goto LABEL_36;
  }

  if (!v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(a1);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(a1);
      v60 = sel_getName("addKey:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Can not add nil NFTrustDBKey to DB", v36, v35, v60, 456);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(a1);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      *buf = 67109890;
      v65 = v39;
      v66 = 2082;
      v67 = object_getClassName(a1);
      v68 = 2082;
      v69 = sel_getName("addKey:");
      v70 = 1024;
      v71 = 456;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can not add nil NFTrustDBKey to DB", buf, 0x22u);
    }

    v30 = sub_10013E33C(@"Can not add nil NFTrustDBKey to DB");
LABEL_36:
    v20 = v30;
    goto LABEL_37;
  }

  v5 = v3[1];
  v63 = 0;
  v6 = v5;
  v7 = sub_100020308(a1, v6, &v63);
  v8 = v63;

  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v10 = v9;
      v11 = object_getClass(a1);
      v12 = class_isMetaClass(v11);
      v13 = object_getClassName(a1);
      v58 = sel_getName("addKey:");
      v14 = 45;
      if (v12)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Can not add NFTrustDBKey to DB, could not check if key already exist", v14, v13, v58, 465);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(a1);
      v19 = sel_getName("addKey:");
      *buf = 67109890;
      v65 = v17;
      v66 = 2082;
      v67 = v18;
      v68 = 2082;
      v69 = v19;
      v70 = 1024;
      v71 = 465;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can not add NFTrustDBKey to DB, could not check if key already exist", buf, 0x22u);
    }

    v20 = v7;
LABEL_15:

    goto LABEL_37;
  }

  if (!v8)
  {
    v42 = objc_opt_class();
    v62 = 0;
    v8 = sub_10001E524(a1, v42, &v62);
    v20 = v62;
    if (v20)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(a1);
        v46 = class_isMetaClass(v45);
        v57 = object_getClassName(a1);
        v61 = sel_getName("addKey:");
        v47 = 45;
        if (v46)
        {
          v47 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBKey in DataBase : %{public}@", v47, v57, v61, 476, v20);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(a1);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(a1);
        v52 = sel_getName("addKey:");
        *buf = 67110146;
        v65 = v50;
        v66 = 2082;
        v67 = v51;
        v68 = 2082;
        v69 = v52;
        v70 = 1024;
        v71 = 476;
        v72 = 2114;
        v73 = v20;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while looking for objects of type NFTrustDBKey in DataBase : %{public}@", buf, 0x2Cu);
      }

      v53 = v20;
    }

    else
    {
      if (!v8)
      {
        v8 = objc_opt_new();
        v54 = a1[1];
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        [v54 setValue:v8 forKey:v56];
      }

      [v8 setObject:v4 forKey:v4[1]];
    }

    goto LABEL_15;
  }

  v41 = [[NSString alloc] initWithFormat:@"Could not add NFTrustDBKey with identifier %@, object already exists", v4[1]];
  v20 = sub_10013DC5C(v41);

LABEL_37:

  return v20;
}