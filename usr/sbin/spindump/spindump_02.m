uint64_t sub_100049170(uint64_t a1)
{
  free(*(a1 + 40));
  free(*(a1 + 48));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000491E8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = (a1 + 72);
  if ((*(a1 + 72) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v7 = *__error();
      v8 = sub_100035B80();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10009F714((a1 + 72), a3);
      }

      *__error() = v7;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_52;
    }

    v10 = *__error();
    v11 = sub_100035B20(*v6);
    v12 = *v6;
    v13 = sub_100088394(a3);
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: done monitoring due to %s", v11, v12, v13);
    if (v14)
    {
      v15 = v14;
      CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
      if (CStringPtr)
      {
        v17 = CStringPtr;
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB074FAuLL);
        CFStringGetCString(v15, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

LABEL_50:
      CFRelease(v15);
      goto LABEL_51;
    }

    v27 = sub_100035B80();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_10009F7D0((a1 + 72), a3);
    }

    if (qword_100117E88)
    {
      v28 = qword_100117E88;
    }

    else
    {
      v28 = __stderrp;
    }

    goto LABEL_31;
  }

  if (byte_100117E80)
  {
    v19 = *__error();
    v20 = sub_100035B80();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10009F60C(a3);
    }

    *__error() = v19;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v10 = *__error();
    v22 = sub_100088394(a3);
    v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: done monitoring due to %s", v22);
    if (v23)
    {
      v15 = v23;
      v24 = CFStringGetCStringPtr(v23, 0x8000100u);
      if (v24)
      {
        v25 = v24;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB074FAuLL);
        CFStringGetCString(v15, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

      goto LABEL_50;
    }

    v30 = sub_100035B80();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_10009F690(a3);
    }

    if (qword_100117E88)
    {
      v28 = qword_100117E88;
    }

    else
    {
      v28 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
LABEL_51:
    *__error() = v10;
  }

LABEL_52:
  if (*(a1 + 40))
  {
    v32 = [NSString stringWithUTF8String:?];
    [v5 setReason:v32];
  }

  if (*(a1 + 48))
  {
    v33 = [NSString stringWithUTF8String:?];
    [v5 setSignature:v33];
  }

  v34 = *(a1 + 56);
  if (v34)
  {
    v35 = [v5 printOptions];
    [v35 setPrintHeavyStacks:1];

    v34 = *(a1 + 56);
  }

  [v5 setIncludeTextualFormatInReport:(v34 & 2) == 0];
  [v5 setIncludeBinaryFormatInReport:(*(a1 + 56) & 4) == 0];
  v36 = *(a1 + 56);
  if ((v36 & 0x10) != 0)
  {
    [v5 setShouldSymbolicate:1];
    [v5 setShouldUseBulkSymbolication:0];
    v36 = *(a1 + 56);
  }

  if ((v36 & 8) != 0)
  {
    [v5 setShouldSymbolicate:0];
    [v5 setShouldUseBulkSymbolication:0];
  }

  v37 = (a1 + 64);
  v38 = *(a1 + 64);
  v39 = geteuid();
  v40 = sub_100032F24(v38, 536872449, v39, 420);
  if ((v40 & 0x80000000) == 0)
  {
    v41 = fdopen(v40, "w");
    if (v41)
    {
      v42 = v41;
      [v5 saveReportToStream:v41];
      fclose(v42);
      if (*v6 < 0)
      {
        if (byte_100117E80)
        {
          v85 = *__error();
          v86 = sub_100035B80();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = sub_100035B20(*(a1 + 76));
            v88 = *(a1 + 76);
            v89 = *(a1 + 64);
            *buf = 136446722;
            v128 = v87;
            v129 = 1024;
            v130 = v88;
            v131 = 2080;
            v132 = v89;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "generate spindump: saved report (requested by %{public}s [%d]) to %s", buf, 0x1Cu);
          }

          *__error() = v85;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_140;
        }

        v50 = *__error();
        v90 = sub_100035B20(*(a1 + 76));
        v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: saved report (requested by %s [%d]) to %s", v90, *(a1 + 76), *(a1 + 64));
        if (!v54)
        {
          v55 = sub_100035B80();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            sub_10009F87C();
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v43 = *__error();
          v44 = sub_100035B80();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = sub_100035B20(*(a1 + 72));
            v46 = *(a1 + 72);
            v47 = sub_100035B20(*(a1 + 76));
            v48 = *(a1 + 76);
            v49 = *(a1 + 64);
            *buf = 136447234;
            v128 = v45;
            v129 = 1024;
            v130 = v46;
            v131 = 2082;
            v132 = v47;
            v133 = 1024;
            v134 = v48;
            v135 = 2080;
            v136 = v49;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: generate spindump: saved report (requested by %{public}s [%d]) to %s", buf, 0x2Cu);
          }

          *__error() = v43;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_140;
        }

        v50 = *__error();
        v51 = sub_100035B20(*(a1 + 72));
        v52 = *(a1 + 72);
        v53 = sub_100035B20(*(a1 + 76));
        v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: saved report (requested by %s [%d]) to %s", v51, v52, v53, *(a1 + 76), *(a1 + 64));
        if (!v54)
        {
          v55 = sub_100035B80();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            v56 = sub_100035B20(*(a1 + 72));
            v57 = *(a1 + 72);
            v58 = sub_100035B20(*(a1 + 76));
            v59 = *(a1 + 76);
            v60 = *(a1 + 64);
            *buf = 136316162;
            v128 = v56;
            v129 = 1024;
            v130 = v57;
            v131 = 2080;
            v132 = v58;
            v133 = 1024;
            v134 = v59;
            v135 = 2080;
            v136 = v60;
            _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: generate spindump: saved report (requested by %s [%d]) to %s", buf, 0x2Cu);
          }

LABEL_135:

          if (qword_100117E88)
          {
            v116 = qword_100117E88;
          }

          else
          {
            v116 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v116);
LABEL_139:
          *__error() = v50;
LABEL_140:
          v117 = *(a1 + 32);
          if (v117)
          {
            (*(v117 + 16))(v117, 0, *v37);
          }

          goto LABEL_171;
        }
      }

      v91 = v54;
      v92 = CFStringGetCStringPtr(v54, 0x8000100u);
      if (v92)
      {
        v93 = v92;
        v94 = 0;
      }

      else
      {
        v93 = malloc_type_calloc(0x400uLL, 1uLL, 0xC2ACEE5uLL);
        CFStringGetCString(v91, v93, 1024, 0x8000100u);
        v94 = v93;
      }

      if (qword_100117E88)
      {
        v114 = qword_100117E88;
      }

      else
      {
        v114 = __stderrp;
      }

      fprintf(v114, "%s\n", v93);
      if (v94)
      {
        free(v94);
      }

      CFRelease(v91);
      goto LABEL_139;
    }

    if ((*v6 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v74 = *__error();
        v75 = sub_100035B80();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_10009FA68();
        }

        *__error() = v74;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_169;
      }

      v63 = *__error();
      v76 = sub_100035B20(*v6);
      v77 = *v37;
      v78 = *v6;
      v79 = *__error();
      v80 = __error();
      v81 = strerror(*v80);
      v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to fdopen %s for writing: %d (%s)", v76, v78, v77, v79, v81);
      if (v82)
      {
        v71 = v82;
        v72 = CFStringGetCStringPtr(v82, 0x8000100u);
        if (v72)
        {
          goto LABEL_93;
        }

        v73 = 3452052486;
LABEL_145:
        v83 = malloc_type_calloc(0x400uLL, 1uLL, v73);
        CFStringGetCString(v71, v83, 1024, 0x8000100u);
        v84 = v83;
        goto LABEL_146;
      }

      v115 = sub_100035B80();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
      {
        sub_10009FB14();
      }

      goto LABEL_132;
    }

    if (byte_100117E80)
    {
      v105 = *__error();
      v106 = sub_100035B80();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        sub_10009F928((a1 + 64));
      }

      *__error() = v105;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_169;
    }

    v63 = *__error();
    v107 = *v37;
    v108 = *__error();
    v109 = __error();
    v110 = strerror(*v109);
    v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to fdopen %s for writing: %d (%s)", v107, v108, v110);
    if (v111)
    {
      v102 = v111;
      v103 = CFStringGetCStringPtr(v111, 0x8000100u);
      if (v103)
      {
        goto LABEL_120;
      }

      v104 = 3452052486;
      goto LABEL_160;
    }

    v118 = sub_100035B80();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
    {
      sub_10009F9C8((a1 + 64));
    }

    goto LABEL_154;
  }

  if (*v6 < 0)
  {
    if (byte_100117E80)
    {
      v95 = *__error();
      v96 = sub_100035B80();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        sub_10009FBC0((a1 + 64));
      }

      *__error() = v95;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_169;
    }

    v63 = *__error();
    v97 = *v37;
    v98 = *__error();
    v99 = __error();
    v100 = strerror(*v99);
    v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to open %s for writing: %d (%s)", v97, v98, v100);
    if (v101)
    {
      v102 = v101;
      v103 = CFStringGetCStringPtr(v101, 0x8000100u);
      if (v103)
      {
LABEL_120:
        v112 = v103;
        v113 = 0;
LABEL_161:
        if (qword_100117E88)
        {
          v122 = qword_100117E88;
        }

        else
        {
          v122 = __stderrp;
        }

        fprintf(v122, "%s\n", v112);
        if (v113)
        {
          free(v113);
        }

        v120 = v102;
        goto LABEL_167;
      }

      v104 = 1512032015;
LABEL_160:
      v112 = malloc_type_calloc(0x400uLL, 1uLL, v104);
      CFStringGetCString(v102, v112, 1024, 0x8000100u);
      v113 = v112;
      goto LABEL_161;
    }

    v118 = sub_100035B80();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
    {
      sub_10009FC60((a1 + 64));
    }

LABEL_154:

    goto LABEL_155;
  }

  if (byte_100117E80)
  {
    v61 = *__error();
    v62 = sub_100035B80();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_10009FD00();
    }

    *__error() = v61;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_169;
  }

  v63 = *__error();
  v64 = sub_100035B20(*v6);
  v65 = *v37;
  v66 = *v6;
  v67 = *__error();
  v68 = __error();
  v69 = strerror(*v68);
  v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to open %s for writing: %d (%s)", v64, v66, v65, v67, v69);
  if (!v70)
  {
    v115 = sub_100035B80();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
    {
      sub_10009FDAC();
    }

LABEL_132:

LABEL_155:
    if (qword_100117E88)
    {
      v121 = qword_100117E88;
    }

    else
    {
      v121 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v121);
    goto LABEL_168;
  }

  v71 = v70;
  v72 = CFStringGetCStringPtr(v70, 0x8000100u);
  if (!v72)
  {
    v73 = 1512032015;
    goto LABEL_145;
  }

LABEL_93:
  v83 = v72;
  v84 = 0;
LABEL_146:
  if (qword_100117E88)
  {
    v119 = qword_100117E88;
  }

  else
  {
    v119 = __stderrp;
  }

  fprintf(v119, "%s\n", v83);
  if (v84)
  {
    free(v84);
  }

  v120 = v71;
LABEL_167:
  CFRelease(v120);
LABEL_168:
  *__error() = v63;
LABEL_169:
  v123 = *(a1 + 32);
  if (v123)
  {
    v124 = *__error();
    (*(v123 + 16))(v123, v124, 0);
  }

LABEL_171:
  free(*(a1 + 64));
  v125 = *(a1 + 40);
  if (v125)
  {
    free(v125);
  }

  v126 = *(a1 + 48);
  if (v126)
  {
    free(v126);
  }
}

uint64_t sub_10004A05C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a5;
  v20 = a2;
  v21 = objc_alloc_init(SAMicrostackshotStatistics);
  v22 = sub_10002CE08(0, 0, a1, v20, a3, 1, v19, 0, a8 - a7, a8, 0.0, 0.0, 0.0, a6, a7, a9, 5u, HIBYTE(word_100117EC0) & 1, 0, 0, a10, a4, SHIDWORD(a4), 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, v21, 0, 0, 0, 0);

  v23 = [v21 total];
  v24 = [v23 num_out_of_order] != 0;

  v25 = [v21 total];
  v26 = [v25 num_missing_load_info];

  if (v26)
  {
    v27 = ((v24 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v27 = v24 << 41;
  }

  if ([v21 bytes_not_microstackshots])
  {
    v28 = v27 | 0x40000000000;
  }

  else
  {
    v28 = v27;
  }

  if ((v22 & 0x800000) != 0)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v41 = *__error();
        v42 = sub_100035B80();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10009FFCC();
        }

        *__error() = v41;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v109 = *__error();
        v43 = sub_100035B20(a1);
        v44 = [v21 total];
        v45 = [v44 num_out_of_order];
        v46 = [v21 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v43, a1, v45, [v46 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v40 = 510317963;
            goto LABEL_81;
          }

LABEL_38:
          v53 = CStringPtr;
          v54 = 0;
LABEL_82:
          if (qword_100117E88)
          {
            v82 = qword_100117E88;
          }

          else
          {
            v82 = __stderrp;
          }

          fprintf(v82, "%s\n", v53);
          if (v54)
          {
            free(v54);
          }

          CFRelease(v38);
          goto LABEL_88;
        }

        v79 = sub_100035B80();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0088();
        }

LABEL_74:

        if (qword_100117E88)
        {
          v81 = qword_100117E88;
        }

        else
        {
          v81 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
LABEL_88:
        *__error() = v109;
      }

LABEL_89:
      if (byte_100117E80 == 1)
      {
        v83 = *__error();
        v84 = sub_100035B80();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A0684();
        }

        *__error() = v83;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v85 = *__error();
        v86 = sub_100035B20(a1);
        v87 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: done reporting (%#llx)", v86, a1, v22);
        if (v87)
        {
          v88 = v87;
          v89 = CFStringGetCStringPtr(v87, 0x8000100u);
          if (v89)
          {
            v90 = v89;
            v91 = 0;
          }

          else
          {
            v90 = malloc_type_calloc(0x400uLL, 1uLL, 0x57EB9B11uLL);
            CFStringGetCString(v88, v90, 1024, 0x8000100u);
            v91 = v90;
          }

          if (qword_100117E88)
          {
            v93 = qword_100117E88;
          }

          else
          {
            v93 = __stderrp;
          }

          fprintf(v93, "%s\n", v90);
          if (v91)
          {
            free(v91);
          }

          v94 = v88;
LABEL_146:
          CFRelease(v94);
LABEL_147:
          *__error() = v85;
          goto LABEL_148;
        }

        v92 = sub_100035B80();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
        {
          sub_1000A0710();
        }

        goto LABEL_135;
      }

      goto LABEL_148;
    }

    if (byte_100117E80)
    {
      v55 = *__error();
      v56 = sub_100035B80();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_10009FE58();
      }

      *__error() = v55;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v57 = *__error();
      v58 = [v21 total];
      v59 = [v58 num_out_of_order];
      v60 = [v21 total];
      v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v59, [v60 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v61)
      {
        v62 = CFStringGetCStringPtr(v61, 0x8000100u);
        if (!v62)
        {
          v63 = 510317963;
LABEL_115:
          v77 = malloc_type_calloc(0x400uLL, 1uLL, v63);
          CFStringGetCString(v61, v77, 1024, 0x8000100u);
          v78 = v77;
          goto LABEL_116;
        }

LABEL_65:
        v77 = v62;
        v78 = 0;
LABEL_116:
        if (qword_100117E88)
        {
          v96 = qword_100117E88;
        }

        else
        {
          v96 = __stderrp;
        }

        fprintf(v96, "%s\n", v77);
        if (v78)
        {
          free(v78);
        }

        CFRelease(v61);
        goto LABEL_122;
      }

      v80 = sub_100035B80();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        sub_10009FF14();
      }

LABEL_110:

      if (qword_100117E88)
      {
        v95 = qword_100117E88;
      }

      else
      {
        v95 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v95);
LABEL_122:
      *__error() = v57;
    }
  }

  else if (v28)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v29 = *__error();
        v30 = sub_100035B80();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_100035B20(a1);
          v108 = [v21 total];
          v32 = [v108 num_out_of_order];
          v33 = [v21 total];
          *buf = 136447234;
          v111 = v31;
          v112 = 1024;
          *v113 = a1;
          *&v113[4] = 2048;
          *&v113[6] = v32;
          *&v113[14] = 2048;
          *&v113[16] = [v33 num_missing_load_info];
          v114 = 2048;
          v115 = [v21 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x30u);
        }

        *__error() = v29;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v109 = *__error();
        v34 = sub_100035B20(a1);
        v35 = [v21 total];
        v36 = [v35 num_out_of_order];
        v37 = [v21 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v34, a1, v36, [v37 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v40 = 2799573522;
LABEL_81:
            v53 = malloc_type_calloc(0x400uLL, 1uLL, v40);
            CFStringGetCString(v38, v53, 1024, 0x8000100u);
            v54 = v53;
            goto LABEL_82;
          }

          goto LABEL_38;
        }

        v79 = sub_100035B80();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000A01FC();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v64 = *__error();
      v65 = sub_100035B80();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = [v21 total];
        v67 = [v66 num_out_of_order];
        v68 = [v21 total];
        *buf = 134218496;
        v111 = v67;
        v112 = 2048;
        *v113 = [v68 num_missing_load_info];
        *&v113[8] = 2048;
        *&v113[10] = [v21 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v64;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v57 = *__error();
      v69 = [v21 total];
      v70 = [v69 num_out_of_order];
      v71 = [v21 total];
      v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v70, [v71 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v61)
      {
        v62 = CFStringGetCStringPtr(v61, 0x8000100u);
        if (!v62)
        {
          v63 = 2799573522;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v80 = sub_100035B80();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        sub_1000A0144();
      }

      goto LABEL_110;
    }
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v47 = *__error();
        v48 = sub_100035B80();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A050C();
        }

        *__error() = v47;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v109 = *__error();
        v49 = sub_100035B20(a1);
        v50 = [v21 total];
        v51 = [v50 num_out_of_order];
        v52 = [v21 total];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v49, a1, v51, [v52 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

        if (v38)
        {
          CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
          if (!CStringPtr)
          {
            v40 = 1438902277;
            goto LABEL_81;
          }

          goto LABEL_38;
        }

        v79 = sub_100035B80();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000A05C8();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v72 = *__error();
      v73 = sub_100035B80();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A02B8();
      }

      *__error() = v72;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v57 = *__error();
      v74 = [v21 total];
      v75 = [v74 num_out_of_order];
      v76 = [v21 total];
      v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v75, [v76 num_missing_load_info], objc_msgSend(v21, "bytes_not_microstackshots"));

      if (v61)
      {
        v62 = CFStringGetCStringPtr(v61, 0x8000100u);
        if (!v62)
        {
          v63 = 1438902277;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v80 = sub_100035B80();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        sub_1000A0374();
      }

      goto LABEL_110;
    }
  }

  if (byte_100117E80 == 1)
  {
    v97 = *__error();
    v98 = sub_100035B80();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A042C();
    }

    *__error() = v97;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v85 = *__error();
    v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: done reporting (%#llx)", v22);
    if (v99)
    {
      v100 = v99;
      v101 = CFStringGetCStringPtr(v99, 0x8000100u);
      if (v101)
      {
        v102 = v101;
        v103 = 0;
      }

      else
      {
        v102 = malloc_type_calloc(0x400uLL, 1uLL, 0x57EB9B11uLL);
        CFStringGetCString(v100, v102, 1024, 0x8000100u);
        v103 = v102;
      }

      if (qword_100117E88)
      {
        v106 = qword_100117E88;
      }

      else
      {
        v106 = __stderrp;
      }

      fprintf(v106, "%s\n", v102);
      if (v103)
      {
        free(v103);
      }

      v94 = v100;
      goto LABEL_146;
    }

    v104 = sub_100035B80();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
    {
      sub_1000A049C();
    }

LABEL_135:
    if (qword_100117E88)
    {
      v105 = qword_100117E88;
    }

    else
    {
      v105 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v105);
    goto LABEL_147;
  }

