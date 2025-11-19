void start(int a1, char *const *a2)
{
  v35 = 0;
  v4 = fileno(__stdoutp);
  if (!isatty(v4) || (v5 = fileno(__stdoutp), ioctl(v5, 0x40087468uLL, &v35)))
  {
    v6 = 0;
  }

  else
  {
    v6 = WORD1(v35);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v25 = 0;
  v24 = "IOService";
  while (2)
  {
    v12 = getopt(a1, a2, ":abc:d:fik:ln:p:rsStw:xy");
    switch(v12)
    {
      case 'S':
      case 's':
        continue;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'e':
      case 'g':
      case 'h':
      case 'j':
      case 'm':
      case 'o':
      case 'q':
      case 'u':
      case 'v':
        goto LABEL_37;
      case 'a':
        v7 |= 1u;
        continue;
      case 'b':
        v7 |= 2u;
        continue;
      case 'c':
        v8 = optarg;
        v9 = CFStringCreateWithCString(kCFAllocatorDefault, optarg, 0x8000100u);
        continue;
      case 'd':
        v10 = atoi(optarg);
        continue;
      case 'f':
        v7 |= 4u;
        continue;
      case 'i':
        v7 |= 0x10u;
        continue;
      case 'k':
        v11 = optarg;
        continue;
      case 'l':
        v7 |= 0x20u;
        continue;
      case 'n':
        v25 = optarg;
        continue;
      case 'p':
        v24 = optarg;
        continue;
      case 'r':
        v7 |= 0x40u;
        continue;
      case 't':
        v7 |= 0x80u;
        continue;
      case 'w':
        v6 = atoi(optarg);
        continue;
      case 'x':
        v7 |= 8u;
        continue;
      case 'y':
        v7 |= 0x100u;
        continue;
      default:
        if (v12 != -1)
        {
LABEL_37:
          fwrite("usage: ioreg [-abfilrtxy] [-c class] [-d depth] [-k key] [-n name] [-p plane] [-w width]\nwhere options are:\n\t-a archive output\n\t-b show object name in bold\n\t-c list properties of objects with the given class\n\t-d limit tree to the given depth\n\t-f enable smart formatting\n\t-i show object inheritance\n\t-k list properties of objects with the given key\n\t-l list properties of all objects\n\t-n list properties of objects with the given name\n\t-p traverse registry over the given plane (IOService is default)\n\t-r show subtrees rooted by the given criteria\n\t-t show location of each subtree\n\t-w clip output to the given line width (0 is unlimited)\n\t-x show data and numbers as hexadecimal\n\t-y do not consider DriverKit classes with -c\n", 0x2D5uLL, 1uLL, __stderrp);
          goto LABEL_38;
        }

        byte_10000C028 = (v7 & 8) != 0;
        if (v6 && (qword_10000C010 = malloc_type_malloc(v6, 0xB7988F8FuLL), dword_10000C018 = v6, dword_10000C008 = v6, !qword_10000C010))
        {
          v22 = __stderrp;
          v23 = "can't allocate buffer";
        }

        else
        {
          if ((v7 & 2) == 0)
          {
            goto LABEL_33;
          }

          *&v36 = &unk_10000C029;
          v13 = getenv("TERM");
          if (!v13 || tgetent(0, v13) < 1 || (qword_10000C000 = tgetstr("md", &v36), qword_10000C020 = tgetstr("me", &v36), v36 - &unk_10000C029 < 0x41uLL))
          {
            if (!qword_10000C000)
            {
              qword_10000C000 = &unk_100004EA7;
            }

            if (!qword_10000C020)
            {
              qword_10000C020 = &unk_100004EA7;
            }

LABEL_33:
            RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
            if (RootEntry)
            {
              v15 = RootEntry;
              if ((v7 & 1) == 0)
              {
                if ((v7 & 0x40) != 0)
                {
                  LOWORD(error) = v7;
                  *(&error + 2) = 0;
                  WORD3(error) = 0;
                  *(&error + 1) = v8;
                  v27 = v9;
                  v28 = v10;
                  v29 = 0;
                  v30 = v11;
                  v31 = v25;
                  v32 = v24;
                  v33 = v6;
                  v34 = 0;
                  sub_100001024(RootEntry, 0, 0, &v36, &error);
                }

                else
                {
                  LOWORD(v36) = v7;
                  *(&v36 + 2) = 0;
                  WORD3(v36) = 0;
                  *(&v36 + 1) = v8;
                  v37 = v9;
                  v38 = v10;
                  v39 = 0;
                  v40 = v11;
                  v41 = v25;
                  v42 = v24;
                  v43 = v6;
                  v44 = 0;
                  sub_1000011FC(RootEntry, 0, 0, 0, &v36);
                }

                goto LABEL_49;
              }

              if ((v7 & 0x40) != 0)
              {
                LOWORD(error) = v7;
                *(&error + 2) = 0;
                WORD3(error) = 0;
                *(&error + 1) = v8;
                v27 = v9;
                v28 = v10;
                v29 = 0;
                v30 = v11;
                v31 = v25;
                v32 = v24;
                v33 = v6;
                v34 = 0;
                v16 = sub_100000C70(RootEntry, 0, 0, &v36, &error);
              }

              else
              {
                LOWORD(v36) = v7;
                *(&v36 + 2) = 0;
                WORD3(v36) = 0;
                *(&v36 + 1) = v8;
                v37 = v9;
                v38 = v10;
                v39 = 0;
                v40 = v11;
                v41 = v25;
                v42 = v24;
                v43 = v6;
                v44 = 0;
                v16 = sub_100000ED0(RootEntry, 0, &v36);
              }

              v17 = v16;
              if (!v16)
              {
LABEL_49:
                IOObjectRelease(v15);
                exit(0);
              }

              *&error = 0;
              v18 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/dev/stdout", kCFURLPOSIXPathStyle, 0);
              if (v18)
              {
                v19 = v18;
                v20 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, v18);
                if (v20)
                {
                  v21 = v20;
                  if (CFWriteStreamOpen(v20))
                  {
                    CFPropertyListWrite(v17, v21, kCFPropertyListXMLFormat_v1_0, 0, &error);
                    if (!error)
                    {
                      CFWriteStreamClose(v21);
                      CFRelease(v21);
                      CFRelease(v19);
                      CFRelease(v17);
                      goto LABEL_49;
                    }

                    v22 = __stderrp;
                    v23 = "CFPropertyListWrite(): error";
                  }

                  else
                  {
                    v22 = __stderrp;
                    v23 = "can't open file";
                  }
                }

                else
                {
                  v22 = __stderrp;
                  v23 = "can't create file";
                }
              }

              else
              {
                v22 = __stderrp;
                v23 = "can't create path";
              }
            }

            else
            {
              v22 = __stderrp;
              v23 = "can't obtain I/O Kit's root service";
            }

            goto LABEL_57;
          }

          v22 = __stderrp;
          v23 = "can't obtain terminfo";
        }

LABEL_57:
        fprintf(v22, "ioreg: error: %s.\n", v23);
LABEL_38:
        exit(1);
    }
  }
}

