void start()
{
  v0 = dispatch_queue_create("restoreservice_queue", 0);
  v1 = qword_10002E5C8;
  qword_10002E5C8 = v0;

  v2 = qword_10002E5C8;
  if (v2)
  {

    v3 = xpc_remote_connection_create_remote_service_listener();
    if (v3)
    {

      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      dispatch_main();
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000103C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v3 = sub_100001160();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100012D74();
    }

    v4 = xpc_copy_clean_description();
    if (v4)
    {
      v5 = v4;
      v6 = sub_100001160();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100012DB0();
      }

      free(v5);
    }
  }

  else
  {
    v7 = v2;
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
  }
}

id sub_100001160()
{
  if (qword_10002E5D0 != -1)
  {
    sub_100012E24();
  }

  v1 = qword_10002E5D8;

  return v1;
}

void sub_1000011A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_error)
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = objc_autoreleasePoolPush();
    if ((xpc_dictionary_expects_reply() & 1) == 0)
    {
      v14 = sub_100001160();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100012E38();
      }

      xpc_connection_cancel(v4);
      goto LABEL_68;
    }

    string = xpc_dictionary_get_string(v5, "command");
    v8 = sub_100001160();
    v9 = v8;
    if (!string)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000130E8();
      }

LABEL_26:

      v15 = sub_100001D58(v5, "error");
LABEL_33:
      reply = v15;
LABEL_66:
      v37 = reply;
      if (!v37)
      {
        sub_10001304C();
      }

      v38 = v37;

      xpc_dictionary_send_reply();
LABEL_68:
      objc_autoreleasePoolPop(v6);

      goto LABEL_69;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136446210;
      *&cf[4] = string;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got command %{public}s", cf, 0xCu);
    }

    if (!strcmp(string, "recovery"))
    {
      v16 = v5;
      v17 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
      if (v17)
      {
        v18 = v17;
        v19 = CFDataCreate(0, "false", 5);
        if (!v19)
        {
          sub_10001304C();
        }

        v20 = v19;
        v21 = IORegistryEntrySetCFProperty(v18, @"auto-boot-once", v19);
        v22 = sub_100001160();
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100012FD8();
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "auto-boot successfully disabled (via auto-boot-once)", cf, 2u);
        }

        CFRelease(v20);
        IOObjectRelease(v18);
        if (!v21)
        {
          v34 = sub_100001844(v16);
LABEL_50:
          reply = v34;
          goto LABEL_65;
        }

LABEL_49:
        v34 = sub_100001D58(v16, "error");
        goto LABEL_50;
      }

      v32 = sub_100001160();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100013068();
      }
    }

    else
    {
      if (!strcmp(string, "reboot"))
      {
        v15 = sub_100001844(v5);
        goto LABEL_33;
      }

      if (strcmp(string, "getnonces"))
      {
        if (strcmp(string, "getpreflightinfo"))
        {
          if (!strcmp(string, "getapparameters"))
          {
            v15 = sub_100001908(v5);
            goto LABEL_33;
          }

          if (!strcmp(string, "delayrecoveryimage"))
          {
            v15 = sub_100001A2C(v5);
            goto LABEL_33;
          }

          if (!strcmp(string, "restorelang"))
          {
            v39 = xpc_dictionary_get_string(v5, "argument");
            v15 = sub_100001BC4(v5, v39);
            goto LABEL_33;
          }

          v9 = sub_100001160();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100012E74();
          }

          goto LABEL_26;
        }

        v16 = v5;
        *cf = 0;
        updated = ramrod_update_copy_deviceinfo(0, cf);
        if (updated)
        {
          reply = xpc_dictionary_create_reply(v16);
          v33 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "preflightinfo", v33);

          xpc_dictionary_set_string(reply, "result", "preflightinfo");
        }

        else
        {
          if (*cf)
          {
            v36 = sub_100001160();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_100012EE8(cf);
            }

            CFRelease(*cf);
          }

          reply = sub_100001D58(v16, "error");
        }

        if (*cf)
        {
          CFRelease(*cf);
        }

        if (updated)
        {
          goto LABEL_63;
        }

LABEL_65:

        goto LABEL_66;
      }

      v16 = v5;
      v25 = MGCopyAnswer();
      if (v25)
      {
        updated = v25;
        v27 = MGCopyAnswer();
        if (v27)
        {
          v28 = v27;
          reply = xpc_dictionary_create_reply(v16);
          v29 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "apNonce", v29);

          v30 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "sepNonce", v30);

          xpc_dictionary_set_string(reply, "result", "nonces");
          CFRelease(updated);
          v31 = v28;
LABEL_64:
          CFRelease(v31);
          goto LABEL_65;
        }

        v35 = sub_100001160();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100012F60();
        }

        reply = sub_100001D58(v16, "error");
LABEL_63:
        v31 = updated;
        goto LABEL_64;
      }

      v32 = sub_100001160();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100012F9C();
      }
    }

    goto LABEL_49;
  }

  v10 = sub_100001160();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100013124();
  }

  v11 = xpc_copy_clean_description();
  if (v11)
  {
    v12 = v11;
    v13 = sub_100001160();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100013160();
    }

    free(v12);
  }

LABEL_69:
}

void sub_100001800(id a1)
{
  qword_10002E5D8 = os_log_create("com.apple.RestoreRemoteServices.restoreservice", "restoreservice");

  _objc_release_x1();
}

id sub_100001844(void *a1)
{
  v1 = a1;
  v2 = dispatch_time(0, 3000000000);
  dispatch_after(v2, qword_10002E5C8, &stru_100024948);
  v3 = sub_100001160();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling reboot3 imminently", v6, 2u);
  }

  v4 = sub_100001D58(v1, "success");

  return v4;
}

id sub_100001908(void *a1)
{
  v1 = a1;
  cf = 0;
  updated = ramrod_update_copy_ap_parameters_generating_nonces(0);
  if (updated)
  {
    reply = xpc_dictionary_create_reply(v1);
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "apparameters", v4);

    xpc_dictionary_set_string(reply, "result", "apparameters");
  }

  else
  {
    reply = sub_100001D58(v1, "error");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (updated)
  {
    CFRelease(updated);
  }

  return reply;
}

id sub_100001A2C(void *a1)
{
  v1 = a1;
  if (MGGetProductType() != 376943508)
  {
LABEL_11:
    v10 = "error";
    goto LABEL_12;
  }

  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v2)
  {
    v9 = sub_100001160();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100013068();
    }

    goto LABEL_11;
  }

  v3 = v2;
  v4 = CFDataCreate(0, "true", 4);
  if (!v4)
  {
    sub_10001304C();
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperty(v3, @"delay-recovery-image", v4);
  v7 = sub_100001160();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100012FD8();
    }

    CFRelease(v5);
    IOObjectRelease(v3);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "delay-recovery-image successfully enabled", v13, 2u);
  }

  CFRelease(v5);
  IOObjectRelease(v3);
  v10 = "success";
LABEL_12:
  v11 = sub_100001D58(v1, v10);

  return v11;
}

id sub_100001BC4(void *a1, const char *a2)
{
  v3 = a1;
  if (MGGetProductType() != 376943508)
  {
LABEL_15:
    v12 = "error";
    goto LABEL_16;
  }

  if (!a2)
  {
    v10 = sub_100001160();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000131D4();
    }

    goto LABEL_15;
  }

  v4 = strlen(a2);
  v5 = CFDataCreate(0, a2, v4);
  if (!v5)
  {
    sub_10001304C();
  }

  v6 = v5;
  v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v7)
  {
    v11 = sub_100001160();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100013068();
    }

    CFRelease(v6);
    goto LABEL_15;
  }

  v8 = v7;
  if (IORegistryEntrySetCFProperty(v7, @"restore-lang", v6))
  {
    v9 = sub_100001160();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100012FD8();
    }

    CFRelease(v6);
    IOObjectRelease(v8);
    goto LABEL_15;
  }

  CFRelease(v6);
  IOObjectRelease(v8);
  v12 = "success";
LABEL_16:
  v13 = sub_100001D58(v3, v12);

  return v13;
}

void sub_100001D58(void *a1, const char *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_string(reply, "result", a2);

    v6 = v5;
  }

  else
  {
    v7 = sub_100001160();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100013210();
    }

    __break(1u);
  }
}

void sub_100001DE4(id a1)
{
  v1 = sub_100001160();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Calling reboot3 now", v3, 2u);
  }

  if (reboot3())
  {
    v2 = sub_100001160();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100013290(v2);
    }
  }
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1)
{
  if (a1)
  {
    v1 = sub_100002360(a1, 0);
    if (v1)
    {
      v2 = v1;
      v3 = malloc(0x8000uLL);
      if (v3)
      {
        if (read(v2, v3, 0x8000uLL))
        {
          Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal();
        }

        AMSupportLogInternal();
      }

      else
      {
        sub_1000134C8();
      }

      if (v2 >= 1)
      {
        close(v2);
      }
    }

    else
    {
      AMSupportLogInternal();
    }
  }

  else
  {
    sub_1000134DC();
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_100002360(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal();
    AMSupportLogInternal();
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    sub_10001351C();
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    sub_1000134F0();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t sub_100002B48(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_10001361C(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_100002CD0(char *a1, const __CFString *a2)
{
  v4 = sub_1000035EC(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &unk_100017B68, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL sub_100002E20(const __CFString *a1)
{
  v2 = sub_1000035EC("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

uint64_t sub_100003434(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

CFTypeRef sub_1000035EC(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

void sub_100005190(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

uint64_t sub_1000051AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return __os_log_send_and_compose_impl(a1, v6, v5, 80, a5, v7, 16);
}

void sub_1000051D0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t sub_100005338(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100013950(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_1000057D0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_100013A64(&v2, v3);
    }
  }

  return result;
}

double sub_10000588C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL sub_1000058A4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (off_10002E5E0)
  {
    v12 = [v10 UTF8String];
    off_10002E5E0("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(@"%s: %@", a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

BOOL sub_100005BBC(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

uint64_t sub_1000091E0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100013B88(&v2, v3);
    }
  }

  return result;
}

void sub_100009974(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", v3, v4, v5, v6, v7, v8, v9, *(step_desc + 8));
  v10 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v10, kCheckpointAsyncStepContextKey, [*(a1 + 32) checkpoint_closure_context], 0);
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      v47 = 0;
      v46 = 0;
      if (v11)
      {
        v13 = [*(a1 + 32) checkpoint_closure_context];
        v12 = checkpoint_closure_context_handle_simulator_actions(v13, 1, &v47, &v46, v14, v15, v16, v17) != 0;
      }

      v18 = *(a1 + 32);
      objc_sync_enter(v18);
      v12 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v18);
      if (v12)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        v19 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v47 = [*(a1 + 32) result];
        v46 = [*(a1 + 32) error];
      }

      v20 = [*(a1 + 32) checkpoint_closure_context];
      if (checkpoint_closure_context_handle_simulator_actions(v20, 0, &v47, &v46, v21, v22, v23, v24))
      {
        v25 = [*(a1 + 32) checkpoint_closure_context];
        v33 = checkpoint_closure_context_handle_simulator_match_name(v25, v26, v27, v28, v29, v30, v31, v32) != 0;
      }

      else
      {
        v33 = 0;
      }

      v34 = *(a1 + 32);
      objc_sync_enter(v34);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v47];
        [*(a1 + 32) setError:v46];
      }

      if (!v47)
      {
        goto LABEL_14;
      }

      v35 = [*(a1 + 32) isCanceled];
      if (((v35 | v33) & 1) == 0)
      {
        break;
      }

      LOBYTE(v33) = v35 ^ 1;
LABEL_14:
      objc_sync_exit(v34);
      v11 = 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v34);
    v11 = 1;
  }

  while (should_retry);
LABEL_17:
  v37 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v37, kCheckpointAsyncStepContextKey, 0, 0);
  v38 = *(step_desc + 8);
  [*(a1 + 32) result];
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", v39, v40, v41, v42, v43, v44, v45, v38);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

void sub_100009BEC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void sub_100009C3C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", v9, v10, v11, v12, v13, v14, v15, CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n", v5, v6, v7, v8, v9, v10, v11, a1);
    return 0;
  }

  v12 = v4;
  v13 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v13)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n", v14, v15, v16, v17, v18, v19, v20, v23);
    return 0;
  }

  v21 = v13;
  CFDictionarySetValue(v12, @"IOResourceMatch", v13);
  CFRelease(v21);

  return wait_for_io_service_matching_dict(v12, a2);
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