LABEL_148:

  return v22;
}

uint64_t sub_10004AFBC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = a1;
  if (a2 >= 1 && sub_100076688(a2))
  {
    v10 = 0;
    v11 = 16;
    if ((a4 & 0x10) == 0 && (word_100117EC0 & 4) == 0)
    {
      if (v9)
      {
        if (byte_100117E80)
        {
          v12 = *__error();
          v13 = sub_100035B80();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543874;
            *&buf[4] = v9;
            *&buf[12] = 1024;
            *&buf[14] = a2;
            *&buf[18] = 2082;
            *&buf[20] = a3;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@ [%d]: %{public}s: being debugged", buf, 0x1Cu);
          }

          *__error() = v12;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
LABEL_57:
          v11 = 0;
LABEL_85:
          v10 = 16;
          goto LABEL_19;
        }

        v15 = *__error();
        v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: %s: being debugged", v9, a2, a3);
        if (!v16)
        {
          v17 = sub_100035B80();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *&buf[4] = v9;
            *&buf[12] = 1024;
            *&buf[14] = a2;
            *&buf[18] = 2080;
            *&buf[20] = a3;
            _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: %s: being debugged", buf, 0x1Cu);
          }

LABEL_80:

          if (qword_100117E88)
          {
            v49 = qword_100117E88;
          }

          else
          {
            v49 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v49);
LABEL_84:
          v11 = 0;
          *__error() = v15;
          goto LABEL_85;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v38 = *__error();
          v39 = sub_100035B80();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A0DBC();
          }

          *__error() = v38;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_57;
        }

        v15 = *__error();
        v42 = sub_100035B20(a2);
        v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: being debugged", v42, a2, a3);
        if (!v16)
        {
          v17 = sub_100035B80();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0E50();
          }

          goto LABEL_80;
        }
      }

      v43 = v16;
      CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
      if (CStringPtr)
      {
        v45 = CStringPtr;
        v46 = 0;
      }

      else
      {
        v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x857A2DA1uLL);
        CFStringGetCString(v43, v45, 1024, 0x8000100u);
        v46 = v45;
      }

      if (qword_100117E88)
      {
        v47 = qword_100117E88;
      }

      else
      {
        v47 = __stderrp;
      }

      fprintf(v47, "%s\n", v45);
      if (v46)
      {
        free(v46);
      }

      CFRelease(v43);
      goto LABEL_84;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_19:
  if (sub_100053ACC())
  {
    v18 = v11 | 0x100;
  }

  else
  {
    v18 = v11;
  }

  if (sub_100077900())
  {
    v19 = v18 | 0x80;
  }

  else
  {
    v19 = v18;
  }

  if (a2 >= 1)
  {
    if (qword_100117D28 != -1)
    {
      sub_1000A0ED8();
    }

    if ((byte_100117D20 & 1) == 0)
    {
      target_task = 0;
      v20 = task_inspect_for_pid();
      if (v20)
      {
        v21 = v20;
        if (byte_100117E80 == 1)
        {
          v22 = *__error();
          v23 = sub_100035B80();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000A0F00();
          }

          *__error() = v22;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v24 = *__error();
          v25 = sub_100035B20(a2);
          v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to inspect task for suspended state (%d), assuming not suspended", v25, a2, v21);
          if (v26)
          {
            v27 = v26;
            v28 = CFStringGetCStringPtr(v26, 0x8000100u);
            if (!v28)
            {
              v29 = 129436166;
LABEL_87:
              v36 = malloc_type_calloc(0x400uLL, 1uLL, v29);
              CFStringGetCString(v27, v36, 1024, 0x8000100u);
              v37 = v36;
              goto LABEL_88;
            }

            goto LABEL_48;
          }

          v41 = sub_100035B80();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            sub_1000A0F8C();
          }

          goto LABEL_74;
        }
      }

      else
      {
        v58 = 0;
        memset(buf, 0, sizeof(buf));
        task_info_outCnt = 10;
        v30 = task_info(target_task, 0x12u, buf, &task_info_outCnt);
        if (v30)
        {
          v31 = v30;
          if (byte_100117E80 == 1)
          {
            v32 = *__error();
            v33 = sub_100035B80();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_1000A1018();
            }

            *__error() = v32;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v24 = *__error();
            v34 = sub_100035B20(a2);
            v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get suspended state (%d), assuming not suspended", v34, a2, v31);
            if (v35)
            {
              v27 = v35;
              v28 = CFStringGetCStringPtr(v35, 0x8000100u);
              if (!v28)
              {
                v29 = 780895780;
                goto LABEL_87;
              }

LABEL_48:
              v36 = v28;
              v37 = 0;
LABEL_88:
              if (qword_100117E88)
              {
                v50 = qword_100117E88;
              }

              else
              {
                v50 = __stderrp;
              }

              fprintf(v50, "%s\n", v36);
              if (v37)
              {
                free(v37);
              }

              CFRelease(v27);
              goto LABEL_94;
            }

            v41 = sub_100035B80();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              sub_1000A10A4();
            }

LABEL_74:

            if (qword_100117E88)
            {
              v48 = qword_100117E88;
            }

            else
            {
              v48 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
LABEL_94:
            *__error() = v24;
          }
        }

        else if (*buf)
        {
          v19 |= 0x20uLL;
        }
      }
    }
  }

  if (sub_10002B3E4())
  {
    v51 = v19 | 0x400000000;
  }

  else
  {
    v51 = v19;
  }

  v52 = sub_100054088();
  v53 = v51 | 0x80000000000;
  if (!v52)
  {
    v53 = v51;
  }

  *a5 |= v53;

  return v10;
}

uint64_t sub_10004B73C(double a1)
{
  if (a1 > 0.0)
  {
    if (a1 < 100.0)
    {
      if (qword_100117D18 != -1)
      {
        sub_1000A1130();
      }

      v2 = rand() * 100.0 / 2147483650.0;
      v3 = v2 > a1;
      if (v2 > a1)
      {
        if (byte_100117E80)
        {
          v4 = *__error();
          v5 = sub_100035B80();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A122C();
          }

          *__error() = v4;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          return 1;
        }

        v10 = *__error();
        v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Should restrict submission due to roll of %.4f (pref is %.4f)", *&v2, *&a1);
        if (v11)
        {
          v12 = v11;
          CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
          if (!CStringPtr)
          {
            v14 = 3895693281;
LABEL_39:
            v16 = malloc_type_calloc(0x400uLL, 1uLL, v14);
            CFStringGetCString(v12, v16, 1024, 0x8000100u);
            v17 = v16;
            goto LABEL_40;
          }

          goto LABEL_29;
        }

        v18 = sub_100035B80();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1000A12A0();
        }

        goto LABEL_34;
      }

      if (byte_100117E80)
      {
        v7 = *__error();
        v8 = sub_100035B80();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1144();
        }

        *__error() = v7;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v10 = *__error();
        v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Should not restrict submission due to roll of %.4f (pref is %.4f)", *&v2, *&a1);
        if (v15)
        {
          v12 = v15;
          CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
          if (!CStringPtr)
          {
            v14 = 1932020886;
            goto LABEL_39;
          }

LABEL_29:
          v16 = CStringPtr;
          v17 = 0;
LABEL_40:
          if (qword_100117E88)
          {
            v20 = qword_100117E88;
          }

          else
          {
            v20 = __stderrp;
          }

          fprintf(v20, "%s\n", v16);
          if (v17)
          {
            free(v17);
          }

          CFRelease(v12);
LABEL_46:
          *__error() = v10;
          return v3;
        }

        v18 = sub_100035B80();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1000A11B8();
        }

LABEL_34:

        if (qword_100117E88)
        {
          v19 = qword_100117E88;
        }

        else
        {
          v19 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v19);
        goto LABEL_46;
      }
    }

    return 0;
  }

  return 1;
}

void sub_10004BA7C(uint64_t a1)
{
  v2 = sub_10004A05C(*(a1 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 40), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = v5 - *(a1 + 80);
  v9 = *(a1 + 120) | v8;
  v10 = *(a1 + 64) & 1;
  v11 = *(a1 + 32);

  sub_100035F94(v3, v11, v4, v2, v9, v10, v7, v5, v6);
}

uint64_t sub_10004BAF4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v17 = a4;
  v18 = a2;
  v19 = objc_alloc_init(SAMicrostackshotStatistics);
  v20 = sub_10002CE08(0, 0, a1, v18, 0, 1, v17, 0, a8 - a7, a8, 0.0, 0.0, 0.0, 0.0, a7, 0.0, 6u, (word_100117EC0 & 0x200) != 0, a5, a6, a9, a3, SHIDWORD(a3), 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, v19, 0, 0, 0, 0);

  v21 = [v19 total];
  v22 = [v21 num_out_of_order] != 0;

  v23 = [v19 total];
  v24 = [v23 num_missing_load_info];

  if (v24)
  {
    v25 = ((v22 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v25 = v22 << 41;
  }

  if ([v19 bytes_not_microstackshots])
  {
    v26 = v25 | 0x40000000000;
  }

  else
  {
    v26 = v25;
  }

  if ((v20 & 0x800000) != 0)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v39 = *__error();
        v40 = sub_100035B80();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000A1488();
        }

        *__error() = v39;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v107 = *__error();
        v41 = sub_100035B20(a1);
        v42 = [v19 total];
        v43 = [v42 num_out_of_order];
        v44 = [v19 total];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v41, a1, v43, [v44 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v36)
        {
          CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
          if (!CStringPtr)
          {
            v38 = 2259332781;
            goto LABEL_81;
          }

LABEL_38:
          v51 = CStringPtr;
          v52 = 0;
LABEL_82:
          if (qword_100117E88)
          {
            v80 = qword_100117E88;
          }

          else
          {
            v80 = __stderrp;
          }

          fprintf(v80, "%s\n", v51);
          if (v52)
          {
            free(v52);
          }

          CFRelease(v36);
          goto LABEL_88;
        }

        v77 = sub_100035B80();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1544();
        }

LABEL_74:

        if (qword_100117E88)
        {
          v79 = qword_100117E88;
        }

        else
        {
          v79 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v79);
LABEL_88:
        *__error() = v107;
      }

LABEL_89:
      if (byte_100117E80 == 1)
      {
        v81 = *__error();
        v82 = sub_100035B80();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1B40();
        }

        *__error() = v81;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v83 = *__error();
        v84 = sub_100035B20(a1);
        v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: done reporting (%#llx)", v84, a1, v20);
        if (v85)
        {
          v86 = v85;
          v87 = CFStringGetCStringPtr(v85, 0x8000100u);
          if (v87)
          {
            v88 = v87;
            v89 = 0;
          }

          else
          {
            v88 = malloc_type_calloc(0x400uLL, 1uLL, 0x56910AC4uLL);
            CFStringGetCString(v86, v88, 1024, 0x8000100u);
            v89 = v88;
          }

          if (qword_100117E88)
          {
            v91 = qword_100117E88;
          }

          else
          {
            v91 = __stderrp;
          }

          fprintf(v91, "%s\n", v88);
          if (v89)
          {
            free(v89);
          }

          v92 = v86;
LABEL_146:
          CFRelease(v92);
LABEL_147:
          *__error() = v83;
          goto LABEL_148;
        }

        v90 = sub_100035B80();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1BCC();
        }

        goto LABEL_135;
      }

      goto LABEL_148;
    }

    if (byte_100117E80)
    {
      v53 = *__error();
      v54 = sub_100035B80();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1314();
      }

      *__error() = v53;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v55 = *__error();
      v56 = [v19 total];
      v57 = [v56 num_out_of_order];
      v58 = [v19 total];
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v57, [v58 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v59)
      {
        v60 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (!v60)
        {
          v61 = 2259332781;
LABEL_115:
          v75 = malloc_type_calloc(0x400uLL, 1uLL, v61);
          CFStringGetCString(v59, v75, 1024, 0x8000100u);
          v76 = v75;
          goto LABEL_116;
        }

LABEL_65:
        v75 = v60;
        v76 = 0;
LABEL_116:
        if (qword_100117E88)
        {
          v94 = qword_100117E88;
        }

        else
        {
          v94 = __stderrp;
        }

        fprintf(v94, "%s\n", v75);
        if (v76)
        {
          free(v76);
        }

        CFRelease(v59);
        goto LABEL_122;
      }

      v78 = sub_100035B80();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        sub_1000A13D0();
      }

LABEL_110:

      if (qword_100117E88)
      {
        v93 = qword_100117E88;
      }

      else
      {
        v93 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
LABEL_122:
      *__error() = v55;
    }
  }

  else if (v26)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v27 = *__error();
        v28 = sub_100035B80();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_100035B20(a1);
          v106 = [v19 total];
          v30 = [v106 num_out_of_order];
          v31 = [v19 total];
          *buf = 136447234;
          v109 = v29;
          v110 = 1024;
          *v111 = a1;
          *&v111[4] = 2048;
          *&v111[6] = v30;
          *&v111[14] = 2048;
          *&v111[16] = [v31 num_missing_load_info];
          v112 = 2048;
          v113 = [v19 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x30u);
        }

        *__error() = v27;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v107 = *__error();
        v32 = sub_100035B20(a1);
        v33 = [v19 total];
        v34 = [v33 num_out_of_order];
        v35 = [v19 total];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v32, a1, v34, [v35 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v36)
        {
          CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
          if (!CStringPtr)
          {
            v38 = 256102797;
LABEL_81:
            v51 = malloc_type_calloc(0x400uLL, 1uLL, v38);
            CFStringGetCString(v36, v51, 1024, 0x8000100u);
            v52 = v51;
            goto LABEL_82;
          }

          goto LABEL_38;
        }

        v77 = sub_100035B80();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          sub_1000A16B8();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v62 = *__error();
      v63 = sub_100035B80();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v19 total];
        v65 = [v64 num_out_of_order];
        v66 = [v19 total];
        *buf = 134218496;
        v109 = v65;
        v110 = 2048;
        *v111 = [v66 num_missing_load_info];
        *&v111[8] = 2048;
        *&v111[10] = [v19 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v62;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v55 = *__error();
      v67 = [v19 total];
      v68 = [v67 num_out_of_order];
      v69 = [v19 total];
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v68, [v69 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v59)
      {
        v60 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (!v60)
        {
          v61 = 256102797;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v78 = sub_100035B80();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        sub_1000A1600();
      }

      goto LABEL_110;
    }
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v45 = *__error();
        v46 = sub_100035B80();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A19C8();
        }

        *__error() = v45;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v107 = *__error();
        v47 = sub_100035B20(a1);
        v48 = [v19 total];
        v49 = [v48 num_out_of_order];
        v50 = [v19 total];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v47, a1, v49, [v50 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

        if (v36)
        {
          CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
          if (!CStringPtr)
          {
            v38 = 843371135;
            goto LABEL_81;
          }

          goto LABEL_38;
        }

        v77 = sub_100035B80();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1A84();
        }

        goto LABEL_74;
      }

      goto LABEL_89;
    }

    if (byte_100117E80)
    {
      v70 = *__error();
      v71 = sub_100035B80();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A1774();
      }

      *__error() = v70;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v55 = *__error();
      v72 = [v19 total];
      v73 = [v72 num_out_of_order];
      v74 = [v19 total];
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v73, [v74 num_missing_load_info], objc_msgSend(v19, "bytes_not_microstackshots"));

      if (v59)
      {
        v60 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (!v60)
        {
          v61 = 843371135;
          goto LABEL_115;
        }

        goto LABEL_65;
      }

      v78 = sub_100035B80();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        sub_1000A1830();
      }

      goto LABEL_110;
    }
  }

  if (byte_100117E80 == 1)
  {
    v95 = *__error();
    v96 = sub_100035B80();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A18E8();
    }

    *__error() = v95;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v83 = *__error();
    v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: done reporting (%#llx)", v20);
    if (v97)
    {
      v98 = v97;
      v99 = CFStringGetCStringPtr(v97, 0x8000100u);
      if (v99)
      {
        v100 = v99;
        v101 = 0;
      }

      else
      {
        v100 = malloc_type_calloc(0x400uLL, 1uLL, 0x56910AC4uLL);
        CFStringGetCString(v98, v100, 1024, 0x8000100u);
        v101 = v100;
      }

      if (qword_100117E88)
      {
        v104 = qword_100117E88;
      }

      else
      {
        v104 = __stderrp;
      }

      fprintf(v104, "%s\n", v100);
      if (v101)
      {
        free(v101);
      }

      v92 = v98;
      goto LABEL_146;
    }

    v102 = sub_100035B80();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      sub_1000A1958();
    }

LABEL_135:
    if (qword_100117E88)
    {
      v103 = qword_100117E88;
    }

    else
    {
      v103 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
    goto LABEL_147;
  }

LABEL_148:

  return v20;
}

void sub_10004CA48(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v16 = a2;
  v137 = a4;
  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v17 = *__error();
      v18 = sub_100035B80();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        v153 = sub_100035B20(a1);
        v154 = 1024;
        *v155 = a1;
        *&v155[4] = 2048;
        *&v155[6] = a5;
        *&v155[14] = 2048;
        *&v155[16] = a7;
        v156 = 2048;
        v157 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x30u);
      }

      *__error() = v17;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_52;
    }

    v20 = *__error();
    v21 = sub_100035B20(a1);
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", v21, a1, a5, *&a7, a3);
    if (v22)
    {
      v23 = v22;
      v24 = a5;
      CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
      if (CStringPtr)
      {
        v26 = CStringPtr;
        v27 = 0;
      }

      else
      {
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE3150D5uLL);
        CFStringGetCString(v23, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100117E88)
      {
        v38 = qword_100117E88;
      }

      else
      {
        v38 = __stderrp;
      }

      fprintf(v38, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      CFRelease(v23);
      a5 = v24;
      goto LABEL_51;
    }

    v36 = sub_100035B80();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      v128 = sub_100035B20(a1);
      *buf = 136316162;
      v153 = v128;
      v154 = 1024;
      *v155 = a1;
      *&v155[4] = 2048;
      *&v155[6] = a5;
      *&v155[14] = 2048;
      *&v155[16] = a7;
      v156 = 2048;
      v157 = a3;
      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x30u);
    }

    if (qword_100117E88)
    {
      v37 = qword_100117E88;
    }

    else
    {
      v37 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
LABEL_51:
    *__error() = v20;
    goto LABEL_52;
  }

  if (byte_100117E80)
  {
    v28 = *__error();
    v29 = sub_100035B80();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v153 = a5;
      v154 = 2048;
      *v155 = a7;
      *&v155[8] = 2048;
      *&v155[10] = a3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x20u);
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v20 = *__error();
    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: %llu bytes over the last %.0f seconds with flags %#llx", a5, *&a7, a3);
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
        v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE3150D5uLL);
        CFStringGetCString(v32, v34, 1024, 0x8000100u);
        v35 = v34;
      }

      if (qword_100117E88)
      {
        v40 = qword_100117E88;
      }

      else
      {
        v40 = __stderrp;
      }

      fprintf(v40, "%s\n", v34);
      if (v35)
      {
        free(v35);
      }

      CFRelease(v32);
      goto LABEL_51;
    }

    v39 = sub_100035B80();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v153 = a5;
      v154 = 2048;
      *v155 = a7;
      *&v155[8] = 2048;
      *&v155[10] = a3;
      _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "Unable to format: disk writes: %llu bytes over the last %.0f seconds with flags %#llx", buf, 0x20u);
    }

    if (qword_100117E88)
    {
      v37 = qword_100117E88;
    }

    else
    {
      v37 = __stderrp;
    }

    goto LABEL_31;
  }