__CFArray *sub_100000C70(io_registry_entry_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  iterator = 0;
  v10 = a3 + 1;
  if (v10 > a2 && (v11 = *(a5 + 16), v38 = *a5, v39 = v11, v12 = *(a5 + 48), v40 = *(a5 + 32), v41 = v12, sub_1000017E0(a1, &v38)))
  {
    v13 = *(a5 + 24);
    v14 = v13 + a3;
    if (v13)
    {
      v8 = v14;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    if ((*a5 & 0x80) != 0)
    {
      if (v13)
      {
        *(a5 + 24) = v14;
      }

      v19 = *(a5 + 16);
      v38 = *a5;
      v39 = v19;
      v20 = *(a5 + 48);
      v40 = *(a5 + 32);
      v41 = v20;
      v21 = sub_100000ED0(a1, a3, &v38);
      v22 = v21;
      v23 = *(a5 + 24);
      if (v23)
      {
        *(a5 + 24) = v23 - a3;
      }

      if (a3)
      {
        v24 = 4 * a3;
        do
        {
          v25 = *(a4 - 4 + v24);
          v26 = *(a5 + 16);
          v38 = *a5;
          v39 = v26;
          v27 = *(a5 + 48);
          v40 = *(a5 + 32);
          v41 = v27;
          v28 = sub_100001348(v25, &v38);
          if (!v28)
          {
            sub_100003E2C();
          }

          v17 = v28;
          CFDictionarySetValue(v28, @"IORegistryEntryChildren", v22);
          CFRelease(v22);
          v22 = v17;
          v24 -= 4;
        }

        while (v24);
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v15 = *(a5 + 16);
      v38 = *a5;
      v39 = v15;
      v16 = *(a5 + 48);
      v40 = *(a5 + 32);
      v41 = v16;
      v17 = sub_100000ED0(a1, 0, &v38);
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v18 = Mutable;
    CFArrayAppendValue(Mutable, v17);
    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  *(a4 + 4 * a3) = a1;
  if (!IORegistryEntryGetChildIterator(a1, *(a5 + 48), &iterator))
  {
    v30 = IOIteratorNext(iterator);
    if (v30)
    {
      v31 = v30;
      do
      {
        v32 = IOIteratorNext(iterator);
        v33 = *(a5 + 16);
        v38 = *a5;
        v39 = v33;
        v34 = *(a5 + 48);
        v40 = *(a5 + 32);
        v41 = v34;
        v35 = sub_100000C70(v31, v8, v10, a4, &v38);
        if (v35)
        {
          v36 = v35;
          if (v18)
          {
            v43.length = CFArrayGetCount(v35);
            v43.location = 0;
            CFArrayAppendArray(v18, v36, v43);
            CFRelease(v36);
          }

          else
          {
            v18 = v35;
          }
        }

        IOObjectRelease(v31);
        v31 = v32;
      }

      while (v32);
    }

    IOObjectRelease(iterator);
  }

  return v18;
}

__CFDictionary *sub_100000ED0(io_registry_entry_t a1, int a2, __int128 *a3)
{
  iterator = 0;
  if (IORegistryEntryGetChildIterator(a1, *(a3 + 6), &iterator))
  {
    return 0;
  }

  v7 = IOIteratorNext(iterator);
  v8 = a3[1];
  v19 = *a3;
  v20 = v8;
  v9 = a3[3];
  v21 = a3[2];
  v22 = v9;
  v6 = sub_100001348(a1, &v19);
  v10 = *(a3 + 6);
  if ((!v10 || v10 > a2 + 1) && v7)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v12 = Mutable;
    do
    {
      v13 = IOIteratorNext(iterator);
      v14 = a3[1];
      v19 = *a3;
      v20 = v14;
      v15 = a3[3];
      v21 = a3[2];
      v22 = v15;
      v16 = sub_100000ED0(v7, (a2 + 1), &v19);
      if (!v16)
      {
        sub_100003EA4();
      }

      v17 = v16;
      CFArrayAppendValue(v12, v16);
      CFRelease(v17);
      IOObjectRelease(v7);
      v7 = v13;
    }

    while (v13);
    CFDictionarySetValue(v6, @"IORegistryEntryChildren", v12);
    CFRelease(v12);
  }

  IOObjectRelease(iterator);
  return v6;
}

uint64_t sub_100001024(io_registry_entry_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = a2;
  iterator = 0;
  v10 = (a3 + 1);
  if (v10 > a2)
  {
    v11 = a5[1];
    v36 = *a5;
    v37 = v11;
    v12 = a5[3];
    v38 = a5[2];
    v39 = v12;
    if (sub_1000017E0(a1, &v36))
    {
      v13 = *(a5 + 6);
      if (v13)
      {
        v8 = (v13 + a3);
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      if ((*a5 & 0x80) != 0)
      {
        if (a3)
        {
          v23 = 0;
          do
          {
            v24 = *(a4 + 4 * v23);
            v25 = a5[1];
            v36 = *a5;
            v37 = v25;
            v26 = a5[3];
            v38 = a5[2];
            v39 = v26;
            sub_100001CBC(v24, v23, 2 << v23, &v36);
            ++v23;
          }

          while (a3 != v23);
          v13 = *(a5 + 6);
        }

        if (v13)
        {
          *(a5 + 6) = v13 + a3;
        }

        v27 = a5[1];
        v36 = *a5;
        v37 = v27;
        v28 = a5[3];
        v38 = a5[2];
        v39 = v28;
        sub_1000011FC(a1, 0, a3, 0, &v36);
        v29 = *(a5 + 6);
        if (v29)
        {
          *(a5 + 6) = v29 - a3;
        }
      }

      else
      {
        v14 = a5[1];
        v36 = *a5;
        v37 = v14;
        v15 = a5[3];
        v38 = a5[2];
        v39 = v15;
        sub_1000011FC(a1, 0, 0, 0, &v36);
      }

      sub_100002334(&unk_100004EA7, v16, v17, v18, v19, v20, v21, v22, v36);
    }
  }

  *(a4 + 4 * a3) = a1;
  result = IORegistryEntryGetChildIterator(a1, *(a5 + 6), &iterator);
  if (!result)
  {
    v31 = IOIteratorNext(iterator);
    if (v31)
    {
      v32 = v31;
      do
      {
        v33 = IOIteratorNext(iterator);
        v34 = a5[1];
        v36 = *a5;
        v37 = v34;
        v35 = a5[3];
        v38 = a5[2];
        v39 = v35;
        sub_100001024(v32, v8, v10, a4, &v36);
        IOObjectRelease(v32);
        v32 = v33;
      }

      while (v33);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

uint64_t sub_1000011FC(io_registry_entry_t a1, int a2, uint64_t a3, unint64_t a4, const char **a5)
{
  iterator = 0;
  result = IORegistryEntryGetChildIterator(a1, a5[6], &iterator);
  if (!result)
  {
    v11 = IOIteratorNext(iterator);
    v12 = v11;
    v13 = (1 << a3) | a4;
    if (!a2)
    {
      v13 = ~(1 << a3) & a4;
    }

    v14 = (a3 + 1);
    v15 = *(a5 + 6) - 1;
    v16 = v13 | (2 << a3);
    if (!v11)
    {
      v16 = v13 & ~(2 << a3);
    }

    v17 = *(a5 + 1);
    v24 = *a5;
    v25 = v17;
    v18 = *(a5 + 2);
    v19 = *(a5 + 3);
    if (v15 >= v14)
    {
      v20 = v16;
    }

    else
    {
      v20 = v13;
    }

    v26 = *(a5 + 2);
    v27 = v19;
    sub_100001CBC(a1, a3, v20, &v24);
    if (*(a5 + 6) - 1 >= v14 && v12)
    {
      do
      {
        v21 = IOIteratorNext(iterator);
        v22 = *(a5 + 1);
        v24 = *a5;
        v25 = v22;
        v23 = *(a5 + 3);
        v26 = *(a5 + 2);
        v27 = v23;
        sub_1000011FC(v12, v21 != 0, v14, v20, &v24);
        IOObjectRelease(v12);
        v12 = v21;
      }

      while (v21);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

CFMutableDictionaryRef sub_100001348(io_registry_entry_t entry, uint64_t a2)
{
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *cStr = 0u;
  v36 = 0u;
  valuePtr = 0;
  entryID = 0;
  properties = 0;
  memset(location, 0, sizeof(location));
  memset(name, 0, sizeof(name));
  v28 = 0;
  v29 = 0;
  if ((*a2 & 0x20) != 0 || (v4 = *(a2 + 16), v27[0] = *a2, v27[1] = v4, v5 = *(a2 + 48), v27[2] = *(a2 + 32), v27[3] = v5, sub_1000017E0(entry, v27)))
  {
    if (IORegistryEntryCreateCFProperties(entry, &properties, kCFAllocatorDefault, 0))
    {
      sub_100003EE0(&properties);
      v6 = 0;
    }

    else
    {
      v6 = properties;
    }

    sub_100001A18(v6);
  }

  if (!properties)
  {
    properties = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!properties)
    {
      sub_100004214();
    }
  }

  if (IORegistryEntryGetNameInPlane(entry, *(a2 + 48), name))
  {
    sub_100003F30();
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x8000100u);
  if (!v7)
  {
    sub_1000041D8();
  }

  v8 = v7;
  CFDictionarySetValue(properties, @"IORegistryEntryName", v7);
  CFRelease(v8);
  if (!IORegistryEntryGetLocationInPlane(entry, *(a2 + 48), location))
  {
    v9 = CFStringCreateWithCString(kCFAllocatorDefault, location, 0x8000100u);
    if (!v9)
    {
      sub_10000419C();
    }

    v10 = v9;
    CFDictionarySetValue(properties, @"IORegistryEntryLocation", v9);
    CFRelease(v10);
  }

  if (IORegistryEntryGetRegistryEntryID(entry, &entryID))
  {
    sub_100003F88(&entryID);
  }

  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &entryID);
  if (!v11)
  {
    sub_100004160();
  }

  v12 = v11;
  CFDictionarySetValue(properties, @"IORegistryEntryID", v11);
  CFRelease(v12);
  if (_IOObjectGetClass(entry, 1))
  {
    sub_100003FDC();
  }

  v13 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v13)
  {
    sub_100004124();
  }

  v14 = v13;
  CFDictionarySetValue(properties, @"IOObjectClass", v13);
  if ((*a2 & 0x10) != 0)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v16 = Mutable;
    while (1)
    {
      v17 = v14;
      CFArrayInsertValueAtIndex(v16, 0, v14);
      v14 = IOObjectCopySuperclassForClass(v14);
      CFRelease(v17);
      if (!v14)
      {
        break;
      }

      if (CFEqual(v14, @"OSObject"))
      {
        CFDictionarySetValue(properties, @"IOObjectInheritance", v16);
        CFRelease(v16);
        goto LABEL_27;
      }
    }

    CFDictionarySetValue(properties, @"IOObjectInheritance", v16);
    v14 = v16;
  }

LABEL_27:
  CFRelease(v14);
  valuePtr = IOObjectGetKernelRetainCount(entry);
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v18)
  {
    sub_1000040E8();
  }

  v19 = v18;
  CFDictionarySetValue(properties, @"IOObjectRetainCount", v18);
  CFRelease(v19);
  if (_IOObjectConformsTo(entry, "IOService"))
  {
    if (IOServiceGetBusyStateAndTime())
    {
      fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain state");
      valuePtr = 0;
      v28 = 0;
      v29 = 0;
    }

    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v29);
    if (!v20)
    {
      sub_1000040AC();
    }

    v21 = v20;
    CFDictionarySetValue(properties, @"IOServiceState", v20);
    CFRelease(v21);
    v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (!v22)
    {
      sub_100004070();
    }

    v23 = v22;
    CFDictionarySetValue(properties, @"IOServiceBusyState", v22);
    CFRelease(v23);
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v28);
    if (!v24)
    {
      sub_100004034();
    }

    v25 = v24;
    CFDictionarySetValue(properties, @"IOServiceBusyTime", v24);
    CFRelease(v25);
  }

  return properties;
}

BOOL sub_1000017E0(io_registry_entry_t entry, uint64_t a2)
{
  if (*(a2 + 8))
  {
    if (*(a2 + 16))
    {
      if ((*a2 & 0x100) == 0)
      {
        CFProperty = IORegistryEntryCreateCFProperty(entry, @"IOUserClasses", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v5 = CFProperty;
          TypeID = CFArrayGetTypeID();
          if (TypeID == CFGetTypeID(v5))
          {
            v15.length = CFArrayGetCount(v5);
            v15.location = 0;
            v7 = CFArrayContainsValue(v5, v15, *(a2 + 16));
            CFRelease(v5);
            if (v7)
            {
              v8 = 1;
              goto LABEL_11;
            }

            return 0;
          }

          CFRelease(v5);
        }
      }
    }

    v8 = 1;
    if (!_IOObjectConformsTo(entry, *(a2 + 8)))
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, v9, 0x8000100u);
    if (!v10)
    {
      sub_100004250();
    }

    v11 = v10;
    v8 = IORegistryEntryCreateCFProperty(entry, v10, kCFAllocatorDefault, 0);
    CFRelease(v11);
    if (!v8)
    {
      return v8;
    }

    CFRelease(v8);
    v8 = 1;
  }

  if (*(a2 + 40))
  {
    memset(location, 0, 128);
    memset(v13, 0, sizeof(v13));
    if (IORegistryEntryGetNameInPlane(entry, *(a2 + 48), v13))
    {
      sub_100003F30();
    }

    if (strchr(*(a2 + 40), 64))
    {
      __strlcat_chk();
      if (!IORegistryEntryGetLocationInPlane(entry, *(a2 + 48), location))
      {
        __strlcat_chk();
      }
    }

    return !strcmp(*(a2 + 40), v13);
  }

  return v8;
}

void sub_100001A18(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFSetGetTypeID())
    {
      sub_1000042C8();
    }

    if (v2 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a1);
      v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v21 = v4;
      CFDictionaryGetKeysAndValues(a1, v4, v5);
      if (Count >= 1)
      {
        v6 = v5;
        do
        {
          v7 = CFGetTypeID(*v6);
          if (v7 == CFSetGetTypeID())
          {
            v8 = CFSetGetCount(*v6);
            v9 = malloc_type_malloc(8 * v8, 0xC0040B8AA526DuLL);
            CFSetGetValues(*v6, v9);
            v10 = CFArrayCreate(kCFAllocatorDefault, v9, v8, &kCFTypeArrayCallBacks);
            if (!v10)
            {
              sub_10000428C();
            }

            v11 = v10;
            CFDictionaryReplaceValue(a1, *v4, v10);
            *v6 = v11;
            CFRelease(v11);
            free(v9);
          }

          v12 = *v6++;
          sub_100001A18(v12);
          ++v4;
          --Count;
        }

        while (Count);
      }

      free(v21);

      free(v5);
    }

    else if (v2 == CFArrayGetTypeID())
    {
      v13 = CFArrayGetCount(a1);
      if (v13 >= 1)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v17 = CFGetTypeID(ValueAtIndex);
          if (v17 == CFSetGetTypeID())
          {
            v18 = CFSetGetCount(ValueAtIndex);
            v19 = malloc_type_malloc(8 * v18, 0xC0040B8AA526DuLL);
            CFSetGetValues(ValueAtIndex, v19);
            v20 = CFArrayCreate(kCFAllocatorDefault, v19, v18, &kCFTypeArrayCallBacks);
            if (!v20)
            {
              sub_10000428C();
            }

            ValueAtIndex = v20;
            CFArraySetValueAtIndex(a1, i, v20);
            CFRelease(ValueAtIndex);
            free(v19);
          }

          sub_100001A18(ValueAtIndex);
        }
      }
    }
  }
}

