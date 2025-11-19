uint64_t format_partition(const char *a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  *__str = 0;
  v32 = "/sbin/newfs_apfs";
  if (!strcmp(__s1, "System"))
  {
    v16 = 115;
  }

  else if (!strcmp(__s1, "Data"))
  {
    v16 = 100;
  }

  else if (!strcmp(__s1, "User"))
  {
    v16 = 117;
  }

  else if (!strcmp(__s1, "Preboot"))
  {
    v16 = 98;
  }

  else if (!strcmp(__s1, "Baseband Data"))
  {
    v16 = 97;
  }

  else if (!strcmp(__s1, "Logs"))
  {
    v16 = 105;
  }

  else if (!strcmp(__s1, "xART"))
  {
    v16 = 120;
  }

  else if (!strcmp(__s1, "Scratch"))
  {
    v16 = 110;
  }

  else if (!strcmp(__s1, "Hardware"))
  {
    v16 = 104;
  }

  else if (!strcmp(__s1, "Update"))
  {
    v16 = 112;
  }

  else
  {
    if (strcmp(__s1, "Recovery"))
    {
      v15 = 1;
      goto LABEL_25;
    }

    v16 = 114;
  }

  *&v33 = "-o";
  snprintf(__str, 8uLL, "role=%c", v16);
  *(&v33 + 1) = __str;
  v15 = 3;
LABEL_25:
  (&v32)[v15] = "-A";
  (&v32)[v15 + 1] = "-v";
  v17 = v15 + 3;
  (&v32)[v15 + 2] = __s1;
  if (a5 == 1)
  {
    (&v32)[v17] = "-P";
    v17 = v15 | 4;
  }

  (&v32)[v17] = a1;
  (&v32)[v17 + 1] = 0;
  v18 = "/sbin/newfs_apfs";
  v19 = 1;
  do
  {
    _partition_log("%s ", v8, v9, v10, v11, v12, v13, v14, v18);
    v18 = (&v32)[v19++];
  }

  while (v18);
  _partition_log("\n", v8, v9, v10, v11, v12, v13, v14, v30);
  if (!_executeCommandPtr)
  {
    v27 = 0xFFFFFFFFLL;
    v28 = "/sbin/newfs_apfs";
    goto LABEL_33;
  }

  v27 = _executeCommandPtr(&v32, _partition_execution_log, 0);
  if (v27)
  {
    v28 = v32;
LABEL_33:
    _partition_log("%s returned %d", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  return v27;
}

uint64_t _mount_filesystem(uint64_t a1, char *a2)
{
  v12[0] = "/sbin/mount";
  v12[1] = "-t";
  v12[2] = "apfs";
  v12[3] = "-o";
  v12[4] = "nobrowse";
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = 0;
  mkdir(a2, 0x1C0u);
  if (_executeCommandPtr)
  {
    v10 = _executeCommandPtr(v12, _partition_execution_log, 0);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  _partition_log("mounting %s at %s failed: %d", v3, v4, v5, v6, v7, v8, v9, a1);
  return v10;
}

const char *mount_recovery_boot(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_recovery_boot");
  if (partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    if (!recovery_os_volume_device_node_path)
    {
      _partition_log("%s: no device node found for recovery volume\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
    }

    bzero(&v55, 0x878uLL);
    if (!statfs(a1, &v55) && !strcmp(v55.f_mntonname, a1) && !strcmp(v55.f_mntfromname, &recovery_os_volume_device_node_path))
    {
      _partition_log("%s: Recovery device already mounted at %s\n", v24, v25, v26, v27, v28, v29, v30, "mount_recovery_boot");
      return a1;
    }

    if (!statfs("/", &v55) && !strcmp(v55.f_mntfromname, &recovery_os_volume_device_node_path))
    {
      _partition_log("%s: Recovery device already mounted at %s\n", v31, v32, v33, v34, v35, v36, v37, "mount_recovery_boot");
      return "/";
    }

    v54[0] = 0;
    v54[1] = &recovery_os_volume_device_node_path;
    if (!mount("apfs", a1, 0x20000000, v54))
    {
      _partition_log("%s: Successfully mounted recovery boot at %s", v38, v39, v40, v41, v42, v43, v44, "mount_recovery_boot");
      return a1;
    }

    v53 = *__error();
    _partition_log("%s: Recovery boot failed to mount at %s: %d, errno %d\n", v45, v46, v47, v48, v49, v50, v51, "mount_recovery_boot");
  }

  else
  {
    _partition_log("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
  }

  return 0;
}

uint64_t mount_update_partition_if_exists(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_update_partition_if_exists");
  if (!partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    _partition_log("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  if (!update_device_node_path)
  {
    _partition_log("%s : no device node found for update partition\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  v63 = 0;
  v24 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v24)
  {
    v62 = *__error();
    _partition_log("Failed to realpath(%s). errno=%d", v37, v38, v39, v40, v41, v42, v43, a1);
    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  v26 = getmntinfo_r_np(&v63, 2);
  if (v26 < 1)
  {
    _partition_log("Failed to get mount info for all mounted file systems", v27, v28, v29, v30, v31, v32, v33, v61);
    v44 = *__error();
  }

  else
  {
    v34 = v63;
    v35 = v26;
    v36 = 1112;
    while (strcmp(v34 + v36, &update_device_node_path))
    {
      v36 += 2168;
      if (!--v35)
      {
        goto LABEL_16;
      }
    }

    if (!strcmp(v34 + v36 - 1024, v25))
    {
      _partition_log("Update partition is already mounted\n", v45, v46, v47, v48, v49, v50, v51, v61);
      v44 = 0;
      goto LABEL_19;
    }

    _partition_log("unmounting %s at %s", v45, v46, v47, v48, v49, v50, v51, v34 + v36);
    _unmount_filesystem(v63 + v36 - 1024);
LABEL_16:
    v44 = _mount_filesystem(&update_device_node_path, v25);
    v59 = "Failed to mount";
    if (!v44)
    {
      v59 = "Successfully mounted";
    }

    _partition_log("%s update partition at %s", v52, v53, v54, v55, v56, v57, v58, v59);
  }

LABEL_19:
  if (v63)
  {
    free(v63);
  }

  free(v25);
  return v44;
}

uint64_t _partition_wait_for_device(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _partition_log("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "_partition_wait_for_device");
  if (!a1)
  {
    v41 = "path argument is NULL";
    goto LABEL_16;
  }

  v16 = CFStringCreateWithCString(kCFAllocatorDefault, "EmbeddedDeviceTypeRoot", 0x8000100u);
  if (!v16)
  {
LABEL_15:
    v41 = "failed to allocate device lookup dict";
LABEL_16:
    _partition_log(v41, v9, v10, v11, v12, v13, v14, v15, v111);
    return 0;
  }

  v17 = v16;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v19 = v17;
LABEL_14:
    CFRelease(v19);
    goto LABEL_15;
  }

  v19 = Mutable;
  CFDictionaryAddValue(Mutable, v17, kCFBooleanTrue);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v20)
  {
    CFRelease(v17);
    goto LABEL_14;
  }

  v21 = v20;
  CFDictionaryAddValue(v20, @"IOPropertyMatch", v19);
  CFRelease(v17);
  CFRelease(v19);
  v22 = 0;
  while (1)
  {
    CFRetain(v21);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
    if (MatchingService)
    {
      break;
    }

    if (30 - v22 >= 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 30 - v22;
    }

    v25 = CFCopyDescription(v21);
    CStringPtr = CFStringGetCStringPtr(v25, 0);
    _partition_log("waiting for matching IOKit service: %s\n", v27, v28, v29, v30, v31, v32, v33, CStringPtr);
    sleep(v24);
    v22 += v24;
    CFRelease(v25);
    if (v22 >= 0x1E)
    {
      CFRelease(v21);
      _partition_log("failed to lookup IO service for %s", v34, v35, v36, v37, v38, v39, v40, "EmbeddedDeviceTypeRoot");
      return 0;
    }
  }

  v44 = MatchingService;
  CFRelease(v21);
  IOObjectRetain(v44);
  v45 = v44;
  do
  {
    iterator = 0;
    if (IORegistryEntryGetChildIterator(v45, "IOService", &iterator))
    {
      v100 = "Could not create child iterator";
      goto LABEL_45;
    }

    v53 = IOIteratorNext(iterator);
    v54 = 0;
    if (!v53)
    {
      v55 = iterator;
LABEL_44:
      IOObjectRelease(v55);
      v111 = v54;
      v100 = "Found %d child nodes (expected 1)";
LABEL_45:
      _partition_log(v100, v46, v47, v48, v49, v50, v51, v52, v111);
      v42 = 0;
      v55 = v45;
      goto LABEL_52;
    }

    v55 = 0;
    do
    {
      if (v55)
      {
        IOObjectRelease(v53);
      }

      else
      {
        v55 = v53;
      }

      v53 = IOIteratorNext(iterator);
      v54 = (v54 + 1);
    }

    while (v53);
    IOObjectRelease(iterator);
    if (v54 != 1)
    {
      goto LABEL_44;
    }

    IOObjectRelease(v45);
    v45 = v55;
  }

  while (!IOObjectConformsTo(v55, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(v55, @"Whole", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("Did not find Whole property on IOMedia class", v57, v58, v59, v60, v61, v62, v63, v111);
    goto LABEL_51;
  }

  v64 = CFProperty;
  v65 = CFGetTypeID(CFProperty);
  if (v65 != CFBooleanGetTypeID())
  {
    v101 = "Expected Whole to be BOOLean";
LABEL_50:
    _partition_log(v101, v66, v67, v68, v69, v70, v71, v72, v111);
    CFRelease(v64);
LABEL_51:
    v42 = 0;
    goto LABEL_52;
  }

  if (!CFBooleanGetValue(v64))
  {
    v101 = "Expected Whole=true";
    goto LABEL_50;
  }

  CFRelease(v64);
  v73 = IORegistryEntryCreateCFProperty(v55, @"BSD Name", kCFAllocatorDefault, 0);
  if (!v73)
  {
    _partition_log("no BSD device name for service %s", v74, v75, v76, v77, v78, v79, v80, "EmbeddedDeviceTypeRoot");
    goto LABEL_51;
  }

  v81 = v73;
  v82 = CFGetTypeID(v73);
  if (v82 == CFStringGetTypeID())
  {
    strcpy(a1, "/dev/");
    v90 = strlen(a1);
    if (CFStringGetCString(v81, &a1[v90], 32 - v90, 0x8000100u))
    {
      _partition_log("Using device path %s for %s\n", v91, v92, v93, v94, v95, v96, v97, a1);
      v98 = -10;
      while (1)
      {
        if (!access(a1, 0))
        {
          v42 = 1;
          goto LABEL_61;
        }

        if (*__error() != 2)
        {
          break;
        }

        sleep(3u);
        if (__CFADD__(v98++, 1))
        {
          goto LABEL_58;
        }
      }

      v103 = __error();
      strerror(*v103);
      _partition_log("stat error while waiting for device '%s': %s\n", v104, v105, v106, v107, v108, v109, v110, a1);
LABEL_58:
      v111 = "EmbeddedDeviceTypeRoot";
      v102 = "timeout waiting for %s";
    }

    else
    {
      v102 = "failed to create C string from BSD name";
    }

    _partition_log(v102, v91, v92, v93, v94, v95, v96, v97, v111);
  }

  else
  {
    _partition_log("returnbed BSD device name for service %s is wrong type", v83, v84, v85, v86, v87, v88, v89, "EmbeddedDeviceTypeRoot");
  }

  v42 = 0;
LABEL_61:
  CFRelease(v81);
LABEL_52:
  IOObjectRelease(v55);
  IOObjectRelease(v44);
  return v42;
}

uint64_t _partition_execution_log()
{
  if (_executionLoggingPtr)
  {
    return _executionLoggingPtr();
  }

  return result;
}

void __copy_helper_block_e8_32o40b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void __destroy_helper_block_e8_32o40b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

CFStringRef checkpoint_nvram_encode_string(uint64_t a1, const char **a2)
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

CFStringRef checkpoint_nvram_encode_id_string(uint64_t a1, unsigned int *a2)
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

CFStringRef checkpoint_nvram_encode_long(uint64_t a1, void *a2)
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

CFStringRef checkpoint_nvram_encode_by_boot(uint64_t a1, const __CFString *a2)
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
          v8 = checkpoint_append_and_free_key_v(v8, checkpoint_boot_type_name[v9], v12, &v15);
          v16 = v8;
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      v16 = checkpoint_append_and_free(v8, "}", v12, v3, v4, v5, v6, v7, v14);
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

CFStringRef checkpoint_nvram_encode_by_id(uint64_t a1, const __CFString *a2)
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
          v8 = checkpoint_append_and_free_id_v(v8, *(p_info - 2), v11, &v14);
          v15 = v8;
        }

        p_info += 2;
        --v10;
      }

      while (v10);
      v15 = checkpoint_append_and_free(v8, "}", v11, v3, v4, v5, v6, v7, v13);
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

int *checkpoint_nvram_encode_by_id_int(uint64_t a1, int *a2)
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
            v14 = checkpoint_append_and_free_id_v(v14, *v2, v12, &v13);
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
      v14 = checkpoint_append_and_free(v14, "}", v3, v4, v5, v6, v7, v8, v11);
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

CFStringRef checkpoint_nvram_encode_by_id_try(uint64_t a1, const __CFString *a2)
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
                  v22 = checkpoint_append_and_free_try_v(v22, v12, v20, &v21);
                  if (v20)
                  {
                    free(v20);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v14 = checkpoint_append_and_free(v22, "}", v3, v4, v5, v6, v7, v8, v17);
            if (v14)
            {
              v15 = v14;
              v19 = checkpoint_append_and_free_id_v(v19, *v11, v14, &v18);
              free(v15);
            }
          }
        }

        ++v9;
        p_info += 9;
      }

      while (v9 != 8);
      v19 = checkpoint_append_and_free(v19, "}", v3, v4, v5, v6, v7, v8, v17);
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

CFStringRef checkpoint_nvram_encode_by_id_try_int(uint64_t a1, const __CFString *a2)
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
                  v21 = checkpoint_append_and_free_try_v(v21, v12, v19, &v20);
                  if (v19)
                  {
                    free(v19);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v13 = checkpoint_append_and_free(v21, "}", v3, v4, v5, v6, v7, v8, v16);
            if (v13)
            {
              v14 = v13;
              v18 = checkpoint_append_and_free_id_v(v18, *v11, v13, &v17);
              free(v14);
            }
          }
        }

        ++v9;
        v10 = (v10 + 44);
      }

      while (v9 != 8);
      v18 = checkpoint_append_and_free(v18, "}", v3, v4, v5, v6, v7, v8, v16);
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

uint64_t checkpoint_nvram_is_available(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
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
              checkpoint_nvram_collect(a1, v20, a3, a4, a5, a6, a7, a8);
            }

            if (*a1 == 1)
            {
              v28 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v28 == 2)
                {
                  v38 = &checkpoint_nvram_ota_monitor_aware_awoken;
                }

                else
                {
                  v38 = &checkpoint_nvram_restore_monitor_aware_awoken;
                }
              }

              else
              {
                if (v28 == 2)
                {
                  v30 = checkpoint_nvram_check_collection(a1, v20, checkpoint_nvram_ota_monitor_aware_init, v23, v24, v25, v26, v27);
                  checkpoint_nvram_delete_var_if_matches(a1, v20);
                  goto LABEL_53;
                }

                v38 = &checkpoint_nvram_restore_monitor_aware_init;
              }

              v30 = checkpoint_nvram_check_collection(a1, v20, v38, v23, v24, v25, v26, v27);
LABEL_53:
              if (!v20[6])
              {
                goto LABEL_111;
              }

              outcome_type = checkpoint_get_outcome_type(a1, v20, v32, v33, v34, v35, v36, v37);
              if (outcome_type < 0x22)
              {
                v50 = &checkpoint_outcome_attributes[3 * outcome_type];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v43, v44, v45, v46, v47, v48, v49, "checkpoint_get_outcome_attributes");
                v50 = checkpoint_outcome_attributes;
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
                    checkpoint_nvram_store_anomaly(a1, v31, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
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
                  checkpoint_get_nvram_value_string(v51, v82);
                  checkpoint_nvram_store_anomaly(a1, v69, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v53 = v20[7];
                if (!v53 || CFStringCompare(v53, @"true", 0))
                {
LABEL_99:
                  checkpoint_get_nvram_value_string(v51, v82);
                  checkpoint_nvram_store_anomaly(a1, v68, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v17 == 2)
                    {
                      v71 = 0;
                      v72 = (a1 + 1520);
                      v73 = &dword_100099DD0;
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
                    checkpoint_nvram_delete_var_raw(@"boot-breadcrumbs");
                    checkpoint_nvram_delete_var_raw(@"OTA-pre-conversion");
                    checkpoint_nvram_delete_var_raw(@"OTA-post-conversion");
                    checkpoint_nvram_delete_var_raw(@"ota-conv-panic-indicator");
                    checkpoint_nvram_delete_var_raw(@"OTA-fsck-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-sealvolume-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-migrator-metrics");
                    for (i = 0; i != 28; ++i)
                    {
                      v79 = &checkpoint_nvram_map[4 * dword_100082BA8[i]];
                      checkpoint_nvram_delete_var_raw(v79[1]);
                      checkpoint_nvram_delete_var_raw(*v79);
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

                    checkpoint_outcome_progress(a1, v80, v32, v33, v34, v35, v36, v37);
                  }

                  else
                  {
                    checkpoint_outcome_init(a1, 1, v32, v33, v34, v35, v36, v37);
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
                v40 = checkpoint_nvram_check_collection(a1, v20, checkpoint_nvram_ota_engine_aware_step, v23, v24, v25, v26, v27);
                checkpoint_nvram_delete_var_if_matches(a1, v20);
                goto LABEL_71;
              }

              v41 = &checkpoint_nvram_restore_engine_aware_step;
            }

            else if (v39 == 2)
            {
              v41 = &checkpoint_nvram_ota_engine_aware_init;
            }

            else
            {
              v41 = &checkpoint_nvram_restore_engine_aware_init;
            }

            v40 = checkpoint_nvram_check_collection(a1, v20, v41, v23, v24, v25, v26, v27);
LABEL_71:
            if (!v20[6])
            {
              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (v20[8])
                {
                  checkpoint_nvram_delete_var(a1, 7, 0, 0, v34, v35, v36, v37);
                }

                v63 = v20[3];
                if (v63 && CFStringCompare(v63, @"recover", 0))
                {
                  checkpoint_nvram_delete_var(a1, 2, 1, 0, v34, v35, v36, v37);
                }

                if (v20[4])
                {
                  checkpoint_nvram_delete_var(a1, 3, 1, 0, v34, v35, v36, v37);
                }
              }

              goto LABEL_103;
            }

            v54 = checkpoint_get_outcome_type(a1, v20, v32, v33, v34, v35, v36, v37);
            if (v54 < 0x22)
            {
              v62 = &checkpoint_outcome_attributes[3 * v54];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v55, v56, v57, v58, v59, v60, v61, "checkpoint_get_outcome_attributes");
              v62 = checkpoint_outcome_attributes;
            }

            v64 = v20[6];
            bzero(v82, 0x400uLL);
            if (*v62 != 1)
            {
              if (*(v62 + 6))
              {
                if (v20[8])
                {
                  checkpoint_reboot_retry_chassis_aware(a1, v64, v32, v33, v34, v35, v36, v37, v81);
                }

                else
                {
                  checkpoint_get_nvram_value_string(v64, v82);
                  checkpoint_nvram_store_anomaly(a1, v70, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
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
                checkpoint_get_nvram_value_string(v64, v82);
                checkpoint_nvram_store_anomaly(a1, v66, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
LABEL_103:
                if (v40 && !*(a1 + 104))
                {
                  checkpoint_nvram_store_anomaly(a1, v31, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v65)
            {
              goto LABEL_103;
            }

            checkpoint_reboot_retry_chassis_aware(a1, v64, v32, v33, v34, v35, v36, v37, v81);
            goto LABEL_103;
          }
        }

        else
        {
          checkpoint_nvram_collect_var(a1, 1u, 0x2Fu, (a1 + 1080));
          if (!*(a1 + 1080))
          {
            *(a1 + 2296) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            checkpoint_nvram_delete_var(a1, 47, 0, 0, a5, a6, a7, a8);
          }

          *(a1 + 2297) = 1;
          *(a1 + 692) = 0;
          v13 = (a1 + 1016);
          v14 = -4;
          do
          {
            checkpoint_nvram_collect_var(a1, 1u, v14 + 43, v13++);
          }

          while (!__CFADD__(v14++, 1));
          *(a1 + 2296) = 1;
        }
      }

      *(a1 + 688) = 2;
      if (!v8)
      {
        checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v11 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    checkpoint_outcome_init(a1, v11, a3, a4, a5, a6, a7, a8);
  }

  return v11;
}

void *checkpoint_history_add(uint64_t a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
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
      checkpoint_nvram_store_by_id_try_int(a1, 13, *(v17 + 14) | 0x11070000u, *(v17 + 18), *(v17 + 19), v22, v23, v24);
      v28 = v17[10];
      if (v28)
      {
        Code = CFErrorGetCode(v28);
        Domain = CFErrorGetDomain(v17[10]);
        v31 = checkpoint_cferror_alloc_string(v17[10]);
        checkpoint_nvram_store_by_id_try_int(a1, 15, *(v17 + 22), *(v17 + 18), Code, v32, v33, v34);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          checkpoint_nvram_store_by_id_try(a1, 16, *(v17 + 22), *(v17 + 18), buffer, v35, v36, v37);
        }

        if (v31)
        {
          checkpoint_nvram_store_by_id(a1, 17, *(v17 + 22), v31, v21, v22, v23, v24);
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
        checkpoint_nvram_store_by_id_try_int(a1, 13, v27 | 0x11070000u, v20, 0, v22, v23, v24);
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
      checkpoint_nvram_store_long(a1, 18, v25, v20, v21, v22, v23, v24);
      checkpoint_nvram_store_long(a1, 21, *(v17 + 14), v74, v75, v76, v77, v78);
      goto LABEL_77;
    }

    if (v26 == 6)
    {
      checkpoint_nvram_store_by_id_try(a1, 14, *(v17 + 22), *(v17 + 18), v17[8], v22, v23, v24);
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

      checkpoint_nvram_store_by_id(a1, 12, v39, v17[8], v21, v22, v23, v24);
    }

    goto LABEL_76;
  }

  if (v26 == 1)
  {
    checkpoint_nvram_store_by_id(a1, 10, *(v17 + 22), v17[8], v21, v22, v23, v24);
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
    v86 = checkpoint_history_type_name[v85];
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
          v121 = checkpoint_engine_name[v119];
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

    v101 = checkpoint_nvram_copy_encode_c_string(a1, 9, v88, v89, v90, v91, v92, v93);
    v107 = checkpoint_nvram_copy_string(a1, a1 + 1088, 12, v102, v103, v104, v105, v106);
    v108 = v107;
    v109 = *(a1 + 108);
    if (v109 > 6)
    {
      v110 = "GENERAL";
    }

    else
    {
      v110 = checkpoint_failure_type_name[v109];
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
    v99 = checkpoint_nvram_copy_encode_c_string(a1, 13, v88, v89, v90, v91, v92, v93);
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
    v100 = checkpoint_cferror_alloc_string(v17[10]);
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

void checkpoint_nvram_collect(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    checkpoint_nvram_collect_var(a1, *a2, v11, (v12 + v10));
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
        checkpoint_get_nvram_value_string(v18, v24);
        checkpoint_nvram_store_string(a1, (v11 - 4), v24, v19, v20, v21, v22, v23);
LABEL_13:
        checkpoint_nvram_delete_var(a1, v11, 0, 0, v13, v14, v15, v16);
      }
    }

    ++v11;
    v10 += 8;
  }

  while (v11 != 48);
  *(a2 + 4) = 1;
}

uint64_t checkpoint_get_outcome_type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = checkpoint_nvram_copy_string(a1, a2, 5, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    if (!strcmp(v9, checkpoint_outcome_names[v10]))
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

void checkpoint_nvram_store_anomaly(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, a3, va);
  if (v8[0])
  {
    checkpoint_history_add(a1, 30, 1, 0, 260, v8[0], 0, 0, 0);
    checkpoint_nvram_store_by_id(a1, 8, *(a1 + 120), v8[0], v4, v5, v6, v7);
    if (v8[0])
    {
      free(v8[0]);
      v8[0] = 0;
    }
  }

  ++*(a1 + 120);
}

void checkpoint_outcome_progress(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 96);
  v9 = *(&checkpoint_outcome_progress_table + v8);
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
      v13 = checkpoint_outcome_names[v12];
    }

    checkpoint_nvram_store_string(a1, 5, v13, a4, a5, a6, a7, a8);

    checkpoint_log_progress(a1, a2);
  }
}

void checkpoint_nvram_delete_var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0x30)
  {
    v9 = &checkpoint_nvram_map[4 * a2];
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
      checkpoint_nvram_delete_var_raw(v11);
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

char *checkpoint_get_nvram_value_string(const __CFString *a1, char *a2)
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

void checkpoint_nvram_store_string(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
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

      checkpoint_nvram_store_set_string(a1 + 1480, v12, a3, a4, a5, a6, a7, a8);
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

void checkpoint_access_obtain(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void checkpoint_access_yield(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

timeval *checkpoint_time_copy_current_time()
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

  result = checkpoint_time_copy_current_time();
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

  result = checkpoint_time_copy_current_time();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(uint64_t a1, int a2, __CFError *a3)
{
  if (a3)
  {
    v6 = checkpoint_chassis_context;
    if (!checkpoint_error_is_cancel_error(a3))
    {
      v13 = *(a1 + 8);
      if (!v13 || (*(v13 + 36) & 3) == 0 || !checkpoint_tolerated_treat_as_success_minimized(v6, v13))
      {
        checkpoint_access_obtain(v6, v13, v7, v8, v9, v10, v11, v12);
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
          checkpoint_chassis_set_global_async_error(v6, a2, a3, *(a1 + 8));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v22 + 144) && !*(v22 + 137))
        {
          checkpoint_engine_set_async_error(v22, a2, a3, *(a1 + 8));
          for (i = *v21; i != v22; i = *i)
          {
            checkpoint_engine_cancel(i);
          }

          checkpoint_engine_cancel(v22);
        }

LABEL_19:

        checkpoint_access_yield(v6, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

__CFError *checkpoint_error_is_cancel_error(__CFError *result)
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

uint64_t checkpoint_tolerated_treat_as_success_minimized(uint64_t a1, uint64_t a2)
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

        failed_entry = checkpoint_tolerated_get_failed_entry(*(a1 + 2280), v15);
        if (failed_entry && (!*(a1 + 104) || *(failed_entry + 48) == 1 && *(failed_entry + 14)))
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

__n128 checkpoint_engine_set_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
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
      checkpoint_engine_set_async_error_cold_1();
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

void *checkpoint_engine_cancel(void *result)
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

__n128 checkpoint_chassis_set_global_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
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
      checkpoint_chassis_set_global_async_error_cold_1();
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

char *checkpoint_cferror_alloc_string(CFErrorRef err)
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
    v2 = checkpoint_append_and_free(v2, "[%d]", v5, v6, v7, v8, v9, v10, v3);
    if (!v4)
    {
      break;
    }

    v22 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v12 = checkpoint_cferror_append(v2, "RS", Value, &v22);
    v13 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v14 = checkpoint_cferror_append(v12, "LD", v13, &v22);
    v15 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v16 = checkpoint_cferror_append(v14, "D", v15, &v22);
    v17 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = checkpoint_cferror_append(v16, "FR", v17, &v22);
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

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  v9 = *a1;
  v10 = checkpoint_chassis_context;

  return checkpoint_simulator_action(v10, v9, a2, a3, a4, a6, a7, a8);
}

uint64_t checkpoint_simulator_action(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __CFError **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a5 && checkpoint_error_is_cancel_error(*a5))
  {
    return 0;
  }

  v14 = v10;
  checkpoint_access_obtain(a1, a2, a3, a4, a5, a6, a7, a8);
  checkpoint_simulator_configure(a1, v15, v16, v17, v18, v19, v20, v21);
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
        checkpoint_history_add(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      checkpoint_access_yield(a1, v22, v23, v24, v25, v26, v27, v28);
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
              v57 = checkpoint_cferror_alloc_string(*a5);
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
            checkpoint_simulator_jetsam();
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
                checkpoint_simulator_jetsam();
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
  checkpoint_access_yield(a1, v22, v23, v24, v25, v26, v27, v28);
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

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  v8 = *a1;
  v9 = checkpoint_chassis_context;

  return checkpoint_simulator_action_match(v9, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t checkpoint_simulator_action_match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  checkpoint_access_obtain(a1, a2, a3, a4, a5, a6, a7, a8);
  checkpoint_simulator_configure(a1, v10, v11, v12, v13, v14, v15, v16);
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

    checkpoint_access_yield(a1, v25, v26, v27, v28, v29, v30, v31);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    checkpoint_access_yield(a1, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  return v35;
}

char *checkpoint_append_and_free_key_v(char *a1, const char *a2, const char *a3, int *a4)
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

char *checkpoint_append_and_free(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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

char *checkpoint_append_and_free_id_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *checkpoint_append_and_free_try_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void checkpoint_outcome_init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  checkpoint_nvram_store_string(a1, 5, checkpoint_outcome_names[v9], a4, a5, a6, a7, a8);

  checkpoint_log_progress(a1, 1);
}

void checkpoint_nvram_collect_var(uint64_t a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v54, 0x400uLL);
  if (a3 < 0x30)
  {
    if (*(a1 + 88) == 1)
    {
      v16 = &checkpoint_nvram_map[4 * a3];
    }

    else
    {
      v16 = &checkpoint_nvram_map[4 * a3 + 1];
    }

    v17 = *v16;
    CFStringGetCString(*v16, buffer, 1024, 0x8000100u);
    v18 = ramrod_copy_NVRAM_variable(v17, &cf);
    if (!v18)
    {
      if (!cf)
      {
        return;
      }

      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to read %s\n", v19, v20, v21, v22, v23, v24, v25, "checkpoint_nvram_collect_var");
      goto LABEL_3;
    }

    v15 = v18;
    v26 = CFGetTypeID(v18);
    if (v26 == CFStringGetTypeID())
    {
      CFStringGetCString(v15, v54, 1024, 0x8000100u);
      *a4 = v15;
      v15 = 0;
      goto LABEL_24;
    }

    if (v26 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
      {
        v35 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_31;
      }

      v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v34)
      {
        v35 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_31:
        ramrod_log_msg(v35, v27, v28, v29, v30, v31, v32, v33, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }
    }

    else
    {
      if (v26 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }

      v34 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v15, 0x8000100u);
      if (!v34)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n", v43, v44, v45, v46, v47, v48, v49, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }
    }

    v50 = v34;
    CFStringGetCString(v34, v54, 1024, 0x8000100u);
    *a4 = v50;
LABEL_24:
    valuePtr = 0;
    if (a2 > 2)
    {
      v51 = "Unknown";
    }

    else
    {
      v51 = checkpoint_nvram_collection_name[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v51, buffer, v54);
    if (valuePtr)
    {
      checkpoint_history_add(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_4;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_nvram_collect_var");
LABEL_3:
  v15 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t checkpoint_nvram_adjust_id(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      return LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t checkpoint_nvram_check_collection(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
          v15 = v9 <= 0x2F && (LODWORD(checkpoint_nvram_map[4 * v9 + 3]) - 2) < 3;
          checkpoint_nvram_delete_var(a1, v9, v15, 1, a5, a6, a7, a8);
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
          v23 = &checkpoint_nvram_map[4 * v9];
        }

        else
        {
          v23 = &checkpoint_nvram_map[4 * v9 + 1];
        }

        CFStringGetCString(*v23, buffer, 1024, 0x8000100u);
        checkpoint_nvram_store_anomaly(a1, v24, "[check_collection]%s(does_not_exist)", buffer);
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
  v28 = off_100099DE0;
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
      checkpoint_get_nvram_value_string(*(v27 + 8 * v26), v37);
      checkpoint_nvram_store_anomaly(a1, v30, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v37);
      checkpoint_nvram_delete_var(a1, (v26 + 1), 0, 1, v31, v32, v33, v34);
    }

    ++v26;
    v28 += 4;
  }

  while (v26 != 47);
  if (!v10)
  {
    checkpoint_history_add(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v11;
}

void checkpoint_nvram_delete_var_if_matches(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    checkpoint_nvram_delete_var(a1, 2, 1, 0, v4, v5, v6, v7);
  }
}

void checkpoint_reboot_retry_chassis_aware(_BYTE *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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
    checkpoint_get_nvram_value_string(a2, v12);
    checkpoint_nvram_store_anomaly(a1, v11, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v12);
  }
}

void checkpoint_nvram_delete_var_raw(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void checkpoint_log_progress(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = checkpoint_outcome_names[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = checkpoint_outcome_names[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", checkpoint_progress_names[a2], v4, v6);
  if (v7)
  {
    checkpoint_history_add(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t checkpoint_nvram_alloc_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = checkpoint_nvram_adjust_id(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 > 0x2F)
  {
    v10 = 0;
  }

  else
  {
    v10 = HIDWORD(checkpoint_nvram_map[4 * v9 + 2]);
  }

  v11 = checkpoint_nvram_encoder[v10];
  v12 = *(a1 + 16 * v9 + 1520);

  return (v11)(a1, v12);
}

void checkpoint_nvram_store_by_id(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
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
        checkpoint_nvram_store_set_string(a1 + 1480, (a2 + 8), a4, a4, a5, a6, a7, a8);
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

void checkpoint_nvram_store_long(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
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

void checkpoint_nvram_store_by_id_try_int(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
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

void checkpoint_nvram_store_by_id_try(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
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
        checkpoint_nvram_store_set_string(a1 + 1480, &v17[2 * v9 + 2], a5, a4, a5, a6, a7, a8);
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

void checkpoint_nvram_store_set_string(uint64_t a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

char *checkpoint_nvram_copy_encode_c_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = checkpoint_nvram_alloc_encode(a1, a2, a3, a4, a5, a6, a7, a8);
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

char *checkpoint_nvram_copy_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      LODWORD(a3) = checkpoint_nvram_map[4 * a3 + 2];
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

const __CFDictionary *checkpoint_tolerated_get_failed_entry(const __CFDictionary *a1, uint64_t a2)
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

char *checkpoint_cferror_append(char *a1, char a2, const __CFString *a3, _BYTE *a4)
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

    a1 = checkpoint_append_and_free(a1, v14, v8, v9, v10, v11, v12, v13, a2);
    *a4 = 1;
  }

  return a1;
}

void checkpoint_simulator_configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 2298) && checkpoint_nvram_is_available(a1, 0, 0, a4, a5, a6, a7, a8))
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
      v12 = checkpoint_history_type_name[v11];
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

void *checkpoint_simulator_jetsam()
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

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

uint64_t ramrod_execute_command_with_config(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v126 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", a2, a3, a4, a5, a6, a7, a8, *a1);
  *v132 = -1;
  *v133 = -1;
  ramrod_log_msg("executing %s", v10, v11, v12, v13, v14, v15, v16, *a1);
  v24 = a1[1];
  if (v24)
  {
    v25 = a1 + 2;
    v26 = 1;
    do
    {
      ramrod_log_msg(" %s", v17, v18, v19, v20, v21, v22, v23, v24);
      if (v26 > 8)
      {
        break;
      }

      ++v26;
      v27 = *v25++;
      LOBYTE(v24) = v27;
    }

    while (v27);
  }

  ramrod_log_msg("\n", v17, v18, v19, v20, v21, v22, v23, v122);
  if (pipe(v133) == -1)
  {
    v39 = *a1;
    v40 = __error();
    strerror(*v40);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v41, v42, v43, v44, v45, v46, v47, v39);
    v48 = 0;
    v49 = -1;
    goto LABEL_43;
  }

  if (pipe(v132) == -1)
  {
    v50 = *a1;
    v51 = __error();
    strerror(*v51);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v52, v53, v54, v55, v56, v57, v58, v50);
    v37 = 0xFFFFFFFFLL;
    v38 = -1;
  }

  else
  {
    v123 = 1;
    fcntl(v132[1], 73);
    v128 = 0;
    posix_spawn_file_actions_init(&v128);
    posix_spawn_file_actions_adddup2(&v128, v132[0], 0);
    posix_spawn_file_actions_adddup2(&v128, v133[1], 1);
    posix_spawn_file_actions_adddup2(&v128, 2, 2);
    v127 = 0;
    posix_spawnattr_init(&v127);
    posix_spawnattr_setflags(&v127, 0x4000);
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v128);
    }

    v28 = posix_spawn(&v126, *a1, &v128, &v127, a1, 0);
    if (v28)
    {
      v29 = *a1;
      strerror(v28);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
      close(v133[0]);
      close(v132[1]);
      v37 = 0xFFFFFFFFLL;
      v38 = -1;
    }

    else
    {
      v37 = v132[1];
      v38 = v133[0];
      v60 = v126;
      if (v126 != -1)
      {
        v61 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v61)
        {
          v62 = v61;
          bzero(v135, 0x400uLL);
          v63 = basename_r(v62, v135);
          if (v63 && ((v64 = v63, v131 = 256, _get_image_exec_options_bootargs) || !sysctlbyname("kern.bootargs", &_get_image_exec_options_bootargs, &v131, 0, 0)) && (bzero(__str, 0x400uLL), v129 = 0, v130 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v64), _find_tagged_regex(&_get_image_exec_options_bootargs, v131, __str, &v130, &v129)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v65, v66, v67, v68, v69, v70, v71, v64);
            v72 = strtol(v130, 0, 0);
            free(v62);
            v80 = v72 & 0x1F;
            if ((v72 & 0x1F) != 0)
            {
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v73, v74, v75, v76, v77, v78, v79, v80);
              usleep(1000 * (v72 >> 8));
              if (kill(v60, v80) == -1)
              {
                v125 = *__error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v81, v82, v83, v84, v85, v86, v87, v80);
              }
            }
          }

          else
          {
            free(v62);
          }
        }

        v121 = a2[3];
        if (v121)
        {
          (*(v121 + 16))(v121, v126);
        }
      }
    }

    posix_spawnattr_destroy(&v127);
    posix_spawn_file_actions_destroy(&v128);
    close(v132[0]);
  }

  close(v133[1]);
  v48 = 0;
  v49 = -1;
  if (v38 != -1 && v37 != -1)
  {
    bzero(v135, 0x400uLL);
    v59 = a2[1];
    if (v59)
    {
      v48 = (*(v59 + 16))(v59, v37) != 0;
    }

    else
    {
      v48 = 0;
    }

    close(v37);
    v88 = read(v38, v135, 0x3FFuLL);
    if (v88 >= 1)
    {
      for (i = v88; i > 0; i = read(v38, v135, 0x3FFuLL))
      {
        v135[i] = 0;
        v96 = a2[2];
        if (v96)
        {
          (*(v96 + 16))(v96, v135);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n", v89, i, v91, v92, v93, v94, v95, v123);
    *__str = 0;
    if (waitpid(v126, __str, 0) == -1)
    {
      v111 = *a1;
      v112 = __error();
      strerror(*v112);
      ramrod_log_msg("waitpid failed for %s: %s\n", v113, v114, v115, v116, v117, v118, v119, v111);
    }

    else
    {
      ramrod_log_msg("child exited\n", v97, v98, v99, v100, v101, v102, v103, v124);
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", v104, v105, v106, v107, v108, v109, v110, __str[1]);
          v49 = __str[1];
LABEL_42:
          close(v38);
          goto LABEL_43;
        }

        ramrod_log_msg("%s was terminated by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }
    }

    v49 = -1;
    goto LABEL_42;
  }

LABEL_43:
  if (v49 == 0 && v48)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v49;
  }
}

uint64_t _ramrod_execute_command_with_input_data_output_block(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke;
  aBlock[3] = &__block_descriptor_33_e10_i16__0__v8l;
  v24 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke_2;
  v22[3] = &__block_descriptor_48_e8_i12__0i8l;
  v22[4] = a2;
  v22[5] = a3;
  v12 = _Block_copy(v22);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v20 = ramrod_execute_command_with_config(a1, v10, v14, v15, v16, v17, v18, v19);
  ramrod_execute_config_free(v10);
  return v20;
}

uint64_t ramrod_execute_command(uint64_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __ramrod_execute_command_with_callback_block_invoke;
  v2[3] = &__block_descriptor_48_e13_v24__0r_v8Q16l;
  v2[4] = log_output_buf;
  v2[5] = 0;
  return _ramrod_execute_command_with_input_data_output_block(a1, 0, 0, 1, v2);
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "wait_for_device");
  if (!a1)
  {
    wait_for_device_cold_4(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  if (!a2)
  {
    wait_for_device_cold_3(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    wait_for_device_cold_2(a4, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  v27 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v27)
  {
    wait_for_device_cold_1(a4, a1, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  v34 = v27;
  v99 = a4;
  IOObjectRetain(v27);
  v35 = v34;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v35, "IOService", &iterator))
    {
      v78 = "Could not create child iterator\n";
LABEL_30:
      ramrod_log_msg(v78, v36, v37, v38, v39, v40, v41, v42, v98);
      st_dev = v35;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v80, v81, v82, "wait_for_device");
      v83 = 0;
      goto LABEL_36;
    }

    v43 = IOIteratorNext(iterator.st_dev);
    v44 = 0;
    if (!v43)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      v98 = v44;
      v78 = "Found %d child nodes (expected 1)\n";
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v43);
      }

      else
      {
        st_dev = v43;
      }

      v43 = IOIteratorNext(iterator.st_dev);
      ++v44;
    }

    while (v43);
    IOObjectRelease(iterator.st_dev);
    if (v44 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v35);
    v35 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v54 = CFProperty;
  if (!CFProperty)
  {
    v79 = "Did not find Whole property on IOMedia class\n";
LABEL_34:
    ramrod_log_msg(v79, v47, v48, v49, v50, v51, v52, v53, v98);
    CFRelease(v54);
    goto LABEL_35;
  }

  v55 = CFGetTypeID(CFProperty);
  if (v55 != CFBooleanGetTypeID())
  {
    v79 = "Expected Whole to be BOOLean\n";
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v54))
  {
    v79 = "Expected Whole=true\n";
    goto LABEL_34;
  }

  CFRelease(v54);
  v56 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v56)
  {
    v60 = v56;
    v61 = CFGetTypeID(v56);
    if (v61 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v65 = strlen(a2);
      if (CFStringGetCString(v60, &a2[v65], a3 - v65, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", v66, v67, v68, v69, v70, v71, v72, a2);
        v73 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v83 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v73++, 1))
          {
            goto LABEL_43;
          }
        }

        v85 = __error();
        strerror(*v85);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", v86, v87, v88, v89, v90, v91, v92, a2);
        v93 = *__error();
        v94 = __error();
        strerror(*v94);
        ramrod_create_error_cf(v99, kCFErrorDomainPOSIX, v93, 0, @"%s: stat error while waiting for device '%s': %s", v95, v96, v97, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v74, v75, v76, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v70, v71, v72, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v62, v63, v64, "wait_for_device");
    }

    v83 = 0;
LABEL_45:
    CFRelease(v60);
  }

  else
  {
    ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v57, v58, v59, "wait_for_device");
    v83 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v34);
  return v83;
}

uint64_t ramrod_probe_media_internal(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_probe_media_internal");
  storage_device_node_path_0 = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path_0 = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path_0 = 0;
  update_device_node_path_0 = 0;
  baseband_data_partition_device_node_path_0 = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path_0 = 0;
  iboot_system_container_device_node_path_0 = 0;
  recovery_preboot_partition_device_node_path = 0;
  isc_preboot_partition_device_node_path = 0;
  isc_recovery_os_volume_device_node_path = 0;
  paired_recovery_os_volume_device_node_path = 0;
  if (additional_encrypted_volume_node_paths)
  {
    CFRelease(additional_encrypted_volume_node_paths);
    additional_encrypted_volume_node_paths = 0;
  }

  if (additional_eds_volume_node_paths)
  {
    CFRelease(additional_eds_volume_node_paths);
    additional_eds_volume_node_paths = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    ramrod_probe_media_internal_cold_2(&cf, v10, v11, v12, v13, v14, v15, v16);
    v25 = 0;
    goto LABEL_12;
  }

  v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v25)
  {
    ramrod_probe_media_internal_cold_1(&cf, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path_0, 0x20uLL, &cf, v21, v22, v23, v24))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", v26, v27, v28, v29, v30, v31, v32, "EmbeddedDeviceTypeRoot");
LABEL_12:
    v47 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v33 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_1000B54CD);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v33);
  v42 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", v35, v36, v37, v38, v39, v40, v41, byte_1000B54CD);
LABEL_19:
    v47 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v43 = IORegistryEntryCreateIterator(v42, "IOService", 1u, &iterator);
  if (v43)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v43, 0, @"%s: unable to create child iterator", v44, v45, v46, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

  v160 = a1;
  v51 = IOIteratorNext(iterator);
  if (v51)
  {
    v47 = v51;
    LOBYTE(v52) = 0;
    v161 = 0;
    v53 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v47, "IOMedia"))
      {
        if (IOObjectConformsTo(v47, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v47, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n", v102, v103, v104, v105, v106, v107, v108, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v151 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v47, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v124, v125, v126, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n", v120, v121, v122, v123, v124, v125, v126, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v150 = "Preboot";
            v151 = "Scratch";
            v148 = "Recovery";
            v149 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v54 = IORegistryEntryGetName(v47, name);
      if (v54)
      {
        v138 = kCFErrorDomainMach;
        v139 = v54;
        v140 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v138, v139, 0, v140, v55, v56, v57, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v58 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
      if (v58)
      {
        v138 = kCFErrorDomainMach;
        v139 = v58;
        v140 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v52)
      {
        v52 = 1;
      }

      else
      {
        *buffer = 0u;
        v166 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v52 = Value && (v60 = Value, v61 = CFGetTypeID(Value), v61 == CFStringGetTypeID()) && CFStringGetCString(v60, buffer, 32, 0x600u) && (v62 = strlen(byte_1000B54CD), !strncmp(buffer, byte_1000B54CD, v62)) && strcmp("s1s1", &buffer[v62]) == 0;
      }

      v63 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v63 || (v71 = v63, !CFEqual(v63, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v71, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v52)
          {
            v145 = name;
            ramrod_log_msg("found system volume not at %ss1s1: %s\n", v64, v65, v66, v67, v68, v69, v70, &storage_device_node_path_0);
          }

          goto LABEL_84;
        }

        if (v158 && !strcmp(name, v158))
        {
          v109 = &data_device_node_path_0;
          goto LABEL_85;
        }

        if (v157 && !strcmp(name, v157))
        {
          v109 = &user_device_node_path_0;
          goto LABEL_85;
        }

        if (v156 && !strcmp(name, v156))
        {
          v109 = &update_device_node_path_0;
          goto LABEL_85;
        }

        if (v155 && !strcmp(name, v155))
        {
          v109 = &baseband_data_partition_device_node_path_0;
          goto LABEL_85;
        }

        if (v154 && !strcmp(name, v154))
        {
          v109 = &log_partition_device_node_path;
          goto LABEL_85;
        }

        if (v153 && !strcmp(name, v153))
        {
          if (!xart_partition_node_path || !ramrod_should_have_xart_partition())
          {
            v110 = 0;
            theArray = &xart_partition_node_path;
            goto LABEL_87;
          }

          v142 = kCFErrorDomainMach;
LABEL_178:
          v143 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v142, -536870911, 0, v143, v68, v69, v70, "ramrod_probe_media_internal");
LABEL_173:
          v141 = 0;
LABEL_174:
          v48 = 0;
          if (v160 >= 1 && v141)
          {
            sleep(1u);
            v48 = ramrod_probe_media_internal(v160 - 1, 0);
          }

LABEL_14:
          v49 = cf;
          if (a2 && !v48 && cf)
          {
            v48 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v152 && !strcmp(name, v152))
        {
          v109 = &hardware_partition_node_path;
          goto LABEL_85;
        }

        if (v151 && !strcmp(name, v151))
        {
          v109 = &scratch_partition_node_path;
          goto LABEL_85;
        }

        if (v150 && !strcmp(name, v150))
        {
          if (v161 != 1)
          {
            if (v161 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", v64, v65, v66, v67, v68, v69, v70, 2);
              v109 = &preboot_partition_device_node_path_0;
            }

            else
            {
              if (v161 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", v64, v65, v66, v67, v68, v69, v70, 3);
              v109 = &recovery_preboot_partition_device_node_path;
            }

            goto LABEL_85;
          }

          v134 = 1;
        }

        else
        {
          if (!v149 || strcmp(name, v149))
          {
            if (v148 && !strcmp(name, v148))
            {
              v109 = &recovery_os_volume_device_node_path_0;
            }

            else
            {
              if (!v52 || system_device_node_path_0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_155:
                theArray = 0;
                v110 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_84:
              LOBYTE(v52) = 1;
              v109 = &system_device_node_path_0;
            }

LABEL_85:
            if (*v109)
            {
              v142 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v109;
            v110 = 0;
LABEL_87:
            while (1)
            {
              v111 = CFDictionaryGetValue(properties, @"Leaf");
              if (v111)
              {
                if (CFBooleanGetValue(v111) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v47);
              CFRelease(properties);
              v112 = IOIteratorNext(iterator);
              if (!v112)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v113, v114, v115, "ramrod_probe_media_internal");
                v47 = 0;
                goto LABEL_173;
              }

              v47 = v112;
              while (!IOObjectConformsTo(v47, "IOMedia"))
              {
                IOObjectRelease(v47);
                v47 = IOIteratorNext(iterator);
                if (!v47)
                {
                  goto LABEL_172;
                }
              }

              v116 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
              if (v116)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v116, 0, @"%s: unable to get properties for media registry entry", v117, v118, v119, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v110)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v127 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v127)
                {
                  v128 = v127;
                  *buffer = 0;
                  v129 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v129)
                  {
                    CFNumberGetValue(v129, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v130 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v130 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v131 = Mutable;
                  }

                  else
                  {
                    v131 = v25;
                  }

                  theArraya = v131;
                  ramrod_log_msg_cf(v130, v128, v145);
                  v144 = "/dev/";
                  v145 = v128;
                  v132 = CFStringCreateWithFormat(0, 0, @"%s%@");
                  CFArrayAppendValue(theArraya, v132);
                  CFRelease(v132);
                }
              }
            }

            else
            {
              v133 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v133)
              {
                v142 = kCFErrorDomainMach;
                v143 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v166 = 0u;
              CFStringGetCString(v133, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v47);
            goto LABEL_73;
          }

          v134 = v161;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v64, v65, v66, v67, v68, v69, v70, v134);
        v109 = &isc_preboot_partition_device_node_path;
        goto LABEL_85;
      }

      v72 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v72)
      {
        ramrod_log_msg("APFS Container object with no bsd name", v73, v74, v75, v76, v77, v78, v79, v144);
        goto LABEL_173;
      }

      *buffer = 0u;
      v166 = 0u;
      CFStringGetCString(v72, buffer, 32, 0x8000100u);
      if (CFEqual(v71, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v161 = 3;
          v53 = &apfs_recovery_os_container_device_node_path_0;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v53 = &apfs_container_device_node_path_0;
          }

          else
          {
            v53 = &iboot_system_container_device_node_path_0;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v87 = 2;
          }

          else
          {
            v87 = 1;
          }

          v161 = v87;
        }

        snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
        v145 = v53;
        ramrod_log_msg("APFS Container '%s' %s\n", v88, v89, v90, v91, v92, v93, v94, name);
LABEL_70:
        if (!*v53)
        {
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v145 = v53;
          ramrod_log_msg("APFS Container '%s' %s\n", v95, v96, v97, v98, v99, v100, v101, name);
        }

        goto LABEL_72;
      }

      if (CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v53 && *v53)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", v80, v81, v82, v83, v84, v85, v86, buffer);
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v53 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n", v80, v81, v82, v83, v84, v85, v86, v144);
      }

      if (v53)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v47);
      CFRelease(properties);
LABEL_73:
      v47 = IOIteratorNext(iterator);
    }

    while (v47);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v135, v136, v137, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_170:
    v141 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v25) >= 1)
  {
    additional_encrypted_volume_node_paths = CFRetain(v25);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v47 = 0;
  additional_eds_volume_node_paths = CFRetain(Mutable);
LABEL_20:
  v48 = 1;
LABEL_21:
  v49 = cf;
LABEL_22:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
    IOObjectRelease(v47);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v42)
  {
    IOObjectRelease(v42);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v48;
}

