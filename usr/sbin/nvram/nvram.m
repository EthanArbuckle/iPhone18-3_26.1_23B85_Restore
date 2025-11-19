uint64_t start(int a1, uint64_t a2)
{
  mainPort = 0;
  byte_100008000 = os_variant_allows_internal_security_policies();
  v4 = IOMainPort(bootstrap_port, &mainPort);
  if (v4)
  {
    sub_100002374(v4);
  }

  v5 = &byte_100008000;
  dword_100008004 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!dword_100008004)
  {
    sub_100002630();
  }

  v6 = &byte_100008000;
  dword_100008008 = IORegistryEntryFromPath(mainPort, "IOService:/options/options-system");
  v7 = &byte_100008000;
  dword_10000800C = dword_100008004;
  if (a1 >= 2)
  {
    v92 = 0;
    v94 = 0;
    v8 = a1;
    v93 = a1;
    v9 = &byte_100008000;
    v10 = 1;
    v90 = a2;
    v91 = a1;
    while (1)
    {
      v11 = *(a2 + 8 * v10);
      v12 = *v11;
      if (v12 == 45)
      {
        v14 = v11 + 1;
        v13 = v11[1];
        if (v11[1])
        {
          v15 = &byte_100008000;
          while (1)
          {
            if (v13 > 103)
            {
              if (v13 <= 114)
              {
                switch(v13)
                {
                  case 'p':
                    *&v96.st_dev = 0;
                    CFProperties = IORegistryEntryCreateCFProperties(*(v7 + 3), &v96, 0, 0);
                    if (CFProperties)
                    {
                      sub_10000239C(CFProperties);
                    }

                    if (v9[17] == 1)
                    {
                      Data = CFPropertyListCreateData(kCFAllocatorDefault, *&v96.st_dev, kCFPropertyListXMLFormat_v1_0, 0, 0);
                      if (!Data)
                      {
                        sub_100002588();
                      }

                      v32 = Data;
                      BytePtr = CFDataGetBytePtr(Data);
                      Length = CFDataGetLength(v32);
                      fwrite(BytePtr, 1uLL, Length, __stdoutp);
                      CFRelease(v32);
                      v9 = &byte_100008000;
                    }

                    else
                    {
                      CFDictionaryApplyFunction(*&v96.st_dev, sub_100001DD8, 0);
                    }

                    CFRelease(*&v96.st_dev);
                    break;
                  case 'r':
                    if (++v10 >= v8 || (v27 = *(a2 + 8 * v10), *v27 == 45))
                    {
LABEL_194:
                      sub_10000158C("missing name");
                    }

                    v28 = sub_1000016A8("IONVRAM-DELETEWRET-PROPERTY", v27);
                    if (v28)
                    {
                      v87 = *(a2 + 8 * v10);
                      mach_error_string(v28);
                      errx(1, "Error deleting variable - '%s': %s (0x%08x)");
                    }

                    v94 = 0;
                    break;
                  case 'h':
                    sub_10000158C(&unk_100002DA7);
                  default:
                    goto LABEL_204;
                }
              }

              else
              {
                switch(v13)
                {
                  case 's':
                    byte_100008012 = 1;
                    break;
                  case 'x':
                    if (byte_100008010 == 1)
                    {
                      v84 = 1;
                      fwrite("-x not supported with -X hex mode.\n", 0x23uLL, 1uLL, __stderrp);
                      return v84;
                    }

                    v9[17] = 1;
                    break;
                  case 'z':
                    if (byte_100008000 != 1)
                    {
                      sub_10000158C("unsupported option -z");
                    }

                    if (*(v15 + 2))
                    {
                      fwrite("Selecting options-system node.\n", 0x1FuLL, 1uLL, __stderrp);
                      *(v7 + 3) = *(v15 + 2);
                    }

                    else
                    {
                      fwrite("No options-system node, using options.\n", 0x27uLL, 1uLL, __stderrp);
                    }

                    break;
                  default:
                    goto LABEL_204;
                }
              }
            }

            else if (v13 <= 98)
            {
              switch(v13)
              {
                case 88:
                  if (v9[17] == 1)
                  {
                    fwrite("-X hex mode not supported with -x XMLmode.\n", 0x2BuLL, 1uLL, __stderrp);
                    return 1;
                  }

                  byte_100008010 = 1;
                  break;
                case 98:
                  if (a1 != 4)
                  {
                    sub_10000158C("missing arguments");
                  }

                  if (v10 + 1 >= v8 || (v26 = *(a2 + 8 * (v10 + 1)), *v26 == 45))
                  {
                    ++v10;
                  }

                  else
                  {
                    v10 += 2;
                    v46 = fopen(*(a2 + 8 * v10), "r");
                    if (!v46)
                    {
                      err(1, "Couldn't open binary file - '%s'");
                    }

                    v47 = v46;
                    v48 = getc(v46);
                    if (v48 == -1)
                    {
                      goto LABEL_211;
                    }

                    v49 = v48;
                    v50 = 0;
                    do
                    {
                      if (v50 >= 2048)
                      {
                        sub_1000023E0();
                      }

                      if (v49 > 0x7F)
                      {
                        v51 = __maskrune(v49, 0x40000uLL);
                      }

                      else
                      {
                        v51 = _DefaultRuneLocale.__runetype[v49] & 0x40000;
                      }

                      if (v49 == 37 || !v51)
                      {
                        v50 += sprintf(&v96 + v50, "%%%02x", v49);
                      }

                      else
                      {
                        *(&v96.st_dev + v50++) = v49;
                      }

                      v49 = getc(v47);
                    }

                    while (v49 != -1);
                    if (v50 <= 0)
                    {
LABEL_211:
                      sub_100002564();
                    }

                    *(&v96.st_dev + v50) = 0;
                    v43 = sub_1000016A8(v26, &v96);
                    if (v43)
                    {
LABEL_195:
                      mach_error_string(v43);
                      errx(1, "Error setting variable - '%s': %s");
                    }

                    v7 = &byte_100008000;
                    v8 = v93;
                    v9 = &byte_100008000;
                  }

                  break;
                case 0:
                  goto LABEL_179;
                default:
LABEL_204:
                  strcpy(&v96, "no such option as --");
                  *(&v96 + strlen(&v96) - 1) = v13;
                  sub_10000158C(&v96);
              }
            }

            else
            {
              switch(v13)
              {
                case 'c':
                  *&v96.st_dev = 0;
                  v29 = IORegistryEntryCreateCFProperties(*(v7 + 3), &v96, 0, 0);
                  LODWORD(format[0]) = v29;
                  if (v29)
                  {
                    sub_10000239C(v29);
                  }

                  CFDictionaryApplyFunction(*&v96.st_dev, sub_1000022F8, format);
                  CFRelease(*&v96.st_dev);
                  v94 = LODWORD(format[0]);
                  break;
                case 'd':
                  if (++v10 >= v8)
                  {
                    goto LABEL_194;
                  }

                  v35 = *(a2 + 8 * v10);
                  if (*v35 == 45)
                  {
                    goto LABEL_194;
                  }

                  sub_1000016A8("IONVRAM-DELETE-PROPERTY", v35);
                  break;
                case 'f':
                  if (++v10 >= v8 || (v16 = *(a2 + 8 * v10), *v16 == 45))
                  {
                    sub_10000158C("missing filename");
                  }

                  if (v9[17] == 1)
                  {
                    memset(&v96, 0, sizeof(v96));
                    format[0] = kCFPropertyListBinaryFormat_v1_0;
                    v17 = open(v16, 256, 0x8000);
                    if (v17 == -1)
                    {
                      sub_10000252C(v16);
                    }

                    v18 = v17;
                    if (fstat(v17, &v96) == -1)
                    {
                      sub_1000024F4(v16);
                    }

                    if (v96.st_size >= &_mh_execute_header)
                    {
                      sub_1000024D8();
                    }

                    v19 = malloc_type_malloc(v96.st_size, 0x89FD19DDuLL);
                    if (!v19)
                    {
                      sub_1000024BC();
                    }

                    v20 = v19;
                    v21 = read(v18, v19, v96.st_size);
                    if (v21 != v96.st_size)
                    {
                      sub_100002430(v16);
                    }

                    close(v18);
                    v22 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, v20, v96.st_size, kCFAllocatorNull);
                    if (!v22)
                    {
                      sub_1000024A0();
                    }

                    v23 = v22;
                    if (!CFReadStreamOpen(v22))
                    {
                      sub_100002484();
                    }

                    v24 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v23, v96.st_size, 0, format, 0);
                    if (!v24)
                    {
                      sub_100002468();
                    }

                    v25 = v24;
                    CFReadStreamClose(v23);
                    CFRelease(v23);
                    free(v20);
                    CFDictionaryApplyFunction(v25, sub_100001B38, 0);
                    CFRelease(v25);
                    v9 = &byte_100008000;
                    goto LABEL_112;
                  }

                  v36 = fopen(*(a2 + 8 * v10), "r");
                  if (!v36)
                  {
                    err(1, "Couldn't open patch file - '%s'");
                  }

                  v37 = v36;
                  v38 = getc(v36);
                  if (v38 != -1)
                  {
                    v39 = v38;
                    v40 = 0;
                    v41 = 0;
                    v42 = 0;
                    while (1)
                    {
                      if (v41 == 255)
                      {
                        sub_100002408();
                      }

                      if (v40 == 2047)
                      {
                        sub_1000023E0();
                      }

                      if (v42 > 3)
                      {
                        if (v42 > 5 || v42 == 4)
                        {
                          if (v39 == 10)
                          {
                            goto LABEL_80;
                          }

                          if (v39 > 0x7F)
                          {
                            if (!__maskrune(v39, 0x4000uLL))
                            {
LABEL_93:
                              *(&v96.st_dev + v40++) = v39;
                              v42 = 5;
                            }
                          }

                          else if ((_DefaultRuneLocale.__runetype[v39] & 0x4000) == 0)
                          {
                            goto LABEL_93;
                          }
                        }

                        else
                        {
                          if (v39 != 10)
                          {
                            goto LABEL_93;
                          }

                          if (*(&v96 + v40 - 1) != 92)
                          {
LABEL_80:
                            *(format + v41) = 0;
                            *(&v96.st_dev + v40) = 0;
                            v43 = sub_1000016A8(format, &v96);
                            if (v43)
                            {
                              goto LABEL_195;
                            }

                            goto LABEL_81;
                          }

                          *(&v96 + v40 - 1) = 13;
                          v42 = 6;
                        }
                      }

                      else if (v42 > 1)
                      {
                        if (v42 == 2)
                        {
                          if (v39 != 10)
                          {
                            if (v39 > 0x7F)
                            {
                              if (__maskrune(v39, 0x4000uLL))
                              {
                                goto LABEL_105;
                              }
                            }

                            else if ((_DefaultRuneLocale.__runetype[v39] & 0x4000) != 0)
                            {
                              goto LABEL_105;
                            }

LABEL_100:
                            *(format + v41++) = v39;
LABEL_101:
                            v42 = 3;
                            goto LABEL_106;
                          }

                          goto LABEL_81;
                        }

                        if (v39 == 10)
                        {
                          *(format + v41) = 0;
                          warnx("Name must be followed by white space - '%s'", format);
                          goto LABEL_81;
                        }

                        if (v39 > 0x7F)
                        {
                          if (!__maskrune(v39, 0x4000uLL))
                          {
                            goto LABEL_100;
                          }
                        }

                        else if ((_DefaultRuneLocale.__runetype[v39] & 0x4000) == 0)
                        {
                          goto LABEL_100;
                        }

                        v42 = 4;
                      }

                      else if (v42)
                      {
                        v42 = v39 != 10;
                      }

                      else
                      {
                        if (v39 == 10)
                        {
                          v40 = 0;
                          v41 = 0;
LABEL_81:
                          v42 = 0;
                          goto LABEL_106;
                        }

                        if (v39 != 35)
                        {
                          if (v39 > 0x7F)
                          {
                            v44 = __maskrune(v39, 0x4000uLL);
                          }

                          else
                          {
                            v44 = _DefaultRuneLocale.__runetype[v39] & 0x4000;
                          }

                          v40 = 0;
                          if (v44)
                          {
                            v41 = 0;
LABEL_105:
                            v42 = 2;
                            goto LABEL_106;
                          }

                          LOBYTE(format[0]) = v39;
                          v41 = 1;
                          goto LABEL_101;
                        }

                        v40 = 0;
                        v41 = 0;
                        v42 = 1;
                      }

LABEL_106:
                      v39 = getc(v37);
                      if (v39 == -1)
                      {
                        v9 = &byte_100008000;
                        if (v42)
                        {
                          sub_1000023C4();
                        }

                        break;
                      }
                    }
                  }

LABEL_112:
                  v15 = &byte_100008000;
                  v7 = &byte_100008000;
                  v8 = v93;
                  break;
                default:
                  goto LABEL_204;
              }
            }

            v45 = *++v14;
            v13 = v45;
          }
        }
      }

      ++v92;
      v52 = (v11 + 1);
      while (v12 <= 44)
      {
        if (v12 != 43)
        {
          if (!v12)
          {
            v58 = 0;
            v59 = 0;
            v57 = v52 - 1;
            goto LABEL_144;
          }

          goto LABEL_140;
        }

        v12 = *v52;
        if (v12 == 61)
        {
          v58 = 0;
          v59 = 1;
          goto LABEL_143;
        }

LABEL_141:
        ++v52;
      }

      if (v12 != 45)
      {
        break;
      }

      v12 = *v52;
      if (v12 != 61)
      {
        goto LABEL_141;
      }

      v59 = 0;
      v58 = 1;