CFTypeRef ramrod_copy_NVRAM_variable_from_devicetree(CFStringRef theString)
{
  Copy = CFStringCreateCopy(0, theString);
  v2 = atomic_load(dword_10002E5E8);
  if (!v2)
  {
    v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (v2)
    {
      v5 = 0;
      atomic_compare_exchange_strong(dword_10002E5E8, &v5, v2);
      if (v5)
      {
        IOObjectRelease(v2);
        v2 = v5;
      }
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, Copy, 0, 0);
  CFRelease(Copy);
  return CFProperty;
}

uint64_t get_BOOLean_option(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (!a1)
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return v3;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFBooleanGetTypeID())
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *buffer = 0u;
      v19 = 0u;
      CFStringGetCString(a2, buffer, 255, 0x8000100u);
      ramrod_log_msg("%s: option '%s' has non-BOOLean value, using default\n", v10, v11, v12, v13, v14, v15, v16, "get_BOOLean_option");
    }

    return v3;
  }

  return CFBooleanGetValue(v6);
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t sub_10000A528(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &qword_10002E610;
  if (v2)
  {
    v3 = &qword_10002E608;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&stru_10002DFF0);
  if (a1 && xmmword_10002E608 != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (*(&xmmword_10002E608 + 1))
    {
      CFSetApplyFunction(*(&xmmword_10002E608 + 1), sub_10000A7C8, &context);
    }

    qword_10002E618 += a2;
    if (qword_10002E618)
    {
      LOBYTE(theArray[1]) = 1;
      qword_10002E618 = 0;
    }

    if (xmmword_10002E608)
    {
      CFSetApplyFunction(xmmword_10002E608, sub_10000A7C8, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            sub_10000A528(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&stru_10002DFF0);
  return 0;
}

void sub_10000A7C8(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (!v1)
  {
    ramrod_log_msg("(Failed to format log message)\n", v2, v3, v4, v5, v6, v7, v8, v30);
    return;
  }

  v9 = v1;
  CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
  if (CStringPtr)
  {
    v30 = CStringPtr;
    v18 = "%s";
  }

  else
  {
    Length = CFStringGetLength(v9);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v21 = malloc(MaximumSizeForEncoding + 1);
    if (v21)
    {
      v22 = v21;
      if (CFStringGetCString(v9, v21, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        ramrod_log_msg("%s", v23, v24, v25, v26, v27, v28, v29, v22);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n", v23, v24, v25, v26, v27, v28, v29, v30);
      }

      free(v22);
      goto LABEL_12;
    }

    v18 = "(Failed to alloc and convert log message)\n";
  }

  ramrod_log_msg(v18, v11, v12, v13, v14, v15, v16, v17, v30);
LABEL_12:
  CFRelease(v9);
}

void sub_10000AA4C(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&stru_10002DFB0);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (off_10002E620)
      {
        off_10002E620(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((byte_10002E030 & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = qword_10002E600;
    if (!qword_10002E600)
    {
      v5 = malloc(0x100000uLL);
      qword_10002E600 = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&stru_10002DFB0);
        goto LABEL_24;
      }

      qword_10002E5F0 = v5;
      qword_10002E5F8 = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = qword_10002E5F8;
      v9 = qword_10002E5F0;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        qword_10002E5F8 = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          qword_10002E5F0 = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

CFStringRef sub_10000ABDC(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef sub_10000AC54(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  v5 = *a2;
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef sub_10000ACD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_10000AD18(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v16 = 0;
    asprintf(&v16, "{");
    v8 = v16;
    if (v16)
    {
      v9 = 0;
      v15 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = *(&v2->isa + v9);
        if (v12)
        {
          v8 = sub_10000DBDC(v8, off_1000249C8[v9], v12, &v15);
          v16 = v8;
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      v16 = sub_10000DCCC(v8, "}", v12, v3, v4, v5, v6, v7, v14);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v16);
      if (v16)
      {
        free(v16);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000ADE8(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v15 = 0;
    asprintf(&v15, "{");
    v8 = v15;
    if (v15)
    {
      v14 = 0;
      p_info = &v2->info;
      v10 = 8;
      do
      {
        v11 = *p_info;
        if (*p_info)
        {
          v8 = sub_10000DD6C(v8, *(p_info - 2), v11, &v14);
          v15 = v8;
        }

        p_info += 2;
        --v10;
      }

      while (v10);
      v15 = sub_10000DCCC(v8, "}", v11, v3, v4, v5, v6, v7, v13);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v15);
      if (v15)
      {
        free(v15);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

int *sub_10000AEA4(uint64_t a1, int *a2)
{
  v2 = a2;
  if (a2)
  {
    v14 = 0;
    asprintf(&v14, "{");
    if (v14)
    {
      v13 = 0;
      v9 = 8;
      do
      {
        if (*v2)
        {
          v12 = 0;
          asprintf(&v12, "%d", v2[1]);
          v3 = v12;
          if (v12)
          {
            v14 = sub_10000DD6C(v14, *v2, v12, &v13);
            if (v12)
            {
              free(v12);
            }
          }
        }

        v2 += 2;
        --v9;
      }

      while (v9);
      v14 = sub_10000DCCC(v14, "}", v3, v4, v5, v6, v7, v8, v11);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v14);
      if (v14)
      {
        free(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000AFA0(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v19 = 0;
    asprintf(&v19, "{");
    if (v19)
    {
      v9 = 0;
      v18 = 0;
      p_info = &v2->info;
      do
      {
        v11 = v2 + 18 * v9;
        if (*v11)
        {
          v22 = 0;
          asprintf(&v22, "{");
          if (v22)
          {
            v12 = 0;
            v21 = 0;
            do
            {
              v13 = p_info[v12];
              if (v13)
              {
                v20 = 0;
                asprintf(&v20, "%s", v13);
                v3 = v20;
                if (v20)
                {
                  v22 = sub_10000DDE4(v22, v12, v20, &v21);
                  if (v20)
                  {
                    free(v20);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v14 = sub_10000DCCC(v22, "}", v3, v4, v5, v6, v7, v8, v17);
            if (v14)
            {
              v15 = v14;
              v19 = sub_10000DD6C(v19, *v11, v14, &v18);
              free(v15);
            }
          }
        }

        ++v9;
        p_info += 9;
      }

      while (v9 != 8);
      v19 = sub_10000DCCC(v19, "}", v3, v4, v5, v6, v7, v8, v17);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v19);
      if (v19)
      {
        free(v19);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000B138(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v18 = 0;
    asprintf(&v18, "{");
    if (v18)
    {
      v9 = 0;
      v17 = 0;
      v10 = v2;
      do
      {
        v11 = v2 + 11 * v9;
        if (*v11)
        {
          v21 = 0;
          asprintf(&v21, "{");
          if (v21)
          {
            v12 = 0;
            v20 = 0;
            do
            {
              if (*(&v10[1].isa + v12 + 4))
              {
                v19 = 0;
                asprintf(&v19, "%d", *(&v10->isa + v12 + 1));
                v3 = v19;
                if (v19)
                {
                  v21 = sub_10000DDE4(v21, v12, v19, &v20);
                  if (v19)
                  {
                    free(v19);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v13 = sub_10000DCCC(v21, "}", v3, v4, v5, v6, v7, v8, v16);
            if (v13)
            {
              v14 = v13;
              v18 = sub_10000DD6C(v18, *v11, v13, &v17);
              free(v14);
            }
          }
        }

        ++v9;
        v10 = (v10 + 44);
      }

      while (v9 != 8);
      v18 = sub_10000DCCC(v18, "}", v3, v4, v5, v6, v7, v8, v16);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v18);
      if (v18)
      {
        free(v18);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_10000B2DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = *(a1 + 688);
  if (!v10)
  {
    goto LABEL_155;
  }

  if (v10 == 1)
  {
    v11 = 1;
    goto LABEL_20;
  }

  v11 = 0;
  if (a2)
  {
    if (v10 == 2)
    {
LABEL_155:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2296))
        {
          if (!*(a1 + 2297))
          {
LABEL_24:
            v17 = *(a1 + 688);
            if (*(a1 + 693))
            {
LABEL_148:
              v11 = 1;
              *(a1 + 688) = 1;
              if (!v8)
              {
                if (v17)
                {
                  sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v18 = *a1 == 1 && v17 == 2;
            v19 = 696;
            if (v18)
            {
              v19 = 1088;
            }

            v20 = (a1 + v19);
            if (*(a1 + v19 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", v12, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_handle_first_available");
            }

            else
            {
              sub_10000C6C4(a1, v20, a3, a4, a5, a6, a7, a8);
            }

            if (*a1 == 1)
            {
              v28 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v28 == 2)
                {
                  v38 = &unk_100017E24;
                }

                else
                {
                  v38 = &unk_100017F6C;
                }
              }

              else
              {
                if (v28 == 2)
                {
                  v30 = sub_10000E274(a1, v20, dword_100017B94, v23, v24, v25, v26, v27);
                  sub_10000E50C(a1, v20);
                  goto LABEL_53;
                }

                v38 = &unk_100017D14;
              }

              v30 = sub_10000E274(a1, v20, v38, v23, v24, v25, v26, v27);
LABEL_53:
              if (!v20[6])
              {
                goto LABEL_111;
              }

              v42 = sub_10000C810(a1, v20, v32, v33, v34, v35, v36, v37);
              if (v42 < 0x22)
              {
                v50 = &dword_100018514[3 * v42];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v43, v44, v45, v46, v47, v48, v49, "checkpoint_get_outcome_attributes");
                v50 = dword_100018514;
              }

              v51 = v20[6];
              bzero(v82, 0x400uLL);
              if (*v50 == 2)
              {
                v52 = *(v50 + 8);
                if (*(v50 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v50 + 7))
                {
                  v30 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v50 + 5))
                {
                  if (!*(v50 + 4) || !*(v50 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v52)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!v20[8])
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v67 = v20[7];
                  *(a1 + 101) = 1;
                  if (!v67 || CFStringCompare(v67, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v50 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v30 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    sub_10000C88C(a1, v31, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v52)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (v20[8])
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v50 + 5))
                {
                  goto LABEL_111;
                }

                if (!v20[8])
                {
                  sub_10000CAC0(v51, v82);
                  sub_10000C88C(a1, v69, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v53 = v20[7];
                if (!v53 || CFStringCompare(v53, @"true", 0))
                {
LABEL_99:
                  sub_10000CAC0(v51, v82);
                  sub_10000C88C(a1, v68, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v17 == 2)
                    {
                      v71 = 0;
                      v72 = (a1 + 1520);
                      v73 = &dword_1000249E8;
                      do
                      {
                        v75 = *v73;
                        v73 += 8;
                        v74 = v75;
                        if (v71 != v75)
                        {
                          v76 = a1 + 1512 + 16 * v74;
                          *(v76 + 4) = *(v72 - 4);
                          *(v72 - 4) = 0;
                          v77 = *v72;
                          *v72 = *(v76 + 8);
                          *(v76 + 8) = v77;
                        }

                        ++v71;
                        v72 += 2;
                      }

                      while (v71 != 48);
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", v31, v32, v33, v34, v35, v36, v37, "void clear_stale_ota_nvram(void)");
                    sub_10000E65C(@"boot-breadcrumbs");
                    sub_10000E65C(@"OTA-pre-conversion");
                    sub_10000E65C(@"OTA-post-conversion");
                    sub_10000E65C(@"ota-conv-panic-indicator");
                    sub_10000E65C(@"OTA-fsck-metrics");
                    sub_10000E65C(@"OTA-sealvolume-metrics");
                    sub_10000E65C(@"OTA-migrator-metrics");
                    for (i = 0; i != 28; ++i)
                    {
                      v79 = &off_1000249D8[4 * dword_1000184A4[i]];
                      sub_10000E65C(v79[1]);
                      sub_10000E65C(*v79);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v80 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v80 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v80 = 10;
                        }

                        else
                        {
                          v80 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v80 = 10;
                      }

                      else
                      {
                        v80 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v80 = 7;
                      }

                      else
                      {
                        v80 = 6;
                      }
                    }

                    else
                    {
                      v80 = 2;
                    }

                    sub_10000C92C(a1, v80, v32, v33, v34, v35, v36, v37);
                  }

                  else
                  {
                    sub_10000DE5C(a1, 1, v32, v33, v34, v35, v36, v37);
                  }

                  *(a1 + 693) = 1;
                  goto LABEL_148;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v29 = v20[7];
            if (v29 && CFStringCompare(v29, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              ramrod_log_msg("AP nonce will not be touched\n", v21, v22, v23, v24, v25, v26, v27, v81);
            }

            v39 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v39 == 2)
              {
                v40 = sub_10000E274(a1, v20, dword_10001820C, v23, v24, v25, v26, v27);
                sub_10000E50C(a1, v20);
                goto LABEL_71;
              }

              v41 = &unk_100018394;
            }

            else if (v39 == 2)
            {
              v41 = &unk_10001804C;
            }

            else
            {
              v41 = &unk_100018164;
            }

            v40 = sub_10000E274(a1, v20, v41, v23, v24, v25, v26, v27);
LABEL_71:
            if (!v20[6])
            {
              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (v20[8])
                {
                  sub_10000C9BC(a1, 7, 0, 0, v34, v35, v36, v37);
                }

                v63 = v20[3];
                if (v63 && CFStringCompare(v63, @"recover", 0))
                {
                  sub_10000C9BC(a1, 2, 1, 0, v34, v35, v36, v37);
                }

                if (v20[4])
                {
                  sub_10000C9BC(a1, 3, 1, 0, v34, v35, v36, v37);
                }
              }

              goto LABEL_103;
            }

            v54 = sub_10000C810(a1, v20, v32, v33, v34, v35, v36, v37);
            if (v54 < 0x22)
            {
              v62 = &dword_100018514[3 * v54];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v55, v56, v57, v58, v59, v60, v61, "checkpoint_get_outcome_attributes");
              v62 = dword_100018514;
            }

            v64 = v20[6];
            bzero(v82, 0x400uLL);
            if (*v62 != 1)
            {
              if (*(v62 + 6))
              {
                if (v20[8])
                {
                  sub_10000E574(a1, v64, v32, v33, v34, v35, v36, v37, v81);
                }

                else
                {
                  sub_10000CAC0(v64, v82);
                  sub_10000C88C(a1, v70, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
                }
              }

              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              goto LABEL_103;
            }

            v65 = v20[8];
            if (*(v62 + 5))
            {
              if (!v65)
              {
                sub_10000CAC0(v64, v82);
                sub_10000C88C(a1, v66, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
LABEL_103:
                if (v40 && !*(a1 + 104))
                {
                  sub_10000C88C(a1, v31, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v65)
            {
              goto LABEL_103;
            }

            sub_10000E574(a1, v64, v32, v33, v34, v35, v36, v37, v81);
            goto LABEL_103;
          }
        }

        else
        {
          sub_10000DF24(a1, 1u, 0x2Fu, (a1 + 1080));
          if (!*(a1 + 1080))
          {
            *(a1 + 2296) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            sub_10000C9BC(a1, 47, 0, 0, a5, a6, a7, a8);
          }

          *(a1 + 2297) = 1;
          *(a1 + 692) = 0;
          v13 = (a1 + 1016);
          v14 = -4;
          do
          {
            sub_10000DF24(a1, 1u, v14 + 43, v13++);
          }

          while (!__CFADD__(v14++, 1));
          *(a1 + 2296) = 1;
        }
      }

      *(a1 + 688) = 2;
      if (!v8)
      {
        sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v11 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    sub_10000DE5C(a1, v11, a3, a4, a5, a6, a7, a8);
  }

  return v11;
}

void *sub_10000BBC8(uint64_t a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v145 = 0;
  asprintf(&v145, "%s", a6);
  if (!v145)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v145;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
    a5 = *(v17 + 14);
  }

  *(v17 + 22) = a5 | (*(v17 + 2) << 16) | 0x11000000;
  *v149 = 0x1500000001;
  v146[0] = 0;
  v146[1] = 0;
  v147 = 16;
  if (sysctl(v149, 2u, v146, &v147, 0, 0))
  {
    v25 = -1;
  }

  else
  {
    v25 = v17[2] - v146[0];
  }

  v26 = *(v17 + 2);
  if (v26 <= 0x21)
  {
    if (((1 << v26) & 0x100000090) != 0)
    {
      sub_10000EA88(a1, 13, *(v17 + 14) | 0x11070000u, *(v17 + 18), *(v17 + 19), v22, v23, v24);
      v28 = v17[10];
      if (v28)
      {
        Code = CFErrorGetCode(v28);
        Domain = CFErrorGetDomain(v17[10]);
        v31 = sub_10000D1B0(v17[10]);
        sub_10000EA88(a1, 15, *(v17 + 22), *(v17 + 18), Code, v32, v33, v34);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          sub_10000EBE4(a1, 16, *(v17 + 22), *(v17 + 18), buffer, v35, v36, v37);
        }

        if (v31)
        {
          sub_10000E858(a1, 17, *(v17 + 22), v31, v21, v22, v23, v24);
          free(v31);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v26) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v27 = *(v17 + 14);
      if (v20)
      {
        sub_10000EA88(a1, 13, v27 | 0x11070000u, v20, 0, v22, v23, v24);
        goto LABEL_76;
      }

      v47 = a1 + 1512;
      v48 = 368;
      if (!*(a1 + 104))
      {
        v48 = 176;
      }

      v49 = v47 + v48;
      v50 = *(v49 + 8);
      if (v50)
      {
        v51 = v27 | 0x11030000;
        if (*v50 == v51)
        {
          v52 = 0;
          *v50 = 0;
LABEL_41:
          v53 = &v50[v52 + 1];
          v54 = v52 - 7;
          do
          {
            *(v53 - 1) = *v53;
            ++v53;
            v55 = __CFADD__(v54++, 1);
          }

          while (!v55);
LABEL_44:
          v50[7] = 0;
          *(v49 + 4) = 1;
          goto LABEL_53;
        }

        v56 = v50 + 1;
        v57 = -1;
        while (v57 != 6)
        {
          v58 = *v56;
          v56 += 2;
          ++v57;
          if (v58 == v51)
          {
            *(v56 - 1) = 0;
            if (v57 > 5)
            {
              goto LABEL_44;
            }

            v52 = v57 + 1;
            goto LABEL_41;
          }
        }
      }

      v59 = *(a1 + 1504);
      if (!v59)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v59 = *(a1 + 1504);
      }

      *(a1 + 1504) = v59 + 1;
LABEL_53:
      v60 = 24;
      if (!*(a1 + 104))
      {
        v60 = 12;
      }

      if ((0x1001100uLL >> v60))
      {
        v61 = v47 + 16 * v60;
        v62 = *(v61 + 8);
        if (v62)
        {
          v63 = *(v17 + 14) | 0x11030000;
          v64 = v62 + 28;
          if (*v62 == v63)
          {
            v65 = 0;
LABEL_66:
            v69 = &v62[4 * v65];
            v70 = v69[1];
            if (v70)
            {
              free(v70);
            }

            *v69 = 0;
            v69[1] = 0;
            if (v65 <= 6)
            {
              v71 = v69 + 2;
              v72 = v65 - 7;
              do
              {
                *(v71 - 1) = *v71;
                ++v71;
                v55 = __CFADD__(v72++, 1);
              }

              while (!v55);
            }

            *v64 = 0;
            v64[1] = 0;
            *(v61 + 4) = 1;
            goto LABEL_76;
          }

          v65 = 0;
          v67 = v62 + 4;
          while (v65 != 7)
          {
            ++v65;
            v68 = *v67;
            v67 += 4;
            if (v68 == v63)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v73 = *(a1 + 1504);
      if (!v73)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v73 = *(a1 + 1504);
      }

      *(a1 + 1504) = v73 + 1;
LABEL_76:
      sub_10000E998(a1, 18, v25, v20, v21, v22, v23, v24);
      sub_10000E998(a1, 21, *(v17 + 14), v74, v75, v76, v77, v78);
      goto LABEL_77;
    }

    if (v26 == 6)
    {
      sub_10000EBE4(a1, 14, *(v17 + 22), *(v17 + 18), v17[8], v22, v23, v24);
      goto LABEL_77;
    }
  }

  if (v26 == 3)
  {
    if (!*(v17 + 18))
    {
      v38 = *(a1 + 1496) + 1;
      *(a1 + 1496) = v38;
      v39 = *(v17 + 22);
      v40 = 368;
      if (!*(a1 + 104))
      {
        v40 = 176;
      }

      v41 = a1 + v40;
      v42 = *(v41 + 1520);
      if (!v42)
      {
        goto LABEL_59;
      }

      v43 = 0;
      v44 = *(v41 + 1520);
      do
      {
        v45 = *v44;
        v44 += 2;
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

        if (v43 > 6)
        {
          break;
        }

        ++v43;
        v42 = v44;
      }

      while (!v46);
      if (v46)
      {
        *v46 = v39;
        v46[1] = v38;
        *(v41 + 1516) = 1;
      }

      else
      {
LABEL_59:
        v66 = *(a1 + 1500);
        if (!v66)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", v18, v39, v20, v21, v22, v23, v24, "checkpoint_nvram_store_lost");
          v66 = *(a1 + 1500);
          v39 = *(v17 + 22);
        }

        *(a1 + 1500) = v66 + 1;
      }

      sub_10000E858(a1, 12, v39, v17[8], v21, v22, v23, v24);
    }

    goto LABEL_76;
  }

  if (v26 == 1)
  {
    sub_10000E858(a1, 10, *(v17 + 22), v17[8], v21, v22, v23, v24);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 216) = v17;
  *(a1 + 216) = v17;
  v79 = *(a1 + 224) + 1;
  *(a1 + 224) = v79;
  if (v79 >= 0x201)
  {
    v80 = (a1 + 208);
    do
    {
      v81 = *v80;
      v82 = **v80;
      *v80 = v82;
      if (!v82)
      {
        *(a1 + 216) = v80;
      }

      *(a1 + 224) = v79 - 1;
      v83 = v81[8];
      if (v83)
      {
        free(v83);
        v81[8] = 0;
      }

      v84 = v81[10];
      if (v84)
      {
        CFRelease(v84);
      }

      free(v81);
      v79 = *(a1 + 224);
    }

    while (v79 > 0x200);
  }

  memset(buffer, 0, 56);
  v146[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v85 = *(v17 + 2);
  if (v85 > 0x21)
  {
    v86 = "GENERAL";
  }

  else
  {
    v86 = off_100025060[v85];
  }

  asprintf(v146, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v86);
  v87 = v146[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    v138 = *(v17 + 19);
    asprintf(buffer, "(FAILURE:%d) ");
  }

  else
  {
    v94 = *(v17 + 2);
    if (v94 <= 0x1C && ((1 << v94) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ", v137);
    }

    else
    {
      asprintf(buffer, " ", v137);
    }
  }

  v95 = *&buffer[0].tm_sec;
  if (!v87 || !*&buffer[0].tm_sec)
  {
    goto LABEL_160;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v96 = *(v17 + 2);
    if (v96 == 28 || v96 == 1)
    {
      v139 = *(v17 + 14);
      v141 = v17[8];
      asprintf(buffer, "[0x%04X] %s");
    }

    else
    {
      v119 = *(v17 + 12);
      if (v119 == 1)
      {
        v120 = v17[8];
        asprintf(buffer, "%s");
      }

      else
      {
        if (v119 <= 0x1C)
        {
          v121 = off_100025170[v119];
        }

        v142 = *(v17 + 14);
        v143 = v17[8];
        asprintf(buffer, "%s:[0x%04X] %s");
      }
    }

    v97 = *&buffer[0].tm_sec;
  }

  else
  {
    v97 = 0;
  }

  v146[0] = 0;
  v98 = *(v17 + 2);
  if (v98 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      *(a1 + 1368);
      asprintf(buffer, "... %s");
      goto LABEL_133;
    }

    v101 = sub_10000EDF4(a1, 9, v88, v89, v90, v91, v92, v93);
    v107 = sub_10000EEA4(a1, a1 + 1088, 12, v102, v103, v104, v105, v106);
    v108 = v107;
    v109 = *(a1 + 108);
    if (v109 > 6)
    {
      v110 = "GENERAL";
    }

    else
    {
      v110 = off_100025258[v109];
    }

    if (v101)
    {
      if (!v107)
      {
        asprintf(buffer, "[%s] %s", v110, v101);
        v122 = v101;
        goto LABEL_132;
      }

      asprintf(buffer, "[%s] %s %s", v110, v107, v101);
      free(v101);
    }

    else
    {
      if (!v107)
      {
        asprintf(buffer, "[%s]");
LABEL_133:
        v100 = *&buffer[0].tm_sec;
        if (v97)
        {
          goto LABEL_115;
        }

LABEL_134:
        if (v100)
        {
          asprintf(v146, "%s:%s %s", v87, v95, v100);
LABEL_137:
          v118 = 1;
          goto LABEL_138;
        }

LABEL_136:
        asprintf(v146, "%s:%s", v87, v95);
        v100 = 0;
        goto LABEL_137;
      }

      asprintf(buffer, "[%s] %s", v110, v107);
    }

    v122 = v108;
LABEL_132:
    free(v122);
    goto LABEL_133;
  }

  if (v98 == 27)
  {
    v99 = sub_10000EDF4(a1, 13, v88, v89, v90, v91, v92, v93);
    v100 = v99;
    if (*v99 == 123 && v99[1] == 125 && !v99[2])
    {
      free(v99);
      if (!v97)
      {
        goto LABEL_136;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v100 = sub_10000D1B0(v17[10]);
  }

  if (!v97)
  {
    goto LABEL_134;
  }

LABEL_115:
  if (!v100)
  {
LABEL_117:
    asprintf(v146, "%s:%s%s", v87, v95, v97);
    v118 = 0;
    v100 = 0;
    goto LABEL_138;
  }

  asprintf(v146, "%s:%s%s %s", v87, v95, v97, v100);
  v118 = 0;
LABEL_138:
  v123 = v146[0];
  if (v146[0])
  {
    v144 = v118;
    if (*(v17 + 2) == 28)
    {
      if (*(a1 + 88) == 2)
      {
        v124 = 1;
      }

      else
      {
        v124 = 3;
      }
    }

    else
    {
      v124 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v111, v112, v113, v114, v115, v116, v117, v123);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n", v125, v126, v127, v128, v129, v130, v131, v140);
      }

      if (v124 < 2)
      {
        break;
      }

      --v124;
      sleep(1u);
    }

    v132 = v146[0];
    v133 = calloc(1uLL, 0x10uLL);
    if (v133)
    {
      v134 = v133;
      v133[1] = v132;
      if (*a1 == 1)
      {
        *v133 = 0;
        **(a1 + 504) = v133;
        *(a1 + 504) = v133;
      }

      else
      {
        pthread_mutex_lock((a1 + 256));
        v135 = *a1;
        *v134 = 0;
        **(a1 + 504) = v134;
        *(a1 + 504) = v134;
        if (v135 != 1)
        {
          pthread_mutex_unlock((a1 + 256));
        }
      }

      *(a1 + 232) = 1;
      v118 = v144;
    }

    else if (v132)
    {
      free(v132);
    }
  }

  if ((v118 & 1) == 0)
  {
    free(v97);
  }

  if (v100)
  {
    free(v100);
  }

LABEL_160:
  if (v87)
  {
    free(v87);
  }

  if (v95)
  {
    free(v95);
  }

  return v17;
}

void sub_10000C6C4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_collect");
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = a2 + 8;
  do
  {
    sub_10000DF24(a1, *a2, v11, (v12 + v10));
    v17 = *a1;
    if ((v11 - 39) <= 3 && v17 == 2)
    {
      if (*(v12 + 8 * v11))
      {
        goto LABEL_13;
      }
    }

    else if (v11 >= 0x2B && v11 != 47 && v17 == 2)
    {
      v18 = *(v12 + 8 * v11);
      if (v18)
      {
        bzero(v24, 0x400uLL);
        sub_10000CAC0(v18, v24);
        sub_10000CB0C(a1, (v11 - 4), v24, v19, v20, v21, v22, v23);
LABEL_13:
        sub_10000C9BC(a1, v11, 0, 0, v13, v14, v15, v16);
      }
    }

    ++v11;
    v10 += 8;
  }

  while (v11 != 48);
  *(a2 + 4) = 1;
}

uint64_t sub_10000C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_10000EEA4(a1, a2, 5, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    if (!strcmp(v9, off_100025290[v10]))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      break;
    }
  }

  while (v10++ < 0x21);
  free(v9);
  return v11;
}

void sub_10000C88C(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, a3, va);
  if (v8[0])
  {
    sub_10000BBC8(a1, 30, 1, 0, 260, v8[0], 0, 0, 0);
    sub_10000E858(a1, 8, *(a1 + 120), v8[0], v4, v5, v6, v7);
    if (v8[0])
    {
      free(v8[0]);
      v8[0] = 0;
    }
  }

  ++*(a1 + 120);
}

void sub_10000C92C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 96);
  v9 = *(&off_1000253A0 + v8);
  if (*(v9 + 4 * a2))
  {
    *(a1 + 92) = v8;
    v12 = *(v9 + 4 * a2);
    *(a1 + 96) = v12;
    if (v12 > 0x21)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = off_100025290[v12];
    }

    sub_10000CB0C(a1, 5, v13, a4, a5, a6, a7, a8);

    sub_10000E720(a1, a2);
  }
}

void sub_10000C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0x30)
  {
    v9 = &off_1000249D8[4 * a2];
    if (a3 || (*(v9 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = (v9 + 1);
      }

      v11 = *v10;
      CFStringGetCString(*v10, buffer, 1024, 0x8000100u);
      sub_10000E65C(v11);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
  }
}

char *sub_10000CAC0(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void sub_10000CB0C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1000249D8[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      if (*v12)
      {
        free(*v12);
        *v12 = 0;
      }

      sub_10000ED4C(a1 + 1480, v12, a3, a4, a5, a6, a7, a8);
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v13 = *(a1 + 1500);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1500);
  }

  *(a1 + 1500) = v13 + 1;
}

void sub_10000CC20(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_lock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_obtain");
  }
}

void sub_10000CC7C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_unlock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_yield");
  }
}

timeval *sub_10000CCD8()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = sub_10000CCD8();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = sub_10000CCD8();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(uint64_t a1, int a2, __CFError *a3)
{
  if (a3)
  {
    v6 = qword_10002E628;
    if (!sub_10000CEC0(a3))
    {
      v13 = *(a1 + 8);
      if (!v13 || (*(v13 + 36) & 3) == 0 || !sub_10000CF18(v6, v13))
      {
        sub_10000CC20(v6, v13, v7, v8, v9, v10, v11, v12);
        v21 = (v6 + 48);
        v22 = (v6 + 48);
        while (1)
        {
          v22 = *v22;
          if (!v22)
          {
            break;
          }

          if (*(v22 + 32) == *(a1 + 76))
          {
            goto LABEL_12;
          }
        }

        v22 = *v21;
        if (!*v21)
        {
          sub_10000D108(v6, a2, a3, *(a1 + 8));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v22 + 144) && !*(v22 + 137))
        {
          sub_10000CFFC(v22, a2, a3, *(a1 + 8));
          for (i = *v21; i != v22; i = *i)
          {
            sub_10000D0A4(i);
          }

          sub_10000D0A4(v22);
        }

LABEL_19:

        sub_10000CC7C(v6, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

__CFError *sub_10000CEC0(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 984);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = (v7 == 1) & (should_do_legacy_restored_internal_behaviors ^ 1 | v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        v16 = sub_10000EF9C(*(a1 + 2280), v15);
        if (v16 && (!*(a1 + 104) || *(v16 + 48) == 1 && *(v16 + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 sub_10000CFFC(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_10000CEC0(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_100013CBC();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *sub_10000D0A4(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 sub_10000D108(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_10000CEC0(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_100013CE8();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

char *sub_10000D1B0(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = sub_10000DCCC(v2, "[%d]", v5, v6, v7, v8, v9, v10, v3);
    if (!v4)
    {
      break;
    }

    v22 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v12 = sub_10000F034(v2, "RS", Value, &v22);
    v13 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v14 = sub_10000F034(v12, "LD", v13, &v22);
    v15 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v16 = sub_10000F034(v14, "D", v15, &v22);
    v17 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = sub_10000F034(v16, "FR", v17, &v22);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v19 = strlen(v2);
  if (v19 >= 0xF3)
  {
    v21 = 0;
    asprintf(&v21, "%s", &v2[v19 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v21;
  }

  return v2;
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  if (!qword_10002E628)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  v9 = *a1;
  v10 = qword_10002E628;

  return sub_10000D470(v10, v9, a2, a3, a4, a6, a7, a8);
}

uint64_t sub_10000D470(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __CFError **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a5 && sub_10000CEC0(*a5))
  {
    return 0;
  }

  v14 = v10;
  sub_10000CC20(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10000F108(a1, v15, v16, v17, v18, v19, v20, v21);
  if (!*(a1 + 2300) || !*(a1 + 2312))
  {
    goto LABEL_17;
  }

  v29 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2312));
  if (Count < 1)
  {
    v37 = 0;
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), 0);
  if (CFStringCompare(v29, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v37 = 1;
    if (!v29)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v29);
    goto LABEL_13;
  }

  v33 = 1;
  do
  {
    v34 = v33;
    if (v31 == v33)
    {
      break;
    }

    v35 = CFArrayGetValueAtIndex(*(a1 + 2312), v33);
    v36 = CFStringCompare(v29, v35, 0);
    v33 = v34 + 1;
  }

  while (v36);
  v37 = v34 < v31;
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v37)
  {
    v38 = *(a1 + 2308);
    if (!v38)
    {
      if (v10)
      {
        sub_10000BBC8(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      sub_10000CC7C(a1, v22, v23, v24, v25, v26, v27, v28);
      v47 = 0;
      v39 = 0;
      switch(*(a1 + 2300))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2299) == v10)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v44, v45, v46, v92);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2299) == v10)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2299) == v10)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2299) == v10)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2299) == v10)
          {
            for (i = 0; ; ++i)
            {
              v97 = *i;
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2299) == v10)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2299) == v10)
          {
            memset(&v99, 0, sizeof(v99));
            v98.__sig = 0;
            *v98.__opaque = 0;
            pthread_mutexattr_init(&v98);
            pthread_mutex_init(&v99, &v98);
            pthread_mutex_lock(&v99);
            pthread_mutex_lock(&v99);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          v66 = mach_host_self();
          v67 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          v66 = mach_host_self();
          v67 = 4096;
LABEL_72:
          host_reboot(v66, v67);
LABEL_73:
          v39 = 0;
LABEL_74:
          v47 = v10;
LABEL_75:
          if (!v10)
          {
            goto LABEL_77;
          }

          v14 = v47;
          if (!v47)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v39 = v10 == 0;
          goto LABEL_74;
        case 0x17:
          v39 = 0;
          if (*(a1 + 2299) == v10)
          {
            v47 = 0;
          }

          else
          {
            v47 = v10;
          }

          if (v10 || *(a1 + 2299))
          {
            goto LABEL_75;
          }

          v56 = *(a2 + 8);
          if (*a4)
          {
            v93 = *(a2 + 8);
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            *a4 = 0;
            if (*a5)
            {
              v57 = sub_10000D1B0(*a5);
              if (v57)
              {
                v65 = v57;
                v94 = *(a2 + 8);
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", v58, v59, v60, v61, v62, v63, v64, "checkpoint_simulator_action");
                free(v65);
              }

              CFRelease(*a5);
              v47 = 0;
              v39 = 0;
              *a5 = 0;
LABEL_77:
              v76 = *(a1 + 2304);
              if (v76)
              {
                v77 = v76 - 1;
                *(a1 + 2304) = v77;
                if (!v77)
                {
                  *(a1 + 2300) = 0;
                }
              }

              v14 = v47;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          }

          v47 = 0;
          v39 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2299) == v10)
          {
            sub_10000F33C();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n", v68, v69, v70, v71, v72, v73, v74, "checkpoint_simulator_action");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2299) == v10)
          {
            v48 = fork();
            if (v48 < 1)
            {
              if (!v48)
              {
                sub_10000F33C();
                exit(0);
              }

              v95 = *__error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n", v78, v79, v80, v81, v82, v83, v84, "checkpoint_simulator_action");
            }

            else
            {
              LODWORD(v99.__sig) = 0;
              if (waitpid(v48, &v99, 0) < 0)
              {
                v96 = *__error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n", v85, v86, v87, v88, v89, v90, v91, "checkpoint_simulator_action");
              }

              else if ((v99.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else if ((v99.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          v39 = 0;
          v47 = 1;
          goto LABEL_75;
      }
    }

    if (!v10)
    {
      *(a1 + 2308) = v38 - 1;
    }
  }

LABEL_17:
  sub_10000CC7C(a1, v22, v23, v24, v25, v26, v27, v28);
  v39 = 0;
LABEL_18:
  if (v10)
  {
    return v14;
  }

  else
  {
    return v39;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  if (!qword_10002E628)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  v8 = *a1;
  v9 = qword_10002E628;

  return sub_10000DAE4(v9, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10000DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000CC20(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10000F108(a1, v10, v11, v12, v13, v14, v15, v16);
  if (*(a1 + 2300))
  {
    Count = CFArrayGetCount(*(a1 + 2312));
    v32 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v35 = 0;
    }

    else
    {
      v33 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), v33);
        if (CFStringCompare(v32, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v33)
        {
          goto LABEL_6;
        }
      }

      v35 = 1;
    }

    sub_10000CC7C(a1, v25, v26, v27, v28, v29, v30, v31);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    sub_10000CC7C(a1, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  return v35;
}

char *sub_10000DBDC(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *sub_10000DCCC(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = &a9;
  vasprintf(v12, a2, &a9);
  if (!v12[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v12[0];
  }

  asprintf(&v11, "%s%s", a1, v12[0]);
  if (v11)
  {
    free(a1);
  }

  else
  {
    v11 = a1;
  }

  if (v12[0])
  {
    free(v12[0]);
    v12[0] = 0;
  }

  return v11;
}

char *sub_10000DD6C(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = sub_10000DBDC(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *sub_10000DDE4(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = sub_10000DBDC(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void sub_10000DE5C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v9 = 17;
        goto LABEL_14;
      }

      v10 = *(a1 + 101) == 0;
      v9 = 5;
    }

    else
    {
      v10 = *(a1 + 88) == 2;
      v9 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v9 = 19;
      goto LABEL_14;
    }

    v10 = *(a1 + 101) == 0;
    v9 = 7;
  }

  else
  {
    v10 = *(a1 + 88) == 2;
    v9 = 3;
  }

  if (!v10)
  {
    ++v9;
  }

LABEL_14:
  *(a1 + 96) = v9;
  sub_10000CB0C(a1, 5, off_100025290[v9], a4, a5, a6, a7, a8);

  sub_10000E720(a1, 1);
}

void sub_10000DF24(uint64_t a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v46, 0x400uLL);
  if (a3 < 0x30)
  {
    if (*(a1 + 88) == 1)
    {
      v16 = &off_1000249D8[4 * a3];
    }

    else
    {
      v16 = &off_1000249D8[4 * a3 + 1];
    }

    CFStringGetCString(*v16, buffer, 1024, 0x8000100u);
    v17 = ramrod_copy_NVRAM_variable();
    if (!v17)
    {
      return;
    }

    v15 = v17;
    v18 = CFGetTypeID(v17);
    if (v18 == CFStringGetTypeID())
    {
      CFStringGetCString(v15, v46, 1024, 0x8000100u);
      *a4 = v15;
      v15 = 0;
      goto LABEL_22;
    }

    if (v18 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
      {
        v27 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v26)
      {
        v27 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v27, v19, v20, v21, v22, v23, v24, v25, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n", v28, v29, v30, v31, v32, v33, v34, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }

      v26 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v15, 0x8000100u);
      if (!v26)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n", v35, v36, v37, v38, v39, v40, v41, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }
    }

    v42 = v26;
    CFStringGetCString(v26, v46, 1024, 0x8000100u);
    *a4 = v42;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v43 = "Unknown";
    }

    else
    {
      v43 = off_100024FD8[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v43, buffer, v46);
    if (valuePtr)
    {
      sub_10000BBC8(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_nvram_collect_var");
  v15 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t sub_10000E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      return 0;
    }

    else
    {
      return LODWORD(off_1000249D8[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t sub_10000E274(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v39, 0, sizeof(v39));
  v9 = *a3;
  v10 = 1;
  v11 = 0;
  if (v9)
  {
    v12 = 0;
    v36 = a2;
    v13 = a2 + 8;
    v14 = a3 + 2;
    do
    {
      *(v39 + v9) = 1;
      if (*(v13 + 8 * v9))
      {
        if (*(v14 - 3))
        {
          v11 = 1;
        }

        if (*(v14 - 2))
        {
          v12 = 1;
        }

        if (*(v14 - 1))
        {
          v15 = v9 <= 0x2F && (LODWORD(off_1000249D8[4 * v9 + 3]) - 2) < 3;
          sub_10000C9BC(a1, v9, v15, 1, a5, a6, a7, a8);
        }
      }

      else if (*(v14 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v9 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", v16, v17, v18, v19, v20, v21, v22, "checkpoint_get_nvram_name");
          LODWORD(v9) = 0;
        }

        if (*(a1 + 88) == 1)
        {
          v23 = &off_1000249D8[4 * v9];
        }

        else
        {
          v23 = &off_1000249D8[4 * v9 + 1];
        }

        CFStringGetCString(*v23, buffer, 1024, 0x8000100u);
        sub_10000C88C(a1, v24, "[check_collection]%s(does_not_exist)", buffer);
      }

      v25 = *v14;
      v14 += 2;
      v9 = v25;
    }

    while (v25);
    v10 = v12 == 0;
    a2 = v36;
  }

  v26 = 0;
  v27 = a2 + 16;
  v28 = off_1000249F8;
  do
  {
    if (!*(v39 + v26 + 1) && *(v27 + 8 * v26))
    {
      bzero(buffer, 0x400uLL);
      bzero(v37, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v29 = v28;
      }

      else
      {
        v29 = (v28 + 1);
      }

      CFStringGetCString(*v29, buffer, 1024, 0x8000100u);
      sub_10000CAC0(*(v27 + 8 * v26), v37);
      sub_10000C88C(a1, v30, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v37);
      sub_10000C9BC(a1, (v26 + 1), 0, 1, v31, v32, v33, v34);
    }

    ++v26;
    v28 += 4;
  }

  while (v26 != 47);
  if (!v10)
  {
    sub_10000BBC8(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v11;
}

void sub_10000E50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    sub_10000C9BC(a1, 2, 1, 0, v4, v5, v6, v7);
  }
}

void sub_10000E574(_BYTE *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1[100])
  {
    a1[104] = 1;
    a1[101] = 1;

    ramrod_log_msg("AP nonce will not be touched\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    bzero(v12, 0x400uLL);
    sub_10000CAC0(a2, v12);
    sub_10000C88C(a1, v11, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v12);
  }
}

void sub_10000E65C(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void sub_10000E720(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_100025290[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_100025290[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", off_100024FF0[a2], v4, v6);
  if (v7)
  {
    sub_10000BBC8(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t sub_10000E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10000E20C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 > 0x2F)
  {
    v10 = 0;
  }

  else
  {
    v10 = HIDWORD(off_1000249D8[4 * v9 + 2]);
  }

  v11 = checkpoint_nvram_encoder[v10];
  v12 = *(a1 + 16 * v9 + 1520);

  return (v11)(a1, v12);
}

void sub_10000E858(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v11 = 0;
      v12 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1000249D8[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v11 = a2;
  v12 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0x20420400uLL >> v11))
  {
    a2 = *(v12 + 8);
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v11))
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = 0;
      a2 = v13 - 16;
      do
      {
        v16 = *(a2 + 16);
        a2 += 16;
        v15 = v16;
        if (v16)
        {
          v17 = v14 >= 7;
        }

        else
        {
          v17 = 1;
        }

        ++v14;
      }

      while (!v17);
      if (!v15)
      {
LABEL_21:
        *a2 = v9;
        sub_10000ED4C(a1 + 1480, (a2 + 8), a4, a4, a5, a6, a7, a8);
        *(v12 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v18 = *(a1 + 1500);
  if (!v18)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v18 = *(a1 + 1500);
  }

  *(a1 + 1500) = v18 + 1;
}

void sub_10000E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1000249D8[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0x3C03C0000uLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      *v12 = a3;
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v13 = *(a1 + 1500);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1500);
  }

  *(a1 + 1500) = v13 + 1;
}

void sub_10000EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1000249D8[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1512;
LABEL_7:
  if (((0xA00A000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 11;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        v17[v9 + 1] = v8;
        *(v17 + v9 + 36) = 1;
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1500);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1500);
  }

  *(a1 + 1500) = v14 + 1;
}

void sub_10000EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1000249D8[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1512;
LABEL_7:
  if (((0x14014000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 18;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        sub_10000ED4C(a1 + 1480, &v17[2 * v9 + 2], a5, a4, a5, a6, a7, a8);
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1500);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1500);
  }

  *(a1 + 1500) = v14 + 1;
}

void sub_10000ED4C(uint64_t a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v11 = *(a1 + 20);
    if (!v11)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", 0, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
      v11 = *(a1 + 20);
    }

    *(a1 + 20) = v11 + 1;
  }
}

char *sub_10000EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000E7E8(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = 0;
  if (result)
  {
    v9 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v9, buffer, 1024, 0x8000100u);
    asprintf(&v10, "%s", buffer);
    CFRelease(v9);
    return v10;
  }

  return result;
}

char *sub_10000EEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      LODWORD(a3) = 0;
    }

    else
    {
      LODWORD(a3) = off_1000249D8[4 * a3 + 2];
    }
  }

  v9 = *(a2 + 8 * a3 + 8);
  if (!v9)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v9, buffer, 1024, 0x8000100u);
  asprintf(&v11, "%s", buffer);
  return v11;
}

const __CFDictionary *sub_10000EF9C(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v11 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", v4, v5, v6, v7, v8, v9, v10, "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

char *sub_10000F034(char *a1, char a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v14 = "|%s(%s)";
    }

    else
    {
      v14 = "%s(%s)";
    }

    a1 = sub_10000DCCC(a1, v14, v8, v9, v10, v11, v12, v13, a2);
    *a4 = 1;
  }

  return a1;
}

void sub_10000F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 2298) && sub_10000B2DC(a1, 0, 0, a4, a5, a6, a7, a8))
  {
    if (!*(a1 + 1016))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v27, 0x400uLL);
    *(a1 + 2300) = 0;
    *(a1 + 2312) = 0;
    __strlcpy_chk();
    v9 = strlen(__s);
    CFStringGetCString(*(a1 + 1016), &__s[v9], 1024 - v9, 0x8000100u);
    __strlcpy_chk();
    v10 = strlen(v27);
    CFStringGetCString(*(a1 + 1016), &v27[v10], 1024 - v10, 0x8000100u);
    v11 = 0;
    while (1)
    {
      v12 = off_100025060[v11];
      if (!strncasecmp(__s, v12, 0x400uLL))
      {
        *(a1 + 2300) = v11;
        goto LABEL_11;
      }

      if (!strncasecmp(v27, v12, 0x400uLL))
      {
        break;
      }

      if (++v11 == 34)
      {
        LODWORD(v11) = *(a1 + 2300);
        goto LABEL_11;
      }
    }

    *(a1 + 2300) = v11;
    *(a1 + 2299) = 1;
LABEL_11:
    if (!v11)
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 1040);
    if (v19)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v19, @",");
      *(a1 + 2312) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v22 = Count;
          for (i = 0; i != v22; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v25 = *(a1 + 1024);
        if (v25)
        {
          *(a1 + 2304) = CFStringGetIntValue(v25);
        }

        v26 = *(a1 + 1032);
        if (v26)
        {
          *(a1 + 2308) = CFStringGetIntValue(v26);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", 0, v13, v14, v15, v16, v17, v18, "checkpoint_simulator_configure");
    }

    *(a1 + 2300) = 0;
LABEL_23:
    *(a1 + 2298) = 1;
  }
}

void *sub_10000F33C()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10000F3BC()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v1);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

uint64_t ramrod_device_has_baseband()
{
  if (qword_10002E668 != -1)
  {
    sub_100013D14();
  }

  return byte_10002E670;
}

void sub_10000F45C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID() && CFStringHasPrefix(v2, @"int"))
    {
      byte_10002E670 = 1;
    }

    CFRelease(v2);
  }
}

const __CFDictionary *ramrod_device_has_stockholm()
{
  result = IOServiceMatching("AppleStockholmControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return 1;
    }
  }

  return result;
}

uint64_t _ramrod_device_has_sandcat()
{
  if (qword_10002E680 != -1)
  {
    sub_100013D28();
  }

  return byte_10002E678;
}

void sub_10000F560(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Sandcat");
  if (v1)
  {
    byte_10002E678 = 1;

    IOObjectRelease(v1);
  }
}

uint64_t ramrod_connect_to_ioservice(const char *a1, io_service_t *a2, io_connect_t *a3)
{
  v5 = a1;
  v6 = IOServiceMatching(a1);
  if (v6)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v22 = MatchingService;
      connect = 0;
      if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        *a2 = v22;
        *a3 = connect;
        return 1;
      }

      ramrod_log_msg("IOServiceOpen failed for class '%s'\n", v23, v24, v25, v26, v27, v28, v29, v5);
    }

    else
    {
      ramrod_log_msg("IOServiceGetMatchingService failed\n", v15, v16, v17, v18, v19, v20, v21, v31);
    }
  }

  else
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return 0;
}

uint64_t ramrod_generate_apslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  v35 = 4;
  *connection = 0;
  v34 = 32;
  *bytes = 0u;
  v38 = 0u;
  if (!ramrod_connect_to_ioservice("AppleMobileApNonce", &connection[1], connection))
  {
    ramrod_log_msg("Failed to connect to AppleMobileApNonce to generate AP nonce slot.\n", v4, v5, v6, v7, v8, v9, v10, outputStruct);
    goto LABEL_5;
  }

  v11 = connection[0];
  v12 = IOConnectCallMethod(connection[0], 0xC8u, 0, 0, 0, 0, 0, 0, bytes, &v34);
  if (v12)
  {
    mach_error_string(v12);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v13, v14, v15, v16, v17, v18, v19, "AppleMobileApNonce");
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v20 = calloc(1uLL, 4uLL);
  v25 = IOConnectCallMethod(v11, 0xCBu, 0, 0, 0, 0, 0, 0, v20, &v35);
  if (v25)
  {
    mach_error_string(v25);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v26, v27, v28, v29, v30, v31, v32, "AppleMobileApNonce");
LABEL_6:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v21 = *v20;
  v22 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v23 = 1;
  if (a1)
  {
LABEL_7:
    *a1 = v21;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v22;
  }

  else if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    free(v20);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  if (connection[0])
  {
    IOObjectRelease(connection[0]);
  }

  return v23;
}

uint64_t ramrod_generate_sepslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  *bytes = 0;
  v30 = 0;
  v31 = 0;
  length = 20;
  *connection = 0;
  output = 0;
  outputCnt = 1;
  if (ramrod_connect_to_ioservice("AppleSEPManager", &connection[1], connection))
  {
    v11 = connection[0];
    v12 = IOConnectCallMethod(connection[0], 0x53u, 0, 0, 0, 0, &output, &outputCnt, bytes, &length);
    if (v12)
    {
      mach_error_string(v12);
      ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", v13, v14, v15, v16, v17, v18, v19, "AppleSEPManager");
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = output;
      v22 = CFDataCreate(kCFAllocatorDefault, bytes, length);
      v20 = 1;
    }

    if (connection[1])
    {
      IOObjectRelease(connection[1]);
    }

    if (v11)
    {
      IOObjectRelease(v11);
    }

    if (a1)
    {
      *a1 = v21;
    }

    if (a2)
    {
      *a2 = v22;
    }

    else if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    ramrod_log_msg("Failed to connect to AppleSEPManager to generate sep nonce.\n", v4, v5, v6, v7, v8, v9, v10, outputStruct);
    return 0;
  }

  return v20;
}

void sub_10000FA00(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

const __CFDictionary *ramrod_should_update_stockholm(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking stockholm for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_stockholm();
  }
}

BOOL ramrod_should_update_baseband(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_baseband() != 0;
  }

  ramrod_log_msg("Skipping checking baseband for booted OS update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t ramrod_copy_updater_functions(void *a1, const char *a2, __CFDictionary *(***a3)(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4), CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_copy_updater_functions");
    return 0;
  }

  v10 = a2;
  *a3 = 0;
  v12 = malloc(0x20uLL);
  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate tmp update_functions struct", v13, v14, v15, "ramrod_copy_updater_functions");
    return 0;
  }

  v16 = v12;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  if (!strcmp(v10, "Banyan"))
  {
    v10 = "BanyanUARP";
  }

  if (!strcmp(v10, "Canary"))
  {
    *v16 = sub_10000FE98;
    v16[1] = sub_10000FF7C;
    v32 = sub_10000FFB4;
    v33 = 2;
    goto LABEL_16;
  }

  v20 = sub_10000FD68(a1, v10, "UpdaterCreate", a4, 0, v17, v18, v19);
  *v16 = v20;
  if (!v20 || (v24 = sub_10000FD68(a1, v10, "UpdaterIsDone", a4, 0, v21, v22, v23), (v16[1] = v24) == 0) || (v28 = sub_10000FD68(a1, v10, "UpdaterExecCommand", a4, 0, v25, v26, v27), (v16[2] = v28) == 0))
  {
    free(v16);
    return 0;
  }

  v32 = sub_10000FD68(a1, v10, "UpdaterIsTwoStageSupported", a4, 1, v29, v30, v31);
  v33 = 3;
LABEL_16:
  v16[v33] = v32;
  *a3 = v16;
  return 1;
}

void *sub_10000FD68(void *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "load_function");
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__symbol = 0u;
  v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  result = dlsym(a1, __symbol);
  if (!a5 && !result)
  {
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1012, 0, @"%s: unable to find %s: %s", v12, v13, v14, "load_function");
    return 0;
  }

  return result;
}

__CFDictionary *sub_10000FE98(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Options");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"Options", Value);
      }
    }

    CFDictionarySetValue(Mutable, @"IsDone", kCFBooleanFalse);
    CFDictionarySetValue(Mutable, @"Loop0", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"QueryLoop0", kCFBooleanTrue);
  }

  else
  {
    sub_1000144F8(a4, v6, v7, v8, v9, v10, v11, v12);
  }

  return Mutable;
}

const __CFDictionary *sub_10000FF7C(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"IsDone");

    return CFBooleanGetValue(Value);
  }

  return result;
}

uint64_t sub_10000FFB4(const __CFDictionary *a1, CFStringRef theString1, uint64_t a3, CFMutableDictionaryRef *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000145E8(a5, theString1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!theString1)
  {
    sub_1000145AC(a5, 0, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!a4)
  {
    sub_100014570(a5, theString1, a3, 0, a5, a6, a7, a8);
    return 0;
  }

  if (CFStringCompare(theString1, @"queryInfo", 0))
  {
    if (CFStringCompare(theString1, @"performNextStage", 0))
    {
      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: %@ invalid command", v12, v13, v14, "_CanaryUpdaterExecCmd");
      return 0;
    }

    Value = CFDictionaryGetValue(a1, @"Loop0");
    ramrod_log_msg_cf(@"PerformNextStage Running, Loop0=%@.", Value);
    if (CFDictionaryGetValue(a1, @"Loop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"Loop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a4 = Mutable;
    if (!Mutable)
    {
      sub_100014534(a5, v17, v18, v19, v20, v21, v22, v23);
      return 0;
    }

    v24 = CFDictionaryGetValue(a1, @"QueryLoop0");
    ramrod_log_msg_cf(@"QueryInfo Running, Loop0=%@.", v24);
    CFDictionarySetValue(*a4, @"ECID", @"1234567890");
    v25 = *a4;
    v26 = CFDictionaryGetValue(a1, @"QueryLoop0");
    CFDictionarySetValue(v25, @"QueryLoop0", v26);
    CFDictionarySetValue(*a4, @"LocalSigningID", kCFBooleanTrue);
    if (CFDictionaryGetValue(a1, @"QueryLoop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"QueryLoop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v28, v27, v29);
  return 1;
}

uint64_t ramrod_update_nvram_overrides(const char *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v33 = "options is NULL\n";
LABEL_22:
    ramrod_log_msg(v33, a2, a3, a4, a5, a6, a7, a8, v34);
    goto LABEL_6;
  }

  if (!a1)
  {
    v33 = "updaterName is NULL\n";
    goto LABEL_22;
  }

  CStringPtr = CFStringGetCStringPtr(@"T200", 0x8000100u);
  if (!strcmp(a1, CStringPtr) && (v14 = ramrod_copy_NVRAM_variable_from_devicetree(@"VeridianForceUpdate")) != 0)
  {
    v15 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v14, 0x8000100u);
    v11 = v15;
    if (v15)
    {
      v16 = CFGetTypeID(v15);
      if (v16 == CFStringGetTypeID() && CFStringCompare(v11, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", v17, v18, v19, v20, v21, v22, v23, "SkipSameVersion");
        CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
        CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = CFStringGetCStringPtr(@"AppleTCON", 0x8000100u);
  if (!strcmp(a1, v12))
  {
    v24 = ramrod_copy_NVRAM_variable_from_devicetree(@"AppleTCONForceUpdate");
    if (v24)
    {
      v11 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v24, 0x8000100u);
    }

    if (v11)
    {
      v25 = CFGetTypeID(v11);
      if (v25 == CFStringGetTypeID() && CFStringCompare(v11, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", v26, v27, v28, v29, v30, v31, v32, "SkipSameVersion");
        CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
        CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
      }
    }
  }

LABEL_6:
  AMSupportSafeRelease();

  return AMSupportSafeRelease();
}

CFStringRef *sub_100010460(const __CFString *a1)
{
  sub_100012920();
  if (a1)
  {
    v2 = off_10002E328;
    v3 = 14;
    while (*v2)
    {
      if (CFStringCompare(a1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  sub_100014624();
  return 0;
}

CFStringRef ramrod_update_get_dylib(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_100010460(a1);
    if (v1)
    {
      return v1[3];
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_100014634();
  }

  return 0;
}

CFDictionaryRef ramrod_update_copy_ap_parameters_generating_nonces(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"GenerateNonces", kCFBooleanTrue);
    updated = ramrod_update_copy_ap_parameters(v9);
    CFRelease(v9);
    return updated;
  }

  else
  {
    ramrod_log_msg("Failed to allocate ap options dictionary.\n", v2, v3, v4, v5, v6, v7, v8, v12);
    return 0;
  }
}

CFDictionaryRef ramrod_update_copy_ap_parameters(const __CFDictionary *a1)
{
  BOOLean_option = get_BOOLean_option(a1, @"GenerateNonces", 0);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_10001080C(@"esdm-fuses");
    if (v3)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSiKA, v3);
    }

    v4 = sub_10001080C(@"chip-epoch");
    if (v4)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterCertificateEpoch, v4);
    }

    if (BOOLean_option && _ramrod_device_has_sandcat())
    {
      v28 = 2;
      valuePtr = 0;
      cf = 0;
      value = 0;
      if (ramrod_generate_apslot_copy_nonce(&valuePtr, &value))
      {
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v12)
        {
          v13 = v12;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonceSlotID, v12);
          CFRelease(v13);
        }

        if (value)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonce, value);
          CFRelease(value);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the AP slot id will not set.\n", v5, v6, v7, v8, v9, v10, v11, v25);
      }

      if (ramrod_generate_sepslot_copy_nonce(&v28, &cf))
      {
        v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v28);
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonceSlotID, v21);
          CFRelease(v22);
        }

        if (cf)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonce, cf);
          CFRelease(cf);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the SEP slot id will not set.\n", v14, v15, v16, v17, v18, v19, v20, v25);
      }
    }

    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
  }

  else
  {
    sub_100014648();
    Copy = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return Copy;
}

CFNumberRef sub_10001080C(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v10 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg_cf(@"unable to lookup %@ property\n", a1);
      v15 = 0;
LABEL_11:
      IOObjectRelease(v10);
      return v15;
    }

    v12 = CFProperty;
    v13 = CFGetTypeID(CFProperty);
    if (v13 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v12);
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, BytePtr);
      if (v15)
      {
LABEL_10:
        CFRelease(v12);
        goto LABEL_11;
      }

      ramrod_log_msg_cf(@"could not create CFNumber for %@\n", a1);
    }

    else
    {
      ramrod_log_msg_cf(@"%@ property is not a CFData\n", a1);
    }

    v15 = 0;
    goto LABEL_10;
  }

  ramrod_log_msg("unable to find 'chosen' registry entry\n", v3, v4, v5, v6, v7, v8, v9, v17);
  return 0;
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo_with_options(const __CFDictionary *a1, CFErrorRef *a2)
{
  v130 = 0;
  v131[0] = 0;
  v129 = 0;
  sub_100012920();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10001465C(a2, v3, v4, v5, v6, v7, v8, v9);
LABEL_151:
    v112 = 1;
    goto LABEL_130;
  }

  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v18)
  {
    sub_10001488C(a2, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_151;
  }

  v121 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v121)
  {
    sub_100014850(a2, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_151;
  }

  v124 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v124)
  {
    sub_100014814(a2, v26, v27, v28, v29, v30, v31, v32);
    v112 = 1;
    goto LABEL_130;
  }

  if (!a1)
  {
    sub_1000147CC(a2, v26, v27, v28, v29, v30, v31, v32);
LABEL_157:
    v112 = 1;
    goto LABEL_130;
  }

  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDict)
  {
    sub_1000147B8();
    goto LABEL_157;
  }

  v33 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v33)
  {
    sub_1000147A4();
    goto LABEL_157;
  }

  v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v123 = v33;
  if (!v34)
  {
    sub_100014790();
    goto LABEL_157;
  }

  v35 = v34;
  CFDictionarySetValue(v34, @"CreateFilesystemPartitions", kCFBooleanFalse);
  CFDictionarySetValue(theDict, @"RestoreOptions", v35);
  if (CFDictionaryContainsKey(a1, @"PreflightRequired"))
  {
    Value = CFDictionaryGetValue(a1, @"PreflightRequired");
    CFDictionarySetValue(v33, @"PreflightRequired", Value);
  }

  if (CFDictionaryContainsKey(a1, @"BootedUpdate"))
  {
    v37 = CFDictionaryGetValue(a1, @"BootedUpdate");
    CFDictionarySetValue(v33, @"BootedUpdate", v37);
    v127 = v37 == kCFBooleanTrue;
  }

  else
  {
    v127 = 0;
  }

  v120 = Mutable;
  if (CFDictionaryContainsKey(a1, @"PreflightContext"))
  {
    v41 = CFDictionaryGetValue(a1, @"PreflightContext");
    CFDictionarySetValue(v33, @"PreflightContext", v41);
    v42 = CFStringCompare(v41, @"Limited", 0) != kCFCompareEqualTo;
  }

  else
  {
    v42 = 1;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  MutableCopy = 0;
  if (v127)
  {
    v42 = 1;
  }

  v128 = v42;
  while (1)
  {
    if (v44)
    {
      CFRelease(v44);
    }

    if (v130)
    {
      CFRelease(v130);
      v130 = 0;
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v131[0])
    {
      CFRelease(v131[0]);
      v131[0] = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v129)
    {
      free(v129);
      v129 = 0;
    }

    v48 = &off_10002E328[6 * v43];
    if (!*v48)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v131[0], @"%s: Updater Name is NULL at index %d", v38, v39, v40, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    ramrod_log_msg_cf(@"Preflight loop %d for updater %@..", ++v43, *v48);
    v49 = *v48;
    if (*v48)
    {
      v50 = CFDictionaryGetValue(a1, @"SkipUpdaters");
      if (v50)
      {
        v51 = v50;
        if (CFArrayGetCount(v50) >= 1)
        {
          v52 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v51, v52);
            if (ValueAtIndex)
            {
              v54 = ValueAtIndex;
              v55 = CFGetTypeID(ValueAtIndex);
              if (v55 == CFStringGetTypeID() && CFStringCompare(v49, v54, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (++v52 >= CFArrayGetCount(v51))
            {
              goto LABEL_43;
            }
          }

          ramrod_log_msg_cf(@"Skipping updater %@", *v48, v115);
          goto LABEL_78;
        }
      }
    }

LABEL_43:
    v56 = v48[2];
    if (!v56)
    {
      goto LABEL_55;
    }

    if (!v128)
    {
      if ((v56)(1))
      {
        v57 = 0;
        goto LABEL_50;
      }

      v56 = v48[2];
    }

    if (!(v56)(v127))
    {
LABEL_55:
      ramrod_log_msg_cf(@"Updater %@ not supported on this device..", *v48, v115);
LABEL_78:
      MutableCopy = 0;
      v46 = 0;
      v45 = 0;
      goto LABEL_79;
    }

    v57 = 1;
LABEL_50:
    if (CFDictionaryGetValue(a1, *v48) == kCFBooleanFalse)
    {
      ramrod_log_msg_cf(@"Updater %@ should be skipped for %s..", *v48, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_78;
    }

    CStringPtr = CFStringGetCStringPtr(*v48, 0x8000100u);
    if (!CStringPtr)
    {
      v117 = *v48;
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v131[0], @"%s: failed convert updaterName %@", v59, v60, v61, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    v62 = CStringPtr;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v33);
    if (!MutableCopy)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v131[0], @"%s: Failed to copy subOptions for %s", v63, v64, v65, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    CFDictionarySetValue(theDict, @"Options", MutableCopy);
    ramrod_update_nvram_overrides(v62, MutableCopy, v66, v67, v68, v69, v70, v71);
    if (ramrod_update_twostage_enabled(*v48))
    {
      ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: YES.\n", v72, v73, v74, v75, v76, v77, v78, v62);
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
    }

    else
    {
      ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v72, v73, v74, v75, v76, v77, v78, v62);
    }

    if (os_parse_boot_arg_int())
    {
      CFDictionarySetValue(MutableCopy, @"SkipSameVersion", kCFBooleanFalse);
      CFDictionarySetValue(MutableCopy, @"RestoreInternal", kCFBooleanTrue);
    }

    if (*(v48 + 36))
    {
      v45 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!v45)
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v131[0], @"%s: Failed to create queryResults array for %s", v79, v80, v81, "ramrod_update_copy_deviceinfo_with_options");
        goto LABEL_141;
      }

      if ((v57 & 1) == 0)
      {
LABEL_63:
        ramrod_log_msg_cf(@"overriding updater context to BootedOS for %sUpdater", v62);
        CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      }
    }

    else
    {
      v45 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v82 = dlopen(v48[3], 261);
    if (!v82)
    {
      v116 = dlerror();
      ramrod_log_msg_cf(@"Failed to open updater library on device that should have %s: %s", v62, v116);
      goto LABEL_72;
    }

    if (!ramrod_copy_updater_functions(v82, v62, &v129, a2, v83, v84, v85, v86))
    {
      goto LABEL_146;
    }

    v87 = (v129[1])(0, v131);
    if (v131[0])
    {
      goto LABEL_146;
    }

    if (v87)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(NULL)=true (ie: module should skip), continuing.", v62, v115);
LABEL_72:
      v46 = 0;
LABEL_79:
      v44 = 0;
      goto LABEL_80;
    }

    ramrod_log_msg_cf(@"creating %sUpdater obj", v62);
    v88 = (*v129)(theDict, sub_10001163C, v62, v131);
    v44 = v88;
    if (!v88)
    {
      sub_100014698();
      goto LABEL_141;
    }

    v89 = (v129[1])(v88, v131);
    if (v131[0])
    {
LABEL_146:
      AMSupportLogInternal();
      goto LABEL_141;
    }

    if (!v89)
    {
      break;
    }

    ramrod_log_msg_cf(@"Updater %s returned isDone(obj)=true (ie: module should skip), continuing.", v62);
    v46 = 0;