uint64_t ramrod_get_apfs_container_device_node(char *a1, size_t __size)
{
  if (!apfs_container_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &apfs_container_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_get_system_partition_device_node(char *a1, size_t __size)
{
  if (!system_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &system_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_get_gestalt_BOOLean_answer()
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

uint64_t ramrod_should_have_xart_partition()
{
  v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v7)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n", v0, v1, v2, v3, v4, v5, v6, v47);
    IOObjectRelease(v7);
    v7 = 1;
  }

  v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v8)
  {
    v16 = v8;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n", v9, v10, v11, v12, v13, v14, v15, v47);
    IOObjectRelease(v16);
    v7 = 1;
  }

  v17 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v17)
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n", v18, v19, v20, v21, v22, v23, v24, v47);
    goto LABEL_22;
  }

  v25 = v17;
  CFProperty = IORegistryEntryCreateCFProperty(v17, @"has-xart", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v27 = CFProperty;
    v28 = CFGetTypeID(CFProperty);
    if (v28 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v36 = "IODeviceTree:/defaults/has-xart found\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      if (valuePtr)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

    else
    {
      v44 = CFGetTypeID(v27);
      if (v44 != CFDataGetTypeID())
      {
        goto LABEL_20;
      }

      *buffer = 0;
      if (CFDataGetLength(v27) == 4)
      {
        v50.location = 0;
        v50.length = 4;
        CFDataGetBytes(v27, v50, buffer);
        if (*buffer)
        {
          ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n", v29, v30, v31, v32, v33, v34, v35, v47);
          v7 = 1;
          goto LABEL_20;
        }

        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is not int sized\n";
      }
    }

    ramrod_log_msg(v36, v29, v30, v31, v32, v33, v34, v35, v47);
LABEL_20:
    CFRelease(v27);
  }

  IOObjectRelease(v25);
LABEL_22:
  if (v7)
  {
    v45 = "We should have an xART partition.\n";
  }

  else
  {
    v45 = "We should not have an xART partition.\n";
  }

  ramrod_log_msg(v45, v37, v38, v39, v40, v41, v42, v43, v47);
  return v7;
}

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(uint64_t a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v51, 0x400uLL);
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43[0] = "/sbin/mount_apfs";
  v43[1] = "-R";
  if (a3)
  {
    *&v44 = "-o";
    *(&v44 + 1) = "rdonly";
    v15 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", v8, v9, v10, v11, v12, v13, v14, a1);
  a2 = v51;
  __strlcpy_chk();
  if (!mkdtemp(v51))
  {
    v16 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", v17, v18, v19, v20, v21, v22, v23, *v16);
    a2 = v51;
    __strlcpy_chk();
  }

LABEL_7:
  v43[v15] = a1;
  v43[v15 | 1u] = a2;
  v43[v15 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v43))
  {
    ramrod_log_msg("mounting %s on %s failed\n", v24, v25, v26, v27, v28, v29, v30, a1);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v31, v32, v33, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info(v34, v35, v36, v37, v38, v39, v40, v41);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", v24, v25, v26, v27, v28, v29, v30, a1);
    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_dump_mounted_filesystem_info");
  v26 = 0;
  v8 = getmntinfo(&v26, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_dump_mounted_filesystem_info");
  if (v26)
  {
    if (v8 >= 1)
    {
      v23 = v8 + 1;
      v24 = 2168 * v8 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", v16, v17, v18, v19, v20, v21, v22, v26 + v24);
        --v23;
        v24 -= 2168;
      }

      while (v23 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n", v16, v17, v18, v19, v20, v21, v22, v25);
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_dump_mounted_filesystem_info");
}

BOOL _find_tagged_regex(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v20, 0, sizeof(v20));
  v9 = regcomp(&v20, a3, 265);
  if (v9)
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch = 0;
    v22 = 0uLL;
    regerror(v9, &v20, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", v13, v14, v15, v16, v17, v18, v19, &__pmatch);
    return 0;
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch.rm_so = 0;
    v22 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v20, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v22];
      }

      if (a5)
      {
        *a5 = *(&v22 + 1) - v22;
      }
    }

    regfree(&v20);
  }

  return v11;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke_2(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
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

uint64_t __os_cleanup_iorelease(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t _ioreg_property_is_nonzero(char *a1, const __CFString *a2)
{
  v4 = _ioreg_copy_property(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &_ioreg_property_is_nonzero_kZeroBytes, Length)))
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

BOOL _ioreg_property_exists(const __CFString *a1)
{
  v2 = _ioreg_copy_property("IODeviceTree:/defaults", a1);
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

CFTypeRef _ioreg_copy_property(char *path, const __CFString *a2)
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

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return __os_log_send_and_compose_impl(a1, v6, v5, 80, a5, v7, 16);
}

void OUTLINED_FUNCTION_2(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t __os_cleanup_iorelease_0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_0(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_ioclose(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      __os_cleanup_ioclose_cold_1(&v2, v3);
    }
  }

  return result;
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
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

BOOL OUTLINED_FUNCTION_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (_loggingPtr_0)
  {
    v12 = [v10 UTF8String];
    _loggingPtr_0("%s: %s\n", a2, v12);
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

BOOL _is_firmware_info_entry(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

uint64_t __os_cleanup_iorelease_1(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_1(&v2, v3);
    }
  }

  return result;
}

uint64_t AMSupportX509DecodeVerifyCertIssuer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 136);
  if (v8 != *(a1 + 104) || memcmp(*(a2 + 128), *(a1 + 96), v8))
  {
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert was not issued by issuer (subject != issuer)", a4, a5, a6, a7, a8, v24);
    return 18;
  }

  memset(v28, 0, sizeof(v28));
  v27 = 0;
  v25 = 0;
  v26 = 0;
  if (DERParseSequenceContent((a1 + 16), DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v28, 0x20uLL))
  {
    v17 = "decodeAlgId failed";
LABEL_12:
    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", v17, v12, v13, v14, v15, v16, v24);
    return 19;
  }

  if (DERParseBitString(a1 + 32, &v25, &v27))
  {
    v17 = "DERParseBitString(sig) failed";
    goto LABEL_12;
  }

  if (v27)
  {
    v17 = "numUnused != 0";
    goto LABEL_12;
  }

  v18 = _AMSupportX509DecodeRsaVerifySignatureDataWithOid(*(a2 + 208), *(a2 + 216), v25, v26, *a1, *(a1 + 8), *&v28[0], DWORD2(v28[0]));
  if (!v18)
  {
    AMSupportLogInternal(7, "AMSupportX509DecodeVerifyCertIssuer", "PKI: verify cert was issued and signed by issuer (success)", v19, v20, v21, v22, v23, v24);
    return 0;
  }

  AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert signature validation with issuer pubkey failed amstatus=%d", v19, v20, v21, v22, v23, v18);
  return 18;
}