LABEL_52:
  v41 = sub_100035BF0(a1);
  if (!v16)
  {
    v16 = sub_100035C38(a1);
  }

  v151 = 0;
  v42 = [v16 lastPathComponent];
  v43 = sub_10004AFBC(v42, a1, "disk writes", 160, &v151);

  if ((word_100117EC0 & 0x200) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v50 = a3;
        v51 = *__error();
        v52 = sub_100035B80();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1C58();
        }

        *__error() = v51;
        a3 = v50;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v134 = a5;
      v133 = *__error();
      v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to suppression cookie file");
      if (!v48)
      {
        v49 = sub_100035B80();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1C94();
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v44 = a3;
        v45 = *__error();
        v46 = sub_100035B80();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1CD0();
        }

        *__error() = v45;
        a3 = v44;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_88;
      }

      v134 = a5;
      v133 = *__error();
      v47 = sub_100035B20(a1);
      v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to suppression cookie file", v47, a1);
      if (!v48)
      {
        v49 = sub_100035B80();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1D50();
        }

LABEL_83:

        if (qword_100117E88)
        {
          v59 = qword_100117E88;
        }

        else
        {
          v59 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
        a5 = v134;
LABEL_87:
        *__error() = v133;
LABEL_88:
        v43 |= 0x8000uLL;
        goto LABEL_89;
      }
    }

    v53 = v48;
    v54 = v41;
    v55 = CFStringGetCStringPtr(v48, 0x8000100u);
    if (v55)
    {
      v56 = v55;
      v57 = 0;
    }

    else
    {
      v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x168FDD66uLL);
      CFStringGetCString(v53, v56, 1024, 0x8000100u);
      v57 = v56;
    }

    if (qword_100117E88)
    {
      v58 = qword_100117E88;
    }

    else
    {
      v58 = __stderrp;
    }

    fprintf(v58, "%s\n", v56);
    if (v57)
    {
      free(v57);
    }

    CFRelease(v53);
    a5 = v134;
    v41 = v54;
    goto LABEL_87;
  }

LABEL_89:
  if (sub_10004B73C(*&qword_100117EB0))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v72 = *__error();
        v73 = sub_100035B80();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A2004();
        }

        *__error() = v72;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_147;
      }

      v62 = *__error();
      v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to tasking-specified sampling");
      if (!v64)
      {
        v65 = sub_100035B80();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2040();
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v60 = *__error();
        v61 = sub_100035B80();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A207C();
        }

        *__error() = v60;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_147;
      }

      v62 = *__error();
      v63 = sub_100035B20(a1);
      v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to tasking-specified sampling", v63, a1);
      if (!v64)
      {
        v65 = sub_100035B80();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
        {
          sub_1000A20FC();
        }

LABEL_142:

        if (qword_100117E88)
        {
          v95 = qword_100117E88;
        }

        else
        {
          v95 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v95);
LABEL_146:
        *__error() = v62;
LABEL_147:
        v43 |= 0x200000uLL;
LABEL_148:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v103 = *__error();
            v104 = sub_100035B80();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v153 = v43;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "disk writes: not monitoring due to conditions %#llx", buf, 0xCu);
            }

            *__error() = v103;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_181;
          }

          v99 = *__error();
          v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: not monitoring due to conditions %#llx", v43);
          if (!v101)
          {
            v102 = sub_100035B80();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
            {
              sub_1000A217C();
            }

            goto LABEL_176;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v96 = *__error();
            v97 = sub_100035B80();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              v98 = sub_100035B20(a1);
              *buf = 136446722;
              v153 = v98;
              v154 = 1024;
              *v155 = a1;
              *&v155[4] = 2048;
              *&v155[6] = v43;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: not monitoring due to conditions %#llx", buf, 0x1Cu);
            }

            *__error() = v96;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 2)
          {
            goto LABEL_181;
          }

          v99 = *__error();
          v100 = sub_100035B20(a1);
          v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: not monitoring due to conditions %#llx", v100, a1, v43);
          if (!v101)
          {
            v102 = sub_100035B80();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
            {
              sub_1000A21EC();
            }

LABEL_176:

            if (qword_100117E88)
            {
              v111 = qword_100117E88;
            }

            else
            {
              v111 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v111);
LABEL_180:
            *__error() = v99;
LABEL_181:
            sub_10003673C(a1, v16, v41, v43, v151, a5, a8 - a7, a8);
            v70 = v137;
            goto LABEL_182;
          }
        }

        v105 = v101;
        v106 = a5;
        v107 = CFStringGetCStringPtr(v101, 0x8000100u);
        if (v107)
        {
          v108 = v107;
          v109 = 0;
        }

        else
        {
          v108 = malloc_type_calloc(0x400uLL, 1uLL, 0x3BDC1009uLL);
          CFStringGetCString(v105, v108, 1024, 0x8000100u);
          v109 = v108;
        }

        if (qword_100117E88)
        {
          v110 = qword_100117E88;
        }

        else
        {
          v110 = __stderrp;
        }

        fprintf(v110, "%s\n", v108);
        if (v109)
        {
          free(v109);
        }

        CFRelease(v105);
        a5 = v106;
        goto LABEL_180;
      }
    }

    v74 = v64;
    v75 = a5;
    v76 = CFStringGetCStringPtr(v64, 0x8000100u);
    if (v76)
    {
      v77 = v76;
      v78 = 0;
    }

    else
    {
      v77 = malloc_type_calloc(0x400uLL, 1uLL, 0xB53EA0ECuLL);
      CFStringGetCString(v74, v77, 1024, 0x8000100u);
      v78 = v77;
    }

    if (qword_100117E88)
    {
      v88 = qword_100117E88;
    }

    else
    {
      v88 = __stderrp;
    }

    fprintf(v88, "%s\n", v77);
    if (v78)
    {
      free(v78);
    }

    CFRelease(v74);
    a5 = v75;
    goto LABEL_146;
  }

  if (v43)
  {
    goto LABEL_148;
  }

  v66 = v41;
  v67 = v151;
  if ((v151 & 0x80000000000) != 0)
  {
    if (sub_100062D04())
    {
      v79 = a6;
      if ((a1 & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v112 = *__error();
          v113 = sub_100035B80();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "disk writes: deferring report generation due to game mode", buf, 2u);
          }

          *__error() = v112;
          v79 = a6;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_222;
        }

        v83 = v79;
        v84 = *__error();
        v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: deferring report generation due to game mode");
        if (!v86)
        {
          v87 = sub_100035B80();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
          {
            sub_1000A1F48();
          }

          goto LABEL_217;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v80 = *__error();
          v81 = sub_100035B80();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v82 = sub_100035B20(a1);
            *buf = 136446466;
            v153 = v82;
            v154 = 1024;
            *v155 = a1;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: disk writes: deferring report generation due to game mode", buf, 0x12u);
          }

          *__error() = v80;
          v79 = a6;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_222;
        }

        v83 = v79;
        v84 = *__error();
        v85 = sub_100035B20(a1);
        v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: deferring report generation due to game mode", v85, a1);
        if (!v86)
        {
          v87 = sub_100035B80();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
          {
            sub_1000A1F84();
          }

LABEL_217:

          if (qword_100117E88)
          {
            v131 = qword_100117E88;
          }

          else
          {
            v131 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v131);
          v79 = v83;
LABEL_221:
          *__error() = v84;
LABEL_222:
          v70 = v137;
          sub_1000647FC(a1, v16, a3, v137, a5, v79, a7, a8, a9);
          sub_10003673C(a1, v16, v66, 0, v67 | 0x100000000000, a5, a8 - a7, a8);
          goto LABEL_182;
        }
      }

      v114 = v86;
      v136 = v84;
      v115 = a3;
      v116 = v83;
      v117 = a5;
      v118 = CFStringGetCStringPtr(v86, 0x8000100u);
      if (v118)
      {
        v119 = v118;
        v120 = 0;
      }

      else
      {
        v119 = malloc_type_calloc(0x400uLL, 1uLL, 0x3A0699CAuLL);
        CFStringGetCString(v114, v119, 1024, 0x8000100u);
        v120 = v119;
      }

      if (qword_100117E88)
      {
        v129 = qword_100117E88;
      }

      else
      {
        v129 = __stderrp;
      }

      fprintf(v129, "%s\n", v119);
      if (v120)
      {
        free(v120);
      }

      CFRelease(v114);
      a5 = v117;
      v79 = v116;
      a3 = v115;
      v84 = v136;
      goto LABEL_221;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v121 = *__error();
        v122 = sub_100035B80();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1DD0();
        }

        *__error() = v121;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_102;
      }

      v91 = *__error();
      v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"disk writes: cannot defer report generation for game mode");
      if (!v93)
      {
        v94 = sub_100035B80();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1E0C();
        }

        goto LABEL_225;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v89 = *__error();
        v90 = sub_100035B80();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1E48();
        }

        *__error() = v89;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_102;
      }

      v91 = *__error();
      v92 = sub_100035B20(a1);
      v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: disk writes: cannot defer report generation for game mode", v92, a1);
      if (!v93)
      {
        v94 = sub_100035B80();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1000A1EC8();
        }

LABEL_225:

        if (qword_100117E88)
        {
          v132 = qword_100117E88;
        }

        else
        {
          v132 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v132);
LABEL_229:
        *__error() = v91;
        goto LABEL_102;
      }
    }

    v123 = v93;
    v124 = a5;
    v125 = CFStringGetCStringPtr(v93, 0x8000100u);
    if (v125)
    {
      v126 = v125;
      v127 = 0;
    }

    else
    {
      v126 = malloc_type_calloc(0x400uLL, 1uLL, 0x6EDFAA03uLL);
      CFStringGetCString(v123, v126, 1024, 0x8000100u);
      v127 = v126;
    }

    if (qword_100117E88)
    {
      v130 = qword_100117E88;
    }

    else
    {
      v130 = __stderrp;
    }

    fprintf(v130, "%s\n", v126);
    if (v127)
    {
      free(v127);
    }

    CFRelease(v123);
    a5 = v124;
    goto LABEL_229;
  }

LABEL_102:
  v68 = sub_1000359B8("Disk writes resource for [%d]", a1);
  v69 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DEEC;
  block[3] = &unk_100109030;
  v150 = a1;
  v139 = v16;
  v142 = a3;
  v70 = v137;
  v143 = a5;
  v144 = a7;
  v145 = a8;
  v146 = a6;
  v147 = a9;
  v148 = v66;
  v149 = v67;
  v140 = v137;
  v141 = v68;
  v71 = v68;
  dispatch_async(v69, block);

LABEL_182:
}

void sub_10004DEEC(uint64_t a1)
{
  v2 = sub_10004BAF4(*(a1 + 120), *(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64), *(a1 + 88), *(a1 + 72), *(a1 + 80), *(a1 + 96));
  v3 = *(a1 + 120);
  v4 = *(a1 + 104);
  v5 = *(a1 + 80);
  v6 = v5 - *(a1 + 72);
  v7 = *(a1 + 64);
  v9 = *(a1 + 112) | v8;
  v10 = *(a1 + 32);

  sub_10003673C(v3, v10, v4, v2, v9, v7, v6, v5);
}

uint64_t sub_10004DF5C(void *a1, char a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = a1;
  v22 = [v21 lastPathComponent];
  v23 = objc_alloc_init(SAMicrostackshotStatistics);
  v24 = sub_10002CE08(0, 0, 0xFFFFFFFFLL, v21, 0, 1, v18, 0, a9 - a8, a9, a9 - a7, a9, 0.0, 0.0, a7, 0.0, 0xFu, HIBYTE(word_100117EC0) & 1, 0, 0, 0.0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, v23, v20, v19, v17, a2);

  v25 = [v23 total];
  v26 = [v25 num_out_of_order] != 0;

  v27 = [v23 total];
  v28 = [v27 num_missing_load_info];

  if (v28)
  {
    v29 = ((v26 & 1) << 41) | 0x10000000000;
  }

  else
  {
    v29 = v26 << 41;
  }

  if ([v23 bytes_not_microstackshots])
  {
    v29 |= 0x40000000000uLL;
  }

  if ((v24 & 0x800000) != 0)
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v42 = *__error();
        v43 = sub_100035B80();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_1000A2278();
        }

        *__error() = v42;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v35 = *__error();
        v44 = [v23 total];
        v45 = [v44 num_out_of_order];
        v46 = [v23 total];
        v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v45, [v46 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v39)
        {
          CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
          if (!CStringPtr)
          {
            v41 = 550510900;
            goto LABEL_80;
          }

LABEL_37:
          v52 = CStringPtr;
          v53 = 0;
LABEL_81:
          if (qword_100117E88)
          {
            v81 = qword_100117E88;
          }

          else
          {
            v81 = __stderrp;
          }

          fprintf(v81, "%s\n", v52);
          if (v53)
          {
            free(v53);
          }

          CFRelease(v39);
          goto LABEL_87;
        }

        v78 = sub_100035B80();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2334();
        }

LABEL_73:

        if (qword_100117E88)
        {
          v80 = qword_100117E88;
        }

        else
        {
          v80 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v80);
LABEL_87:
        *__error() = v35;
      }

LABEL_88:
      if (byte_100117E80 == 1)
      {
        v82 = *__error();
        v83 = sub_100035B80();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A2844();
        }

        *__error() = v82;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v84 = *__error();
        v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: done reporting (%#llx)", v22, v24);
        if (!v85)
        {
          v86 = sub_100035B80();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            sub_1000A28BC();
          }

LABEL_130:

          if (qword_100117E88)
          {
            v96 = qword_100117E88;
          }

          else
          {
            v96 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
LABEL_134:
          *__error() = v84;
          goto LABEL_135;
        }

        goto LABEL_119;
      }

      goto LABEL_135;
    }

    if (byte_100117E80)
    {
      v54 = *__error();
      v55 = sub_100035B80();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_1000A23EC();
      }

      *__error() = v54;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v56 = *__error();
      v57 = [v23 total];
      v58 = [v57 num_out_of_order];
      v59 = [v23 total];
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: no microstackshots: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v58, [v59 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v60)
      {
        v61 = CFStringGetCStringPtr(v60, 0x8000100u);
        if (!v61)
        {
          v62 = 550510900;
LABEL_104:
          v76 = malloc_type_calloc(0x400uLL, 1uLL, v62);
          CFStringGetCString(v60, v76, 1024, 0x8000100u);
          v77 = v76;
          goto LABEL_105;
        }

LABEL_64:
        v76 = v61;
        v77 = 0;
LABEL_105:
        if (qword_100117E88)
        {
          v88 = qword_100117E88;
        }

        else
        {
          v88 = __stderrp;
        }

        fprintf(v88, "%s\n", v76);
        if (v77)
        {
          free(v77);
        }

        CFRelease(v60);
        goto LABEL_111;
      }

      v79 = sub_100035B80();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        sub_1000A24A8();
      }

LABEL_99:

      if (qword_100117E88)
      {
        v87 = qword_100117E88;
      }

      else
      {
        v87 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v87);
LABEL_111:
      *__error() = v56;
    }
  }

  else if (v29)
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v30 = *__error();
        v31 = sub_100035B80();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v23 total];
          v33 = [v32 num_out_of_order];
          v34 = [v23 total];
          *buf = 138544130;
          v99 = v22;
          v100 = 2048;
          v101 = v33;
          v102 = 2048;
          v103 = [v34 num_missing_load_info];
          v104 = 2048;
          v105 = [v23 bytes_not_microstackshots];
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x2Au);
        }

        *__error() = v30;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v35 = *__error();
        v36 = [v23 total];
        v37 = [v36 num_out_of_order];
        v38 = [v23 total];
        v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v37, [v38 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v39)
        {
          CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
          if (!CStringPtr)
          {
            v41 = 3848679309;
LABEL_80:
            v52 = malloc_type_calloc(0x400uLL, 1uLL, v41);
            CFStringGetCString(v39, v52, 1024, 0x8000100u);
            v53 = v52;
            goto LABEL_81;
          }

          goto LABEL_37;
        }

        v78 = sub_100035B80();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
        {
          sub_1000A2560();
        }

        goto LABEL_73;
      }

      goto LABEL_88;
    }

    if (byte_100117E80)
    {
      v63 = *__error();
      v64 = sub_100035B80();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [v23 total];
        v66 = [v65 num_out_of_order];
        v67 = [v23 total];
        *buf = 134218496;
        v99 = v66;
        v100 = 2048;
        v101 = [v67 num_missing_load_info];
        v102 = 2048;
        v103 = [v23 bytes_not_microstackshots];
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", buf, 0x20u);
      }

      *__error() = v63;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v56 = *__error();
      v68 = [v23 total];
      v69 = [v68 num_out_of_order];
      v70 = [v23 total];
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: some microstackshots with errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v69, [v70 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v60)
      {
        v61 = CFStringGetCStringPtr(v60, 0x8000100u);
        if (!v61)
        {
          v62 = 3848679309;
          goto LABEL_104;
        }

        goto LABEL_64;
      }

      v79 = sub_100035B80();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2618();
      }

      goto LABEL_99;
    }
  }

  else
  {
    if (v22)
    {
      if (byte_100117E80)
      {
        v47 = *__error();
        v48 = sub_100035B80();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A26D0();
        }

        *__error() = v47;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        v35 = *__error();
        v49 = [v23 total];
        v50 = [v49 num_out_of_order];
        v51 = [v23 total];
        v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v22, v50, [v51 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

        if (v39)
        {
          CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
          if (!CStringPtr)
          {
            v41 = 1384705646;
            goto LABEL_80;
          }

          goto LABEL_37;
        }

        v78 = sub_100035B80();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
        {
          sub_1000A278C();
        }

        goto LABEL_73;
      }

      goto LABEL_88;
    }

    if (byte_100117E80)
    {
      v71 = *__error();
      v72 = sub_100035B80();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A2924();
      }

      *__error() = v71;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v56 = *__error();
      v73 = [v23 total];
      v74 = [v73 num_out_of_order];
      v75 = [v23 total];
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: all microstackshots without errors: %llu out-of-order microstackshots, %llu microstackshots missing load infos, %llu bytes invalid", v74, [v75 num_missing_load_info], objc_msgSend(v23, "bytes_not_microstackshots"));

      if (v60)
      {
        v61 = CFStringGetCStringPtr(v60, 0x8000100u);
        if (!v61)
        {
          v62 = 1384705646;
          goto LABEL_104;
        }

        goto LABEL_64;
      }

      v79 = sub_100035B80();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        sub_1000A29E0();
      }

      goto LABEL_99;
    }
  }

  if (byte_100117E80 == 1)
  {
    v89 = *__error();
    v90 = sub_100035B80();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A2A98();
    }

    *__error() = v89;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v84 = *__error();
    v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: done reporting (%#llx)", v24);
    if (!v85)
    {
      v86 = sub_100035B80();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2B08();
      }

      goto LABEL_130;
    }