LABEL_80:
    if (v43 == 14)
    {
      updated = ramrod_update_copy_ap_parameters(a1);
      Mutable = v120;
      CFDictionaryAddValue(v120, @"DeviceInfo", v18);
      CFDictionaryAddValue(v120, @"DeviceInfoDisabled", v121);
      CFDictionaryAddValue(v120, @"DeviceInfoFailures", v124);
      CFDictionaryAddValue(v120, @"ApParameters", updated);
      v112 = 0;
      goto LABEL_130;
    }
  }

  v90 = 0;
  v122 = 0;
  v119 = v18;
LABEL_83:
  if (v90 <= 1024)
  {
    v91 = 1024;
  }

  else
  {
    v91 = v90;
  }

  v92 = v91 - v90++ + 1;
  while (1)
  {
    if (v130)
    {
      CFRelease(v130);
      v130 = 0;
    }

    if (!--v92)
    {
      break;
    }

    if (v45)
    {
      ramrod_log_msg_cf(@"Calling %sUpdater fp_isDone", v62);
      v93 = (v129[1])(v44, v131);
      if (v131[0])
      {
        goto LABEL_146;
      }

      if (v93)
      {
LABEL_128:
        v18 = v119;
LABEL_129:
        v46 = v122;
        v33 = v123;
        goto LABEL_80;
      }
    }

    ramrod_log_msg_cf(@"Calling %sUpdater fp_ExecCmd", v62, v115);
    if ((v129[2])(v44, @"queryInfo", 0, &v130, v131))
    {
      if (v130)
      {
        TypeID = CFDictionaryGetTypeID();
        v105 = TypeID == CFGetTypeID(v130);
        v18 = v119;
        if (v105 && CFDictionaryGetValue(a1, @"PreflightRequired") == kCFBooleanFalse)
        {
          v122 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v130);
          if (!v122)
          {
            goto LABEL_141;
          }

          v106 = v48[5];
          if (v106)
          {
            key = v48[5];
            if (CFDictionaryContainsKey(v122, v106))
            {
              AMSupportLogInternal();
              CFDictionaryRemoveValue(v122, key);
              CFRelease(v130);
              v130 = v122;
              v122 = 0;
            }
          }
        }
      }

      else
      {
        v18 = v119;
      }

      v107 = v130;
      if (v45)
      {
        CFArrayAppendValue(v45, v130);
        v107 = v130;
      }

      if (!v107 || v131[0])
      {
        if (v107 | v131[0])
        {
          v110 = "NULL";
          if (v107)
          {
            v110 = "NOT-NULL";
          }

          ramrod_log_msg_cf(@"Updater %s QueryInfo succeeded, but bad results. Results=%s, Error=%@", v62, v110, v131[0]);
          if (*(v48 + 34))
          {
            ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v131[0], @"%s: Preflight QueryInfo succeeded, but improper results on %s", v38, v39, v40, "ramrod_update_copy_deviceinfo_with_options");
            goto LABEL_141;
          }
        }

        else
        {
          ramrod_log_msg_cf(@"Updater %s returned no personalization info (ie: module should skip), continuing.", v62);
        }

        if (!v45)
        {
          goto LABEL_129;
        }
      }

      else
      {
        ramrod_log_msg_cf(@"Populated deviceinfo for %s, continuing.", v62);
        if (v45)
        {
          v108 = v45;
        }

        else
        {
          v108 = v130;
        }

        if (*(v48 + 34))
        {
          v109 = v18;
        }

        else
        {
          v109 = v121;
        }

        CFDictionarySetValue(v109, *v48, v108);
        if (!v45)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_83;
    }

    AMSupportLogInternal();
    if (*(v48 + 33) == 1)
    {
      ramrod_log_msg("%s updater failed but not reporting error since it is best effort\n", v94, v95, v96, v97, v98, v99, v100, v62);
    }

    else
    {
      CFDictionarySetValue(v124, *v48, v48[1]);
      v115 = v62;
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v131[0], @"%s: Preflight QueryInfo failed on %s", v101, v102, v103, "ramrod_update_copy_deviceinfo_with_options");
    }

    ++v90;
    if (!v45)
    {
      goto LABEL_128;
    }
  }

  sub_100014714();