uint64_t _AMSupportX509DecodeRsaVerifySignatureDataWithOid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v10[0] = a7;
  v10[1] = a8;
  if (DEROidCompare(v10, &oidSha1Rsa))
  {
    v11 = 0uLL;
    LODWORD(v12) = 0;
    if (AMSupportDigestSha1(a5))
    {
      return 6;
    }

    result = AMSupportRsaVerifySignatureSha1();
    if (result)
    {
      return 6;
    }
  }

  else if (DEROidCompare(v10, &oidSha256Rsa))
  {
    v11 = 0u;
    v12 = 0u;
    if (AMSupportDigestSha256(a5))
    {
      return 6;
    }

    result = AMSupportRsaVerifySignatureSha256();
    if (result)
    {
      return 6;
    }
  }

  else
  {
    return 13;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);

  return verify_pkcs1_sig(va2, a2, va, va1);
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[199] = 0;
  v23[200] = 0;
  bzero(v23, 0x638uLL);
  v22 = 64;
  v7 = *(a1 + 8);
  v21[0] = *a1;
  v21[1] = v7;
  memset(v20, 0, sizeof(v20));
  if (DERParseSequence(v21, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v20, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(&v20[0] + 1);
  v9 = *&v20[0];
  if (*(&v20[0] + 1))
  {
    v10 = 7;
    while (!*v9)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    v10 = v8 + 7;
    if ((v8 + 7) >= 0x208)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 7;
  }

LABEL_10:
  v22 = v10 >> 3;
  result = ccrsa_make_pub();
  if (!result)
  {
    if (&CCRSA_PKCS1_FAULT_CANARY && &_ccrsa_verify_pkcs1v15_digest)
    {
      v13 = *a3;
      v12 = a3[1];
      v15 = *a4;
      v14 = a4[1];
      result = ccrsa_verify_pkcs1v15_digest();
      if (result)
      {
        return result;
      }

      cc_cmp_safe();
      return 0;
    }

    LOBYTE(v20[0]) = 0;
    v17 = *a3;
    v16 = a3[1];
    v19 = *a4;
    v18 = a4[1];
    result = ccrsa_verify_pkcs1v15();
    if (!result && (v20[0] & 1) != 0)
    {
      return 0;
    }
  }

  return result;
}

void AMSupportSafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void AMSupportSafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

CFURLRef AMSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: theString is NULL", a4, a5, a6, a7, a8, "AMSupportCreateURLFromString");
    return 0;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFURLGetTypeID())
  {
    AMSupportLogInternal(4, "AMSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", v11, v12, v13, v14, v15, "AMSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v17 = CFGetTypeID(cf);
  if (v17 != CFStringGetTypeID())
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: invalid string", v18, v19, v20, v21, v22, "AMSupportCreateURLFromString");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

const __CFDictionary *AMSupportGetValueForKeyPathInDict(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Value = a2;
  if (!a2)
  {
    AMSupportGetValueForKeyPathInDict_cold_4(a1, 0, theString, a4, a5, a6, a7, a8, v30);
    return Value;
  }

  if (!theString)
  {
    AMSupportGetValueForKeyPathInDict_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    AMSupportGetValueForKeyPathInDict_cold_2(0, v10, v11, v12, v13, v14, v15, v16, v30);
    return 0;
  }

  v17 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v19 = Count;
    v20 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
      if (!ValueAtIndex)
      {
        break;
      }

      Value = CFDictionaryGetValue(Value, ValueAtIndex);
      if (Value)
      {
        if (v19 != ++v20)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    AMSupportGetValueForKeyPathInDict_cold_1(0, v22, v23, v24, v25, v26, v27, v28, v30);
    Value = 0;
  }

LABEL_9:
  CFRelease(v17);
  return Value;
}

uint64_t _AMSupportPlatformWriteDataToFileURLInternal(const __CFData *a1, const __CFURL *a2, int a3)
{
  v5 = AMSupportPlatformOpenFileStreamWithURL(a2, "wb");
  if (!v5)
  {
    return 4;
  }

  v6 = v5;
  if (a3)
  {
    v7 = fileno(v5);
    fcntl(v7, 48, 1);
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v10 = 4 * (fwrite(BytePtr, 1uLL, Length, v6) != Length);
  fclose(v6);
  return v10;
}

uint64_t AMSupportHttpCopyProxySettings(uint64_t a1, const void *a2)
{
  v3 = dispatch_semaphore_create(0);
  v11 = v3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (!&_RPCopyProxyDictionaryWithOptions || !&_RPRegistrationInvalidate || !&_RPRegisterForAvailability || !&_RPRegistrationResume)
  {
    AMSupportHttpCopyProxySettings_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    v17 = 0;
    goto LABEL_15;
  }

  v17 = RPRegisterForAvailability();
  if (!v17)
  {
    v20 = "failed to register for reverse proxy availability";
LABEL_14:
    AMSupportLogInternal(3, "AMSupportHttpCopyProxySettings", v20, v12, v13, v14, v15, v16, v37);
LABEL_15:
    Mutable = 0;
    goto LABEL_16;
  }

  RPRegistrationResume();
  v18 = dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  RPRegistrationInvalidate();
  if ((v39[3] & 1) == 0)
  {
    v21 = " after 5 seconds";
    if (!v18)
    {
      v21 = "";
    }

    v37 = v21;
    v20 = "No proxy available%s";
    goto LABEL_14;
  }

  if (a2)
  {
    Mutable = CFRetain(a2);
    if (CFDictionaryContainsKey(a2, @"TestReachability"))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
LABEL_19:
    CFDictionaryAddValue(Mutable, @"TestReachability", kCFBooleanFalse);
LABEL_20:
    v30 = RPCopyProxyDictionaryWithOptions();
    v22 = v30;
    if (v30)
    {
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings", "proxyInfo = %@", v31, v32, v33, v34, v35, v30);
    }

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  AMSupportHttpCopyProxySettings_cold_1(0, v23, v24, v25, v26, v27, v28, v29);
LABEL_16:
  v22 = 0;
  if (v11)
  {
LABEL_23:
    dispatch_release(v11);
  }

LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v38, 8);
  return v22;
}

intptr_t __AMSupportHttpCopyProxySettings_block_invoke(intptr_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  switch(a2)
  {
    case 3:
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationAborted";
      break;
    case 2:
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationProxyUnavailable";
      break;
    case 1:
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "Proxy available", a4, a5, a6, a7, a8, v11);
      *(*(*(v8 + 32) + 8) + 24) = 1;
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationProxyAvailable";
      break;
    default:
      return result;
  }

  AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", v9, a4, a5, a6, a7, a8, v11);
  v10 = *(v8 + 40);

  return dispatch_semaphore_signal(v10);
}

uint64_t AMSupportHttpURLSessionSendSync(void *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v7 = objc_autoreleasePoolPush();
  context = v7;
  v61 = 1;
  valuePtr = 1;
  if (!a1)
  {
    AMSupportHttpURLSessionSendSync_cold_3(v7, v8, v9, v10, v11, v12, v13, v14, v55);
LABEL_62:
    v43 = 2;
    goto LABEL_58;
  }

  if (!a2)
  {
    AMSupportHttpURLSessionSendSync_cold_2(v7, v8, v9, v10, v11, v12, v13, v14, v55);
    goto LABEL_62;
  }

  v15 = [a1 options];
  Value = CFDictionaryGetValue(v15, @"ValidResponses");
  if (Value)
  {
    TypeID = CFSetGetTypeID();
    v18 = CFGetTypeID(Value);
    if (TypeID != v18)
    {
      AMSupportHttpURLSessionSendSync_cold_1(v18, v19, v20, v21, v22, v23, v24, v25, v55);
      v43 = 16;
      goto LABEL_58;
    }
  }

  v60 = a2;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  do
  {
    if (v27)
    {
      CFRelease(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v29 = CFDictionaryGetValue(v15, @"Backoff");
    if (!v29 || !CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 1;
    }

    v30 = CFDictionaryGetValue(v15, @"MaxAttempts");
    if (!v30 || !CFNumberGetValue(v30, kCFNumberSInt32Type, &v61))
    {
      v61 = 1;
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x3052000000;
    v83 = __Block_byref_object_copy__0;
    v84 = __Block_byref_object_dispose__0;
    v85 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3052000000;
    v77 = __Block_byref_object_copy__0;
    v78 = __Block_byref_object_dispose__0;
    v79 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x3052000000;
    v71 = __Block_byref_object_copy__0;
    v72 = __Block_byref_object_dispose__0;
    v73 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v31 = dispatch_semaphore_create(0);
    v37 = v31;
    if (!v31)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "Failed to create semaphore", v32, v33, v34, v35, v36, v55);
      v27 = 0;
      v26 = 0;
      v43 = 2;
LABEL_21:
      v44 = -1;
      goto LABEL_24;
    }

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3254779904;
    v63[2] = ___AMSupportHttpURLSessionSendSyncNoRetry_block_invoke;
    v63[3] = &__block_descriptor_72_e8_32o40r48r56r64r_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
    v63[6] = &v74;
    v63[7] = &v68;
    v63[8] = &v64;
    v63[4] = v31;
    v63[5] = &v80;
    [a1 sendRequest:v60 completion:v63];
    dispatch_semaphore_wait(v37, 0xFFFFFFFFFFFFFFFFLL);
    if (v69[5])
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request failed with error %@", v38, v39, v40, v41, v42, v69[5]);
      v27 = 0;
      v26 = 0;
      if ([a1 sslEvalFailed])
      {
        v43 = 23;
      }

      else
      {
        v43 = 16;
      }

      goto LABEL_21;
    }

    v45 = v81[5];
    if (!v45)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request provided no response data", v38, v39, v40, v41, v42, v55);
      v27 = 0;
      v26 = 0;
      v43 = 16;
      goto LABEL_21;
    }

    v27 = v45;
    v26 = v75[5];
    v43 = 0;
    v44 = *(v65 + 6);
LABEL_24:

    if (v37)
    {
      dispatch_release(v37);
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v80, 8);
    if (v43)
    {
      if (v43 == 23)
      {
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "SSL trust evaluation failed", v46, v47, v48, v49, v50, v55);
        goto LABEL_54;
      }

      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed (status=%d)", v46, v47, v48, v49, v50, v43);
      v51 = 1;
      if (!v27)
      {
LABEL_29:
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed, httpResponseData is NULL", v46, v47, v48, v49, v50, v55);
        v51 = 1;
        if (!Value)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v51 = 0;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    if (!Value)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (![Value member:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v44)}])
    {
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP server returned unexpected HTTP response code %ld", v46, v47, v48, v49, v50, v44);
      goto LABEL_37;
    }

LABEL_34:
    if (!v51)
    {
      if (a3 && v27)
      {
        *a3 = CFRetain(v27);
      }

      if (a4 && v26)
      {
        *a4 = CFRetain(v26);
      }

      if (a5 && v44)
      {
        *a5 = v44;
      }

      goto LABEL_54;
    }

LABEL_37:
    v52 = v61;
    if (v28 < v61)
    {
      v53 = valuePtr * v28;
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "-------------------- Attempt %d of %d failed, sleeping for %d seconds --------------------", v46, v47, v48, v49, v50, v28);
      sleep(v53);
      v52 = v61;
    }

    ++v28;
  }

  while (v28 <= v52);
  if (v52 >= 2)
  {
    AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "!!!!!!!!!!!!!!!!!!!!!!!!!! Retries exhausted on attempt %d !!!!!!!!!!!!!!!!!!!!!!!!!!", v46, v47, v48, v49, v50, v52);
  }

