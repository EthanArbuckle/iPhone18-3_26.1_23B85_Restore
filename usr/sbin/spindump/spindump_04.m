id sub_100068ABC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = sub_100068B38(v4, v3);

  return v5;
}

id sub_100068B38(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100068BA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = sub_100068B38(v4, v3);

  return v5;
}

_BYTE *sub_100068C20(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100068C48(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void sub_100068C64(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_100068C94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_100068CBC@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

const char *sub_100068CCC(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_100068CE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

void sub_100068D08(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v15 = a3;
  v16 = a5;
  v17 = a9;
  v18 = sub_1000359B8("Resource exhaustion for [%d]", a2);
  v19 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068E6C;
  block[3] = &unk_100109720;
  v34 = a2;
  v35 = a8;
  v30 = a1;
  v31 = a4;
  v26 = v15;
  v27 = v16;
  v32 = a6;
  v33 = a7;
  v28 = v18;
  v29 = v17;
  v20 = v18;
  v21 = v16;
  v22 = v15;
  v23 = v17;
  dispatch_async(v19, block);
}

void sub_100068E6C(uint64_t a1)
{
  sub_100077B84();
  v2 = time(0);
  v3 = +[NSMutableString string];
  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v221 = 0;
  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v217 = 0;
  if (byte_100117E94 & 2) != 0 && (sub_10002B3E4())
  {
    v4 = 0;
  }

  else
  {
    v5 = stackshot_config_create();
    stackshot_config_set_flags();
    v6 = [NSNumber numberWithInt:*(a1 + 96)];
    v7 = [NSMutableSet setWithObject:v6];
    v4 = sub_10008866C(v5, v7);

    stackshot_config_dealloc();
  }

  v8 = (a1 + 96);
  __snprintf_chk(v238, 8uLL, 0, 8uLL, "%d", *(a1 + 96));
  v9 = *(a1 + 64);
  if ((v9 - 1) > 1)
  {
LABEL_56:
    if ((v9 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_180:
      v120 = *(a1 + 100);
      if (v120 + 1 >= 2)
      {
        sub_10006B0A4(*(a1 + 64), *(a1 + 96), v120);
      }

      v121 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006BC34;
      block[3] = &unk_1001096F8;
      v200 = *(a1 + 64);
      v201 = v2;
      v194 = *(a1 + 32);
      v203 = *(a1 + 96);
      v199 = *(a1 + 56);
      v195 = v4;
      v196 = *(a1 + 40);
      v202 = *(a1 + 80);
      v197 = v3;
      v198 = *(a1 + 48);
      dispatch_async(v121, block);

      goto LABEL_301;
    }

    [v3 appendFormat:@"lsof -n -M -P -T -w +c 0 -s +fg +L -p %d\n", *v8];
    *buf = "/usr/sbin/lsof";
    *&buf[8] = "-n";
    *&buf[16] = "-M";
    *&v228 = "-P";
    *(&v228 + 1) = "-T";
    v229 = "-w";
    v230 = "+c";
    v231 = "0";
    v232 = "-s";
    v233 = "+fg";
    v234 = "+L";
    v235 = "-p";
    v236 = v238;
    v237 = 0;
    v208 = -1;
    v209 = -1;
    LOBYTE(v188) = 0;
    v187 = &v208;
    v46 = SASpawnPlatformBinaryWithSigningIdentifier();
    if ((v46 & 0x80000000) == 0)
    {
      v47 = dispatch_semaphore_create(0);
      v49 = v208;
      v48 = v209;
      v204[0] = _NSConcreteStackBlock;
      v204[1] = 3221225472;
      v204[2] = sub_10006B8D4;
      v204[3] = &unk_1001096D0;
      v206 = &v214;
      v207 = *v8;
      v50 = v47;
      v205 = v50;
      sub_100058738(v46, v48, v49, 60, 0x1000000, v3, v204);
      dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_179;
    }

    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v81 = *__error();
        v82 = sub_100035B80();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = *__error();
          v84 = __error();
          strerror(*v84);
          sub_1000B02E4();
        }

        *__error() = v81;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_178;
      }

      v64 = *__error();
      v85 = *__error();
      v86 = __error();
      v87 = strerror(*v86);
      v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn lsof: %d (%s)", v85, v87, 0);
      v71 = v88;
      if (v88)
      {
        CStringPtr = CFStringGetCStringPtr(v88, 0x8000100u);
        if (CStringPtr)
        {
          v90 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xB7395A02uLL);
          CFStringGetCString(v71, CStringPtr, 1024, 0x8000100u);
          v90 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v117 = qword_100117E88;
        }

        else
        {
          v117 = __stderrp;
        }

        fprintf(v117, "%s\n", CStringPtr);
        if (v90)
        {
          free(v90);
        }

        goto LABEL_176;
      }

      v110 = sub_100035B80();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        v111 = *__error();
        v112 = __error();
        strerror(*v112);
        sub_1000B031C();
      }

      if (qword_100117E88)
      {
        v103 = qword_100117E88;
      }

      else
      {
        v103 = __stderrp;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v62 = *__error();
        v63 = sub_100035B80();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v190 = sub_100035B20(*v8);
          v174 = *v8;
          v175 = *__error();
          v176 = __error();
          v177 = strerror(*v176);
          *v224 = 136446978;
          *&v224[4] = v190;
          *&v224[12] = 1024;
          *&v224[14] = v174;
          *&v224[18] = 1024;
          *&v224[20] = v175;
          v225 = 2080;
          v226 = v177;
          _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn lsof: %d (%s)", v224, 0x22u);
        }

        *__error() = v62;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_178;
      }

      v64 = *__error();
      v65 = sub_100035B20(*v8);
      v66 = *v8;
      v67 = *__error();
      v68 = __error();
      v69 = strerror(*v68);
      v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn lsof: %d (%s)", v65, v66, v67, v69);
      v71 = v70;
      if (v70)
      {
        v72 = CFStringGetCStringPtr(v70, 0x8000100u);
        if (v72)
        {
          v73 = 0;
        }

        else
        {
          v72 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7395A02uLL);
          CFStringGetCString(v71, v72, 1024, 0x8000100u);
          v73 = v72;
        }

        if (qword_100117E88)
        {
          v109 = qword_100117E88;
        }

        else
        {
          v109 = __stderrp;
        }

        fprintf(v109, "%s\n", v72);
        if (v73)
        {
          free(v73);
        }

LABEL_176:
        CFRelease(v71);
        goto LABEL_177;
      }

      v102 = sub_100035B80();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        v192 = sub_100035B20(*v8);
        v182 = *v8;
        v183 = *__error();
        v184 = __error();
        v185 = strerror(*v184);
        *v224 = 136315906;
        *&v224[4] = v192;
        *&v224[12] = 1024;
        *&v224[14] = v182;
        *&v224[18] = 1024;
        *&v224[20] = v183;
        v225 = 2080;
        v226 = v185;
        _os_log_fault_impl(&_mh_execute_header, v102, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to spawn lsof: %d (%s)", v224, 0x22u);
      }

      if (qword_100117E88)
      {
        v103 = qword_100117E88;
      }

      else
      {
        v103 = __stderrp;
      }
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
LABEL_177:
    *__error() = v64;
LABEL_178:
    v118 = *__error();
    v119 = __error();
    [v3 appendFormat:@"Unable to spawn lsof: %d (%s)\n\n", v118, strerror(*v119)];
LABEL_179:
    if (v215[3])
    {
      goto LABEL_180;
    }

    v122 = sub_10002B3B0(*v8);
    v123 = *v8;
    if (v122)
    {
      if ((v123 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v124 = *__error();
          v125 = sub_100035B80();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            v126 = sub_100035B20(*v8);
            sub_1000B0494(v126, (a1 + 96));
          }

          *__error() = v124;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_294;
        }

        v127 = *__error();
        v128 = sub_100035B20(*v8);
        v129 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather lsof for resource exhaustion report, though process is alive", v128, *v8);
        v130 = v129;
        if (v129)
        {
          v131 = CFStringGetCStringPtr(v129, 0x8000100u);
          if (v131)
          {
            v132 = 0;
          }

          else
          {
            v131 = malloc_type_calloc(0x400uLL, 1uLL, 0x458A0BBEuLL);
            CFStringGetCString(v130, v131, 1024, 0x8000100u);
            v132 = v131;
          }

          if (qword_100117E88)
          {
            v156 = qword_100117E88;
          }

          else
          {
            v156 = __stderrp;
          }

          fprintf(v156, "%s\n", v131);
          if (v132)
          {
            free(v132);
          }

LABEL_238:
          CFRelease(v130);
LABEL_293:
          *__error() = v127;
LABEL_294:
          v167 = *(a1 + 100);
          if (v167 + 1 >= 2)
          {
            sub_10006B0A4(*(a1 + 64), *(a1 + 96), v167);
          }

          v168 = *(a1 + 56);
          if (v168)
          {
            if (v122)
            {
              v169 = 0x2000000000;
            }

            else
            {
              v169 = 0x1000000000;
            }

            (*(v168 + 16))(v168, v169);
          }

          goto LABEL_301;
        }

        v151 = sub_100035B80();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
        {
          v152 = sub_100035B20(*v8);
          sub_1000B04CC(v152, (a1 + 96));
        }

        if (qword_100117E88)
        {
          v153 = qword_100117E88;
        }

        else
        {
          v153 = __stderrp;
        }

        goto LABEL_256;
      }

      if (byte_100117E80)
      {
        v140 = *__error();
        v141 = sub_100035B80();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          sub_1000B042C();
        }

        *__error() = v140;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_294;
      }

      v127 = *__error();
      v142 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather lsof for resource exhaustion report, though process is alive", v187, v188);
      v143 = v142;
      if (!v142)
      {
        v158 = sub_100035B80();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0460();
        }

        if (qword_100117E88)
        {
          v153 = qword_100117E88;
        }

        else
        {
          v153 = __stderrp;
        }

        goto LABEL_256;
      }

      v144 = CFStringGetCStringPtr(v142, 0x8000100u);
      if (v144)
      {
        v145 = 0;
      }

      else
      {
        v144 = malloc_type_calloc(0x400uLL, 1uLL, 0x458A0BBEuLL);
        CFStringGetCString(v143, v144, 1024, 0x8000100u);
        v145 = v144;
      }

      if (qword_100117E88)
      {
        v165 = qword_100117E88;
      }

      else
      {
        v165 = __stderrp;
      }

      fprintf(v165, "%s\n", v144);
      if (v145)
      {
        free(v145);
      }
    }

    else
    {
      if ((v123 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v133 = *__error();
          v134 = sub_100035B80();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            v135 = sub_100035B20(*v8);
            sub_1000B03BC(v135, (a1 + 96));
          }

          *__error() = v133;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_294;
        }

        v127 = *__error();
        v136 = sub_100035B20(*v8);
        v137 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather lsof for resource exhaustion report; process is no longer around", v136, *v8);
        v130 = v137;
        if (v137)
        {
          v138 = CFStringGetCStringPtr(v137, 0x8000100u);
          if (v138)
          {
            v139 = 0;
          }

          else
          {
            v138 = malloc_type_calloc(0x400uLL, 1uLL, 0xD30C2F2EuLL);
            CFStringGetCString(v130, v138, 1024, 0x8000100u);
            v139 = v138;
          }

          if (qword_100117E88)
          {
            v157 = qword_100117E88;
          }

          else
          {
            v157 = __stderrp;
          }

          fprintf(v157, "%s\n", v138);
          if (v139)
          {
            free(v139);
          }

          goto LABEL_238;
        }

        v154 = sub_100035B80();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
        {
          v155 = sub_100035B20(*v8);
          sub_1000B03F4(v155, (a1 + 96));
        }

        if (qword_100117E88)
        {
          v153 = qword_100117E88;
        }

        else
        {
          v153 = __stderrp;
        }

LABEL_256:
        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v153);
        goto LABEL_293;
      }

      if (byte_100117E80)
      {
        v146 = *__error();
        v147 = sub_100035B80();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          sub_1000B0354();
        }

        *__error() = v146;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_294;
      }

      v127 = *__error();
      v148 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather lsof for resource exhaustion report; process is no longer around", v187, v188);
      v143 = v148;
      if (!v148)
      {
        v159 = sub_100035B80();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0388();
        }

        if (qword_100117E88)
        {
          v153 = qword_100117E88;
        }

        else
        {
          v153 = __stderrp;
        }

        goto LABEL_256;
      }

      v149 = CFStringGetCStringPtr(v148, 0x8000100u);
      if (v149)
      {
        v150 = 0;
      }

      else
      {
        v149 = malloc_type_calloc(0x400uLL, 1uLL, 0xD30C2F2EuLL);
        CFStringGetCString(v143, v149, 1024, 0x8000100u);
        v150 = v149;
      }

      if (qword_100117E88)
      {
        v166 = qword_100117E88;
      }

      else
      {
        v166 = __stderrp;
      }

      fprintf(v166, "%s\n", v149);
      if (v150)
      {
        free(v150);
      }
    }

    CFRelease(v143);
    goto LABEL_293;
  }

  [v3 appendFormat:@"ddt %d\n", *v8];
  *v224 = "/usr/local/bin/ddt";
  *&v224[8] = v238;
  *&v224[16] = 0;
  v223 = -1;
  v222 = -1;
  LOBYTE(v188) = 0;
  v186 = &v222;
  v10 = SASpawnPlatformBinaryWithSigningIdentifier();
  if ((v10 & 0x80000000) == 0)
  {
    v11 = dispatch_semaphore_create(0);
    v12 = v223;
    v13 = v222;
    v210[0] = _NSConcreteStackBlock;
    v210[1] = 3221225472;
    v210[2] = sub_10006AD44;
    v210[3] = &unk_1001096D0;
    v212 = &v218;
    v213 = *v8;
    v14 = v11;
    v211 = v14;
    sub_100058738(v10, v12, v13, 60, 0x1000000, v3, v210);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_54;
  }

  if ((*v8 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v27 = *__error();
      v28 = sub_100035B80();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        sub_1000B00C4();
      }

      *__error() = v27;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_53;
    }

    v17 = *__error();
    v31 = *__error();
    v32 = __error();
    v33 = strerror(*v32);
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn ddt: %d (%s)", v31, v33, 0);
    v24 = v34;
    if (v34)
    {
      v35 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v35 = malloc_type_calloc(0x400uLL, 1uLL, 0x14BEDA42uLL);
        CFStringGetCString(v24, v35, 1024, 0x8000100u);
        v36 = v35;
      }

      if (qword_100117E88)
      {
        v43 = qword_100117E88;
      }

      else
      {
        v43 = __stderrp;
      }

      fprintf(v43, "%s\n", v35);
      if (v36)
      {
        free(v36);
      }

      goto LABEL_51;
    }

    v40 = sub_100035B80();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      v41 = *__error();
      v42 = __error();
      strerror(*v42);
      sub_1000B00FC();
    }

    if (qword_100117E88)
    {
      v38 = qword_100117E88;
    }

    else
    {
      v38 = __stderrp;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v15 = *__error();
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v189 = sub_100035B20(*v8);
        v170 = *v8;
        v171 = *__error();
        v172 = __error();
        v173 = strerror(*v172);
        *buf = 136446978;
        *&buf[4] = v189;
        *&buf[12] = 1024;
        *&buf[14] = v170;
        *&buf[18] = 1024;
        *&buf[20] = v171;
        LOWORD(v228) = 2080;
        *(&v228 + 2) = v173;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn ddt: %d (%s)", buf, 0x22u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_53;
    }

    v17 = *__error();
    v18 = sub_100035B20(*v8);
    v19 = *v8;
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn ddt: %d (%s)", v18, v19, v20, v22);
    v24 = v23;
    if (v23)
    {
      v25 = CFStringGetCStringPtr(v23, 0x8000100u);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x14BEDA42uLL);
        CFStringGetCString(v24, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      if (qword_100117E88)
      {
        v39 = qword_100117E88;
      }

      else
      {
        v39 = __stderrp;
      }

      fprintf(v39, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

LABEL_51:
      CFRelease(v24);
      goto LABEL_52;
    }

    v37 = sub_100035B80();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v191 = sub_100035B20(*v8);
      v178 = *v8;
      v179 = *__error();
      v180 = __error();
      v181 = strerror(*v180);
      *buf = 136315906;
      *&buf[4] = v191;
      *&buf[12] = 1024;
      *&buf[14] = v178;
      *&buf[18] = 1024;
      *&buf[20] = v179;
      LOWORD(v228) = 2080;
      *(&v228 + 2) = v181;
      _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to spawn ddt: %d (%s)", buf, 0x22u);
    }

    if (qword_100117E88)
    {
      v38 = qword_100117E88;
    }

    else
    {
      v38 = __stderrp;
    }
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
LABEL_52:
  *__error() = v17;
LABEL_53:
  v44 = *__error();
  v45 = __error();
  [v3 appendFormat:@"Unable to spawn ddt: %d (%s)\n\n", v44, strerror(*v45)];
LABEL_54:
  if (v219[3])
  {
    v9 = *(a1 + 64);
    goto LABEL_56;
  }

  v51 = sub_10002B3B0(*v8);
  v52 = *v8;
  if (!v51)
  {
    if ((v52 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v74 = *__error();
        v75 = sub_100035B80();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = sub_100035B20(*v8);
          sub_1000B019C(v76, (a1 + 96));
        }

        *__error() = v74;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_272;
      }

      v56 = *__error();
      v77 = sub_100035B20(*v8);
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather ddt for resource exhaustion report; process is no longer around", v77, *v8);
      v59 = v78;
      if (v78)
      {
        v79 = CFStringGetCStringPtr(v78, 0x8000100u);
        if (v79)
        {
          v80 = 0;
        }

        else
        {
          v79 = malloc_type_calloc(0x400uLL, 1uLL, 0x71CBF280uLL);
          CFStringGetCString(v59, v79, 1024, 0x8000100u);
          v80 = v79;
        }

        if (qword_100117E88)
        {
          v114 = qword_100117E88;
        }

        else
        {
          v114 = __stderrp;
        }

        fprintf(v114, "%s\n", v79);
        if (v80)
        {
          free(v80);
        }

        goto LABEL_151;
      }

      v107 = sub_100035B80();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
      {
        v108 = sub_100035B20(*v8);
        sub_1000B01D4(v108, (a1 + 96));
      }

      if (qword_100117E88)
      {
        v106 = qword_100117E88;
      }

      else
      {
        v106 = __stderrp;
      }

LABEL_169:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v106);
      goto LABEL_271;
    }

    if (byte_100117E80)
    {
      v97 = *__error();
      v98 = sub_100035B80();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        sub_1000B0134();
      }

      *__error() = v97;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_272;
    }

    v56 = *__error();
    v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather ddt for resource exhaustion report; process is no longer around", v186, v188);
    v94 = v99;
    if (!v99)
    {
      v116 = sub_100035B80();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0168();
      }

      if (qword_100117E88)
      {
        v106 = qword_100117E88;
      }

      else
      {
        v106 = __stderrp;
      }

      goto LABEL_169;
    }

    v100 = CFStringGetCStringPtr(v99, 0x8000100u);
    if (v100)
    {
      v101 = 0;
    }

    else
    {
      v100 = malloc_type_calloc(0x400uLL, 1uLL, 0x71CBF280uLL);
      CFStringGetCString(v94, v100, 1024, 0x8000100u);
      v101 = v100;
    }

    if (qword_100117E88)
    {
      v161 = qword_100117E88;
    }

    else
    {
      v161 = __stderrp;
    }

    fprintf(v161, "%s\n", v100);
    if (v101)
    {
      free(v101);
    }