LABEL_141:
  v112 = 1;
  Mutable = v120;
LABEL_130:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v129)
  {
    free(v129);
    v129 = 0;
  }

  v113 = v112 ^ 1;
  if (!Mutable)
  {
    v113 = 1;
  }

  if ((v113 & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_10001163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ramrod_log_msg("updater_log: %s", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo(int a1, CFErrorRef *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    v6 = &kCFBooleanTrue;
    if (!a1)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"PreflightRequired", *v6);
    CFDictionarySetValue(v5, @"PreflightContext", @"BootedOS");
    updated = ramrod_update_copy_deviceinfo_with_options(v5, a2);
  }

  else
  {
    sub_1000148C8();
    updated = 0;
  }

  AMSupportSafeRelease();
  return updated;
}

BOOL ramrod_should_update_rose(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = 0;
    v9 = "Skipping checking Rose for booted update\n";
  }

  else
  {
    has_rose = ramrod_device_has_rose();
    v8 = has_rose != 0;
    if (has_rose)
    {
      v9 = "Rose is present. Will update\n";
    }

    else
    {
      v9 = "Rose not present\n";
    }
  }

  ramrod_log_msg(v9, a2, a3, a4, a5, a6, a7, a8, v12);
  return v8;
}

uint64_t ramrod_device_has_rose()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    ramrod_log_msg("Service does not exist\n", v1, v2, v3, v4, v5, v6, v7, v51);
    v42 = 0;
    goto LABEL_18;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors())
  {
    goto LABEL_17;
  }

  valuePtr = 0;
  v9 = MGCopyAnswer();
  v17 = v9;
  if (!v9)
  {
    v41 = "Failed to get HW model\n";
    goto LABEL_16;
  }

  v18 = CFGetTypeID(v9);
  if (v18 != CFStringGetTypeID())
  {
    v41 = "HW model is not a string\n";
    goto LABEL_16;
  }

  if (!CFStringHasSuffix(v17, @"DEV"))
  {
    v41 = "Not a DEV board\n";
LABEL_16:
    ramrod_log_msg(v41, v10, v11, v12, v13, v14, v15, v16, v51);
    goto LABEL_17;
  }

  ramrod_log_msg("DEV board\n", v10, v11, v12, v13, v14, v15, v16, v51);
  v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  if (!v26)
  {
    ramrod_log_msg("Failed to create zero\n", v19, v20, v21, v22, v23, v24, v25, v52);
    goto LABEL_17;
  }

  v27 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ECID", kCFAllocatorDefault, 1u);
  v35 = v27;
  if (!v27)
  {
    v40 = "ECID property does not exist\n";
    goto LABEL_28;
  }

  v36 = CFGetTypeID(v27);
  if (v36 != CFNumberGetTypeID())
  {
    v40 = "ECID property is not a number\n";
    goto LABEL_28;
  }

  if (CFNumberCompare(v26, v35, 0) == kCFCompareEqualTo)
  {
    v40 = "ECID property is zero\n";
    goto LABEL_28;
  }

  v37 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ChipID", kCFAllocatorDefault, 1u);
  v38 = v37;
  if (!v37)
  {
    v40 = "ChipID property does not exist\n";
    goto LABEL_28;
  }

  v39 = CFGetTypeID(v37);
  if (v39 != CFNumberGetTypeID())
  {
    v40 = "ChipID property is not a number\n";
    goto LABEL_28;
  }

  if (CFNumberCompare(v26, v38, 0))
  {
LABEL_17:
    v42 = 1;
    goto LABEL_18;
  }

  v40 = "ChipID property is zero\n";