LABEL_119:
    v91 = v85;
    v92 = CFStringGetCStringPtr(v85, 0x8000100u);
    if (v92)
    {
      v93 = v92;
      v94 = 0;
    }

    else
    {
      v93 = malloc_type_calloc(0x400uLL, 1uLL, 0x141E3C75uLL);
      CFStringGetCString(v91, v93, 1024, 0x8000100u);
      v94 = v93;
    }

    if (qword_100117E88)
    {
      v95 = qword_100117E88;
    }

    else
    {
      v95 = __stderrp;
    }

    fprintf(v95, "%s\n", v93);
    if (v94)
    {
      free(v94);
    }

    CFRelease(v91);
    goto LABEL_134;
  }

LABEL_135:

  return v24;
}

void sub_10004EDA4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = COERCE_DOUBLE(a3);
  v154 = a4;
  v19 = a5;
  v20 = a6;
  [v17 lastPathComponent];
  v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v153 = a2;
  if (v21 != 0.0)
  {
    if (byte_100117E80)
    {
      v22 = *__error();
      v23 = sub_100035B80();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138545154;
        v169 = v21;
        v170 = 2048;
        v171 = a7;
        v172 = 2048;
        v173 = a8;
        v174 = 2112;
        v175 = v18;
        v176 = 2112;
        v177 = v154;
        v178 = 2112;
        v179 = v19;
        v180 = 2112;
        v181 = v20;
        v182 = 2048;
        v183 = a2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x52u);
      }

      *__error() = v22;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_52;
    }

    v25 = *__error();
    v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", *&v21, *&a7, *&a8, *&v18, v154, v19, v20, a2);
    if (v26)
    {
      v27 = v26;
      CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
      if (CStringPtr)
      {
        v29 = CStringPtr;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x6C28AB8DuLL);
        CFStringGetCString(v27, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100117E88)
      {
        v42 = qword_100117E88;
      }

      else
      {
        v42 = __stderrp;
      }

      fprintf(v42, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
      a2 = v153;
      goto LABEL_51;
    }

    v40 = sub_100035B80();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      *buf = 138414082;
      v169 = v21;
      v170 = 2048;
      v171 = a7;
      v172 = 2048;
      v173 = a8;
      v174 = 2112;
      v175 = v18;
      v176 = 2112;
      v177 = v154;
      v178 = 2112;
      v179 = v19;
      v180 = 2112;
      v181 = v20;
      v182 = 2048;
      v183 = a2;
      _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "Unable to format: %@: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x52u);
    }

    if (qword_100117E88)
    {
      v41 = qword_100117E88;
    }

    else
    {
      v41 = __stderrp;
    }

LABEL_43:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
LABEL_51:
    *__error() = v25;
    goto LABEL_52;
  }

  if (byte_100117E80)
  {
    v31 = *__error();
    v32 = sub_100035B80();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 134219522;
      v169 = a7;
      v170 = 2048;
      v171 = a8;
      v172 = 2112;
      v173 = v18;
      v174 = 2112;
      v175 = *&v154;
      v176 = 2112;
      v177 = v19;
      v178 = 2112;
      v179 = v20;
      v180 = 2048;
      v181 = a2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x48u);
    }

    *__error() = v31;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v25 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", *&a7, *&a8, *&v18, v154, v19, v20, a2);
    if (v34)
    {
      v35 = v34;
      v36 = v18;
      v37 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (v37)
      {
        v38 = v37;
        v39 = 0;
      }

      else
      {
        v38 = malloc_type_calloc(0x400uLL, 1uLL, 0x6C28AB8DuLL);
        CFStringGetCString(v35, v38, 1024, 0x8000100u);
        v39 = v38;
      }

      if (qword_100117E88)
      {
        v44 = qword_100117E88;
      }

      else
      {
        v44 = __stderrp;
      }

      fprintf(v44, "%s\n", v38);
      if (v39)
      {
        free(v39);
      }

      CFRelease(v35);
      v18 = v36;
      a2 = v153;
      goto LABEL_51;
    }

    v43 = sub_100035B80();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 134219522;
      v169 = a7;
      v170 = 2048;
      v171 = a8;
      v172 = 2112;
      v173 = v18;
      v174 = 2112;
      v175 = *&v154;
      v176 = 2112;
      v177 = v19;
      v178 = 2112;
      v179 = v20;
      v180 = 2048;
      v181 = a2;
      _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Unable to format: power exception: over the last %.0f seconds (%.0f reported) with issue type %@, mitigation reason %@, action taken %@, detector %@, flags %#llx", buf, 0x48u);
    }

    if (qword_100117E88)
    {
      v41 = qword_100117E88;
    }

    else
    {
      v41 = __stderrp;
    }

    goto LABEL_43;
  }

LABEL_52:
  if ((a2 & 3) == 3)
  {
    v134 = *__error();
    v135 = sub_100035B80();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
    {
      sub_1000A2BF0();
    }

    *__error() = v134;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v136 = v17;
      v137 = v20;
      v138 = *__error();
      v139 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Reporting power exception that is both fatal and background qos");
      if (v139)
      {
        v140 = v139;
        v141 = CFStringGetCStringPtr(v139, 0x8000100u);
        if (v141)
        {
LABEL_245:
          v146 = v141;
          v147 = 0;
LABEL_256:
          if (qword_100117E88)
          {
            v150 = qword_100117E88;
          }

          else
          {
            v150 = __stderrp;
          }

          fprintf(v150, "%s\n", v146);
          if (v147)
          {
            free(v147);
          }

          CFRelease(v140);
          goto LABEL_262;
        }

        v142 = 4278200866;
LABEL_255:
        v146 = malloc_type_calloc(0x400uLL, 1uLL, v142);
        CFStringGetCString(v140, v146, 1024, 0x8000100u);
        v147 = v146;
        goto LABEL_256;
      }

      v148 = sub_100035B80();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2C2C();
      }

LABEL_250:

      if (qword_100117E88)
      {
        v149 = qword_100117E88;
      }

      else
      {
        v149 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v149);
LABEL_262:
      *__error() = v138;
      v20 = v137;
      v17 = v136;
    }
  }

  else
  {
    if ((a2 & 3) != 0)
    {
      v167 = 0;
      *&v45 = COERCE_DOUBLE(sub_10004AFBC(*&v21, 0xFFFFFFFFLL, "power exception", 160, &v167));
      v46 = *&v45;
      if ((word_100117EC0 & 0x100) != 0)
      {
LABEL_89:
        if ((sub_100059C44([v17 UTF8String], 1) & 1) == 0 && sub_10004B73C(*&qword_100117EB8))
        {
          if (v21 == 0.0)
          {
            if (byte_100117E80)
            {
              v84 = *__error();
              v85 = sub_100035B80();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                sub_1000A2EA0();
              }

              *__error() = v84;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 0)
            {
              goto LABEL_166;
            }

            v70 = *__error();
            v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to throttling the number of reports generated for 1st party processes");
            if (!v71)
            {
              v72 = sub_100035B80();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                sub_1000A2EDC();
              }

              goto LABEL_161;
            }
          }

          else
          {
            if (byte_100117E80)
            {
              v68 = *__error();
              v69 = sub_100035B80();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                sub_1000A2DC0();
              }

              *__error() = v68;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 0)
            {
              goto LABEL_166;
            }

            v70 = *__error();
            v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to throttling the number of reports generated for 1st party processes", *&v21);
            if (!v71)
            {
              v72 = sub_100035B80();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                sub_1000A2E30();
              }

LABEL_161:

              if (qword_100117E88)
              {
                v110 = qword_100117E88;
              }

              else
              {
                v110 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v110);
              a2 = v153;
LABEL_165:
              *__error() = v70;
LABEL_166:
              *&v46 |= 0x200000uLL;
LABEL_167:
              if (v21 == 0.0)
              {
                if (byte_100117E80)
                {
                  v116 = *__error();
                  v117 = sub_100035B80();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v169 = v46;
                    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "power exception: not monitoring due to conditions %#llx", buf, 0xCu);
                  }

                  *__error() = v116;
                  a2 = v153;
                }

                if (byte_100117E81 != 1 || dword_100117510 > 2)
                {
                  goto LABEL_200;
                }

                v113 = *__error();
                v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to conditions %#llx", *&v46);
                if (!v114)
                {
                  v115 = sub_100035B80();
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A2F80();
                  }

                  goto LABEL_195;
                }
              }

              else
              {
                if (byte_100117E80)
                {
                  v111 = *__error();
                  v112 = sub_100035B80();
                  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v169 = v21;
                    v170 = 2048;
                    v171 = v46;
                    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: not monitoring due to conditions %#llx", buf, 0x16u);
                  }

                  *__error() = v111;
                  a2 = v153;
                }

                if (byte_100117E81 != 1 || dword_100117510 > 2)
                {
                  goto LABEL_200;
                }

                v113 = *__error();
                v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to conditions %#llx", *&v21, *&v46);
                if (!v114)
                {
                  v115 = sub_100035B80();
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A2F18();
                  }

LABEL_195:

                  if (qword_100117E88)
                  {
                    v125 = qword_100117E88;
                  }

                  else
                  {
                    v125 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v125);
LABEL_199:
                  a2 = v153;
                  *__error() = v113;
LABEL_200:
                  v126 = v167;
                  v127 = a9 - a7;
                  v128 = v17;
                  v129 = *&v46;
LABEL_201:
                  sub_1000363C4(v128, v129, v126, a2, v127, a9);
                  goto LABEL_202;
                }
              }

              v118 = v114;
              v119 = v19;
              v120 = v18;
              v121 = CFStringGetCStringPtr(v114, 0x8000100u);
              if (v121)
              {
                v122 = v121;
                v123 = 0;
              }

              else
              {
                v122 = malloc_type_calloc(0x400uLL, 1uLL, 0xFC841333uLL);
                CFStringGetCString(v118, v122, 1024, 0x8000100u);
                v123 = v122;
              }

              if (qword_100117E88)
              {
                v124 = qword_100117E88;
              }

              else
              {
                v124 = __stderrp;
              }

              fprintf(v124, "%s\n", v122);
              if (v123)
              {
                free(v123);
              }

              CFRelease(v118);
              v18 = v120;
              v19 = v119;
              goto LABEL_199;
            }
          }

          v86 = v71;
          v87 = v19;
          v88 = v18;
          v89 = CFStringGetCStringPtr(v71, 0x8000100u);
          if (v89)
          {
            v90 = v89;
            v91 = 0;
          }

          else
          {
            v90 = malloc_type_calloc(0x400uLL, 1uLL, 0xCCF352D7uLL);
            CFStringGetCString(v86, v90, 1024, 0x8000100u);
            v91 = v90;
          }

          if (qword_100117E88)
          {
            v97 = qword_100117E88;
          }

          else
          {
            v97 = __stderrp;
          }

          fprintf(v97, "%s\n", v90);
          if (v91)
          {
            free(v91);
          }

          CFRelease(v86);
          v18 = v88;
          v19 = v87;
          a2 = v153;
          goto LABEL_165;
        }

        if (v46 != 0.0)
        {
          goto LABEL_167;
        }

        v152 = v18;
        v73 = v167;
        if ((v167 & 0x80000000000) == 0)
        {
          goto LABEL_103;
        }

        if (sub_100062D04())
        {
          if (v21 == 0.0)
          {
            if (byte_100117E80)
            {
              v98 = *__error();
              v99 = sub_100035B80();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "power exception: deferring report generation due to game mode", buf, 2u);
              }

              *__error() = v98;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 2)
            {
              goto LABEL_224;
            }

            v81 = *__error();
            v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: deferring report generation due to game mode");
            if (!v82)
            {
              v83 = sub_100035B80();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
              {
                sub_1000A31B8();
              }

              goto LABEL_219;
            }
          }

          else
          {
            if (byte_100117E80)
            {
              v79 = *__error();
              v80 = sub_100035B80();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v169 = v21;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: power exception: deferring report generation due to game mode", buf, 0xCu);
              }

              *__error() = v79;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 2)
            {
              goto LABEL_224;
            }

            v81 = *__error();
            v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: deferring report generation due to game mode", *&v21);
            if (!v82)
            {
              v83 = sub_100035B80();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
              {
                sub_1000A3148();
              }

LABEL_219:

              if (qword_100117E88)
              {
                v132 = qword_100117E88;
              }

              else
              {
                v132 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v132);
LABEL_223:
              *__error() = v81;
LABEL_224:
              sub_100064B28(v17, a2, *&v152, v154, v19, v20, a7, a8, a9);
              v127 = a9 - a7;
              v126 = v73 | 0x100000000000;
              v18 = v152;
              v128 = v17;
              v129 = 0;
              goto LABEL_201;
            }
          }

          v100 = v82;
          v101 = CFStringGetCStringPtr(v82, 0x8000100u);
          if (v101)
          {
            v102 = v101;
            v103 = 0;
          }

          else
          {
            v102 = malloc_type_calloc(0x400uLL, 1uLL, 0x1956EB41uLL);
            CFStringGetCString(v100, v102, 1024, 0x8000100u);
            v103 = v102;
          }

          if (qword_100117E88)
          {
            v130 = qword_100117E88;
          }

          else
          {
            v130 = __stderrp;
          }

          fprintf(v130, "%s\n", v102);
          if (v103)
          {
            free(v103);
          }

          CFRelease(v100);
          a2 = v153;
          goto LABEL_223;
        }

        if (v21 == 0.0)
        {
          if (byte_100117E80)
          {
            v104 = *__error();
            v105 = sub_100035B80();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              sub_1000A30D0();
            }

            *__error() = v104;
            v21 = 0.0;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_103;
          }

          v94 = *__error();
          v95 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: cannot defer report generation for game mode");
          if (!v95)
          {
            v96 = sub_100035B80();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
            {
              sub_1000A310C();
            }

            goto LABEL_227;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v92 = *__error();
            v93 = sub_100035B80();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
            {
              sub_1000A2FF0();
            }

            *__error() = v92;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_103;
          }

          v94 = *__error();
          v95 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: cannot defer report generation for game mode", *&v21);
          if (!v95)
          {
            v96 = sub_100035B80();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
            {
              sub_1000A3060();
            }

LABEL_227:

            if (qword_100117E88)
            {
              v133 = qword_100117E88;
            }

            else
            {
              v133 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v133);
LABEL_231:
            *__error() = v94;
LABEL_103:
            v74 = [v17 lastPathComponent];
            v75 = sub_1000359B8("power exception for %s", [v74 UTF8String]);

            dispatch_get_global_queue(9, 0);
            v77 = v76 = a2;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000505FC;
            block[3] = &unk_100109058;
            v156 = v17;
            v162 = v76;
            v157 = *&v152;
            v158 = v154;
            v159 = v19;
            v163 = a7;
            v164 = a8;
            v165 = a9;
            v166 = v73;
            v18 = v152;
            v160 = v20;
            v161 = v75;
            v78 = v75;
            dispatch_async(v77, block);

            goto LABEL_202;
          }
        }

        v106 = v95;
        v107 = CFStringGetCStringPtr(v95, 0x8000100u);
        if (v107)
        {
          v108 = v107;
          v109 = 0;
        }

        else
        {
          v108 = malloc_type_calloc(0x400uLL, 1uLL, 0x3266B2E6uLL);
          CFStringGetCString(v106, v108, 1024, 0x8000100u);
          v109 = v108;
        }

        if (qword_100117E88)
        {
          v131 = qword_100117E88;
        }

        else
        {
          v131 = __stderrp;
        }

        fprintf(v131, "%s\n", v108);
        if (v109)
        {
          free(v109);
        }

        CFRelease(v106);
        a2 = v153;
        goto LABEL_231;
      }

      if (v21 == 0.0)
      {
        if (byte_100117E80)
        {
          v53 = v45;
          v54 = *__error();
          v55 = sub_100035B80();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A2D48();
          }

          *__error() = v54;
          v21 = 0.0;
          v46 = *&v53;
          a2 = v153;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_88;
        }

        v56 = *__error();
        v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception: not monitoring due to suppression cookie file");
        v151 = v56;
        if (!v51)
        {
          v52 = sub_100035B80();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1000A2D84();
          }

          goto LABEL_83;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v47 = v45;
          v48 = *__error();
          v49 = sub_100035B80();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A2C68();
          }

          *__error() = v48;
          v46 = *&v47;
          a2 = v153;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_88;
        }

        v50 = *__error();
        v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: power exception: not monitoring due to suppression cookie file", *&v21);
        v151 = v50;
        if (!v51)
        {
          v52 = sub_100035B80();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1000A2CD8();
          }

LABEL_83:

          if (qword_100117E88)
          {
            v67 = qword_100117E88;
          }

          else
          {
            v67 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v67);
          a2 = v153;
LABEL_87:
          *__error() = v151;
LABEL_88:
          *&v46 |= 0x8000uLL;
          goto LABEL_89;
        }
      }

      v57 = v51;
      v58 = v21;
      v59 = v17;
      v60 = v20;
      v61 = v19;
      v62 = v18;
      v63 = CFStringGetCStringPtr(v51, 0x8000100u);
      if (v63)
      {
        v64 = v63;
        v65 = 0;
      }

      else
      {
        v64 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF3FC4A2uLL);
        CFStringGetCString(v57, v64, 1024, 0x8000100u);
        v65 = v64;
      }

      if (qword_100117E88)
      {
        v66 = qword_100117E88;
      }

      else
      {
        v66 = __stderrp;
      }

      fprintf(v66, "%s\n", v64);
      if (v65)
      {
        free(v65);
      }

      CFRelease(v57);
      v18 = v62;
      v19 = v61;
      v20 = v60;
      v17 = v59;
      v21 = v58;
      a2 = v153;
      goto LABEL_87;
    }

    v143 = *__error();
    v144 = sub_100035B80();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
    {
      sub_1000A2B78();
    }

    *__error() = v143;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v136 = v17;
      v137 = v20;
      v138 = *__error();
      v145 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Reporting power exception that is neither fatal nor background qos");
      if (v145)
      {
        v140 = v145;
        v141 = CFStringGetCStringPtr(v145, 0x8000100u);
        if (v141)
        {
          goto LABEL_245;
        }

        v142 = 3536121195;
        goto LABEL_255;
      }

      v148 = sub_100035B80();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2BB4();
      }

      goto LABEL_250;
    }
  }

LABEL_202:
}

void sub_1000505FC(uint64_t a1)
{
  v2 = sub_10004DF5C(*(a1 + 32), *(a1 + 80), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 32);
  v4 = *(a1 + 104);
  v5 = v4 - *(a1 + 88);
  v6 = *(a1 + 80);
  v8 = *(a1 + 112) | v7;

  sub_1000363C4(v3, v2, v8, v6, v5, v4);
}