LABEL_270:
    CFRelease(v94);
    goto LABEL_271;
  }

  if (v52 < 0)
  {
    if (byte_100117E80)
    {
      v91 = *__error();
      v92 = sub_100035B80();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_1000B020C();
      }

      *__error() = v91;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_272;
    }

    v56 = *__error();
    v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gather ddt for resource exhaustion report, though process is alive", v186, v188);
    v94 = v93;
    if (!v93)
    {
      v115 = sub_100035B80();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0240();
      }

      if (qword_100117E88)
      {
        v106 = qword_100117E88;
      }

      else
      {
        v106 = __stderrp;
      }

      goto LABEL_169;
    }

    v95 = CFStringGetCStringPtr(v93, 0x8000100u);
    if (v95)
    {
      v96 = 0;
    }

    else
    {
      v95 = malloc_type_calloc(0x400uLL, 1uLL, 0x47306041uLL);
      CFStringGetCString(v94, v95, 1024, 0x8000100u);
      v96 = v95;
    }

    if (qword_100117E88)
    {
      v160 = qword_100117E88;
    }

    else
    {
      v160 = __stderrp;
    }

    fprintf(v160, "%s\n", v95);
    if (v96)
    {
      free(v96);
    }

    goto LABEL_270;
  }

  if (byte_100117E80)
  {
    v53 = *__error();
    v54 = sub_100035B80();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = sub_100035B20(*v8);
      sub_1000B0274(v55, (a1 + 96));
    }

    *__error() = v53;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_272;
  }

  v56 = *__error();
  v57 = sub_100035B20(*v8);
  v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to gather ddt for resource exhaustion report, though process is alive", v57, *v8);
  v59 = v58;
  if (!v58)
  {
    v104 = sub_100035B80();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
    {
      v105 = sub_100035B20(*v8);
      sub_1000B02AC(v105, (a1 + 96));
    }

    if (qword_100117E88)
    {
      v106 = qword_100117E88;
    }

    else
    {
      v106 = __stderrp;
    }

    goto LABEL_169;
  }

  v60 = CFStringGetCStringPtr(v58, 0x8000100u);
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v60 = malloc_type_calloc(0x400uLL, 1uLL, 0x47306041uLL);
    CFStringGetCString(v59, v60, 1024, 0x8000100u);
    v61 = v60;
  }

  if (qword_100117E88)
  {
    v113 = qword_100117E88;
  }

  else
  {
    v113 = __stderrp;
  }

  fprintf(v113, "%s\n", v60);
  if (v61)
  {
    free(v61);
  }

LABEL_151:
  CFRelease(v59);
LABEL_271:
  *__error() = v56;
LABEL_272:
  v162 = *(a1 + 100);
  if (v162 + 1 >= 2)
  {
    sub_10006B0A4(*(a1 + 64), *(a1 + 96), v162);
  }

  v163 = *(a1 + 56);
  if (v163)
  {
    if (v51)
    {
      v164 = 0x2000000000;
    }

    else
    {
      v164 = 0x1000000000;
    }

    (*(v163 + 16))(v163, v164);
  }

LABEL_301:
  _Block_object_dispose(&v214, 8);
  _Block_object_dispose(&v218, 8);
}

void sub_10006AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006AD44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  v3 = (a1 + 48);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v4 = *__error();
      v5 = sub_100035B80();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000B056C();
      }

      *__error() = v4;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v7 = *__error();
    v8 = sub_100035B20(*v3);
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No ddt output for resource exhaustion report", v8, *v3);
    if (v9)
    {
      v10 = v9;
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAF42398uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      v24 = v10;
LABEL_52:
      CFRelease(v24);
LABEL_53:
      *__error() = v7;
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B05EC();
    }

    goto LABEL_41;
  }

  if (byte_100117E80)
  {
    v14 = *__error();
    v15 = sub_100035B80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0504();
    }

    *__error() = v14;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v7 = *__error();
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No ddt output for resource exhaustion report");
    if (v17)
    {
      v18 = v17;
      v19 = CFStringGetCStringPtr(v17, 0x8000100u);
      if (v19)
      {
        v20 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAF42398uLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      v24 = v18;
      goto LABEL_52;
    }

    v25 = sub_100035B80();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1000B0538();
    }

LABEL_41:
    if (qword_100117E88)
    {
      v26 = qword_100117E88;
    }

    else
    {
      v26 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
    goto LABEL_53;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10006B0A4(uint64_t a1, uint64_t a2, mach_port_name_t name)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return mach_port_deallocate(mach_task_self_, name);
      }

      if ((a2 & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v5 = *__error();
          v6 = sub_100035B80();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v51 = sub_100035B20(a2);
            v52 = 1024;
            v53 = a2;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
          }

          *__error() = v5;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          return mach_port_deallocate(mach_task_self_, name);
        }

        v8 = *__error();
        v9 = sub_100035B20(a2);
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v9, a2);
        if (v10)
        {
          v11 = v10;
          CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
          if (!CStringPtr)
          {
            v13 = 352151797;
LABEL_87:
            v24 = malloc_type_calloc(0x400uLL, 1uLL, v13);
            CFStringGetCString(v11, v24, 1024, 0x8000100u);
            v25 = v24;
            goto LABEL_88;
          }

          goto LABEL_42;
        }

        v43 = sub_100035B80();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0810(a2);
        }

        goto LABEL_85;
      }

      if (byte_100117E80)
      {
        v37 = *__error();
        v38 = sub_100035B80();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
        }

        *__error() = v37;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        return mach_port_deallocate(mach_task_self_, name);
      }

      v8 = *__error();
      v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"file descriptor exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
      if (v40)
      {
        v30 = v40;
        v31 = CFStringGetCStringPtr(v40, 0x8000100u);
        if (v31)
        {
          goto LABEL_78;
        }

        v32 = 352151797;
LABEL_106:
        v41 = malloc_type_calloc(0x400uLL, 1uLL, v32);
        CFStringGetCString(v30, v41, 1024, 0x8000100u);
        v42 = v41;
        goto LABEL_107;
      }

      v46 = sub_100035B80();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1000B07DC();
      }

LABEL_100:

      goto LABEL_101;
    }

    if ((a2 & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v14 = *__error();
        v15 = sub_100035B80();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v51 = sub_100035B20(a2);
          v52 = 1024;
          v53 = a2;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
        }

        *__error() = v14;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v8 = *__error();
        v17 = sub_100035B20(a2);
        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v17, a2);
        if (v18)
        {
          v11 = v18;
          CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
          if (!CStringPtr)
          {
            v13 = 3744928640;
            goto LABEL_87;
          }

LABEL_42:
          v24 = CStringPtr;
          v25 = 0;
LABEL_88:
          if (qword_100117E88)
          {
            v44 = qword_100117E88;
          }

          else
          {
            v44 = __stderrp;
          }

          fprintf(v44, "%s\n", v24);
          if (v25)
          {
            free(v25);
          }

          v45 = v11;
LABEL_113:
          CFRelease(v45);
LABEL_114:
          *__error() = v8;
          return mach_port_deallocate(mach_task_self_, name);
        }

        v43 = sub_100035B80();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          sub_1000B0758(a2);
        }

        goto LABEL_85;
      }

      return mach_port_deallocate(mach_task_self_, name);
    }

    if (byte_100117E80)
    {
      v26 = *__error();
      v27 = sub_100035B80();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
      }

      *__error() = v26;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      return mach_port_deallocate(mach_task_self_, name);
    }

    v8 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"port exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
    if (!v29)
    {
      v46 = sub_100035B80();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0724();
      }

      goto LABEL_100;
    }

    v30 = v29;
    v31 = CFStringGetCStringPtr(v29, 0x8000100u);
    if (!v31)
    {
      v32 = 3744928640;
      goto LABEL_106;
    }

LABEL_78:
    v41 = v31;
    v42 = 0;
LABEL_107:
    if (qword_100117E88)
    {
      v48 = qword_100117E88;
    }

    else
    {
      v48 = __stderrp;
    }

    fprintf(v48, "%s\n", v41);
    if (v42)
    {
      free(v42);
    }

    v45 = v30;
    goto LABEL_113;
  }

  if ((a2 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v33 = *__error();
      v34 = sub_100035B80();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 2u);
      }

      *__error() = v33;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      return mach_port_deallocate(mach_task_self_, name);
    }

    v8 = *__error();
    v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion");
    if (!v36)
    {
      v46 = sub_100035B80();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1000B066C();
      }

      goto LABEL_100;
    }

    v30 = v36;
    v31 = CFStringGetCStringPtr(v36, 0x8000100u);
    if (!v31)
    {
      v32 = 3898565256;
      goto LABEL_106;
    }

    goto LABEL_78;
  }

  if (byte_100117E80)
  {
    v19 = *__error();
    v20 = sub_100035B80();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v51 = sub_100035B20(a2);
      v52 = 1024;
      v53 = a2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", buf, 0x12u);
    }

    *__error() = v19;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v8 = *__error();
    v22 = sub_100035B20(a2);
    v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: kqworkloop exhaustion: deallocating fatal port, allowing process to exit due to fatal resource exhaustion", v22, a2);
    if (v23)
    {
      v11 = v23;
      CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
      if (!CStringPtr)
      {
        v13 = 3898565256;
        goto LABEL_87;
      }

      goto LABEL_42;
    }

    v43 = sub_100035B80();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      sub_1000B06A0(a2);
    }

LABEL_85:

LABEL_101:
    if (qword_100117E88)
    {
      v47 = qword_100117E88;
    }

    else
    {
      v47 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
    goto LABEL_114;
  }

  return mach_port_deallocate(mach_task_self_, name);
}

intptr_t sub_10006B8D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  v3 = (a1 + 48);
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v4 = *__error();
      v5 = sub_100035B80();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000B08FC();
      }

      *__error() = v4;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v7 = *__error();
    v8 = sub_100035B20(*v3);
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No lsof output for resource exhaustion report", v8, *v3);
    if (v9)
    {
      v10 = v9;
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x2AA01106uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      v24 = v10;
LABEL_52:
      CFRelease(v24);
LABEL_53:
      *__error() = v7;
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B097C();
    }

    goto LABEL_41;
  }

  if (byte_100117E80)
  {
    v14 = *__error();
    v15 = sub_100035B80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0894();
    }

    *__error() = v14;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v7 = *__error();
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No lsof output for resource exhaustion report");
    if (v17)
    {
      v18 = v17;
      v19 = CFStringGetCStringPtr(v17, 0x8000100u);
      if (v19)
      {
        v20 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x2AA01106uLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      v24 = v18;
      goto LABEL_52;
    }

    v25 = sub_100035B80();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1000B08C8();
    }

LABEL_41:
    if (qword_100117E88)
    {
      v26 = qword_100117E88;
    }

    else
    {
      v26 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
    goto LABEL_53;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006BC34(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 2)
  {
    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_KQWorkLoops";
    v5 = "Exhaustion_KQWorkLoops";
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_Ports";
    v5 = "Exhaustion_Ports";
  }

  else
  {
    if (v2)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v3 = *(a1 + 88);
    v4 = "ExhaustionFatal_FileDescriptors";
    v5 = "Exhaustion_FileDescriptors";
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

LABEL_11:
  memset(&v168, 0, sizeof(v168));
  localtime_r((a1 + 96), &v168);
  strftime(v177, 0x40uLL, "%F_%H-%M-%S", &v168);
  v7 = [*(a1 + 32) lastPathComponent];
  v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v9 = [NSString stringWithFormat:@"/private/var/db/spindump/%s_%@_%s.txt", v6, v8, v177];

  v10 = geteuid();
  v11 = sub_100062A5C(v9, 0, 0, 1538, v10, 0x1A4u, 0);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = dup(v11);
    v14 = fdopen(v12, "w");
    if (v14)
    {
      v15 = v14;
      v16 = [[SASampleStore alloc] initForLiveSampling];
      sub_100077DF8(v16, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 >> 4) & 1);
      if (*(a1 + 40))
      {
        [v16 addKCDataStackshot:?];
      }

      v17 = (a1 + 120);
      [v16 setTargetProcessId:*(a1 + 120)];
      [v16 postprocess];
      if (*(a1 + 48))
      {
        v18 = *(a1 + 48);
      }

      else
      {
        v18 = @"none";
      }

      [v16 setActionTaken:v18];
      v19 = *(a1 + 80);
      if (v19 <= 2)
      {
        [v16 setEvent:off_100109740[v19]];
      }

      if (*(a1 + 88))
      {
        v20 = @" (fatal)";
      }

      else
      {
        v20 = &stru_10010D958;
      }

      v21 = [NSString stringWithFormat:@"%llu allocated, exceeding limit of %llu%@", *(a1 + 104), *(a1 + 112), v20];
      [v16 setEventNote:v21];

      if (*(a1 + 88))
      {
        v22 = @"Process killed";
      }

      else
      {
        v22 = @"none";
      }

      [v16 setActionTaken:v22];
      v23 = [[SASamplePrinter alloc] initWithSampleStore:v16];
      v24 = [v23 options];
      [v24 setDisplayHeader:1];

      v25 = [v23 options];
      [v25 setDisplayBody:0];

      v26 = [v23 options];
      [v26 setDisplayFooter:0];

      v167 = +[NSUUID UUID];
      [v23 setIncidentUUID:?];
      [v23 printToStream:v15];
      fputc(10, v15);
      v27 = [*(a1 + 56) lengthOfBytesUsingEncoding:4];
      if (!v27)
      {
        goto LABEL_215;
      }

      v28 = v27;
      v166 = v13;
      v29 = malloc_type_malloc(v27, 0xC5243339uLL);
      if ([*(a1 + 56) getCString:v29 maxLength:v28 encoding:4])
      {
        v30 = fwrite(v29, v28, 1uLL, v15);
        v31 = v29;
        v13 = v166;
        if (v30 == 1)
        {
          goto LABEL_214;
        }

        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v103 = *__error();
            v104 = sub_100035B80();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              sub_1000B09FC(v15);
            }

            *__error() = v103;
            v13 = v166;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v162 = *__error();
            v105 = ferror(v15);
            v106 = strerror(v105);
            v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write ddt/lsof output to buffer: %d (%s)", v105, v106);
            if (v107)
            {
              v108 = v107;
              v165 = v31;
              CStringPtr = CFStringGetCStringPtr(v107, 0x8000100u);
              if (CStringPtr)
              {
                v110 = CStringPtr;
                v111 = 0;
              }

              else
              {
                v110 = malloc_type_calloc(0x400uLL, 1uLL, 0xF4E8CB69uLL);
                CFStringGetCString(v108, v110, 1024, 0x8000100u);
                v111 = v110;
              }

              if (qword_100117E88)
              {
                v136 = qword_100117E88;
              }

              else
              {
                v136 = __stderrp;
              }

              fprintf(v136, "%s\n", v110);
              if (v111)
              {
                free(v111);
              }

              CFRelease(v108);
              v31 = v165;
              v13 = v166;
            }

            else
            {
              v132 = sub_100035B80();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
              {
                sub_1000B0A84(v15);
              }

              if (qword_100117E88)
              {
                v133 = qword_100117E88;
              }

              else
              {
                v133 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v133);
            }

            *__error() = v162;
          }

          goto LABEL_214;
        }

        if (byte_100117E80)
        {
          v32 = v31;
          v33 = *__error();
          v34 = sub_100035B80();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0B0C();
          }

          *__error() = v33;
          v31 = v32;
          v13 = v166;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
LABEL_214:
          free(v31);
LABEL_215:
          v138 = [v23 options];
          [v138 setDisplayHeader:0];

          v139 = [v23 options];
          [v139 setDisplayBody:1];

          v140 = [v23 options];
          [v140 setDisplayFooter:1];

          [v23 printToStream:v15];
          fwrite("\n\n", 2uLL, 1uLL, v15);
          [v16 setCustomOutput:*(a1 + 56)];
          [v16 saveBinaryFormatToStream:v15];
          fclose(v15);
          if (v13 != -1)
          {
            sub_10006DE90(v13);
            close(v13);
          }

          if (byte_100117E80 == 1)
          {
            v141 = *__error();
            v142 = sub_100035B80();
            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
            {
              v143 = [*(a1 + 32) lastPathComponent];
              v144 = *(a1 + 120);
              *buf = 138413058;
              v170 = v143;
              v171 = 1024;
              v172 = v144;
              v173 = 2082;
              v174 = v6;
              v175 = 2112;
              v176 = v9;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "%@ [%d] Saved %{public}s report to %@", buf, 0x26u);
            }

            *__error() = v141;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 2)
          {
            v145 = *__error();
            v146 = [*(a1 + 32) lastPathComponent];
            v147 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d] Saved %s report to %@", v146, *(a1 + 120), v6, v9);

            if (v147)
            {
              v148 = CFStringGetCStringPtr(v147, 0x8000100u);
              if (v148)
              {
                v149 = v148;
                v150 = 0;
              }

              else
              {
                v149 = malloc_type_calloc(0x400uLL, 1uLL, 0x18D21154uLL);
                CFStringGetCString(v147, v149, 1024, 0x8000100u);
                v150 = v149;
              }

              if (qword_100117E88)
              {
                v153 = qword_100117E88;
              }

              else
              {
                v153 = __stderrp;
              }

              fprintf(v153, "%s\n", v149);
              if (v150)
              {
                free(v150);
              }

              CFRelease(v147);
            }

            else
            {
              v151 = sub_100035B80();
              if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
              {
                v155 = [*(a1 + 32) lastPathComponent];
                v156 = *(a1 + 120);
                *buf = 138413058;
                v170 = v155;
                v171 = 1024;
                v172 = v156;
                v173 = 2080;
                v174 = v6;
                v175 = 2112;
                v176 = v9;
                _os_log_fault_impl(&_mh_execute_header, v151, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d] Saved %s report to %@", buf, 0x26u);
              }

              if (qword_100117E88)
              {
                v152 = qword_100117E88;
              }

              else
              {
                v152 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v152);
            }

            *__error() = v145;
          }

          sub_10006D368(v6, 3600);
          v154 = *(a1 + 72);
          if (v154)
          {
            (*(v154 + 16))(v154, 0);
          }

          goto LABEL_243;
        }

        v163 = v31;
        v160 = *__error();
        v35 = sub_100035B20(*v17);
        v36 = *v17;
        v37 = ferror(v15);
        v38 = strerror(v37);
        v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to write ddt/lsof output to buffer: %d (%s)", v35, v36, v37, v38);
        if (v39)
        {
          v40 = v39;
          v41 = CFStringGetCStringPtr(v39, 0x8000100u);
          if (v41)
          {
            v42 = v41;
            v43 = 0;
          }

          else
          {
            v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xF4E8CB69uLL);
            CFStringGetCString(v40, v42, 1024, 0x8000100u);
            v43 = v42;
          }

          if (qword_100117E88)
          {
            v130 = qword_100117E88;
          }

          else
          {
            v130 = __stderrp;
          }

          fprintf(v130, "%s\n", v42);
          if (v43)
          {
            free(v43);
          }

          CFRelease(v40);
        }

        else
        {
          v128 = sub_100035B80();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0BA8();
          }

          if (qword_100117E88)
          {
            v129 = qword_100117E88;
          }

          else
          {
            v129 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v129);
        }

        v31 = v163;
        *__error() = v160;
LABEL_213:
        v13 = v166;
        goto LABEL_214;
      }

      v164 = v29;
      v77 = [*(a1 + 56) dataUsingEncoding:4 allowLossyConversion:1];
      v78 = v77;
      if (v77)
      {
        if (fwrite([v77 bytes], objc_msgSend(v77, "length"), 1uLL, v15) == 1)
        {
LABEL_212:

          v31 = v164;
          goto LABEL_213;
        }

        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v122 = *__error();
            v123 = sub_100035B80();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              sub_1000B09FC(v15);
            }

            *__error() = v122;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v161 = *__error();
          v124 = ferror(v15);
          v125 = strerror(v124);
          v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write ddt/lsof output to buffer: %d (%s)", v124, v125);
          if (!v84)
          {
            v137 = sub_100035B80();
            if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0A84(v15);
            }

            goto LABEL_207;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v79 = *__error();
            v80 = sub_100035B80();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              sub_1000B0B0C();
            }

            *__error() = v79;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v161 = *__error();
          v81 = sub_100035B20(*v17);
          v157 = *v17;
          alloca = v81;
          v82 = ferror(v15);
          v83 = strerror(v82);
          v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to write ddt/lsof output to buffer: %d (%s)", alloca, v157, v82, v83);
          if (!v84)
          {
            v85 = sub_100035B80();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0BA8();
            }

LABEL_168:

LABEL_207:
            if (qword_100117E88)
            {
              v135 = qword_100117E88;
            }

            else
            {
              v135 = __stderrp;
            }

LABEL_210:
            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v135);