LABEL_143:
      *(v52 - 1) = 0;
      v57 = v52 + 1;
LABEL_144:
      v60 = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
      if (!v60)
      {
        errx(1, "Error creating CFString for key %s");
      }

      v55 = v60;
      CFProperty = IORegistryEntryCreateCFProperty(*(v7 + 3), v60, 0, 0);
      if (!CFProperty)
      {
        sub_1000025F8(v11);
      }

      v54 = CFProperty;
      if (!v59)
      {
        if (!v58)
        {
          sub_100001DD8(v55, CFProperty);
          MutableCopy = 0;
          v53 = 0;
          a2 = v90;
          v8 = v93;
          goto LABEL_171;
        }

        MutableCopy = 0;
        v53 = 0;
LABEL_156:
        v73 = CFGetTypeID(v54);
        if (v73 == CFStringGetTypeID())
        {
          v74 = CFStringGetLength(v54);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v74, 0x8000100u);
          v76 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0xA2641C9BuLL);
          if (!v76 || (v52 = v76, CString = CFStringGetCString(v54, v76, MaximumSizeForEncoding, 0x8000100u), v53 = v52, !CString))
          {
            sub_1000025C0();
          }
        }

        else
        {
          v78 = CFGetTypeID(v54);
          if (v78 != CFDataGetTypeID())
          {
            sub_1000025A4();
          }

          v52 = CFDataGetBytePtr(v54);
        }

        v79 = strstr(v52, v57);
        if (!v79)
        {
          errx(1, "substring %s not found in %s\n");
        }

        v80 = v79;
        v81 = strlen(v57);
        v82 = strlen(&v80[v81]);
        memmove(v80, &v80[v81], v82 + 1);
        goto LABEL_168;
      }

      v62 = CFGetTypeID(CFProperty);
      if (v62 != CFStringGetTypeID())
      {
        v68 = CFGetTypeID(v54);
        if (v68 != CFDataGetTypeID())
        {
          sub_1000025A4();
        }

        v69 = CFDataGetLength(v54);
        v70 = strlen(v57);
        MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v69 + v70 + 1, v54);
        v71 = strlen(v57);
        CFDataAppendBytes(MutableCopy, v57, v71 + 1);
        v72 = CFDataGetBytePtr(MutableCopy);
        v53 = 0;
        if ((v58 & 1) == 0)
        {
          v52 = v72;
          goto LABEL_168;
        }

        goto LABEL_156;
      }

      v63 = strlen(v57);
      v64 = CFStringGetLength(v54);
      v65 = CFStringGetMaximumSizeForEncoding(v64, 0x8000100u) + v63;
      v66 = malloc_type_calloc(v65 + 1, 1uLL, 0xE756C102uLL);
      if (!v66 || (v53 = v66, !CFStringGetCString(v54, v66, v65, 0x8000100u)))
      {
        sub_1000025DC();
      }

      v67 = strlen(v53);
      strcpy(&v53[v67], v57);
      MutableCopy = 0;
      if (v58)
      {
        goto LABEL_156;
      }

      v52 = v53;