LABEL_54:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_58:
  objc_autoreleasePoolPop(context);
  return v43;
}

void sub_100039C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t AMSupportHttpSendSync(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [[AMSupportStaticURLSession alloc] initWithOptions:a2];
  v12 = AMSupportHttpURLSessionSendSync(v11, a1, a3, a4, a5);
  [(AMSupportStaticURLSession *)v11 invalidateAndCancel];
  AMSupportSafeRelease(v11);
  objc_autoreleasePoolPop(v10);
  return v12;
}

void __copy_helper_block_e8_32o40r48r56r64r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void __destroy_helper_block_e8_32o40r48r56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void AMSupportLogInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = __chkstk_darwin();
  v11 = v10;
  v13 = v12;
  v14 = v9;
  bzero(__str, 0x1000uLL);
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  v16 = snprintf(__str, 0x1000uLL, "%s: ", v15);
  v17 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v11, 0x8000100u, kCFAllocatorNull);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_9;
  }

  v18 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v17, &a9);
  v19 = v18;
  if (!v18)
  {
LABEL_9:
    v27 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v20 = v16;
  v21 = 4096 - v16;
  Length = CFStringGetLength(v18);
  v23 = Length;
  if (4096 - v16 < Length && (v24 = malloc(v16 + Length + 1)) != 0)
  {
    v25 = v24;
    v21 = v23 + 1;
    memcpy(v24, __str, v16);
    v26 = v25;
  }

  else
  {
    v26 = 0;
    v25 = __str;
  }

  if (CFStringGetCString(v19, &v25[v20], v21, 0x8000100u))
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

LABEL_14:
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = "failed to format log message";
  }

  _logHandler(v14, v28);
  AMSupportSafeRelease(v17);
  AMSupportSafeRelease(v19);
  AMSupportSafeFree(v26);
}