void sub_100001CBC(io_registry_entry_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  memset(v147, 0, sizeof(v147));
  context[0] = a1;
  context[1] = a2;
  v140 = a3;
  v8 = *(a4 + 1);
  v141 = *a4;
  v142 = v8;
  v9 = *(a4 + 3);
  v143 = *(a4 + 2);
  v144 = v9;
  KernelRetainCount = 0;
  v136 = 0;
  v137 = 0;
  memset(location, 0, sizeof(location));
  memset(name, 0, sizeof(name));
  properties = 0;
  if (IORegistryEntryGetNameInPlane(a1, a4[6], name))
  {
    sub_100003F30();
  }

  sub_10000222C(1, a2, a3, v10, v11, v12, v13, v14, v127);
  if ((*a4 & 2) != 0)
  {
    tputs(qword_10000C000, 1, j__putchar);
  }

  sub_100002308("%s", v15, v16, v17, v18, v19, v20, v21, name);
  if ((*a4 & 2) != 0)
  {
    tputs(qword_10000C020, 1, j__putchar);
  }

  if (!IORegistryEntryGetLocationInPlane(a1, a4[6], location))
  {
    sub_100002308("@%s", v22, v23, v24, v25, v26, v27, v28, location);
  }

  sub_100002308("  <class ", v22, v23, v24, v25, v26, v27, v28, v128);
  if ((*a4 & 0x10) != 0)
  {
    v36 = _IOObjectCopyClass(a1);
    if (v36)
    {
      v37 = v36;
      Mutable = CFStringCreateMutable(0, 512);
      if (Mutable)
      {
        v39 = Mutable;
        CFStringInsert(Mutable, 0, v37);
        Copy = CFStringCreateCopy(0, v37);
        if (Copy)
        {
          v41 = Copy;
          v42 = IOObjectCopySuperclassForClass(Copy);
          CFRelease(v41);
          if (v42)
          {
            while (!CFEqual(v42, @"OSObject"))
            {
              CFStringInsert(v39, 0, @":");
              CFStringInsert(v39, 0, v42);
              v43 = IOObjectCopySuperclassForClass(v42);
              CFRelease(v42);
              v42 = v43;
              if (!v43)
              {
                goto LABEL_21;
              }
            }

            CFRelease(v42);
          }
        }

LABEL_21:
        CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
        if (CStringPtr)
        {
          sub_100002308("%s", v45, v46, v47, v48, v49, v50, v51, CStringPtr);
        }

        CFRelease(v39);
      }

      CFRelease(v37);
    }
  }

  else
  {
    if (_IOObjectGetClass(a1, 1))
    {
      sub_100003FDC();
    }

    sub_100002308("%s", v29, v30, v31, v32, v33, v34, v35, v147);
  }

  entryID = 0;
  if (!IORegistryEntryGetRegistryEntryID(a1, &entryID))
  {
    sub_100002308(", id 0x%llx", v52, v53, v54, v55, v56, v57, v58, entryID);
  }

  if (_IOObjectConformsTo(a1, "IOService"))
  {
    if (IOServiceGetBusyStateAndTime())
    {
      fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain state");
      v66 = 0;
      v136 = 0;
      v137 = 0;
      KernelRetainCount = 0;
    }

    else
    {
      v66 = v137;
    }

    v67 = (v66 & 2) != 0 ? &unk_100004EA7 : "!";
    sub_100002308(", %sregistered, %smatched, %sactive", v59, v60, v61, v62, v63, v64, v65, v67);
    sub_100002308(", busy %ld", v68, v69, v70, v71, v72, v73, v74, KernelRetainCount);
    if (v136)
    {
      sub_100002308(" (%lld ms)", v75, v76, v77, v78, v79, v80, v81, v136 / 0xF4240);
    }
  }

  KernelRetainCount = IOObjectGetKernelRetainCount(a1);
  sub_100002308(", retain %ld", v82, v83, v84, v85, v86, v87, v88, KernelRetainCount);
  sub_100002334(">", v89, v90, v91, v92, v93, v94, v95, v129);
  if ((*a4 & 0x20) != 0 || (v103 = *(a4 + 1), v133[0] = *a4, v133[1] = v103, v104 = *(a4 + 3), v133[2] = *(a4 + 2), v133[3] = v104, sub_1000017E0(a1, v133)))
  {
    v105 = 0;
    v106 = a2 + 1;
    do
    {
      if (((1 << v105) & a3) != 0)
      {
        v107 = "| ";
      }

      else
      {
        v107 = "  ";
      }

      sub_100002308(v107, v96, v97, v98, v99, v100, v101, v102, v130);
      ++v105;
    }

    while (v105 <= v106);
    sub_100002334("{", v96, v97, v98, v99, v100, v101, v102, v130);
    if (IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0))
    {
      sub_100003EE0(&properties);
    }

    else
    {
      v108 = properties;
      if (properties)
      {
LABEL_45:
        CFDictionaryApplyFunction(v108, sub_10000239C, context);
        v116 = 0;
        do
        {
          if (((1 << v116) & a3) != 0)
          {
            v117 = "| ";
          }

          else
          {
            v117 = "  ";
          }

          sub_100002308(v117, v109, v110, v111, v112, v113, v114, v115, v131);
          ++v116;
        }

        while (v116 <= v106);
        sub_100002334("}", v109, v110, v111, v112, v113, v114, v115, v131);
        v125 = 0;
        do
        {
          if (((1 << v125) & a3) != 0)
          {
            v126 = "| ";
          }

          else
          {
            v126 = "  ";
          }

          sub_100002308(v126, v118, v119, v120, v121, v122, v123, v124, v132);
          ++v125;
        }

        while (v125 <= v106);
        sub_100002334(&unk_100004EA7, v118, v119, v120, v121, v122, v123, v124, v132);
        CFRelease(properties);
        return;
      }
    }

    v108 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    properties = v108;
    if (!v108)
    {
      sub_100004214();
    }

    goto LABEL_45;
  }
}