LABEL_211:
            *__error() = v161;
            goto LABEL_212;
          }
        }

        v98 = v84;
        v99 = CFStringGetCStringPtr(v84, 0x8000100u);
        alloc = v98;
        if (v99)
        {
          goto LABEL_147;
        }

        v100 = 1904296371;
      }

      else
      {
        if (*v17 < 0)
        {
          if (byte_100117E80)
          {
            v112 = *__error();
            v113 = sub_100035B80();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              sub_1000B0C44();
            }

            *__error() = v112;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_212;
          }

          v161 = *__error();
          v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to convert ddt/lsof output to buffer");
          if (!v114)
          {
            v134 = sub_100035B80();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
            {
              sub_1000B0C78();
            }

            if (qword_100117E88)
            {
              v135 = qword_100117E88;
            }

            else
            {
              v135 = __stderrp;
            }

            goto LABEL_210;
          }

          v115 = v114;
          v116 = CFStringGetCStringPtr(v114, 0x8000100u);
          alloc = v115;
          if (v116)
          {
            v117 = v116;
            v118 = 0;
          }

          else
          {
            v117 = malloc_type_calloc(0x400uLL, 1uLL, 0x22C179E4uLL);
            CFStringGetCString(v115, v117, 1024, 0x8000100u);
            v118 = v117;
          }

LABEL_179:
          if (qword_100117E88)
          {
            v131 = qword_100117E88;
          }

          else
          {
            v131 = __stderrp;
          }

          fprintf(v131, "%s\n", v117);
          if (v118)
          {
            free(v118);
          }

          CFRelease(alloc);
          goto LABEL_211;
        }

        if (byte_100117E80)
        {
          v94 = *__error();
          v95 = sub_100035B80();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0CAC();
          }

          *__error() = v94;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_212;
        }

        v161 = *__error();
        v96 = sub_100035B20(*v17);
        v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to convert ddt/lsof output to buffer", v96, *v17);
        if (!v97)
        {
          v85 = sub_100035B80();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0D2C();
          }

          goto LABEL_168;
        }

        v98 = v97;
        v99 = CFStringGetCStringPtr(v97, 0x8000100u);
        alloc = v98;
        if (v99)
        {
LABEL_147:
          v117 = v99;
          v118 = 0;
          goto LABEL_179;
        }

        v100 = 583104996;
      }

      v117 = malloc_type_calloc(0x400uLL, 1uLL, v100);
      CFStringGetCString(v98, v117, 1024, 0x8000100u);
      v118 = v117;
      goto LABEL_179;
    }

    v57 = (a1 + 120);
    if ((*(a1 + 120) & 0x80000000) == 0)
    {
      if (byte_100117E80)
      {
        v58 = *__error();
        v59 = sub_100035B80();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_1000B0DAC();
        }

        *__error() = v58;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_158;
      }

      v47 = *__error();
      v60 = sub_100035B20(*v57);
      v61 = *v57;
      v62 = *__error();
      v63 = __error();
      v64 = strerror(*v63);
      v65 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not fdopen log file %@: %d (%s)", v60, v61, v9, v62, v64);
      if (v65)
      {
        v54 = v65;
        v55 = CFStringGetCStringPtr(v65, 0x8000100u);
        if (v55)
        {
          goto LABEL_58;
        }

        v56 = 2012431390;
LABEL_125:
        v66 = malloc_type_calloc(0x400uLL, 1uLL, v56);
        CFStringGetCString(v54, v66, 1024, 0x8000100u);
        v67 = v66;
        goto LABEL_126;
      }

      v101 = sub_100035B80();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        sub_1000B0E50();
      }

      goto LABEL_103;
    }

    if (byte_100117E80)
    {
      v86 = *__error();
      v87 = sub_100035B80();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        sub_1000AB3FC();
      }

      *__error() = v86;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_158;
    }

    v47 = *__error();
    v88 = *__error();
    v89 = __error();
    v90 = strerror(*v89);
    v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not fdopen log file %@: %d (%s)", v9, v88, v90);
    if (v91)
    {
      v74 = v91;
      v75 = CFStringGetCStringPtr(v91, 0x8000100u);
      if (v75)
      {
        goto LABEL_88;
      }

      v76 = 2012431390;
      goto LABEL_149;
    }

    v102 = sub_100035B80();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      sub_1000AB494();
    }

    goto LABEL_134;
  }

  v44 = (a1 + 120);
  if ((*(a1 + 120) & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v68 = *__error();
      v69 = sub_100035B80();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000ABEDC();
      }

      *__error() = v68;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_158;
    }

    v47 = *__error();
    v70 = *__error();
    v71 = __error();
    v72 = strerror(*v71);
    v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not open log file %@: %d (%s)", v9, v70, v72);
    if (v73)
    {
      v74 = v73;
      v75 = CFStringGetCStringPtr(v73, 0x8000100u);
      if (v75)
      {
LABEL_88:
        v92 = v75;
        v93 = 0;
LABEL_150:
        if (qword_100117E88)
        {
          v126 = qword_100117E88;
        }

        else
        {
          v126 = __stderrp;
        }

        fprintf(v126, "%s\n", v92);
        if (v93)
        {
          free(v93);
        }

        v120 = v74;
        goto LABEL_156;
      }

      v76 = 3350684082;
LABEL_149:
      v92 = malloc_type_calloc(0x400uLL, 1uLL, v76);
      CFStringGetCString(v74, v92, 1024, 0x8000100u);
      v93 = v92;
      goto LABEL_150;
    }

    v102 = sub_100035B80();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      sub_1000ABF74();
    }

LABEL_134:

    goto LABEL_135;
  }

  if (byte_100117E80)
  {
    v45 = *__error();
    v46 = sub_100035B80();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1000B0EF4();
    }

    *__error() = v45;
  }

  if (byte_100117E81 != 1 || dword_100117510 > 3)
  {
    goto LABEL_158;
  }

  v47 = *__error();
  v48 = sub_100035B20(*v44);
  v49 = *v44;
  v50 = *__error();
  v51 = __error();
  v52 = strerror(*v51);
  v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not open log file %@: %d (%s)", v48, v49, v9, v50, v52);
  if (!v53)
  {
    v101 = sub_100035B80();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
    {
      sub_1000B0F98();
    }

LABEL_103:

LABEL_135:
    if (qword_100117E88)
    {
      v121 = qword_100117E88;
    }

    else
    {
      v121 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v121);
    goto LABEL_157;
  }

  v54 = v53;
  v55 = CFStringGetCStringPtr(v53, 0x8000100u);
  if (!v55)
  {
    v56 = 3350684082;
    goto LABEL_125;
  }

LABEL_58:
  v66 = v55;
  v67 = 0;
LABEL_126:
  if (qword_100117E88)
  {
    v119 = qword_100117E88;
  }

  else
  {
    v119 = __stderrp;
  }

  fprintf(v119, "%s\n", v66);
  if (v67)
  {
    free(v67);
  }

  v120 = v54;
LABEL_156:
  CFRelease(v120);
LABEL_157:
  *__error() = v47;
LABEL_158:
  v127 = *(a1 + 72);
  if (v127)
  {
    (*(v127 + 16))(v127, 0x1000000);
  }

LABEL_243:
}

uint64_t sub_10006D2B4(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void sub_10006D30C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_10006D328(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x12u);
}

_DWORD *sub_10006D350(int *a1)
{
  v2 = *a1;

  return sub_100035B20(v2);
}

void sub_10006D368(const char *a1, uint64_t a2)
{
  v4 = time(0);
  v5 = strdup(a1);
  v6 = sub_1000359B8("Cleanup spindump dir for %s", a1);
  v7 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D458;
  block[3] = &unk_100109760;
  v12 = v4;
  v13 = a2;
  v10 = v6;
  v11 = v5;
  v8 = v6;
  dispatch_async(v7, block);
}

void sub_10006D458(uint64_t a1)
{
  v2 = opendir("/private/var/db/spindump");
  if (v2)
  {
    v3 = v2;
    *__error() = 0;
    for (i = readdir(v3); i; i = readdir(v3))
    {
      d_name = i->d_name;
      v6 = strlen(*(a1 + 40));
      if (!strncmp(d_name, *(a1 + 40), v6))
      {
        snprintf(__str, 0x80uLL, "/private/var/db/spindump/%s", d_name);
        memset(&v86, 0, sizeof(v86));
        if (stat(__str, &v86))
        {
          if (byte_100117E80 == 1)
          {
            v16 = *__error();
            v17 = sub_100035B80();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v61 = *__error();
              v62 = __error();
              v63 = strerror(*v62);
              *buf = 136315650;
              v83 = __str;
              v84 = 1024;
              *v85 = v61;
              *&v85[4] = 2080;
              *&v85[6] = v63;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Stat failed, attemping unlink of %s: %d (%s)", buf, 0x1Cu);
            }

            *__error() = v16;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_88;
          }

          v19 = *__error();
          v20 = *__error();
          v21 = __error();
          v22 = strerror(*v21);
          v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stat failed, attemping unlink of %s: %d (%s)", __str, v20, v22);
          if (v23)
          {
            v24 = v23;
            CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_67;
            }

            v26 = 1876247079;
            goto LABEL_80;
          }

          v43 = sub_100035B80();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            v44 = *__error();
            v45 = __error();
            v46 = strerror(*v45);
            *buf = 136315650;
            v83 = __str;
            v84 = 1024;
            *v85 = v44;
            *&v85[4] = 2080;
            *&v85[6] = v46;
            v47 = v43;
            v48 = "Unable to format: Stat failed, attemping unlink of %s: %d (%s)";
            v49 = 28;
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        if (v86.st_ctimespec.tv_sec <= *(a1 + 48) - *(a1 + 56))
        {
          if (byte_100117E80)
          {
            v35 = *__error();
            v36 = sub_100035B80();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = *(a1 + 56);
              v38 = *(a1 + 48) - v86.st_ctimespec.tv_sec;
              *buf = 136315650;
              v83 = __str;
              v84 = 2048;
              *v85 = v38;
              *&v85[8] = 2048;
              *&v85[10] = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Unlinking %s which is %lds old (>=%lds)", buf, 0x20u);
            }

            *__error() = v35;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 1)
          {
            goto LABEL_88;
          }

          v19 = *__error();
          v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unlinking %s which is %lds old (>=%lds)", __str, *(a1 + 48) - v86.st_ctimespec.tv_sec, *(a1 + 56));
          if (v40)
          {
            v24 = v40;
            CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
            if (CStringPtr)
            {
LABEL_67:
              v41 = CStringPtr;
              v42 = 0;
              goto LABEL_81;
            }

            v26 = 3014854008;
LABEL_80:
            v41 = malloc_type_calloc(0x400uLL, 1uLL, v26);
            CFStringGetCString(v24, v41, 1024, 0x8000100u);
            v42 = v41;
LABEL_81:
            if (qword_100117E88)
            {
              v60 = qword_100117E88;
            }

            else
            {
              v60 = __stderrp;
            }

            fprintf(v60, "%s\n", v41);
            if (v42)
            {
              free(v42);
            }

            CFRelease(v24);
LABEL_87:
            *__error() = v19;
LABEL_88:
            unlink(__str);
            continue;
          }

          v43 = sub_100035B80();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            v57 = *(a1 + 56);
            v58 = *(a1 + 48) - v86.st_ctimespec.tv_sec;
            *buf = 136315650;
            v83 = __str;
            v84 = 2048;
            *v85 = v58;
            *&v85[8] = 2048;
            *&v85[10] = v57;
            v47 = v43;
            v48 = "Unable to format: Unlinking %s which is %lds old (>=%lds)";
            v49 = 32;
LABEL_74:
            _os_log_fault_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, v48, buf, v49);
          }

LABEL_75:

          if (qword_100117E88)
          {
            v59 = qword_100117E88;
          }

          else
          {
            v59 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
          goto LABEL_87;
        }

        if (byte_100117E80)
        {
          v27 = *__error();
          v28 = sub_100035B80();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(a1 + 56);
            v66 = *(a1 + 48) - v86.st_ctimespec.tv_sec;
            *buf = 136315650;
            v83 = __str;
            v84 = 2048;
            *v85 = v66;
            *&v85[8] = 2048;
            *&v85[10] = v65;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Not unlinking %s which is %lds old (<%lds)", buf, 0x20u);
          }

          *__error() = v27;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          continue;
        }

        v10 = *__error();
        v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not unlinking %s which is %lds old (<%lds)", __str, *(a1 + 48) - v86.st_ctimespec.tv_sec, *(a1 + 56));
        if (!v30)
        {
          v32 = sub_100035B80();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v51 = *(a1 + 56);
            v52 = *(a1 + 48) - v86.st_ctimespec.tv_sec;
            *buf = 136315650;
            v83 = __str;
            v84 = 2048;
            *v85 = v52;
            *&v85[8] = 2048;
            *&v85[10] = v51;
            v53 = buf;
            v54 = v32;
            v55 = "Unable to format: Not unlinking %s which is %lds old (<%lds)";
            v56 = 32;
            goto LABEL_92;
          }

LABEL_43:

          if (qword_100117E88)
          {
            v33 = qword_100117E88;
          }

          else
          {
            v33 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v33);
          goto LABEL_55;
        }

        v12 = v30;
        v13 = CFStringGetCStringPtr(v30, 0x8000100u);
        if (!v13)
        {
          v31 = 2500192732;
LABEL_48:
          v14 = malloc_type_calloc(0x400uLL, 1uLL, v31);
          CFStringGetCString(v12, v14, 1024, 0x8000100u);
          v15 = v14;
          goto LABEL_49;
        }
      }

      else
      {
        if (byte_100117E80 == 1)
        {
          v7 = *__error();
          v8 = sub_100035B80();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v50 = *(a1 + 40);
            v86.st_dev = 136315394;
            *&v86.st_mode = d_name;
            WORD2(v86.st_ino) = 2080;
            *(&v86.st_ino + 6) = v50;
            _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "File %s doesn't match prefix %s", &v86, 0x16u);
          }

          *__error() = v7;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          continue;
        }

        v10 = *__error();
        v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"File %s doesn't match prefix %s", d_name, *(a1 + 40));
        if (!v11)
        {
          v32 = sub_100035B80();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v64 = *(a1 + 40);
            v86.st_dev = 136315394;
            *&v86.st_mode = d_name;
            WORD2(v86.st_ino) = 2080;
            *(&v86.st_ino + 6) = v64;
            v53 = &v86;
            v54 = v32;
            v55 = "Unable to format: File %s doesn't match prefix %s";
            v56 = 22;
LABEL_92:
            _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, v55, v53, v56);
          }

          goto LABEL_43;
        }

        v12 = v11;
        v13 = CFStringGetCStringPtr(v11, 0x8000100u);
        if (!v13)
        {
          v31 = 141179575;
          goto LABEL_48;
        }
      }

      v14 = v13;
      v15 = 0;
LABEL_49:
      if (qword_100117E88)
      {
        v34 = qword_100117E88;
      }

      else
      {
        v34 = __stderrp;
      }

      fprintf(v34, "%s\n", v14);
      if (v15)
      {
        free(v15);
      }

      CFRelease(v12);
LABEL_55:
      *__error() = v10;
    }

    closedir(v3);
    free(*(a1 + 40));
  }

  else
  {
    if (byte_100117E80 == 1)
    {
      v67 = *__error();
      v68 = sub_100035B80();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_1000B103C();
      }

      *__error() = v67;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v70 = *__error();
      v71 = *__error();
      v72 = __error();
      v73 = strerror(*v72);
      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to opendir /private/var/db/spindump: %d (%s)", v71, v73);
      if (v74)
      {
        v75 = v74;
        v76 = CFStringGetCStringPtr(v74, 0x8000100u);
        if (v76)
        {
          v77 = v76;
          v78 = 0;
        }

        else
        {
          v77 = malloc_type_calloc(0x400uLL, 1uLL, 0x26F36AD8uLL);
          CFStringGetCString(v75, v77, 1024, 0x8000100u);
          v78 = v77;
        }

        if (qword_100117E88)
        {
          v81 = qword_100117E88;
        }

        else
        {
          v81 = __stderrp;
        }

        fprintf(v81, "%s\n", v77);
        if (v78)
        {
          free(v78);
        }

        CFRelease(v75);
      }

      else
      {
        v79 = sub_100035B80();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000B10D0();
        }

        if (qword_100117E88)
        {
          v80 = qword_100117E88;
        }

        else
        {
          v80 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v80);
      }

      *__error() = v70;
    }
  }
}

int *sub_10006DE90(int *result)
{
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v26 = 66053;
  result = ffsctl(result, 0xC0084A44uLL, &v26, 0);
  if (result)
  {
    v1 = result;
    if (byte_100117E80)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1164(v1);
      }

      result = __error();
      *result = v2;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      return result;
    }

    v5 = *__error();
    v6 = strerror(v1);
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to mark file purgeable: %d (%s)", v1, v6);
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
        v10 = malloc_type_calloc(0x400uLL, 1uLL, 0xAD5BCC90uLL);
        CFStringGetCString(v8, v10, 1024, 0x8000100u);
        v11 = v10;
      }

      if (qword_100117E88)
      {
        v21 = qword_100117E88;
      }

      else
      {
        v21 = __stderrp;
      }

      fprintf(v21, "%s\n", v10);
      if (v11)
      {
        free(v11);
      }

      v22 = v8;
LABEL_51:
      CFRelease(v22);
LABEL_52:
      result = __error();
      *result = v5;
      return result;
    }

    v20 = sub_100035B80();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1000B11EC(v1);
    }

    goto LABEL_40;
  }

  if (byte_100117E80)
  {
    v12 = *__error();
    v13 = sub_100035B80();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B1274(v13);
    }

    result = __error();
    *result = v12;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v5 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Marked file purgeable");
    if (v15)
    {
      v16 = v15;
      v17 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
      }

      else
      {
        v18 = malloc_type_calloc(0x400uLL, 1uLL, 0x48E7ACBCuLL);
        CFStringGetCString(v16, v18, 1024, 0x8000100u);
        v19 = v18;
      }

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v18);
      if (v19)
      {
        free(v19);
      }

      v22 = v16;
      goto LABEL_51;
    }

    v23 = sub_100035B80();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1000B12B8(v23);
    }

LABEL_40:
    if (qword_100117E88)
    {
      v24 = qword_100117E88;
    }

    else
    {
      v24 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v24);
    goto LABEL_52;
  }

  return result;
}

void sub_10006E1E4(id a1, OS_dispatch_source *a2)
{
  v2 = a2;
  if (byte_100117E80 == 1)
  {
    v3 = *__error();
    v4 = sub_100035B80();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      handle = dispatch_source_get_handle(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received signal %ld, exiting", buf, 0xCu);
    }

    *__error() = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v6 = *__error();
    v7 = dispatch_source_get_handle(v2);
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Received signal %ld, exiting", v7);
    if (v8)
    {
      v12 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v14 = CStringPtr;
        v15 = 0;
      }

      else
      {
        v14 = malloc_type_calloc(0x400uLL, 1uLL, 0xF020FF0BuLL);
        CFStringGetCString(v12, v14, 1024, 0x8000100u);
        v15 = v14;
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v14);
      if (v15)
      {
        free(v15);
      }

      CFRelease(v12);
    }

    else
    {
      v9 = sub_100035B80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = dispatch_source_get_handle(v2);
        *buf = 134217984;
        handle = v10;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Unable to format: Received signal %ld, exiting", buf, 0xCu);
      }

      if (qword_100117E88)
      {
        v11 = qword_100117E88;
      }

      else
      {
        v11 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
    }

    *__error() = v6;
  }

  exit(0);
}