uint64_t AMSupportPlatformCopyURLToNewTempDirectory(const __CFAllocator *a1, const char *a2, CFURLRef *a3)
{
  bzero(v17, 0x400uLL);
  bzero(__str, 0x400uLL);
  result = 1;
  if (a2 && a3)
  {
    _AMSupportPlatformTempDirCString(v17);
    v7 = snprintf(__str, 0x400uLL, "%s/%s", v17, a2);
    if (mkdtemp(__str))
    {
      v8 = CFURLCreateFromFileSystemRepresentation(a1, __str, v7, 1u);
      if (v8)
      {
        v9 = v8;
        result = 0;
        *a3 = v9;
      }

      else
      {
        unlink(__str);
        return 2;
      }
    }

    else
    {
      v10 = __error();
      strerror(*v10);
      AMSupportLogInternal(3, "AMSupportPlatformCopyURLToNewTempDirectory", "failed to create %s: %s", v11, v12, v13, v14, v15, __str);
      return 4;
    }
  }

  return result;
}

uint64_t _AMSupportPlatformTempDirCString(char *a1)
{
  v2 = getenv("TMPDIR");
  if (!v2 || (v3 = strlcpy(a1, v2, 0x400uLL), v3 - 1024 < 0xFFFFFFFFFFFFFC01) || (v4 = v3, access(a1, 7)))
  {
    v5 = confstr(65537, a1, 0x400uLL);
    if (v5 - 1024 < 0xFFFFFFFFFFFFFC01)
    {
LABEL_7:
      strcpy(a1, "/tmp/");
      return 5;
    }

    v4 = v5;
  }

  if (access(a1, 7))
  {
    goto LABEL_7;
  }

  return v4;
}