uint64_t sub_10000222C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a2;
  if (a1)
  {
    if (a2)
    {
      v11 = 0;
      do
      {
        if (((1 << v11) & a3) != 0)
        {
          v12 = "| ";
        }

        else
        {
          v12 = "  ";
        }

        sub_100002308(v12, a2, a3, a4, a5, a6, a7, a8, v17);
        ++v11;
      }

      while (v10 != v11);
    }

    return sub_100002308("+-o ", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v14 = 0;
    v15 = a2 + 1;
    do
    {
      if (((1 << v14) & a3) != 0)
      {
        v16 = "| ";
      }

      else
      {
        v16 = "  ";
      }

      result = sub_100002308(v16, a2, a3, a4, a5, a6, a7, a8, v17);
      ++v14;
    }

    while (v14 <= v15);
  }

  return result;
}

uint64_t sub_100002334(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_1000032A8(a1, &a9);
  if (byte_10000C01C == 1)
  {
    putchar(36);
  }

  result = putchar(10);
  byte_10000C01C = 0;
  dword_10000C018 = dword_10000C008;
  return result;
}

size_t sub_10000239C(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  v12 = 0;
  v13 = *(a3 + 8);
  v14 = *(a3 + 4) + 1;
  do
  {
    if ((v13 & (1 << v12)) != 0)
    {
      v15 = "| ";
    }

    else
    {
      v15 = "  ";
    }

    sub_100002308(v15, a2, a3, a4, a5, a6, a7, a8, v343);
    ++v12;
  }

  while (v12 <= v14);
  sub_100002308("  ", a2, a3, a4, a5, a6, a7, a8, v343);
  sub_100003378(a1, v16, v17, v18, v19, v20, v21, v22, v344);
  sub_100002308(" = ", v23, v24, v25, v26, v27, v28, v29, v345);
  if ((*(v9 + 16) & 4) == 0)
  {
    sub_100003378(a2, v30, v31, v32, v33, v34, v35, v36, v346);
    v44 = &unk_100004EA7;
LABEL_8:

    return sub_100002334(v44, v37, v38, v39, v40, v41, v42, v43, a9);
  }

  v46 = *v9;
  v374 = v9;
  if (CFStringCompare(a1, @"reg", 0) == kCFCompareEqualTo)
  {
    parent = 0;
    memset(name, 0, 128);
    if (!IORegistryEntryGetParentEntry(v46, "IODeviceTree", &parent))
    {
      if (IORegistryEntryGetNameInPlane(parent, "IODeviceTree", name))
      {
        sub_10000441C();
      }

      IOObjectRelease(parent);
      v75 = LOWORD(name[0]) == 25456 && BYTE2(name[0]) == 105;
      if (v75)
      {
        return sub_100003998(a2, v9, v69, v70, v71, v72, v73, v74, v346);
      }
    }

    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"assigned-addresses", 0))
  {
    if (CFStringCompare(a1, @"slot-names", 0))
    {
      if (CFStringCompare(a1, @"ranges", 0))
      {
        if (CFStringCompare(a1, @"interrupt-map", 0))
        {
          if (CFStringCompare(a1, @"interrupts", 0))
          {
            if (CFStringCompare(a1, @"interrupt-parent", 0) == kCFCompareEqualTo)
            {
              parent = 0;
              memset(name + 1, 0, 511);
              BytePtr = CFDataGetBytePtr(a2);
              result = sub_100003CB4(*BytePtr, &parent);
              if (result)
              {
                LOBYTE(name[0]) = 0;
                v54 = parent;
                sub_100003D90(parent, name);
                sub_100002308("<%08lx>", v55, v56, v57, v58, v59, v60, v61, *BytePtr);
                if (LOBYTE(name[0]))
                {
                  sub_100002308(" (%s)", v62, v63, v64, v65, v66, v67, v68, name);
                }

                sub_100002334(&unk_100004EA7, v62, v63, v64, v65, v66, v67, v68, v347);
                return IOObjectRelease(v54);
              }

              return result;
            }

LABEL_29:
            v76 = CFGetTypeID(a2);
            if (v76 == CFDataGetTypeID())
            {
              Length = CFDataGetLength(a2);
              v92 = CFDataGetBytePtr(a2);
              if (Length < 1)
              {
                v95 = 0;
                v94 = 0;
                v93 = 0;
                goto LABEL_150;
              }

              v93 = 0;
              v94 = 0;
              v95 = 0;
LABEL_32:
              if (v92[v93])
              {
                if (v93 >= Length)
                {
                  goto LABEL_150;
                }

                while (1)
                {
                  v96 = v92[v93];
                  if (v96 < 0)
                  {
                    if (__maskrune(v92[v93], 0x40000uLL))
                    {
LABEL_36:
                      ++v95;
                      goto LABEL_40;
                    }
                  }

                  else if ((_DefaultRuneLocale.__runetype[v96] & 0x40000) != 0)
                  {
                    goto LABEL_36;
                  }

                  if (v96 > -2)
                  {
                    if (v92[v93])
                    {
                      goto LABEL_150;
                    }

                    if (++v93 >= Length)
                    {
                      goto LABEL_150;
                    }

                    goto LABEL_32;
                  }

                  ++v94;
LABEL_40:
                  if (Length == ++v93)
                  {
                    goto LABEL_149;
                  }
                }
              }

              if (v93 < Length)
              {
                while (!v92[v93])
                {
                  if (Length == ++v93)
                  {
LABEL_149:
                    v93 = Length;
                    break;
                  }
                }
              }

LABEL_150:
              if (byte_10000C028)
              {
                v297 = 0;
              }

              else
              {
                v297 = v93;
              }

              v298 = Length != 1 && v95 >> 2 >= v94;
              if (v298)
              {
                v299 = v297;
              }

              else
              {
                v299 = 0;
              }

              if (v95 && v299 >= Length)
              {
                sub_100002308("<", v85, v86, v87, v88, v89, v90, v91, v346);
                if (Length >= 1)
                {
                  v307 = 0;
                  for (i = 0; i != Length; ++i)
                  {
                    while (1)
                    {
                      v309 = v92[i];
                      if (v309)
                      {
                        break;
                      }

                      if (v307 == 1)
                      {
                        sub_100002308("", v300, v301, v302, v303, v304, v305, v306, v361);
                        v307 = 0;
                        if (++i != Length)
                        {
                          continue;
                        }
                      }

                      goto LABEL_214;
                    }

                    if (!v307)
                    {
                      if (i)
                      {
                        v310 = ",";
                      }

                      else
                      {
                        v310 = "";
                      }

                      sub_100002308(v310, v300, v301, v302, v303, v304, v305, v306, v361);
                      v309 = v92[i];
                      v307 = 1;
                    }

                    sub_100002308("%c", v300, v301, v302, v303, v304, v305, v306, v309);
                  }

                  sub_100002308("", v300, v301, v302, v303, v304, v305, v306, v361);
                }
              }

              else
              {
                if (Length >= 9)
                {
                  v311 = 0;
                  v312 = 0;
                  LODWORD(v313) = (*(v9 + 72) - 2 * *(v9 + 4) - 20) >> 2;
                  if (v313 >= 0x20)
                  {
                    v313 = 32;
                  }

                  else
                  {
                    v313 = v313;
                  }

                  v365 = v313;
                  v368 = Length;
                  do
                  {
                    sub_100002334(&unk_100004EA7, v85, v86, v87, v88, v89, v90, v91, v346);
                    v373 = v312 + v365;
                    if (Length >= v373)
                    {
                      v321 = v365;
                    }

                    else
                    {
                      v321 = Length - v311;
                    }

                    LOBYTE(name[2]) = 58;
                    v322 = &name[1] + 3;
                    v323 = v312;
                    if (!v312)
                    {
                      goto LABEL_188;
                    }

                    do
                    {
                      if ((v323 & 0xF) >= 0xA)
                      {
                        v324 = (v323 & 0xF) + 55;
                      }

                      else
                      {
                        v324 = v323 & 0xF | 0x30;
                      }

                      *v322-- = v324;
                      v298 = v323 >= 0x10;
                      v323 >>= 4;
                    }

                    while (v298);
                    if (v322 >= name)
                    {
LABEL_188:
                      memset(name, 48, v322 - name + 1);
                    }

                    if (v321 < 1)
                    {
                      LODWORD(v325) = 0;
                      v332 = &name[2] + 1;
                    }

                    else
                    {
                      LODWORD(v325) = 0;
                      v326 = &name[2] + 1;
                      do
                      {
                        v327 = v92[v312 + v325];
                        *v326 = 32;
                        v328 = (v327 >> 4) + 55;
                        if (v327 < 0xA0)
                        {
                          LOBYTE(v328) = (v327 >> 4) | 0x30;
                        }

                        v326[1] = v328;
                        v329 = v327 & 0xF;
                        v330 = v327 & 0xF | 0x30;
                        v331 = (v327 & 0xF) + 55;
                        if (v329 < 0xA)
                        {
                          v331 = v330;
                        }

                        v332 = v326 + 3;
                        v326[2] = v331;
                        v325 = (v325 + 1);
                        v326 += 3;
                      }

                      while (v321 > v325);
                    }

                    if (v325 < v365)
                    {
                      v333 = 3 * (v365 + ~v325) + 3;
                      memset(v332, 32, v333);
                      v332 += v333;
                    }

                    *v332 = 32;
                    v334 = v332 + 1;
                    if (v321 >= 1)
                    {
                      v335 = 1;
                      do
                      {
                        v336 = v92[v312 - 1 + v335];
                        if ((v336 - 127) < 0xFFFFFFA1)
                        {
                          LOBYTE(v336) = 46;
                        }

                        *v334++ = v336;
                      }

                      while (v321 > v335++);
                    }

                    v338 = 0;
                    *v334 = 0;
                    v339 = *(v374 + 8);
                    v340 = *(v374 + 4) + 1;
                    do
                    {
                      if ((v339 & (1 << v338)) != 0)
                      {
                        v341 = "| ";
                      }

                      else
                      {
                        v341 = "  ";
                      }

                      sub_100002308(v341, v314, v315, v316, v317, v318, v319, v320, v362);
                      ++v338;
                    }

                    while (v338 <= v340);
                    sub_100002308("    %s", v314, v315, v316, v317, v318, v319, v320, name);
                    Length = v368;
                    v311 = v373;
                    v312 = v373;
                  }

                  while (v368 > v373);
                  goto LABEL_215;
                }

                sub_100002308("<", v85, v86, v87, v88, v89, v90, v91, v346);
                if (Length >= 1)
                {
                  do
                  {
                    v342 = *v92++;
                    sub_100002308("%02x", v300, v301, v302, v303, v304, v305, v306, v342);
                    --Length;
                  }

                  while (Length);
                }
              }

LABEL_214:
              sub_100002308(">", v300, v301, v302, v303, v304, v305, v306, v361);
            }

            else
            {
              sub_100003378(a2, v77, v78, v79, v80, v81, v82, v83, v346);
            }

LABEL_215:
            v296 = &unk_100004EA7;
            return sub_100002334(v296, v85, v86, v87, v88, v89, v90, v91, v346);
          }

          v254 = CFDataGetBytePtr(a2);
          v255 = CFDataGetLength(a2);
          result = sub_100002334(&unk_100004EA7, v256, v257, v258, v259, v260, v261, v262, v346);
          if ((v255 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
          {
            v270 = 0;
            v271 = 0;
            v372 = &v254[4 * (v255 >> 2)];
            v272 = (v255 >> 2) - 1;
            do
            {
              v273 = 0;
              v274 = *(v374 + 8);
              v275 = *(v374 + 4) + 1;
              do
              {
                if ((v274 & (1 << v273)) != 0)
                {
                  v276 = "| ";
                }

                else
                {
                  v276 = "  ";
                }

                sub_100002308(v276, v263, v264, v265, v266, v267, v268, v269, v360);
                ++v273;
              }

              while (v273 <= v275);
              sub_100002308("    %02ld: ", v263, v264, v265, v266, v267, v268, v269, v270);
              v284 = *v254;
              if (v271 >= v272)
              {
                result = sub_100002334("parent interrupt-map entry: %08lx", v277, v278, v279, v280, v281, v282, v283, *v254);
              }

              else
              {
                v285 = *v254;
                v286 = *(v254 + 1);
                v254 += 4;
                sub_100002308("specifier: %08lx (vector: %02lx) sense: %08lx (", v277, v278, v279, v280, v281, v282, v283, v284);
                v294 = *v254;
                if ((*v254 & 2) != 0)
                {
                  sub_100002308("HyperTransport vector: %04lx, ", v287, v288, v289, v290, v291, v292, v293, SBYTE2(v294));
                  v294 = *v254;
                }

                ++v271;
                v75 = (v294 & 1) == 0;
                v295 = "level";
                if (v75)
                {
                  v295 = "edge";
                }

                result = sub_100002334("%s)", v287, v288, v289, v290, v291, v292, v293, v295);
              }

              v254 += 4;
              ++v271;
              ++v270;
            }

            while (v254 < v372);
          }
        }

        else
        {
          parent = 0;
          memset(name, 0, 512);
          v182 = sub_100003C50(*v9, @"#address-cells");
          v183 = sub_100003C50(*v9, @"#interrupt-cells");
          v184 = CFDataGetBytePtr(a2);
          v185 = CFDataGetLength(a2) & 0xFFFFFFFFFFFFFFFCLL;
          result = sub_100002334(&unk_100004EA7, v186, v187, v188, v189, v190, v191, v192, v346);
          if (v185 >= 1)
          {
            v200 = 0;
            v367 = (v184 + v185);
            v364 = v183 + v182;
            do
            {
              v201 = 0;
              v202 = *(v9 + 8);
              v203 = *(v9 + 4) + 1;
              do
              {
                if ((v202 & (1 << v201)) != 0)
                {
                  v204 = "| ";
                }

                else
                {
                  v204 = "  ";
                }

                sub_100002308(v204, v193, v194, v195, v196, v197, v198, v199, v354);
                ++v201;
              }

              while (v201 <= v203);
              sub_100002308("    %02ld: ", v193, v194, v195, v196, v197, v198, v199, v200);
              sub_100002308("  child: ", v205, v206, v207, v208, v209, v210, v211, v355);
              v219 = v364;
              if (v364 >= 1)
              {
                do
                {
                  v220 = *v184++;
                  sub_100002308("%08lx ", v212, v213, v214, v215, v216, v217, v218, v220);
                  --v219;
                }

                while (v219);
              }

              sub_100002334(&unk_100004EA7, v212, v213, v214, v215, v216, v217, v218, v356);
              if (sub_100003CB4(*v184, &parent))
              {
                v221 = parent;
              }

              else
              {
                sub_100004304(&parent);
                v221 = 0;
              }

              v371 = sub_100003C50(v221, @"#address-cells");
              v222 = sub_100003C50(v221, @"#interrupt-cells");
              LOBYTE(name[0]) = 0;
              sub_100003D90(v221, name);
              IOObjectRelease(v221);
              v230 = 0;
              v231 = *(v374 + 8);
              v232 = *(v374 + 4) + 1;
              do
              {
                if ((v231 & (1 << v230)) != 0)
                {
                  v233 = "| ";
                }

                else
                {
                  v233 = "  ";
                }

                sub_100002308(v233, v223, v224, v225, v226, v227, v228, v229, v357);
                ++v230;
              }

              while (v230 <= v232);
              sub_100002334("        phandle: %08lx (%s)", v223, v224, v225, v226, v227, v228, v229, *v184);
              v241 = 0;
              v242 = *(v374 + 8);
              v243 = *(v374 + 4) + 1;
              do
              {
                if ((v242 & (1 << v241)) != 0)
                {
                  v244 = "| ";
                }

                else
                {
                  v244 = "  ";
                }

                sub_100002308(v244, v234, v235, v236, v237, v238, v239, v240, v358);
                ++v241;
              }

              while (v241 <= v243);
              LODWORD(v245) = v222 + v371;
              sub_100002308("         parent: ", v234, v235, v236, v237, v238, v239, v240, v358);
              ++v184;
              if (v222 + v371 < 1)
              {
                v9 = v374;
              }

              else
              {
                v245 = v245;
                v9 = v374;
                do
                {
                  v253 = *v184++;
                  sub_100002308("%08lx ", v246, v247, v248, v249, v250, v251, v252, v253);
                  --v245;
                }

                while (v245);
              }

              result = sub_100002334(&unk_100004EA7, v246, v247, v248, v249, v250, v251, v252, v359);
              ++v200;
            }

            while (v184 < v367);
          }
        }
      }

      else
      {
        v113 = CFGetTypeID(a2);
        if (v113 != CFDataGetTypeID())
        {
          sub_100004354();
        }

        v114 = CFDataGetLength(a2);
        if (!v114)
        {
          v296 = "<>";
          return sub_100002334(v296, v85, v86, v87, v88, v89, v90, v91, v346);
        }

        v115 = v114;
        parent = 0;
        v116 = CFDataGetBytePtr(a2);
        v363 = v115;
        if (IORegistryEntryGetParentEntry(*v9, "IODeviceTree", &parent))
        {
          sub_100004390(&parent);
          v117 = 0;
        }

        else
        {
          v117 = parent;
        }

        v118 = sub_100003C50(v117, @"#address-cells");
        IOObjectRelease(parent);
        v119 = sub_100003C50(*v9, @"#address-cells");
        v369 = sub_100003C50(*v9, @"#size-cells");
        sub_100002334(&unk_100004EA7, v120, v121, v122, v123, v124, v125, v126, v346);
        v134 = 0;
        v135 = *(v9 + 8);
        v136 = *(v9 + 4) + 1;
        do
        {
          if ((v135 & (1 << v134)) != 0)
          {
            v137 = "| ";
          }

          else
          {
            v137 = "  ";
          }

          sub_100002308(v137, v127, v128, v129, v130, v131, v132, v133, v349);
          ++v134;
        }

        while (v134 <= v136);
        sub_100002308("    ", v127, v128, v129, v130, v131, v132, v133, v349);
        v145 = 0;
        name[0] = v119;
        name[1] = v118;
        name[2] = v369;
        do
        {
          sub_100002308("%s", v138, v139, v140, v141, v142, v143, v144, (&off_100008348)[v145]);
          v153 = name[v145];
          if (v153 < 2)
          {
            sub_100002308(" ", v146, v147, v148, v149, v150, v151, v152, v350);
          }

          else
          {
            sub_100002308("-", v146, v147, v148, v149, v150, v151, v152, v350);
            v154 = v153 - 1;
            do
            {
              if (--v154)
              {
                v155 = "---------";
              }

              else
              {
                v155 = "-------- ";
              }

              sub_100002308(v155, v138, v139, v140, v141, v142, v143, v144, v351);
            }

            while (v154);
          }

          ++v145;
        }

        while (v145 != 3);
        v156 = v119 + v118 + v369;
        result = sub_100002334(&unk_100004EA7, v138, v139, v140, v141, v142, v143, v144, v351);
        v164 = 4 * v156;
        v165 = v9;
        if (v164 <= v363)
        {
          v166 = 0;
          v167 = v156;
          v370 = v156;
          if (v156 <= 1)
          {
            v167 = 1;
          }

          v366 = v167;
          v168 = v363 / v164;
          do
          {
            v169 = 0;
            v170 = *(v165 + 8);
            v171 = *(v165 + 4) + 1;
            do
            {
              if ((v170 & (1 << v169)) != 0)
              {
                v172 = "| ";
              }

              else
              {
                v172 = "  ";
              }

              sub_100002308(v172, v157, v158, v159, v160, v161, v162, v163, v352);
              ++v169;
            }

            while (v169 <= v171);
            sub_100002308("    ", v157, v158, v159, v160, v161, v162, v163, v352);
            if (v370)
            {
              v180 = v366;
              v165 = v374;
              do
              {
                v181 = *v116;
                v116 += 4;
                sub_100002308("%08lx ", v173, v174, v175, v176, v177, v178, v179, v181);
                --v180;
              }

              while (v180);
            }

            else
            {
              v165 = v374;
            }

            result = sub_100002334(&unk_100004EA7, v173, v174, v175, v176, v177, v178, v179, v353);
            ++v166;
          }

          while (v166 < v168);
        }
      }
    }

    else
    {
      v97 = CFGetTypeID(a2);
      if (v97 != CFDataGetTypeID())
      {
        sub_1000043E0();
      }

      if (!CFDataGetLength(a2) || (v98 = CFDataGetBytePtr(a2), !*v98))
      {
        v44 = "<>";
        goto LABEL_8;
      }

      v99 = v98;
      v100 = (v98 + 4);
      result = sub_100002334(&unk_100004EA7, v37, v38, v39, v40, v41, v42, v43, v346);
      for (j = 0; j != 32; ++j)
      {
        if ((*v99 >> j))
        {
          v109 = 0;
          v110 = *(v374 + 8);
          v111 = *(v374 + 4) + 1;
          do
          {
            if ((v110 & (1 << v109)) != 0)
            {
              v112 = "| ";
            }

            else
            {
              v112 = "  ";
            }

            sub_100002308(v112, v101, v102, v103, v104, v105, v106, v107, v348);
            ++v109;
          }

          while (v109 <= v111);
          sub_100002334("    %02lu: %s", v101, v102, v103, v104, v105, v106, v107, j);
          result = strlen(v100);
          v100 += result + 1;
        }
      }
    }
  }

  else
  {

    return sub_100003998(a2, v9, v47, v48, v49, v50, v51, v52, a9);
  }

  return result;
}

uint64_t sub_1000032A8(char *__format, va_list a2)
{
  if (dword_10000C008)
  {
    v3 = vsnprintf(qword_10000C010, dword_10000C018, __format, a2);
    v4 = qword_10000C010;
    for (i = strchr(qword_10000C010, 10); i; i = strchr(v4, 10))
    {
      *i = 32;
    }

    result = printf("%s", v4);
    if (v3 >= dword_10000C018)
    {
      v3 = dword_10000C018 - 1;
      byte_10000C01C = 1;
    }

    dword_10000C018 -= v3;
  }

  else
  {

    return vprintf(__format, a2);
  }

  return result;
}

void sub_100003378(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = CFGetTypeID(a1);
  if (v10 == CFArrayGetTypeID())
  {
    context = 1;
    Count = CFArrayGetCount(a1);
    sub_100002308("(", v12, v13, v14, v15, v16, v17, v18, v79);
    v86.location = 0;
    v86.length = Count;
    CFArrayApplyFunction(a1, v86, sub_100003890, &context);
    v26 = ")";
LABEL_3:
    sub_100002308(v26, v19, v20, v21, v22, v23, v24, v25, v80);
    return;
  }

  if (v10 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(a1))
    {
      v34 = "Yes";
    }

    else
    {
      v34 = "No";
    }

LABEL_64:

    sub_100002308(v34, v27, v28, v29, v30, v31, v32, v33, a9);
    return;
  }

  if (v10 == CFDataGetTypeID())
  {
    sub_100002308("<", v35, v36, v37, v38, v39, v40, v41, v79);
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 1)
    {
      v46 = 0;
      v45 = 0;
      v44 = 0;
LABEL_37:
      if (byte_10000C028)
      {
        v64 = 0;
      }

      else
      {
        v64 = v44;
      }

      if (Length != 1 && v46 >> 2 >= v45)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0;
      }

      if (v46 && v66 >= Length)
      {
        if (Length >= 1)
        {
          v67 = 0;
          for (i = 0; i != Length; ++i)
          {
            while (1)
            {
              v69 = BytePtr[i];
              if (v69)
              {
                break;
              }

              if (v67 == 1)
              {
                sub_100002308("", v27, v28, v29, v30, v31, v32, v33, v81);
                v67 = 0;
                if (++i != Length)
                {
                  continue;
                }
              }

              goto LABEL_63;
            }

            if (!v67)
            {
              if (i)
              {
                v70 = ",";
              }

              else
              {
                v70 = "";
              }

              sub_100002308(v70, v27, v28, v29, v30, v31, v32, v33, v81);
              v69 = BytePtr[i];
              v67 = 1;
            }

            sub_100002308("%c", v27, v28, v29, v30, v31, v32, v33, v69);
          }

          sub_100002308("", v27, v28, v29, v30, v31, v32, v33, v81);
        }
      }

      else if (Length >= 1)
      {
        do
        {
          v71 = *BytePtr++;
          sub_100002308("%02x", v27, v28, v29, v30, v31, v32, v33, v71);
          --Length;
        }

        while (Length);
      }

LABEL_63:
      v34 = ">";
      goto LABEL_64;
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_12:
    if (BytePtr[v44])
    {
      v47 = v44 < Length;
    }

    else
    {
      v47 = 0;
    }

    if (!v47)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v48 = BytePtr[v44];
      if (v48 < 0)
      {
        if (__maskrune(BytePtr[v44], 0x40000uLL))
        {
LABEL_19:
          ++v46;
          goto LABEL_23;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v48] & 0x40000) != 0)
      {
        goto LABEL_19;
      }

      if (v48 > -2)
      {
        if (BytePtr[v44])
        {
          goto LABEL_37;
        }

        if (++v44 >= Length)
        {
          goto LABEL_37;
        }

        goto LABEL_12;
      }

      ++v45;