_BYTE *sub_10006E428(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = strnlen(a1, 0x100uLL);
  if (v2 < 256)
  {
    v3 = strdup(a1);
    if (v2 < 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = malloc_type_malloc(0x100uLL, 0xEC1E16DAuLL);
    __strlcpy_chk();
    v2 = 255;
  }

  for (i = 0; i != v2; ++i)
  {
    if (v3[i] - 9 <= 1)
    {
      v3[i] = 32;
    }
  }

  return v3;
}

void sub_10006E4E0(void *a1)
{
  v1 = a1;
  v2 = [v1 total];
  if (![v2 num_missing_load_info])
  {
    v3 = [v1 total];
    if (![v3 num_out_of_order])
    {
      v15 = [v1 bytes_not_microstackshots];

      if (!v15)
      {
        goto LABEL_82;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v4 = [v1 total];
  v5 = [v4 num_missing_load_info];

  if (v5)
  {
    if (byte_100117E80 == 1)
    {
      v6 = *__error();
      v7 = sub_100035B80();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1B50(v1);
      }

      *__error() = v6;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v9 = *__error();
      v10 = [v1 total];
      v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu microstackshots dropped due to missing load infos", [v10 num_missing_load_info]);

      if (v11)
      {
        CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
        if (CStringPtr)
        {
          v13 = CStringPtr;
          v14 = 0;
        }

        else
        {
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0xBCB12CAEuLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100117E88)
        {
          v18 = qword_100117E88;
        }

        else
        {
          v18 = __stderrp;
        }

        fprintf(v18, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v16 = sub_100035B80();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1BE0(v1);
        }

        if (qword_100117E88)
        {
          v17 = qword_100117E88;
        }

        else
        {
          v17 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
      }

      *__error() = v9;
    }
  }

  v19 = [v1 total];
  v20 = [v19 num_out_of_order];

  if (v20)
  {
    if (byte_100117E80 == 1)
    {
      v21 = *__error();
      v22 = sub_100035B80();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1C70(v1);
      }

      *__error() = v21;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v23 = *__error();
      v24 = [v1 total];
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu microstackshots dropped due to being out of order", [v24 num_out_of_order]);

      if (v25)
      {
        v26 = CFStringGetCStringPtr(v25, 0x8000100u);
        if (v26)
        {
          v27 = v26;
          v28 = 0;
        }

        else
        {
          v27 = malloc_type_calloc(0x400uLL, 1uLL, 0x725E7BBFuLL);
          CFStringGetCString(v25, v27, 1024, 0x8000100u);
          v28 = v27;
        }

        if (qword_100117E88)
        {
          v31 = qword_100117E88;
        }

        else
        {
          v31 = __stderrp;
        }

        fprintf(v31, "%s\n", v27);
        if (v28)
        {
          free(v28);
        }

        CFRelease(v25);
      }

      else
      {
        v29 = sub_100035B80();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1D00(v1);
        }

        if (qword_100117E88)
        {
          v30 = qword_100117E88;
        }

        else
        {
          v30 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v30);
      }

      *__error() = v23;
    }
  }

  if ([v1 bytes_not_microstackshots])
  {
    if (byte_100117E80 == 1)
    {
      v32 = *__error();
      v33 = sub_100035B80();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1D90(v1);
      }

      *__error() = v32;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v34 = *__error();
      v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu bytes of microstackshot data was invalid (ignored)", [v1 bytes_not_microstackshots]);
      if (v35)
      {
        v36 = v35;
        v37 = CFStringGetCStringPtr(v35, 0x8000100u);
        if (v37)
        {
          v38 = v37;
          v39 = 0;
        }

        else
        {
          v38 = malloc_type_calloc(0x400uLL, 1uLL, 0x510523D0uLL);
          CFStringGetCString(v36, v38, 1024, 0x8000100u);
          v39 = v38;
        }

        if (qword_100117E88)
        {
          v42 = qword_100117E88;
        }

        else
        {
          v42 = __stderrp;
        }

        fprintf(v42, "%s\n", v38);
        if (v39)
        {
          free(v39);
        }

        CFRelease(v36);
      }

      else
      {
        v40 = sub_100035B80();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1E10(v1);
        }

        if (qword_100117E88)
        {
          v41 = qword_100117E88;
        }

        else
        {
          v41 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
      }

      *__error() = v34;
    }
  }

LABEL_82:
  if (byte_100117E80 == 1)
  {
    v43 = *__error();
    v44 = sub_100035B80();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v357 = [v1 total];
      v360 = v43;
      v45 = [v357 bytes];
      v355 = [v1 total];
      v46 = &v45[[v355 bytes_duplicate]];
      v353 = [v1 total];
      v47 = [v353 bytes_out_of_order];
      v351 = [v1 total];
      v48 = &v46[[v351 bytes_missing_load_info] + v47];
      v49 = [v1 bytes_other_data];
      v270 = &v48[[v1 bytes_not_microstackshots] + v49];
      v349 = [v1 total];
      v50 = [v349 bytes];
      v347 = [v1 total];
      v51 = &v50[[v347 bytes_duplicate]];
      v345 = [v1 total];
      v52 = [v345 bytes_out_of_order];
      v343 = [v1 total];
      v262 = &v51[[v343 bytes_missing_load_info] + v52];
      v260 = [v1 bytes_other_data];
      v256 = [v1 bytes_not_microstackshots];
      v254 = [v1 num_microstackshots_filtered_out];
      v341 = [v1 total];
      v250 = [v341 count];
      v339 = [v1 total];
      v248 = [v339 bytes];
      v337 = [v1 total];
      v244 = [v337 num_load_infos];
      v335 = [v1 total];
      v240 = [v335 num_frames];
      v333 = [v1 total];
      v238 = [v333 num_duplicate];
      v331 = [v1 total];
      v234 = [v331 bytes_duplicate];
      v329 = [v1 total];
      v232 = [v329 num_out_of_order];
      v327 = [v1 total];
      v228 = [v327 bytes_out_of_order];
      v325 = [v1 total];
      v224 = [v325 num_missing_load_info];
      v323 = [v1 total];
      v222 = [v323 bytes_missing_load_info];
      v321 = [v1 interrupt];
      v218 = [v321 count];
      alloc = [v1 interrupt];
      v214 = [(__CFAllocator *)alloc bytes];
      v318 = [v1 interrupt];
      v212 = [v318 num_load_infos];
      v316 = [v1 interrupt];
      v208 = [v316 num_frames];
      v314 = [v1 interrupt];
      v204 = [v314 num_duplicate];
      v312 = [v1 interrupt];
      v202 = [v312 bytes_duplicate];
      v310 = [v1 interrupt];
      v198 = [v310 num_out_of_order];
      v308 = [v1 interrupt];
      v194 = [v308 bytes_out_of_order];
      v306 = [v1 interrupt];
      v192 = [v306 num_missing_load_info];
      v304 = [v1 interrupt];
      v188 = [v304 bytes_missing_load_info];
      v302 = [v1 timer];
      v186 = [v302 count];
      v300 = [v1 timer];
      v182 = [v300 bytes];
      v298 = [v1 timer];
      v178 = [v298 num_load_infos];
      v296 = [v1 timer];
      v176 = [v296 num_frames];
      v294 = [v1 timer];
      v172 = [v294 num_duplicate];
      v292 = [v1 timer];
      v168 = [v292 bytes_duplicate];
      v290 = [v1 timer];
      v164 = [v290 num_out_of_order];
      v288 = [v1 timer];
      v156 = [v288 bytes_out_of_order];
      v286 = [v1 timer];
      v150 = [v286 num_missing_load_info];
      v284 = [v1 timer];
      v146 = [v284 bytes_missing_load_info];
      v282 = [v1 io];
      v138 = [v282 count];
      v280 = [v1 io];
      v132 = [v280 bytes];
      v278 = [v1 io];
      v128 = [v278 num_load_infos];
      v276 = [v1 io];
      v122 = [v276 num_frames];
      v274 = [v1 io];
      v116 = [v274 num_duplicate];
      v272 = [v1 io];
      v112 = [v272 bytes_duplicate];
      v268 = [v1 io];
      v108 = [v268 num_out_of_order];
      v266 = [v1 io];
      v104 = [v266 bytes_out_of_order];
      v264 = [v1 io];
      v98 = [v264 num_missing_load_info];
      v258 = [v1 io];
      v94 = [v258 bytes_missing_load_info];
      v252 = [v1 pmi];
      v144 = [v252 count];
      v246 = [v1 pmi];
      v166 = [v246 bytes];
      v242 = [v1 pmi];
      v162 = [v242 num_load_infos];
      v236 = [v1 pmi];
      v158 = [v236 num_frames];
      v230 = [v1 pmi];
      v154 = [v230 num_duplicate];
      v226 = [v1 pmi];
      v148 = [v226 bytes_duplicate];
      v220 = [v1 pmi];
      v140 = [v220 num_out_of_order];
      v216 = [v1 pmi];
      v136 = [v216 bytes_out_of_order];
      v210 = [v1 pmi];
      v130 = [v210 num_missing_load_info];
      v206 = [v1 pmi];
      v126 = [v206 bytes_missing_load_info];
      v200 = [v1 macf];
      v120 = [v200 count];
      v196 = [v1 macf];
      v118 = [v196 bytes];
      v190 = [v1 macf];
      v114 = [v190 num_load_infos];
      v184 = [v1 macf];
      v110 = [v184 num_frames];
      v180 = [v1 macf];
      v106 = [v180 num_duplicate];
      v174 = [v1 macf];
      v102 = [v174 bytes_duplicate];
      v170 = [v1 macf];
      v100 = [v170 num_out_of_order];
      v160 = [v1 macf];
      v96 = [v160 bytes_out_of_order];
      v152 = [v1 macf];
      v93 = [v152 num_missing_load_info];
      v142 = [v1 macf];
      v91 = [v142 bytes_missing_load_info];
      v134 = [v1 unknown_type];
      v90 = [v134 count];
      v124 = [v1 unknown_type];
      v88 = [v124 bytes];
      v53 = [v1 unknown_type];
      v87 = [v53 num_load_infos];
      v54 = [v1 unknown_type];
      v86 = [v54 num_frames];
      v55 = [v1 unknown_type];
      v85 = [v55 num_duplicate];
      v56 = [v1 unknown_type];
      v84 = [v56 bytes_duplicate];
      v57 = [v1 unknown_type];
      v83 = [v57 num_out_of_order];
      v58 = [v1 unknown_type];
      v82 = [v58 bytes_out_of_order];
      v59 = [v1 unknown_type];
      v81 = [v59 num_missing_load_info];
      v60 = [v1 unknown_type];
      v61 = [v60 bytes_missing_load_info];
      v363 = v270;
      v365 = v262;
      v367 = v260;
      v369 = v256;
      v371 = v254;
      v373 = v250;
      v375 = v248;
      v377 = v244;
      v379 = v240;
      v381 = v238;
      v383 = v234;
      v385 = v232;
      v387 = v228;
      v389 = v224;
      v391 = v222;
      v393 = v218;
      v395 = v214;
      v397 = v212;
      v399 = v208;
      v401 = v204;
      v403 = v202;
      v405 = v198;
      v407 = v194;
      v409 = v192;
      v411 = v188;
      v413 = v186;
      v415 = v182;
      v417 = v178;
      v419 = v176;
      v421 = v172;
      v423 = v168;
      v425 = v164;
      v427 = v156;
      v429 = v150;
      v431 = v146;
      v433 = v138;
      v435 = v132;
      v437 = v128;
      v439 = v122;
      v441 = v116;
      v443 = v112;
      v445 = v108;
      v447 = v104;
      v449 = v98;
      v451 = v94;
      *buf = 134236928;
      v453 = v144;
      v364 = 2048;
      v366 = 2048;
      v368 = 2048;
      v370 = 2048;
      v372 = 2048;
      v374 = 2048;
      v376 = 2048;
      v378 = 2048;
      v380 = 2048;
      v382 = 2048;
      v384 = 2048;
      v386 = 2048;
      v388 = 2048;
      v390 = 2048;
      v392 = 2048;
      v394 = 2048;
      v396 = 2048;
      v398 = 2048;
      v400 = 2048;
      v402 = 2048;
      v404 = 2048;
      v406 = 2048;
      v408 = 2048;
      v410 = 2048;
      v412 = 2048;
      v414 = 2048;
      v416 = 2048;
      v418 = 2048;
      v420 = 2048;
      v422 = 2048;
      v424 = 2048;
      v426 = 2048;
      v428 = 2048;
      v430 = 2048;
      v432 = 2048;
      v434 = 2048;
      v436 = 2048;
      v438 = 2048;
      v440 = 2048;
      v442 = 2048;
      v444 = 2048;
      v446 = 2048;
      v448 = 2048;
      v450 = 2048;
      v452 = 2048;
      v454 = 2048;
      v455 = v166;
      v456 = 2048;
      v457 = v162;
      v458 = 2048;
      v459 = v158;
      v460 = 2048;
      v461 = v154;
      v462 = 2048;
      v463 = v148;
      v464 = 2048;
      v465 = v140;
      v466 = 2048;
      v467 = v136;
      v468 = 2048;
      v469 = v130;
      v470 = 2048;
      v471 = v126;
      v472 = 2048;
      v473 = v120;
      v474 = 2048;
      v475 = v118;
      v476 = 2048;
      v477 = v114;
      v478 = 2048;
      v479 = v110;
      v480 = 2048;
      v481 = v106;
      v482 = 2048;
      v483 = v102;
      v484 = 2048;
      v485 = v100;
      v486 = 2048;
      v487 = v96;
      v488 = 2048;
      v489 = v93;
      v490 = 0;
      v491 = 8;
      v492 = v91;
      v493 = 0;
      v494 = 8;
      v495 = v90;
      v496 = 0;
      v497 = 8;
      v498 = v88;
      v499 = 0;
      v500 = 8;
      v501 = v87;
      v502 = 0;
      v503 = 8;
      v504 = v86;
      v505 = 0;
      v506 = 8;
      v507 = v85;
      v508 = 0;
      v509 = 8;
      v510 = v84;
      v511 = 0;
      v512 = 8;
      v513 = v83;
      v514 = 0;
      v515 = 8;
      v516 = v82;
      v517 = 0;
      v518 = 8;
      v519 = v81;
      v520 = 0;
      v521 = 8;
      v522 = v61;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", buf, 0x2F0u);

      v43 = v360;
    }

    *__error() = v43;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v361 = *__error();
    log = [v1 total];
    v63 = [log bytes];
    v358 = [v1 total];
    v64 = &v63[[v358 bytes_duplicate]];
    v356 = [v1 total];
    v65 = [v356 bytes_out_of_order];
    v354 = [v1 total];
    v66 = &v64[[v354 bytes_missing_load_info] + v65];
    v67 = [v1 bytes_other_data];
    v311 = &v66[[v1 bytes_not_microstackshots] + v67];
    v352 = [v1 total];
    v68 = [v352 bytes];
    v350 = [v1 total];
    v69 = &v68[[v350 bytes_duplicate]];
    v348 = [v1 total];
    v70 = [v348 bytes_out_of_order];
    v346 = [v1 total];
    v303 = &v69[[v346 bytes_missing_load_info] + v70];
    v299 = [v1 bytes_other_data];
    v297 = [v1 bytes_not_microstackshots];
    v293 = [v1 num_microstackshots_filtered_out];
    v344 = [v1 total];
    v289 = [v344 count];
    v342 = [v1 total];
    v285 = [v342 bytes];
    v340 = [v1 total];
    v283 = [v340 num_load_infos];
    v338 = [v1 total];
    v279 = [v338 num_frames];
    v336 = [v1 total];
    v275 = [v336 num_duplicate];
    v334 = [v1 total];
    v271 = [v334 bytes_duplicate];
    v332 = [v1 total];
    v267 = [v332 num_out_of_order];
    v330 = [v1 total];
    v265 = [v330 bytes_out_of_order];
    v328 = [v1 total];
    v261 = [v328 num_missing_load_info];
    v326 = [v1 total];
    v257 = [v326 bytes_missing_load_info];
    v324 = [v1 interrupt];
    v253 = [v324 count];
    v322 = [v1 interrupt];
    v251 = [v322 bytes];
    v319 = [v1 interrupt];
    v247 = [v319 num_load_infos];
    v317 = [v1 interrupt];
    v243 = [v317 num_frames];
    v315 = [v1 interrupt];
    v239 = [v315 num_duplicate];
    v313 = [v1 interrupt];
    v235 = [v313 bytes_duplicate];
    v309 = [v1 interrupt];
    v233 = [v309 num_out_of_order];
    v307 = [v1 interrupt];
    v229 = [v307 bytes_out_of_order];
    v305 = [v1 interrupt];
    v225 = [v305 num_missing_load_info];
    v301 = [v1 interrupt];
    v221 = [v301 bytes_missing_load_info];
    v295 = [v1 timer];
    v217 = [v295 count];
    v291 = [v1 timer];
    v215 = [v291 bytes];
    v287 = [v1 timer];
    v211 = [v287 num_load_infos];
    v281 = [v1 timer];
    v207 = [v281 num_frames];
    v277 = [v1 timer];
    v203 = [v277 num_duplicate];
    v273 = [v1 timer];
    v201 = [v273 bytes_duplicate];
    v269 = [v1 timer];
    v197 = [v269 num_out_of_order];
    v263 = [v1 timer];
    v193 = [v263 bytes_out_of_order];
    v259 = [v1 timer];
    v189 = [v259 num_missing_load_info];
    v255 = [v1 timer];
    v185 = [v255 bytes_missing_load_info];
    v249 = [v1 io];
    v183 = [v249 count];
    v245 = [v1 io];
    v179 = [v245 bytes];
    v241 = [v1 io];
    v175 = [v241 num_load_infos];
    v237 = [v1 io];
    v171 = [v237 num_frames];
    v231 = [v1 io];
    v167 = [v231 num_duplicate];
    v227 = [v1 io];
    v165 = [v227 bytes_duplicate];
    v223 = [v1 io];
    v161 = [v223 num_out_of_order];
    v219 = [v1 io];
    v157 = [v219 bytes_out_of_order];
    v213 = [v1 io];
    v153 = [v213 num_missing_load_info];
    v209 = [v1 io];
    v151 = [v209 bytes_missing_load_info];
    v205 = [v1 pmi];
    v147 = [v205 count];
    v199 = [v1 pmi];
    v143 = [v199 bytes];
    v195 = [v1 pmi];
    v139 = [v195 num_load_infos];
    v191 = [v1 pmi];
    v135 = [v191 num_frames];
    v187 = [v1 pmi];
    v133 = [v187 num_duplicate];
    v181 = [v1 pmi];
    v129 = [v181 bytes_duplicate];
    v177 = [v1 pmi];
    v125 = [v177 num_out_of_order];
    v173 = [v1 pmi];
    v121 = [v173 bytes_out_of_order];
    v169 = [v1 pmi];
    v117 = [v169 num_missing_load_info];
    v163 = [v1 pmi];
    v115 = [v163 bytes_missing_load_info];
    v159 = [v1 macf];
    v111 = [v159 count];
    v155 = [v1 macf];
    v107 = [v155 bytes];
    v149 = [v1 macf];
    v103 = [v149 num_load_infos];
    v145 = [v1 macf];
    v101 = [v145 num_frames];
    v141 = [v1 macf];
    v97 = [v141 num_duplicate];
    v137 = [v1 macf];
    [v137 bytes_duplicate];
    v131 = [v1 macf];
    [v131 num_out_of_order];
    v127 = [v1 macf];
    [v127 bytes_out_of_order];
    v123 = [v1 macf];
    [v123 num_missing_load_info];
    v119 = [v1 macf];
    [v119 bytes_missing_load_info];
    v113 = [v1 unknown_type];
    [v113 count];
    v109 = [v1 unknown_type];
    [v109 bytes];
    v105 = [v1 unknown_type];
    [v105 num_load_infos];
    v99 = [v1 unknown_type];
    [v99 num_frames];
    v95 = [v1 unknown_type];
    [v95 num_duplicate];
    v92 = [v1 unknown_type];
    [v92 bytes_duplicate];
    v89 = [v1 unknown_type];
    [v89 num_out_of_order];
    v71 = [v1 unknown_type];
    [v71 bytes_out_of_order];
    v72 = [v1 unknown_type];
    [v72 num_missing_load_info];
    v73 = [v1 unknown_type];
    [v73 bytes_missing_load_info];
    v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", v311, v303, v299, v297, v293, v289, v285, v283, v279, v275, v271, v267, v265, v261, v257, v253, v251, v247, v243, v239, v235, v233, v229, v225, v221, v217, v215, v211, v207, v203, v201, v197, v193, v189, v185, v183, v179, v175, v171, v167, v165, v161, v157, v153, v151, v147, v143, v139, v135, v133, v129, v125, v121, v117, v115, v111, v107, v103, v101, v97);

    if (v74)
    {
      v75 = CFStringGetCStringPtr(v74, 0x8000100u);
      if (v75)
      {
        v76 = v75;
        v77 = 0;
      }

      else
      {
        v76 = malloc_type_calloc(0x400uLL, 1uLL, 0x2CD3BB1AuLL);
        CFStringGetCString(v74, v76, 1024, 0x8000100u);
        v77 = v76;
      }

      if (qword_100117E88)
      {
        v80 = qword_100117E88;
      }

      else
      {
        v80 = __stderrp;
      }

      fprintf(v80, "%s\n", v76);
      if (v77)
      {
        free(v77);
      }

      CFRelease(v74);
    }

    else
    {
      v78 = sub_100035B80();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1E90(v1, v78);
      }

      if (qword_100117E88)
      {
        v79 = qword_100117E88;
      }

      else
      {
        v79 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v79);
    }

    *__error() = v361;
  }
}