LABEL_28:
  ramrod_log_msg(v40, v28, v29, v30, v31, v32, v33, v34, v52);
  v42 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("result: %u\n", v43, v44, v45, v46, v47, v48, v49, v42);
  return v42;
}

BOOL ramrod_should_update_centauri(int a1)
{
  v9 = os_variant_uses_ephemeral_storage();
  if (v9)
  {
    v10 = "ramrod_update running in limited environment\n";
  }

  else
  {
    v10 = "ramrod_update running in normal env\n";
  }

  ramrod_log_msg(v10, v2, v3, v4, v5, v6, v7, v8, v19);
  if (a1 && v9)
  {
    ramrod_log_msg("Skipping checking Centauri in NeRD for bootedUpdate=true\n", v11, v12, v13, v14, v15, v16, v17, v20);
    return 0;
  }

  else
  {

    return ramrod_device_has_centauri();
  }
}

BOOL ramrod_device_has_centauri()
{
  v0 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v9 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("%s: %s\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_device_has_centauri");
  return v9 != 0;
}

BOOL ramrod_device_has_savage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
  v8 = dlopen("/usr/lib/updaters/libSavageUpdater_iOS.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "Savage", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_savage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Savage for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_savage(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t ramrod_device_has_veridian()
{
  v0 = IOServiceMatching("AppleGasGaugeUpdate");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v9 = MatchingService;
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
      goto LABEL_14;
    }

    v10 = MGCopyAnswer();
    v18 = v10;
    if (v10)
    {
      v19 = CFGetTypeID(v10);
      if (v19 == CFStringGetTypeID())
      {
        if (!CFStringHasSuffix(v18, @"DEV"))
        {
          goto LABEL_14;
        }

        keys = @"built-in";
        v20 = IOServiceMatching("IOPMPowerSource");
        v21 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v20)
        {
          if (v21)
          {
            CFDictionarySetValue(v20, @"IOPropertyMatch", v21);
            v29 = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
            if (v29)
            {
              v30 = v29;
              CFProperty = IORegistryEntryCreateCFProperty(v29, @"Serial", kCFAllocatorDefault, 0);
              IOObjectRelease(v30);
              AMSupportSafeRelease();
              if (CFProperty)
              {
                v32 = CFGetTypeID(CFProperty);
                if (v32 == CFStringGetTypeID())
                {
                  if (!CFStringGetLength(CFProperty))
                  {
                    ramrod_log_msg("Dev board with no Veridian attached - pretending we don't support Veridian.\n", v40, v41, v42, v43, v44, v45, v46, v51);
                    v47 = 0;
LABEL_15:
                    IOObjectRelease(v9);
                    goto LABEL_16;
                  }
                }

                else
                {
                  ramrod_log_msg("Veridian Serial not a string - not expected\n", v33, v34, v35, v36, v37, v38, v39, v51);
                }

LABEL_14:
                v47 = 1;
                goto LABEL_15;
              }

              goto LABEL_23;
            }

            v50 = "unable to find IOPMPowerSource service\n";
          }

          else
          {
            v50 = "Failed to allocate properties\n";
          }
        }

        else
        {
          v50 = "Failed to allocate matching\n";
        }

        ramrod_log_msg(v50, v22, v23, v24, v25, v26, v27, v28, v51);
        AMSupportSafeRelease();
LABEL_23:
        v49 = "Veridian Serial is NULL - not expected\n";
        goto LABEL_24;
      }

      v49 = "HW model is not a string\n";
    }

    else
    {
      v49 = "Failed to get HW model\n";
    }