void sub_10005066C(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v88 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v23 = *__error();
        v24 = sub_100035B80();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v101 = sub_100035B20(a1);
          v102 = 1024;
          *v103 = a1;
          *&v103[4] = 2048;
          *&v103[6] = a5;
          v104 = 2048;
          v105 = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}s [%d]: file descriptor exhaustion: %llu fds with flags %#llx", buf, 0x26u);
        }

        *__error() = v23;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v89 = *__error();
        v26 = sub_100035B20(a1);
        v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: %llu fds with flags %#llx", v26, a1, a5, a3);
        if (!v27)
        {
          v20 = sub_100035B80();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v86 = sub_100035B20(a1);
            *buf = 136315906;
            v101 = v86;
            v102 = 1024;
            *v103 = a1;
            *&v103[4] = 2048;
            *&v103[6] = a5;
            v104 = 2048;
            v105 = a3;
            v22 = "Unable to format: %s [%d]: file descriptor exhaustion: %llu fds with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v48 = qword_100117E88;
          }

          else
          {
            v48 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
          goto LABEL_72;
        }

        v28 = v27;
        v29 = a5;
        v30 = a7;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v32 = 1318044893;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v38 = *__error();
      v39 = sub_100035B80();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v101 = a5;
        v102 = 2048;
        *v103 = a3;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "file descriptor exhaustion: %llu fds with flags %#llx", buf, 0x16u);
      }

      *__error() = v38;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: %llu fds with flags %#llx", a5, a3);
    if (v41)
    {
      v42 = v41;
      v29 = a5;
      v43 = CFStringGetCStringPtr(v41, 0x8000100u);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
      }

      else
      {
        v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x4E8FC4DDuLL);
        CFStringGetCString(v42, v44, 1024, 0x8000100u);
        v45 = v44;
      }

      if (qword_100117E88)
      {
        v85 = qword_100117E88;
      }

      else
      {
        v85 = __stderrp;
      }

      fprintf(v85, "%s\n", v44);
      if (v45)
      {
        free(v45);
      }

      CFRelease(v42);
      goto LABEL_62;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A31F4();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = *__error();
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v101 = sub_100035B20(a1);
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx", buf, 0x26u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v18 = sub_100035B20(a1);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx", v18, a1, a5, a3);
    if (!v19)
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = sub_100035B20(a1);
        *buf = 136315906;
        v101 = v21;
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        v22 = "Unable to format: %s [%d]: file descriptor exhaustion: fatal, %llu fds with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, v22, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v33 = *__error();
    v34 = sub_100035B80();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v101 = a5;
      v102 = 2048;
      *v103 = a3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "file descriptor exhaustion: fatal, %llu fds with flags %#llx", buf, 0x16u);
    }

    *__error() = v33;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v89 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: fatal, %llu fds with flags %#llx", a5, a3);
    if (v19)
    {
LABEL_38:
      v28 = v19;
      v29 = a5;
      v30 = a7;
      CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v36 = CStringPtr;
        v37 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v46 = qword_100117E88;
        }

        else
        {
          v46 = __stderrp;
        }

        fprintf(v46, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        CFRelease(v28);
        a7 = v30;
LABEL_62:
        a5 = v29;
LABEL_72:
        *__error() = v89;
        goto LABEL_73;
      }

      v32 = 615798485;
LABEL_55:
      v36 = malloc_type_calloc(0x400uLL, 1uLL, v32);
      CFStringGetCString(v28, v36, 1024, 0x8000100u);
      v37 = v36;
      goto LABEL_56;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A325C();
    }

    goto LABEL_67;
  }

LABEL_73:
  v91 = a5;
  v90 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v99 = 0;
  v49 = [v13 lastPathComponent];
  v50 = sub_10004AFBC(v49, a1, "file descriptor exhaustion", 176, &v99);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v56 = *__error();
        v57 = sub_100035B80();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A32C4();
        }

        *__error() = v56;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: not monitoring due to suppression cookie file");
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3300();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v51 = *__error();
        v52 = sub_100035B80();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A333C();
        }

        *__error() = v51;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v53 = sub_100035B20(a1);
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: not monitoring due to suppression cookie file", v53, a1);
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A33BC();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v66 = qword_100117E88;
        }

        else
        {
          v66 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
LABEL_110:
        *__error() = v87;
LABEL_111:
        v50 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v58 = v54;
    v59 = a6;
    v60 = v14;
    v61 = a7;
    v62 = CFStringGetCStringPtr(v54, 0x8000100u);
    if (v62)
    {
      v63 = v62;
      v64 = 0;
    }

    else
    {
      v63 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD49DA78uLL);
      CFStringGetCString(v58, v63, 1024, 0x8000100u);
      v64 = v63;
    }

    if (qword_100117E88)
    {
      v65 = qword_100117E88;
    }

    else
    {
      v65 = __stderrp;
    }

    fprintf(v65, "%s\n", v63);
    if (v64)
    {
      free(v64);
    }

    CFRelease(v58);
    a7 = v61;
    v14 = v60;
    a6 = v59;
    goto LABEL_110;
  }

  if (!v50)
  {
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100051468;
    v92[3] = &unk_100109080;
    v98 = a1;
    v93 = v13;
    v94 = v90;
    v95 = v99;
    v96 = v91;
    v97 = a6;
    sub_100068D08(0, a1, v93, a3, v14, v91, a6, a7, v92);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v74 = *__error();
      v75 = sub_100035B80();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v101 = v50;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "file descriptor exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v74;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v70 = *__error();
    v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: not monitoring due to conditions %#llx", v50);
    if (!v72)
    {
      v73 = sub_100035B80();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        sub_1000A343C();
      }

      goto LABEL_140;
    }

LABEL_129:
    v76 = v72;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v72, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xEE7DA05CuLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v67 = *__error();
    v68 = sub_100035B80();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = sub_100035B20(a1);
      *buf = 136446722;
      v101 = v69;
      v102 = 1024;
      *v103 = a1;
      *&v103[4] = 2048;
      *&v103[6] = v50;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: file descriptor exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v67;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v70 = *__error();
  v71 = sub_100035B20(a1);
  v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: not monitoring due to conditions %#llx", v71, a1, v50);
  if (v72)
  {
    goto LABEL_129;
  }

  v73 = sub_100035B80();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
  {
    sub_1000A34AC();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v84 = qword_100117E88;
  }

  else
  {
    v84 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_144:
  *__error() = v70;
LABEL_145:
  sub_100036B70(a1, v13, v90, v50, v99, v91, a6);
  if (v88 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(0, a1, a7);
  }

LABEL_147:
}

void sub_100051484(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v88 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v23 = *__error();
        v24 = sub_100035B80();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v101 = sub_100035B20(a1);
          v102 = 1024;
          *v103 = a1;
          *&v103[4] = 2048;
          *&v103[6] = a5;
          v104 = 2048;
          v105 = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}s [%d]: port exhaustion: %llu ports with flags %#llx", buf, 0x26u);
        }

        *__error() = v23;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v89 = *__error();
        v26 = sub_100035B20(a1);
        v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: %llu ports with flags %#llx", v26, a1, a5, a3);
        if (!v27)
        {
          v20 = sub_100035B80();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v86 = sub_100035B20(a1);
            *buf = 136315906;
            v101 = v86;
            v102 = 1024;
            *v103 = a1;
            *&v103[4] = 2048;
            *&v103[6] = a5;
            v104 = 2048;
            v105 = a3;
            v22 = "Unable to format: %s [%d]: port exhaustion: %llu ports with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v48 = qword_100117E88;
          }

          else
          {
            v48 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
          goto LABEL_72;
        }

        v28 = v27;
        v29 = a5;
        v30 = a7;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v32 = 1047609145;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v38 = *__error();
      v39 = sub_100035B80();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v101 = a5;
        v102 = 2048;
        *v103 = a3;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "port exhaustion: %llu ports with flags %#llx", buf, 0x16u);
      }

      *__error() = v38;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: %llu ports with flags %#llx", a5, a3);
    if (v41)
    {
      v42 = v41;
      v29 = a5;
      v43 = CFStringGetCStringPtr(v41, 0x8000100u);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
      }

      else
      {
        v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x3E713F39uLL);
        CFStringGetCString(v42, v44, 1024, 0x8000100u);
        v45 = v44;
      }

      if (qword_100117E88)
      {
        v85 = qword_100117E88;
      }

      else
      {
        v85 = __stderrp;
      }

      fprintf(v85, "%s\n", v44);
      if (v45)
      {
        free(v45);
      }

      CFRelease(v42);
      goto LABEL_62;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3538();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = *__error();
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v101 = sub_100035B20(a1);
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}s [%d]: port exhaustion: fatal, %llu ports with flags %#llx", buf, 0x26u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v18 = sub_100035B20(a1);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: fatal, %llu ports with flags %#llx", v18, a1, a5, a3);
    if (!v19)
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = sub_100035B20(a1);
        *buf = 136315906;
        v101 = v21;
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        v22 = "Unable to format: %s [%d]: port exhaustion: fatal, %llu ports with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, v22, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v33 = *__error();
    v34 = sub_100035B80();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v101 = a5;
      v102 = 2048;
      *v103 = a3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "port exhaustion: fatal, %llu ports with flags %#llx", buf, 0x16u);
    }

    *__error() = v33;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v89 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: fatal, %llu ports with flags %#llx", a5, a3);
    if (v19)
    {
LABEL_38:
      v28 = v19;
      v29 = a5;
      v30 = a7;
      CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v36 = CStringPtr;
        v37 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v46 = qword_100117E88;
        }

        else
        {
          v46 = __stderrp;
        }

        fprintf(v46, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        CFRelease(v28);
        a7 = v30;
LABEL_62:
        a5 = v29;
LABEL_72:
        *__error() = v89;
        goto LABEL_73;
      }

      v32 = 237779063;
LABEL_55:
      v36 = malloc_type_calloc(0x400uLL, 1uLL, v32);
      CFStringGetCString(v28, v36, 1024, 0x8000100u);
      v37 = v36;
      goto LABEL_56;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A35A0();
    }

    goto LABEL_67;
  }

LABEL_73:
  v91 = a5;
  v90 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v99 = 0;
  v49 = [v13 lastPathComponent];
  v50 = sub_10004AFBC(v49, a1, "port exhaustion", 176, &v99);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v56 = *__error();
        v57 = sub_100035B80();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A3608();
        }

        *__error() = v56;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: not monitoring due to suppression cookie file");
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3644();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v51 = *__error();
        v52 = sub_100035B80();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A3680();
        }

        *__error() = v51;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v53 = sub_100035B20(a1);
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: not monitoring due to suppression cookie file", v53, a1);
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3700();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v66 = qword_100117E88;
        }

        else
        {
          v66 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
LABEL_110:
        *__error() = v87;
LABEL_111:
        v50 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v58 = v54;
    v59 = a6;
    v60 = v14;
    v61 = a7;
    v62 = CFStringGetCStringPtr(v54, 0x8000100u);
    if (v62)
    {
      v63 = v62;
      v64 = 0;
    }

    else
    {
      v63 = malloc_type_calloc(0x400uLL, 1uLL, 0x12D86434uLL);
      CFStringGetCString(v58, v63, 1024, 0x8000100u);
      v64 = v63;
    }

    if (qword_100117E88)
    {
      v65 = qword_100117E88;
    }

    else
    {
      v65 = __stderrp;
    }

    fprintf(v65, "%s\n", v63);
    if (v64)
    {
      free(v64);
    }

    CFRelease(v58);
    a7 = v61;
    v14 = v60;
    a6 = v59;
    goto LABEL_110;
  }

  if (!v50)
  {
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100052280;
    v92[3] = &unk_100109080;
    v98 = a1;
    v93 = v13;
    v94 = v90;
    v95 = v99;
    v96 = v91;
    v97 = a6;
    sub_100068D08(1, a1, v93, a3, v14, v91, a6, a7, v92);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v74 = *__error();
      v75 = sub_100035B80();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v101 = v50;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "port exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v74;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v70 = *__error();
    v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: not monitoring due to conditions %#llx", v50);
    if (!v72)
    {
      v73 = sub_100035B80();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3780();
      }

      goto LABEL_140;
    }

LABEL_129:
    v76 = v72;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v72, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0x9CA2CA51uLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v67 = *__error();
    v68 = sub_100035B80();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = sub_100035B20(a1);
      *buf = 136446722;
      v101 = v69;
      v102 = 1024;
      *v103 = a1;
      *&v103[4] = 2048;
      *&v103[6] = v50;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: port exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v67;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v70 = *__error();
  v71 = sub_100035B20(a1);
  v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: not monitoring due to conditions %#llx", v71, a1, v50);
  if (v72)
  {
    goto LABEL_129;
  }

  v73 = sub_100035B80();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
  {
    sub_1000A37F0();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v84 = qword_100117E88;
  }

  else
  {
    v84 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_144:
  *__error() = v70;
LABEL_145:
  sub_100036F14(a1, v13, v90, v50, v99, v91, a6);
  if (v88 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(1, a1, a7);
  }

LABEL_147:
}

void sub_10005229C(uint64_t a1, void *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, mach_port_name_t a7)
{
  v13 = a2;
  v14 = a4;
  v88 = a7 - 1;
  if (a7 - 1 > 0xFFFFFFFD)
  {
    if ((a1 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v23 = *__error();
        v24 = sub_100035B80();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v101 = sub_100035B20(a1);
          v102 = 1024;
          *v103 = a1;
          *&v103[4] = 2048;
          *&v103[6] = a5;
          v104 = 2048;
          v105 = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx", buf, 0x26u);
        }

        *__error() = v23;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v89 = *__error();
        v26 = sub_100035B20(a1);
        v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx", v26, a1, a5, a3);
        if (!v27)
        {
          v20 = sub_100035B80();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v86 = sub_100035B20(a1);
            *buf = 136315906;
            v101 = v86;
            v102 = 1024;
            *v103 = a1;
            *&v103[4] = 2048;
            *&v103[6] = a5;
            v104 = 2048;
            v105 = a3;
            v22 = "Unable to format: %s [%d]: kqworkloop exhaustion: %llu kqworkloops with flags %#llx";
            goto LABEL_156;
          }

LABEL_53:

LABEL_68:
          if (qword_100117E88)
          {
            v48 = qword_100117E88;
          }

          else
          {
            v48 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
          goto LABEL_72;
        }

        v28 = v27;
        v29 = a5;
        v30 = a7;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          goto LABEL_39;
        }

        v32 = 1539042899;
        goto LABEL_55;
      }

      goto LABEL_73;
    }

    if (byte_100117E80)
    {
      v38 = *__error();
      v39 = sub_100035B80();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v101 = a5;
        v102 = 2048;
        *v103 = a3;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "kqworkloop exhaustion: %llu kqworkloops with flags %#llx", buf, 0x16u);
      }

      *__error() = v38;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: %llu kqworkloops with flags %#llx", a5, a3);
    if (v41)
    {
      v42 = v41;
      v29 = a5;
      v43 = CFStringGetCStringPtr(v41, 0x8000100u);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
      }

      else
      {
        v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x5BBBEE53uLL);
        CFStringGetCString(v42, v44, 1024, 0x8000100u);
        v45 = v44;
      }

      if (qword_100117E88)
      {
        v85 = qword_100117E88;
      }

      else
      {
        v85 = __stderrp;
      }

      fprintf(v85, "%s\n", v44);
      if (v45)
      {
        free(v45);
      }

      CFRelease(v42);
      goto LABEL_62;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A387C();
    }

LABEL_67:

    goto LABEL_68;
  }

  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v15 = *__error();
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v101 = sub_100035B20(a1);
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", buf, 0x26u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_73;
    }

    v89 = *__error();
    v18 = sub_100035B20(a1);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", v18, a1, a5, a3);
    if (!v19)
    {
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = sub_100035B20(a1);
        *buf = 136315906;
        v101 = v21;
        v102 = 1024;
        *v103 = a1;
        *&v103[4] = 2048;
        *&v103[6] = a5;
        v104 = 2048;
        v105 = a3;
        v22 = "Unable to format: %s [%d]: kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx";
LABEL_156:
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, v22, buf, 0x26u);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (byte_100117E80)
  {
    v33 = *__error();
    v34 = sub_100035B80();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v101 = a5;
      v102 = 2048;
      *v103 = a3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", buf, 0x16u);
    }

    *__error() = v33;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v89 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: fatal, %llu kqworkloops with flags %#llx", a5, a3);
    if (v19)
    {
LABEL_38:
      v28 = v19;
      v29 = a5;
      v30 = a7;
      CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
      if (CStringPtr)
      {
LABEL_39:
        v36 = CStringPtr;
        v37 = 0;
LABEL_56:
        if (qword_100117E88)
        {
          v46 = qword_100117E88;
        }

        else
        {
          v46 = __stderrp;
        }

        fprintf(v46, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        CFRelease(v28);
        a7 = v30;
LABEL_62:
        a5 = v29;
LABEL_72:
        *__error() = v89;
        goto LABEL_73;
      }

      v32 = 1163163842;
LABEL_55:
      v36 = malloc_type_calloc(0x400uLL, 1uLL, v32);
      CFStringGetCString(v28, v36, 1024, 0x8000100u);
      v37 = v36;
      goto LABEL_56;
    }

    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000A38E4();
    }

    goto LABEL_67;
  }

LABEL_73:
  v91 = a5;
  v90 = sub_100035BF0(a1);
  if (!v13)
  {
    v13 = sub_100035C38(a1);
  }

  v99 = 0;
  v49 = [v13 lastPathComponent];
  v50 = sub_10004AFBC(v49, a1, "kqworkloop exhaustion", 176, &v99);

  if ((word_100117EC0 & 8) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v56 = *__error();
        v57 = sub_100035B80();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A394C();
        }

        *__error() = v56;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: not monitoring due to suppression cookie file");
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3988();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v51 = *__error();
        v52 = sub_100035B80();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A39C4();
        }

        *__error() = v51;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_111;
      }

      v87 = *__error();
      v53 = sub_100035B20(a1);
      v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: not monitoring due to suppression cookie file", v53, a1);
      if (!v54)
      {
        v55 = sub_100035B80();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3A44();
        }

LABEL_106:

        if (qword_100117E88)
        {
          v66 = qword_100117E88;
        }

        else
        {
          v66 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
LABEL_110:
        *__error() = v87;
LABEL_111:
        v50 |= 0x8000uLL;
        goto LABEL_112;
      }
    }

    v58 = v54;
    v59 = a6;
    v60 = v14;
    v61 = a7;
    v62 = CFStringGetCStringPtr(v54, 0x8000100u);
    if (v62)
    {
      v63 = v62;
      v64 = 0;
    }

    else
    {
      v63 = malloc_type_calloc(0x400uLL, 1uLL, 0xA885C4D0uLL);
      CFStringGetCString(v58, v63, 1024, 0x8000100u);
      v64 = v63;
    }

    if (qword_100117E88)
    {
      v65 = qword_100117E88;
    }

    else
    {
      v65 = __stderrp;
    }

    fprintf(v65, "%s\n", v63);
    if (v64)
    {
      free(v64);
    }

    CFRelease(v58);
    a7 = v61;
    v14 = v60;
    a6 = v59;
    goto LABEL_110;
  }

  if (!v50)
  {
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100053098;
    v92[3] = &unk_100109080;
    v98 = a1;
    v93 = v13;
    v94 = v90;
    v95 = v99;
    v96 = v91;
    v97 = a6;
    sub_100068D08(2, a1, v93, a3, v14, v91, a6, a7, v92);

    goto LABEL_147;
  }