LABEL_168:
      a2 = v90;
      v8 = v93;
LABEL_169:
      v83 = sub_1000016A8(v11, v52);
      sub_10000167C();
      if (v83)
      {
        v88 = __stderrp;
        v89 = mach_error_string(v83);
        fprintf(v88, "Error setting variable - '%s': %s.\n", v11, v89);
        if (v83 == -536870211)
        {
          sub_100001B7C();
        }

        exit(1);
      }

      if (v55)
      {
LABEL_171:
        CFRelease(v55);
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v53)
      {
        free(v53);
      }

      a1 = v91;
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v7 = &byte_100008000;
      v9 = &byte_100008000;
LABEL_179:
      if (++v10 >= v8)
      {
        v5 = &byte_100008000;
        v6 = &byte_100008000;
        v84 = v94;
        if (!v92)
        {
          goto LABEL_183;
        }

        goto LABEL_185;
      }
    }

    if (v12 == 61)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      MutableCopy = 0;
      *(v52 - 1) = 0;
      goto LABEL_169;
    }

LABEL_140:
    v12 = *v52;
    goto LABEL_141;
  }

  v84 = 0;
LABEL_183:
  if (byte_100008012 == 1)
  {
    sub_10000167C();
  }

LABEL_185:
  if (a1 == 1)
  {
    sub_10000158C("no arguments specified");
  }

  IOObjectRelease(*(v5 + 1));
  v85 = *(v6 + 2);
  if (v85)
  {
    IOObjectRelease(v85);
  }

  return v84;
}

