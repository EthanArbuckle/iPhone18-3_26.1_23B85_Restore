uint64_t start(int a1, char **a2)
{
  v98 = basename(*a2);
  v4 = &qword_100008000;
  if (a1 <= 1)
  {
    warnx("no image specified");
    Mutable = 0;
    goto LABEL_100;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = 0;
  LODWORD(v7) = 1;
  theDict = Mutable;
  v99 = a1;
  while (1)
  {
    v8 = v6;
    v6 = a2[v7];
    if (!strcasecmp(v6, "-help") || !strcasecmp(v6, "-h"))
    {
      sub_1000016A4(v98);
      exit(0);
    }

    v9 = v7;
    if (!strcasecmp(v6, "-e"))
    {
      if (v7 + 1 == a1 || (v39 = a2[v7 + 1], *v39 == 45))
      {
        warnx("you must specify a device to eject", v93);
        goto LABEL_177;
      }

      v4 = &qword_100008000;
      if (geteuid())
      {
        goto LABEL_102;
      }

      if (strncmp(v39, "/dev/", 5uLL))
      {
        v43 = 3758097090;
        warn("eject requires input of the form %sdiskX");
        goto LABEL_166;
      }

      memset(bytes, 0, 144);
      if (stat(v39, bytes))
      {
        warn("%s", v39);
        v43 = 3758097136;
        goto LABEL_166;
      }

      if ((bytes[0].st_mode & 0x6000) == 0)
      {
        v43 = 3758097090;
        warn("%s doesn't appear to be a device node");
        goto LABEL_166;
      }

      v40 = open(v39, 0);
      if (v40 == -1)
      {
        warn("could not open %s", v39);
        v43 = 5;
        goto LABEL_166;
      }

      v41 = v40;
      v42 = ioctl(v40, 0x20006415uLL, 0);
      if (v42 == -1)
      {
        warn("could not eject %s", v39);
        v43 = 5;
        if (v41 < 0)
        {
LABEL_74:
          if (v42 != -1)
          {
            goto LABEL_154;
          }

LABEL_166:
          warnx("eject failed: error 0x%x = %d");
          goto LABEL_178;
        }
      }

      else
      {
        fprintf(__stdoutp, "%s ejected successfully.\n", v39);
        v43 = 0;
        if (v41 < 0)
        {
          goto LABEL_74;
        }
      }

      close(v41);
      goto LABEL_74;
    }

    if (!strcasecmp(v6, "-shadow"))
    {
      warnx("-shadow option not supported", v93);
      goto LABEL_177;
    }

    if (strcasecmp(v6, "-nomount"))
    {
      break;
    }

    CFDictionarySetValue(Mutable, @"autodiskmount", kCFBooleanFalse);
    v6 = v8;
LABEL_46:
    LODWORD(v7) = v7 + 1;
    if (v7 >= a1)
    {
      v4 = &qword_100008000;
      if (!geteuid())
      {
        v44 = CFUUIDCreate(kCFAllocatorDefault);
        if (v44)
        {
          v45 = v44;
          v46 = CFUUIDCreateString(kCFAllocatorDefault, v44);
          CFRelease(v45);
        }

        else
        {
          v46 = 0;
        }

        qword_100008000 = v46;
        CFDictionarySetValue(Mutable, @"hdik-unique-identifier", v46);
        v47 = bytes;
        if (!realpath_DARWIN_EXTSN(v6, bytes))
        {
          v47 = v6;
        }

        v48 = strlen(v47);
        v49 = CFDataCreate(kCFAllocatorDefault, v47, v48);
        CFDictionarySetValue(Mutable, @"image-path", v49);
        if (v49)
        {
          CFRelease(v49);
        }

        valuePtr = 0;
        Value = CFDictionaryGetValue(Mutable, @"image-path");
        if (!Value)
        {
          v43 = 22;
          goto LABEL_161;
        }

        v51 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, Value, 0x8000100u);
        if (v51)
        {
          v52 = v51;
          v53 = CFURLCreateWithString(kCFAllocatorDefault, v51, 0);
          if (v53)
          {
            v54 = v53;
            memset(&__endptr, 0, sizeof(__endptr));
            v55 = CFURLCopyScheme(v53);
            v56 = v55;
            if (v55 && CFStringCompare(v55, @"file", 0))
            {
              CFRelease(v52);
              v57 = 0;
              v58 = 0;
              v43 = 0;
LABEL_107:
              CFRelease(v56);
LABEL_108:
              CFRelease(v54);
              if (valuePtr)
              {
                CFRelease(valuePtr);
                valuePtr = 0;
              }

              if (v58)
              {
                CFRelease(v58);
              }

              if (v57)
              {
                CFRelease(v57);
              }

              if (!v43)
              {
                __endptr.st_dev = 0;
                *&bytes[0].st_dev = 0;
                v60 = IOServiceMatching("IOHDIXController");
                MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v60);
                if (MatchingService)
                {
                  v62 = MatchingService;
                }

                else
                {
                  v64 = IOServiceMatching("IOResources");
                  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v64, &__endptr))
                  {
                    goto LABEL_120;
                  }

                  if (!IOIteratorIsValid(__endptr.st_dev))
                  {
                    IOIteratorReset(__endptr.st_dev);
                  }

                  v71 = IOIteratorNext(__endptr.st_dev);
                  if (!v71)
                  {
LABEL_120:
                    v63 = 0;
                    goto LABEL_121;
                  }

                  v62 = v71;
                  if (IORegistryEntrySetCFProperty(v71, @"com.apple.AppleDiskImageController.load", kCFBooleanTrue))
                  {
                    v63 = 0;
                    goto LABEL_118;
                  }

                  *&bytes[0].st_dev = 5;
                  v89 = IOKitWaitQuiet(kIOMasterPortDefault, bytes);
                  if (v89)
                  {
                    warnx("IOKit timed out waiting for driver to load: error %08x.", v89);
                  }
                }

                v63 = 1;
LABEL_118:
                IOObjectRelease(v62);
LABEL_121:
                if (__endptr.st_dev)
                {
                  IOObjectRelease(__endptr.st_dev);
                }

                if (v63)
                {
                  LODWORD(valuePtr) = 0;
                  v65 = IOServiceMatching("IOHDIXController");
                  v66 = IOServiceGetMatchingService(kIOMasterPortDefault, v65);
                  if (v66)
                  {
                    v67 = v66;
                    memset(bytes, 0, 256);
                    outputStruct = 0;
                    v68 = IOServiceOpen(v66, mach_task_self_, 0, &valuePtr);
                    if (!v68)
                    {
                      Data = CFPropertyListCreateData(kCFAllocatorDefault, Mutable, kCFPropertyListXMLFormat_v1_0, 0, 0);
                      if (Data)
                      {
                        v70 = Data;
                        memset(&bytes[0].st_rdev, 0, 232);
                        *&bytes[0].st_dev = 0x1BEEFFEEDLL;
                        bytes[0].st_ino = CFDataGetBytePtr(Data);
                        *&bytes[0].st_uid = CFDataGetLength(v70);
                        *&__endptr.st_dev = 4;
                        v68 = IOConnectCallStructMethod(valuePtr, 0, bytes, 0x100uLL, &outputStruct, &__endptr);
                        CFRelease(v70);
                      }

                      else
                      {
                        v68 = 4;
                      }
                    }

                    IOObjectRelease(v67);
                    if (valuePtr)
                    {
                      IOServiceClose(valuePtr);
                    }

                    if (!v68)
                    {
                      qword_100008010 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      bytes[0].st_dev = 0;
                      v72 = IONotificationPortCreate(kIOMasterPortDefault);
                      if (!v72)
                      {
                        goto LABEL_155;
                      }

                      v73 = v72;
                      v74 = IOServiceMatching("IOMedia");
                      v75 = IOServiceAddMatchingNotification(v73, "IOServiceMatched", v74, sub_10000177C, 0, bytes);
                      if (!v75)
                      {
                        sub_10000177C(0, bytes[0].st_dev);
                        if (!byte_100008008)
                        {
                          Current = CFRunLoopGetCurrent();
                          RunLoopSource = IONotificationPortGetRunLoopSource(v73);
                          CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
                          v78 = CFRunLoopGetCurrent();
                          v79 = IONotificationPortGetRunLoopSource(v73);
                          CFRunLoopRemoveSource(v78, v79, kCFRunLoopDefaultMode);
                        }
                      }

                      IONotificationPortDestroy(v73);
                      if (bytes[0].st_dev)
                      {
                        IOObjectRelease(bytes[0].st_dev);
                      }

                      if (v75)
                      {
LABEL_155:
                        warnx("unable to locate attached image");
                        v43 = 2;
                        goto LABEL_178;
                      }

                      Count = CFArrayGetCount(qword_100008010);
                      v105.location = 0;
                      v105.length = Count;
                      CFArraySortValues(qword_100008010, v105, sub_100001980, 0);
                      if (Count >= 1)
                      {
                        for (i = 0; i != Count; ++i)
                        {
                          ValueAtIndex = CFArrayGetValueAtIndex(qword_100008010, i);
                          v83 = CFDictionaryGetValue(ValueAtIndex, @"dev-entry");
                          v84 = CFDictionaryGetValue(ValueAtIndex, @"content-hint");
                          v85 = sub_1000019E4(v83, 0x8000100u);
                          if (v85)
                          {
                            v86 = v85;
                            printf("%-20.20s", v85);
                            free(v86);
                          }

                          else
                          {
                            printf("%-20.20s", " ");
                          }

                          putchar(9);
                          v87 = sub_1000019E4(v84, 0x8000100u);
                          if (v87)
                          {
                            v88 = v87;
                            printf("%-31.31s", v87);
                            free(v88);
                          }

                          else
                          {
                            printf("%-31.31s", " ");
                          }

                          putchar(9);
                          putchar(10);
                        }

                        v43 = 0;
                        Mutable = theDict;
                        goto LABEL_178;
                      }

LABEL_154:
                      v43 = 0;
                      goto LABEL_178;
                    }
                  }

                  else
                  {
                    v68 = 3758097088;
                  }

                  warnx("attach failed: error 0x%x = %d", v68, v68);
                  v43 = v68;
                  goto LABEL_178;
                }

                warnx("unable to load driver");
LABEL_100:
                v43 = 22;
                goto LABEL_178;
              }

LABEL_161:
              warnx("couldn't construct backing store identifier");
              goto LABEL_178;
            }

            if (!CFURLGetFileSystemRepresentation(v54, 1u, bytes, 1024) || stat(bytes, &__endptr) < 0)
            {
              v58 = 0;
              v57 = 0;
              v43 = 2;
              goto LABEL_106;
            }

            valuePtr = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"d%d:i%llu", __endptr.st_dev, __endptr.st_ino);
            if (valuePtr)
            {
              v58 = CFArrayCreate(kCFAllocatorDefault, &valuePtr, 1, &kCFTypeArrayCallBacks);
              if (v58)
              {
                v59 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                v57 = v59;
                if (v59)
                {
                  CFDictionarySetValue(v59, @"writeable-components", v58);
                  CFDictionarySetValue(Mutable, @"backingstore-id", v57);
                  v43 = 0;
                  goto LABEL_106;
                }

                goto LABEL_105;
              }
            }

            else
            {
              v58 = 0;
            }

            v57 = 0;
LABEL_105:
            v43 = 12;
LABEL_106:
            CFRelease(v52);
            if (!v56)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          }

          CFRelease(v52);
        }

        v43 = 12;
        goto LABEL_161;
      }