FILE *AMSupportPlatformOpenFileStreamWithURL(const __CFURL *a1, const char *a2)
{
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return fopen(buffer, a2);
  }

  AMSupportLogInternal(3, "AMSupportPlatformOpenFileStreamWithURL", "failed to convert url to file system representation", v4, v5, v6, v7, v8, v15);
  AMSupportLogInternal(8, "AMSupportPlatformOpenFileStreamWithURL", "%@", v10, v11, v12, v13, v14, a1);
  return 0;
}

uint64_t AMSupportX509ChainEvaluateTrust(__SecTrust *a1, CFArrayRef theArray, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = 0;
  v84 = 0;
  *__s1 = 0u;
  v82 = 0u;
  memset(v80, 0, sizeof(v80));
  *__s2 = 0u;
  v79 = 0u;
  memset(v77, 0, sizeof(v77));
  if (!a1)
  {
    AMSupportX509ChainEvaluateTrust_cold_3(0, theArray, a3, a4, a5, a6, a7, a8, v73);
LABEL_37:
    v42 = 4294967292;
    goto LABEL_13;
  }

  if (!theArray)
  {
    AMSupportX509ChainEvaluateTrust_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v73);
    goto LABEL_37;
  }

  if (!a3)
  {
    AMSupportX509ChainEvaluateTrust_cold_1(a1, theArray, 0, a4, a5, a6, a7, a8, v73);
    goto LABEL_37;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "trustedRootArray must be non NULL and have at least one element", v11, v12, v13, v14, v15, v73);
    v42 = 4294966387;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of trusted roots: %d", v17, v18, v19, v20, v21, Count);
  CertificateCount = SecTrustGetCertificateCount(a1);
  if (CertificateCount <= 0)
  {
    v74 = 0;
    v40 = "Array index of root server cert out of range. (%d)";
    v41 = 7;
LABEL_11:
    AMSupportLogInternal(v41, "AMSupportX509ChainEvaluateTrust", v40, v23, v24, v25, v26, v27, v74);
    *a3 = 6;
LABEL_12:
    v42 = 4294967246;
    goto LABEL_13;
  }

  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of server certificates: %d", v23, v24, v25, v26, v27, CertificateCount);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Checking server certificate %d of %d", v28, v29, v30, v31, v32, 0);
  CertificateAtIndex = SecTrustGetCertificateAtIndex(a1, 0);
  v39 = _SecCertificateCopyAMSupportCert(CertificateAtIndex, v77, &v84, v34, v35, v36, v37, v38);
  if (v39)
  {
    v74 = v39;
    v40 = "PKI: decoding top-level server cert failed with error 0x%08X";
LABEL_8:
    v41 = 3;
    goto LABEL_11;
  }

  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "First server cert length %d", v23, v24, v25, v26, v27, __s2[1]);
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_27:
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "Root cert not signed by any trusted roots.", v44, v45, v46, v47, v48, v75);
    v42 = 0;
    *a3 = 3;
  }

  else
  {
    v49 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v49);
      if (_SecCertificateCopyAMSupportCert(ValueAtIndex, v80, &v83, v51, v52, v53, v54, v55))
      {
        AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "PKI: decoding trusted root %d failed with error 0x%08X", v56, v57, v58, v59, v60, v49);
        goto LABEL_12;
      }

      AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Trusted root #%d has length %d", v56, v57, v58, v59, v60, v49);
      v66 = __s1[1];
      if (__s1[1] == __s2[1] && !memcmp(__s1[0], __s2[0], __s1[1]))
      {
        AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Root cert is identical to trusted root. (success)", v61, v62, v63, v64, v65, v75);
        goto LABEL_33;
      }

      v67 = AMSupportX509DecodeVerifyCertIssuer(v77, v80, v66, v61, v62, v63, v64, v65);
      if (v67 != 18)
      {
        break;
      }

      if (v83)
      {
        CFRelease(v83);
      }

      v83 = 0;
      if (++v49 >= CFArrayGetCount(theArray))
      {
        goto LABEL_27;
      }
    }

    if (v67)
    {
      v74 = v49;
      v40 = "PKI: verify cert was issued by trusted root %d failed with error 0x%08X";
      goto LABEL_8;
    }

    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: verify cert was issued by trusted root %d (success)", v23, v24, v25, v26, v27, v49);
LABEL_33:
    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Chain validation complete. (success)", v68, v69, v70, v71, v72, v76);
    v42 = 0;
    *a3 = 1;
  }

LABEL_13:
  if (v84)
  {
    CFRelease(v84);
    v84 = 0;
  }

  if (v83)
  {
    CFRelease(v83);
  }

  return v42;
}

uint64_t _SecCertificateCopyAMSupportCert(__SecCertificate *a1, unint64_t *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    _SecCertificateCopyAMSupportCert_cold_4(a1, a2, 0, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  if (!a2)
  {
    _SecCertificateCopyAMSupportCert_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  if (!a1)
  {
    _SecCertificateCopyAMSupportCert_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  v10 = SecCertificateCopyData(a1);
  if (!v10)
  {
    _SecCertificateCopyAMSupportCert_cold_1(0, v11, v12, v13, v14, v15, v16, v17, v34);
    return 99;
  }

  v18 = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v18);
  if (BytePtr && Length)
  {
    v26 = AMSupportX509DecodeCertificate(a2, BytePtr, Length);
    v32 = v26;
    if (v26)
    {
      AMSupportLogInternal(7, "_SecCertificateCopyAMSupportCert", "PKI: decoding cert failed with error 0x%08X", v27, v28, v29, v30, v31, v26);
    }

    else
    {
      *a3 = CFRetain(v18);
    }
  }

  else
  {
    AMSupportLogInternal(3, "_SecCertificateCopyAMSupportCert", "chain_blob must be non NULL and chain_blob_length must be non 0", v21, v22, v23, v24, v25, v34);
    v32 = 99;
  }

  CFRelease(v18);
  return v32;
}

void _AMAuthInstallFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallFinalize_cold_1();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

const __CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_1000A1550;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", v8, v9, v10, v11, v12, valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t _AMAuthInstallClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallTypeID = result;
  return result;
}

CFStringRef _AMAuthInstallCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _AMAuthInstallCopyFormattingDescription_cold_1();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallApFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(*(a1 + 16) + 32));
    SafeRelease(*(*(a1 + 16) + 48));
    SafeRelease(*(*(a1 + 16) + 56));
    SafeRelease(*(*(a1 + 16) + 104));
    SafeRelease(*(*(a1 + 16) + 120));
    SafeRelease(*(*(a1 + 16) + 136));
    SafeRelease(*(*(a1 + 16) + 144));
    SafeRelease(*(*(a1 + 16) + 152));
    SafeRelease(*(*(a1 + 16) + 176));
    SafeRelease(*(*(a1 + 16) + 184));
    SafeRelease(*(*(a1 + 16) + 192));
    SafeRelease(*(*(a1 + 16) + 200));
    SafeRelease(*(*(a1 + 16) + 208));
    SafeRelease(*(*(a1 + 16) + 64));
    SafeRelease(*(*(a1 + 16) + 72));
    SafeFree(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  SafeRelease(*(a1 + 24));
  SafeRelease(*(a1 + 528));
  *(a1 + 24) = 0;
  *(a1 + 528) = 0;
}

CFStringRef AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_10009AAB8;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v52[0] = 0;
  v52[1] = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  bytes = 0;
  v46 = 0;
  length = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v22 = 3;
      v27 = 0;
      v25 = 0;
      goto LABEL_20;
    }

    v25 = 0;
    v27 = 0;
    goto LABEL_33;
  }

  v51 = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v52, BytePtr, &v51, v51))
  {
    v40 = "DERDecoderInitialize top level failed";
    goto LABEL_32;
  }

  if (DERDecoderGetDataWithTag(v52, 0, 0x10u, 1, &bytes, &length + 1, &v50))
  {
    v40 = "could not find im4p top level sequence";
    goto LABEL_32;
  }

  if (DERDecoderInitialize(v52, bytes, &length + 1, HIDWORD(length)))
  {
    v40 = "DERDecoderInitialize sequence failed";
    goto LABEL_32;
  }

  v50 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v52, 2u, 1u, 1, &v48, &length, &v50);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v44, &v46 + 1))
    {
      Mutable = 0;
      goto LABEL_15;
    }

    v40 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_32:
    AMAuthInstallApImg4EncodeRestoreInfo_cold_1(v40, v8, v9, v10, v11, v12, v13, v14);
    Mutable = 0;
    v25 = 0;
    v27 = 0;
    goto LABEL_33;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v45 = Mutable;
  if (AMAuthInstallApImg4DecodeRestoreInfo(a1, &v45))
  {
    v32 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v44, &v46 + 1);
    if (v32)
    {
      v22 = v32;
      AMAuthInstallApImg4EncodeRestoreInfo_cold_2(v32, v33, v34, v35, v36, v37, v38, v39);
LABEL_36:
      v27 = 0;
      v25 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v42 = 0;
    AMSupportCreateMergedDictionary(kCFAllocatorDefault, Mutable, theDict, &v42);
    if (!v42)
    {
      v22 = 0;
      v23 = "failed to create merged restore Info dictionary";
      goto LABEL_35;
    }

    v22 = AMAuthInstallApImg4EncodeRestoreDict(v42, &v44, &v46 + 1);
    SafeRelease(v42);
    if (v22)
    {
      v23 = "AMAuthInstallApImg4EncodeRestoreDict merged restoreInfo failed";
LABEL_35:
      AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", v23, v17, v18, v19, v20, v21, v41);
      goto LABEL_36;
    }
  }

