@interface SPKCDataStackshotFile
+ (id)sampleStoreForFile:(const char *)file;
@end

@implementation SPKCDataStackshotFile

+ (id)sampleStoreForFile:(const char *)file
{
  v4 = open(file, 0);
  if (v4 == -1)
  {
    if (byte_100117E80 == 1)
    {
      v17 = *__error();
      v18 = sub_100035B80();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5F30();
      }

      *__error() = v17;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_112;
    }

    v20 = *__error();
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", file, v21, v23);
    if (v24)
    {
      v25 = v24;
      CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
      if (!CStringPtr)
      {
        v48 = 2423272965;
LABEL_64:
        v27 = malloc_type_calloc(0x400uLL, 1uLL, v48);
        CFStringGetCString(v25, v27, 1024, 0x8000100u);
        v28 = v27;
        goto LABEL_65;
      }

LABEL_26:
      v27 = CStringPtr;
      v28 = 0;
LABEL_65:
      if (qword_100117E88)
      {
        v49 = qword_100117E88;
      }

      else
      {
        v49 = __stderrp;
      }

      fprintf(v49, "%s\n", v27);
      if (v28)
      {
        free(v28);
      }

      CFRelease(v25);
      goto LABEL_71;
    }

    v46 = sub_100035B80();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5FC0();
    }

LABEL_59:

    if (qword_100117E88)
    {
      v47 = qword_100117E88;
    }

    else
    {
      v47 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
LABEL_71:
    initForFileParsing = 0;
    *__error() = v20;
    goto LABEL_113;
  }

  v5 = v4;
  memset(&v82, 0, sizeof(v82));
  if (fstat(v4, &v82))
  {
    if (byte_100117E80 == 1)
    {
      v6 = *__error();
      v7 = sub_100035B80();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000B59E4();
      }

      *__error() = v6;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_111;
    }

    v9 = *__error();
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to stat %s: %d (%s)", file, v10, v12);
    if (v13)
    {
      v14 = v13;
      v15 = CFStringGetCStringPtr(v13, 0x8000100u);
      if (!v15)
      {
        v16 = 1710749274;
LABEL_103:
        v33 = malloc_type_calloc(0x400uLL, 1uLL, v16);
        CFStringGetCString(v14, v33, 1024, 0x8000100u);
        v34 = v33;
        goto LABEL_104;
      }

      goto LABEL_39;
    }

    v45 = sub_100035B80();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5A74();
    }

    goto LABEL_86;
  }

  if (v82.st_size <= 15)
  {
    if (byte_100117E80 == 1)
    {
      v29 = *__error();
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5E48(file, &v82.st_size);
      }

      *__error() = v29;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_111;
    }

    v9 = *__error();
    v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s isn't big enough for a kcdata header (only %lld bytes)", file, v82.st_size);
    if (v32)
    {
      v14 = v32;
      v15 = CFStringGetCStringPtr(v32, 0x8000100u);
      if (!v15)
      {
        v16 = 3908451229;
        goto LABEL_103;
      }

LABEL_39:
      v33 = v15;
      v34 = 0;
LABEL_104:
      if (qword_100117E88)
      {
        v66 = qword_100117E88;
      }

      else
      {
        v66 = __stderrp;
      }

      fprintf(v66, "%s\n", v33);
      if (v34)
      {
        free(v34);
      }

      CFRelease(v14);
      goto LABEL_110;
    }

    v45 = sub_100035B80();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5EBC(file, &v82.st_size);
    }

LABEL_86:

    if (qword_100117E88)
    {
      v58 = qword_100117E88;
    }

    else
    {
      v58 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v58);
LABEL_110:
    *__error() = v9;
LABEL_111:
    close(v5);