LABEL_102:
      warnx("must be run by root");
      v43 = 1;
      goto LABEL_178;
    }
  }

  if (strcasecmp(v6, "-drivekey"))
  {
    if (!strcasecmp(v6, "-encryption"))
    {
      v7 = v7 + 1;
      if (v9 + 1 == a1)
      {
        warnx("missing <encryption-key+hmacsha1-key> parameter", v93);
      }

      else
      {
        v22 = strlen(a2[v7]);
        LOBYTE(valuePtr) = 0;
        if (v22 == 72)
        {
          printf("encryption-key:");
          v23 = 0;
          for (j = 0; j != 16; ++j)
          {
            v25 = sscanf(&a2[v7][v23], "%02hhx", &valuePtr);
            printf("%02x", valuePtr);
            fflush(0);
            if (v25 != 1)
            {
              warnx("improper encryption-key portion of string", v94);
              goto LABEL_177;
            }

            *(&__endptr.st_dev + j) = valuePtr;
            v23 += 2;
          }

          putchar(10);
          printf("hmacsha1-key:");
          v26 = 0;
          v27 = 32;
          while (1)
          {
            v28 = sscanf(&a2[v7][v27], "%02hhx", &valuePtr);
            printf("%02x", valuePtr);
            if (v28 != 1)
            {
              break;
            }

            *(&bytes[0].st_dev + v26++) = valuePtr;
            v27 += 2;
            if (v26 == 20)
            {
              putchar(10);
              CFDictionarySetValue(Mutable, @"image-encrypted", kCFBooleanTrue);
              v29 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v30 = CFDataCreate(kCFAllocatorDefault, &__endptr, 16);
              CFDictionarySetValue(v29, @"encryption-key", v30);
              CFRelease(v30);
              v31 = CFDataCreate(kCFAllocatorDefault, bytes, 20);
              CFDictionarySetValue(v29, @"hmacsha1-key", v31);
              CFRelease(v31);
              CFDictionarySetValue(Mutable, @"image-secrets", v29);
              CFRelease(v29);
              v6 = v8;
              goto LABEL_45;
            }
          }

          warnx("improper hmacsha1-key portion of string", v93);
        }

        else
        {
          warnx("<encryption-key+hmacsha1-key> must be 72 ASCII chars");
        }
      }

      goto LABEL_177;
    }

    if (*v6 == 45)
    {
      warnx("unknown option %s");
      goto LABEL_177;
    }

    if (v8)
    {
      warnx("only one image may be specified", v93);
      goto LABEL_177;
    }

    goto LABEL_46;
  }

  v7 = v7 + 1;
  if (v9 + 1 == a1)
  {
    warnx("missing -drivekey parameter", v93);
    goto LABEL_177;
  }

  v10 = a2[v7];
  v11 = strchr(v10, 61);
  if (!v11 || v11 == v10 || !v11[1])
  {
    goto LABEL_176;
  }

  v12 = strlen(v10);
  v13 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
  if (v13)
  {
    v14 = v13;
    strlcpy(v13, v10, v12 + 1);
    v15 = strchr(v14, 61);
    *v15 = 0;
    v16 = v15 + 1;
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x8000100u);
    v18 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
    if (CFStringCompare(v18, @"yes", 1uLL) && CFStringCompare(v18, @"true", 1uLL))
    {
      if (CFStringCompare(v18, @"no", 1uLL) && CFStringCompare(v18, @"false", 1uLL))
      {
        valuePtr = 0;
        v19 = CFGetTypeID(v18);
        if (v19 == CFStringGetTypeID())
        {
          v20 = sub_1000019E4(v18, 0x600u);
          if (v20)
          {
            *&__endptr.st_dev = 0;
            if (*v20)
            {
              cf = v20;
              *&bytes[0].st_dev = strtouq(v20, &__endptr, 0);
              if (**&__endptr.st_dev || (v37 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, bytes)) == 0)
              {
                v21 = 0;
              }

              else
              {
                v95 = v37;
                v21 = CFNumberGetValue(v37, kCFNumberSInt64Type, &valuePtr);
                CFRelease(v95);
              }

              v20 = cf;
            }

            else
            {
              v21 = 0;
            }

            free(v20);
LABEL_59:
            if (v21)
            {
              v38 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
              if (v38)
              {
                v33 = v38;
LABEL_40:
                CFDictionarySetValue(theDict, v17, v33);
                CFRelease(v33);
                if (v17)
                {
LABEL_41:
                  CFRelease(v17);
                }

LABEL_42:
                if (v18)
                {
                  CFRelease(v18);
                }

                free(v14);
                v6 = v8;
                Mutable = theDict;
LABEL_45:
                a1 = v99;
                goto LABEL_46;
              }
            }

LABEL_62:
            CFDictionarySetValue(theDict, v17, v18);
            if (v17)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v34 = CFGetTypeID(v18);
          if (v34 != CFBooleanGetTypeID())
          {
            v36 = CFGetTypeID(v18);
            if (v36 == CFNumberGetTypeID())
            {
              v21 = CFNumberGetValue(v18, kCFNumberSInt64Type, &valuePtr);
              goto LABEL_59;
            }

            goto LABEL_62;
          }

          bytes[0].st_dev = CFBooleanGetValue(v18) != 0;
          v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, bytes);
          if (v35)
          {
            cfa = v35;
            v21 = CFNumberGetValue(v35, kCFNumberSInt64Type, &valuePtr);
            CFRelease(cfa);
            goto LABEL_59;
          }
        }

        v21 = 0;
        goto LABEL_59;
      }

      v32 = &kCFBooleanFalse;
    }

    else
    {
      v32 = &kCFBooleanTrue;
    }

    v33 = *v32;
    if (*v32)
    {
      goto LABEL_40;
    }

    goto LABEL_62;
  }

  v90 = a2[v7];