void sub_10000158C(const char *a1)
{
  warnx("(usage: %s)", a1);
  puts("nvram [-x|-X] [-p] [-f filename] [-d name] [-c] name[=value] ...");
  puts("\t-x         use XML format for printing or reading variables");
  puts("\t           (must appear before -p or -f)");
  puts("\t-X         use HEX format for printing or reading variables");
  puts("\t           (must appear before -p or -f)");
  puts("\t-p         print all firmware variables");
  puts("\t-f         set firmware variables from a text file");
  puts("\t-d         delete the named variable(does not return error code)");
  puts("\t-r         delete the named variable(returns error code if any)");
  puts("\t-c         delete all variables");
  puts("\t-b         set variable using binary file. invoked with the following format: nvram -b <variable name> <binary file>");
  if (byte_100008000 == 1)
  {
    puts("\t-z         use system-options node if available (internal builds only)");
  }

  puts("\tname=value set named variable");
  puts("\tname       print variable");
  puts("Note that arguments and options are executed in order.");
  exit(1);
}

uint64_t sub_10000167C()
{
  if (byte_100008012)
  {
    return sub_1000016A8("IONVRAM-FORCESYNCNOW-PROPERTY", "IONVRAM-FORCESYNCNOW-PROPERTY");
  }

  else
  {
    return sub_1000016A8("IONVRAM-SYNCNOW-PROPERTY", "IONVRAM-SYNCNOW-PROPERTY");
  }
}