void sub_10007068C(uint64_t a1)
{
  dispatch_group_leave(qword_100117ED0);
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void sub_1000706D0(id a1)
{
  if (byte_100117E80 == 1)
  {
    v1 = *__error();
    v2 = sub_100035B80();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Timed out, exiting", buf, 2u);
    }

    *__error() = v1;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v4 = *__error();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out, exiting");
    if (v5)
    {
      v8 = v5;
      CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
      if (CStringPtr)
      {
        v10 = CStringPtr;
        v11 = 0;
      }

      else
      {
        v10 = malloc_type_calloc(0x400uLL, 1uLL, 0x63B76DDFuLL);
        CFStringGetCString(v8, v10, 1024, 0x8000100u);
        v11 = v10;
      }

      if (qword_100117E88)
      {
        v12 = qword_100117E88;
      }

      else
      {
        v12 = __stderrp;
      }

      fprintf(v12, "%s\n", v10);
      if (v11)
      {
        free(v11);
      }

      CFRelease(v8);
    }

    else
    {
      v6 = sub_100035B80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v13 = 0;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Unable to format: Timed out, exiting", v13, 2u);
      }

      if (qword_100117E88)
      {
        v7 = qword_100117E88;
      }

      else
      {
        v7 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v7);
    }

    *__error() = v4;
  }

  exit(75);
}

void sub_1000708C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEvent:@"shutdown stall"];
  [v3 setEventNote:0];
  if (*(a1 + 32))
  {
    v4 = [NSString stringWithUTF8String:?];
    [v3 setSignature:v4];
  }

  else
  {
    [v3 setSignature:?];
  }

  if (*(a1 + 40))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v3 setReason:v5];
  }

  else
  {
    [v3 setReason:?];
  }

  if (*(a1 + 56))
  {
    v6 = [NSString stringWithFormat:@"sampling started after %d seconds", *(a1 + 56)];
    [v3 setDurationNote:v6];
  }

  else
  {
    [v3 setDurationNote:0];
  }

  [v3 setExtraDuration:*(a1 + 56)];
  [v3 setStepsNote:0];
  [v3 setSanitizePaths:0];
  [v3 setOmitThirdPartyProcessStacks:0];
  [v3 setIncludeBinaryFormatInReport:1];
  [v3 setIncludeTextualFormatInReport:0];
  v7 = objc_alloc_init(NSMutableString);
  v8 = sub_100034124();
  v9 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  v10 = proc_listallpids(v9, 4 * v8);
  if (v10 == -1)
  {
    if (byte_100117E80)
    {
      v21 = *__error();
      v22 = sub_100035B80();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2EB0();
      }

      *__error() = v21;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v23 = *__error();
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get pid list: %d (%s)", v24, v26);
      if (v27)
      {
        v28 = v27;
        v29 = v7;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          v31 = CStringPtr;
          v32 = 0;
        }

        else
        {
          v31 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD0E1A04uLL);
          CFStringGetCString(v28, v31, 1024, 0x8000100u);
          v32 = v31;
        }

        if (qword_100117E88)
        {
          v312 = qword_100117E88;
        }

        else
        {
          v312 = __stderrp;
        }

        fprintf(v312, "%s\n", v31);
        if (v32)
        {
          free(v32);
        }

        CFRelease(v28);
        v7 = v29;
      }

      else
      {
        v307 = sub_100035B80();
        if (os_log_type_enabled(v307, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2F40();
        }

        if (qword_100117E88)
        {
          v308 = qword_100117E88;
        }

        else
        {
          v308 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v308);
      }

      *__error() = v23;
    }

    v313 = *__error();
    v314 = __error();
    [v7 appendFormat:@"Unable to get pid list for heap/ddt: %d %s\n", v313, strerror(*v314)];
  }

  else
  {
    v11 = v10;
    if (byte_100117E80)
    {
      v12 = *__error();
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v423 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running heap/ddt for all (%d) processes", buf, 8u);
      }

      *__error() = v12;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v14 = *__error();
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running heap/ddt for all (%d) processes", v11);
      if (v15)
      {
        v16 = v15;
        v17 = v7;
        v18 = CFStringGetCStringPtr(v15, 0x8000100u);
        if (v18)
        {
          v19 = v18;
          v20 = 0;
        }

        else
        {
          v19 = malloc_type_calloc(0x400uLL, 1uLL, 0xF30317A3uLL);
          CFStringGetCString(v16, v19, 1024, 0x8000100u);
          v20 = v19;
        }

        if (qword_100117E88)
        {
          v35 = qword_100117E88;
        }

        else
        {
          v35 = __stderrp;
        }

        fprintf(v35, "%s\n", v19);
        if (v20)
        {
          free(v20);
        }

        CFRelease(v16);
        v7 = v17;
      }

      else
      {
        v33 = sub_100035B80();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2CC4();
        }

        if (qword_100117E88)
        {
          v34 = qword_100117E88;
        }

        else
        {
          v34 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
      }

      *__error() = v14;
    }

    qsort_b(v9, v11, 4uLL, &stru_100109848);
    dsema = dispatch_semaphore_create(8);
    v36 = dispatch_group_create();
    v37 = *(a1 + 60);
    if (v37)
    {
      v38 = *(a1 + 48);
      if (v37 >= 11)
      {
        v38 = dispatch_time(v38, 1000000000 * (v37 - 10));
      }

      timeout = v38;
    }

    else
    {
      timeout = -1;
    }

    v379 = [[NSMutableArray alloc] initWithCapacity:2 * v11];
    if (v11 >= 1)
    {
      v39 = 0;
      v40 = v11;
      while (1)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v9[v39];
        if (v42 < 2 || v42 == getpid())
        {
          goto LABEL_130;
        }

        v43 = *(a1 + 60);
        if (v43)
        {
          v44 = *&qword_100117E78 + v43;
          if (v44 - CFAbsoluteTimeGetCurrent() < 10.0)
          {
LABEL_128:
            [NSString stringWithFormat:@"\nOut of time, skipping heap/ddt for %d\n", v9[v39]];
            goto LABEL_129;
          }
        }

        if (!sub_10002B3B0(v9[v39]))
        {
          [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v9[v39]];
          goto LABEL_129;
        }

        bzero(buf, 0x400uLL);
        if (proc_pidpath(v9[v39], buf, 0x400u) >= 1 && (strnstr(buf, "dext", 0x400uLL) || strnstr(buf, "/DriverExtensions/", 0x400uLL)))
        {
          [NSString stringWithFormat:@"[%d] is DriverKit, skipping heap/ddt\n", v9[v39]];
          v91 = LABEL_129:;
          [v379 addObject:v91];

          goto LABEL_130;
        }

        snprintf(__str, 8uLL, "%d", v9[v39]);
        if (qword_100117DF8 != -1)
        {
          sub_1000B2D34();
        }

        v45 = dsema;
        if (byte_100117DF0 == 1)
        {
          break;
        }

LABEL_127:
        if (dispatch_semaphore_wait(v45, timeout))
        {
          goto LABEL_128;
        }

        v92 = *(a1 + 60);
        if (v92)
        {
          v93 = *&qword_100117E78 + v92;
          if (v93 - CFAbsoluteTimeGetCurrent() < 10.0)
          {
            goto LABEL_145;
          }
        }

        if (!sub_10002B3B0(v9[v39]))
        {
          [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v9[v39]];
          v363 = a1;
          v107 = v11;
          v108 = v36;
          v110 = v109 = v45;
          [v379 addObject:v110];

          v106 = v109;
          v36 = v108;
          v11 = v107;
          a1 = v363;
          goto LABEL_148;
        }

        *v419 = "/usr/bin/heap";
        *&v419[8] = "--addresses=.*transaction.*";
        *&v419[16] = "--forkCorpseRetryTime=0";
        *&v420 = __str;
        *(&v420 + 1) = 0;
        v403 = -1;
        v402 = -1;
        v94 = SASpawnPlatformBinaryWithSigningIdentifier();
        group = v36;
        v358 = v7;
        if ((v94 & 0x80000000) == 0)
        {
          v336 = v94;
          if (byte_100117E80 == 1)
          {
            v95 = *__error();
            v96 = sub_100035B80();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              v170 = v9[v39];
              *v417 = 136315394;
              *&v417[4] = buf;
              *&v417[12] = 1024;
              *&v417[14] = v170;
              _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "Running heap for %s [%d]", v417, 0x12u);
            }

            *__error() = v95;
          }

          v361 = v11;
          if (byte_100117E81 == 1 && dword_100117510 <= 0)
          {
            v97 = *__error();
            v98 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running heap for %s [%d]", buf, v9[v39], 0);
            if (v98)
            {
              v99 = v98;
              cfa = v97;
              v100 = CFStringGetCStringPtr(v98, 0x8000100u);
              if (v100)
              {
                v101 = v100;
                v102 = 0;
              }

              else
              {
                v101 = malloc_type_calloc(0x400uLL, 1uLL, 0x73A8159DuLL);
                CFStringGetCString(v99, v101, 1024, 0x8000100u);
                v102 = v101;
              }

              if (qword_100117E88)
              {
                v136 = qword_100117E88;
              }

              else
              {
                v136 = __stderrp;
              }

              fprintf(v136, "%s\n", v101);
              if (v102)
              {
                free(v102);
              }

              CFRelease(v99);
              v97 = cfa;
            }

            else
            {
              v134 = sub_100035B80();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
              {
                v190 = v9[v39];
                *v417 = 136315394;
                *&v417[4] = buf;
                *&v417[12] = 1024;
                *&v417[14] = v190;
                _os_log_fault_impl(&_mh_execute_header, v134, OS_LOG_TYPE_FAULT, "Unable to format: Running heap for %s [%d]", v417, 0x12u);
              }

              if (qword_100117E88)
              {
                v135 = qword_100117E88;
              }

              else
              {
                v135 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v135);
            }

            *__error() = v97;
          }

          dispatch_group_enter(v36);
          v137 = [[NSMutableString alloc] initWithFormat:@"\nheap output for %s [%d]\nheap --addresses=.*transaction.* --forkCorpseRetryTime=0 %d\n", basename(buf), v9[v39], v9[v39]];
          [v379 addObject:v137];
          v138 = v403;
          cfi = v402;
          v396[0] = _NSConcreteStackBlock;
          v396[1] = 3221225472;
          v396[2] = sub_100073DB4;
          v396[3] = &unk_100109870;
          v400 = v9;
          v401 = v39;
          v139 = v137;
          v397 = v139;
          v140 = v36;
          v141 = dsema;
          v398 = dsema;
          v399 = v140;
          sub_100058738(v336, v138, cfi, 0, 0, v139, v396);

          v11 = v361;
          goto LABEL_197;
        }

        if ((v9[v39] & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v125 = *__error();
            v126 = sub_100035B80();
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              v369 = *__error();
              v201 = __error();
              v202 = strerror(*v201);
              *v417 = 67109378;
              *&v417[4] = v369;
              *&v417[8] = 2080;
              *&v417[10] = v202;
              _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "Unable to spawn heap: %d (%s)", v417, 0x12u);
            }

            *__error() = v125;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_196;
          }

          v364 = *__error();
          v127 = *__error();
          v128 = __error();
          v129 = strerror(*v128);
          v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn heap: %d (%s)", v127, v129, 0);
          if (v117)
          {
            goto LABEL_166;
          }

          v118 = sub_100035B80();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
          {
            v264 = *__error();
            v265 = __error();
            v266 = strerror(*v265);
            *v417 = 67109378;
            *&v417[4] = v264;
            *&v417[8] = 2080;
            *&v417[10] = v266;
            v122 = v118;
            v123 = "Unable to format: Unable to spawn heap: %d (%s)";
            v124 = 18;
            goto LABEL_344;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v111 = *__error();
            v112 = sub_100035B80();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              v345 = sub_100035B20(v9[v39]);
              v367 = v9[v39];
              cfg = *__error();
              v188 = __error();
              v189 = strerror(*v188);
              *v417 = 136446978;
              *&v417[4] = v345;
              *&v417[12] = 1024;
              *&v417[14] = v367;
              *&v417[18] = 1024;
              *&v417[20] = cfg;
              LOWORD(v418[0]) = 2080;
              *(v418 + 2) = v189;
              _os_log_error_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn heap: %d (%s)", v417, 0x22u);
            }

            *__error() = v111;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            goto LABEL_196;
          }

          v364 = *__error();
          v337 = sub_100035B20(v9[v39]);
          v113 = v9[v39];
          v114 = *__error();
          v115 = __error();
          v116 = strerror(*v115);
          v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn heap: %d (%s)", v337, v113, v114, v116);
          if (v117)
          {
LABEL_166:
            v130 = v117;
            v131 = CFStringGetCStringPtr(v117, 0x8000100u);
            v339 = v130;
            if (v131)
            {
              v132 = v131;
              v133 = 0;
            }

            else
            {
              v132 = malloc_type_calloc(0x400uLL, 1uLL, 0xCCCBD162uLL);
              CFStringGetCString(v130, v132, 1024, 0x8000100u);
              v133 = v132;
            }

            if (qword_100117E88)
            {
              v142 = qword_100117E88;
            }

            else
            {
              v142 = __stderrp;
            }

            fprintf(v142, "%s\n", v132);
            if (v133)
            {
              free(v133);
            }

            CFRelease(v339);
            goto LABEL_195;
          }

          v118 = sub_100035B80();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
          {
            cfh = sub_100035B20(v9[v39]);
            v338 = v9[v39];
            v119 = *__error();
            v120 = __error();
            v121 = strerror(*v120);
            *v417 = 136315906;
            *&v417[4] = cfh;
            *&v417[12] = 1024;
            *&v417[14] = v338;
            *&v417[18] = 1024;
            *&v417[20] = v119;
            LOWORD(v418[0]) = 2080;
            *(v418 + 2) = v121;
            v122 = v118;
            v123 = "Unable to format: %s [%d]: Unable to spawn heap: %d (%s)";
            v124 = 34;
LABEL_344:
            _os_log_fault_impl(&_mh_execute_header, v122, OS_LOG_TYPE_FAULT, v123, v417, v124);
          }
        }

        if (qword_100117E88)
        {
          v143 = qword_100117E88;
        }

        else
        {
          v143 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v143);
LABEL_195:
        *__error() = v364;
LABEL_196:
        v144 = v9[v39];
        v145 = *__error();
        v146 = __error();
        v147 = [NSString stringWithFormat:@"Unable to spawn heap for %d: %d %s\n", v144, v145, strerror(*v146)];
        [v379 addObject:v147];

        v141 = dsema;
        dispatch_semaphore_signal(dsema);