LABEL_15:
  v24 = CFDataCreateMutable(0, 0);
  v25 = v24;
  if (!v24 || (CFDataAppendBytes(v24, bytes, HIDWORD(length)), CFDataAppendBytes(v25, v44, HIDWORD(v46)), (v26 = DEREncoderCreate(0)) == 0))
  {
    v27 = 0;
    if (!EncodingWithTag)
    {
      v22 = 2;
      goto LABEL_20;
    }

LABEL_33:
    *a3 = 0;
    v22 = 3;
    goto LABEL_20;
  }

  v27 = v26;
  v28 = CFDataGetBytePtr(v25);
  v29 = CFDataGetLength(v25);
  if (DEREncoderAddData(v27, 0, 0x10u, v28, v29, 1) || DEREncoderCreateEncodedBuffer(v27, &v43, &v46))
  {
    goto LABEL_33;
  }

  v30 = CFDataCreate(0, v43, v46);
  *a3 = v30;
  v22 = 2 * (v30 == 0);
LABEL_20:
  SafeRelease(Mutable);
  SafeFree(v44);
  SafeFree(v43);
  SafeRelease(v25);
  DEREncoderDestroy(v27);
  return v22;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t *a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v8 = DEREncoderCreate(0);
  if (!v8)
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    v13 = strlen(buffer);
    if (DEREncoderAddData(v8, 0, 0x16u, buffer, v13, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", v14, v15, v16, v17, v18, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", v19, v20, v21, v22, v23, "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v38 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v38 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32(v8, 0, 2u, valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", v24, v25, v26, v27, v28, a2);
    goto LABEL_17;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  v30 = DEREncoderAddPrivateFromEncoder(v8, a1, TagAsInteger);
  if (v30)
  {
    AMAuthInstallApImg4AddInteger32Property_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_17;
  }

  v38 = 0;
LABEL_11:
  DEREncoderDestroy(v8);
  return v38;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t *a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v8 = DEREncoderCreate(0);
  if (!v8)
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    v13 = strlen(buffer);
    if (DEREncoderAddData(v8, 0, 0x16u, buffer, v13, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", v14, v15, v16, v17, v18, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", v19, v20, v21, v22, v23, "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v38 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v38 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64(v8, 0, 2u, valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", v24, v25, v26, v27, v28, a2);
    goto LABEL_17;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  v30 = DEREncoderAddPrivateFromEncoder(v8, a1, TagAsInteger);
  if (v30)
  {
    AMAuthInstallApImg4AddInteger64Property_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_17;
  }

  v38 = 0;
LABEL_11:
  DEREncoderDestroy(v8);
  return v38;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t *a1, const __CFString *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a3)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v37 = v9;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v8 = DEREncoderCreate(0);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    v12 = strlen(buffer);
    if (DEREncoderAddData(v8, 0, 0x16u, buffer, v12, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", v13, v14, v15, v16, v17, a2);
      goto LABEL_16;
    }
  }

  v18 = DEREncoderAddData(v8, 0, 1u, &v37, 1u, 0);
  if (v18)
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
LABEL_16:
    v35 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_12;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  v27 = DEREncoderAddPrivateFromEncoder(v8, a1, TagAsInteger);
  if (v27)
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_2(v27, v28, v29, v30, v31, v32, v33, v34);
    goto LABEL_16;
  }

  v35 = 0;
LABEL_12:
  DEREncoderDestroy(v8);
  return v35;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t *a1, const __CFString *a2, const __CFData *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v8 = DEREncoderCreate(0);
  if (!v8)
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    v12 = strlen(buffer);
    if (DEREncoderAddData(v8, 0, 0x16u, buffer, v12, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", v13, v14, v15, v16, v17, a2);
      goto LABEL_14;
    }
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  if (DEREncoderAddData(v8, 0, 4u, BytePtr, Length, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", v20, v21, v22, v23, v24, a2);
LABEL_14:
    v34 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a2);
  v26 = DEREncoderAddPrivateFromEncoder(v8, a1, TagAsInteger);
  if (v26)
  {
    AMAuthInstallApImg4AddDataProperty_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_14;
  }

  v34 = 0;
LABEL_10:
  DEREncoderDestroy(v8);
  return v34;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t **a1, uint64_t *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v8 = DEREncoderCreate(0);
  if (!v8)
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    v12 = strlen(buffer);
    if (DEREncoderAddData(v8, 0, 0x16u, buffer, v12, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", v13, v14, v15, v16, v17, a3);
      goto LABEL_14;
    }
  }

  v18 = DEREncoderAddSetFromEncoder(a1, v8);
  if (v18)
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
LABEL_14:
    v35 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  TagAsInteger = AMAuthInstallApImg4GetTagAsInteger(a3);
  v27 = DEREncoderAddPrivateFromEncoder(v8, a2, TagAsInteger);
  if (v27)
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_2(v27, v28, v29, v30, v31, v32, v33, v34);
    goto LABEL_14;
  }

  v35 = 0;
LABEL_10:
  DEREncoderDestroy(v8);
  return v35;
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(uint64_t a1, CFTypeRef a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(length) = 0;
  bytes = 0;
  if (!a1 || !a2 || !a3)
  {
    v171 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", a4, a5, a6, a7, a8, "AMAuthInstallApImg4LocalCreateManifestBody");
    v160 = 0;
    if (!a3)
    {
      v158 = 0;
      v144 = 0;
      v16 = 0;
      v18 = 0;
      goto LABEL_68;
    }

    v18 = 0;
    v16 = 0;
    v144 = 0;
    v158 = 0;
LABEL_90:
    SafeRelease(*a3);
    v171 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v16 = DEREncoderCreate(1);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_88;
  }

  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberIntType, (*(a1 + 16) + 84));
  if (!v18)
  {
    goto LABEL_88;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v16, @"CEPO", v18, v11, v12, v13, v14, v15))
  {
    goto LABEL_88;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v20 = Value;
    v21 = CFGetTypeID(Value);
    if (v21 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"CHIP", v20, v22, v23, v24, v25, v26))
      {
        goto LABEL_88;
      }
    }
  }

  v27 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"BORD", v28, v30, v31, v32, v33, v34))
      {
        goto LABEL_88;
      }
    }
  }

  v35 = CFDictionaryGetValue(a2, @"ApECID");
  if (v35)
  {
    v36 = v35;
    v37 = CFGetTypeID(v35);
    if (v37 == CFNumberGetTypeID())
    {
      v43 = AMAuthInstallApImg4AddInteger64Property(v16, @"ECID", v36, v38, v39, v40, v41, v42);
      if (!v43)
      {
        v51 = 1;
        goto LABEL_18;
      }

      AMAuthInstallApImg4LocalCreateManifestBody_cold_1(v43, v44, v45, v46, v47, v48, v49, v50, v174);
LABEL_88:
      v144 = 0;
      v158 = 0;
      v160 = 0;
      goto LABEL_89;
    }
  }

  v51 = 0;
LABEL_18:
  v52 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFNumberGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddInteger32Property(v16, @"SDOM", v53, v55, v56, v57, v58, v59);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v61 = CFDictionaryGetValue(a2, @"ApProductionMode");
  v69 = 0;
  if (v61)
  {
    v67 = v61;
    v68 = CFGetTypeID(v61);
    if (v68 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v67))
      {
        v69 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CPRO", v69, v62, v63, v64, v65, v66);
  if (v60)
  {
    goto LABEL_69;
  }

  v70 = CFDictionaryGetValue(a2, @"ApSecurityMode");
  v78 = 0;
  if (v70)
  {
    v76 = v70;
    v77 = CFGetTypeID(v70);
    if (v77 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v76))
      {
        v78 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CSEC", v78, v71, v72, v73, v74, v75);
  if (v60)
  {
    goto LABEL_69;
  }

  v79 = CFDictionaryGetValue(a2, @"ApLocalNonceHash");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"LNCH", v80, v82, v83, v84, v85, v86);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v87 = CFDictionaryGetValue(a2, @"ApNonce");
  if (v87)
  {
    v88 = v87;
    v89 = CFGetTypeID(v87);
    if (v89 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"BNCH", v88, v90, v91, v92, v93, v94);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v95 = CFDictionaryGetValue(a2, @"SepNonce");
  if (v95)
  {
    v96 = v95;
    v97 = CFGetTypeID(v95);
    if (v97 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"snon", v96, v98, v99, v100, v101, v102);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v103 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch");
  if (v103)
  {
    v104 = v103;
    v105 = CFGetTypeID(v103);
    if (v105 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v104))
      {
        v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"AMNM", 1, v106, v107, v108, v109, v110);
        if (v60)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v111 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash");
  if (v111)
  {
    v112 = v111;
    v113 = CFGetTypeID(v111);
    if (v113 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"nsih", v112, v114, v115, v116, v117, v118);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v119 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash");
  if (v119)
  {
    v120 = v119;
    v121 = CFGetTypeID(v119);
    if (v121 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"ronh", v120, v122, v123, v124, v125, v126);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v127 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID");
  if (v127)
  {
    v128 = v127;
    v129 = CFGetTypeID(v127);
    if (v129 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"vuid", v128, v130, v131, v132, v133, v134);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v135 = CFDictionaryGetValue(a2, @"Ap,LocalBoot");
  if (v135)
  {
    v136 = v135;
    v137 = CFGetTypeID(v135);
    if (v137 == CFBooleanGetTypeID())
    {
      v138 = CFBooleanGetValue(v136);
      v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"lobo", v138, v139, v140, v141, v142, v143);
      if (v60)
      {
LABEL_69:
        v171 = v60;
        v144 = 0;
LABEL_70:
        v158 = 0;
LABEL_82:
        v160 = 0;
        goto LABEL_83;
      }
    }
  }

  v144 = DEREncoderCreate(1);
  if (!v144)
  {
    v158 = 0;
    goto LABEL_76;
  }

  v145 = AMAuthInstallApImg4AddDictionaryProperty(v16, v144, @"MANP", v11, v12, v13, v14, v15);
  if (v145)
  {
    v171 = v145;
    goto LABEL_70;
  }

  v146 = CFGetAllocator(a1);
  v152 = AMAuthInstallApImg4LocalAddImages(v146, a2, v144, v147, v148, v149, v150, v151);
  if (v152)
  {
    v171 = v152;
    v158 = 0;
    v173 = "failed to add img objects to the manifest body";
LABEL_81:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", v173, v153, v154, v155, v156, v157, v174);
    goto LABEL_82;
  }

  v158 = DEREncoderCreate(0);
  if (!v158)
  {
LABEL_76:
    v160 = 0;
    goto LABEL_77;
  }

  v159 = AMAuthInstallApImg4AddDictionaryProperty(v144, v158, @"MANB", v11, v12, v13, v14, v15);
  if (v159)
  {
    v171 = v159;
    v173 = "failed to create the signed section";
    goto LABEL_81;
  }

  v160 = DEREncoderCreate(0);
  if (!v160)
  {
LABEL_77:
    v171 = 2;
    goto LABEL_83;
  }

  v161 = DEREncoderAddSetFromEncoder(v158, v160);
  if (v161)
  {
    v171 = v161;
LABEL_83:
    if (v51)
    {
      goto LABEL_68;
    }

    goto LABEL_89;
  }

  if (DEREncoderCreateEncodedBuffer(v160, &bytes, &length))
  {
LABEL_89:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", v11, v12, v13, v14, v15, "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_90;
  }

  v162 = CFGetAllocator(a1);
  v163 = CFDataCreate(v162, bytes, length);
  *a3 = v163;
  if (v163)
  {
    v171 = 0;
  }

  else
  {
    AMAuthInstallApImg4LocalCreateManifestBody_cold_2(0, v164, v165, v166, v167, v168, v169, v170);
    v171 = 2;
  }

LABEL_68:
  SafeFree(bytes);
  DEREncoderDestroy(v16);
  DEREncoderDestroy(v144);
  DEREncoderDestroy(v158);
  DEREncoderDestroy(v160);
  SafeRelease(v18);
  return v171;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  length = 0;
  bytes = 0;
  if (!a1)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = a1;
  CString = CFStringGetCString(a1, length_4, 256, 0x8000100u);
  if (!CString)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_3(CString, v10, v11, v12, v13, v14, v15, v16);
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v17 = DEREncoderCreate(0);
  if (!v17)
  {
LABEL_10:
    SafeRelease(0);
    v32 = 0;
    goto LABEL_7;
  }

  v18 = strlen(length_4);
  if (DEREncoderAddData(v17, 0, 0x16u, length_4, v18, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", v19, v20, v21, v22, v23, v8);
    goto LABEL_10;
  }

  v24 = DEREncoderCreateEncodedBuffer(v17, &bytes, &length);
  if (v24)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_10;
  }

  v32 = CFDataCreate(0, bytes, length);
LABEL_7:
  SafeFree(bytes);
  DEREncoderDestroy(v17);
  return v32;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion(unsigned int a1)
{
  LODWORD(length) = 0;
  bytes = 0;
  v2 = DEREncoderCreate(0);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = DEREncoderAddUInt32(v2, 0, 2u, a1);
  if (v4)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, bytes);
LABEL_8:
    SafeRelease(0);
    v20 = 0;
    goto LABEL_5;
  }

  v12 = DEREncoderCreateEncodedBuffer(v3, &bytes, &length);
  if (v12)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_8;
  }

  v20 = CFDataCreate(0, bytes, length);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy(v3);
  return v20;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  LODWORD(length) = 0;
  bytes = 0;
  v2 = DEREncoderCreate(0);
  if (!v2)
  {
    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v4 = CFDataGetLength(a1);
  v5 = DEREncoderAddData(v2, 0, 4u, BytePtr, v4, 0);
  if (v5)
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
LABEL_8:
    SafeRelease(0);
    v21 = 0;
    goto LABEL_5;
  }

  v13 = DEREncoderCreateEncodedBuffer(v2, &bytes, &length);
  if (v13)
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_8;
  }

  v21 = CFDataCreate(0, bytes, length);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy(v2);
  return v21;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6, uint64_t a7, uint64_t a8)
{
  LODWORD(length) = 0;
  v115 = 0;
  theData = 0;
  bytes = 0;
  v114 = 0;
  if (!a1 || !a2 || !a6)
  {
    v59 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", a4, a5, a6, a7, a8, "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v70 = 0;
    v69 = 0;
    v43 = 0;
    v32 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

  v10 = a7;
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    v32 = 0;
LABEL_49:
    v43 = 0;
    goto LABEL_38;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M", v16, v17, v18, v19, v20, v21, v22);
  v32 = EncodedTag;
  if (!EncodedTag)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_9(0, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_49;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v34 = CFDataGetLength(v32);
  CFDataAppendBytes(Mutable, BytePtr, v34);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion(0);
  v43 = EncodedVersion;
  if (!EncodedVersion)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_8(0, v36, v37, v38, v39, v40, v41, v42);
    goto LABEL_38;
  }

  cf = a5;
  v44 = CFDataGetBytePtr(EncodedVersion);
  v45 = CFDataGetLength(v43);
  CFDataAppendBytes(Mutable, v44, v45);
  if (a3)
  {
    v51 = CFRetain(a3);
    theData = v51;
    v59 = 99;
    if (v51)
    {
      goto LABEL_9;
    }

LABEL_19:
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_7(v51, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  ManifestBody = AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData, v46, v47, v48, v49, v50);
  if (ManifestBody)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_1(ManifestBody, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  v59 = 0;
  v51 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v60 = CFDataGetBytePtr(v51);
  v61 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v60, v61);
  if (!v10)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1, v62, v63, v64, v65, v66, v67, v68))
    {
      if (a4)
      {
        v84 = CFRetain(a4);
        v115 = v84;
        if (v84)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v84);
          v69 = EncodedData;
          if (EncodedData)
          {
            v95 = CFDataGetBytePtr(EncodedData);
            v96 = CFDataGetLength(v69);
            CFDataAppendBytes(Mutable, v95, v96);
            if (cf)
            {
              v97 = CFRetain(cf);
              v114 = v97;
              if (v97)
              {
LABEL_26:
                v105 = CFDataGetBytePtr(v97);
                v106 = CFDataGetLength(v114);
                CFDataAppendBytes(Mutable, v105, v106);
                v59 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              EncodedCertificateChain = AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v114);
              if (EncodedCertificateChain)
              {
                _AMAuthInstallApImg4LocalCreateSignedManifest_cold_2(EncodedCertificateChain, v98, v99, v100, v101, v102, v103, v104);
                goto LABEL_39;
              }

              v97 = v114;
              if (v114)
              {
                goto LABEL_26;
              }
            }

            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_4(v97, v98, v99, v100, v101, v102, v103, v104);
          }

          else
          {
            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_5(0, v88, v89, v90, v91, v92, v93, v94);
          }

LABEL_39:
          v70 = 0;
LABEL_40:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", v18, v19, v20, v21, v22, "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_41:
          SafeRelease(*a6);
          *a6 = 0;
          v59 = 3;
          goto LABEL_16;
        }

        goto LABEL_36;
      }

      v107 = *(a1[2] + 128);
      if (v107 != 384)
      {
        if (v107 == 256)
        {
          v109 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature_SHA256())
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v107 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", v18, v19, v20, v21, v22, *(a1[2] + 128));
            goto LABEL_38;
          }

          v108 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature())
          {
            goto LABEL_38;
          }
        }

        goto LABEL_35;
      }

      v110 = a1[49];
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallCryptoCreateRsaSignature_SHA384())
      {
LABEL_35:
        v84 = v115;
LABEL_36:
        _AMAuthInstallApImg4LocalCreateSignedManifest_cold_6(v84, v85, v86, v18, v19, v20, v21, v22);
      }
    }