uint64_t sub_1000016A8(char *cStr, const char *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v4)
  {
    errx(1, "Error creating CFString for key %s");
  }

  v5 = v4;
  CFProperty = IORegistryEntryCreateCFProperty(dword_10000800C, v4, 0, 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    CFRelease(v7);
    v9 = sub_100001888(v8, a2);
    if (!v9)
    {
      errx(1, "Error creating CFTypeRef for value %s");
    }

LABEL_4:
    v10 = IORegistryEntrySetCFProperty(dword_10000800C, v5, v9);
    goto LABEL_5;
  }

  if (!strncmp(cStr, "IONVRAM-DELETEWRET-PROPERTY", 0x1BuLL) || !strncmp(cStr, "IONVRAM-DELETE-PROPERTY", 0x17uLL))
  {
    TypeID = CFStringGetTypeID();
    v9 = sub_100001888(TypeID, a2);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v18[0] = CFDataGetTypeID();
  v18[1] = CFStringGetTypeID();
  v18[2] = CFNumberGetTypeID();
  v12 = 0;
  v10 = 0;
  v18[3] = CFBooleanGetTypeID();
  do
  {
    v13 = sub_100001888(v18[v12], a2);
    if (v13)
    {
      v14 = IORegistryEntrySetCFProperty(dword_10000800C, v5, v13);
      v10 = v14;
      v15 = v14 == -536870211 || v14 == -536870181;
      if (v15 || v14 == 0)
      {
        break;
      }
    }

    ++v12;
  }

  while (v12 != 4);
LABEL_5:
  CFRelease(v5);
  return v10;
}