LABEL_112:
  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v74 = *__error();
      v75 = sub_100035B80();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v101 = v50;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "kqworkloop exhaustion: not monitoring due to conditions %#llx", buf, 0xCu);
      }

      *__error() = v74;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_145;
    }

    v70 = *__error();
    v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: not monitoring due to conditions %#llx", v50);
    if (!v72)
    {
      v73 = sub_100035B80();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3AC4();
      }

      goto LABEL_140;
    }

LABEL_129:
    v76 = v72;
    v77 = a6;
    v78 = v14;
    v79 = a7;
    v80 = CFStringGetCStringPtr(v72, 0x8000100u);
    if (v80)
    {
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = malloc_type_calloc(0x400uLL, 1uLL, 0x776A1171uLL);
      CFStringGetCString(v76, v81, 1024, 0x8000100u);
      v82 = v81;
    }

    if (qword_100117E88)
    {
      v83 = qword_100117E88;
    }

    else
    {
      v83 = __stderrp;
    }

    fprintf(v83, "%s\n", v81);
    if (v82)
    {
      free(v82);
    }

    CFRelease(v76);
    a7 = v79;
    v14 = v78;
    a6 = v77;
    goto LABEL_144;
  }

  if (byte_100117E80)
  {
    v67 = *__error();
    v68 = sub_100035B80();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = sub_100035B20(a1);
      *buf = 136446722;
      v101 = v69;
      v102 = 1024;
      *v103 = a1;
      *&v103[4] = 2048;
      *&v103[6] = v50;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: kqworkloop exhaustion: not monitoring due to conditions %#llx", buf, 0x1Cu);
    }

    *__error() = v67;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 2)
  {
    goto LABEL_145;
  }

  v70 = *__error();
  v71 = sub_100035B20(a1);
  v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: not monitoring due to conditions %#llx", v71, a1, v50);
  if (v72)
  {
    goto LABEL_129;
  }

  v73 = sub_100035B80();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
  {
    sub_1000A3B34();
  }

LABEL_140:

  if (qword_100117E88)
  {
    v84 = qword_100117E88;
  }

  else
  {
    v84 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
LABEL_144:
  *__error() = v70;
LABEL_145:
  sub_1000372B8(a1, v13, v90, v50, v99, v91, a6);
  if (v88 <= 0xFFFFFFFD)
  {
    sub_10006B0A4(2, a1, a7);
  }

LABEL_147:
}

void sub_1000530B4(uint64_t a1)
{
    ;
  }

  v2 = 0x4000;
  v3 = malloc_type_malloc(0x4000uLL, 0x59C679A8uLL);
  v4 = 0;
  do
  {
    v5 = v4;
    if (v2 - 1 <= v4)
    {
      v2 *= 2;
      v3 = reallocf(v3, v2);
    }

    v6 = read(*(a1 + 52), &v3[v5], v2 + ~v5);
    v4 = v6 + v5;
  }

  while (v6 > 0);
  if (v6 < 0)
  {
    if (byte_100117E80 == 1)
    {
      v7 = *__error();
      v8 = sub_100035B80();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3BC0();
      }

      *__error() = v7;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v10 = *__error();
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"read from child returned error: %d (%s)", v11, v13);
      if (v14)
      {
        v15 = v14;
        CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
        if (CStringPtr)
        {
          v17 = CStringPtr;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x6B0471D8uLL);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100117E88)
        {
          v21 = qword_100117E88;
        }

        else
        {
          v21 = __stderrp;
        }

        fprintf(v21, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        CFRelease(v15);
      }

      else
      {
        v19 = sub_100035B80();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_1000A3C50();
        }

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
      }

      *__error() = v10;
    }
  }

  close(*(a1 + 52));
  v3[v5] = 0;
  v22 = strnstr(v3, "Spindump analysis written to file ", v5);
  if (!v22)
  {
    v26 = *__error();
    v27 = sub_100035B80();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3EA0();
    }

    *__error() = v26;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v28 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump output doesn't contain output path: %s", v3);
    if (!v29)
    {
      v41 = sub_100035B80();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3F10();
      }

      goto LABEL_65;
    }

    v30 = v29;
    v31 = CFStringGetCStringPtr(v29, 0x8000100u);
    if (!v31)
    {
      v32 = 857051659;
      goto LABEL_70;
    }

    goto LABEL_58;
  }

  v23 = v22 + 34;
  v24 = strnstr(v22 + 34, "\n", &v3[v5] - (v22 + 34));
  if (!v24)
  {
    v33 = *__error();
    v34 = sub_100035B80();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3DC0();
    }

    *__error() = v33;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v28 = *__error();
    v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No newline in spindump output: %s", v3);
    if (!v35)
    {
      v41 = sub_100035B80();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_1000A3E30();
      }

      goto LABEL_65;
    }

    v30 = v35;
    v31 = CFStringGetCStringPtr(v35, 0x8000100u);
    if (!v31)
    {
      v32 = 2251781171;
      goto LABEL_70;
    }

LABEL_58:
    v39 = v31;
    v40 = 0;
LABEL_71:
    if (qword_100117E88)
    {
      v43 = qword_100117E88;
    }

    else
    {
      v43 = __stderrp;
    }

    fprintf(v43, "%s\n", v39);
    if (v40)
    {
      free(v40);
    }

    CFRelease(v30);
LABEL_77:
    *__error() = v28;
LABEL_78:
    v25 = *(*(a1 + 40) + 16);
    goto LABEL_79;
  }

  *v24 = 0;
  if (!sub_100032E5C(v23))
  {
    v36 = *__error();
    v37 = sub_100035B80();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3CE0();
    }

    *__error() = v36;
    if (byte_100117E81 != 1 || dword_100117510 > 4)
    {
      goto LABEL_78;
    }

    v28 = *__error();
    v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump output file doesn't exist: %s", v23);
    if (v38)
    {
      v30 = v38;
      v31 = CFStringGetCStringPtr(v38, 0x8000100u);
      if (v31)
      {
        goto LABEL_58;
      }

      v32 = 1400629759;
LABEL_70:
      v39 = malloc_type_calloc(0x400uLL, 1uLL, v32);
      CFStringGetCString(v30, v39, 1024, 0x8000100u);
      v40 = v39;
      goto LABEL_71;
    }

    v41 = sub_100035B80();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3D50();
    }

LABEL_65:

    if (qword_100117E88)
    {
      v42 = qword_100117E88;
    }

    else
    {
      v42 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v42);
    goto LABEL_77;
  }

  v25 = *(*(a1 + 40) + 16);
LABEL_79:
  v25();
  free(v3);
  dispatch_source_cancel(*(a1 + 32));
}

void sub_100053720(id a1)
{
  v1 = getenv("SPINDUMP_IGNORE_SUSPENSION");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    byte_100117D20 = 1;
  }
}

id sub_100053A2C()
{

  return [v0 bytes_not_microstackshots];
}

id sub_100053A78()
{

  return [v0 bytes_not_microstackshots];
}

_DWORD *sub_100053A9C(int *a1)
{
  v2 = *a1;

  return sub_100035B20(v2);
}

int *sub_100053AB4(uint64_t *a1)
{
  v2 = *a1;

  return __error();
}

BOOL sub_100053ACC()
{
  if (qword_100117D30 != -1)
  {
    sub_1000A4788();
  }

  if (dword_100117514 == -1)
  {
    return 0;
  }

  state64 = 0;
  state = notify_get_state(dword_100117514, &state64);
  if (state)
  {
    v1 = state;
    if (byte_100117E80)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000A479C();
      }

      *__error() = v2;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return 0;
    }

    v15 = *__error();
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to get thermal level: %d", v1);
    if (v16)
    {
      v17 = v16;
      CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
      if (CStringPtr)
      {
        v19 = CStringPtr;
        v20 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(0x400uLL, 1uLL, 0xC6796D2FuLL);
        CFStringGetCString(v17, v19, 1024, 0x8000100u);
        v20 = v19;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v19);
      if (v20)
      {
        free(v20);
      }

      CFRelease(v17);
    }

    else
    {
      v21 = sub_100035B80();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4804();
      }

      if (qword_100117E88)
      {
        v22 = qword_100117E88;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    v24 = __error();
    result = 0;
    *v24 = v15;
  }

  else
  {
    if (byte_100117E80)
    {
      v6 = *__error();
      v7 = sub_100035B80();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A4874(&state64);
      }

      *__error() = v6;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v9 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got thermal level: %lld", state64);
      if (v10)
      {
        v11 = v10;
        v12 = CFStringGetCStringPtr(v10, 0x8000100u);
        if (v12)
        {
          v13 = v12;
          v14 = 0;
        }

        else
        {
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0xB4D01E3uLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v27 = qword_100117E88;
        }

        else
        {
          v27 = __stderrp;
        }

        fprintf(v27, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v25 = sub_100035B80();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1000A48E4(&state64);
        }

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
      }

      *__error() = v9;
    }

    return state64 > 0x1D;
  }

  return result;
}

void sub_100053E8C(id a1)
{
  v1 = notify_register_check(kOSThermalNotificationPressureLevelName, &dword_100117514);
  if (v1)
  {
    v2 = v1;
    if (byte_100117E80 == 1)
    {
      v3 = *__error();
      v4 = sub_100035B80();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4954();
      }

      *__error() = v3;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v6 = *__error();
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for thermal level: %d", v2);
      if (v7)
      {
        v8 = v7;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v10 = CStringPtr;
          v11 = 0;
        }

        else
        {
          v10 = malloc_type_calloc(0x400uLL, 1uLL, 0x75B47620uLL);
          CFStringGetCString(v8, v10, 1024, 0x8000100u);
          v11 = v10;
        }

        if (qword_100117E88)
        {
          v14 = qword_100117E88;
        }

        else
        {
          v14 = __stderrp;
        }

        fprintf(v14, "%s\n", v10);
        if (v11)
        {
          free(v11);
        }

        CFRelease(v8);
      }

      else
      {
        v12 = sub_100035B80();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1000A49BC();
        }

        if (qword_100117E88)
        {
          v13 = qword_100117E88;
        }

        else
        {
          v13 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v13);
      }

      *__error() = v6;
    }

    dword_100117514 = -1;
  }
}

BOOL sub_100054088()
{
  if (qword_100117D38 != -1)
  {
    sub_1000A4A2C();
  }

  if (dword_100117518 == -1)
  {
    return 0;
  }

  state64 = 0;
  state = notify_get_state(dword_100117518, &state64);
  if (state)
  {
    v1 = state;
    if (byte_100117E80)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4A40();
      }

      *__error() = v2;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return 0;
    }

    v15 = *__error();
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"GM check: Failed to get game mode state: %d", v1);
    if (v16)
    {
      v17 = v16;
      CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
      if (CStringPtr)
      {
        v19 = CStringPtr;
        v20 = 0;
      }

      else
      {
        v19 = malloc_type_calloc(0x400uLL, 1uLL, 0x8124F418uLL);
        CFStringGetCString(v17, v19, 1024, 0x8000100u);
        v20 = v19;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v19);
      if (v20)
      {
        free(v20);
      }

      CFRelease(v17);
    }

    else
    {
      v21 = sub_100035B80();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4AA8();
      }

      if (qword_100117E88)
      {
        v22 = qword_100117E88;
      }

      else
      {
        v22 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
    }

    v24 = __error();
    result = 0;
    *v24 = v15;
  }

  else
  {
    if (byte_100117E80)
    {
      v6 = *__error();
      v7 = sub_100035B80();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A4B18(&state64);
      }

      *__error() = v6;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v9 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"GM check: Got game mode: %lld", state64);
      if (v10)
      {
        v11 = v10;
        v12 = CFStringGetCStringPtr(v10, 0x8000100u);
        if (v12)
        {
          v13 = v12;
          v14 = 0;
        }

        else
        {
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0xC71FB3FFuLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v27 = qword_100117E88;
        }

        else
        {
          v27 = __stderrp;
        }

        fprintf(v27, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v25 = sub_100035B80();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4B88(&state64);
        }

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
      }

      *__error() = v9;
    }

    return state64 != 0;
  }

  return result;
}

void sub_100054448(id a1)
{
  v1 = notify_register_check("com.apple.system.console_mode_changed", &dword_100117518);
  if (v1)
  {
    v2 = v1;
    if (byte_100117E80 == 1)
    {
      v3 = *__error();
      v4 = sub_100035B80();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4BF8();
      }

      *__error() = v3;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v6 = *__error();
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for game mode state: %d", v2);
      if (v7)
      {
        v8 = v7;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v10 = CStringPtr;
          v11 = 0;
        }

        else
        {
          v10 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D4DC9A3uLL);
          CFStringGetCString(v8, v10, 1024, 0x8000100u);
          v11 = v10;
        }

        if (qword_100117E88)
        {
          v14 = qword_100117E88;
        }

        else
        {
          v14 = __stderrp;
        }

        fprintf(v14, "%s\n", v10);
        if (v11)
        {
          free(v11);
        }

        CFRelease(v8);
      }

      else
      {
        v12 = sub_100035B80();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4C60();
        }

        if (qword_100117E88)
        {
          v13 = qword_100117E88;
        }

        else
        {
          v13 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v13);
      }

      *__error() = v6;
    }

    dword_100117518 = -1;
  }
}

void sub_100054640(void *a1, uint64_t a2, double a3)
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100054BA4;
  v29[3] = &unk_1001091B0;
  v5 = a1;
  v30 = v5;
  v31 = a2;
  v32 = a3;
  v6 = objc_retainBlock(v29);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("Tasking notification", v7);
  out_token = 0;
  handler = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100055140;
  v26 = &unk_1001091D8;
  v9 = v6;
  v27 = v9;
  v10 = notify_register_dispatch("com.apple.da.tasking_changed", &out_token, v8, &handler);
  if (v10)
  {
    v11 = v10;
    if (byte_100117E80 == 1)
    {
      v12 = *__error();
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4CD0();
      }

      *__error() = v12;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v14 = *__error();
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to register for tasking update notifications: %d", v11, handler, v24, v25, v26);
      if (v15)
      {
        v16 = v15;
        CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
        if (CStringPtr)
        {
          v18 = CStringPtr;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAB0C3DFuLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100117E88)
        {
          v22 = qword_100117E88;
        }

        else
        {
          v22 = __stderrp;
        }

        fprintf(v22, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v20 = sub_100035B80();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4D38();
        }

        if (qword_100117E88)
        {
          v21 = qword_100117E88;
        }

        else
        {
          v21 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v21);
      }

      *__error() = v14;
    }
  }

  v9[2](v9);
}

void sub_10005495C(id a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  byte_100117D40 = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    if (byte_100117E80 == 1)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "apple internal", buf, 2u);
      }

      *__error() = v2;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 1)
    {
      v5 = *__error();
      v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"apple internal");
      if (v6)
      {
        v7 = v6;
        CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
        if (CStringPtr)
        {
          v9 = CStringPtr;
          v10 = 0;
        }

        else
        {
          v9 = malloc_type_calloc(0x400uLL, 1uLL, 0x6EB8F403uLL);
          CFStringGetCString(v7, v9, 1024, 0x8000100u);
          v10 = v9;
        }

        if (qword_100117E88)
        {
          v13 = qword_100117E88;
        }

        else
        {
          v13 = __stderrp;
        }

        fprintf(v13, "%s\n", v9);
        if (v10)
        {
          free(v10);
        }

        CFRelease(v7);
      }

      else
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000A4DA8();
        }

        if (qword_100117E88)
        {
          v12 = qword_100117E88;
        }

        else
        {
          v12 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v12);
      }

      *__error() = v5;
    }
  }
}

void sub_100054BA4(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = OSAGetDATaskingValue();
  if (!v4)
  {
    if (byte_100117E80 == 1)
    {
      v19 = *__error();
      v20 = sub_100035B80();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 48);
        *buf = 138543618;
        v42 = v21;
        v43 = 2048;
        v44 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Tasking setting for %{public}@ not available, using default %.1f", buf, 0x16u);
      }

      *__error() = v19;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_70;
    }

    v24 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@ not available, using default %.1f", *(a1 + 32), *(a1 + 48));
    if (v25)
    {
      v26 = v25;
      CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
      if (CStringPtr)
      {
LABEL_38:
        v33 = CStringPtr;
        v34 = 0;
LABEL_63:
        if (qword_100117E88)
        {
          v40 = qword_100117E88;
        }

        else
        {
          v40 = __stderrp;
        }

        fprintf(v40, "%s\n", v33);
        if (v34)
        {
          free(v34);
        }

        CFRelease(v26);
        goto LABEL_69;
      }

      v28 = 66643145;
LABEL_62:
      v33 = malloc_type_calloc(0x400uLL, 1uLL, v28);
      CFStringGetCString(v26, v33, 1024, 0x8000100u);
      v34 = v33;
      goto LABEL_63;
    }

    v35 = sub_100035B80();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1000A4F6C(v3);
    }

LABEL_49:

    if (qword_100117E88)
    {
      v38 = qword_100117E88;
    }

    else
    {
      v38 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
LABEL_69:
    *__error() = v24;
LABEL_70:
    **(a1 + 40) = *(a1 + 48);
    goto LABEL_71;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (byte_100117E80 == 1)
    {
      v29 = *__error();
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4DE8(v3);
      }

      *__error() = v29;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_70;
    }

    v24 = *__error();
    v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@: %@ isn't a number", *v3, v4);
    if (v32)
    {
      v26 = v32;
      CStringPtr = CFStringGetCStringPtr(v32, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_38;
      }

      v28 = 2786403208;
      goto LABEL_62;
    }

    v35 = sub_100035B80();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1000A4E6C(v3);
    }

    goto LABEL_49;
  }

  [v4 doubleValue];
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  *v6 = v7;
  if (byte_100117E80 == 1)
  {
    v8 = *__error();
    v9 = sub_100035B80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      v11 = **v5;
      *buf = 138543618;
      v42 = v10;
      v43 = 2048;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tasking setting for %{public}@: %.1f", buf, 0x16u);
    }

    *__error() = v8;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v13 = *__error();
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Tasking setting for %@: %.1f", *v3, **v5);
    if (v14)
    {
      v15 = v14;
      v16 = CFStringGetCStringPtr(v14, 0x8000100u);
      if (v16)
      {
        v17 = v16;
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x1265AAC3uLL);
        CFStringGetCString(v15, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100117E88)
      {
        v39 = qword_100117E88;
      }

      else
      {
        v39 = __stderrp;
      }

      fprintf(v39, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      CFRelease(v15);
    }

    else
    {
      v36 = sub_100035B80();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1000A4EE8(v3);
      }

      if (qword_100117E88)
      {
        v37 = qword_100117E88;
      }

      else
      {
        v37 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
    }

    *__error() = v13;
  }