LABEL_23:
      if (Length == ++v44)
      {
        v44 = Length;
        goto LABEL_37;
      }
    }
  }

  if (v10 == CFDictionaryGetTypeID())
  {
    v83 = 1;
    sub_100002308("{", v49, v50, v51, v52, v53, v54, v55, v79);
    CFDictionaryApplyFunction(a1, sub_1000038E0, &v83);
    v26 = "}";
    goto LABEL_3;
  }

  if (v10 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
    {
      if (byte_10000C028)
      {
        v63 = "0x%qx";
      }

      else
      {
        v63 = "%qu";
      }

      sub_100002308(v63, v56, v57, v58, v59, v60, v61, v62, valuePtr);
    }
  }

  else if (v10 == CFSetGetTypeID())
  {

    sub_100003764(a1, v72, v73, v74, v75, v76, v77, v78);
  }

  else
  {
    if (v10 != CFStringGetTypeID())
    {
      v34 = "<unknown object>";
      goto LABEL_64;
    }

    sub_1000037C8(a1);
  }
}

uint64_t sub_100003764(const __CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  context = 1;
  sub_100002308("[", a2, a3, a4, a5, a6, a7, a8, v17);
  CFSetApplyFunction(a1, sub_100003948, &context);
  return sub_100002308("]", v9, v10, v11, v12, v13, v14, v15, v18);
}