CFDataRef sub_100001888(uint64_t a1, const char *a2)
{
  if (CFBooleanGetTypeID() == a1)
  {
    if (!strcmp("true", a2))
    {
      return kCFBooleanTrue;
    }

    else if (!strcmp("false", a2))
    {
      return kCFBooleanFalse;
    }

    else
    {
      return 0;
    }
  }

  else if (CFNumberGetTypeID() == a1)
  {
    valuePtr = strtol(a2, 0, 0);
    return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  }

  else if (CFStringGetTypeID() == a1)
  {

    return CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  }

  else if (CFDataGetTypeID() == a1)
  {
    v5 = strlen(a2);
    v6 = __chkstk_darwin();
    v7 = &valuePtr - ((v6 + 16) & 0xFFFFFFFFFFFFFFF0);
    if (v6 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = &a2[v9];
        v11 = a2[v9];
        if (v11 == 37)
        {
          v9 += 2;
          if (v9 > v5)
          {
            return 0;
          }

          v12 = v10[1];
          if (v12 < 0)
          {
            if (!__maskrune(v12, 0x10000uLL))
            {
              return 0;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v12] & 0x10000) == 0)
          {
            return 0;
          }

          v13 = a2[v9];
          if (v13 < 0)
          {
            if (!__maskrune(v13, 0x10000uLL))
            {
              return 0;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v13] & 0x10000) == 0)
          {
            return 0;
          }

          v14 = __toupper(v10[1]) - 48;
          v15 = __toupper(a2[v9]);
          v16 = v15 - 48;
          if ((v15 - 48) > 9)
          {
            v16 = v15 - 55;
          }

          if (v14 <= 9)
          {
            v17 = 16 * v14;
          }

          else
          {
            v17 = 16 * v14 - 112;
          }

          LOBYTE(v11) = v16 + v17;
        }

        v7[v8] = v11;
        ++v9;
        ++v8;
      }

      while (v9 < v5);
    }

    return CFDataCreate(kCFAllocatorDefault, v7, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001B38(CFStringRef propertyName, CFTypeRef property)
{
  result = IORegistryEntrySetCFProperty(dword_10000800C, propertyName, property);
  if (result)
  {
    sub_10000264C(propertyName, result);
  }

  return result;
}

void sub_100001B7C()
{
  properties = 0;
  v0 = IORegistryEntryCreateCFProperties(dword_100008004, &properties, 0, 0);
  if (v0)
  {
    sub_10000239C(v0);
  }

  Count = CFDictionaryGetCount(properties);
  v2 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v2)
  {
    sub_1000026E4();
  }

  v3 = v2;
  v4 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v4)
  {
    sub_1000026E4();
  }

  v5 = v4;
  v6 = malloc_type_calloc(Count, 8uLL, 0x100004000313F17uLL);
  if (!v6)
  {
    sub_1000026E4();
  }

  v7 = v6;
  if (Count)
  {
    v8 = 0;
    v9 = vdupq_n_s64(Count - 1);
    v10 = xmmword_100002D10;
    v11 = v6 + 1;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v10));
      if (v13.i8[0])
      {
        *(v11 - 1) = v8;
      }

      if (v13.i8[4])
      {
        *v11 = v8 + 1;
      }

      v8 += 2;
      v10 = vaddq_s64(v10, v12);
      v11 += 2;
    }

    while (((Count + 1) & 0xFFFFFFFFFFFFFFFELL) != v8);
  }

  CFDictionaryGetKeysAndValues(properties, v3, v5);
  __compar[0] = _NSConcreteStackBlock;
  __compar[1] = 0x40000000;
  __compar[2] = sub_100002214;
  __compar[3] = &unk_1000042A0;
  __compar[4] = v5;
  qsort_b(v7, Count, 8uLL, __compar);
  fwrite("key\tbytes\n", 0xAuLL, 1uLL, __stderrp);
  v14 = Count - 1;
  if (Count >= 1)
  {
    if (v14 >= 4)
    {
      v14 = 4;
    }

    v15 = v14 + 1;
    v16 = v7;
    do
    {
      v17 = sub_100002268(v5[*v16]);
      if (v17)
      {
        v18 = v17;
        v19 = __stderrp;
        CStringPtr = CFStringGetCStringPtr(v3[*v16], 0x8000100u);
        fprintf(v19, "%s\t%zu\n", CStringPtr, v18);
      }

      ++v16;
      --v15;
    }

    while (v15);
  }

  free(v3);
  free(v5);
  free(v7);
  CFRelease(properties);
}