LABEL_71:
}

uint64_t *sub_1000551B8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000551C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1000551FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (byte_100117E80 == 1)
    {
      v4 = *__error();
      v5 = sub_100035B80();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A52F0(a1, v3, v5);
      }

      *__error() = v4;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v7 = *__error();
      v8 = *(a1 + 32);
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got xpc error message in libspindump client [%d] connection: %s", v8, string);
      if (v10)
      {
        v11 = v10;
        CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
        if (CStringPtr)
        {
          v13 = CStringPtr;
          v14 = 0;
        }

        else
        {
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0x28FD7797uLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v17 = qword_100117E88;
        }

        else
        {
          v17 = __stderrp;
        }

        fprintf(v17, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v15 = sub_100035B80();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v18 = *(a1 + 32);
          *buf = 67109378;
          v20 = v18;
          v21 = 2080;
          v22 = xpc_dictionary_get_string(v3, _xpc_error_key_description);
          _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to format: Got xpc error message in libspindump client [%d] connection: %s", buf, 0x12u);
        }

        if (qword_100117E88)
        {
          v16 = qword_100117E88;
        }

        else
        {
          v16 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v16);
      }

      *__error() = v7;
    }
  }

  else if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    sub_1000554B8(*(a1 + 32), *(a1 + 40), v3);
  }
}

void sub_1000554B8(unint64_t a1, int a2, void *a3)
{
  v5 = a3;
  int64 = xpc_dictionary_get_int64(v5, "message");
  v7 = int64;
  if (int64 > 11)
  {
    if (int64 <= 13)
    {
      if (int64 != 12)
      {
        string = xpc_dictionary_get_string(v5, "filename");
        if (string)
        {
          sub_100038AD4(string);
        }

        else
        {
          if (byte_100117E80 == 1)
          {
            v116 = *__error();
            v117 = sub_100035B80();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5710();
            }

            *__error() = v116;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v91 = *__error();
            v119 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting workflow repsonsiveness delay: no tailspin file provided");
            if (!v119)
            {
              v94 = sub_100035B80();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
              {
                sub_1000A5744();
              }

              goto LABEL_338;
            }

            v120 = v119;
            CStringPtr = CFStringGetCStringPtr(v119, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_177;
            }

            v122 = 205573742;
            goto LABEL_277;
          }
        }

        goto LABEL_417;
      }

      v8 = v5;
      v51 = xpc_dictionary_get_int64(v8, "pid");
      if (!v51)
      {
        if (byte_100117E80 == 1)
        {
          v104 = *__error();
          v105 = sub_100035B80();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            sub_1000A58B0();
          }

          *__error() = v104;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting port exhaustion: no pid provided");
        if (!v107)
        {
          v217 = sub_100035B80();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            sub_1000A58E4();
          }

          goto LABEL_393;
        }

        v101 = v107;
        v102 = CFStringGetCStringPtr(v107, 0x8000100u);
        if (v102)
        {
          goto LABEL_213;
        }

        v103 = 1309212622;
        goto LABEL_408;
      }

      uint64 = xpc_dictionary_get_uint64(v8, "flags");
      v53 = xpc_dictionary_get_int64(v8, "num_ports");
      if (!v53)
      {
        if (byte_100117E80 == 1)
        {
          v133 = *__error();
          v134 = sub_100035B80();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5848();
          }

          *__error() = v133;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v135 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting port exhaustion: no num ports provided");
        if (!v135)
        {
          v217 = sub_100035B80();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            sub_1000A587C();
          }

          goto LABEL_393;
        }

        v101 = v135;
        v102 = CFStringGetCStringPtr(v135, 0x8000100u);
        if (v102)
        {
          goto LABEL_213;
        }

        v103 = 3625252573;
        goto LABEL_408;
      }

      v54 = v53;
      v55 = xpc_dictionary_get_int64(v8, "num_ports_limit");
      v56 = xpc_dictionary_get_string(v8, "pname");
      if (v56)
      {
        v29 = [NSString stringWithUTF8String:v56];
      }

      else
      {
        v29 = 0;
      }

      v180 = xpc_dictionary_get_string(v8, "action");
      if (v180)
      {
        v181 = sub_10006E428(v180);
        v182 = [NSString stringWithUTF8String:v181];
        free(v181);
      }

      else
      {
        v182 = 0;
      }

      v185 = xpc_dictionary_copy_mach_send();
      sub_100051484(v51, v29, uint64, v182, v54, v55, v185);
      goto LABEL_275;
    }

    if (int64 == 14)
    {
      v8 = v5;
      v82 = xpc_dictionary_get_int64(v8, "pid");
      if (!v82)
      {
        if (byte_100117E80 == 1)
        {
          v108 = *__error();
          v109 = sub_100035B80();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            sub_1000A57E0();
          }

          *__error() = v108;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting kqworkloop exhaustion: no pid provided");
        if (!v111)
        {
          v217 = sub_100035B80();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5814();
          }

          goto LABEL_393;
        }

        v101 = v111;
        v102 = CFStringGetCStringPtr(v111, 0x8000100u);
        if (v102)
        {
          goto LABEL_213;
        }

        v103 = 1414939624;
        goto LABEL_408;
      }

      v83 = xpc_dictionary_get_uint64(v8, "flags");
      v84 = xpc_dictionary_get_int64(v8, "num_kqworkloops");
      if (!v84)
      {
        if (byte_100117E80 == 1)
        {
          v136 = *__error();
          v137 = sub_100035B80();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5778();
          }

          *__error() = v136;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v138 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting kqworkloop exhaustion: no num kqworkloops provided");
        if (!v138)
        {
          v217 = sub_100035B80();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            sub_1000A57AC();
          }

          goto LABEL_393;
        }

        v101 = v138;
        v102 = CFStringGetCStringPtr(v138, 0x8000100u);
        if (v102)
        {
          goto LABEL_213;
        }

        v103 = 4192653758;
        goto LABEL_408;
      }

      v85 = v84;
      v86 = xpc_dictionary_get_int64(v8, "num_kqworkloops_limit");
      v87 = xpc_dictionary_get_string(v8, "pname");
      if (v87)
      {
        v29 = [NSString stringWithUTF8String:v87];
      }

      else
      {
        v29 = 0;
      }

      v183 = xpc_dictionary_get_string(v8, "action");
      if (v183)
      {
        v184 = sub_10006E428(v183);
        v182 = [NSString stringWithUTF8String:v184];
        free(v184);
      }

      else
      {
        v182 = 0;
      }

      v186 = xpc_dictionary_copy_mach_send();
      sub_10005229C(v82, v29, v83, v182, v85, v86, v186);
      goto LABEL_275;
    }

    if (int64 != 15)
    {
      goto LABEL_76;
    }

    v8 = v5;
    v30 = xpc_dictionary_get_string(v8, "pname");
    if (!v30)
    {
      if (byte_100117E80 == 1)
      {
        v127 = *__error();
        v128 = sub_100035B80();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          sub_1000A56A8();
        }

        *__error() = v127;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_416;
      }

      v99 = *__error();
      v130 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting power exception: no process path provided");
      if (!v130)
      {
        v217 = sub_100035B80();
        if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
        {
          sub_1000A56DC();
        }

        goto LABEL_393;
      }

      v101 = v130;
      v102 = CFStringGetCStringPtr(v130, 0x8000100u);
      if (v102)
      {
        goto LABEL_213;
      }

      v103 = 3494813445;
      goto LABEL_408;
    }

    v14 = [NSString stringWithUTF8String:v30];
    v31 = xpc_dictionary_get_uint64(v8, "flags");
    v32 = xpc_dictionary_get_value(v8, "event_duration");
    v33 = v32;
    if (!v32 || xpc_get_type(v32) != &_xpc_type_double)
    {
      if (byte_100117E80 == 1)
      {
        v34 = *__error();
        v35 = sub_100035B80();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5640();
        }

        *__error() = v34;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_374;
      }

      v36 = *__error();
      v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no event duration provided");
      if (v37)
      {
        v38 = v37;
        v39 = CFStringGetCStringPtr(v37, 0x8000100u);
        if (v39)
        {
LABEL_41:
          v40 = v39;
          v41 = 0;
LABEL_367:
          if (qword_100117E88)
          {
            v222 = qword_100117E88;
          }

          else
          {
            v222 = __stderrp;
          }

          fprintf(v222, "%s\n", v40);
          if (v41)
          {
            free(v41);
          }

          CFRelease(v38);
          goto LABEL_373;
        }

        v216 = 296518957;
LABEL_366:
        v40 = malloc_type_calloc(0x400uLL, 1uLL, v216);
        CFStringGetCString(v38, v40, 1024, 0x8000100u);
        v41 = v40;
        goto LABEL_367;
      }

      v208 = sub_100035B80();
      if (os_log_type_enabled(v208, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5674();
      }

      goto LABEL_300;
    }

    value = xpc_double_get_value(v33);
    if (value <= 0.0)
    {
      if (byte_100117E80 == 1)
      {
        v213 = *__error();
        v214 = sub_100035B80();
        if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
        {
          sub_1000A53A0();
        }

        *__error() = v213;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_374;
      }

      v36 = *__error();
      v215 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad event duration (%f)", *&value);
      if (v215)
      {
        v38 = v215;
        v39 = CFStringGetCStringPtr(v215, 0x8000100u);
        if (v39)
        {
          goto LABEL_41;
        }

        v216 = 2650097191;
        goto LABEL_366;
      }

      v208 = sub_100035B80();
      if (os_log_type_enabled(v208, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5414();
      }

LABEL_300:

      if (qword_100117E88)
      {
        v209 = qword_100117E88;
      }

      else
      {
        v209 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v209);
LABEL_373:
      *__error() = v36;
LABEL_374:

      goto LABEL_375;
    }

    v190 = xpc_dictionary_get_value(v8, "report_duration");

    if (v190 && xpc_get_type(v190) == &_xpc_type_double)
    {
      v233 = xpc_double_get_value(v190);
      if (v233 > 0.0)
      {
        v33 = xpc_dictionary_get_value(v8, "endtime");

        if (v33 && xpc_get_type(v33) == &_xpc_type_double)
        {
          v263 = xpc_double_get_value(v33);
          v264 = xpc_dictionary_get_string(v8, "issue_type");
          if (v264)
          {
            v265 = sub_10006E428(v264);
            v303 = [NSString stringWithUTF8String:v265];
            free(v265);
          }

          else
          {
            v303 = 0;
          }

          v268 = xpc_dictionary_get_string(v8, "mitigation_reason");
          if (v268)
          {
            v269 = sub_10006E428(v268);
            v270 = [NSString stringWithUTF8String:v269];
            free(v269);
          }

          else
          {
            v270 = 0;
          }

          v271 = xpc_dictionary_get_string(v8, "action");
          if (v271)
          {
            v272 = sub_10006E428(v271);
            v273 = [NSString stringWithUTF8String:v272];
            free(v272);
          }

          else
          {
            v273 = 0;
          }

          v274 = v5;
          v275 = xpc_dictionary_get_string(v8, "detector");
          if (v275)
          {
            v276 = sub_10006E428(v275);
            v277 = [NSString stringWithUTF8String:v276];
            free(v276);
          }

          else
          {
            v277 = 0;
          }

          sub_10004EDA4(v14, v31, v303, v270, v273, v277, value, v233, v263);

          v5 = v274;
          goto LABEL_374;
        }

        if (byte_100117E80 == 1)
        {
          v234 = *__error();
          v235 = sub_100035B80();
          if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5570();
          }

          *__error() = v234;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_374;
        }

        v36 = *__error();
        v236 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no endtime provided");
        if (v236)
        {
          v38 = v236;
          v39 = CFStringGetCStringPtr(v236, 0x8000100u);
          if (v39)
          {
            goto LABEL_41;
          }

          v216 = 2667326876;
          goto LABEL_366;
        }

        v208 = sub_100035B80();
        if (os_log_type_enabled(v208, OS_LOG_TYPE_FAULT))
        {
          sub_1000A55A4();
        }

        goto LABEL_300;
      }

      if (byte_100117E80 == 1)
      {
        v248 = *__error();
        v249 = sub_100035B80();
        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5488();
        }

        *__error() = v248;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
LABEL_494:
        v33 = v190;
        goto LABEL_374;
      }

      v193 = *__error();
      v250 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad report duration (%f)", *&v233);
      if (v250)
      {
        v195 = v250;
        v196 = CFStringGetCStringPtr(v250, 0x8000100u);
        if (v196)
        {
          goto LABEL_272;
        }

        v251 = 2351073578;
        goto LABEL_486;
      }

      v243 = sub_100035B80();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_FAULT))
      {
        sub_1000A54FC();
      }
    }

    else
    {
      if (byte_100117E80 == 1)
      {
        v191 = *__error();
        v192 = sub_100035B80();
        if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
        {
          sub_1000A55D8();
        }

        *__error() = v191;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_494;
      }

      v193 = *__error();
      v194 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no report duration provided");
      if (v194)
      {
        v195 = v194;
        v196 = CFStringGetCStringPtr(v194, 0x8000100u);
        if (v196)
        {
LABEL_272:
          v197 = v196;
          v198 = 0;
LABEL_487:
          if (qword_100117E88)
          {
            v252 = qword_100117E88;
          }

          else
          {
            v252 = __stderrp;
          }

          fprintf(v252, "%s\n", v197);
          if (v198)
          {
            free(v198);
          }

          CFRelease(v195);
          goto LABEL_493;
        }

        v251 = 174832231;
LABEL_486:
        v197 = malloc_type_calloc(0x400uLL, 1uLL, v251);
        CFStringGetCString(v195, v197, 1024, 0x8000100u);
        v198 = v197;
        goto LABEL_487;
      }

      v243 = sub_100035B80();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_FAULT))
      {
        sub_1000A560C();
      }
    }

    if (qword_100117E88)
    {
      v244 = qword_100117E88;
    }

    else
    {
      v244 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v244);
LABEL_493:
    *__error() = v193;
    goto LABEL_494;
  }

  if (int64 > 8)
  {
    if (int64 != 9)
    {
      if (int64 != 11)
      {
        goto LABEL_76;
      }

      v8 = v5;
      v23 = xpc_dictionary_get_int64(v8, "pid");
      if (!v23)
      {
        if (byte_100117E80 == 1)
        {
          v123 = *__error();
          v124 = sub_100035B80();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5980();
          }

          *__error() = v123;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v126 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting fd exhaustion: no pid provided");
        if (!v126)
        {
          v217 = sub_100035B80();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
          {
            sub_1000A59B4();
          }

          goto LABEL_393;
        }

        v101 = v126;
        v102 = CFStringGetCStringPtr(v126, 0x8000100u);
        if (v102)
        {
          goto LABEL_213;
        }

        v103 = 3024766766;
        goto LABEL_408;
      }

      v24 = xpc_dictionary_get_uint64(v8, "flags");
      v25 = xpc_dictionary_get_int64(v8, "num_fds");
      if (!v25)
      {
        if (byte_100117E80 == 1)
        {
          v142 = *__error();
          v143 = sub_100035B80();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5918();
          }

          *__error() = v142;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_416;
        }

        v99 = *__error();
        v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting fd exhaustion: no num fds provided");
        if (v144)
        {
          v101 = v144;
          v102 = CFStringGetCStringPtr(v144, 0x8000100u);
          if (!v102)
          {
            v103 = 2030710553;
            goto LABEL_408;
          }

          goto LABEL_213;
        }

        v217 = sub_100035B80();
        if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
        {
          sub_1000A594C();
        }

LABEL_393:

        if (qword_100117E88)
        {
          v226 = qword_100117E88;
        }

        else
        {
          v226 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v226);
LABEL_415:
        *__error() = v99;
        goto LABEL_416;
      }

      v26 = v25;
      v27 = xpc_dictionary_get_int64(v8, "num_fds_limit");
      v28 = xpc_dictionary_get_string(v8, "pname");
      if (v28)
      {
        v29 = [NSString stringWithUTF8String:v28];
      }

      else
      {
        v29 = 0;
      }

      v187 = xpc_dictionary_get_string(v8, "action");
      if (v187)
      {
        v188 = sub_10006E428(v187);
        v182 = [NSString stringWithUTF8String:v188];
        free(v188);
      }

      else
      {
        v182 = 0;
      }

      v199 = xpc_dictionary_copy_mach_send();
      sub_10005066C(v23, v29, v24, v182, v26, v27, v199);
LABEL_275:

LABEL_416:
      goto LABEL_417;
    }

    v8 = v5;
    v57 = xpc_dictionary_get_BOOL(v8, "callback");
    if (v57)
    {
      v58 = xpc_dictionary_get_remote_connection(v8);
      if (!v58)
      {
        sub_1000A66D8(0, v59, v60, v61, v62, v63, v64, v65);
      }

      v66 = v58;
      reply = xpc_dictionary_create_reply(v8);
      if (!reply)
      {
        sub_1000A64E8(0, v68, v69, v70, v71, v72, v73, v74);
      }

      v75 = reply;
      if ((a2 & 1) == 0)
      {
LABEL_62:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v147 = *__error();
            v148 = sub_100035B80();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6368();
            }

            *__error() = v147;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_404;
          }

          v78 = *__error();
          v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attemping to generate spindump, but not entitled");
          if (!v80)
          {
            v81 = sub_100035B80();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
            {
              sub_1000A639C();
            }

            goto LABEL_399;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v76 = *__error();
            v77 = sub_100035B80();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              sub_1000A63D0(a1, v77);
            }

            *__error() = v76;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_404;
          }

          v78 = *__error();
          v79 = sub_100035B20(a1);
          v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attemping to generate spindump, but not entitled", v79, a1);
          if (!v80)
          {
            v81 = sub_100035B80();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
            {
              sub_1000A6460(a1);
            }

LABEL_399:

            if (qword_100117E88)
            {
              v227 = qword_100117E88;
            }

            else
            {
              v227 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v227);
LABEL_403:
            *__error() = v78;
LABEL_404:
            if (v57)
            {
              xpc_dictionary_set_int64(v75, "errno", 1);
              xpc_connection_send_message(v66, v75);
            }

LABEL_406:

            goto LABEL_416;
          }
        }

        v149 = v80;
        v150 = v75;
        v151 = CFStringGetCStringPtr(v80, 0x8000100u);
        if (v151)
        {
          v152 = v151;
          v153 = 0;
        }

        else
        {
          v152 = malloc_type_calloc(0x400uLL, 1uLL, 0xAE4ED5FCuLL);
          CFStringGetCString(v149, v152, 1024, 0x8000100u);
          v153 = v152;
        }

        if (qword_100117E88)
        {
          v219 = qword_100117E88;
        }

        else
        {
          v219 = __stderrp;
        }

        fprintf(v219, "%s\n", v152);
        if (v153)
        {
          free(v153);
        }

        CFRelease(v149);
        v75 = v150;
        goto LABEL_403;
      }
    }

    else
    {
      v75 = 0;
      v66 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v95 = xpc_dictionary_get_value(v8, "pid");

    if (v95)
    {
      v301 = xpc_dictionary_get_int64(v8, "pid");
    }

    else
    {
      v301 = 0xFFFFFFFFLL;
    }

    v299 = v5;
    v300 = xpc_dictionary_get_int64(v8, "tid");
    v154 = xpc_dictionary_get_value(v8, "duration");
    v155 = v154;
    v156 = 0.0;
    v157 = 0.0;
    if (v154 && xpc_get_type(v154) == &_xpc_type_double)
    {
      v157 = xpc_double_get_value(v155);
    }

    v158 = xpc_dictionary_get_value(v8, "interval");

    v302 = v75;
    if (v158 && xpc_get_type(v158) == &_xpc_type_double)
    {
      v156 = xpc_double_get_value(v158);
    }

    v159 = xpc_dictionary_get_uint64(v8, "flags");
    v160 = xpc_dictionary_get_string(v8, "reason");
    v161 = xpc_dictionary_get_string(v8, "signature");
    v162 = xpc_dictionary_get_string(v8, "filename");
    if (v57)
    {
      v163 = sub_1000359B8("Pending reply for spindump request from [%d] for app [%d] thread %#llx", a1, v301, v300);
      v304[0] = _NSConcreteStackBlock;
      v304[1] = 3221225472;
      v304[2] = sub_100058620;
      v304[3] = &unk_100109248;
      v305 = v302;
      v306 = v66;
      v307 = v163;
      v298 = v158;
      v164 = v162;
      v165 = v160;
      v166 = v159;
      v167 = a2;
      v168 = v66;
      v169 = v163;
      v170 = objc_retainBlock(v304);

      v66 = v168;
      a2 = v167;
      v159 = v166;
      v160 = v165;
      v162 = v164;
      v158 = v298;
    }

    else
    {
      v170 = 0;
    }

    if (v161)
    {
      v161 = sub_10006E428(v161);
    }

    sub_100046324(a1, a2, v301, v300, v159, v160, v161, v162, v157, v156, v170);
    free(v161);

    v5 = v299;
    v75 = v302;
    goto LABEL_406;
  }

  if (int64 == 3)
  {
    v8 = v5;
    v42 = xpc_dictionary_get_int64(v8, "pid");
    if (v42)
    {
      v43 = xpc_dictionary_get_uint64(v8, "tid");
      v44 = xpc_dictionary_get_uint64(v8, "flags");
      v45 = xpc_dictionary_get_value(v8, "cpu");
      v14 = v45;
      if (!v45 || xpc_get_type(v45) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v46 = *__error();
          v47 = sub_100035B80();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_1000A6298();
          }

          *__error() = v46;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v17 = *__error();
        v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no cpu_used provided");
        if (v48)
        {
          v19 = v48;
          v20 = CFStringGetCStringPtr(v48, 0x8000100u);
          if (!v20)
          {
            v21 = 2869025052;
            goto LABEL_351;
          }

          goto LABEL_53;
        }

        v207 = sub_100035B80();
        if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
        {
          sub_1000A62CC();
        }

        goto LABEL_360;
      }

      v171 = xpc_double_get_value(v14);
      if (v171 <= 0.0)
      {
        if (byte_100117E80 == 1)
        {
          v210 = *__error();
          v211 = sub_100035B80();
          if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5DC0();
          }

          *__error() = v210;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v17 = *__error();
        v212 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad cpu_used (%f)", *&v171);
        if (v212)
        {
          v19 = v212;
          v20 = CFStringGetCStringPtr(v212, 0x8000100u);
          if (!v20)
          {
            v21 = 879454041;
            goto LABEL_351;
          }

LABEL_53:
          v49 = v20;
          v50 = 0;
LABEL_352:
          if (qword_100117E88)
          {
            v220 = qword_100117E88;
          }

          else
          {
            v220 = __stderrp;
          }

          fprintf(v220, "%s\n", v49);
          if (v50)
          {
            free(v50);
          }

          CFRelease(v19);
LABEL_364:
          *__error() = v17;
LABEL_375:

          goto LABEL_416;
        }

        v207 = sub_100035B80();
        if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5E34();
        }

LABEL_360:

        if (qword_100117E88)
        {
          v221 = qword_100117E88;
        }

        else
        {
          v221 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v221);
        goto LABEL_364;
      }

      v172 = xpc_dictionary_get_value(v8, "duration");

      if (!v172 || xpc_get_type(v172) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v173 = *__error();
          v174 = sub_100035B80();
          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            sub_1000A6230();
          }

          *__error() = v173;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v175 = *__error();
        v176 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no duration provided");
        if (v176)
        {
          v177 = v176;
          v178 = CFStringGetCStringPtr(v176, 0x8000100u);
          if (v178)
          {
LABEL_295:
            v205 = v178;
            v206 = 0;
LABEL_503:
            if (qword_100117E88)
            {
              v254 = qword_100117E88;
            }

            else
            {
              v254 = __stderrp;
            }

            fprintf(v254, "%s\n", v205);
            if (v206)
            {
              free(v206);
            }

            CFRelease(v177);
            goto LABEL_509;
          }

          v179 = 3490618488;
LABEL_502:
          v205 = malloc_type_calloc(0x400uLL, 1uLL, v179);
          CFStringGetCString(v177, v205, 1024, 0x8000100u);
          v206 = v205;
          goto LABEL_503;
        }

        v242 = sub_100035B80();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6264();
        }