LABEL_38:
    v69 = 0;
    goto LABEL_39;
  }

  v69 = 0;
LABEL_11:
  v70 = DEREncoderCreate(0);
  if (!v70)
  {
    goto LABEL_40;
  }

  v71 = CFDataGetBytePtr(Mutable);
  v72 = CFDataGetLength(Mutable);
  if (DEREncoderAddData(v70, 0, 0x10u, v71, v72, 1) || DEREncoderCreateEncodedBuffer(v70, &bytes, &length))
  {
    goto LABEL_40;
  }

  v73 = CFGetAllocator(a1);
  v74 = CFDataCreate(v73, bytes, length);
  *a6 = v74;
  if (!v74)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_3(0, v75, v76, v77, v78, v79, v80, v81);
    v59 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v32);
  SafeRelease(v43);
  SafeRelease(theData);
  SafeRelease(v115);
  SafeRelease(v69);
  SafeRelease(v114);
  SafeFree(bytes);
  DEREncoderDestroy(v70);
  return v59;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
}

void _AMAuthInstallBasebandParametersFinalize(CFTypeRef *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallBundleFinalize(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(a1 + 128) + 8));
    SafeRelease(*(*(a1 + 128) + 16));
    SafeRelease(*(*(a1 + 128) + 24));
    SafeRelease(*(*(a1 + 128) + 32));
    SafeRelease(*(*(a1 + 128) + 40));
    SafeFree(*(a1 + 128));
    *(a1 + 128) = 0;
  }
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, uint64_t a2, CFTypeRef *a3, _DWORD *a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  v45 = 0;
  cf = 0;
  v44 = -1;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, @"SocksProxySettings"))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.", v13, v14, v15, v16, v17, v43);
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, @"TrustedServerCAs");
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.", v21, v22, v23, v24, v25, v43);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_3(Mutable, v19, v20, v21, v22, v23, v24, v25, v43);
    v33 = 0;
LABEL_18:
    v41 = 2;
    goto LABEL_15;
  }

  v33 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v33)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_2(0, v26, v27, v28, v29, v30, v31, v32);
    goto LABEL_18;
  }

  CFDictionarySetValue(MutableCopy, @"Timeout", v33);
  AMSupportHttpSendSync(a2, MutableCopy, &cf, 0, &v44);
  if (v45)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSyncNew", "HTTP request failed with error %@", v36, v37, v38, v39, v40, v45);
LABEL_21:
    v41 = 16;
    goto LABEL_15;
  }

  if (!cf)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_1(0, v34, v35, v36, v37, v38, v39, v40);
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = CFRetain(cf);
  }

  v41 = 0;
  if (a4)
  {
    *a4 = v44;
  }

LABEL_15:
  AMSupportSafeRelease(cf);
  AMSupportSafeRelease(MutableCopy);
  AMSupportSafeRelease(v33);
  return v41;
}

uint64_t AMAuthInstallLockCreate()
{
  pthread_once(&_AMAuthInstallLockClassInitializeOnce, _AMAuthInstallLockClassInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t _AMAuthInstallLockClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallLockTypeID = result;
  return result;
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _DefaultLogHandler_0;
  }

  _logHandler_0 = v1;
  return result;
}

void _DefaultLogHandler_0(int a1, uint64_t a2)
{
  if (_DefaultLogHandler_once != -1)
  {
    _DefaultLogHandler_cold_1();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_FAULT))
    {
      _DefaultLogHandler_cold_5();
    }

    return;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_ERROR))
    {
      _DefaultLogHandler_cold_4();
    }

    return;
  }

  if (a1 <= 5)
  {
    v4 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", &v9, 0xCu);
    return;
  }

  if (a1 == 6)
  {
    v7 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      _DefaultLogHandler_cold_2();
    }
  }

  else if (v8)
  {
    _DefaultLogHandler_cold_3();
  }
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = __chkstk_darwin();
  v12 = v11;
  v13 = v9;
  v14 = "";
  if (v10)
  {
    v14 = v10;
  }

  v15 = snprintf(__str, 0x1000uLL, "%s: ", v14);
  v16 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v12, 0x8000100u, kCFAllocatorNull);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v17 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v16, &a9);
  v18 = v17;
  if (!v17)
  {
LABEL_9:
    v26 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v19 = v15;
  v20 = 4096 - v15;
  Length = CFStringGetLength(v17);
  v22 = Length;
  if (4096 - v15 < Length && (v23 = malloc(v15 + Length + 1)) != 0)
  {
    v24 = v23;
    v20 = v22 + 1;
    memcpy(v23, __str, v15);
    v25 = v24;
  }

  else
  {
    v25 = 0;
    v24 = __str;
  }

  if (CFStringGetCString(v18, &v24[v19], v20, 0x8000100u))
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = "failed to format log message";
  }

  _logHandler_0(v13, v27);
  SafeRelease(v16);
  SafeRelease(v18);
  SafeFree(v25);
}

uint64_t AMAuthInstallDebugWriteObject(char *cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((*(cf + 86) & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!*(cf + 42))
  {
    v29 = CFGetAllocator(cf);
    v30 = AMAuthInstallSupportCopyURLToNewTempDirectory(v29, "amai-debug.XXXXXX", cf + 336);
    if (v30)
    {
      v14 = v30;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory", v31, v32, v33, v34, v35, v42);
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v21 = CFGetTypeID(a2);
  if (v21 != CFDictionaryGetTypeID())
  {
    v22 = CFGetTypeID(a2);
    if (v22 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file", v23, v24, v25, v26, v27, v42);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", v36, v37, v38, v39, v40, a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v28 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v28, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, *(cf + 42), v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", v16, v17, v18, v19, v20, cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  v1 = a1;
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  result = remove(buffer, v2);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v6, v7, v8, v9, v10, v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", v11, v12, v13, v14, v15, v1);
    return 4;
  }

  return result;
}

const __CFString *_AMAuthInstallPlatformConstantsInitialize()
{
  v1 = 32;
  result = sysctlbyname("kern.osversion", v3, &v1, 0, 0);
  if (!result)
  {
    v1 = 32;
    if (!sysctlbyname("hw.product", v2, &v1, 0, 0) || (result = sysctlbyname("hw.machine", v2, &v1, 0, 0), !result))
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"mac/%s/%s", v3, v2);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  if (!_platformInfoStr)
  {
    result = @"???";
LABEL_5:
    _platformInfoStr = result;
  }

  return result;
}

void _ApplyTagPrefix(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = kCFAllocatorDefault;
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,", *(*(*a3 + 2) + 160));
  v20 = *(*a3 + 11);
  v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"@%@");
  if (v15 && (MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 3;
LABEL_7:
      CFStringReplace(v16, v17, v7);
      v18 = a3[1];
      v19 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v18, v19, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v18 = a3[1];
      v19 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    _ApplyTagPrefix_cold_1(0, v8, v9, v10, v11, v12, v13, v14, v20);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v15);

  SafeRelease(MutableCopy);
}

void _ApplyOverrideTags(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void _CFDictionarySetInteger64Str(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theData)
  {
    AMAuthInstallSupportBase64Encode_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v38);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theData);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Encode_cold_1(Length, v12, v13, v14, v15, v16, v17, v18, v38);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v20 = CFDataGetLength(theData);
  v21 = b64encode(BytePtr, v20);
  if (v21)
  {
    v27 = v21;
    v28 = strlen(v21);
    if (v28)
    {
      v34 = CFStringCreateWithBytes(a1, v27, v28, 0x8000100u, 0);
      if (v34)
      {
        v35 = v34;
        *a3 = CFRetain(v34);
        free(v27);
        CFRelease(v35);
        return 0;
      }

      v37 = "encodedValue == NULL: '%@'";
    }

    else
    {
      v37 = "encodedLength == 0: '%@'";
    }

    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", v37, v29, v30, v31, v32, v33, theData);
    free(v27);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", v22, v23, v24, v25, v26, theData);
  }

  return 99;
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4)
{
  if (!a1)
  {
    DERDecoderInitialize_cold_3();
  }

  if (!a2)
  {
    DERDecoderInitialize_cold_2();
  }

  if (!a3)
  {
    DERDecoderInitialize_cold_1();
  }

  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > a4)
    {
      return 2;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = _DERDecodeTag(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = _DERDecodeLength(&a2[v11], a4 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v10 + v11 + HIDWORD(v13);
      if (__CFADD__(v10 + v11, HIDWORD(v13)))
      {
        return 6;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _DERDecodeTag(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    _DERDecodeTag_cold_5();
  }

  if (!a3)
  {
    _DERDecodeTag_cold_4();
  }

  if (!a4)
  {
    _DERDecodeTag_cold_3();
  }

  if (!a5)
  {
    _DERDecodeTag_cold_2();
  }

  if (!a6)
  {
    _DERDecodeTag_cold_1();
  }

  if (!a2)
  {
    return 3;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = (a1 + 1);
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 6;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 3;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t _DERDecodeLength(unsigned __int8 *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    _DERDecodeLength_cold_3();
  }

  if (!a3)
  {
    _DERDecodeLength_cold_2();
  }

  if (!a4)
  {
    _DERDecodeLength_cold_1();
  }

  if (!a2)
  {
    return 4;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 4;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = a1 + 1;
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 6;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetDataWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!v14)
    {
      DERDecoderGetDataWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t _DERDecoderTraverseAllItems(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    _DERDecoderTraverseAllItems_cold_3();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = _DERDecodeTag(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_2();
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = _DERDecodeLength(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_1();
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 2;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 1)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataWithTagCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 1;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetEncodingWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      DERDecoderGetEncodingWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v18 = 0;
    v17 = 0;
    do
    {
      *(&v17 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v17);
    v13 = (HIBYTE(v17) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v17 & 3));
    v14 = &a3[result];
    *v14 = Base64[v17 >> 2];
    v15 = v18;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result < a4)
  {
    a3[result] = 0;
    return result;
  }

LABEL_16:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

_BYTE *b64encode(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3;
    if (a2 != 3 * (a2 / 3))
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc(v6);
    if (v2)
    {
      b64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}