void sub_100001DD8(__CFString *a1, __CFString *a2)
{
  values = a2;
  keys = a1;
  valuePtr = 0;
  if (byte_100008011 == 1)
  {
    v2 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v2)
    {
      sub_10000271C();
    }

    v3 = v2;
    Data = CFPropertyListCreateData(kCFAllocatorDefault, v2, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (!Data)
    {
      sub_100002700();
    }

    v5 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v5);
    fwrite(BytePtr, 1uLL, Length, __stdoutp);
    CFRelease(v3);
    CFRelease(v5);
    return;
  }

  v10 = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v10, 0x8000100u);
  v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xB4E5B5F8uLL);
  if (!v12 || (v13 = v12, !CFStringGetCString(a1, v12, MaximumSizeForEncoding + 1, 0x8000100u)))
  {
    warnx("Unable to convert property name to C string");
    v13 = "<UNPRINTABLE>";
  }

  v14 = CFGetTypeID(a2);
  if (v14 == CFBooleanGetTypeID())
  {
    v15 = 0;
    if (CFBooleanGetValue(a2))
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    goto LABEL_30;
  }

  if (v14 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr == -1)
    {
      v17 = "-1";
    }

    else
    {
      if (valuePtr > 0x3E7 || (byte_100008010 & 1) != 0)
      {
        v17 = "0x%x";
      }

      else
      {
        v17 = "%d";
      }

      v28 = valuePtr;
    }

    v16 = v32;
    __sprintf_chk(v32, 0, 0xAuLL, v17, v28);
    v15 = 0;
    goto LABEL_30;
  }

  if (v14 == CFStringGetTypeID())
  {
    v18 = CFStringGetLength(a2);
    v19 = CFStringGetMaximumSizeForEncoding(v18, 0x8000100u);
    v15 = malloc_type_malloc(v19 + 2, 0x57955486uLL);
    if (v15 && CFStringGetCString(a2, v15, v19 + 1, 0x8000100u))
    {
      v16 = v15;
    }

    else
    {
      warnx("Unable to convert value to C string");
      v16 = "<UNPRINTABLE>";
    }

    goto LABEL_30;
  }

  if (v14 != CFDataGetTypeID())
  {
    v15 = 0;
    v16 = "<INVALID>";
LABEL_30:
    printf("%s\t%s\n", v13, v16);
LABEL_31:
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = CFDataGetLength(a2);
  if (!v20)
  {
    v15 = 0;
    v16 = &unk_100002DA7;
    goto LABEL_30;
  }

  v21 = v20;
  v15 = malloc_type_malloc(3 * v20 + 3, 0x7F4EFE48uLL);
  if (!v15)
  {
    goto LABEL_31;
  }

  v22 = CFDataGetBytePtr(a2);
  if (byte_100008010 == 1)
  {
    strcpy(v15, "0x");
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  if (v21 >= 1)
  {
    while (1)
    {
      v25 = *v22++;
      v24 = v25;
      if (byte_100008010 == 1)
      {
        break;
      }

      if (v24 < 0)
      {
        if (!__maskrune(v24, 0x40000uLL))
        {
          goto LABEL_49;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v24] & 0x40000) == 0)
      {
        goto LABEL_49;
      }

      if (v24 == 37)
      {
LABEL_49:
        v26 = sprintf(&v15[v23], "%%%02x");
        goto LABEL_50;
      }

      v15[v23] = v24;
      v27 = 1;
LABEL_51:
      v23 += v27;
      if (!--v21)
      {
        goto LABEL_52;
      }
    }

    v26 = sprintf(&v15[v23], "%02x");
LABEL_50:
    v27 = v26;
    goto LABEL_51;
  }

LABEL_52:
  v15[v23] = 0;
  printf("%s\t%s\n", v13, v15);
  free(v15);
  v15 = 0;
  if (v12)
  {
LABEL_32:
    free(v12);
  }

LABEL_33:
  if (v15)
  {
    free(v15);
  }
}