LABEL_197:
        v7 = v358;
        if (dispatch_semaphore_wait(v141, timeout))
        {
          v148 = [NSString stringWithFormat:@"\nOut of time, skipping ddt for %d\n", v9[v39]];
          [v379 addObject:v148];
        }

        else
        {
          v149 = *(a1 + 60);
          if (v149 && (v150 = *&qword_100117E78 + v149, v150 - CFAbsoluteTimeGetCurrent() < 10.0))
          {
            [NSString stringWithFormat:@"\nOut of time, skipping ddt for %d\n", v9[v39]];
          }

          else
          {
            if (sub_10002B3B0(v9[v39]))
            {
              v414 = "/usr/local/bin/ddt";
              v415 = __str;
              v416 = 0;
              v395 = -1;
              v394 = -1;
              v151 = SASpawnPlatformBinaryWithSigningIdentifier();
              if ((v151 & 0x80000000) == 0)
              {
                v365 = v151;
                v36 = group;
                if (byte_100117E80 == 1)
                {
                  v152 = *__error();
                  v153 = sub_100035B80();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                  {
                    v208 = v9[v39];
                    *v417 = 136315394;
                    *&v417[4] = buf;
                    *&v417[12] = 1024;
                    *&v417[14] = v208;
                    _os_log_debug_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEBUG, "Running ddt for %s [%d]", v417, 0x12u);
                  }

                  *__error() = v152;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 0)
                {
                  v154 = *__error();
                  v155 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running ddt for %s [%d]", buf, v9[v39], 0);
                  if (v155)
                  {
                    v156 = v155;
                    cfb = v154;
                    v157 = CFStringGetCStringPtr(v155, 0x8000100u);
                    if (v157)
                    {
                      v158 = v157;
                      v340 = 0;
                    }

                    else
                    {
                      v158 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4BC0CAuLL);
                      CFStringGetCString(v156, v158, 1024, 0x8000100u);
                      v340 = v158;
                    }

                    if (qword_100117E88)
                    {
                      v184 = qword_100117E88;
                    }

                    else
                    {
                      v184 = __stderrp;
                    }

                    fprintf(v184, "%s\n", v158);
                    if (v340)
                    {
                      free(v340);
                    }

                    CFRelease(v156);
                    v154 = cfb;
                  }

                  else
                  {
                    v182 = sub_100035B80();
                    if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                    {
                      v274 = v9[v39];
                      *v417 = 136315394;
                      *&v417[4] = buf;
                      *&v417[12] = 1024;
                      *&v417[14] = v274;
                      _os_log_fault_impl(&_mh_execute_header, v182, OS_LOG_TYPE_FAULT, "Unable to format: Running ddt for %s [%d]", v417, 0x12u);
                    }

                    if (qword_100117E88)
                    {
                      v183 = qword_100117E88;
                    }

                    else
                    {
                      v183 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v183);
                  }

                  *__error() = v154;
                }

                dispatch_group_enter(group);
                v185 = [[NSMutableString alloc] initWithFormat:@"\nddt output for %s [%d]\nddt %d\n", basename(buf), v9[v39], v9[v39]];
                [v379 addObject:v185];
                v186 = v395;
                v344 = v394;
                v388[0] = _NSConcreteStackBlock;
                v388[1] = 3221225472;
                v388[2] = sub_10007426C;
                v388[3] = &unk_100109870;
                v392 = v9;
                v393 = v39;
                v187 = v185;
                v389 = v187;
                v390 = dsema;
                v391 = group;
                sub_100058738(v365, v186, v344, 0, 0, v187, v388);

LABEL_274:
                v410 = "/usr/bin/swift-inspect";
                v411 = "dump-concurrency";
                v412 = __str;
                v413 = 0;
                v387 = -1;
                v386 = -1;
                v214 = SASpawnPlatformBinaryWithSigningIdentifier();
                if ((v214 & 0x80000000) == 0)
                {
                  v371 = v214;
                  if (byte_100117E80 == 1)
                  {
                    v215 = *__error();
                    v216 = sub_100035B80();
                    if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
                    {
                      v258 = v9[v39];
                      *v417 = 136315394;
                      *&v417[4] = buf;
                      *&v417[12] = 1024;
                      *&v417[14] = v258;
                      _os_log_debug_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEBUG, "Running swift-inspect dump-concurrency for %s [%d]", v417, 0x12u);
                    }

                    *__error() = v215;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 0)
                  {
                    v217 = *__error();
                    v218 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running swift-inspect dump-concurrency for %s [%d]", buf, v9[v39], 0);
                    if (v218)
                    {
                      v219 = v218;
                      cfc = v217;
                      v220 = CFStringGetCStringPtr(v218, 0x8000100u);
                      if (v220)
                      {
                        v221 = v220;
                        v348 = 0;
                      }

                      else
                      {
                        v221 = malloc_type_calloc(0x400uLL, 1uLL, 0x32399560uLL);
                        CFStringGetCString(v219, v221, 1024, 0x8000100u);
                        v348 = v221;
                      }

                      if (qword_100117E88)
                      {
                        v244 = qword_100117E88;
                      }

                      else
                      {
                        v244 = __stderrp;
                      }

                      fprintf(v244, "%s\n", v221);
                      if (v348)
                      {
                        free(v348);
                      }

                      CFRelease(v219);
                      v217 = cfc;
                    }

                    else
                    {
                      v242 = sub_100035B80();
                      if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                      {
                        v275 = v9[v39];
                        *v417 = 136315394;
                        *&v417[4] = buf;
                        *&v417[12] = 1024;
                        *&v417[14] = v275;
                        _os_log_fault_impl(&_mh_execute_header, v242, OS_LOG_TYPE_FAULT, "Unable to format: Running swift-inspect dump-concurrency for %s [%d]", v417, 0x12u);
                      }

                      if (qword_100117E88)
                      {
                        v243 = qword_100117E88;
                      }

                      else
                      {
                        v243 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v243);
                    }

                    *__error() = v217;
                  }

                  dispatch_group_enter(v36);
                  v245 = [[NSMutableString alloc] initWithFormat:@"\nswift-inspect dump-concurrency output for %s [%d]\nswift-inspect dump-concurrency %d\n", basename(buf), v9[v39], v9[v39]];
                  [v379 addObject:v245];
                  v246 = v387;
                  v352 = v386;
                  v380[0] = _NSConcreteStackBlock;
                  v380[1] = 3221225472;
                  v380[2] = sub_100074724;
                  v380[3] = &unk_100109870;
                  v384 = v9;
                  v385 = v39;
                  v247 = v245;
                  v381 = v247;
                  v382 = dsema;
                  v383 = v36;
                  sub_100058738(v371, v246, v352, 0, 0, v247, v380);

                  goto LABEL_342;
                }

                if ((v9[v39] & 0x80000000) != 0)
                {
                  if (byte_100117E80)
                  {
                    v232 = *__error();
                    v233 = sub_100035B80();
                    if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
                    {
                      v376 = *__error();
                      v278 = __error();
                      v279 = strerror(*v278);
                      *v417 = 67109378;
                      *&v417[4] = v376;
                      *&v417[8] = 2080;
                      *&v417[10] = v279;
                      _os_log_error_impl(&_mh_execute_header, v233, OS_LOG_TYPE_ERROR, "Unable to spawn swift-inspect: %d (%s)", v417, 0x12u);
                    }

                    *__error() = v232;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v372 = *__error();
                    v234 = *__error();
                    v235 = __error();
                    v236 = strerror(*v235);
                    v237 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn swift-inspect: %d (%s)", v234, v236, 0);
                    if (v237)
                    {
                      v238 = v237;
                      v239 = CFStringGetCStringPtr(v237, 0x8000100u);
                      v351 = v238;
                      if (v239)
                      {
                        v240 = v239;
                        v241 = 0;
                      }

                      else
                      {
                        v240 = malloc_type_calloc(0x400uLL, 1uLL, 0x61084FFEuLL);
                        CFStringGetCString(v238, v240, 1024, 0x8000100u);
                        v241 = v240;
                      }

                      if (qword_100117E88)
                      {
                        v259 = qword_100117E88;
                      }

                      else
                      {
                        v259 = __stderrp;
                      }

                      fprintf(v259, "%s\n", v240);
                      if (v241)
                      {
                        free(v241);
                      }

                      v256 = v351;
LABEL_339:
                      CFRelease(v256);
                    }

                    else
                    {
                      v248 = sub_100035B80();
                      if (os_log_type_enabled(v248, OS_LOG_TYPE_FAULT))
                      {
                        v283 = *__error();
                        v284 = __error();
                        v285 = strerror(*v284);
                        *v417 = 67109378;
                        *&v417[4] = v283;
                        *&v417[8] = 2080;
                        *&v417[10] = v285;
                        v252 = v248;
                        v253 = "Unable to format: Unable to spawn swift-inspect: %d (%s)";
                        v254 = 18;
LABEL_350:
                        _os_log_fault_impl(&_mh_execute_header, v252, OS_LOG_TYPE_FAULT, v253, v417, v254);
                      }

LABEL_328:

                      if (qword_100117E88)
                      {
                        v257 = qword_100117E88;
                      }

                      else
                      {
                        v257 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v257);
                    }

                    *__error() = v372;
                  }
                }

                else
                {
                  if (byte_100117E80)
                  {
                    v222 = *__error();
                    v223 = sub_100035B80();
                    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
                    {
                      v355 = sub_100035B20(v9[v39]);
                      v374 = v9[v39];
                      cfl = *__error();
                      v272 = __error();
                      v273 = strerror(*v272);
                      *v417 = 136446978;
                      *&v417[4] = v355;
                      *&v417[12] = 1024;
                      *&v417[14] = v374;
                      *&v417[18] = 1024;
                      *&v417[20] = cfl;
                      LOWORD(v418[0]) = 2080;
                      *(v418 + 2) = v273;
                      _os_log_error_impl(&_mh_execute_header, v223, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn swift-inspect: %d (%s)", v417, 0x22u);
                    }

                    *__error() = v222;
                  }

                  if (byte_100117E81 == 1 && dword_100117510 <= 3)
                  {
                    v372 = *__error();
                    v349 = sub_100035B20(v9[v39]);
                    v224 = v9[v39];
                    v225 = *__error();
                    v226 = __error();
                    v227 = strerror(*v226);
                    v228 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn swift-inspect: %d (%s)", v349, v224, v225, v227);
                    if (v228)
                    {
                      v229 = v228;
                      v230 = CFStringGetCStringPtr(v228, 0x8000100u);
                      if (v230)
                      {
                        v231 = v230;
                        v350 = 0;
                      }

                      else
                      {
                        v231 = malloc_type_calloc(0x400uLL, 1uLL, 0x61084FFEuLL);
                        CFStringGetCString(v229, v231, 1024, 0x8000100u);
                        v350 = v231;
                      }

                      if (qword_100117E88)
                      {
                        v255 = qword_100117E88;
                      }

                      else
                      {
                        v255 = __stderrp;
                      }

                      fprintf(v255, "%s\n", v231);
                      if (v350)
                      {
                        free(v350);
                      }

                      v256 = v229;
                      goto LABEL_339;
                    }

                    v248 = sub_100035B80();
                    if (os_log_type_enabled(v248, OS_LOG_TYPE_FAULT))
                    {
                      cfm = sub_100035B20(v9[v39]);
                      v353 = v9[v39];
                      v249 = *__error();
                      v250 = __error();
                      v251 = strerror(*v250);
                      *v417 = 136315906;
                      *&v417[4] = cfm;
                      *&v417[12] = 1024;
                      *&v417[14] = v353;
                      *&v417[18] = 1024;
                      *&v417[20] = v249;
                      LOWORD(v418[0]) = 2080;
                      *(v418 + 2) = v251;
                      v252 = v248;
                      v253 = "Unable to format: %s [%d]: Unable to spawn swift-inspect: %d (%s)";
                      v254 = 34;
                      goto LABEL_350;
                    }

                    goto LABEL_328;
                  }
                }

                v260 = v9[v39];
                v261 = *__error();
                v262 = __error();
                v263 = [NSString stringWithFormat:@"Unable to spawn swift-inspect for %d: %d %s\n", v260, v261, strerror(*v262)];
                [v379 addObject:v263];

                dispatch_semaphore_signal(dsema);
LABEL_342:
                v7 = v358;
                goto LABEL_130;
              }

              if ((v9[v39] & 0x80000000) != 0)
              {
                v36 = group;
                if (byte_100117E80)
                {
                  v171 = *__error();
                  v172 = sub_100035B80();
                  if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                  {
                    v375 = *__error();
                    v276 = __error();
                    v277 = strerror(*v276);
                    *v417 = 67109378;
                    *&v417[4] = v375;
                    *&v417[8] = 2080;
                    *&v417[10] = v277;
                    _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "Unable to spawn ddt: %d (%s)", v417, 0x12u);
                  }

                  *__error() = v171;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v366 = *__error();
                  v173 = *__error();
                  v174 = __error();
                  v175 = strerror(*v174);
                  v176 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn ddt: %d (%s)", v173, v175, 0);
                  if (v176)
                  {
                    v177 = v176;
                    v178 = CFStringGetCStringPtr(v176, 0x8000100u);
                    v343 = v177;
                    if (v178)
                    {
                      v179 = v178;
                      v180 = 0;
                    }

                    else
                    {
                      v179 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E280EC6uLL);
                      CFStringGetCString(v177, v179, 1024, 0x8000100u);
                      v180 = v179;
                    }

                    if (qword_100117E88)
                    {
                      v209 = qword_100117E88;
                    }

                    else
                    {
                      v209 = __stderrp;
                    }

                    fprintf(v209, "%s\n", v179);
                    if (v180)
                    {
                      free(v180);
                    }

                    v206 = v343;
LABEL_271:
                    CFRelease(v206);
                  }

                  else
                  {
                    v194 = sub_100035B80();
                    if (os_log_type_enabled(v194, OS_LOG_TYPE_FAULT))
                    {
                      v280 = *__error();
                      v281 = __error();
                      v282 = strerror(*v281);
                      *v417 = 67109378;
                      *&v417[4] = v280;
                      *&v417[8] = 2080;
                      *&v417[10] = v282;
                      v198 = v194;
                      v199 = "Unable to format: Unable to spawn ddt: %d (%s)";
                      v200 = 18;
LABEL_348:
                      _os_log_fault_impl(&_mh_execute_header, v198, OS_LOG_TYPE_FAULT, v199, v417, v200);
                    }

LABEL_260:

                    if (qword_100117E88)
                    {
                      v207 = qword_100117E88;
                    }

                    else
                    {
                      v207 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v207);
                  }

                  *__error() = v366;
                }
              }

              else
              {
                v36 = group;
                if (byte_100117E80)
                {
                  v160 = *__error();
                  v161 = sub_100035B80();
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                  {
                    v354 = sub_100035B20(v9[v39]);
                    v373 = v9[v39];
                    cfj = *__error();
                    v270 = __error();
                    v271 = strerror(*v270);
                    *v417 = 136446978;
                    *&v417[4] = v354;
                    *&v417[12] = 1024;
                    *&v417[14] = v373;
                    *&v417[18] = 1024;
                    *&v417[20] = cfj;
                    LOWORD(v418[0]) = 2080;
                    *(v418 + 2) = v271;
                    _os_log_error_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn ddt: %d (%s)", v417, 0x22u);
                  }

                  *__error() = v160;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v366 = *__error();
                  v341 = sub_100035B20(v9[v39]);
                  v162 = v9[v39];
                  v163 = *__error();
                  v164 = __error();
                  v165 = strerror(*v164);
                  v166 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn ddt: %d (%s)", v341, v162, v163, v165);
                  if (v166)
                  {
                    v167 = v166;
                    v168 = CFStringGetCStringPtr(v166, 0x8000100u);
                    if (v168)
                    {
                      v169 = v168;
                      v342 = 0;
                    }

                    else
                    {
                      v169 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E280EC6uLL);
                      CFStringGetCString(v167, v169, 1024, 0x8000100u);
                      v342 = v169;
                    }

                    if (qword_100117E88)
                    {
                      v205 = qword_100117E88;
                    }

                    else
                    {
                      v205 = __stderrp;
                    }

                    fprintf(v205, "%s\n", v169);
                    if (v342)
                    {
                      free(v342);
                    }

                    v206 = v167;
                    goto LABEL_271;
                  }

                  v194 = sub_100035B80();
                  if (os_log_type_enabled(v194, OS_LOG_TYPE_FAULT))
                  {
                    cfk = sub_100035B20(v9[v39]);
                    v347 = v9[v39];
                    v195 = *__error();
                    v196 = __error();
                    v197 = strerror(*v196);
                    *v417 = 136315906;
                    *&v417[4] = cfk;
                    *&v417[12] = 1024;
                    *&v417[14] = v347;
                    *&v417[18] = 1024;
                    *&v417[20] = v195;
                    LOWORD(v418[0]) = 2080;
                    *(v418 + 2) = v197;
                    v198 = v194;
                    v199 = "Unable to format: %s [%d]: Unable to spawn ddt: %d (%s)";
                    v200 = 34;
                    goto LABEL_348;
                  }

                  goto LABEL_260;
                }
              }

              v210 = v9[v39];
              v211 = *__error();
              v212 = __error();
              v213 = [NSString stringWithFormat:@"Unable to spawn ddt for %d: %d %s\n", v210, v211, strerror(*v212)];
              [v379 addObject:v213];

              dispatch_semaphore_signal(dsema);
              goto LABEL_274;
            }

            [NSString stringWithFormat:@"[%d] has exited, cannot take ddt\n", v9[v39]];
          }
          v159 = ;
          [v379 addObject:v159];

          dispatch_semaphore_signal(v141);
        }

        v36 = group;
LABEL_130:
        objc_autoreleasePoolPop(v41);
        if (v40 == ++v39)
        {
          goto LABEL_351;
        }
      }

      if (dispatch_semaphore_wait(dsema, timeout))
      {
        goto LABEL_128;
      }

      v46 = *(a1 + 60);
      if (v46)
      {
        v47 = *&qword_100117E78 + v46;
        if (v47 - CFAbsoluteTimeGetCurrent() < 10.0)
        {
LABEL_145:
          [NSString stringWithFormat:@"\nOut of time, skipping heap/ddt for %d\n", v9[v39]];
          goto LABEL_146;
        }
      }

      if (!sub_10002B3B0(v9[v39]))
      {
        [NSString stringWithFormat:@"[%d] has exited, cannot take heap/ddt\n", v9[v39]];
LABEL_146:
        v362 = v11;
        v103 = v36;
        v105 = v104 = v45;
        [v379 addObject:v105];

        v106 = v104;
        v36 = v103;
        v11 = v362;
LABEL_148:
        dispatch_semaphore_signal(v106);
        goto LABEL_130;
      }

      *v417 = "/usr/bin/leaks";
      *&v417[8] = "--outputGraph=/var/tmp/";
      *&v417[16] = __str;
      v418[0] = 0;
      LODWORD(v410) = -1;
      LODWORD(v414) = -1;
      v48 = SASpawnPlatformBinaryWithSigningIdentifier();
      v357 = v7;
      if ((v48 & 0x80000000) == 0)
      {
        v359 = v48;
        if (byte_100117E80 == 1)
        {
          v49 = *__error();
          v50 = sub_100035B80();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v181 = v9[v39];
            *v419 = 136315394;
            *&v419[4] = buf;
            *&v419[12] = 1024;
            *&v419[14] = v181;
            _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Running leaks for %s [%d]", v419, 0x12u);
          }

          *__error() = v49;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 0)
        {
          v51 = *__error();
          v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Running leaks for %s [%d]", buf, v9[v39], 0);
          if (v52)
          {
            v331 = v51;
            v53 = v52;
            v54 = CFStringGetCStringPtr(v52, 0x8000100u);
            cf = v53;
            if (v54)
            {
              v55 = v54;
              v56 = 0;
            }

            else
            {
              v55 = malloc_type_calloc(0x400uLL, 1uLL, 0xB5895E43uLL);
              CFStringGetCString(v53, v55, 1024, 0x8000100u);
              v56 = v55;
            }

            if (qword_100117E88)
            {
              v82 = qword_100117E88;
            }

            else
            {
              v82 = __stderrp;
            }

            fprintf(v82, "%s\n", v55);
            if (v56)
            {
              free(v56);
            }

            CFRelease(cf);
            v51 = v331;
          }

          else
          {
            v80 = sub_100035B80();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
            {
              v193 = v9[v39];
              *v419 = 136315394;
              *&v419[4] = buf;
              *&v419[12] = 1024;
              *&v419[14] = v193;
              _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, "Unable to format: Running leaks for %s [%d]", v419, 0x12u);
            }

            if (qword_100117E88)
            {
              v81 = qword_100117E88;
            }

            else
            {
              v81 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
          }

          *__error() = v51;
        }

        dispatch_group_enter(v36);
        v83 = [[NSMutableString alloc] initWithFormat:@"\nGenerating memgraph for %s [%d]\nleaks --outputGraph=/var/tmp/ %d\n", basename(buf), v9[v39], v9[v39]];
        [v379 addObject:v83];
        v335 = v410;
        cff = v414;
        v404[0] = _NSConcreteStackBlock;
        v404[1] = 3221225472;
        v404[2] = sub_1000738FC;
        v404[3] = &unk_100109870;
        v408 = v9;
        v409 = v39;
        v84 = v83;
        v405 = v84;
        v406 = dsema;
        v407 = v36;
        sub_100058738(v359, v335, cff, 0, 0, v84, v404);

        v45 = dsema;
        goto LABEL_126;
      }

      if ((v9[v39] & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v71 = *__error();
          v72 = sub_100035B80();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v370 = *__error();
            v203 = __error();
            v204 = strerror(*v203);
            *v419 = 67109378;
            *&v419[4] = v370;
            *&v419[8] = 2080;
            *&v419[10] = v204;
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Unable to spawn leaks: %d (%s)", v419, 0x12u);
          }

          *__error() = v71;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_125;
        }

        v360 = *__error();
        v73 = *__error();
        v74 = __error();
        v75 = strerror(*v74);
        v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to spawn leaks: %d (%s)", v73, v75, 0);
        if (!v63)
        {
          v64 = sub_100035B80();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            v267 = *__error();
            v268 = __error();
            v269 = strerror(*v268);
            *v419 = 67109378;
            *&v419[4] = v267;
            *&v419[8] = 2080;
            *&v419[10] = v269;
            v68 = v64;
            v69 = "Unable to format: Unable to spawn leaks: %d (%s)";
            v70 = 18;
            goto LABEL_346;
          }

LABEL_120:

          if (qword_100117E88)
          {
            v86 = qword_100117E88;
          }

          else
          {
            v86 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v86);
LABEL_124:
          *__error() = v360;
LABEL_125:
          v87 = v9[v39];
          v88 = *__error();
          v89 = __error();
          v90 = [NSString stringWithFormat:@"Unable to spawn leaks for %d: %d %s\n", v87, v88, strerror(*v89)];
          [v379 addObject:v90];

          v45 = dsema;
          dispatch_semaphore_signal(dsema);
LABEL_126:
          v7 = v357;
          goto LABEL_127;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v57 = *__error();
          v58 = sub_100035B80();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v346 = sub_100035B20(v9[v39]);
            v368 = v9[v39];
            cfd = *__error();
            v191 = __error();
            v192 = strerror(*v191);
            *v419 = 136446978;
            *&v419[4] = v346;
            *&v419[12] = 1024;
            *&v419[14] = v368;
            *&v419[18] = 1024;
            *&v419[20] = cfd;
            LOWORD(v420) = 2080;
            *(&v420 + 2) = v192;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to spawn leaks: %d (%s)", v419, 0x22u);
          }

          *__error() = v57;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 3)
        {
          goto LABEL_125;
        }

        v360 = *__error();
        v332 = sub_100035B20(v9[v39]);
        v59 = v9[v39];
        v60 = *__error();
        v61 = __error();
        v62 = strerror(*v61);
        v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to spawn leaks: %d (%s)", v332, v59, v60, v62);
        if (!v63)
        {
          v64 = sub_100035B80();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            cfe = sub_100035B20(v9[v39]);
            v333 = v9[v39];
            v65 = *__error();
            v66 = __error();
            v67 = strerror(*v66);
            *v419 = 136315906;
            *&v419[4] = cfe;
            *&v419[12] = 1024;
            *&v419[14] = v333;
            *&v419[18] = 1024;
            *&v419[20] = v65;
            LOWORD(v420) = 2080;
            *(&v420 + 2) = v67;
            v68 = v64;
            v69 = "Unable to format: %s [%d]: Unable to spawn leaks: %d (%s)";
            v70 = 34;
LABEL_346:
            _os_log_fault_impl(&_mh_execute_header, v68, OS_LOG_TYPE_FAULT, v69, v419, v70);
            goto LABEL_120;
          }

          goto LABEL_120;
        }
      }

      v76 = v63;
      v77 = CFStringGetCStringPtr(v63, 0x8000100u);
      v334 = v76;
      if (v77)
      {
        v78 = v77;
        v79 = 0;
      }

      else
      {
        v78 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAE77201uLL);
        CFStringGetCString(v76, v78, 1024, 0x8000100u);
        v79 = v78;
      }

      if (qword_100117E88)
      {
        v85 = qword_100117E88;
      }

      else
      {
        v85 = __stderrp;
      }

      fprintf(v85, "%s\n", v78);
      if (v79)
      {
        free(v79);
      }

      CFRelease(v334);
      goto LABEL_124;
    }

