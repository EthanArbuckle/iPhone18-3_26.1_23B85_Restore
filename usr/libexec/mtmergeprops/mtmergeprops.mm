id MergePersonalityDictionaryFromPathWithName(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v9;
  v28 = +[NSFileManager defaultManager];
  [v28 contentsOfDirectoryAtPath:v7 error:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  v29 = v11;
  v33 = v11;
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    v33 = v29;
    v30 = v10;
    v31 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [v7 stringByAppendingPathComponent:*(*(&v34 + 1) + 8 * v15)];
        v17 = [v16 pathExtension];
        v18 = [v17 isEqualToString:v8];

        if (v18)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = [NSDictionary dictionaryWithContentsOfFile:v16];
          v21 = [v20 objectForKey:v10];
          if (v21)
          {
            v22 = [v10 UTF8String];
            v23 = v8;
            v24 = v7;
            printf("found %s in %s\n", v22, [v16 UTF8String]);
            v25 = recursiveMerge(v33, v21, 3);

            v33 = v25;
            v7 = v24;
            v8 = v23;
            v10 = v30;
            v14 = v31;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  v26 = v33;
  return v33;
}

id recursiveMerge(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [NSMutableDictionary dictionaryWithDictionary:v5];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __recursiveMerge_block_invoke;
      v14[3] = &unk_1000042B0;
      v15 = v5;
      v17 = a3;
      v9 = v8;
      v16 = v9;
      [v7 enumerateKeysAndObjectsUsingBlock:v14];
      v10 = v16;
      v11 = v9;

      goto LABEL_7;
    }

    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v11 = v12;
LABEL_7:

  return v11;
}

id GetMergePersonalityNameForDriver(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"mt-merge-personality", kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = CFProperty;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CreateIteratorForDriverOfType(IONotificationPort *a1, CFAbsoluteTime *a2)
{
  notification = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v5, @"HID Bootloadable", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"IOPropertyMatch", v5);
  if (a2)
  {
    *a2 = CFAbsoluteTimeGetCurrent();
  }

  if (!IOServiceAddMatchingNotification(a1, "IOServiceMatched", Mutable, DriverAppeared, a2, &notification))
  {
    return notification;
  }

  syslog(3, "Failed to create matching iterator\n");
  return 0;
}

void DriverAppeared(double *a1, io_iterator_t a2)
{
  if (a1)
  {
    v3 = CFAbsoluteTimeGetCurrent() - *a1;
  }

  else
  {
    v3 = 0.0;
  }

  if (MergePropertiesWithIterator(a2))
  {
    syslog(5, "Found the mt driver after %f seconds. Exiting.\n", v3);
    Main = CFRunLoopGetMain();

    CFRunLoopStop(Main);
  }
}

void MergePropertiesForDriver(void *a1, io_service_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    connect = 0;
    if (!IOServiceOpen(a2, mach_task_self_, 0, &connect))
    {
      v7 = IOConnectSetCFProperties(connect, v5);
      if (v7)
      {
        syslog(3, "Merge properties for %s returned error 0x%08x\n", [v6 UTF8String], v7);
      }

      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v8;
      v44 = v8;
      v41 = v8;
      v42 = v8;
      v39 = v8;
      v40 = v8;
      v37 = v8;
      v38 = v8;
      v35 = v8;
      v36 = v8;
      v33 = v8;
      v34 = v8;
      v31 = v8;
      v32 = v8;
      v29 = v8;
      v30 = v8;
      v28 = v8;
      v27 = v8;
      v26 = v8;
      v25 = v8;
      v24 = v8;
      v23 = v8;
      v22 = v8;
      v21 = v8;
      v20 = v8;
      v19 = v8;
      v18 = v8;
      v17 = v8;
      v16 = v8;
      v15 = v8;
      v14 = v8;
      v13 = v8;
      memset(__b, 170, sizeof(__b));
      inputStruct = 1;
      outputStructCnt = 516;
      IOConnectCallStructMethod(connect, 4u, &inputStruct, 0x204uLL, __b, &outputStructCnt);
      IOServiceClose(connect);
    }
  }
}

uint64_t MergePropertiesWithIterator(io_iterator_t a1)
{
  if (a1 && (v2 = IOIteratorNext(a1)) != 0)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = GetMergePersonalityNameForDriver(v3);
      if (v5)
      {
        v6 = +[NSDictionary dictionary];
        v7 = MergePersonalityDictionaryFromPathWithName(@"/usr/share/firmware/multitouch/", @"mtprops", v6, v5);

        v8 = MergePersonalityDictionaryFromPathWithName(@"/var/mobile/Library/Application Support/Multitouch/", @"dycal", v7, v5);

        MergePropertiesForDriver(v8, v3, v5);
        v4 = 1;
      }

      IOObjectRelease(v3);

      v3 = IOIteratorNext(a1);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v4 = IONotificationPortCreate(0);
  if (v4)
  {
    v5 = v4;
    v6 = os_transaction_create();
    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(v5);
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IteratorForDriverOfType = CreateIteratorForDriverOfType(v5, v3);
    if (MergePropertiesWithIterator(IteratorForDriverOfType))
    {
      syslog(5, "Successfully merged properties. Exiting.\n");
      v10 = 0;
    }

    else
    {
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      if (v10)
      {
        v12 = dispatch_time(0, 60000000000);
        dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_source_set_event_handler(v10, &__block_literal_global);
        dispatch_resume(v10);
        CFRunLoopRun();
      }

      else
      {
        syslog(3, "Failed to create dispatch timer. Exiting.\n");
      }
    }

    IONotificationPortDestroy(v5);
    if (IteratorForDriverOfType)
    {
      IOObjectRelease(IteratorForDriverOfType);
    }

    if (v10)
    {
    }

    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  else
  {
    free(v3);
    syslog(3, "Failed to create IONotificationPort\n");
    return -1;
  }
}

void __main_block_invoke(id a1)
{
  syslog(3, "Driver did not appear after %d seconds. Exiting.\n", 60);
  Main = CFRunLoopGetMain();

  CFRunLoopStop(Main);
}

void __recursiveMerge_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKey:v12];
  if (!v8)
  {
LABEL_6:
    [*(a1 + 40) setObject:v7 forKey:v12];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = recursiveMerge(v8, v7, *(a1 + 48));
    [*(a1 + 40) setObject:v9 forKey:v12];

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = *(a1 + 48);
  if (isKindOfClass)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v11 & 2) != 0)
  {
    [*(a1 + 40) removeAllObjects];
    *a4 = 1;
  }

LABEL_7:
}