LABEL_176:
  warnx("unable to process -drivekey parameter %s");
LABEL_177:
  v43 = 22;
  v4 = &qword_100008000;
LABEL_178:
  v91 = v4[2];
  if (v91)
  {
    CFRelease(v91);
    v4[2] = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v43 == 22)
  {
    sub_1000016A4(v98);
    exit(1);
  }

  return v43;
}

size_t sub_1000016A4(const char *a1)
{
  fprintf(__stderrp, "Usage:\t%s [options] <image>\n", a1);
  fprintf(__stderrp, "\t%s -e <device>\n", a1);
  fprintf(__stderrp, "\t%s -help\n", a1);
  fwrite("\toptions:\n", 0xAuLL, 1uLL, __stderrp);
  fwrite("\t    -nomount\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t    -drivekey <key>=<value>\n", 0x1DuLL, 1uLL, __stderrp);
  v2 = __stderrp;

  return fwrite("\t    -encryption <encryption-key+hmacsha1-key>\n", 0x2FuLL, 1uLL, v2);
}

uint64_t sub_10000177C(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = IORegistryEntrySearchCFProperty(v4, "IOService", @"hdik-unique-identifier", kCFAllocatorDefault, 3u);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID() && CFEqual(qword_100008000, v7))
        {
          CFProperty = IORegistryEntryCreateCFProperty(v4, @"BSD Name", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v10 = CFProperty;
            v11 = qword_100008010;
            v16.length = CFArrayGetCount(qword_100008010);
            v16.location = 0;
            if (!CFArrayContainsValue(v11, v16, v10))
            {
              Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/dev/%@", v10);
              CFDictionarySetValue(Mutable, @"dev-entry", v13);
              if (v13)
              {
                CFRelease(v13);
              }

              v14 = IORegistryEntryCreateCFProperty(v4, @"Content", kCFAllocatorDefault, 0);
              if (v14)
              {
                v15 = v14;
                CFDictionarySetValue(Mutable, @"content-hint", v14);
                CFRelease(v15);
              }

              CFArrayAppendValue(qword_100008010, Mutable);
              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            CFRelease(v10);
          }

          v5 = 1;
        }

        IOObjectRelease(v4);
        CFRelease(v7);
      }

      else
      {
        IOObjectRelease(v4);
      }

      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
    if (v5)
    {
      byte_100008008 = 1;
    }
  }

  return result;
}

CFComparisonResult sub_100001980(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"dev-entry");
  v4 = CFDictionaryGetValue(a2, @"dev-entry");

  return CFStringCompare(Value, v4, 0);
}

void *sub_1000019E4(const __CFString *a1, CFStringEncoding a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xD3171F6uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, a2))
  {
    free(v7);
    return 0;
  }

  v8 = strlen(v7) + 1;

  return reallocf(v7, v8);
}