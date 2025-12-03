@interface SPTailspinFile
+ (id)sampleStoreForFile:(const char *)file stackshotsOnly:(BOOL)only parsePastLastStackshot:(BOOL)stackshot;
@end

@implementation SPTailspinFile

+ (id)sampleStoreForFile:(const char *)file stackshotsOnly:(BOOL)only parsePastLastStackshot:(BOOL)stackshot
{
  stackshotCopy = stackshot;
  onlyCopy = only;
  fileCopy = file;
  v108 = 0;
  v8 = [SASampleStore canOpenFileAsKTraceFile:file errorOut:&v108];
  v9 = v108;
  v10 = v9;
  if (v8)
  {
    v11 = +[NSMutableArray array];
    initForFileParsing = [[SASampleStore alloc] initForFileParsing];
    if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
    {
      if (byte_100127EC8 == 1)
      {
        v13 = *__error();
        v14 = sub_10003E080();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for tailspin file due to audio running", buf, 2u);
        }

        *__error() = v13;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v100 = fileCopy;
        v16 = *__error();
        v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for tailspin file due to audio running");
        if (v17)
        {
          v18 = v17;
          CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
          if (CStringPtr)
          {
            v20 = CStringPtr;
            v21 = 0;
          }

          else
          {
            v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x2DB4CA2BuLL);
            CFStringGetCString(v18, v20, 1024, 0x8000100u);
            v21 = v20;
          }

          if (qword_100127ED0)
          {
            v50 = qword_100127ED0;
          }

          else
          {
            v50 = __stderrp;
          }

          fprintf(v50, "%s\n", v20);
          if (v21)
          {
            free(v21);
          }

          CFRelease(v18);
        }

        else
        {
          v47 = sub_10003E080();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            sub_1000C5024(v47);
          }

          if (qword_100127ED0)
          {
            v48 = qword_100127ED0;
          }

          else
          {
            v48 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
        }

        *__error() = v16;
        fileCopy = v100;
      }

      [initForFileParsing setDataGatheringOptions:{objc_msgSend(initForFileParsing, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
    }

    sub_1000791AC(initForFileParsing, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
    v98 = initForFileParsing;
    if (onlyCopy)
    {
      v107 = v10;
      v51 = &v107;
      v52 = [initForFileParsing parseStackshotsFromKTraceFile:fileCopy warningsOut:v11 errorOut:&v107];
    }

    else
    {
      if (stackshotCopy)
      {
        [initForFileParsing setKPerfPETParsePastLastStackshot:1];
      }

      v106 = v10;
      v51 = &v106;
      v52 = [initForFileParsing parseKTraceFile:fileCopy warningsOut:v11 errorOut:&v106];
    }

    v96 = v52;
    v97 = *v51;

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v11;
    v53 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v103;
      v56 = &byte_100127EC8;
      v57 = &byte_100127EC9;
      v58 = &dword_100127558;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v103 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v102 + 1) + 8 * i);
          if (*v56 == 1)
          {
            v61 = *__error();
            v62 = sub_10003E080();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v110 = fileCopy;
              v111 = 2112;
              v112 = v60;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "WARNING creating sample store from %s: %@", buf, 0x16u);
            }

            *__error() = v61;
          }

          if (*v57 == 1 && *v58 <= 3)
          {
            v64 = *__error();
            v65 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WARNING creating sample store from %s: %@", fileCopy, v60);
            if (v65)
            {
              v66 = v65;
              v101 = v64;
              v67 = v54;
              v68 = v55;
              v69 = v58;
              v70 = v57;
              v71 = v56;
              v72 = fileCopy;
              v73 = CFStringGetCStringPtr(v65, 0x8000100u);
              if (v73)
              {
                v74 = v73;
                v75 = 0;
              }

              else
              {
                v74 = malloc_type_calloc(0x400uLL, 1uLL, 0x63DE7472uLL);
                CFStringGetCString(v66, v74, 1024, 0x8000100u);
                v75 = v74;
              }

              if (qword_100127ED0)
              {
                v78 = qword_100127ED0;
              }

              else
              {
                v78 = __stderrp;
              }

              fprintf(v78, "%s\n", v74);
              if (v75)
              {
                free(v75);
              }

              CFRelease(v66);
              fileCopy = v72;
              v56 = v71;
              v57 = v70;
              v58 = v69;
              v55 = v68;
              v54 = v67;
              v64 = v101;
            }

            else
            {
              v76 = sub_10003E080();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v110 = fileCopy;
                v111 = 2112;
                v112 = v60;
                _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "Unable to format: WARNING creating sample store from %s: %@", buf, 0x16u);
              }

              if (qword_100127ED0)
              {
                v77 = qword_100127ED0;
              }

              else
              {
                v77 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v77);
            }

            *__error() = v64;
          }
        }

        v54 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
      }

      while (v54);
    }

    if (v96)
    {
      v79 = v98;
      v25 = v98;
      v29 = v97;
LABEL_161:

      goto LABEL_162;
    }

    v29 = v97;
    v79 = v98;
    if (v97)
    {
      if (byte_100127EC8)
      {
        v80 = *__error();
        v81 = sub_10003E080();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5068();
        }

        *__error() = v80;
      }

      v25 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_161;
      }

      v82 = *__error();
      v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ERROR trying to create sample store from %s: %@", fileCopy, v97);
      if (v83)
      {
        v84 = v83;
        v85 = CFStringGetCStringPtr(v83, 0x8000100u);
        if (!v85)
        {
          v86 = 1612617813;
LABEL_153:
          v90 = malloc_type_calloc(0x400uLL, 1uLL, v86);
          CFStringGetCString(v84, v90, 1024, 0x8000100u);
          v91 = v90;
          goto LABEL_154;
        }

        goto LABEL_143;
      }

      v92 = sub_10003E080();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        sub_1000C50DC();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v87 = *__error();
        v88 = sub_10003E080();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5150();
        }

        *__error() = v87;
      }

      v25 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_161;
      }

      v82 = *__error();
      v89 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ERROR trying to create sample store from %s: Unknown error", fileCopy);
      if (v89)
      {
        v84 = v89;
        v85 = CFStringGetCStringPtr(v89, 0x8000100u);
        if (!v85)
        {
          v86 = 1645703019;
          goto LABEL_153;
        }

LABEL_143:
        v90 = v85;
        v91 = 0;
LABEL_154:
        if (qword_100127ED0)
        {
          v94 = qword_100127ED0;
        }

        else
        {
          v94 = __stderrp;
        }

        fprintf(v94, "%s\n", v90);
        if (v91)
        {
          free(v91);
        }

        CFRelease(v84);
        goto LABEL_160;
      }

      v92 = sub_10003E080();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        sub_1000C51C4();
      }
    }

    if (qword_100127ED0)
    {
      v93 = qword_100127ED0;
    }

    else
    {
      v93 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
LABEL_160:
    v25 = 0;
    *__error() = v82;
    goto LABEL_161;
  }

  if (v9)
  {
    if (byte_100127EC8)
    {
      v22 = *__error();
      v23 = sub_10003E080();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4E54();
      }

      *__error() = v22;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v30 = *__error();
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Could not open %s as a ktrace file: %@", fileCopy, v10);
      if (v31)
      {
        v32 = v31;
        v33 = CFStringGetCStringPtr(v31, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xE6669814uLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100127ED0)
        {
          v44 = qword_100127ED0;
        }

        else
        {
          v44 = __stderrp;
        }

        fprintf(v44, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        CFRelease(v32);
      }

      else
      {
        v42 = sub_10003E080();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          sub_1000C4EC8();
        }

        if (qword_100127ED0)
        {
          v43 = qword_100127ED0;
        }

        else
        {
          v43 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
      }

      v25 = 0;
      *__error() = v30;
    }

    else
    {
      v25 = 0;
    }

    v29 = v10;
  }

  else
  {
    if (byte_100127EC8)
    {
      v26 = *__error();
      v27 = sub_10003E080();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4F3C();
      }

      *__error() = v26;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v36 = *__error();
      v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Could not open %s as a ktrace file for unknown reason", fileCopy);
      if (v37)
      {
        v38 = v37;
        v39 = CFStringGetCStringPtr(v37, 0x8000100u);
        if (v39)
        {
          v40 = v39;
          v41 = 0;
        }

        else
        {
          v40 = malloc_type_calloc(0x400uLL, 1uLL, 0xF70B13DuLL);
          CFStringGetCString(v38, v40, 1024, 0x8000100u);
          v41 = v40;
        }

        if (qword_100127ED0)
        {
          v49 = qword_100127ED0;
        }

        else
        {
          v49 = __stderrp;
        }

        fprintf(v49, "%s\n", v40);
        if (v41)
        {
          free(v41);
        }

        CFRelease(v38);
      }

      else
      {
        v45 = sub_10003E080();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1000C4FB0();
        }

        if (qword_100127ED0)
        {
          v46 = qword_100127ED0;
        }

        else
        {
          v46 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v46);
      }

      v29 = 0;
      v25 = 0;
      *__error() = v36;
    }

    else
    {
      v29 = 0;
      v25 = 0;
    }
  }

LABEL_162:

  return v25;
}

@end