LABEL_24:
    ramrod_log_msg(v49, v11, v12, v13, v14, v15, v16, v17, v51);
    goto LABEL_14;
  }

  ramrod_log_msg("Not a Veridian device.\n", v2, v3, v4, v5, v6, v7, v8, v51);
  v47 = 0;
LABEL_16:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v47;
}

BOOL ramrod_device_ota_veridian(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_veridian() != 0;
  }

  ramrod_log_msg("Skipping checking Veridian for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t ramrod_device_has_appletcon(uint64_t a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product");
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (!CFProperty)
  {
    v38 = "tcon-path pointer not found.\n";
LABEL_18:
    ramrod_log_msg(v38, v5, v6, v7, v8, v9, v10, v11, v48);
    goto LABEL_22;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(CFProperty))
  {
    v38 = "IORegistryEntryCreateCFProperty returned non CFDataRef\n";
    goto LABEL_18;
  }

  Length = CFDataGetLength(CFProperty);
  if (!Length)
  {
    v38 = "tcon-path contains invalid string\n";
    goto LABEL_18;
  }

  v14 = Length;
  v15 = malloc(Length + 15);
  v16 = v15;
  if (!v15)
  {
    v38 = "malloc returned NULL\n";
    goto LABEL_18;
  }

  if (snprintf(v15, v14 + 15, "%s", "IODeviceTree:/") != 14)
  {
    v38 = "overflow";
    goto LABEL_18;
  }

  v50.length = CFDataGetLength(CFProperty);
  v50.location = 0;
  CFDataGetBytes(CFProperty, v50, v16 + 14);
  v16[v14 + 14] = 0;
  ramrod_log_msg("Looking for entry under %s\n", v17, v18, v19, v20, v21, v22, v23, v16);
  v24 = IORegistryEntryFromPath(kIOMasterPortDefault, v16);
  if (!v24)
  {
    v38 = "tcon-path points to non-existent node\n";
    goto LABEL_18;
  }

  v25 = v24;
  v26 = IORegistryEntryCreateCFProperty(v24, @"firmware", kCFAllocatorDefault, 0);
  IOObjectRelease(v25);
  if (!v26)
  {
    v39 = "No 'firmware' property found.\n";
LABEL_21:
    ramrod_log_msg(v39, v27, v28, v29, v30, v31, v32, v33, v48);
LABEL_22:
    updated = 0;
    goto LABEL_23;
  }

  v34 = CFDataGetTypeID();
  if (v34 != CFGetTypeID(v26))
  {
    v39 = "IORegistryEntryCreateCFProperty returned non CFDataRef\n";
    goto LABEL_21;
  }

  if (CFDataGetLength(v26) != 4)
  {
    v49 = CFDataGetLength(v26);
    ramrod_log_msg("version_data wrong length (%lu bytes)\n", v41, v42, v43, v44, v45, v46, v47, v49);
    goto LABEL_22;
  }

  BytePtr = CFDataGetBytePtr(v26);
  if (!BytePtr)
  {
    v39 = "CFDataGetBytePtr returned NULL\n";
    goto LABEL_21;
  }

  v36 = *BytePtr;
  ramrod_log_msg("AppleTCON flashable node found. (firmware=%d)\n", v27, v28, v29, v30, v31, v32, v33, *BytePtr);
  CFRelease(v26);
  if (!v36)
  {
    goto LABEL_22;
  }

  if (a1 && AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    updated = 1;
  }

  else
  {
    updated = ramrod_update_supported(@"AppleTCON", @"AppleTCONUpdaterErrorDomain: AppleTCONUpdaterExecCommand - execCommand error");
  }