void sub_1000037C8(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    sub_100002308("%s", v3, v4, v5, v6, v7, v8, v9, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    v11 = malloc_type_malloc(Length + 1, 0x69F048C4uLL);
    if (v11)
    {
      v12 = v11;
      if (CFStringGetCString(a1, v11, Length + 1, 0x8000100u))
      {
        sub_100002308("%s", v13, v14, v15, v16, v17, v18, v19, v12);
      }

      free(v12);
    }
  }
}

uint64_t sub_100003890(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    sub_100002308(",", a2, a3, a4, a5, a6, a7, a8, v10);
  }

  return sub_100003378(a1);
}

uint64_t sub_1000038E0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3)
  {
    *a3 = 0;
  }

  else
  {
    sub_100002308(",", a2, a3, a4, a5, a6, a7, a8, v18);
  }

  sub_100003378(a1);
  sub_100002308("=", v10, v11, v12, v13, v14, v15, v16, v18);

  return sub_100003378(a2);
}

uint64_t sub_100003948(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    sub_100002308(",", a2, a3, a4, a5, a6, a7, a8, v10);
  }

  return sub_100003378(a1);
}

uint64_t sub_100003998(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = CFGetTypeID(a1);
  if (v11 != CFDataGetTypeID())
  {
    sub_1000043E0();
  }

  Length = CFDataGetLength(a1);
  if (Length)
  {
    v20 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    result = sub_100002334(&unk_100004EA7, v21, v22, v23, v24, v25, v26, v27, v75);
    if (v20 >= 0x14)
    {
      v36 = 0;
      do
      {
        v37 = 0;
        v38 = &BytePtr[20 * v36];
        v85 = BYTE2(*v38);
        v86 = (&off_100008360)[(*v38 >> 24) & 3];
        v39 = *(a2 + 8);
        v40 = *(a2 + 4) + 1;
        do
        {
          if ((v39 & (1 << v37)) != 0)
          {
            v41 = "| ";
          }

          else
          {
            v41 = "  ";
          }

          sub_100002308(v41, v29, v30, v31, v32, v33, v34, v35, v76);
          ++v37;
        }

        while (v37 <= v40);
        v82 = *(v38 + 1);
        v83 = *(v38 + 2);
        v80 = *v38;
        sub_100002334("    %02lu: phys.hi: %08lx phys.mid: %08lx phys.lo: %08lx", v29, v30, v31, v32, v33, v34, v35, v36);
        v49 = 0;
        v50 = *(a2 + 8);
        v51 = *(a2 + 4) + 1;
        do
        {
          if ((v50 & (1 << v49)) != 0)
          {
            v52 = "| ";
          }

          else
          {
            v52 = "  ";
          }

          sub_100002308(v52, v42, v43, v44, v45, v46, v47, v48, v77);
          ++v49;
        }

        while (v49 <= v51);
        v81 = *(v38 + 4);
        sub_100002334("        size.hi: %08lx size.lo: %08lx", v42, v43, v44, v45, v46, v47, v48, *(v38 + 3));
        v60 = 0;
        v61 = *(a2 + 8);
        v62 = *(a2 + 4) + 1;
        do
        {
          if ((v61 & (1 << v60)) != 0)
          {
            v63 = "| ";
          }

          else
          {
            v63 = "  ";
          }

          sub_100002308(v63, v53, v54, v55, v56, v57, v58, v59, v78);
          ++v60;
        }

        while (v60 <= v62);
        sub_100002334("        bus: %lu dev: %lu func: %lu reg: %lu", v53, v54, v55, v56, v57, v58, v59, v85);
        v71 = 0;
        v72 = *(a2 + 8);
        v73 = *(a2 + 4) + 1;
        do
        {
          if ((v72 & (1 << v71)) != 0)
          {
            v74 = "| ";
          }

          else
          {
            v74 = "  ";
          }

          sub_100002308(v74, v64, v65, v66, v67, v68, v69, v70, v79);
          ++v71;
        }

        while (v71 <= v73);
        result = sub_100002334("        type: %s flags: %s%s%s", v64, v65, v66, v67, v68, v69, v70, v86);
        ++v36;
      }

      while (v36 != v20 / 0x14);
    }
  }

  else
  {

    return sub_100002334("<>", v13, v14, v15, v16, v17, v18, v19, a9);
  }

  return result;
}