LABEL_351:
    if (dispatch_group_wait(v36, timeout))
    {
      if (byte_100117E80)
      {
        v286 = *__error();
        v287 = sub_100035B80();
        if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2D5C();
        }

        *__error() = v286;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v289 = *__error();
        v290 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out running heap/ddt for all (%d) processes", v11);
        if (v290)
        {
          v291 = v290;
          v292 = CFStringGetCStringPtr(v290, 0x8000100u);
          if (v292)
          {
            v293 = v292;
            v294 = 0;
          }

          else
          {
            v293 = malloc_type_calloc(0x400uLL, 1uLL, 0x84E3AA13uLL);
            CFStringGetCString(v291, v293, 1024, 0x8000100u);
            v294 = v293;
          }

          if (qword_100117E88)
          {
            v309 = qword_100117E88;
          }

          else
          {
            v309 = __stderrp;
          }

          fprintf(v309, "%s\n", v293);
          if (v294)
          {
            free(v294);
          }

          CFRelease(v291);
        }

        else
        {
          v305 = sub_100035B80();
          if (os_log_type_enabled(v305, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2DD0();
          }

          if (qword_100117E88)
          {
            v306 = qword_100117E88;
          }

          else
          {
            v306 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v306);
        }

        *__error() = v289;
      }

      [v7 appendFormat:@"Timed out waiting for heap/ddt, last %d heap/ddt invocations may be truncated\n", 8];
    }

    else
    {
      if (byte_100117E80)
      {
        v295 = v7;
        v296 = *__error();
        v297 = sub_100035B80();
        if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v423 = v11;
          _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_INFO, "Done running heap/ddt for all (%d) processes", buf, 8u);
        }

        *__error() = v296;
        v7 = v295;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v299 = *__error();
        v300 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Done running heap/ddt for all (%d) processes", v11);
        if (v300)
        {
          v301 = v300;
          v302 = CFStringGetCStringPtr(v300, 0x8000100u);
          if (v302)
          {
            v303 = v302;
            v304 = 0;
          }

          else
          {
            v303 = malloc_type_calloc(0x400uLL, 1uLL, 0xFEDB4E3AuLL);
            CFStringGetCString(v301, v303, 1024, 0x8000100u);
            v304 = v303;
          }

          if (qword_100117E88)
          {
            v315 = qword_100117E88;
          }

          else
          {
            v315 = __stderrp;
          }

          fprintf(v315, "%s\n", v303);
          if (v304)
          {
            free(v304);
          }

          CFRelease(v301);
        }

        else
        {
          v310 = sub_100035B80();
          if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2E40();
          }

          if (qword_100117E88)
          {
            v311 = qword_100117E88;
          }

          else
          {
            v311 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v311);
        }

        *__error() = v299;
      }
    }

    v316 = [v379 componentsJoinedByString:&stru_10010D958];
    [v7 appendString:v316];
  }

  [v3 setCustomOutput:v7];

  [v3 performSamplePrinterWork:&stru_1001098B0];
}

void sub_1000738FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v12 = *__error();
        v13 = sub_100035B80();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2FD0((a1 + 56), (a1 + 64));
        }

        *__error() = v12;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from leaks for %d", *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3040((a1 + 56), (a1 + 64));
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = *__error();
        v6 = sub_100035B80();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000B30B0();
        }

        *__error() = v5;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v9 = sub_100035B20(*(*v3 + 4 * *v4));
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from leaks for %d", v9, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3138();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
LABEL_40:
        *__error() = v8;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from leaks for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v15 = v10;
    CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x2C573E85uLL);
      CFStringGetCString(v15, v17, 1024, 0x8000100u);
      v18 = v17;
    }

    if (qword_100117E88)
    {
      v19 = qword_100117E88;
    }

    else
    {
      v19 = __stderrp;
    }

    fprintf(v19, "%s\n", v17);
    if (v18)
    {
      free(v18);
    }

    CFRelease(v15);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v21 = *__error();
    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B31C0(a1);
    }

    *__error() = v21;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v24 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"leaks for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v25)
    {
      v26 = v25;
      v27 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0xDD8CF07AuLL);
        CFStringGetCString(v26, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

      CFRelease(v26);
    }

    else
    {
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3230((a1 + 56), (a1 + 64));
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    }

    *__error() = v24;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100073DB4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v12 = *__error();
        v13 = sub_100035B80();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000B32A0((a1 + 56), (a1 + 64));
        }

        *__error() = v12;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from heap for %d", *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3310((a1 + 56), (a1 + 64));
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = *__error();
        v6 = sub_100035B80();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3380();
        }

        *__error() = v5;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v9 = sub_100035B20(*(*v3 + 4 * *v4));
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from heap for %d", v9, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3408();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
LABEL_40:
        *__error() = v8;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from heap for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v15 = v10;
    CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x5E63EEEFuLL);
      CFStringGetCString(v15, v17, 1024, 0x8000100u);
      v18 = v17;
    }

    if (qword_100117E88)
    {
      v19 = qword_100117E88;
    }

    else
    {
      v19 = __stderrp;
    }

    fprintf(v19, "%s\n", v17);
    if (v18)
    {
      free(v18);
    }

    CFRelease(v15);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v21 = *__error();
    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3490(a1);
    }

    *__error() = v21;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v24 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"heap for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v25)
    {
      v26 = v25;
      v27 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x7B2AEA9BuLL);
        CFStringGetCString(v26, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

      CFRelease(v26);
    }

    else
    {
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3500((a1 + 56), (a1 + 64));
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    }

    *__error() = v24;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_10007426C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v12 = *__error();
        v13 = sub_100035B80();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3570((a1 + 56), (a1 + 64));
        }

        *__error() = v12;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from ddt for %d", *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B35E0((a1 + 56), (a1 + 64));
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = *__error();
        v6 = sub_100035B80();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3650();
        }

        *__error() = v5;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v9 = sub_100035B20(*(*v3 + 4 * *v4));
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from ddt for %d", v9, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B36D8();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
LABEL_40:
        *__error() = v8;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from ddt for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v15 = v10;
    CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3083BD2uLL);
      CFStringGetCString(v15, v17, 1024, 0x8000100u);
      v18 = v17;
    }

    if (qword_100117E88)
    {
      v19 = qword_100117E88;
    }

    else
    {
      v19 = __stderrp;
    }

    fprintf(v19, "%s\n", v17);
    if (v18)
    {
      free(v18);
    }

    CFRelease(v15);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v21 = *__error();
    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3760(a1);
    }

    *__error() = v21;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v24 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ddt for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v25)
    {
      v26 = v25;
      v27 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF12CBCDuLL);
        CFStringGetCString(v26, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

      CFRelease(v26);
    }

    else
    {
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000B37D0((a1 + 56), (a1 + 64));
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    }

    *__error() = v24;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100074724(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = (a1 + 56);
    v4 = (a1 + 64);
    if ((*(*(a1 + 56) + 4 * *(a1 + 64)) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v12 = *__error();
        v13 = sub_100035B80();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3840((a1 + 56), (a1 + 64));
        }

        *__error() = v12;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No output from swift-inspect dump-concurrency for %d", *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B38B0((a1 + 56), (a1 + 64));
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v5 = *__error();
        v6 = sub_100035B80();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3920();
        }

        *__error() = v5;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_41;
      }

      v8 = *__error();
      v9 = sub_100035B20(*(*v3 + 4 * *v4));
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No output from swift-inspect dump-concurrency for %d", v9, *(*v3 + 4 * *v4), *(*v3 + 4 * *v4));
      if (!v10)
      {
        v11 = sub_100035B80();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1000B39A8();
        }

LABEL_36:

        if (qword_100117E88)
        {
          v20 = qword_100117E88;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
LABEL_40:
        *__error() = v8;
LABEL_41:
        [*(a1 + 32) appendFormat:@"No output from swift-inspect dump-concurrency for %d\n", *(*(a1 + 56) + 4 * *(a1 + 64))];
        goto LABEL_42;
      }
    }

    v15 = v10;
    CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x213DFF46uLL);
      CFStringGetCString(v15, v17, 1024, 0x8000100u);
      v18 = v17;
    }

    if (qword_100117E88)
    {
      v19 = qword_100117E88;
    }

    else
    {
      v19 = __stderrp;
    }

    fprintf(v19, "%s\n", v17);
    if (v18)
    {
      free(v18);
    }

    CFRelease(v15);
    goto LABEL_40;
  }

LABEL_42:
  if (byte_100117E80 == 1)
  {
    v21 = *__error();
    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3A30(a1);
    }

    *__error() = v21;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v24 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"swift-inspect dump-concurrency for [%d] completed", *(*(a1 + 56) + 4 * *(a1 + 64)));
    if (v25)
    {
      v26 = v25;
      v27 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = malloc_type_calloc(0x400uLL, 1uLL, 0xC80695B8uLL);
        CFStringGetCString(v26, v28, 1024, 0x8000100u);
        v29 = v28;
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v28);
      if (v29)
      {
        free(v29);
      }

      CFRelease(v26);
    }

    else
    {
      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3AA0((a1 + 56), (a1 + 64));
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    }

    *__error() = v24;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_100074BDC(id a1, SASamplePrinter *a2)
{
  if (sub_100060FCC(a2, 0, 0, 4, 0, 0, 0.0, 0.0, 0, 0, 0, 0))
  {
    if (byte_100117E80)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saved shutdown report", buf, 2u);
      }

      *__error() = v2;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v5 = *__error();
      v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saved shutdown report");
      if (v6)
      {
        v16 = v6;
        CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
        if (CStringPtr)
        {
          v18 = CStringPtr;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xC5A96C20uLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100117E88)
        {
          v24 = qword_100117E88;
        }

        else
        {
          v24 = __stderrp;
        }

        fprintf(v24, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v7 = sub_100035B80();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *v26 = 0;
          _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Unable to format: Saved shutdown report", v26, 2u);
        }

        if (qword_100117E88)
        {
          v8 = qword_100117E88;
        }

        else
        {
          v8 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v8);
      }

      *__error() = v5;
    }

    exit(0);
  }

  if (byte_100117E80)
  {
    v9 = *__error();
    v10 = sub_100035B80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to save shutdown report", v29, 2u);
    }

    *__error() = v9;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v12 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to save shutdown report");
    if (v13)
    {
      v20 = v13;
      v21 = CFStringGetCStringPtr(v13, 0x8000100u);
      if (v21)
      {
        v22 = v21;
        v23 = 0;
      }

      else
      {
        v22 = malloc_type_calloc(0x400uLL, 1uLL, 0x2FE9A1D5uLL);
        CFStringGetCString(v20, v22, 1024, 0x8000100u);
        v23 = v22;
      }

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v22);
      if (v23)
      {
        free(v23);
      }

      CFRelease(v20);
    }

    else
    {
      v14 = sub_100035B80();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *v28 = 0;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to format: Failed to save shutdown report", v28, 2u);
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
      }

      else
      {
        v15 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
    }

    *__error() = v12;
  }

  exit(69);
}

void sub_100074FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  SAMachAbsTimeSecondsGetCurrent();
  v5 = v4;
  v6 = +[SPSampledProcess allSampledProcesses];
  if (byte_100117DB0)
  {
    v7 = v5 - *&qword_100117DA8;
    if (v5 - *&qword_100117DA8 > 1.0)
    {
      if (byte_100117E80)
      {
        v65 = *__error();
        v66 = sub_100035B80();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v84 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Interrupted again by signal %ld, exiting", buf, 0xCu);
        }

        *__error() = v65;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v68 = *__error();
        handle = dispatch_source_get_handle(v3);
        v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted again by signal %ld, exiting", handle);
        if (v70)
        {
          v73 = v70;
          CStringPtr = CFStringGetCStringPtr(v70, 0x8000100u);
          if (CStringPtr)
          {
            v75 = CStringPtr;
            v76 = 0;
          }

          else
          {
            v75 = malloc_type_calloc(0x400uLL, 1uLL, 0x45DBB5F0uLL);
            CFStringGetCString(v73, v75, 1024, 0x8000100u);
            v76 = v75;
          }

          if (qword_100117E88)
          {
            v77 = qword_100117E88;
          }

          else
          {
            v77 = __stderrp;
          }

          fprintf(v77, "%s\n", v75);
          if (v76)
          {
            free(v76);
          }

          CFRelease(v73);
        }

        else
        {
          v71 = sub_100035B80();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
          {
            sub_1000B3D48(v3);
          }

          if (qword_100117E88)
          {
            v72 = qword_100117E88;
          }

          else
          {
            v72 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v72);
        }

        *__error() = v68;
      }

      exit(75);
    }

    if (byte_100117E80)
    {
      v8 = *__error();
      v9 = sub_100035B80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v84 = v5 - *&qword_100117DA8;
        v85 = 2048;
        v86 = dispatch_source_get_handle(v3);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Interrupted again after %.2f seconds by signal %ld, not exiting", buf, 0x16u);
      }

      *__error() = v8;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v11 = *__error();
      v12 = v5 - *&qword_100117DA8;
      v13 = dispatch_source_get_handle(v3);
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted again after %.2f seconds by signal %ld, not exiting", *&v12, v13);
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
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x6AB5869EuLL);
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
          sub_1000B3B10(v3);
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

      *__error() = v11;
    }
  }

  else
  {
    qword_100117DA8 = *&v5;
    byte_100117DB0 = 1;
  }

  if (![v6 count])
  {
    if (byte_100117E80 == 1)
    {
      v36 = *__error();
      v37 = sub_100035B80();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
        *buf = 134217984;
        v84 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld while saving report. Interrupt again after a second to exit early", buf, 0xCu);
      }

      *__error() = v36;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_100;
    }

    v40 = *__error();
    v41 = dispatch_source_get_handle(v3);
    v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld while saving report. Interrupt again after a second to exit early", v41);
    if (v42)
    {
      v43 = v42;
      v44 = CFStringGetCStringPtr(v42, 0x8000100u);
      if (v44)
      {
LABEL_67:
        v52 = v44;
        v53 = 0;
LABEL_93:
        if (qword_100117E88)
        {
          v59 = qword_100117E88;
        }

        else
        {
          v59 = __stderrp;
        }

        fprintf(v59, "%s\n", v52);
        if (v53)
        {
          free(v53);
        }

        CFRelease(v43);
        goto LABEL_99;
      }

      v45 = 3410373351;
LABEL_92:
      v52 = malloc_type_calloc(0x400uLL, 1uLL, v45);
      CFStringGetCString(v43, v52, 1024, 0x8000100u);
      v53 = v52;
      goto LABEL_93;
    }

    v56 = sub_100035B80();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3CC8(v3);
    }

LABEL_87:

    if (qword_100117E88)
    {
      v58 = qword_100117E88;
    }

    else
    {
      v58 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v58);
LABEL_99:
    *__error() = v40;
    goto LABEL_100;
  }

  v23 = *(a1 + 32);
  v22 = (a1 + 32);
  if (v23)
  {
    if (byte_100117E80)
    {
      v24 = *__error();
      v25 = sub_100035B80();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
        v27 = *v22;
        *buf = 134218240;
        v84 = v26;
        v85 = 1024;
        LODWORD(v86) = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld, waiting %d seconds...", buf, 0x12u);
      }

      *__error() = v24;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v29 = *__error();
      v30 = dispatch_source_get_handle(v3);
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld, waiting %d seconds...", v30, *v22);
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
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x36B0616uLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100117E88)
        {
          v57 = qword_100117E88;
        }

        else
        {
          v57 = __stderrp;
        }

        fprintf(v57, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        CFRelease(v32);
      }

      else
      {
        v54 = sub_100035B80();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3BB4(v3, v22);
        }

        if (qword_100117E88)
        {
          v55 = qword_100117E88;
        }

        else
        {
          v55 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v55);
      }

      *__error() = v29;
    }

    sleep(*v22);
    goto LABEL_100;
  }

  if (byte_100117E80)
  {
    v46 = *__error();
    v47 = sub_100035B80();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = COERCE_DOUBLE(dispatch_source_get_handle(v3));
      *buf = 134217984;
      v84 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Interrupted by signal %ld", buf, 0xCu);
    }

    *__error() = v46;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v40 = *__error();
    v50 = dispatch_source_get_handle(v3);
    v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Interrupted by signal %ld", v50);
    if (v51)
    {
      v43 = v51;
      v44 = CFStringGetCStringPtr(v51, 0x8000100u);
      if (v44)
      {
        goto LABEL_67;
      }

      v45 = 2669991196;
      goto LABEL_92;
    }

    v56 = sub_100035B80();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3C48(v3);
    }

    goto LABEL_87;
  }

LABEL_100:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v60 = v6;
  v61 = [v60 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v79;
    do
    {
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v79 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [*(*(&v78 + 1) + 8 * i) stopSamplingWithReason:5];
      }

      v62 = [v60 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v62);
  }
}

void sub_1000759F0(id a1)
{
  v1 = getpid();
  if (sub_100076688(v1))
  {
    if (byte_100117E80 == 1)
    {
      v2 = *__error();
      v3 = sub_100035B80();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B43D0();
      }

      *__error() = v2;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Running under debugger, ignoring");
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 209325847;
LABEL_130:
        v61 = malloc_type_calloc(0x400uLL, 1uLL, v9);
        CFStringGetCString(v7, v61, 1024, 0x8000100u);
        v62 = v61;
        goto LABEL_131;
      }

      goto LABEL_94;
    }

    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B440C();
    }

    goto LABEL_114;
  }

  v10 = getenv("XPC_NULL_BOOTSTRAP");
  v11 = "0";
  if (v10)
  {
    v11 = v10;
  }

  v12 = *v11;
  if (v12 == 49)
  {
    if (!v11[1])
    {
      goto LABEL_48;
    }
  }

  else if (49 == v12)
  {
    goto LABEL_48;
  }

  if (byte_100117E80 == 1)
  {
    v13 = *__error();
    v14 = sub_100035B80();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "spindump-stuck: Spindump has taken over a minute to process samples and may be stuck, try using -noIPC", buf, 2u);
    }

    *__error() = v13;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 2)
  {
    v16 = *__error();
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Spindump has taken over a minute to process samples and may be stuck, try using -noIPC");
    if (v17)
    {
      v18 = v17;
      v19 = CFStringGetCStringPtr(v17, 0x8000100u);
      if (v19)
      {
        v20 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xDF880919uLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      CFRelease(v18);
    }

    else
    {
      v23 = sub_100035B80();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3DC8();
      }

      if (qword_100117E88)
      {
        v24 = qword_100117E88;
      }

      else
      {
        v24 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v24);
    }

    *__error() = v16;
  }

LABEL_48:
  if ((byte_100117E94 & 2) == 0 || !sub_10002B3E4())
  {
    strcpy(buf, "/var/tmp/spindump-stuck-stackshot.");
    memset(&v85, 0, sizeof(v85));
    v84 = time(0);
    localtime_r(&v84, &v85);
    v30 = strftime(&buf[34], 0x3DEuLL, "%Y-%m-%d-%T", &v85);
    v31 = v30 + 34;
    if (v30 + 34 >= 0x400)
    {
      sub_1000B3E7C(buf, v31);
    }

    v32 = getpid();
    snprintf(&buf[v31], 990 - v30, ".%d.buf", v32);
    v33 = fopen(buf, "w");
    if (!v33)
    {
      if (byte_100117E80 == 1)
      {
        v55 = *__error();
        v56 = sub_100035B80();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4298();
        }

        *__error() = v55;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v5 = *__error();
        v57 = *__error();
        v58 = __error();
        v59 = strerror(*v58);
        v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Unable to open %s: %d (%s)", buf, v57, v59);
        if (v60)
        {
          v7 = v60;
          CStringPtr = CFStringGetCStringPtr(v60, 0x8000100u);
          if (!CStringPtr)
          {
            v9 = 3327212590;
            goto LABEL_130;
          }

          goto LABEL_94;
        }

        v22 = sub_100035B80();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1000B4334();
        }

        goto LABEL_114;
      }

      return;
    }

    v34 = v33;
    v35 = stackshot_config_create();
    stackshot_config_set_flags();
    v36 = sub_10008866C(v35, 0);
    v37 = v36;
    if (v36 && [v36 length])
    {
      v38 = fwrite([v37 bytes], objc_msgSend(v37, "length"), 1uLL, v34);
      stackshot_config_dealloc();
      if (v38 == 1)
      {
        fclose(v34);
        if (byte_100117E80 == 1)
        {
          v39 = *__error();
          v40 = sub_100035B80();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v86 = 136315138;
            v87 = buf;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "spindump-stuck: Wrote stackshot to %s", v86, 0xCu);
          }

          *__error() = v39;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 2)
        {
          v41 = *__error();
          v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Wrote stackshot to %s", buf);
          if (v42)
          {
            v43 = v42;
            v44 = CFStringGetCStringPtr(v42, 0x8000100u);
            if (v44)
            {
              v45 = v44;
              v46 = 0;
            }

            else
            {
              v45 = malloc_type_calloc(0x400uLL, 1uLL, 0xD4DB93CAuLL);
              CFStringGetCString(v43, v45, 1024, 0x8000100u);
              v46 = v45;
            }

            if (qword_100117E88)
            {
              v82 = qword_100117E88;
            }

            else
            {
              v82 = __stderrp;
            }

            fprintf(v82, "%s\n", v45);
            if (v46)
            {
              free(v46);
            }

            CFRelease(v43);
          }

          else
          {
            v78 = sub_100035B80();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
            {
              sub_1000B41AC();
            }

            if (qword_100117E88)
            {
              v79 = qword_100117E88;
            }

            else
            {
              v79 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v79);
          }

          *__error() = v41;
        }

        goto LABEL_128;
      }

      if (byte_100117E80 == 1)
      {
        v63 = *__error();
        v64 = sub_100035B80();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_1000B407C(buf, v34);
        }

        *__error() = v63;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v65 = *__error();
        v66 = ferror(v34);
        v67 = strerror(v66);
        v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write stackshot to %s: %d (%s)", buf, v66, v67);
        if (v68)
        {
          v69 = v68;
          v70 = CFStringGetCStringPtr(v68, 0x8000100u);
          if (v70)
          {
            v71 = v70;
            v72 = 0;
          }

          else
          {
            v71 = malloc_type_calloc(0x400uLL, 1uLL, 0x57F80928uLL);
            CFStringGetCString(v69, v71, 1024, 0x8000100u);
            v72 = v71;
          }

          if (qword_100117E88)
          {
            v83 = qword_100117E88;
          }

          else
          {
            v83 = __stderrp;
          }

          fprintf(v83, "%s\n", v71);
          if (v72)
          {
            free(v72);
          }

          CFRelease(v69);
        }

        else
        {
          v80 = sub_100035B80();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            sub_1000B4114(buf, v34);
          }

          if (qword_100117E88)
          {
            v81 = qword_100117E88;
          }

          else
          {
            v81 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
        }

        *__error() = v65;
      }
    }

    else
    {
      if (byte_100117E80 == 1)
      {
        v47 = *__error();
        v48 = sub_100035B80();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000B421C();
        }

        *__error() = v47;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v49 = *__error();
        v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Unable to take stackshot");
        if (v50)
        {
          v51 = v50;
          v52 = CFStringGetCStringPtr(v50, 0x8000100u);
          if (v52)
          {
            v53 = v52;
            v54 = 0;
          }

          else
          {
            v53 = malloc_type_calloc(0x400uLL, 1uLL, 0x5B4EC28FuLL);
            CFStringGetCString(v51, v53, 1024, 0x8000100u);
            v54 = v53;
          }

          if (qword_100117E88)
          {
            v76 = qword_100117E88;
          }

          else
          {
            v76 = __stderrp;
          }

          fprintf(v76, "%s\n", v53);
          if (v54)
          {
            free(v54);
          }

          CFRelease(v51);
        }

        else
        {
          v73 = sub_100035B80();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
          {
            sub_1000B425C();
          }

          if (qword_100117E88)
          {
            v74 = qword_100117E88;
          }

          else
          {
            v74 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v74);
        }

        *__error() = v49;
      }

      stackshot_config_dealloc();
    }

    fclose(v34);