LABEL_112:
    initForFileParsing = 0;
    goto LABEL_113;
  }

  v35 = mmap(0, v82.st_size, 1, 1, v5, 0);
  close(v5);
  if (v35 == -1)
  {
    if (byte_100117E80 == 1)
    {
      v51 = *__error();
      v52 = sub_100035B80();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5D28();
      }

      *__error() = v51;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_112;
    }

    v20 = *__error();
    v54 = *__error();
    v55 = __error();
    v56 = strerror(*v55);
    v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to map %s: %d (%s)", file, v54, v56);
    if (v57)
    {
      v25 = v57;
      CStringPtr = CFStringGetCStringPtr(v57, 0x8000100u);
      if (!CStringPtr)
      {
        v48 = 656845922;
        goto LABEL_64;
      }

      goto LABEL_26;
    }

    v46 = sub_100035B80();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5DB8();
    }

    goto LABEL_59;
  }

  if (v35 + 4 > (v35 + v82.st_size) || v35 + v35[1] + 16 > v35 + v82.st_size)
  {
    if (byte_100117E80 == 1)
    {
      v36 = *__error();
      v37 = sub_100035B80();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B5C40(file, &v82.st_size);
      }

      *__error() = v36;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_145;
    }

    v39 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not a kcdata file: kcdata in %s not valid (file length %lld)", file, v82.st_size);
    if (v40)
    {
      v41 = v40;
      v42 = CFStringGetCStringPtr(v40, 0x8000100u);
      if (v42)
      {
LABEL_54:
        v43 = v42;
        v44 = 0;
LABEL_138:
        if (qword_100117E88)
        {
          v75 = qword_100117E88;
        }

        else
        {
          v75 = __stderrp;
        }

        fprintf(v75, "%s\n", v43);
        if (v44)
        {
          free(v44);
        }

        CFRelease(v41);
        goto LABEL_144;
      }

      v74 = 503990187;
LABEL_137:
      v43 = malloc_type_calloc(0x400uLL, 1uLL, v74);
      CFStringGetCString(v41, v43, 1024, 0x8000100u);
      v44 = v43;
      goto LABEL_138;
    }

    v68 = sub_100035B80();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5CB4(file, &v82.st_size);
    }

    goto LABEL_118;
  }

  if (*v35 != 1503811591)
  {
    if (byte_100117E80 == 1)
    {
      v70 = *__error();
      v71 = sub_100035B80();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5B04(file, v35);
      }

      *__error() = v70;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_145;
    }

    v39 = *__error();
    LODWORD(v72) = *v35;
    if ((*v35 & 0xFFFFFFF0) == 0x20)
    {
      v72 = 17;
    }

    else
    {
      v72 = v72;
    }

    v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s isn't a kcdata stackshot file (header type %#x)", file, v72);
    if (v73)
    {
      v41 = v73;
      v42 = CFStringGetCStringPtr(v73, 0x8000100u);
      if (v42)
      {
        goto LABEL_54;
      }

      v74 = 2273138238;
      goto LABEL_137;
    }

    v68 = sub_100035B80();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1000B5B80(file, v35);
    }

LABEL_118:

    if (qword_100117E88)
    {
      v69 = qword_100117E88;
    }

    else
    {
      v69 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v69);
LABEL_144:
    *__error() = v39;
LABEL_145:
    munmap(v35, v82.st_size);
    goto LABEL_112;
  }

  initForFileParsing = [[SASampleStore alloc] initForFileParsing];
  if ((byte_100117E94 & 2) != 0 && sub_10002B3E4())
  {
    if (byte_100117E80 == 1)
    {
      v59 = *__error();
      v60 = sub_100035B80();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for stackshot file due to audio running", buf, 2u);
      }

      *__error() = v59;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v61 = *__error();
      v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for stackshot file due to audio running");
      if (v62)
      {
        v63 = v62;
        v64 = CFStringGetCStringPtr(v62, 0x8000100u);
        if (v64)
        {
          v65 = 0;
        }

        else
        {
          v65 = malloc_type_calloc(0x400uLL, 1uLL, 0x5692B96AuLL);
          CFStringGetCString(v63, v65, 1024, 0x8000100u);
          v64 = v65;
        }

        v78 = qword_100117E88;
        if (!qword_100117E88)
        {
          v78 = __stderrp;
        }

        fprintf(v78, "%s\n", v64);
        if (v65)
        {
          free(v65);
        }

        CFRelease(v63);
      }

      else
      {
        v76 = sub_100035B80();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          sub_1000B5BFC(v76);
        }

        if (qword_100117E88)
        {
          v77 = qword_100117E88;
        }

        else
        {
          v77 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v77);
      }

      *__error() = v61;
    }

    [initForFileParsing setDataGatheringOptions:{objc_msgSend(initForFileParsing, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
  }

  sub_100077DF8(initForFileParsing, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 & 0x10) == 0);
  v79 = [NSData alloc];
  v80 = [v79 initWithBytesNoCopy:v35 length:v82.st_size deallocator:&stru_100109A20];
  [initForFileParsing addKCDataStackshots:v80 createSeparateSamplePerStackshot:1];
  [initForFileParsing postprocess];

LABEL_113:

  return initForFileParsing;
}

@end