uint64_t sub_100002268(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFStringGetLength(a1);
  }

  else if (v2 == CFDataGetTypeID())
  {

    return CFDataGetLength(a1);
  }

  else
  {
    return 8 * (v2 == CFNumberGetTypeID());
  }
}

void sub_1000022F8(const __CFString *property, uint64_t a2, mach_error_t *a3)
{
  v5 = IORegistryEntrySetCFProperty(dword_10000800C, @"IONVRAM-DELETE-PROPERTY", property);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(property);
    if (v7 != CFStringGetTypeID())
    {
      sub_100002738();
    }

    sub_100002764(property, v6, a3);
  }
}

void sub_100002430(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  errx(1, "Could not read %s: %s", a1, v3);
}

void sub_1000024F4(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  errx(1, "Could not fstat %s: %s", a1, v3);
}

void sub_10000252C(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  errx(1, "Could not open %s: %s", a1, v3);
}

void sub_10000264C(const __CFString *a1, mach_error_t a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x12BC3C2EuLL);
  if (!v6 || (v7 = v6, !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u)))
  {
    warnx("Unable to convert property name to C string");
    v7 = "<UNPRINTABLE>";
  }

  v8 = mach_error_string(a2);
  errx(1, "Error setting variable - '%s': %s", v7, v8);
}

void sub_1000026E4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100002764(const __CFString *a1, mach_error_t a2, mach_error_t *a3)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v10 = CStringPtr;
    v9 = 0;
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v9 && CFStringGetCString(a1, v9, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v10 = v9;
    }

    else
    {
      warnx("Unable to convert property name to C string");
      v10 = "<UNPRINTABLE>";
    }
  }

  v11 = mach_error_string(a2);
  warnx("Error clearing firmware variable %s: %s", v10, v11);
  if (v9)
  {
    free(v9);
  }

  if (a3)
  {
    *a3 = a2;
  }
}