uint64_t sub_100003C50(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IODeviceTree", key, kCFAllocatorDefault, 3u);
  if (v2)
  {
    v3 = v2;
    v4 = *CFDataGetBytePtr(v2);
    CFRelease(v3);
  }

  else
  {
    sub_100004474();
    return 0;
  }

  return v4;
}

BOOL sub_100003CB4(int a1, io_service_t *a2)
{
  *bytes = a1;
  keys = @"AAPL,phandle";
  v9 = @"IOPropertyMatch";
  values = CFDataCreate(0, bytes, 4);
  cf = CFDictionaryCreate(0, &keys, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDictionaryCreate(0, &v9, &cf, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  *a2 = MatchingService;
  v5 = MatchingService != 0;
  CFRelease(cf);
  CFRelease(values);
  return v5;
}

void *sub_100003D90(io_registry_entry_t a1, io_string_t path)
{
  if (IORegistryEntryGetPath(a1, "IODeviceTree", path))
  {
    sub_1000044B4(path);
  }

  v3 = strchr(path, 58);
  v4 = strlen(v3 + 1) + 1;

  return memmove(path, v3 + 1, v4);
}

uint64_t sub_100003EE0(void *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain properties");
  *a1 = 0;
  return result;
}

uint64_t sub_100003F88(void *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain identifier");
  *a1 = -1;
  return result;
}

uint64_t sub_100004304(_DWORD *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "error looking up phandle");
  *a1 = 0;
  return result;
}

uint64_t sub_100004390(_DWORD *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "unable to get device tree parent");
  *a1 = 0;
  return result;
}

uint64_t sub_1000044B4(char *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "unable to get path");
  strcpy(a1, "<path error");
  return result;
}