LABEL_23:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  return updated;
}

BOOL ramrod_device_ota_appletcon(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_appletcon(0) != 0;
  }

  ramrod_log_msg("Skipping checking TCON for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_appletconuarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libTconUpdaterUARP.dylib");
  v8 = dlopen("/usr/lib/updaters/libTconUpdaterUARP.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libTconUpdaterUARP.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "AppleTconUARP", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_appletconuarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_appletconuarp(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  ramrod_log_msg("Skipping checking AppleTconUARP for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL _ramrod_device_has_usbcretimer(const __CFString *a1)
{
  existing = 0;
  v20 = "_ramrod_device_has_usbcretimer";
  ramrod_log_msg_cf(@"%s(%@) entered\n");
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    entryID = 0;
    os_parse_boot_arg_int();
  }

  v2 = IOServiceNameMatching("atcrt");
  if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing))
  {
    v5 = IOIteratorNext(existing);
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"name", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          break;
        }

LABEL_20:
        IOObjectRelease(v6);
        v6 = IOIteratorNext(existing);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = CFProperty;
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v6, &entryID);
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        v17 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          if (CFStringHasPrefix(v17, a1))
          {
            ++v3;
          }

          CFRelease(v18);
          goto LABEL_19;
        }

        v19 = "nameString NULL\n";
      }

      else
      {
        v19 = "nameData not CFDataRef\n";
      }

      ramrod_log_msg(v19, v10, v11, v12, v13, v14, v15, v16, v20);