LABEL_497:

        if (qword_100117E88)
        {
          v253 = qword_100117E88;
        }

        else
        {
          v253 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v253);
LABEL_509:
        *__error() = v175;
        goto LABEL_510;
      }

      v229 = xpc_double_get_value(v172);
      if (v229 <= 0.0)
      {
        if (byte_100117E80 == 1)
        {
          v245 = *__error();
          v246 = sub_100035B80();
          if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5EA8();
          }

          *__error() = v245;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v175 = *__error();
        v247 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad duration (%f)", *&v229);
        if (v247)
        {
          v177 = v247;
          v178 = CFStringGetCStringPtr(v247, 0x8000100u);
          if (v178)
          {
            goto LABEL_295;
          }

          v179 = 2560272515;
          goto LABEL_502;
        }

        v242 = sub_100035B80();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5F1C();
        }

        goto LABEL_497;
      }

      v14 = xpc_dictionary_get_value(v8, "endtime");

      if (!v14 || xpc_get_type(v14) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v230 = *__error();
          v231 = sub_100035B80();
          if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5570();
          }

          *__error() = v230;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_375;
        }

        v17 = *__error();
        v232 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no endtime provided");
        if (v232)
        {
          v19 = v232;
          v20 = CFStringGetCStringPtr(v232, 0x8000100u);
          if (!v20)
          {
            v21 = 281607601;
            goto LABEL_351;
          }

          goto LABEL_53;
        }

        v207 = sub_100035B80();
        if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
        {
          sub_1000A55A4();
        }

        goto LABEL_360;
      }

      v259 = xpc_double_get_value(v14);
      v172 = xpc_dictionary_get_value(v8, "cpu_limit");

      if (!v172 || xpc_get_type(v172) != &_xpc_type_double)
      {
        if (byte_100117E80 == 1)
        {
          v260 = *__error();
          v261 = sub_100035B80();
          if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
          {
            sub_1000A61C8();
          }

          *__error() = v260;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_510;
        }

        v175 = *__error();
        v262 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no cpu_used_limit provided");
        if (v262)
        {
          v177 = v262;
          v178 = CFStringGetCStringPtr(v262, 0x8000100u);
          if (v178)
          {
            goto LABEL_295;
          }

          v179 = 4138495615;
          goto LABEL_502;
        }

        v242 = sub_100035B80();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
        {
          sub_1000A61FC();
        }

        goto LABEL_497;
      }

      v278 = xpc_double_get_value(v172);
      if (v278 >= 0.0)
      {
        v14 = xpc_dictionary_get_value(v8, "duration_limit");

        if (v14 && xpc_get_type(v14) == &_xpc_type_double)
        {
          v289 = xpc_double_get_value(v14);
          if (v289 >= 0.0)
          {
            v293 = xpc_dictionary_get_string(v8, "pname");
            if (v293)
            {
              v294 = [NSString stringWithUTF8String:v293];
            }

            else
            {
              v294 = 0;
            }

            v295 = xpc_dictionary_get_string(v8, "action");
            if (v295)
            {
              v296 = sub_10006E428(v295);
              v297 = [NSString stringWithUTF8String:v296];
              free(v296);
            }

            else
            {
              v297 = 0;
            }

            sub_10002B968(v42, v294, v43, v44, v297, v171, v229, v259, v278, v289);

            goto LABEL_375;
          }

          if (byte_100117E80 == 1)
          {
            v290 = *__error();
            v291 = sub_100035B80();
            if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5F90();
            }

            *__error() = v290;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v17 = *__error();
          v292 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad duration_limit (%f)", *&v289);
          if (v292)
          {
            v19 = v292;
            v20 = CFStringGetCStringPtr(v292, 0x8000100u);
            if (!v20)
            {
              v21 = 1054951101;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v207 = sub_100035B80();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000A6004();
          }
        }

        else
        {
          if (byte_100117E80 == 1)
          {
            v286 = *__error();
            v287 = sub_100035B80();
            if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6078();
            }

            *__error() = v286;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v17 = *__error();
          v288 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no duration_limit provided");
          if (v288)
          {
            v19 = v288;
            v20 = CFStringGetCStringPtr(v288, 0x8000100u);
            if (!v20)
            {
              v21 = 575563346;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v207 = sub_100035B80();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000A60AC();
          }
        }

        goto LABEL_360;
      }

      if (byte_100117E80 == 1)
      {
        v279 = *__error();
        v280 = sub_100035B80();
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          sub_1000A60E0();
        }

        *__error() = v279;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v175 = *__error();
        v281 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: bad cpu_used_limit (%f)", *&v278);
        if (v281)
        {
          v177 = v281;
          v178 = CFStringGetCStringPtr(v281, 0x8000100u);
          if (v178)
          {
            goto LABEL_295;
          }

          v179 = 2657014689;
          goto LABEL_502;
        }

        v242 = sub_100035B80();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6154();
        }

        goto LABEL_497;
      }

LABEL_510:
      v14 = v172;
      goto LABEL_375;
    }

    if (byte_100117E80 == 1)
    {
      v96 = *__error();
      v97 = sub_100035B80();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6300();
      }

      *__error() = v96;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_416;
    }

    v99 = *__error();
    v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting CPU resource: no pid provided");
    if (!v100)
    {
      v217 = sub_100035B80();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
      {
        sub_1000A6334();
      }

      goto LABEL_393;
    }

    v101 = v100;
    v102 = CFStringGetCStringPtr(v100, 0x8000100u);
    if (v102)
    {
      goto LABEL_213;
    }

    v103 = 881578776;
    goto LABEL_408;
  }

  if (int64 == 5)
  {
    v8 = v5;
    v9 = xpc_dictionary_get_int64(v8, "pid");
    if (v9)
    {
      v10 = xpc_dictionary_get_uint64(v8, "flags");
      v11 = xpc_dictionary_get_int64(v8, "io");
      if (v11)
      {
        v12 = v11;
        v13 = xpc_dictionary_get_value(v8, "duration");
        v14 = v13;
        if (!v13 || xpc_get_type(v13) != &_xpc_type_double)
        {
          if (byte_100117E80 == 1)
          {
            v15 = *__error();
            v16 = sub_100035B80();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_1000A5C88();
            }

            *__error() = v15;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v17 = *__error();
          v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no duration provided");
          if (v18)
          {
            v19 = v18;
            v20 = CFStringGetCStringPtr(v18, 0x8000100u);
            if (!v20)
            {
              v21 = 1633168679;
LABEL_351:
              v49 = malloc_type_calloc(0x400uLL, 1uLL, v21);
              CFStringGetCString(v19, v49, 1024, 0x8000100u);
              v50 = v49;
              goto LABEL_352;
            }

            goto LABEL_53;
          }

          v207 = sub_100035B80();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5CBC();
          }

          goto LABEL_360;
        }

        v201 = xpc_double_get_value(v14);
        if (v201 <= 0.0)
        {
          if (byte_100117E80 == 1)
          {
            v223 = *__error();
            v224 = sub_100035B80();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              sub_1000A59E8();
            }

            *__error() = v223;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_375;
          }

          v17 = *__error();
          v225 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: bad duration (%f)", *&v201);
          if (v225)
          {
            v19 = v225;
            v20 = CFStringGetCStringPtr(v225, 0x8000100u);
            if (!v20)
            {
              v21 = 3732300095;
              goto LABEL_351;
            }

            goto LABEL_53;
          }

          v207 = sub_100035B80();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5A5C();
          }

          goto LABEL_360;
        }

        v172 = xpc_dictionary_get_value(v8, "endtime");

        if (v172 && xpc_get_type(v172) == &_xpc_type_double)
        {
          v237 = xpc_double_get_value(v172);
          v238 = xpc_dictionary_get_int64(v8, "io_limit");
          v14 = xpc_dictionary_get_value(v8, "duration_limit");

          if (v14 && xpc_get_type(v14) == &_xpc_type_double)
          {
            v255 = xpc_double_get_value(v14);
            if (v255 >= 0.0)
            {
              v266 = xpc_dictionary_get_string(v8, "pname");
              if (v266)
              {
                v267 = [NSString stringWithUTF8String:v266];
              }

              else
              {
                v267 = 0;
              }

              v282 = v5;
              v283 = xpc_dictionary_get_string(v8, "action");
              if (v283)
              {
                v284 = sub_10006E428(v283);
                v285 = [NSString stringWithUTF8String:v284];
                free(v284);
              }

              else
              {
                v285 = 0;
              }

              sub_10004CA48(v9, v267, v10, v285, v12, v238, v201, v237, v255);

              v5 = v282;
              goto LABEL_375;
            }

            if (byte_100117E80 == 1)
            {
              v256 = *__error();
              v257 = sub_100035B80();
              if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
              {
                sub_1000A5AD0();
              }

              *__error() = v256;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 3)
            {
              goto LABEL_375;
            }

            v17 = *__error();
            v258 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: bad duration_limit (%f)", *&v255);
            if (v258)
            {
              v19 = v258;
              v20 = CFStringGetCStringPtr(v258, 0x8000100u);
              if (!v20)
              {
                v21 = 2088996285;
                goto LABEL_351;
              }

              goto LABEL_53;
            }

            v207 = sub_100035B80();
            if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
            {
              sub_1000A5B44();
            }
          }

          else
          {
            if (byte_100117E80 == 1)
            {
              v239 = *__error();
              v240 = sub_100035B80();
              if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
              {
                sub_1000A5BB8();
              }

              *__error() = v239;
            }

            if (byte_100117E81 != 1 || dword_100117510 > 3)
            {
              goto LABEL_375;
            }

            v17 = *__error();
            v241 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no duration_limit provided");
            if (v241)
            {
              v19 = v241;
              v20 = CFStringGetCStringPtr(v241, 0x8000100u);
              if (!v20)
              {
                v21 = 3050175089;
                goto LABEL_351;
              }

              goto LABEL_53;
            }

            v207 = sub_100035B80();
            if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
            {
              sub_1000A5BEC();
            }
          }

          goto LABEL_360;
        }

        if (byte_100117E80 == 1)
        {
          v202 = *__error();
          v203 = sub_100035B80();
          if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
          {
            sub_1000A5C20();
          }

          *__error() = v202;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v175 = *__error();
          v204 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no endtime provided");
          if (v204)
          {
            v177 = v204;
            v178 = CFStringGetCStringPtr(v204, 0x8000100u);
            if (v178)
            {
              goto LABEL_295;
            }

            v179 = 2064060422;
            goto LABEL_502;
          }

          v242 = sub_100035B80();
          if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
          {
            sub_1000A5C54();
          }

          goto LABEL_497;
        }

        goto LABEL_510;
      }

      if (byte_100117E80 == 1)
      {
        v139 = *__error();
        v140 = sub_100035B80();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5CF0();
        }

        *__error() = v139;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_416;
      }

      v99 = *__error();
      v141 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no num bytes provided");
      if (v141)
      {
        v101 = v141;
        v102 = CFStringGetCStringPtr(v141, 0x8000100u);
        if (!v102)
        {
          v103 = 813721682;
          goto LABEL_408;
        }

LABEL_213:
        v145 = v102;
        v146 = 0;
LABEL_409:
        if (qword_100117E88)
        {
          v228 = qword_100117E88;
        }

        else
        {
          v228 = __stderrp;
        }

        fprintf(v228, "%s\n", v145);
        if (v146)
        {
          free(v146);
        }

        CFRelease(v101);
        goto LABEL_415;
      }

      v217 = sub_100035B80();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5D24();
      }

      goto LABEL_393;
    }

    if (byte_100117E80 == 1)
    {
      v112 = *__error();
      v113 = sub_100035B80();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5D58();
      }

      *__error() = v112;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_416;
    }

    v99 = *__error();
    v115 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error reporting disk writes resource: no pid provided");
    if (!v115)
    {
      v217 = sub_100035B80();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5D8C();
      }

      goto LABEL_393;
    }

    v101 = v115;
    v102 = CFStringGetCStringPtr(v115, 0x8000100u);
    if (v102)
    {
      goto LABEL_213;
    }

    v103 = 3627566094;
LABEL_408:
    v145 = malloc_type_calloc(0x400uLL, 1uLL, v103);
    CFStringGetCString(v101, v145, 1024, 0x8000100u);
    v146 = v145;
    goto LABEL_409;
  }

LABEL_76:
  v88 = *__error();
  v89 = sub_100035B80();
  v90 = os_log_type_enabled(v89, OS_LOG_TYPE_FAULT);
  if ((a1 & 0x80000000) != 0)
  {
    if (v90)
    {
      sub_1000A68C8();
    }

    *__error() = v88;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v91 = *__error();
      v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unknown message to libspindump (%lld)", v7);
      if (!v93)
      {
        v94 = sub_100035B80();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6938();
        }

        goto LABEL_338;
      }

      goto LABEL_176;
    }
  }

  else
  {
    if (v90)
    {
      sub_1000A69A8(a1);
    }

    *__error() = v88;
    if (byte_100117E81 == 1 && dword_100117510 <= 4)
    {
      v91 = *__error();
      v92 = sub_100035B20(a1);
      v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unknown message to libspindump (%lld)", v92, a1, v7);
      if (!v93)
      {
        v94 = sub_100035B80();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6A3C(a1);
        }

LABEL_338:

        if (qword_100117E88)
        {
          v218 = qword_100117E88;
        }

        else
        {
          v218 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v218);
LABEL_342:
        *__error() = v91;
        goto LABEL_417;
      }

LABEL_176:
      v120 = v93;
      CStringPtr = CFStringGetCStringPtr(v93, 0x8000100u);
      if (CStringPtr)
      {
LABEL_177:
        v131 = CStringPtr;
        v132 = 0;
LABEL_278:
        if (qword_100117E88)
        {
          v200 = qword_100117E88;
        }

        else
        {
          v200 = __stderrp;
        }

        fprintf(v200, "%s\n", v131);
        if (v132)
        {
          free(v132);
        }

        CFRelease(v120);
        goto LABEL_342;
      }

      v122 = 2001167343;
LABEL_277:
      v131 = malloc_type_calloc(0x400uLL, 1uLL, v122);
      CFStringGetCString(v120, v131, 1024, 0x8000100u);
      v132 = v131;
      goto LABEL_278;
    }
  }

LABEL_417:
}