LABEL_128:

    return;
  }

  if (byte_100117E80 == 1)
  {
    v26 = *__error();
    v27 = sub_100035B80();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3E04();
    }

    *__error() = v26;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v5 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"spindump-stuck: Audio running, avoiding stackshot");
    if (v29)
    {
      v7 = v29;
      CStringPtr = CFStringGetCStringPtr(v29, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 2668872576;
        goto LABEL_130;
      }

LABEL_94:
      v61 = CStringPtr;
      v62 = 0;
LABEL_131:
      if (qword_100117E88)
      {
        v77 = qword_100117E88;
      }

      else
      {
        v77 = __stderrp;
      }

      fprintf(v77, "%s\n", v61);
      if (v62)
      {
        free(v62);
      }

      CFRelease(v7);
LABEL_137:
      *__error() = v5;
      return;
    }

    v22 = sub_100035B80();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B3E40();
    }

LABEL_114:

    if (qword_100117E88)
    {
      v75 = qword_100117E88;
    }

    else
    {
      v75 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v75);
    goto LABEL_137;
  }
}

BOOL sub_100076688(uint64_t a1)
{
  v34 = 0u;
  v35 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (!proc_pidinfo(a1, 13, 1uLL, buffer, 64))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v16 = *__error();
        v17 = sub_100035B80();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4448();
        }

        *__error() = v16;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        return 0;
      }

      v6 = *__error();
      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get proc info, assuming not being debugged: %d (%s)", v19, v21);
      if (v22)
      {
        v23 = v22;
        CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
        if (CStringPtr)
        {
          v25 = CStringPtr;
          v26 = 0;
        }

        else
        {
          v25 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2D50E48uLL);
          CFStringGetCString(v23, v25, 1024, 0x8000100u);
          v26 = v25;
        }

        if (qword_100117E88)
        {
          v32 = qword_100117E88;
        }

        else
        {
          v32 = __stderrp;
        }

        fprintf(v32, "%s\n", v25);
        if (v26)
        {
          free(v26);
        }

        v29 = v23;
        goto LABEL_53;
      }

      v30 = sub_100035B80();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000B44D8();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v3 = *__error();
        v4 = sub_100035B80();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000B4568(a1);
        }

        *__error() = v3;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        return 0;
      }

      v6 = *__error();
      v7 = sub_100035B20(a1);
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get proc info, assuming not being debugged: %d (%s)", v7, a1, v8, v10);
      if (v11)
      {
        v12 = v11;
        v13 = CFStringGetCStringPtr(v11, 0x8000100u);
        if (v13)
        {
          v14 = v13;
          v15 = 0;
        }

        else
        {
          v14 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2D50E48uLL);
          CFStringGetCString(v12, v14, 1024, 0x8000100u);
          v15 = v14;
        }

        if (qword_100117E88)
        {
          v28 = qword_100117E88;
        }

        else
        {
          v28 = __stderrp;
        }

        fprintf(v28, "%s\n", v14);
        if (v15)
        {
          free(v15);
        }

        v29 = v12;
LABEL_53:
        CFRelease(v29);
LABEL_54:
        *__error() = v6;
        return 0;
      }

      v27 = sub_100035B80();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1000B4624(a1);
      }
    }

    if (qword_100117E88)
    {
      v31 = qword_100117E88;
    }

    else
    {
      v31 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    goto LABEL_54;
  }

  return (v34 & 2) != 0;
}

void sub_100076A58(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncidentUUID:0];
  v4 = [v3 targetProcessName];
  v5 = v4;
  if (!v4 && *(a1 + 64))
  {
    v6 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  if (*(a1 + 108) != 1)
  {
    goto LABEL_49;
  }

  dispatch_group_wait(qword_100117ED0, 0xFFFFFFFFFFFFFFFFLL);
  if ((byte_100117E94 & 0x18) == 0x10)
  {
    if (byte_100117E80)
    {
      v8 = *__error();
      v9 = sub_100035B80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SIGINFO received, generating report...", buf, 2u);
      }

      *__error() = v8;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
      goto LABEL_49;
    }

    v11 = *__error();
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SIGINFO received, generating report...");
    if (!v12)
    {
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v14 = "Unable to format: SIGINFO received, generating report...";
LABEL_31:
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, buf, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v20 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (!CStringPtr)
    {
      v22 = 414624890;
LABEL_40:
      v23 = malloc_type_calloc(0x400uLL, 1uLL, v22);
      CFStringGetCString(v20, v23, 1024, 0x8000100u);
      v24 = v23;
LABEL_42:
      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v23);
      if (v24)
      {
        free(v24);
      }

      CFRelease(v20);
      goto LABEL_48;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v15 = *__error();
      v16 = sub_100035B80();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SIGINFO received, processing symbols...", buf, 2u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 2)
    {
LABEL_49:
      if (*(a1 + 32))
      {
        [v3 setPrintOptions:?];
      }

      [v3 setForceOneBasedTimeIndexes:*(a1 + 109)];
      if (*(a1 + 72))
      {
        [v3 setTargetThreadId:?];
      }

      if ([v3 numSamplesAvoidedDueToAudio] >= 1 && !objc_msgSend(v3, "numSamples"))
      {
        if (byte_100117E80 == 1)
        {
          v26 = *__error();
          v27 = sub_100035B80();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to sample due to audio running", buf, 2u);
          }

          *__error() = v26;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v28 = *__error();
          v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to sample due to audio running");
          if (v29)
          {
            v97 = v29;
            v98 = CFStringGetCStringPtr(v29, 0x8000100u);
            if (v98)
            {
              v99 = v98;
              v100 = 0;
            }

            else
            {
              v99 = malloc_type_calloc(0x400uLL, 1uLL, 0x1BC6A6CAuLL);
              CFStringGetCString(v97, v99, 1024, 0x8000100u);
              v100 = v99;
            }

            if (qword_100117E88)
            {
              v101 = qword_100117E88;
            }

            else
            {
              v101 = __stderrp;
            }

            fprintf(v101, "%s\n", v99);
            if (v100)
            {
              free(v100);
            }

            CFRelease(v97);
          }

          else
          {
            v30 = sub_100035B80();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Unable to format: Unable to sample due to audio running", buf, 2u);
            }

            if (qword_100117E88)
            {
              v31 = qword_100117E88;
            }

            else
            {
              v31 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
          }

          *__error() = v28;
        }

        goto LABEL_172;
      }

      v33 = *(a1 + 80);
      v32 = *(a1 + 88);
      v35 = *(a1 + 40);
      v34 = *(a1 + 48);
      v36 = *(a1 + 110);
      alloc = *(a1 + 111);
      v37 = *(a1 + 112);
      v108 = *(a1 + 96);
      v38 = *(a1 + 56);
      v107 = *(a1 + 104);
      v111 = v3;
      v39 = v35;
      v40 = v34;
      v110 = v7;
      v41 = v38;
      if (v33)
      {
        v42 = [NSString stringWithUTF8String:v33];
        [v111 setSignature:v42];
      }

      if (v32)
      {
        v43 = [NSString stringWithUTF8String:v32];
        [v111 setReason:v43];
      }

      [v111 setUseDsymForUUIDForEverything:v36];
      [v111 setFindDsymsForIDs:v39];
      [v111 setIncludeBinaryFormatInReport:v37 ^ 1u];
      [v111 setIncludeTextualFormatInReport:alloc ^ 1u];
      [v111 setHeaderOnly:0];
      [v111 setDsymPaths:v40];
      v44 = v108;
      if (v108)
      {
        v46 = &CSArchitectureGetArchitectureForName_ptr;
        while (1)
        {
          v47 = [objc_alloc(v46[345]) initWithUTF8String:v44];
          v48 = [v111 targetProcessId];
          v49 = geteuid();
          v113 = 0;
          v50 = sub_100062A5C(v47, v110, v48, 1537, v49, 0x1A4u, &v113);
          v51 = v113;
          if (v50 != -1)
          {
            v52 = fdopen(v50, "w");
            if (v52)
            {
              break;
            }
          }

          if (byte_100117E80 == 1)
          {
            v53 = *__error();
            v54 = sub_100035B80();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v82 = v44;
              if (v51)
              {
                v82 = [v51 UTF8String];
              }

              v83 = *__error();
              v84 = __error();
              v85 = strerror(*v84);
              *v114 = 136315650;
              *&v114[4] = v82;
              v115 = 1024;
              v116 = v83;
              v117 = 2080;
              v118 = v85;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Spindump failed to save report to %s: %d (%s)", v114, 0x1Cu);
              v46 = &CSArchitectureGetArchitectureForName_ptr;
            }

            *__error() = v53;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v56 = *__error();
            v57 = v44;
            if (v51)
            {
              v57 = [v51 UTF8String];
            }

            v58 = *__error();
            v59 = __error();
            v60 = strerror(*v59);
            v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump failed to save report to %s: %d (%s)", v57, v58, v60);
            if (v61)
            {
              v62 = v61;
              v63 = CFStringGetCStringPtr(v61, 0x8000100u);
              if (v63)
              {
                v64 = v63;
                v65 = 0;
              }

              else
              {
                v64 = malloc_type_calloc(0x400uLL, 1uLL, 0x416D5A0EuLL);
                CFStringGetCString(v62, v64, 1024, 0x8000100u);
                v65 = v64;
              }

              if (qword_100117E88)
              {
                v68 = qword_100117E88;
              }

              else
              {
                v68 = __stderrp;
              }

              fprintf(v68, "%s\n", v64);
              if (v65)
              {
                free(v65);
              }

              CFRelease(v62);
              v46 = &CSArchitectureGetArchitectureForName_ptr;
            }

            else
            {
              v66 = sub_100035B80();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
              {
                if (v51)
                {
                  v44 = [v51 UTF8String];
                }

                v86 = *__error();
                v87 = __error();
                v88 = strerror(*v87);
                *v114 = 136315650;
                *&v114[4] = v44;
                v115 = 1024;
                v116 = v86;
                v117 = 2080;
                v118 = v88;
                _os_log_fault_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, "Unable to format: Spindump failed to save report to %s: %d (%s)", v114, 0x1Cu);
              }

              if (qword_100117E88)
              {
                v67 = qword_100117E88;
              }

              else
              {
                v67 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v67);
            }

            *__error() = v56;
          }

          if (v50 != -1)
          {
            close(v50);
          }

          *v114 = 0;
          if (byte_100117E80 == 1)
          {
            v69 = *__error();
            v70 = sub_100035B80();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              *v112 = 0;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Please enter a new output location (or an empty line to output to stdout, including spindump binary format)", v112, 2u);
            }

            *__error() = v69;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 2)
          {
            v71 = *__error();
            v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Please enter a new output location (or an empty line to output to stdout, including spindump binary format)");
            if (v72)
            {
              v73 = v72;
              v74 = CFStringGetCStringPtr(v72, 0x8000100u);
              if (v74)
              {
                v75 = v74;
                v76 = 0;
              }

              else
              {
                v75 = malloc_type_calloc(0x400uLL, 1uLL, 0x82D1CD77uLL);
                CFStringGetCString(v73, v75, 1024, 0x8000100u);
                v76 = v75;
              }

              if (qword_100117E88)
              {
                v79 = qword_100117E88;
              }

              else
              {
                v79 = __stderrp;
              }

              fprintf(v79, "%s\n", v75);
              if (v76)
              {
                free(v76);
              }

              CFRelease(v73);
            }

            else
            {
              v77 = sub_100035B80();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
              {
                *v112 = 0;
                _os_log_fault_impl(&_mh_execute_header, v77, OS_LOG_TYPE_FAULT, "Unable to format: Please enter a new output location (or an empty line to output to stdout, including spindump binary format)", v112, 2u);
              }

              if (qword_100117E88)
              {
                v78 = qword_100117E88;
              }

              else
              {
                v78 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v78);
            }

            *__error() = v71;
          }

          v80 = fgetln(__stdinp, v114);
          v81 = *v114;
          if (!*v114)
          {
            goto LABEL_140;
          }

          if (v80[*v114 - 1] == 10)
          {
            v80[*v114 - 1] = 0;
            v81 = --*v114;
          }

          if ((v81 - 1) >= 0x3FF)
          {
LABEL_140:

            v45 = 1;
            v44 = v108;
            goto LABEL_141;
          }

          v44 = buf;
          __memcpy_chk();
          buf[v81] = 0;
        }

        v89 = v52;

        [v111 saveReportToStream:v89];
        fclose(v89);
        if (byte_100117E80 == 1)
        {
          v90 = *__error();
          v91 = sub_100035B80();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v120 = v51;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Spindump analysis written to file %@", buf, 0xCu);
          }

          *__error() = v90;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 2)
        {
          v93 = *__error();
          v94 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump analysis written to file %@", v51);
          if (v94)
          {
            v102 = v94;
            v103 = CFStringGetCStringPtr(v94, 0x8000100u);
            if (v103)
            {
              v104 = v103;
              v105 = 0;
            }

            else
            {
              v104 = malloc_type_calloc(0x400uLL, 1uLL, 0x25F28B0DuLL);
              CFStringGetCString(v102, v104, 1024, 0x8000100u);
              v105 = v104;
            }

            if (qword_100117E88)
            {
              v106 = qword_100117E88;
            }

            else
            {
              v106 = __stderrp;
            }

            fprintf(v106, "%s\n", v104);
            if (v105)
            {
              free(v105);
            }

            CFRelease(v102);
          }

          else
          {
            v95 = sub_100035B80();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v120 = v51;
              _os_log_fault_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, "Unable to format: Spindump analysis written to file %@", buf, 0xCu);
            }

            if (qword_100117E88)
            {
              v96 = qword_100117E88;
            }

            else
            {
              v96 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
          }

          *__error() = v93;
        }

        v44 = v108;
        if (v107)
        {
          [v111 setIncludeBinaryFormatInReport:0];
          v45 = 0;
LABEL_141:
          [v111 saveReportToStream:__stdoutp];
          if ([v111 includeBinaryFormatInReport])
          {
            putchar(10);
          }

          if ((v45 & 1) != 0 && v44)
          {
LABEL_172:
            exit(69);
          }
        }
      }

      else if (v107)
      {
        v45 = 1;
        goto LABEL_141;
      }

      exit(0);
    }

    v11 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SIGINFO received, processing symbols...");
    if (!v18)
    {
      v13 = sub_100035B80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v14 = "Unable to format: SIGINFO received, processing symbols...";
        goto LABEL_31;
      }

LABEL_32:

      if (qword_100117E88)
      {
        v19 = qword_100117E88;
      }

      else
      {
        v19 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v19);
LABEL_48:
      *__error() = v11;
      goto LABEL_49;
    }

    v20 = v18;
    CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
    if (!CStringPtr)
    {
      v22 = 4047495155;
      goto LABEL_40;
    }
  }

  v23 = CStringPtr;
  v24 = 0;
  goto LABEL_42;
}

BOOL sub_100077900()
{
  if (qword_100117DE0 != -1)
  {
    sub_1000B4CFC();
  }

  if (!qword_100117528)
  {
    return 0;
  }

  v14 = 0;
  v13 = 4;
  if (sysctl(dword_100117DD0, qword_100117528, &v14, &v13, 0, 0))
  {
    sub_1000B4D10(&v14);
  }

  if (byte_100117E80 == 1)
  {
    v0 = *__error();
    v1 = sub_100035B80();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B4F64(&v14);
    }

    *__error() = v0;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v3 = *__error();
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Memory pressure %d", v14);
    if (v4)
    {
      v5 = v4;
      CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
      if (CStringPtr)
      {
        v7 = CStringPtr;
        v8 = 0;
      }

      else
      {
        v7 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F735A8BuLL);
        CFStringGetCString(v5, v7, 1024, 0x8000100u);
        v8 = v7;
      }

      if (qword_100117E88)
      {
        v11 = qword_100117E88;
      }

      else
      {
        v11 = __stderrp;
      }

      fprintf(v11, "%s\n", v7);
      if (v8)
      {
        free(v8);
      }

      CFRelease(v5);
    }

    else
    {
      v9 = sub_100035B80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000B4FD8(&v14);
      }

      if (qword_100117E88)
      {
        v10 = qword_100117E88;
      }

      else
      {
        v10 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v10);
    }

    *__error() = v3;
  }

  return v14 > 3;
}

void sub_100077B48(id a1)
{
  if (sysctlnametomib("kern.memorystatus_vm_pressure_level", dword_100117DD0, &qword_100117528))
  {
    sub_1000B504C();
  }
}

void sub_100077B84()
{
  if (geteuid())
  {
    sub_1000B5260();
  }

  if (qword_100117DE8 != -1)
  {
    sub_1000B5474();
  }
}

void sub_100077BBC(id a1)
{
  memset(&v22, 0, sizeof(v22));
  v1 = stat("/private/var/db/spindump", &v22);
  if (v1)
  {
    v9 = *__error();
    if (byte_100117E80 == 1)
    {
      v10 = *__error();
      v11 = sub_100035B80();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B5488();
      }

      *__error() = v10;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v13 = *__error();
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Creating spindump directory /private/var/db/spindump after stat said %d", v9);
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
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3AA1872uLL);
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
          sub_1000B54F8();
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

      *__error() = v13;
    }

    if (mkdir("/private/var/db/spindump", 0x1EDu))
    {
      sub_1000B5568(v9);
    }
  }

  else if ((v22.st_mode & 0xF000) != 0x4000)
  {
    sub_1000B5814(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100077DF8(void *a1, int a2, int a3, int a4)
{
  v12 = a1;
  v7 = [v12 dataGatheringOptions];
  if (a2)
  {
    [v12 setDataGatheringOptions:v7 | 0x60];
    v8 = [v12 dataGatheringOptions];
    if (a3)
    {
      v9 = v8 | 8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFF7;
    }
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF97;
  }

  [v12 setDataGatheringOptions:v9];
  v10 = [v12 dataGatheringOptions] & 0xFFFFFFFFFFFFFFEFLL;
  v11 = 16;
  if (!a4)
  {
    v11 = 0;
  }

  [v12 setDataGatheringOptions:v10 | v11];
}

_DWORD *sub_100077F40(void *a1, int *a2)
{
  v3 = *(*a1 + 4 * *a2);

  return sub_100035B20(v3);
}

void sub_100077F60(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x12u);
}

uint64_t sub_100077F94(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 1024, 0x8000100u);
}

uint64_t sub_100078010@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}