LABEL_19:
      CFRelease(v8);
      goto LABEL_20;
    }
  }

  v3 = 0;
LABEL_5:
  ramrod_log_msg_cf(@"%s(%@) found %lu nodes\n", "_ramrod_device_has_usbcretimer", a1, v3);
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v3 != 0;
}

BOOL ramrod_should_update_usbcretimer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_usbcretimer();
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_should_update_usbcretimer_uarp(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return _ramrod_device_has_usbcretimer(@"uatcrt");
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_ace3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libAce3Updater.dylib");
  v8 = dlopen("/usr/lib/updaters/libAce3Updater.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libAce3Updater.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "Ace3", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_ace3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Ace3 for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_ace3(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t ramrod_device_has_manta_mcu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_device_has_manta_mcu");
  v8 = IOServiceNameMatching("manta-b");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
  if (MatchingService)
  {
    v17 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"supports-mcu-restore", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v26 = CFProperty;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v26))
      {
        if (CFDataGetLength(v26) <= 0)
        {
          Length = CFDataGetLength(v26);
          ramrod_log_msg("supports-mcu-restore wrong length (%lu bytes)\n", v38, v39, v40, v41, v42, v43, v44, Length);
          goto LABEL_12;
        }

        if (*CFDataGetBytePtr(v26) == 1)
        {
          v35 = 1;
LABEL_13:
          IOObjectRelease(v17);
          CFRelease(v26);
          return v35;
        }

        v45 = *CFDataGetBytePtr(v26);
        v36 = "supports-mcu-restore is %u, the device does not support manta mcu restore time firmware update.\n";
      }

      else
      {
        v36 = "IORegistryEntryCreateCFProperty returned non CFDataRef for supports-mcu-restore property.\n";
      }

      ramrod_log_msg(v36, v28, v29, v30, v31, v32, v33, v34, v45);
LABEL_12:
      v35 = 0;
      goto LABEL_13;
    }

    ramrod_log_msg("manta-b ioregistry entry does not have supports-mcu-restore property, the device does not support manta mcu restore time firmware update.\n", v19, v20, v21, v22, v23, v24, v25, v45);
    IOObjectRelease(v17);
  }

  else
  {
    ramrod_log_msg("Could not find manta-b ioregistry entry, the device does not support manta mcu.\n", v10, v11, v12, v13, v14, v15, v16, v45);
  }

  return 0;
}

BOOL ramrod_should_update_manta_mcu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_manta_mcu(a1, a2, a3, a4, a5, a6, a7, a8) != 0;
  }

  ramrod_log_msg("Skipping checking manta mcu for booted update.\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_vinyl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  v34 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libVinylUpdater.dylib");
  v8 = dlopen("/usr/lib/updaters/libVinylUpdater.dylib", 261);
  v12 = v8;
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v24, v25, v26, v27, v28, v29, v30, "/usr/lib/updaters/libVinylUpdater.dylib");
    return v12;
  }

  v13 = sub_10000FD68(v8, "Vinyl", "UpdaterSupported", 0, 0, v9, v10, v11);
  if (!v13 || !v13(&v33))
  {
    ramrod_log_msg("Vinyl updaterSupported missing or returned not supported\n", v14, v15, v16, v17, v18, v19, v20, v32);
    return 0;
  }

  v21 = ramrod_copy_updater_functions(v12, "Vinyl", &v34, 0, v17, v18, v19, v20);
  v22 = v34;
  if (!v21)
  {
    v12 = 0;
    if (!v34)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v23 = *(v34 + 1);
  if (!v23)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v12 = v23(0, &v33) == 0;
  v22 = v34;
  if (v34)
  {
LABEL_7:
    free(v22);
  }

  return v12;
}

void sub_100012920()
{
  if ((ramrod_should_do_legacy_restored_behaviors() & 1) == 0 && qword_10002E688 != -1)
  {
    sub_1000148DC();
  }
}

void sub_100012954(id a1)
{
  v1 = &byte_10002E349;
  v2 = 14;
  do
  {
    if (CFEqual(*(v1 - 25), @"update_rose"))
    {
      v10 = os_variant_uses_ephemeral_storage();
      if (v10)
      {
        v11 = "ramrod_update running in limited environment\n";
      }

      else
      {
        v11 = "ramrod_update running in normal env\n";
      }

      ramrod_log_msg(v11, v3, v4, v5, v6, v7, v8, v9, v12);
      if (v10)
      {
        *v1 = 1;
      }
    }

    v1 += 48;
    --v2;
  }

  while (v2);
}

void sub_100012A14(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a3, a4, a5, a6, a7);
}

void sub_100012D74()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012E38()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012EE8(uint64_t *a1)
{
  v6 = *a1;
  sub_100001E80();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100012F60()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012F9C()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001304C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000130E8()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100013124()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000131D4()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100013290(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Failed to reboot the device: %{errno}d", v3, 8u);
}

uint64_t sub_10001351C()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

void sub_10001356C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  sub_1000051AC(v6, v3, v4, v5, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10001361C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  sub_1000051AC(v6, v3, v4, v5, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000138BC(uint64_t *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100013950(uint64_t *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000139D0(uint64_t *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100013A64(uint64_t *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100013AE4(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100013B88(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100013C18(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

uint64_t ramrod_update_twostage_enabled(const __CFString *a1)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  if (!a1)
  {
    goto LABEL_32;
  }

  CStringPtr = AMAuthInstallUpdaterTwoStageEnabled();
  if (CFStringCompare(a1, @"T200", 0))
  {
LABEL_3:
    sub_100012A44();
    v3 = 0;
    goto LABEL_25;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    AMSupportLogInternal();
    goto LABEL_3;
  }

  dylib = ramrod_update_get_dylib(a1);
  if (!dylib)
  {
LABEL_32:
    AMSupportLogInternal();
    v3 = 0;
    goto LABEL_34;
  }

  v5 = dlopen(dylib, 261);
  v3 = v5;
  if (!v5)
  {
    dlerror();
    AMSupportLogInternal();
    goto LABEL_34;
  }

  if (!ramrod_copy_updater_functions(v5, CStringPtr, &v23, 0, v6, v7, v8, v9) || !*(v23 + 2) || !*v23)
  {
    goto LABEL_34;
  }

  v10 = *(v23 + 3);
  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v13)
      {
        CFDictionarySetValue(Mutable, @"Options", v13);
        v14 = *v23;
        sub_1000129FC();
        v16 = v15(Mutable);
        if (v16)
        {
          v20 = 0;
          if ((*(v23 + 2))(v16, @"queryInfo", 0, &cf, &v20) == 1 && !v20 && cf && (v17 = CFGetTypeID(cf), v17 == CFDictionaryGetTypeID()) && CFDictionaryGetValue(cf, @"IsTwoStageSupported") == kCFBooleanTrue)
          {
            v18 = "Enable";
            CStringPtr = 1;
          }

          else
          {
            CStringPtr = 0;
            v18 = "Disable";
          }

          ramrod_log_msg_cf(@"Runtime check for two-stage support: %s\n", v18);
          goto LABEL_25;
        }
      }
    }

    AMSupportLogInternal();
LABEL_34:
    CStringPtr = 0;
    goto LABEL_25;
  }

  CStringPtr = v10(&v22);
  v11 = "Enable";
  if (!CStringPtr)
  {
    v11 = "Disable";
  }

  ramrod_log_msg_cf(@"Runtime (via IsTwoStageSupported) check for two-stage support: %s\n", v11);
  sub_100012A44();
LABEL_25:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v23)
  {
    free(v23);
    v23 = 0;
  }

  if (v3)
  {
    dlclose(v3);
  }

  return CStringPtr;
}

const __CFString *ramrod_update_supported(CFStringRef theString, const __CFString *a2)
{
  v2 = theString;
  v22[1] = 0;
  cf = 0;
  v22[0] = 0;
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (CStringPtr)
    {
      dylib = ramrod_update_get_dylib(v2);
      if (dylib)
      {
        v6 = dlopen(dylib, 261);
        if (!v6)
        {
          dlerror();
          AMSupportLogInternal();
          goto LABEL_14;
        }

        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v8)
          {
            CFDictionarySetValue(Mutable, @"Options", v8);
            CFDictionarySetValue(v8, @"PreflightRequired", kCFBooleanTrue);
            if (ramrod_copy_updater_functions(v6, CStringPtr, v22, 0, v9, v10, v11, v12) && *(v22[0] + 2) && *(v22[0] + 1) && *v22[0])
            {
              sub_1000129FC();
              v14 = v13(Mutable);
              v15 = v14;
              if (v14)
              {
                err = 0;
                if (!(*(v22[0] + 1))(v14, 0))
                {
                  v16 = (*(v22[0] + 2))(v15, @"queryInfo", 0, &cf, &err);
                  if (v16 != 1 || err || cf && ((v17 = CFGetTypeID(cf), v17 != CFDictionaryGetTypeID()) || CFDictionaryGetCount(cf)))
                  {
                    v18 = err;
                    if (!a2 || !err)
                    {
                      goto LABEL_25;
                    }

                    v19 = CFErrorCopyDescription(err);
                    if (!v19 || CFStringCompare(v19, a2, 0))
                    {
                      AMSupportLogInternal();
                      v18 = err;
LABEL_25:
                      ramrod_log_msg_cf(@"%@ tells us to attempt Update.  success=%d, error=%d, result=%d.", v2, v16, v18 != 0, cf != 0);
                      v2 = 1;
                      goto LABEL_26;
                    }
                  }
                }
              }

              AMSupportLogInternal();
            }
          }

          else
          {
            AMSupportLogInternal();
          }

LABEL_14:
          v2 = 0;
          goto LABEL_26;
        }
      }
    }

    AMSupportLogInternal();
    goto LABEL_14;
  }

  AMSupportLogInternal();
LABEL_26:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v22[0])
  {
    free(v22[0]);
  }

  return v2;
}

void sub_100014698()
{
  sub_100012A30();
  v7 = *v3;
  AMSupportLogInternal();
  ramrod_create_error_cf(v1, v0, 1013, *v2, @"%s: Preflight Create failed on %s", v4, v5, v6, "ramrod_update_copy_deviceinfo_with_options");
}

void sub_100014714()
{
  sub_100012A30();
  AMSupportLogInternal();
  ramrod_create_error_cf(v1, v0, 1016, *v2, @"%s: Exceeded maximum loops for %s", v3, v4, v5, "ramrod_update_copy_deviceinfo_with_options");
}