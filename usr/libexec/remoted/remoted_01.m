void sub_10001CFAC(_Unwind_Exception *a1)
{
  CFRelease(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001CFF0(int a1, void *a2, __SecCertificate *a3)
{
  v5 = a2;
  error = 0;
  v6 = SecCertificateCopyKey(a3);
  v7 = v6;
  if (!v6)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    v21 = _os_log_send_and_compose_impl();
    v22 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v22, v21);
    goto LABEL_20;
  }

  v133 = SecKeyCopyExternalRepresentation(v6, &error);
  if (!v133)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 138543362;
    *&buf[4] = error;
    v21 = _os_log_send_and_compose_impl();
    v23 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v23, v21);
LABEL_20:
    free(v21);
LABEL_21:
    v24 = 0;
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v8 = SecCertificateCopyExtensionValue();
  v131 = v8;
  if (!v8)
  {
    v132 = 0;
    goto LABEL_32;
  }

  v9 = v8;
  v146 = 0u;
  v147 = 0u;
  *buf = 0u;
  *v140 = 0;
  v10 = v9;
  v11 = [v9 bytes];
  v12 = CTParseCertificateSet(v11, [v9 length] + v11, buf, 3, v140);
  v13 = v12;
  if (v12 || !*v140)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      LODWORD(v151) = 67109120;
      HIDWORD(v151) = v13;
    }

    else
    {
      LODWORD(v151) = 67109120;
      HIDWORD(v151) = v12;
    }

    v27 = _os_log_send_and_compose_impl();
    v28 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v28, v27);
    free(v27);
    v132 = 0;
    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(NSMutableArray);
    if (v14)
    {
      if (*v140)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = &buf[16 * v15];
          v18 = *v17;
          v19 = *(v17 + 1);
          v20 = SecCertificateCreateWithBytes();
          [v14 setObject:v20 atIndexedSubscript:v15];

          v15 = ++v16;
        }

        while (*v140 > v16);
      }

      v132 = [v14 copy];
    }

    else
    {
      v132 = 0;
    }
  }

  if (!v132)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    v53 = _os_log_send_and_compose_impl();
    v54 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v54, v53);
    free(v53);

    goto LABEL_21;
  }

LABEL_32:
  v29 = SecCertificateCopyExtensionValue();
  if (v29)
  {
    v30 = aks_attest_context_size;
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v24 = malloc_type_calloc(1uLL, v30, 0x8A375538uLL);
        if (v24)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v24 = malloc_type_calloc(1uLL, v30, 0x8709206FuLL);
      if (!v24)
      {
        v151 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        *buf = 0u;
        v123 = &_os_log_default;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v124 = __error();
        v125 = strerror(*v124);
        *v140 = 136315650;
        *&v140[4] = "known-constant allocation";
        v141 = 2048;
        v142 = v30;
        v143 = 2080;
        v144 = v125;
        _os_log_send_and_compose_impl();

        v126 = _os_crash_msg();
        sub_10003BCB4(v126);
      }
    }

    v31 = v29;
    [v29 bytes];
    [v29 length];
    v32 = aks_attest_context_init();
    v33 = v32;
    if (v32)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        *buf = 67109120;
        *&buf[4] = v33;
      }

      else
      {
        *buf = 67109120;
        *&buf[4] = v32;
      }

LABEL_61:
      v44 = _os_log_send_and_compose_impl();
      v45 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v45, v44);
      free(v44);

      goto LABEL_22;
    }
  }

  else
  {
    v24 = 0;
  }

  v34 = qword_100064478;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [(__CFData *)v133 sha256];
    v36 = [v35 base64EncodedStringWithOptions:0];
    *buf = 138543362;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Authenticating TLS peer with public key sha256: %{public}@", buf, 0xCu);
  }

  v37 = [v5 containsObject:@"1.2.840.113635.100.6.84"];
  if (v132)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  if (v38 == 1)
  {
    v39 = v132;
    v40 = qword_100064478;
    if (!v39)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      }

      *buf = 0;
      v55 = _os_log_send_and_compose_impl();
      v56 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v56, v55);
      free(v55);
      goto LABEL_90;
    }

    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Verifying peer's DCRT chain against SCRT root CA...", buf, 2u);
    }

    v41 = sub_10001FB40(v39, 1);
    if (v41)
    {
      v42 = qword_100064478;
      if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "DCRT not trusted with the SCRT root CA.", buf, 2u);
        v42 = qword_100064478;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Verifying peer's DCRT chain against UCRT root CA...", buf, 2u);
      }

      v43 = sub_10001FB40(v39, 0);
      if (v43)
      {
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        *buf = 0;
        v57 = _os_log_send_and_compose_impl();
        v58 = getpid();
        sub_1000037B4("remoted[%d]: %s\n", v58, v57);
        free(v57);
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        *buf = 138543362;
        *&buf[4] = v41;
        v59 = _os_log_send_and_compose_impl();
        v60 = getpid();
        sub_1000037B4("remoted[%d]: %s\n", v60, v59);
        free(v59);
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        *buf = 138543362;
        *&buf[4] = v43;
        v61 = _os_log_send_and_compose_impl();
        v62 = getpid();
        sub_1000037B4("remoted[%d]: %s\n", v62, v61);
        free(v61);

LABEL_90:
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        *buf = 0;
        v63 = _os_log_send_and_compose_impl();
        v64 = getpid();
        sub_1000037B4("remoted[%d]: %s\n", v64, v63);
        free(v63);

        goto LABEL_22;
      }
    }
  }

  v46 = [v5 containsObject:@"1.2.840.113635.100.6.83"];
  if (v24)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  if (v47 == 1)
  {
    v48 = v133;
    v49 = v132;
    v50 = v49;
    v150 = 0;
    if (v49)
    {
      if (v24)
      {
        v51 = [v49 objectAtIndexedSubscript:0];
        if (v51)
        {
          v129 = v51;
          v52 = SecCertificateCopyKey(v51);
          if (!v52)
          {
            if (qword_100064478)
            {
              os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
            }

            *buf = 0;
            v79 = _os_log_send_and_compose_impl();
            v80 = getpid();
            sub_1000037B4("remoted[%d]: %s\n", v80, v79);
            free(v79);
            v67 = 0;
            goto LABEL_127;
          }

          cf = v52;
          v130 = SecKeyCopyExternalRepresentation(v52, &v150);
          if (v130)
          {
            if (qword_100064478)
            {
              os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
            }

            *buf = 0;
            LODWORD(v127) = 2;
            v68 = _os_log_send_and_compose_impl();
            free(v68);
            v69 = v130;
            [(__CFData *)v130 bytes:buf];
            [(__CFData *)v130 length];
            v70 = aks_attest_context_verify();
            v71 = v70;
            if (v70)
            {
              if (qword_100064478)
              {
                os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
                *buf = 67109120;
                *&buf[4] = v71;
              }

              else
              {
                *buf = 67109120;
                *&buf[4] = v70;
              }

              v81 = _os_log_send_and_compose_impl();
              v82 = getpid();
              sub_1000037B4("remoted[%d]: %s\n", v82, v81);
            }

            else
            {
              *buf = 0;
              *v140 = 0;
              v72 = aks_attest_context_get();
              v73 = v72;
              if (!v72 && *buf && *v140)
              {
                v74 = [NSData alloc];
                v75 = [v74 initWithBytes:*buf length:*v140];
                v76 = v75;
                if (v75)
                {
                  v77 = v75;

                  v78 = v76;
                  if (([(__CFData *)v48 isEqual:v78]& 1) != 0)
                  {
                    v67 = 1;
LABEL_126:

                    CFRelease(cf);
LABEL_127:
                    CFRelease(v129);
LABEL_128:
                    if (v150)
                    {
                      CFRelease(v150);
                    }

                    if (v67)
                    {
                      goto LABEL_131;
                    }

LABEL_139:
                    if (qword_100064478)
                    {
                      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
                    }

                    *buf = 0;
                    v95 = _os_log_send_and_compose_impl();
                    v96 = getpid();
                    sub_1000037B4("remoted[%d]: %s\n", v96, v95);
                    free(v95);

                    goto LABEL_22;
                  }

                  if (qword_100064478)
                  {
                    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
                  }

                  *buf = 0;
                  v81 = _os_log_send_and_compose_impl();
                  v122 = getpid();
                  sub_1000037B4("remoted[%d]: %s\n", v122, v81);
LABEL_125:
                  free(v81);
                  v67 = 0;
                  goto LABEL_126;
                }

                if (qword_100064478)
                {
                  os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
                }

                LOWORD(v151) = 0;
                v84 = _os_log_send_and_compose_impl();
                v86 = getpid();
                sub_1000037B4("remoted[%d]: %s\n", v86, v84);
              }

              else
              {
                if (qword_100064478)
                {
                  os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
                  LODWORD(v151) = 67109120;
                  HIDWORD(v151) = v73;
                }

                else
                {
                  LODWORD(v151) = 67109120;
                  HIDWORD(v151) = v72;
                }

                v84 = _os_log_send_and_compose_impl();
                v85 = getpid();
                sub_1000037B4("remoted[%d]: %s\n", v85, v84);
              }

              free(v84);
              if (qword_100064478)
              {
                os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
              }

              *buf = 67109120;
              *&buf[4] = 0;
              v81 = _os_log_send_and_compose_impl();
              v87 = getpid();
              sub_1000037B4("remoted[%d]: %s\n", v87, v81);
            }
          }

          else
          {
            if (qword_100064478)
            {
              os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
            }

            *buf = 138543362;
            *&buf[4] = v150;
            v81 = _os_log_send_and_compose_impl();
            v83 = getpid();
            sub_1000037B4("remoted[%d]: %s\n", v83, v81);
          }

          v78 = 0;
          goto LABEL_125;
        }

        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        *buf = 0;
        v65 = _os_log_send_and_compose_impl();
        v66 = getpid();
        sub_1000037B4("remoted[%d]: %s\n", v66, v65);
        free(v65);
      }

      else if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
      {
        sub_10003EBFC();
      }
    }

    else
    {
      if (!os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
      {

        goto LABEL_139;
      }

      sub_10003EC38();
    }

    v67 = 0;
    goto LABEL_128;
  }

LABEL_131:
  if (a1 != 15)
  {
    if (a1 != 16)
    {
      v94 = qword_100064478;
      goto LABEL_215;
    }

    *v140 = 0;
    v150 = @"GetCombined";
    v151 = kCFBooleanTrue;
    v88 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    v138 = 0;
    v139 = 0;
    v136 = 0;
    v137 = 0;
    v135 = 0;
    if (!v24)
    {
      if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
      {
        sub_10003EBFC();
      }

      goto LABEL_211;
    }

    v89 = AMFDRSealingMapCopyLocalDictForClass();
    if (!v89)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      }

      *buf = 138543362;
      *&buf[4] = *v140;
      v100 = _os_log_send_and_compose_impl();
      v101 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v101, v100);
      free(v100);
      goto LABEL_173;
    }

    if (sub_100020584())
    {
      if (sub_100020DE8(v89, v139, v138, &v135 + 1, &v135))
      {
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
        }

        *buf = 67109376;
        *&buf[4] = HIWORD(v135);
        *&buf[8] = 1024;
        *&buf[10] = v135;
        v104 = _os_log_send_and_compose_impl();
        free(v104);
        if (sub_100021278(&v137, &v136))
        {
          if (sub_100021500(v89, v137, v136))
          {
            if (qword_100064478)
            {
              os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
            }

            *buf = 0;
            v113 = _os_log_send_and_compose_impl();
            free(v113);

LABEL_173:
            v102 = 1;
            goto LABEL_212;
          }

          if (qword_100064478)
          {
            os_log_type_enabled(qword_100064478, OS_LOG_TYPE_FAULT);
          }

          goto LABEL_210;
        }

        if (!qword_100064478)
        {
LABEL_210:
          *buf = 0;
          v114 = _os_log_send_and_compose_impl();
          v115 = getpid();
          sub_1000037B4("remoted[%d]: %s\n", v115, v114);
          free(v114);

LABEL_211:
          v102 = 0;
LABEL_212:

          if (*v140)
          {
            CFRelease(*v140);
          }

          v94 = qword_100064478;
          if ((v102 & 1) == 0)
          {
            if (qword_100064478)
            {
              os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
            }

            *buf = 0;
            v117 = _os_log_send_and_compose_impl();
            v118 = getpid();
            sub_1000037B4("remoted[%d]: %s\n", v118, v117);
            free(v117);

            goto LABEL_22;
          }

          goto LABEL_215;
        }
      }

      else if (!qword_100064478)
      {
        goto LABEL_210;
      }
    }

    else if (!qword_100064478)
    {
      goto LABEL_210;
    }

    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    goto LABEL_210;
  }

  v139 = 0;
  *v140 = 0;
  v150 = 0;
  v151 = 0;
  v138 = 0;
  LOWORD(v137) = 0;
  LOWORD(v136) = 0;
  if (!v24)
  {
    if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR))
    {
      sub_10003EBFC();
    }

    goto LABEL_161;
  }

  if ((sub_100020584() & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    v97 = _os_log_send_and_compose_impl();
    v98 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v98, v97);
    free(v97);
    goto LABEL_161;
  }

  v90 = [NSString stringWithFormat:@"%08llX-%016llX", v151, v150];
  v91 = SecCertificateCopyExtensionValue();
  if (!v91)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
    }

    *buf = 0;
    v103 = _os_log_send_and_compose_impl();
    free(v103);
    if (!sub_100017BB8())
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
      }

      *buf = 0;
      v112 = _os_log_send_and_compose_impl();
      free(v112);

      goto LABEL_222;
    }

    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    v110 = _os_log_send_and_compose_impl();
    v111 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v111, v110);
    free(v110);

LABEL_161:
    v99 = 0;
    goto LABEL_162;
  }

  v92 = AMFDRSealingMapCopyDictFromCombinedData();
  v93 = v92;
  if (!v92)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 138543362;
    *&buf[4] = *v140;
    v105 = _os_log_send_and_compose_impl();
    v106 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v106, v105);
    free(v105);

    goto LABEL_161;
  }

  if (!sub_100021500(v92, v151, v150))
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    goto LABEL_202;
  }

  if (qword_100064478)
  {
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
  }

  *buf = 0;
  v107 = _os_log_send_and_compose_impl();
  free(v107);
  if ((sub_100021278(&v139, &v138) & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
LABEL_202:
    v108 = _os_log_send_and_compose_impl();
    v109 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v109, v108);
    free(v108);

    goto LABEL_161;
  }

  if ((sub_100020DE8(v93, v139, v138, &v137, &v136) & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    v120 = _os_log_send_and_compose_impl();
    v121 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v121, v120);
    free(v120);

    goto LABEL_161;
  }

  if (qword_100064478)
  {
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
  }

  *buf = 67109376;
  *&buf[4] = v137;
  *&buf[8] = 1024;
  *&buf[10] = v136;
  v119 = _os_log_send_and_compose_impl();
  free(v119);

LABEL_222:
  v99 = 1;
LABEL_162:
  if (*v140)
  {
    CFRelease(*v140);
  }

  v94 = qword_100064478;
  if ((v99 & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    *buf = 0;
    goto LABEL_61;
  }

LABEL_215:
  if (v94)
  {
    os_log_type_enabled(v94, OS_LOG_TYPE_INFO);
  }

  *buf = 0;
  v116 = _os_log_send_and_compose_impl();
  free(v116);

  v25 = 1;
LABEL_23:
  free(v24);
  if (v7)
  {
    CFRelease(v7);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v25;
}

void sub_10001F878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef a23)
{
  free(v25);
  CFRelease(cf);
  CFRelease(a12);
  v28 = *(v26 - 120);
  if (v28)
  {
    CFRelease(v28);
  }

  free(v24);
  if (v23)
  {
    CFRelease(v23);
  }

  if (a17)
  {
    CFRelease(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001FA48(void *a1, __SecCertificate *a2)
{
  v3 = a1;
  v4 = [v3 type];
  v5 = objc_opt_class();

  v6 = [v5 tlsOidsRequiredOfPeer];
  v7 = sub_10001CFF0(v4, v6, a2);

  return v7;
}

uint64_t sub_10001FABC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_string)
  {
    v5 = *(a1 + 32);
    v6 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v4)];
    [v5 addObject:v6];
  }

  return 1;
}

id sub_10001FB40(void *a1, int a2)
{
  v3 = a1;
  error = 0;
  trust = 0;
  v4 = [v3 mutableCopy];
  if (a2)
  {
    v5 = [NSData alloc];
    v6 = [v5 initWithBytes:aBeginCertifica length:dword_1000642D8];
    if (v6)
    {
      AppleBasicAttestationSystem = SecPolicyCreateAppleBasicAttestationSystem();
      if (!AppleBasicAttestationSystem)
      {
        if (qword_100064478)
        {
          os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
        }

        LOWORD(v30) = 0;
        v21 = _os_log_send_and_compose_impl();
        v22 = sub_10001296C("evaluateDcrt", "identity.m", 668, "com.apple.RemoteServiceDiscovery", 2, 0, v21);
LABEL_31:
        v17 = v22;
        free(v21);
        v9 = 0;
LABEL_32:
        v10 = 0;
        goto LABEL_41;
      }

      goto LABEL_8;
    }

    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(v30) = 0;
    v15 = _os_log_send_and_compose_impl();
    v16 = sub_10001296C("evaluateDcrt", "identity.m", 662, "com.apple.RemoteServiceDiscovery", 2, 0, v15);
LABEL_25:
    v17 = v16;
    free(v15);
    v9 = 0;
    v10 = 0;
    v6 = 0;
    goto LABEL_41;
  }

  v8 = [NSData alloc];
  v6 = [v8 initWithBytes:aBeginCertifica_0 length:dword_100063FB4];
  if (!v6)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(v30) = 0;
    v15 = _os_log_send_and_compose_impl();
    v16 = sub_10001296C("evaluateDcrt", "identity.m", 674, "com.apple.RemoteServiceDiscovery", 2, 0, v15);
    goto LABEL_25;
  }

  AppleBasicAttestationSystem = SecPolicyCreateAppleBasicAttestationUser();
  if (!AppleBasicAttestationSystem)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(v30) = 0;
    v21 = _os_log_send_and_compose_impl();
    v22 = sub_10001296C("evaluateDcrt", "identity.m", 680, "com.apple.RemoteServiceDiscovery", 2, 0, v21);
    goto LABEL_31;
  }

LABEL_8:
  v9 = AppleBasicAttestationSystem;
  v10 = SecCertificateCreateWithPEM();
  if (!v10)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(v30) = 0;
    v20 = _os_log_send_and_compose_impl();
    v17 = sub_10001296C("evaluateDcrt", "identity.m", 687, "com.apple.RemoteServiceDiscovery", 2, 0, v20);
    free(v20);
    goto LABEL_32;
  }

  [v4 addObject:v10];
  v11 = SecTrustCreateWithCertificates(v4, v9, &trust);
  v12 = v11;
  if (v11)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      v30 = 67109120;
      v31 = v12;
    }

    else
    {
      v30 = 67109120;
      v31 = v11;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = sub_10001296C("evaluateDcrt", "identity.m", 695, "com.apple.RemoteServiceDiscovery", 2, 0, v18);
LABEL_40:
    v17 = v19;
    free(v18);
    goto LABEL_41;
  }

  v29 = v10;
  v13 = SecTrustSetAnchorCertificates(trust, [NSArray arrayWithObjects:&v29 count:1]);
  v14 = v13;
  if (v13)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      v30 = 67109120;
      v31 = v14;
    }

    else
    {
      v30 = 67109120;
      v31 = v13;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = sub_10001296C("evaluateDcrt", "identity.m", 701, "com.apple.RemoteServiceDiscovery", 2, 0, v18);
    goto LABEL_40;
  }

  if (!SecTrustEvaluateWithError(trust, &error))
  {
    if (!SecTrustIsExpiredOnly() && !sub_1000128FC(error, NSOSStatusErrorDomain, 0xFFFFFFFFFFFEF716))
    {
      v17 = error;
      error = 0;
      goto LABEL_41;
    }

    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
    }

    LOWORD(v30) = 0;
    v25 = _os_log_send_and_compose_impl();
    free(v25);
  }

  if (qword_100064478)
  {
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
  }

  LOWORD(v30) = 0;
  v26 = _os_log_send_and_compose_impl();
  free(v26);
  v17 = 0;
LABEL_41:
  v23 = v17;

  if (v10)
  {
    CFRelease(v10);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (trust)
  {
    CFRelease(trust);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v23;
}

void sub_1000204D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, CFTypeRef a13)
{
  free(v15);
  CFRelease(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a13)
  {
    CFRelease(a13);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100020584()
{
  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = 0;
  v0 = aks_attest_context_get();
  v1 = v0;
  if (qword_100064478)
  {
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    v9 = 67109120;
    LODWORD(v10) = v1;
  }

  else
  {
    v9 = 67109120;
    LODWORD(v10) = v0;
  }

  v2 = _os_log_send_and_compose_impl();
  v3 = getpid();
  sub_1000037B4("remoted[%d]: %s\n", v3, v2);
  free(v2);

  return 0;
}

uint64_t sub_100020DE8(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v6)
  {
    v7 = *v28;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v27 + 1) + 8 * v8);
      v25 = 0;
      v26 = 0;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 hasPrefix:@"N"] && objc_msgSend(v9, "hasSuffix:", @"1") && objc_msgSend(v9, "length") == 4)
      {
        v10 = [v9 characterAtIndex:1];
        v11 = [v9 characterAtIndex:2];
        v12 = [v5 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [[NSString alloc] initWithData:v12 encoding:4];
          v14 = qword_100064478;
          if (os_log_type_enabled(qword_100064478, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v32 = v13;
            v33 = 1024;
            v34 = v10;
            v35 = 1024;
            v36 = v11;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Chassis manifest lists cnode UDID '%@' at carrier %lc index %lc", buf, 0x18u);
          }

          if (sub_100021878(v13, &v26, &v25))
          {
            if (v26 == a2 && v25 == a3)
            {
              if (a4)
              {
                *a4 = v10;
              }

              if (a5)
              {
                *a5 = v11;
              }

              v19 = 1;
              goto LABEL_34;
            }

            goto LABEL_18;
          }

          if (qword_100064478)
          {
            os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
          }

          *buf = 138543362;
          v32 = v13;
          v15 = _os_log_send_and_compose_impl();
          v17 = getpid();
          sub_1000037B4("remoted[%d]: %s\n", v17, v15);
        }

        else
        {
          if (qword_100064478)
          {
            os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
          }

          *buf = 138543362;
          v32 = v9;
          v15 = _os_log_send_and_compose_impl();
          v16 = getpid();
          sub_1000037B4("remoted[%d]: %s\n", v16, v15);
          v13 = 0;
        }

        free(v15);
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

LABEL_18:

      if (v6 == ++v8)
      {
        v18 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
        v6 = v18;
        if (v18)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = 0;
LABEL_34:

  return v19;
}

uint64_t sub_100021278(void *a1, void *a2)
{
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      if (qword_100064478)
      {
        os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
      }

      v9 = _os_log_send_and_compose_impl();
      v10 = getpid();
      sub_1000037B4("remoted[%d]: %s\n", v10, v9);
      free(v9);
      v6 = 0;
      goto LABEL_16;
    }

    if (a1)
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, a1);
    }

    if (a2)
    {
      CFNumberGetValue(v6, kCFNumberLongLongType, a2);
    }
  }

  else
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    v7 = _os_log_send_and_compose_impl();
    v8 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v8, v7);
    free(v7);
    if (!v6)
    {
      return v6;
    }
  }

  CFRelease(v6);
  if (v4)
  {
    v6 = 1;
LABEL_16:
    CFRelease(v4);
    return v6;
  }

  return 0;
}

void sub_1000214B0(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

BOOL sub_100021500(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v17 = 0;
  v18 = 0;
  v6 = [v5 objectForKeyedSubscript:@"BM02"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    LOWORD(v19) = 0;
    v12 = _os_log_send_and_compose_impl();
    v13 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v13, v12);
    free(v12);
    goto LABEL_19;
  }

  v7 = [[NSString alloc] initWithData:v6 encoding:4];
  v8 = v7;
  if (qword_100064478)
  {
    os_log_type_enabled(qword_100064478, OS_LOG_TYPE_INFO);
    v19 = 138412290;
    v20 = v8;
  }

  else
  {
    v19 = 138412290;
    v20 = v7;
  }

  v9 = _os_log_send_and_compose_impl();
  free(v9);
  if ((sub_100021878(v8, &v18, &v17) & 1) == 0)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    v19 = 138543362;
    v20 = v8;
    v14 = _os_log_send_and_compose_impl();
    v15 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v15, v14);
    free(v14);

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v11 = v18 == a2 && v17 == a3;

LABEL_20:
  return v11;
}

uint64_t sub_100021878(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 componentsSeparatedByString:@"-"];
  v7 = v6;
  if (!v6 || [v6 count] != 2)
  {
    if (qword_100064478)
    {
      os_log_type_enabled(qword_100064478, OS_LOG_TYPE_ERROR);
    }

    v13 = _os_log_send_and_compose_impl();
    v14 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v14, v13);
    v9 = 0;
    goto LABEL_9;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [NSScanner scannerWithString:v8];

  if (([v9 scanHexLongLong:a2] & 1) == 0)
  {
    if (qword_100064478)
    {
      v16 = qword_100064478;
      os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      v17 = [v7 objectAtIndexedSubscript:0];
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      v20 = &_os_log_default;
      v24 = [v7 objectAtIndexedSubscript:0];
      v13 = _os_log_send_and_compose_impl();

      v16 = &_os_log_default;
    }

    v21 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v21, v13);
    goto LABEL_9;
  }

  v10 = [v7 objectAtIndexedSubscript:1];
  v11 = [NSScanner scannerWithString:v10];

  if (([v11 scanHexLongLong:a3] & 1) == 0)
  {
    if (qword_100064478)
    {
      v18 = qword_100064478;
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      v19 = [v7 objectAtIndexedSubscript:1];
      v13 = _os_log_send_and_compose_impl();
    }

    else
    {
      v22 = &_os_log_default;
      v25 = [v7 objectAtIndexedSubscript:1];
      v13 = _os_log_send_and_compose_impl();

      v18 = &_os_log_default;
    }

    v23 = getpid();
    sub_1000037B4("remoted[%d]: %s\n", v23, v13);
    v9 = v11;
LABEL_9:
    free(v13);
    v12 = 0;
    v11 = v9;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

void sub_100022724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = qword_100064498;
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
    {
      sub_10003ED98(a1, a3, v5);
    }

    [*(a1 + 32) connect:0];
  }

  else
  {
    v6 = [*(a1 + 32) connection];

    v7 = qword_100064498;
    v8 = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, but socket is not needed anymore, closing", &v13, 0xCu);
      }

      close(*(a1 + 40));
    }

    else
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, socket is connected", &v13, 0xCu);
      }

      v11 = *(a1 + 40);
      xpc_remote_connection_get_failsafe_version_flags();
      v12 = xpc_remote_connection_create_with_connected_fd();
      [*(a1 + 32) connect:v12];
    }
  }
}

void sub_1000228DC(void *a1)
{
  v2 = a1;
  if (!qword_1000644A8)
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "network_peer");
    v4 = qword_100064498;
    qword_100064498 = v3;

    v5 = qword_100064498;
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "initializing network peer device", v8, 2u);
    }

    objc_storeStrong(&qword_1000644A8, a1);
    v6 = objc_opt_new();
    v7 = qword_1000644A0;
    qword_1000644A0 = v6;
  }
}

BOOL sub_1000229B0(const char *a1)
{
  v2 = qword_1000644A8;
  if (!v2)
  {
    sub_10003F068(handler, buf);
  }

  v3 = qword_100064498;
  if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enabling network peer", buf, 2u);
  }

  if (a1)
  {
    if (qword_1000644B0)
    {
      result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10003EE14();
        return 0;
      }
    }

    else
    {
      v5 = if_nametoindex(a1);
      if (v5)
      {
        v6 = v5;
        if (sub_1000244F8(a1, &stru_1000644B8, 0))
        {
          result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
          if (result)
          {
            sub_10003EE50();
            return 0;
          }
        }

        else
        {
          v7 = qword_100064498;
          if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "create peer listener start", buf, 2u);
          }

          handle_6 = -6663;
          handle = -1;
          v8 = sub_1000240DC(&handle, &stru_1000644B8, &handle_6, v6, &unk_100049E6C);
          if (v8)
          {
            v9 = v8;
            v10 = qword_100064498;
            if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v9;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to start remoted listener: %{darwin.errno}d", buf, 8u);
              v10 = qword_100064498;
            }

            result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
            if (result)
            {
              sub_10003EEC0();
              return 0;
            }
          }

          else
          {
            if (qword_1000644C8)
            {
              sub_10003EF30(&v20, buf);
            }

            v11 = dispatch_source_create(&_dispatch_source_type_read, handle, 0, qword_1000644A8);
            v12 = qword_1000644C8;
            qword_1000644C8 = v11;

            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100023390;
            handler[3] = &unk_10005D558;
            v19 = handle;
            dispatch_source_set_event_handler(qword_1000644C8, handler);
            LODWORD(v17) = handle;
            dispatch_source_set_mandatory_cancel_handler();
            dispatch_activate(qword_1000644C8);
            v13 = qword_100064498;
            if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "create peer listener done", buf, 2u);
            }

            v14 = objc_alloc_init(RSDNCMInterface);
            v15 = qword_1000644B0;
            qword_1000644B0 = v14;

            [qword_1000644B0 setIndex:{v6, _NSConcreteStackBlock, 3221225472, sub_100023500, &unk_10005D558, v17}];
            [qword_1000644B0 setName:strdup(a1)];
            v16 = qword_100064498;
            if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = a1;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "network peer enabled on %{public}s", buf, 0xCu);
            }

            return 1;
          }
        }
      }

      else
      {
        result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10003EFB8();
          return 0;
        }
      }
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10003F02C();
      return 0;
    }
  }

  return result;
}

void sub_100022DDC()
{
  v0 = qword_1000644A8;
  if (!v0)
  {
    sub_10003F068(&v17, buf);
  }

  v1 = qword_100064498;
  if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "disabling network peer", buf, 2u);
  }

  if (qword_1000644B0)
  {
    v2 = qword_1000644C8;
    if (!v2)
    {
      sub_10003F114(&v17, buf);
    }

    dispatch_source_cancel(qword_1000644C8);
    v3 = qword_1000644C8;
    qword_1000644C8 = 0;

    v4 = qword_1000644B0;
    qword_1000644B0 = 0;

    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F0D4();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [qword_1000644A0 copy];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 state] == 3)
          {
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_100023088;
            v12[3] = &unk_10005D668;
            v12[4] = v10;
            [v10 goodByeWithCallback:v12];
          }

          else
          {
            [v10 disconnect];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    *&stru_1000644B8.sa_len = 0;
    *&stru_1000644B8.sa_data[6] = 0;
    v11 = qword_100064498;
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "network peer disabled", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
  {
    sub_10003F180();
  }
}

id sub_100023088(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
  {
    sub_10003F1BC();
  }

  return [*(a1 + 32) disconnect];
}

BOOL sub_1000230E8(void *a1)
{
  v2 = qword_1000644A8;
  if (!v2)
  {
    sub_10003F068(&v8, v9);
  }

  if (!qword_1000644B0)
  {
    result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10003F2A4();
    return 0;
  }

  v3 = sub_100023220(a1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
    {
      sub_10003F22C();
    }

    return 0;
  }

  v6 = [[RSDRemoteNetworkPeerDevice alloc] initClientWithRemoteAddress:a1];
  if (v6)
  {
    v7 = v6;
    [v6 attach];

    return 1;
  }

  result = os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10003F268();
    return 0;
  }

  return result;
}

id sub_100023220(void *a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = qword_1000644A0;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 remote_address];
        if (*v10 == *a1 && v10[1] == a1[1])
        {
          v12 = v9;

          ++v5;
          v6 = v12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);

    if (v6 && v5 >= 2)
    {
      sub_10003F2E0(&v14, v19);
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

uint64_t sub_100023390(uint64_t a1)
{
  v16 = 0;
  v17 = -1431655766;
  *&v14.sa_len = 0;
  *&v14.sa_data[6] = 0;
  v15 = 0;
  v13 = 28;
  for (result = sub_100024924(*(a1 + 32), &v14, &v13, &xmmword_100049E58, &v17); !result; result = sub_100024924(*(a1 + 32), &v14, &v13, &xmmword_100049E58, &v17))
  {
    v3 = qword_100064498;
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got incoming remoted connection", buf, 2u);
    }

    v4 = sub_100023220(&v14.sa_data[6]);
    v5 = v4;
    if (v4)
    {
      [v4 serverReplacePeerSocket:v17];
    }

    else
    {
      v6 = [RSDRemoteNetworkPeerDevice alloc];
      v7 = [(RSDRemoteNetworkPeerDevice *)v6 initServerWithPeerSocket:v17];
      if (v7)
      {
        v8 = v7;
        [v7 attach];
      }

      else
      {
        v9 = qword_100064498;
        if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
        {
          sub_10003F37C(&v10, v11, v9);
        }
      }
    }
  }

  return result;
}

double sub_100023514(void *a1, _OWORD *a2)
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

void sub_100023538(void *a1, int a2, int a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100023758;
  v43 = sub_100023784;
  v44 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10002378C;
  v28[3] = &unk_10005D918;
  v34 = v45;
  v20 = v16;
  v30 = v20;
  v36 = a2;
  v21 = v17;
  v31 = v21;
  v37 = a3;
  v38 = a4;
  v22 = v15;
  v29 = v22;
  v23 = v18;
  v32 = v23;
  v35 = &v39;
  v24 = v19;
  v33 = v24;
  v25 = objc_retainBlock(v28);
  v26 = objc_retainBlock(v25);
  v27 = v40[5];
  v40[5] = v26;

  (v25[2])(v25);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(v45, 8);
}

void sub_100023734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_100023758(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10002378C(uint64_t a1)
{
  ++*(*(*(a1 + 72) + 8) + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023890;
  v5[3] = &unk_10005D8F0;
  v10 = *(a1 + 72);
  v12 = *(a1 + 88);
  v2 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = *(a1 + 92);
  v6 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v8 = v3;
  v11 = v4;
  v9 = *(a1 + 64);
  (*(v2 + 16))(v2, v5);
}

void sub_100023890(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(*(*(a1 + 64) + 8) + 24);
  if (v4 >= *(a1 + 80))
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if ((*(v5 + 16))(v5, v3))
    {
      v4 = *(*(*(a1 + 64) + 8) + 24);
      goto LABEL_6;
    }

LABEL_7:
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = *(*(*(a1 + 64) + 8) + 24);
    (*(*(a1 + 56) + 16))();
    goto LABEL_8;
  }

LABEL_6:
  v6 = dispatch_time(0, 1000000000 * (*(a1 + 84) + (v4 - 1) * *(a1 + 88)));
  v7 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000239E0;
  block[3] = &unk_10005D8C8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  dispatch_after(v6, v7, block);

LABEL_8:
}

uint64_t sub_1000239E0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[5] + 8) + 24));
  }

  v3 = *(*(*(a1[6] + 8) + 40) + 16);

  return v3();
}

void sub_100023A44(void *a1)
{
  v2 = a1;
  v3 = os_log_create("com.apple.RemoteServiceDiscovery", "watchdog");
  v4 = qword_1000644D0;
  qword_1000644D0 = v3;

  objc_storeStrong(&qword_1000644D8, a1);
  if ((sub_10000FC88() & 1) == 0)
  {
    if (qword_1000644E8 != -1)
    {
      sub_10003F3BC();
    }

    if (!dword_1000644F0)
    {
      v7 = qword_1000644D0;
      if (!os_log_type_enabled(qword_1000644D0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v11 = 0;
      v8 = "Not enable remoted watchdog";
      v9 = &v11;
      goto LABEL_7;
    }
  }

  wd_endpoint_register();
  wd_endpoint_add_queue();
  v5 = os_transaction_create();
  v6 = qword_1000644E0;
  qword_1000644E0 = v5;

  wd_endpoint_activate();
  v7 = qword_1000644D0;
  if (os_log_type_enabled(qword_1000644D0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v8 = "activated remoted watchdog";
    v9 = &v10;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }

LABEL_8:
}

void sub_100023B84(id a1)
{
  v1 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  if (os_parse_boot_arg_string())
  {
    dword_1000644F0 = remote_device_type_parse();
  }

  free(v1);
}

uint64_t sub_100023C1C(int *a1, sockaddr *a2, unsigned int a3, int a4, uint64_t a5)
{
  memset(v15, 170, 28);
  if (!a1 || !a2 || !a3)
  {
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *v17 = a1;
      *&v17[8] = 2048;
      v18 = a2;
      *v19 = 1024;
      *&v19[2] = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "invalid fd %p, addr %p or port %d", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  if (a2->sa_len == 254 && !a4 && (a2->sa_family & 0xC0) == 0x80)
  {
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F3D0();
    }

LABEL_11:
    v10 = 22;
    goto LABEL_15;
  }

  v11 = sub_100023F24(a1, a4, a5);
  if (v11)
  {
    v10 = v11;
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F410();
    }
  }

  else
  {
    *&v15[0].sa_len = 7708;
    *v15[0].sa_data = __rev16(a3);
    *&v15[0].sa_data[6] = *a2;
    *&v15[0].sa_data[2] = 0;
    *&v15[1].sa_data[6] = a4;
    v13 = sub_100023EE0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67110402;
      *v17 = 28;
      *&v17[4] = 1024;
      *&v17[6] = 30;
      LOWORD(v18) = 1024;
      *(&v18 + 2) = a3;
      HIWORD(v18) = 1024;
      *v19 = a4;
      *&v19[4] = 1040;
      v20 = 16;
      v21 = 2096;
      v22 = &v15[0].sa_data[6];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sockaddr_in6 { len: %d, family: %d, port: %d, scope_id: %d, addr: %{network:in6_addr}.16P }", buf, 0x2Au);
    }

    if (*a1 < 0)
    {
      sub_10003F478(&v14, buf);
    }

    if (!connect(*a1, v15, 0x1Cu) || *__error() == 36)
    {
      return 0;
    }

    v10 = *__error();
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F4E4(a1, v10, v9);
    }
  }

LABEL_15:

  if (a1 && v10)
  {
    close_drop_optional_np();
  }

  return v10;
}

id sub_100023EE0()
{
  if (qword_100064500 != -1)
  {
    sub_10003F570();
  }

  v1 = qword_1000644F8;

  return v1;
}

uint64_t sub_100023F24(int *a1, int a2, uint64_t a3)
{
  v11 = a2;
  *a1 = socket(30, 1, 0);
  v6 = sub_100023EE0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F584(a1, v6);
  }

  if (*a1 == -1)
  {
    a3 = *__error();
    v7 = sub_100023EE0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003F6F0();
    }

LABEL_16:

    if (a3)
    {
LABEL_17:
      close_drop_optional_np();
      return a3;
    }

    return a3;
  }

  if (fcntl(*a1, 4, 4) == -1)
  {
    sub_100039E00(&v10, v12);
  }

  if (a2 && setsockopt(*a1, 41, 125, &v11, 4u))
  {
    a3 = *__error();
    v7 = sub_100023EE0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003F620();
    }

    goto LABEL_16;
  }

  if (a3)
  {
    a3 = sub_100024A00(*a1, a3);
    if (a3)
    {
      v8 = sub_100023EE0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003F688();
      }

      goto LABEL_17;
    }
  }

  return a3;
}

uint64_t sub_1000240DC(int *a1, sockaddr *a2, _WORD *a3, int a4, uint64_t a5)
{
  if (!a1 || !a2 || !a3)
  {
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *v21 = a1;
      *&v21[8] = 2048;
      *&v21[10] = a2;
      *&v21[18] = 2048;
      *&v21[20] = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "invalid fd %p, addr %p or port %p", buf, 0x20u);
    }

    goto LABEL_11;
  }

  if (a2->sa_len == 254 && !a4 && (a2->sa_family & 0xC0) == 0x80)
  {
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F3D0();
    }

LABEL_11:
    v10 = 22;
LABEL_15:

    if (a1 && v10)
    {
      close_drop_optional_np();
    }

    return v10;
  }

  memset(v19, 170, 28);
  v11 = sub_100023F24(a1, a4, a5);
  if (v11)
  {
    v10 = v11;
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F410();
    }

    goto LABEL_15;
  }

  v18 = 1;
  if (setsockopt(*a1, 0xFFFF, 4, &v18, 4u) < 0)
  {
    v10 = *__error();
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F890();
    }

    goto LABEL_15;
  }

  v13 = *a3;
  *&v19[0].sa_len = 7708;
  *v19[0].sa_data = __rev16(v13);
  *&v19[0].sa_data[6] = *a2;
  *&v19[0].sa_data[2] = 0;
  *&v19[1].sa_data[6] = a4;
  v14 = sub_100023EE0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *v21 = 28;
    *&v21[4] = 1024;
    *&v21[6] = 30;
    *&v21[10] = 1024;
    *&v21[12] = v13;
    *&v21[16] = 1024;
    *&v21[18] = a4;
    *&v21[22] = 1040;
    *&v21[24] = 16;
    v22 = 2096;
    v23 = &v19[0].sa_data[6];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "sockaddr_in6 { len: %d, family: %d, port: %d, scope_id: %d, addr: %{network:in6_addr}.16P }", buf, 0x2Au);
  }

  if (bind(*a1, v19, 0x1Cu) == -1)
  {
    v10 = *__error();
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F828();
    }

    goto LABEL_15;
  }

  if (listen(*a1, 128) == -1)
  {
    v10 = *__error();
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F7C0();
    }

    goto LABEL_15;
  }

  v17 = 28;
  if (getsockname(*a1, v19, &v17) == -1)
  {
    v10 = *__error();
    v9 = sub_100023EE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F758();
    }

    goto LABEL_15;
  }

  *a3 = bswap32(*v19[0].sa_data) >> 16;
  v15 = sub_100023EE0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *a3;
    *buf = 68158466;
    *v21 = 16;
    *&v21[4] = 2096;
    *&v21[6] = &v19[0].sa_data[6];
    *&v21[14] = 1024;
    *&v21[16] = a4;
    *&v21[20] = 1024;
    *&v21[22] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "bound to %{network:in6_addr}.16P%%%d:%d", buf, 0x1Eu);
  }

  return 0;
}

uint64_t sub_1000244F8(const char *a1, _OWORD *a2, int a3)
{
  if (!a2)
  {
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003F9FC();
    }

    v7 = 22;
    goto LABEL_33;
  }

  v14 = 0;
  if (getifaddrs(&v14))
  {
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003F8F8(v6);
    }

    v7 = 0xFFFFFFFFLL;
LABEL_33:

    return v7;
  }

  v8 = v14;
  if (!v14)
  {
    freeifaddrs(0);
    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    if (v8->ifa_flags)
    {
      ifa_addr = v8->ifa_addr;
      if (ifa_addr->sa_family == 30 && !strncmp(v8->ifa_name, a1, 0x10uLL) && (!a3 || ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80))
      {
        *&ifa_addr[1].sa_data[6] = if_nametoindex(a1);
        v12 = sub_100023EE0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v16 = a1;
          v17 = 1040;
          v18 = 16;
          v19 = 2096;
          v20 = &ifa_addr->sa_data[6];
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s: %{network:in6_addr}.16P", buf, 0x1Cu);
        }

        ++v9;
        v10 = v8;
      }
    }

    v8 = v8->ifa_next;
  }

  while (v8);
  if (v10)
  {
    *a2 = *&v10->ifa_addr->sa_data[6];
  }

  freeifaddrs(v14);
  if (v9 >= 2)
  {
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found more than one ipv6 addresses for %s", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_33;
  }

  if (!v9)
  {
LABEL_30:
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003F988();
    }

    v7 = 3;
    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_1000247A0(int a1, _OWORD *a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v7 = 28;
  if (!a2)
  {
    sub_10003FAA4(&v6, v10);
  }

  if (getpeername(a1, v8, &v7))
  {
    v3 = *__error();
    v4 = sub_100023EE0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003FA3C();
    }
  }

  else
  {
    v3 = 0;
    *a2 = *&v8[8];
  }

  return v3;
}

uint64_t sub_100024870(const char *a1)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!if_nametoindex(a1))
  {
    v3 = sub_100023EE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003FB84();
    }

    v2 = 2;
    goto LABEL_8;
  }

  v2 = sub_1000244F8(a1, &v5, 0);
  if (v2)
  {
    v3 = sub_100023EE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003FB10();
    }

LABEL_8:
  }

  return v2;
}

uint64_t sub_100024924(int a1, sockaddr *a2, socklen_t *a3, unsigned __int8 *a4, int *a5)
{
  if (!a5)
  {
    return 22;
  }

  v7 = accept(a1, a2, a3);
  if (v7 == -1)
  {
    v9 = *__error();
    if (v9 != 35)
    {
      v11 = sub_100023EE0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003FC60();
      }
    }
  }

  else
  {
    v8 = v7;
    v9 = sub_100024A00(v7, a4);
    if (v9)
    {
      v10 = sub_100023EE0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003FBF8();
      }

      if ((v8 & 0x80000000) == 0)
      {
        close(v8);
      }
    }

    else
    {
      *a5 = v8;
    }
  }

  return v9;
}

uint64_t sub_100024A00(int a1, unsigned __int8 *a2)
{
  if (!*(a2 + 4))
  {
    sub_10003FED0(&v11, v12);
  }

  v4 = *a2;
  LODWORD(v12[0]) = *(a2 + 4);
  if ((v4 & 1) == 0 && setsockopt(a1, 6, 32, v12, 4u))
  {
    v5 = *__error();
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FCC8();
    }

LABEL_10:

    return v5;
  }

  if (a2[1] != 1)
  {
    return 0;
  }

  LODWORD(v12[0]) = 1;
  if (setsockopt(a1, 0xFFFF, 8, v12, 4u))
  {
    v5 = *__error();
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD30();
    }

    goto LABEL_10;
  }

  v7 = a2[1];
  LODWORD(v12[0]) = v7;
  if (((v4 ^ 1) & v7) == 1 && setsockopt(a1, 6, 16, v12, 4u))
  {
    v5 = *__error();
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD98();
    }

    goto LABEL_10;
  }

  v8 = *(a2 + 2);
  LODWORD(v12[0]) = v8;
  if ((v4 & 1) == 0 && v8 && setsockopt(a1, 6, 258, v12, 4u))
  {
    v5 = *__error();
    v6 = sub_100023EE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FE00();
    }

    goto LABEL_10;
  }

  v5 = 0;
  v9 = *(a2 + 3);
  LODWORD(v12[0]) = v9;
  if ((v4 & 1) == 0 && v9)
  {
    if (setsockopt(a1, 6, 257, v12, 4u))
    {
      v5 = *__error();
      v6 = sub_100023EE0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003FE68();
      }

      goto LABEL_10;
    }

    return 0;
  }

  return v5;
}

void sub_100024C5C(id a1)
{
  qword_1000644F8 = os_log_create("com.apple.RemoteServiceDiscovery", "network");

  _objc_release_x1();
}

void sub_100024CA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100024CBC()
{
  if (qword_100064528 != -1)
  {
    sub_10003FF3C();
  }

  if ((byte_100064530 & 1) == 0)
  {
    if (qword_100064538 != -1)
    {
      sub_10003FF50();
    }

    if (dword_100064540 || os_variant_is_darwinos() && !os_variant_is_recovery() || sub_10000FC88())
    {
      v0 = os_log_create("com.apple.RemoteServiceDiscovery", "timesync");
      v1 = qword_100064508;
      qword_100064508 = v0;

      v2 = dispatch_queue_create("com.apple.remoted.timesync", 0);
      v3 = qword_100064510;
      qword_100064510 = v2;

      started = remote_device_start_browsing();
      v5 = qword_100064520;
      qword_100064520 = started;

      v6 = qword_100064508;
      if (os_log_type_enabled(qword_100064508, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "enabled remoted timesync", v7, 2u);
      }
    }
  }
}

void sub_100024DF8(id a1, OS_remote_device *a2, BOOL a3)
{
  v4 = a2;
  type = remote_device_get_type();
  if (qword_100064538 != -1)
  {
    sub_10003FF50();
  }

  if (dword_100064540)
  {
    v6 = dword_100064540 == type;
  }

  else
  {
    if (type > 0xF)
    {
      goto LABEL_15;
    }

    v6 = 1;
    if (((1 << type) & 0x9200) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v6 && qword_100064518 == 0)
  {
    objc_storeStrong(&qword_100064518, a2);
    name = remote_device_get_name();
    v9 = qword_100064508;
    if (os_log_type_enabled(qword_100064508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "start timesync with %{public}s", buf, 0xCu);
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100064510);
    dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000250C0;
    handler[3] = &unk_10005D9C0;
    v16 = name;
    v11 = v10;
    v15 = v11;
    v17 = type;
    dispatch_source_set_event_handler(v11, handler);
    v13 = v11;
    remote_device_set_connected_callback();
    v12 = v13;
    remote_device_set_disconnected_callback();
    dispatch_activate(v12);
  }

LABEL_15:
}

void sub_1000250C0(uint64_t a1)
{
  v2 = remote_device_timesync();
  v3 = qword_100064508;
  if (os_log_type_enabled(qword_100064508, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "fail";
    v5 = *(a1 + 40);
    if (v2)
    {
      v4 = "success";
    }

    v8 = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "timesync with %{public}s %{public}s", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  if (*(a1 + 48) == 15)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0, 60000000000);
  }

  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void sub_1000251F4(uint64_t a1)
{
  v2 = qword_100064508;
  if (os_log_type_enabled(qword_100064508, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s disconnected, timesync stop", &v5, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v4 = qword_100064518;
  qword_100064518 = 0;
}

void sub_1000252B0(id a1)
{
  if (os_parse_boot_arg_int())
  {
    byte_100064530 = 0;
  }
}

void sub_1000252F8(id a1)
{
  v1 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  if (os_parse_boot_arg_string())
  {
    dword_100064540 = remote_device_type_parse();
  }

  free(v1);
}

uint64_t sub_100025390()
{
  if (qword_100064550 != -1)
  {
    sub_10003FF64();
  }

  return byte_100064548;
}

void sub_1000253C8(id a1)
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    byte_100064548 = [v1 BOOLValue];
  }
}

BOOL sub_100025438(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 entitlement];
  if (!v5)
  {
    sub_10003FFE4(&v13, v14);
  }

  v6 = v5;
  if (!strcmp(v5, "None-AppleInternal") || sub_100025574(v6))
  {
    goto LABEL_7;
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    sub_10003FF78(&v13, v14);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v7;
  v14[1] = v7;
  xpc_dictionary_get_audit_token();
  v8 = xpc_copy_entitlement_for_token();

  if (v8 || (v9 = xpc_copy_entitlement_for_token(), v9, v9))
  {
LABEL_7:
    v10 = 1;
  }

  else
  {
    v12 = xpc_copy_entitlement_for_token();
    v10 = v12 != 0;
  }

  return v10;
}

id sub_1000255C0(void *a1, int a2)
{
  v3 = sub_100006128(a1, "ERROR");
  xpc_dictionary_set_int64(v3, "error_code", a2);

  return v3;
}

void sub_10002583C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_error)
  {
    v4 = sub_100002B18(v3);
    v5 = qword_100064558;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) name];
      *buf = 136446466;
      v11 = v6;
      v12 = 2082;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Accepting service connection for %{public}s (client=%{public}s)", buf, 0x16u);
    }

    free(v4);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000259D0;
    v8[3] = &unk_10005D1D0;
    v8[4] = *(a1 + 32);
    v7 = v3;
    v9 = v7;
    xpc_connection_set_event_handler(v7, v8);
    xpc_connection_set_target_queue(v7, qword_100064560);
    xpc_connection_activate(v7);
  }
}

void sub_1000259D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v3;
  v8 = objc_autoreleasePoolPush();
  if (xpc_get_type(v7) == &_xpc_type_error)
  {
LABEL_10:
    xpc_connection_cancel(v6);
    goto LABEL_24;
  }

  if ((xpc_dictionary_expects_reply() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040050();
    }

    goto LABEL_10;
  }

  v9 = v7;
  v10 = v5;
  v11 = [v10 entitlement];
  if (!v11)
  {
    sub_100040154(&v31, buf);
  }

  v12 = v11;
  if (!strcmp(v11, "None-AppleInternal") || sub_100025574(v12))
  {
    goto LABEL_13;
  }

  if (xpc_get_type(v9) != &_xpc_type_dictionary)
  {
    sub_10004008C(&v31, buf);
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v13;
  *&buf[16] = v13;
  xpc_dictionary_get_audit_token();
  v14 = xpc_copy_entitlement_for_token();
  v15 = v14 == 0;

  if (!v15)
  {
LABEL_13:
  }

  else
  {
    v16 = xpc_copy_entitlement_for_token();
    v17 = v16 == 0;

    if (v17)
    {
      v29 = sub_100002B18(v6);
      v30 = qword_100064558;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = [v10 name];
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "service_handler: Client lacks privilege to interact with service with name %{public}s (client=%{public}s)", buf, 0x16u);
      }

      free(v29);
      goto LABEL_19;
    }
  }

  string = xpc_dictionary_get_string(v9, "cmd");
  if (!string || strcmp(string, "connect"))
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040118();
    }

LABEL_19:
    v19 = sub_100006128(v9, "ERROR");
    v20 = v19;
    if (v19)
    {
      v21 = xpc_dictionary_get_remote_connection(v19);
      xpc_connection_send_message(v21, v20);
    }

    goto LABEL_24;
  }

  v22 = sub_100002B18(v6);
  v23 = qword_100064558;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = [v10 name];
    *&buf[12] = 2082;
    *&buf[14] = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}s> Got CONNECT command (client=%{public}s)", buf, 0x16u);
  }

  free(v22);
  v24 = v10;
  v25 = v9;
  v26 = [v24 device];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100027238;
  *&buf[24] = &unk_10005D108;
  v33 = v24;
  v34 = v25;
  v27 = v25;
  v28 = v24;
  [v26 invokeWhenConnectable:buf];

LABEL_24:
  objc_autoreleasePoolPop(v8);
}

void sub_100026168(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_error)
  {
    v4 = sub_100002B18(v3);
    v5 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v12 = v6;
      v13 = 2082;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Accepting device connection (client=%{public}s)", buf, 0x16u);
    }

    free(v4);
    v7 = [*(a1 + 32) device_peers];
    [v7 addObject:v3];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000262F0;
    v9[3] = &unk_10005D1D0;
    v9[4] = *(a1 + 32);
    v8 = v3;
    v10 = v8;
    xpc_connection_set_event_handler(v8, v9);
    xpc_connection_set_target_queue(v8, qword_100064560);
    xpc_connection_activate(v8);
  }
}

void sub_1000262F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v3;
  v8 = objc_autoreleasePoolPush();
  if (xpc_get_type(v7) == &_xpc_type_error)
  {
    xpc_connection_cancel(v6);
    v11 = [v5 device_peers];
    [v11 removeObject:v6];
LABEL_43:

    goto LABEL_44;
  }

  string = xpc_dictionary_get_string(v7, "cmd");
  if (!string)
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040394();
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_44;
    }

    goto LABEL_24;
  }

  v10 = string;
  if (!strcmp(string, "helo_device"))
  {
    v11 = v5;
    v13 = v6;
    if (xpc_dictionary_get_uint64(v7, "device_state") != 1 || [v11 state] - 3 > 2)
    {
      goto LABEL_42;
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    sub_100026C8C(v11, v13, v14);
    xpc_connection_send_message(v13, v14);
    goto LABEL_41;
  }

  if (!strcmp(v10, "heartbeat"))
  {
    v11 = v5;
    v15 = v7;
    v16 = [v11 heartbeat_requests];
    v17 = [v16 count];

    if (!v17)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v27 = sub_100028CD0;
      v28 = &unk_10005DAE0;
      v29 = v11;
      [v29 heartbeatWithCallback:&buf];
    }

    v18 = [v11 heartbeat_requests];
    [v18 addObject:v15];

    goto LABEL_43;
  }

  if (!strcmp(v10, "timesync"))
  {
    v11 = v5;
    v13 = v6;
    v14 = v7;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v19;
    v25 = v19;
    xpc_connection_get_audit_token();
    v20 = xpc_copy_entitlement_for_token();

    if (v20)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v27 = sub_100028E2C;
      v28 = &unk_10005D668;
      v29 = v14;
      [v11 timesyncWithCallback:{&buf, v24, v25}];
      v21 = v29;
    }

    else
    {
      v21 = sub_1000255C0(v14, 1);
      v22 = sub_100002B18(v13);
      v23 = qword_100064558;
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "device_timesync: Client lacks privilege (client=%{public}s)", &buf, 0xCu);
      }

      free(v22);
      xpc_dictionary_send_reply();
    }

LABEL_41:
    goto LABEL_42;
  }

  if ((xpc_dictionary_expects_reply() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_10004031C();
    }

    goto LABEL_44;
  }

  if (!strcmp(v10, "list_services"))
  {
    v12 = sub_100027664(v5, v7);
  }

  else if (!strcmp(v10, "list_local_services"))
  {
    v12 = sub_100027940(v5, v7);
  }

  else if (!strcmp(v10, "get_service"))
  {
    v12 = sub_100027C08(v5, v7);
  }

  else if (!strcmp(v10, "check_service"))
  {
    v12 = sub_100027F80(v5, v7);
  }

  else if (!strcmp(v10, "get_heartbeat_stats"))
  {
    v12 = sub_1000281E0(v5, v7);
  }

  else if (!strcmp(v10, "get_connectable"))
  {
    v12 = sub_10002826C(v5, v7);
  }

  else if (!strcmp(v10, "reset"))
  {
    v12 = sub_1000282E0(v5, v7);
  }

  else if (!strcmp(v10, "set_alias"))
  {
    v12 = sub_10002850C(v5, v6, v7);
  }

  else if (!strcmp(v10, "disconnect_device"))
  {
    v12 = sub_100028778(v5, v7);
  }

  else if (!strcmp(v10, "get_latest_connect_error"))
  {
    v12 = sub_100028998(v5, v7);
  }

  else
  {
    if (strcmp(v10, "authenticate_device"))
    {
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
      {
        sub_100040358();
      }

LABEL_24:
      v12 = sub_100006128(v7, "ERROR");
      goto LABEL_25;
    }

    v12 = sub_100028A0C(v5, v6, v7);
  }

LABEL_25:
  v11 = v12;
  if (v12)
  {
    v13 = xpc_dictionary_get_remote_connection(v12);
    xpc_connection_send_message(v13, v11);
LABEL_42:

    goto LABEL_43;
  }

LABEL_44:
  objc_autoreleasePoolPop(v8);
}

id sub_100026A20(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    v3 = [*(a1 + 32) connection];
    v4 = sub_100002B18(v3);

    v5 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v7 = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unregistering client browse. (client=%{public}s)", &v7, 0xCu);
    }

    free(v4);
  }

  else if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
  {
    sub_1000403D0();
  }

  return [*(a1 + 32) cancel];
}

void sub_100026C8C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = sub_1000275C4();
  v9 = sub_100002B18(v6);

  v10 = qword_100064558;
  if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEBUG))
  {
    sub_10004040C(v8, v9, v10);
  }

  free(v9);
  xpc_dictionary_set_string(v5, "cmd", "found_device");
  v11 = [v7 copyClientDescriptionWithSensitiveProperties:v8];

  xpc_dictionary_set_value(v5, "device", v11);
}

void sub_100026E74(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  xpc_connection_cancel(v1);
}

void sub_100026EE8(void *a1)
{
  v1 = a1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = qword_100064568;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) deliverDevice:{v1, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100026FE8(void *a1)
{
  v1 = a1;
  v2 = qword_100064558;
  if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Delivering device update", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v1 device_peers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = xpc_dictionary_create(0, 0, 0);
        sub_100026C8C(v1, v8, v9);
        xpc_connection_send_message(v8, v9);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_10002715C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableSet);
  v3 = qword_100064568;
  qword_100064568 = v2;

  v4 = qword_100064560;
  qword_100064560 = v1;
  v9 = v1;

  v5 = os_log_create("com.apple.RemoteServiceDiscovery", "ClientInterface");
  v6 = qword_100064558;
  qword_100064558 = v5;

  mach_service = xpc_connection_create_mach_service("com.apple.remoted", qword_100064560, 1uLL);
  v8 = qword_100064570;
  qword_100064570 = mach_service;

  xpc_connection_set_event_handler(qword_100064570, &stru_10005DA90);
  xpc_connection_activate(qword_100064570);
}

void sub_100027238(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  v3 = [v2 state];

  if (v3 == 5)
  {
    v11 = sub_100006128(*(a1 + 40), "ERROR");
    xpc_dictionary_send_reply();
  }

  else
  {
    v15 = xmmword_100049E58;
    v16 = 8;
    v4 = xpc_dictionary_get_value(*(a1 + 40), "keepalive");
    v5 = v4;
    if (v4 && xpc_get_type(v4) == &_xpc_type_BOOL)
    {
      BYTE1(v15) = xpc_BOOL_get_value(v5);
    }

    uint64 = xpc_dictionary_get_uint64(*(a1 + 40), "keepalive_time");
    if (uint64)
    {
      DWORD1(v15) = uint64;
    }

    v7 = xpc_dictionary_get_uint64(*(a1 + 40), "keepcount");
    if (v7)
    {
      DWORD2(v15) = v7;
    }

    v8 = xpc_dictionary_get_uint64(*(a1 + 40), "keepinterval");
    if (v8)
    {
      HIDWORD(v15) = v8;
    }

    v9 = xpc_dictionary_get_uint64(*(a1 + 40), "connect_timeout");
    if (v9)
    {
      v16 = v9;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100027408;
    v12[3] = &unk_10005DAB8;
    v10 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    [v10 getSocketWithTcpOption:&v15 callback:v12];
  }
}

void sub_100027408(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v10 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_1000406A0(a1, v10);
    }

    reply = sub_100006128(*(a1 + 32), "INTERRUPTED");
  }

  else
  {
    v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    v5 = sub_100002B18(v4);
    v6 = qword_100064558;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) device];
      v8 = [*(a1 + 40) name];
      v11 = 138543874;
      v12 = v7;
      v13 = 2080;
      v14 = v8;
      v15 = 2082;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@> Connect succeeded for %s (client=%{public}s)", &v11, 0x20u);
    }

    free(v5);
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    xpc_dictionary_set_string(reply, "result", "OK");
    xpc_dictionary_set_fd(reply, "fd", a2);
    close(a2);
  }

  xpc_dictionary_send_reply();
}

BOOL sub_1000275C4()
{
  xpc_connection_get_audit_token();
  v0 = xpc_copy_entitlement_for_token();

  result = 0;
  if (v0)
  {
    v1 = xpc_copy_entitlement_for_token();

    if (v1 || !sandbox_check_by_audit_token())
    {
      return 1;
    }
  }

  return result;
}

id sub_100027664(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = sub_100002B18(v5);
  v8 = qword_100064558;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10004076C([v3 uuidString], v7, v35);
  }

  free(v7);
  xpc_dictionary_set_string(reply, "result", "OK");
  v9 = xpc_array_create(0, 0);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v3 services];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (sub_100025438(v4, v14))
        {
          xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, [v14 name]);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v11);
  }

  xpc_dictionary_set_value(reply, "services", v9);
  v15 = sub_100002B18(v5);
  v16 = qword_100064558;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    count = xpc_array_get_count(v9);
    v18 = [v3 services];
    v19 = [v18 count];
    v20 = [v3 uuidString];
    *buf = 134218754;
    v27 = count;
    v28 = 1024;
    v29 = v19;
    v30 = 2082;
    v31 = v20;
    v32 = 2082;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "device_list_services: Returning %zd/%d services for device %{public}s (client=%{public}s)", buf, 0x26u);
  }

  free(v15);

  return reply;
}

id sub_100027940(void *a1, void *a2)
{
  v18 = a1;
  v3 = a2;
  v19 = xpc_dictionary_get_remote_connection(v3);
  if (sub_100028E98(v3))
  {
    reply = xpc_dictionary_create_reply(v3);
    v5 = sub_100002B18(v19);
    v6 = qword_100064558;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000407A8([v18 uuidString], v5, buf);
    }

    free(v5);
    empty = xpc_dictionary_create_empty();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v18 service_listeners];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = xpc_dictionary_create_empty();
          xpc_dictionary_set_string(v13, "port", [v12 port]);
          v14 = [v12 service];
          xpc_dictionary_set_value(empty, [v14 name], v13);
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    xpc_dictionary_set_value(reply, "services", empty);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    v15 = sub_100002B18(v19);
    v16 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "device_list_local_services: Client lacks privilege (client=%{public}s)", buf, 0xCu);
    }

    free(v15);
    reply = sub_100006128(v3, "ERROR");
  }

  return reply;
}

id sub_100027C08(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_remote_connection(v4);
  string = xpc_dictionary_get_string(v4, "name");
  if (string)
  {
    v7 = string;
    v8 = sub_100002B18(v5);
    v9 = qword_100064558;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136446722;
      v20 = v7;
      v21 = 2082;
      v22 = [v3 uuidString];
      v23 = 2082;
      v24 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fetching service %{public}s on %{public}s (client=%{public}s)", &v19, 0x20u);
    }

    free(v8);
    v10 = [v3 serviceWithName:v7];
    if (v10)
    {
      if (sub_100025438(v4, v10))
      {
        reply = xpc_dictionary_create_reply(v4);
        xpc_dictionary_set_string(reply, "result", "OK");
        v12 = [v10 copyClientDescription];
        xpc_dictionary_set_value(reply, "service", v12);

        v13 = sub_100002B18(v5);
        v14 = qword_100064558;
        if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136446466;
          v20 = v7;
          v21 = 2082;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "device_get_service: Returning service %{public}s (client=%{public}s)", &v19, 0x16u);
        }

        free(v13);
        goto LABEL_18;
      }

      v15 = sub_100002B18(v5);
      v17 = qword_100064558;
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446466;
        v20 = v7;
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "device_get_service: Client lacks privilege to find service with name %{public}s (client=%{public}s)", &v19, 0x16u);
      }
    }

    else
    {
      v15 = sub_100002B18(v5);
      v16 = qword_100064558;
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446466;
        v20 = v7;
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "device_get_service: Unable to find service with name %{public}s (client=%{public}s)", &v19, 0x16u);
      }
    }

    free(v15);
    reply = sub_100006128(v4, "ERROR");
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
  {
    sub_1000407E4();
  }

  reply = sub_100006128(v4, "ERROR");
LABEL_19:

  return reply;
}

id sub_100027F80(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_remote_connection(v4);
  string = xpc_dictionary_get_string(v4, "name");
  if (string)
  {
    v7 = string;
    v8 = sub_100002B18(v5);
    v9 = qword_100064558;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136446722;
      v16 = v7;
      v17 = 2082;
      v18 = [v3 uuidString];
      v19 = 2082;
      v20 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fetching service %{public}s on %{public}s (client=%{public}s)", &v15, 0x20u);
    }

    free(v8);
    v10 = [v3 serviceWithName:v7];
    if (v10)
    {
      reply = xpc_dictionary_create_reply(v4);
      xpc_dictionary_set_string(reply, "result", "OK");
    }

    else
    {
      v12 = sub_100002B18(v5);
      v13 = qword_100064558;
      if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446466;
        v16 = v7;
        v17 = 2082;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "device_check_service: Unable to find service with name %{public}s (client=%{public}s)", &v15, 0x16u);
      }

      free(v12);
      reply = sub_100006128(v4, "ERROR");
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040820();
    }

    reply = sub_100006128(v4, "ERROR");
  }

  return reply;
}

id sub_1000281E0(void *a1, void *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_string(reply, "result", "OK");
  v5 = [v3 heartbeat_stats];

  xpc_dictionary_set_data(reply, "heartbeat_stats", v5, 0x30uLL);

  return reply;
}

id sub_10002826C(void *a1, void *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(a2);
  v5 = [v3 connectable];

  xpc_dictionary_set_BOOL(reply, "result", v5);

  return reply;
}

id sub_1000282E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_remote_connection(v4);
  v6 = v4;
  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    sub_10004085C(&v15, buf);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v7;
  *&buf[16] = v7;
  xpc_dictionary_get_audit_token();
  v8 = xpc_copy_entitlement_for_token();
  v9 = v8 == 0;

  v10 = sub_100002B18(v5);
  v11 = qword_100064558;
  if (v9)
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "device_reset: Client lacks privilege to reset device (client=%{public}s)", buf, 0xCu);
    }

    free(v10);
    reply = sub_100006128(v6, "ERROR");
  }

  else
  {
    v12 = qword_100064558;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = [v3 uuidString];
      *&buf[12] = 2082;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Resetting remote device %{public}s (client=%{public}s)", buf, 0x16u);
    }

    free(v10);
    [v3 reset];
    reply = xpc_dictionary_create_reply(v6);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  return reply;
}

id sub_10002850C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v8;
  v20 = v8;
  xpc_connection_get_audit_token();
  v9 = xpc_copy_entitlement_for_token();
  v10 = v9 == 0;

  if (v10)
  {
    v15 = sub_100002B18(v6);
    v16 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "device_set_alias: Client lacks privilege to name device (client=%{public}s)", buf, 0xCu);
    }

    free(v15);
    v17 = sub_100006128(v7, "ERROR");
    goto LABEL_12;
  }

  string = xpc_dictionary_get_string(v7, "device_alias");
  if (!string)
  {
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_1000408E8();
    }

    v17 = sub_100006128(v7, "ERROR");
LABEL_12:
    reply = v17;
    goto LABEL_13;
  }

  v12 = sub_100002B18(v6);
  v13 = qword_100064558;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v22 = [v5 uuidString];
    v23 = 2082;
    v24 = string;
    v25 = 2082;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setting remote device %{public}s alias as %{public}s (client=%{public}s)", buf, 0x20u);
  }

  free(v12);
  [v5 setDevice_alias:string];
  reply = xpc_dictionary_create_reply(v7);
  xpc_dictionary_set_string(reply, "result", "OK");
LABEL_13:

  return reply;
}

id sub_100028778(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_remote_connection(v4);
  if ([v3 type] - 14 >= 3)
  {
    v8 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040924(v8, v3);
    }

    reply = sub_1000255C0(v4, 1);
  }

  else
  {
    v6 = sub_100002B18(v5);
    v7 = qword_100064558;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = [v3 device_name];
      v15 = 2082;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disconnecting remote device %{public}s (client=%{public}s)", buf, 0x16u);
    }

    free(v6);
    if ([v3 state] == 3)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100028F48;
      v11[3] = &unk_10005D668;
      v12 = v3;
      [v12 goodByeWithCallback:v11];
    }

    else
    {
      [v3 disconnect];
    }

    reply = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  return reply;
}

id sub_100028998(void *a1, void *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(a2);
  v5 = [v3 latestConnectError];

  xpc_dictionary_set_int64(reply, "result", v5);

  return reply;
}

id sub_100028A0C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  length = 0;
  v8 = sub_100002B18(v6);
  v9 = qword_100064558;
  if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Authenticating device certificate on behalf of client... (client=%{public}s)", buf, 0xCu);
  }

  free(v8);
  if (!xpc_dictionary_get_data(v7, "identity_cert", &length))
  {
    v14 = sub_100002B18(v6);
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040AA4();
    }

    goto LABEL_13;
  }

  v10 = SecCertificateCreateWithBytes();
  if (!v10)
  {
    v14 = sub_100002B18(v6);
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040A34();
    }

LABEL_13:
    free(v14);
    reply = sub_100006128(v7, "ERROR");
    goto LABEL_18;
  }

  if (sub_10001FA48(v5, v10))
  {
    v11 = sub_100002B18(v6);
    v12 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully authenticated device certificate on behalf of client (client=%{public}s)", buf, 0xCu);
    }

    free(v11);
    reply = xpc_dictionary_create_reply(v7);
    xpc_dictionary_set_string(reply, "result", "OK");
  }

  else
  {
    v15 = sub_100002B18(v6);
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_1000409C4();
    }

    free(v15);
    reply = sub_100006128(v7, "ERROR");
  }

  CFRelease(v10);
LABEL_18:

  return reply;
}

void sub_100028CD0(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) heartbeat_requests];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    if (a2)
    {
      v8 = "OK";
    }

    else
    {
      v8 = "ERROR";
    }

    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        reply = xpc_dictionary_create_reply(*(*(&v12 + 1) + 8 * v9));
        xpc_dictionary_set_string(reply, "result", v8);
        xpc_dictionary_send_reply();

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [*(a1 + 32) heartbeat_requests];
  [v11 removeAllObjects];
}

void sub_100028E2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1000255C0(v2, a2);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v2);
    xpc_dictionary_set_string(reply, "result", "OK");
    v3 = reply;
  }

  v5 = v3;
  xpc_dictionary_send_reply();
}

BOOL sub_100028E98(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) != &_xpc_type_dictionary)
  {
    sub_100040B14(&v6, v7);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v2;
  v7[1] = v2;
  xpc_dictionary_get_audit_token();
  v3 = xpc_copy_entitlement_for_token();
  v4 = v3 != 0;

  return v4;
}

id sub_100028F48(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
  {
    sub_10003DDD4();
  }

  return [*(a1 + 32) disconnect];
}

id sub_100028FA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  memset(out, 0, 37);
  string = xpc_dictionary_get_string(v4, "trust_level");
  v6 = +[RemoteDeviceQuery wildcard];
  [v6 setType:{xpc_dictionary_get_uint64(v4, "device_type")}];
  [v6 setName:{xpc_dictionary_get_string(v4, "device_name")}];
  [v6 setUuid:{xpc_dictionary_get_uuid(v4, "UUID")}];
  [v6 setAvailableService:{xpc_dictionary_get_string(v4, "service")}];
  if ([v6 uuid])
  {
    uuid_unparse([v6 uuid], out);
  }

  v7 = sub_100002B18(v3);
  v8 = qword_100064558;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 description];
    sub_100040B80(v9, v7, v43);
  }

  free(v7);
  v10 = sub_1000275C4();
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x3032000000;
  v37[2] = sub_1000299DC;
  v37[3] = sub_1000299EC;
  v38 = 0;
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = sub_1000299DC;
  v34[3] = sub_1000299EC;
  v35 = 0;
  euid = xpc_connection_get_euid(v3);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000299F4;
  v27[3] = &unk_10005DB50;
  v12 = v6;
  v28 = v12;
  v13 = v4;
  v29 = v13;
  v30 = &v33;
  v31 = &v36;
  v32 = string != 0;
  sub_100002B5C(euid, v27);
  v14 = v37;
  if (string)
  {
    if (!strcmp(string, "trusted"))
    {
      v14 = v34;
    }

    else if (strcmp(string, "untrusted"))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(v34[0] + 40);
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v15 = *(*v14 + 40);
LABEL_13:
  v16 = v15;
  if (v16)
  {
    v17 = v16;
    reply = xpc_dictionary_create_reply(v13);
    xpc_dictionary_set_string(reply, "result", "OK");
    v19 = [v17 copyClientDescriptionWithSensitiveProperties:v10];
    xpc_dictionary_set_value(reply, "device", v19);

    v20 = sub_100002B18(v3);
    v21 = qword_100064558;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v17 type];
      *buf = 67109378;
      v40 = v22;
      v41 = 2082;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "device_get: Returning device of type %d (client=%{public}s)", buf, 0x12u);
    }

    free(v20);
    goto LABEL_20;
  }

LABEL_17:
  v23 = sub_100002B18(v3);
  v24 = qword_100064558;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v12 type];
    *buf = 67109378;
    v40 = v25;
    v41 = 2082;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "device_get: Unable to find device with type %d (client=%{public}s)", buf, 0x12u);
  }

  free(v23);
  reply = sub_100006128(v13, "ERROR");
LABEL_20:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v36, 8);

  return reply;
}

void sub_100029450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  free(v25);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id sub_1000294B8(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(reply, "result", "OK");
  xpc_dictionary_set_uint64(v2, "device_messaging_protocol_version", 7uLL);
  xpc_dictionary_set_uuid(v2, "UUID", &xmmword_1000646E8);
  xpc_dictionary_set_value(v2, "properties", qword_1000646F8);
  xpc_dictionary_set_value(reply, "device", v2);

  return reply;
}

void sub_10002957C(void *a1, void *a2)
{
  v3 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029AC4;
  v6[3] = &unk_10005DB78;
  v7 = a2;
  v8 = v3;
  v9 = &stru_10005DB00;
  v4 = v3;
  v5 = v7;
  sub_10001BF34(0, v6);
}

void sub_100029644(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (!v2)
  {
    sub_100040BCC(&v5, v6);
  }

  xdict = v2;

  v3 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v3, xdict);
}

id sub_1000296E4(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  sub_10001BA40();
  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_100029738(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  sub_10001A8B8();
  xpc_dictionary_set_string(reply, "result", "OK");

  return reply;
}

id sub_10002978C(void *a1)
{
  v1 = a1;
  reply = xpc_dictionary_create_reply(v1);
  v3 = xpc_array_create(0, 0);
  if (sub_100028E98(v1))
  {
    xpc_dictionary_set_string(reply, "result", "OK");
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = qword_100064700;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = xpc_string_create([*(*(&v21 + 1) + 8 * i) name]);
          xpc_array_append_value(v3, v9);
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = qword_100064708;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = xpc_string_create([*(*(&v17 + 1) + 8 * j) name]);
          xpc_array_append_value(v3, v15);
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }

    xpc_dictionary_set_value(reply, "services", v3);
  }

  else
  {
    xpc_dictionary_set_string(reply, "result", "ERROR");
  }

  return reply;
}

uint64_t sub_1000299DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000299F4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (remote_device_matches())
  {
    v7 = v4;
    v8 = v7;
    if (v7)
    {
      [v7 type];
      is_trusted = remote_device_type_is_trusted();
      v10 = 56;
      if (is_trusted)
      {
        v10 = 48;
      }

      objc_storeStrong((*(*(a1 + v10) + 8) + 40), a2);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (*(a1 + 64))
  {
    if (!v11 || !*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 1;
LABEL_13:

  return v12;
}

void sub_100029AC4(uint64_t a1)
{
  v2 = sub_10001C540();
  cf = 0;
  privateKeyRef = 0;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(reply, "result", "ERROR");
  if (!v2)
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040E58();
    }

    v5 = 0;
    goto LABEL_11;
  }

  v5 = sec_identity_copy_ref(v2);
  if (SecIdentityCopyPrivateKey(v5, &privateKeyRef))
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040C38();
    }

LABEL_11:
    v7 = 0;
    v8 = 0;
LABEL_12:
    free(v6);
    v9 = 0;
    v10 = v5;
    goto LABEL_13;
  }

  if (SecIdentityCopyCertificate(v5, &cf))
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040CA0();
    }

    goto LABEL_11;
  }

  v11 = SecKeyCopyAttributes(privateKeyRef);
  v8 = v11;
  if (!v11)
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040DE8();
    }

    goto LABEL_11;
  }

  v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:kSecAttrTokenOID];
  v7 = v12;
  if (!v12)
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040D78();
    }

    v7 = 0;
    goto LABEL_12;
  }

  xpc_dictionary_set_data(empty, "identity_key", [v12 bytes], objc_msgSend(v12, "length"));
  v13 = SecCertificateCopyData(cf);
  v9 = v13;
  if (!v13)
  {
    v6 = sub_100002B18(*(a1 + 40));
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_ERROR))
    {
      sub_100040D08();
    }

    goto LABEL_12;
  }

  xpc_dictionary_set_data(empty, "identity_cert", [(__CFData *)v13 bytes], [(__CFData *)v13 length]);
  xpc_dictionary_set_value(reply, "identity", empty);
  v10 = v5;
  xpc_dictionary_set_string(reply, "result", "OK");
LABEL_13:
  (*(*(a1 + 48) + 16))();

  if (cf)
  {
    CFRelease(cf);
  }

  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_100029E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100029EB8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2082;
  *(a3 + 14) = a2;
  return result;
}

void sub_100029EE8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

id sub_10002A1B4()
{
  if (qword_100064580 != -1)
  {
    sub_100040F3C();
  }

  v1 = qword_100064578;

  return v1;
}

void sub_10002A68C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 3)
  {
    v17 = sub_10002A1B4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10004118C();
    }

    error_domain = nw_error_get_error_domain(v5);
    error_code = nw_error_get_error_code(v5);
    if (error_domain == nw_error_domain_dns && (error_code == -65563 || error_code == -65568))
    {
      nw_listener_cancel(*(*(a1 + 32) + 16));
      v20 = dispatch_time(0, 5000000000);
      v21 = *(a1 + 32);
      v22 = *(v21 + 24);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10002A9C0;
      v23[3] = &unk_10005DBC8;
      v23[4] = v21;
      v26 = *(a1 + 56);
      v27 = *(a1 + 72);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      dispatch_after(v20, v22, v23);
    }
  }

  else if (a2 == 2)
  {
    v6 = sub_10002A1B4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 16);
      v8 = nw_listener_copy_local_endpoint();
      *buf = 138412802;
      v29 = v8;
      v30 = 1024;
      v31 = 2;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "listening on %@ (state %u, error %@)", buf, 0x1Cu);
    }

    port = nw_listener_get_port(*(*(a1 + 32) + 16));
    if (port)
    {
      v10 = port;
      v11 = sub_10002A1B4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v29) = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "listener port: %u", buf, 8u);
      }

      v12 = *(*(a1 + 32) + 16);
      v13 = nw_listener_copy_local_endpoint();
      if (v13)
      {
        description = nw_endpoint_get_description();
        if (description)
        {
          v15 = description;
          v16 = sub_10002A1B4();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v29 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "listener local endpoint: %s", buf, 0xCu);
          }
        }
      }

LABEL_22:
    }
  }

  else if (*(a1 + 80))
  {
    v13 = sub_10002A1B4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100041200();
    }

    goto LABEL_22;
  }
}

_BYTE *sub_10002A9C0(void *a1)
{
  result = a1[4];
  if ((result[32] & 1) == 0)
  {
    return [result listenOnBonjourName:a1[7] type:a1[8] domain:a1[9] configureTLS:a1[5] connectionHandler:a1[6]];
  }

  return result;
}

void sub_10002A9E4(id a1, OS_nw_endpoint *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sub_10002A1B4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "removed";
    if (v3)
    {
      v6 = "added";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "advertised endpoint %@ %s", &v7, 0x16u);
  }
}

void sub_10002AB88(id a1)
{
  qword_100064578 = os_log_create("com.apple.RemoteServiceDiscovery", "listener");

  _objc_release_x1();
}

void sub_10002AEC0(void *a1)
{
  v2 = a1;
  if (sub_10000FC88())
  {
    v3 = os_log_create("com.apple.RemoteServiceDiscovery", "display_device");
    v4 = qword_100064588;
    qword_100064588 = v3;

    v5 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing display backend", buf, 2u);
    }

    objc_storeStrong(&qword_100064590, a1);
    v6 = objc_opt_new();
    v7 = qword_100064598;
    qword_100064598 = v6;

    v8 = qword_100064598;
    if (!v8)
    {
      sub_1000416FC(&v16, buf);
    }

    if (qword_1000645A0)
    {
      sub_100041440(&v16, buf);
    }

    qword_1000645A0 = sub_100013178(qword_100064590);
    if (!qword_1000645A0)
    {
      sub_100041670(&v16, buf);
    }

    if (qword_1000645A8)
    {
      sub_1000414CC(&v16, buf);
    }

    qword_1000645A8 = sub_100013178(qword_100064590);
    if (!qword_1000645A8)
    {
      sub_1000415E4(&v16, buf);
    }

    v9 = qword_1000645A0;
    v10 = IOServiceMatching("AppleUSBDeviceNCMData");
    if (!v10)
    {
      sub_100041558(&v16, buf);
    }

    v11 = IOServiceMatching("IOEthernetInterface");
    v12 = v11;
    if (!v11)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *buf = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v16 = 134217984;
      v17 = 0;
      _os_log_send_and_compose_impl();
      v15 = _os_crash_msg();
      sub_10003BCB4(v15);
    }

    CFDictionarySetValue(v11, @"IOParentMatch", v10);
    CFRelease(v10);
    sub_100013284(v9, sub_10002B1B8, v12);
    v13 = qword_1000645A8;
    v14 = IOServiceMatching("AppleDisplayPlatformControl");
    sub_100013284(v13, sub_10002B3DC, v14);
  }
}

uint64_t sub_10002B1B8(uint64_t a1, io_iterator_t iterator)
{
  if (!a1)
  {
    sub_100041830(&v13, buf);
  }

  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = qword_100064588;
      if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v5;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "IOIteratorNext returned %d", buf, 8u);
      }

      v7 = IOObjectCopyClass(v5);
      v8 = CFStringCompare(v7, @"AppleUSBDeviceNCMPrivateEthernetInterface", 0);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v8 == kCFCompareEqualTo)
      {
        v9 = [RSDNCMInterface alloc];
        v10 = [(RSDNCMInterface *)v9 initWithService:v5 notificationPort:a1 queue:qword_100064590];
        v11 = v10;
        if (v10)
        {
          [(RSDNCMInterface *)v10 setIs_private:1];
          v12 = v11;
          [(RSDNCMInterface *)v12 setAddressed_callback:&stru_10005DC70];
          [(RSDNCMInterface *)v12 setDetached_callback:&stru_10005DC90];

          if ([(RSDNCMInterface *)v12 activate])
          {
            [qword_100064598 addObject:v12];
          }
        }
      }

      if (IOObjectRelease(v5))
      {
        sub_100041788(&v13, buf);
      }

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002B398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  if (v12)
  {
    CFRelease(v12);
  }

  sub_1000125A8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B3DC(IONotificationPort *a1, io_iterator_t iterator)
{
  if (!a1)
  {
    sub_1000418BC(&notification, buf);
  }

  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      LODWORD(notification) = 0;
      v6 = IOServiceAddInterestNotification(a1, v5, "IOGeneralInterest", sub_10002C0BC, 0, &notification);
      if (v6)
      {
        v7 = v6;
        v8 = qword_100064588;
        if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "IOServiceAddInterestNotification: 0x%x", buf, 8u);
        }
      }

      else
      {
        sub_10002C0D8(v5);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

id sub_10002BC08(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result != 5)
  {
    v3 = *(a1 + 32);

    return [v3 createPortListener];
  }

  return result;
}

uint64_t sub_10002BC58(uint64_t a1)
{
  v11 = -1431655766;
  for (result = sub_100024924(*(a1 + 40), 0, 0, &xmmword_100049E58, &v11); !result; result = sub_100024924(*(a1 + 40), 0, 0, &xmmword_100049E58, &v11))
  {
    v3 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> Got incoming remoted connection", buf, 0xCu);
    }

    xpc_remote_connection_get_failsafe_version_flags();
    v5 = xpc_remote_connection_create_with_connected_fd();
    v6 = [*(a1 + 32) connection];

    if (v6)
    {
      v7 = qword_100064588;
      if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> Canceling existing connection to replace it", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      if (*(v9 + 296))
      {
        xpc_remote_connection_cancel();
        v9 = *(a1 + 32);
      }

      objc_storeStrong((v9 + 296), v5);
      v10 = [*(a1 + 32) connection];
      xpc_remote_connection_cancel();
    }

    else
    {
      [*(a1 + 32) connect:v5];
    }
  }

  return result;
}

void sub_10002C034(id a1, RSDNCMInterface *a2)
{
  v4 = a2;
  v2 = [(RSDNCMInterface *)v4 device];

  if (v2)
  {
    v3 = [(RSDNCMInterface *)v4 device];
    [v3 disconnect];

    [(RSDNCMInterface *)v4 setDevice:0];
  }

  [qword_100064598 removeObject:v4];
}

void sub_10002C0BC(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536870608)
  {
    sub_10002C0D8(a2);
  }
}

void sub_10002C0D8(io_registry_entry_t a1)
{
  v32 = -1;
  if (!sub_100012FFC(a1, &v32))
  {
    v7 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_ERROR))
    {
      sub_1000419C0(v7);
    }

    return;
  }

  v1 = v32;
  if (v32 >= 4)
  {
    sub_100041A04(&v31, buf);
  }

  v2 = qword_100064588;
  v3 = os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT);
  switch(v1)
  {
    case 1:
      if (v3)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AppleDisplayPlatformControl: Host disconnected", buf, 2u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = qword_100064598;
      v16 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v8);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            v21 = [v20 device];

            if (v21)
            {
              v22 = [v20 device];
              [v22 disconnect];

              [v20 setDevice:0];
            }
          }

          v17 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v17);
      }

      goto LABEL_33;
    case 2:
      if (v3)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AppleDisplayPlatformControl: Host sleep", buf, 2u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = qword_100064598;
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        do
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v27 + 1) + 8 * j);
            v14 = [v13 device];

            if (v14)
            {
              v15 = [v13 device];
              [v15 setSuspended:1];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v10);
      }

LABEL_33:

      return;
    case 3:
      if (!v3)
      {
        return;
      }

      *buf = 0;
      v4 = "AppleDisplayPlatformControl: Host active";
      v5 = v2;
      v6 = 2;
      break;
    default:
      if (!v3)
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = v1;
      v4 = "AppleDisplayPlatformControl: %d";
      v5 = v2;
      v6 = 8;
      break;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
}

void sub_10002C404(void *a1)
{
  v2 = a1;
  v3 = os_log_create("com.apple.RemoteServiceDiscovery", "display_host");
  v4 = qword_1000645B0;
  qword_1000645B0 = v3;

  v5 = qword_1000645B0;
  if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing display host backend", buf, 2u);
  }

  objc_storeStrong(&qword_1000645B8, a1);
  v6 = objc_opt_new();
  v7 = qword_1000645C0;
  qword_1000645C0 = v6;

  v8 = qword_1000645C0;
  if (!v8)
  {
    sub_100041C24(&v23, buf);
  }

  v9 = objc_opt_new();
  v10 = qword_1000645C8;
  qword_1000645C8 = v9;

  v11 = qword_1000645C8;
  if (!v11)
  {
    sub_100041B98(&v23, buf);
  }

  if (qword_1000645D0)
  {
    sub_100041A80(&v23, buf);
  }

  v12 = sub_100013178(qword_1000645B8);
  qword_1000645D0 = v12;
  if (!v12)
  {
    sub_100041B0C(&v23, buf);
  }

  v13 = IOServiceMatching("AppleUSBNCMData");
  if (!v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buf = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v23 = 134217984;
    v24 = 0;
    _os_log_send_and_compose_impl();
    v19 = _os_crash_msg();
    sub_10003BCB4(v19);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = Mutable;
  if (!Mutable)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buf = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v23 = 134217984;
    v24 = 0;
    _os_log_send_and_compose_impl();
    v20 = _os_crash_msg();
    sub_10003BCB4(v20);
  }

  CFDictionarySetValue(Mutable, @"IOModel", @"USB");
  valuePtr = 1452;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v15, @"idVendor", v16);
  CFDictionarySetValue(v13, @"IOPropertyMatch", v15);
  v17 = IOServiceMatching("IOEthernetInterface");
  v18 = v17;
  if (!v17)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buf = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v23 = 134217984;
    v24 = 0;
    _os_log_send_and_compose_impl();
    v21 = _os_crash_msg();
    sub_10003BCB4(v21);
  }

  CFDictionarySetValue(v17, @"IOParentMatch", v13);
  if (v16)
  {
    CFRelease(v16);
  }

  CFRelease(v15);
  CFRelease(v13);
  sub_100013284(v12, sub_10002C930, v18);
}

void sub_10002C8C0(_Unwind_Exception *a1)
{
  CFRelease(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002C930(uint64_t a1, io_iterator_t iterator)
{
  if (!a1)
  {
    sub_100041DA0(v22, buf);
  }

  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v21 = v5;
      v6 = qword_1000645B0;
      if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NCM device attached", buf, 2u);
      }

      v7 = qword_1000645B0;
      if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v5;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "IOIteratorNext returned %d", buf, 8u);
      }

      if (sub_100013940(v5))
      {
        v8 = qword_1000645B0;
        if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEBUG))
        {
          sub_100041CB0(&v19, v20, v8);
        }

        *buf = 0;
        v9 = -5;
        while ((sub_100012E88(v5, buf) & 1) == 0)
        {
          usleep(0x186A0u);
          if (__CFADD__(v9++, 1))
          {
            v11 = qword_1000645B0;
            if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
            {
              *v22 = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to extract nwifflags, fallback to false", v22, 2u);
            }

            goto LABEL_22;
          }
        }

        if ((*buf & 0x20000000) != 0)
        {
          v12 = [RSDNCMInterface alloc];
          v13 = [(RSDNCMInterface *)v12 initWithService:v5 notificationPort:a1 queue:qword_1000645B8];
          v14 = v13;
          if (v13)
          {
            [(RSDNCMInterface *)v13 setIs_private:1];
            v15 = v14;
            [(RSDNCMInterface *)v15 setInactive_callback:&stru_10005DCB0];
            [(RSDNCMInterface *)v15 setAddressed_callback:&stru_10005DCD0];
            [(RSDNCMInterface *)v15 setDetached_callback:&stru_10005DCF0];

            if ([(RSDNCMInterface *)v15 activate])
            {
              v16 = [[RSDRemoteDisplayHostDevice alloc] initWithInterface:v15];
              [(RSDNCMInterface *)v15 setDevice:v16];
              *buf = -1431655766;
              v17 = v16;
              v18 = [(RSDRemoteNCMDevice *)v17 interface];
              sub_100012DE0([v18 service], buf);

              [(RSDRemoteDevice *)v17 setBackendProperty:"LocationID" withUint:*buf];
              [(RSDRemoteDevice *)v17 attach];
              [qword_1000645C0 addObject:v15];
            }
          }
        }
      }

LABEL_22:
      if (IOObjectRelease(v5))
      {
        sub_100041CF0(v22, buf);
      }

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = qword_1000645B0;
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_ERROR))
    {
      sub_10003ED98(a1, a3, v5);
    }

    [*(a1 + 32) connect:0];
  }

  else
  {
    v6 = [*(a1 + 32) connection];

    v7 = qword_1000645B0;
    v8 = os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, but socket is not needed anymore, closing", &v13, 0xCu);
      }

      close(*(*(a1 + 32) + 296));
    }

    else
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, socket is connected", &v13, 0xCu);
      }

      v11 = *(*(a1 + 32) + 296);
      xpc_remote_connection_get_failsafe_version_flags();
      v12 = xpc_remote_connection_create_with_connected_fd();
      [*(a1 + 32) connect:v12];
    }
  }

  *(*(a1 + 32) + 296) = -1;
}

uint64_t sub_10002D764(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100041E2C(&v2, v3);
    }
  }

  return result;
}

void sub_10002D7CC(id a1, RSDNCMInterface *a2)
{
  v2 = [(RSDNCMInterface *)a2 device];
  sub_100031ABC(v2);
  [v2 triggerNeedsConnect];
  [v2 setSuspended:0];
}

void sub_10002D824(id a1, RSDNCMInterface *a2)
{
  v2 = a2;
  v3 = [(RSDNCMInterface *)v2 device];
  [v3 disconnect];
  [(RSDNCMInterface *)v2 setDevice:0];
  [qword_1000645C0 removeObject:v2];
}

uint64_t sub_10002D894()
{
  v0 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  if (os_parse_boot_arg_string() && (v1 = remote_device_type_parse(), (v1 - 15) <= 1))
  {
    v2 = sub_10002DA14();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v3 = "enable backend required by boot-args";
      v4 = &v11;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v5 = sub_100013468(0, "manta-c", 0);
    v6 = sub_100013468(0, "manta-b", 0);
    if ((v5 & v6) == 1)
    {
      v9 = _os_crash();
      sub_10003BCB4(v9);
    }

    v7 = v5 | v6;
    if (v5)
    {
      v1 = 16;
    }

    else
    {
      v1 = 15;
    }

    if ((v7 & 1) == 0)
    {
      v1 = 0;
      goto LABEL_15;
    }

    v2 = sub_10002DA14();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v3 = "enable backend required by device tree";
      v4 = &v10;
      goto LABEL_12;
    }
  }

LABEL_15:
  free(v0);
  return v1;
}

id sub_10002DA14()
{
  if (qword_1000645F8 != -1)
  {
    sub_100041EC8();
  }

  v1 = qword_1000645F0;

  return v1;
}

void sub_10002DA58(uint64_t a1)
{
  v1 = qword_1000646D8;
  v2 = [NSString stringWithUTF8String:sub_100019E60(a1)];
  [v1 setValue:v2 forKey:@"compute-platform-tls-requirement"];
}

void sub_10002DC7C(id obj)
{
  objc_storeStrong(&qword_1000645D8, obj);
  v4 = obj;
  v2 = xpc_event_publisher_create();
  v3 = qword_1000645E0;
  qword_1000645E0 = v2;

  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
}

void sub_10002DD20(id a1, unsigned int a2, unint64_t a3, OS_xpc_object *a4)
{
  v5 = a4;
  if (byte_1000645E8 == 1)
  {
    v6 = sub_10002DA14();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "skip xpc event after initialization", buf, 2u);
    }

    goto LABEL_43;
  }

  if (a2 == 2)
  {
    v16 = sub_10002DA14();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Finalized the initial set of compute platform xpc event", buf, 2u);
    }

    byte_1000645E8 = 1;
    sub_100019310(qword_1000645D8);
  }

  else
  {
    if (a2 == 1)
    {
      v12 = sub_10002DA14();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

      if (!v13)
      {
        goto LABEL_43;
      }

      v14 = xpc_copy_debug_description();
      v15 = sub_10002DA14();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "xpc event REMOVE: %{public}s", buf, 0xCu);
      }

LABEL_42:
      free(v14);
      goto LABEL_43;
    }

    if (a2)
    {
      goto LABEL_43;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v7;
    v37 = v7;
    v34 = v7;
    v35 = v7;
    v32 = v7;
    v33 = v7;
    *buf = v7;
    v31 = v7;
    if (xpc_get_event_name())
    {
      if (*buf == 2003792482 && *&buf[3] == 6648695)
      {
        v18 = xpc_dictionary_get_array(v5, "interfaces");
        v11 = v18;
        if (v18)
        {
          xpc_array_apply(v18, &stru_10005DD50);
        }
      }

      else
      {
        if (*buf == 0x746E696F70646E65 && *&buf[8] == 115)
        {
          xpc_dictionary_apply(v5, &stru_10005DD90);
          goto LABEL_38;
        }

        if (*buf == 1953720684 && *&buf[3] == 7234932)
        {
          string = xpc_dictionary_get_string(v5, "interface");
          if (string)
          {
            v23 = sub_10002DA14();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v26 = 136446210;
              v27 = string;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "start listening on %{public}s from xpc_event", &v26, 0xCu);
            }

            v24 = sub_100018160(string);
            if (v24 && v24 != 17)
            {
              v25 = sub_10002DA14();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                sub_100041FA4(string, v25);
              }
            }
          }

          goto LABEL_38;
        }

        v11 = sub_10002DA14();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100041F30();
        }
      }

LABEL_38:
      v19 = sub_10002DA14();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

      if (!v20)
      {
        goto LABEL_43;
      }

      v14 = xpc_copy_debug_description();
      v21 = sub_10002DA14();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = 136446466;
        v27 = buf;
        v28 = 2082;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "xpc event ADD: %{public}s: %{public}s", &v26, 0x16u);
      }

      goto LABEL_42;
    }

    v17 = sub_10002DA14();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100041EF0();
    }
  }

LABEL_43:
}

BOOL sub_10002E148(id a1, unint64_t a2, OS_xpc_object *a3)
{
  string_ptr = xpc_string_get_string_ptr(a3);
  if (string_ptr)
  {
    v4 = string_ptr;
    v5 = sub_10002DA14();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136446210;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "start browsing on %{public}s from xpc event", &v10, 0xCu);
    }

    v6 = sub_100015FEC(v4);
    if (v6)
    {
      v7 = v6;
      if (v6 != 17)
      {
        v8 = sub_10002DA14();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_10004201C(v4, v7, v8);
        }
      }
    }
  }

  return 1;
}

BOOL sub_10002E24C(id a1, const char *a2, OS_xpc_object *a3)
{
  string_ptr = xpc_string_get_string_ptr(a3);
  if (string_ptr)
  {
    v5 = string_ptr;
    v15[0] = 0;
    v15[1] = 0;
    v6 = sub_10002DA14();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v17 = v5;
      v18 = 2082;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "adding node %{public}s%%%{public}s from xpc event", buf, 0x16u);
    }

    v7 = inet_pton(30, v5, v15);
    v8 = v7;
    if (v7 == -1)
    {
      v12 = *__error();
      v13 = sub_10002DA14();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000420A4();
      }

      goto LABEL_16;
    }

    if (v7 != 1)
    {
      if (!v7)
      {
        v9 = sub_10002DA14();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100042118();
        }

LABEL_18:

        return 1;
      }

LABEL_16:
      v9 = sub_10002DA14();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100042158(v8, v9);
      }

      goto LABEL_18;
    }

    v10 = sub_100015C10(a2, v15);
    if (v10)
    {
      v11 = v10;
      if (v10 != 17)
      {
        v9 = sub_10002DA14();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446722;
          v17 = v5;
          v18 = 2082;
          v19 = a2;
          v20 = 1024;
          v21 = v11;
          _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "failed to add device %{public}s%%%{public}s in publisher: %{darwin.errno}d", buf, 0x1Cu);
        }

        goto LABEL_18;
      }
    }
  }

  return 1;
}

void sub_10002E44C(id a1, int a2)
{
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

id sub_10002E4F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_10001C540();
  if (v3)
  {
    v6 = v2;
    configure_tls_block = xpc_remote_connection_create_configure_tls_block();
  }

  else
  {
    configure_tls_block = objc_retainBlock(_nw_parameters_configure_protocol_disable);
  }

  return configure_tls_block;
}

void sub_10002E5D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = a4;
  v7 = sub_10001CD84(v5, v6, a3);
  v8[2](v8, v7);
}

void sub_10002E650(id a1)
{
  qword_1000645F0 = os_log_create("com.apple.RemoteServiceDiscovery", "compute");

  _objc_release_x1();
}

void sub_10002E694(id a1)
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 lowercaseString];
    v3 = qword_100064600;
    qword_100064600 = v2;
  }

  else
  {
    v4 = sub_10002DA14();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000421D0(v4);
    }
  }
}

unsigned int *sub_10002EB10(unsigned int *result)
{
  if (!*result)
  {
    sub_1000423C4(&v1, v2);
  }

  *result = bswap32(bswap32(*result) - 1);
  return result;
}

id sub_10002F03C()
{
  if (qword_100064650 != -1)
  {
    sub_10004253C();
  }

  v1 = qword_100064648;

  return v1;
}

NSObject *sub_10002F080(int a1)
{
  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  if (byte_100064618)
  {
    goto LABEL_5;
  }

  if (!a1)
  {
    sub_10004258C(&v8, v9);
  }

  v3 = nw_interface_create_with_index();
  if (v3)
  {
    v4 = v3;
    nw_parameters_require_interface(secure_tcp, v3);
    nw_parameters_set_local_only(secure_tcp, 1);
    nw_parameters_set_required_address_family();
    nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_wired);

LABEL_5:
    nw_parameters_set_no_fallback();
    nw_parameters_set_indefinite();
    xpc_remote_connection_setup_nw_parameters();
    v5 = secure_tcp;
    goto LABEL_6;
  }

  v7 = sub_10002F03C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100042550();
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void sub_10002F3CC(void *a1)
{
  v2 = a1;
  v3 = sub_10002F03C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "initializing bonjour peer device", &buf, 2u);
  }

  objc_storeStrong(&qword_100064628, a1);
  v4 = objc_opt_new();
  v5 = qword_100064620;
  qword_100064620 = v4;

  v6 = objc_opt_new();
  v7 = qword_100064610;
  qword_100064610 = v6;

  v8 = [qword_1000646D8 valueForKey:@"bonjour-interface-name"];
  if (v8)
  {
    v9 = v8;
    v10 = sub_10000CE28(v8);
    CFRelease(v9);
    if (v10)
    {
      sub_10002F7E0(v10, 5);
      goto LABEL_23;
    }
  }

  v11 = IOServiceMatching("IOService");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v11);
  if (!MatchingService)
  {
    sub_1000427F0(v24, &buf);
  }

  v13 = MatchingService;
  v14 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"remotexpc-bonjour-enabled", kCFAllocatorDefault, 1u);
  IOObjectRelease(v13);
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v14) == 4)
      {
        v16 = *CFDataGetBytePtr(v14);
        CFRelease(v14);
        if (v16)
        {
          v17 = malloc_type_malloc(0x10uLL, 0xDAAB8125uLL);
          if (!v17)
          {
            sub_100042784(v24, &buf);
          }

          v18 = v17;
          v27[0] = 0;
          v27[1] = v27;
          v27[2] = 0x2020000000;
          v28 = 5;
          v25[0] = 0;
          v25[1] = v25;
          v25[2] = 0x2020000000;
          v26 = 0;
          v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100064628);
          dispatch_source_set_timer(v19, 0, 0x3B9ACA00uLL, 0);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100030310;
          v24[3] = &unk_10005DE60;
          v24[4] = v25;
          v24[5] = v18;
          dispatch_source_set_mandatory_cancel_handler();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v30 = sub_100030398;
          v31 = &unk_10005DE88;
          v34 = v27;
          v35 = v18;
          v32 = v19;
          v33 = v25;
          v20 = v19;
          dispatch_source_set_event_handler(v20, &buf);
          dispatch_activate(v20);

          _Block_object_dispose(v25, 8);
          _Block_object_dispose(v27, 8);
        }

        goto LABEL_23;
      }

      v23 = sub_10002F03C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000426FC();
      }
    }

    else
    {
      v22 = sub_10002F03C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10004267C();
      }
    }

    CFRelease(v14);
    goto LABEL_23;
  }

  v21 = sub_10002F03C();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "remotexpc-bonjour-enabled";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "cannot find %{public}s property", &buf, 0xCu);
  }

LABEL_23:
}

void sub_10002F7E0(char *a1, int a2)
{
  v4 = sub_10002F8CC(a1, byte_100064618);
  if (!a2 || (v4 & 1) != 0)
  {
    if ((v4 & 1) == 0)
    {
      v6 = sub_10002F03C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10004285C();
      }
    }

    free(a1);
  }

  else
  {
    v5 = dispatch_time(0, 5000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003051C;
    v7[3] = &unk_10005DEA8;
    v7[4] = a1;
    v8 = a2;
    dispatch_after(v5, qword_100064628, v7);
  }
}

uint64_t sub_10002F8CC(const char *a1, char a2)
{
  v4 = sub_10002F03C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "enabling bonjour", buf, 2u);
  }

  if (!qword_100064628)
  {
    v5 = sub_10002F03C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100042A20();
    }

    goto LABEL_9;
  }

  if (qword_100064630)
  {
    v5 = sub_10002F03C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000428CC();
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!a1)
  {
    v5 = sub_10002F03C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000429E4();
    }

    goto LABEL_9;
  }

  v8 = if_nametoindex(a1);
  v9 = sub_10002F03C();
  v5 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100042974();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = a1;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "enabling bonjour for interface name:%s index:%d", buf, 0x12u);
  }

  byte_100064618 = a2;
  sub_10002FB84(v8);
  sub_10002FCC4(v8);
  v10 = objc_alloc_init(RSDNCMInterface);
  v11 = qword_100064630;
  qword_100064630 = v10;

  [qword_100064630 setIndex:v8];
  [qword_100064630 setName:strdup(a1)];
  if ((a2 & 1) == 0)
  {
    v12 = CFStringCreateWithCString(0, a1, 0x8000100u);
    if (!v12)
    {
      sub_100042908(&v14, buf);
    }

    v13 = v12;
    [qword_1000646D8 setValue:v12 forKey:@"bonjour-interface-name"];
    [qword_1000646D8 synchronize];
    CFRelease(v13);
  }

  v5 = sub_10002F03C();
  v6 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "bonjour enabled", buf, 2u);
  }

LABEL_10:

  return v6;
}

void sub_10002FB84(int a1)
{
  v1 = sub_10002F080(a1);
  if (v1)
  {
    bonjour_service = nw_browse_descriptor_create_bonjour_service("_remoted_bp._tcp", "local.");
    if (qword_100064638)
    {
      sub_100042A5C(&v6, v7);
    }

    v3 = nw_browser_create(bonjour_service, v1);
    v4 = qword_100064638;
    qword_100064638 = v3;

    v5 = qword_100064638;
    if (!v5)
    {
      sub_100042AE4(&v6, v7);
    }

    nw_browser_set_browse_results_changed_handler(qword_100064638, &stru_10005DEE8);
    nw_browser_set_state_changed_handler(qword_100064638, &stru_10005DF50);
    nw_browser_set_queue(qword_100064638, qword_100064628);
    nw_browser_start(qword_100064638);
  }

  else
  {
    bonjour_service = sub_10002F03C();
    if (os_log_type_enabled(bonjour_service, OS_LOG_TYPE_FAULT))
    {
      sub_100042430();
    }
  }
}

void sub_10002FCC4(int a1)
{
  v2 = sub_10002F03C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "init bonjour listener start", buf, 2u);
  }

  v3 = sub_10002F080(a1);
  if (v3)
  {
    if (qword_100064640)
    {
      sub_100040F50(out, buf);
    }

    v4 = nw_listener_create(v3);
    v5 = qword_100064640;
    qword_100064640 = v4;

    v6 = qword_100064640;
    if (!v6)
    {
      sub_100042E74(out, buf);
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v7;
    *&out[16] = v7;
    if (uuid_is_null(&xmmword_1000646E8))
    {
      sub_100042B50(dst, buf);
    }

    v8 = sub_10002F03C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100042BBC();
    }

    uuid = xpc_dictionary_get_uuid(qword_1000646F8, "BootSessionUUID");
    if (!uuid)
    {
      sub_100042E08(dst, buf);
    }

    memset(dst, 170, sizeof(dst));
    uuid_copy(dst, uuid);
    if (uuid_is_null(dst))
    {
      sub_100042C3C(&v14, buf);
    }

    v10 = sub_10002F03C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100042CA8();
    }

    xmmword_1000646E8 = veorq_s8(xmmword_1000646E8, *dst);
    v11 = sub_10002F03C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100042D1C();
    }

    uuid_unparse(&xmmword_1000646E8, out);
    if (strlen(out) - 1 >= 0x3F)
    {
      sub_100042D9C(dst, buf);
    }

    bonjour_service = nw_advertise_descriptor_create_bonjour_service(out, "_remoted_bp._tcp", "local.");
    nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
    nw_listener_set_advertise_descriptor(qword_100064640, bonjour_service);
    nw_listener_set_new_connection_handler(qword_100064640, &stru_10005DFB0);
    nw_listener_set_state_changed_handler(qword_100064640, &stru_10005DFD0);
    nw_listener_set_advertised_endpoint_changed_handler(qword_100064640, &stru_10005E010);
    nw_listener_set_queue(qword_100064640, qword_100064628);
    nw_listener_start(qword_100064640);
    v13 = sub_10002F03C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "init bonjour listener done", buf, 2u);
    }
  }

  else
  {
    bonjour_service = sub_10002F03C();
    if (os_log_type_enabled(bonjour_service, OS_LOG_TYPE_FAULT))
    {
      sub_100042430();
    }
  }
}

void sub_10002FFF8()
{
  v0 = sub_10002F03C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "disabling bonjour", buf, 2u);
  }

  if ([qword_100064630 name])
  {
    [qword_1000646D8 setValue:0 forKey:@"bonjour-interface-name"];
    [qword_1000646D8 synchronize];
    byte_100064618 = 0;
    if (qword_100064638)
    {
      v1 = sub_10002F03C();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        sub_100042EE0();
      }

      nw_browser_cancel(qword_100064638);
      v2 = qword_100064638;
      qword_100064638 = 0;
    }

    if (qword_100064640)
    {
      v3 = sub_10002F03C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_100042F1C();
      }

      nw_listener_cancel(qword_100064640);
      v4 = qword_100064640;
      qword_100064640 = 0;
    }

    v5 = sub_10002F03C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100042F58();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [qword_100064610 copy];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v14 + 1) + 8 * v10) disconnect];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v11 = sub_10002F03C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100042F94();
    }

    [qword_100064620 removeAllObjects];
    v12 = qword_100064630;
    qword_100064630 = 0;

    v13 = sub_10002F03C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "bonjour disabled", buf, 2u);
    }
  }

  else
  {
    v13 = sub_10002F03C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100042FD0();
    }
  }
}

void sub_1000302CC(id a1)
{
  qword_100064648 = os_log_create("com.apple.RemoteServiceDiscovery", "BonjourPeer");

  _objc_release_x1();
}

void sub_100030310(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v2 = *(a1 + 40);

    sub_10002F7E0(v2, 5);
  }

  else
  {
    v3 = sub_10002F03C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004300C();
    }

    free(*(a1 + 40));
  }
}

void sub_100030398(uint64_t a1)
{
  v2 = IOServiceMatching("AppleUSBDeviceNCMData");
  if (!v2)
  {
    sub_10004312C(&v12, v13);
  }

  v3 = v2;
  v4 = IOServiceMatching("IOEthernetInterface");
  if (!v4)
  {
    sub_1000430C0(&v12, v13);
  }

  v5 = v4;
  CFDictionarySetValue(v4, @"IOParentMatch", v3);
  CFRelease(v3);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    *(*(*(a1 + 40) + 8) + 24) = sub_100012C1C(MatchingService, *(a1 + 56));
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v8 = sub_10002F03C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100043048();
      }
    }

    IOObjectRelease(v7);
  }

  else
  {
    v9 = sub_10002F03C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100043084();
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || (v10 = *(*(a1 + 48) + 8), v11 = *(v10 + 24) - 1, (*(v10 + 24) = v11) == 0))
  {
    dispatch_source_cancel(*(a1 + 32));
  }
}

void sub_100030530(id a1, OS_nw_browse_result *a2, OS_nw_browse_result *a3, BOOL a4)
{
  v5 = a2;
  v6 = a3;
  changes = nw_browse_result_get_changes(v5, v6);
  v8 = sub_10002F03C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v35 = v5;
    *&v35[8] = 2112;
    *&v35[10] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "browse_results_changed: %@ -> %@", buf, 0x16u);
  }

  if ((changes & 2) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if ((changes & 6) != 0)
  {
    v10 = v9;
    if (!v10)
    {
      sub_1000433B8(uu, buf);
    }

    v11 = v10;

    v12 = nw_browse_result_copy_endpoint(v11);
    if (!v12)
    {
      sub_10003D6F4(uu, buf);
    }

    v13 = v12;

    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100030A34;
    v30 = &unk_10005DF10;
    v14 = v13;
    v31 = v14;
    nw_browse_result_enumerate_interfaces(v11, &v27);
    v15 = nw_endpoint_copy_interface();
    if (!v15)
    {
      sub_10004334C(uu, buf);
    }

    memset(uu, 170, sizeof(uu));
    v16 = v14;
    bonjour_service_name = nw_endpoint_get_bonjour_service_name(v16);
    if (!bonjour_service_name)
    {
      sub_1000432E0(&v32, buf);
    }

    uuid_parse(bonjour_service_name, uu);

    v18 = sub_10002F03C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v35 = 16;
      *&v35[4] = 2096;
      *&v35[6] = &xmmword_1000646E8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "browser local_device_uuid: %{uuid_t}.16P", buf, 0x12u);
    }

    if (uuid_is_null(&xmmword_1000646E8))
    {
      sub_100043198(&v32, buf);
    }

    if (uuid_is_null(uu))
    {
      sub_100043204(&v32, buf);
    }

    if (!uuid_compare(&xmmword_1000646E8, uu))
    {
      if (byte_100064618 != 1)
      {
        v21 = sub_10002F03C();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ignoring bonjour event for own uuid", buf, 2u);
        }

        goto LABEL_44;
      }

      sub_10002EB10(uu);
      v19 = sub_10002F03C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "munging uuid and not ignoring bonjour event for own uuid due to loopback test mode", buf, 2u);
      }
    }

    v20 = [NSUUID alloc];
    v21 = [v20 initWithUUIDBytes:{uu, v27, v28, v29, v30}];
    if ((changes & 2) != 0)
    {
      if ([qword_100064620 containsObject:v21])
      {
        v23 = sub_10002F03C();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_100043270();
        }
      }

      else
      {
        [qword_100064620 addObject:v21];
      }

      v22 = sub_100030A54(uu);
      if (v22)
      {
        v24 = sub_10002F03C();
        if (os_log_type_enabled(&v24->super.super, OS_LOG_TYPE_DEBUG))
        {
          sub_1000432A4();
        }
      }

      else
      {
        v25 = uuid_compare(&xmmword_1000646E8, uu);
        v24 = sub_10002F03C();
        v26 = os_log_type_enabled(&v24->super.super, OS_LOG_TYPE_DEFAULT);
        if (v25 < 1)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &v24->super.super, OS_LOG_TYPE_DEFAULT, "uuid policy: other side will connect", buf, 2u);
          }
        }

        else
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &v24->super.super, OS_LOG_TYPE_DEFAULT, "uuid policy: create new device and connect", buf, 2u);
          }

          v24 = [[RSDRemoteBonjourPeerDevice alloc] initWithBrowsedEndpointUUID:v16 uuid:uu];
          [(RSDRemoteBonjourPeerDevice *)v24 attach];
        }
      }
    }

    else
    {
      if ((changes & 4) == 0)
      {
LABEL_44:

        goto LABEL_45;
      }

      v22 = sub_100030A54(uu);
      [qword_100064620 removeObject:v21];
      if (v22)
      {
        if ([v22 state] == 3)
        {
          [v22 heartbeatWithCallback:&stru_10005DF30];
        }

        else
        {
          [v22 disconnect];
        }
      }
    }

    goto LABEL_44;
  }

LABEL_45:
}

uint64_t sub_100030A34(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_endpoint_set_interface();
  return 0;
}

id sub_100030A54(const unsigned __int8 *a1)
{
  v2 = sub_10002F03C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    v21 = 16;
    v22 = 2096;
    v23 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "checking for existing device %{uuid_t}.16P", buf, 0x12u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = qword_100064610;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = sub_10002F03C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 remoteUUID];
          *buf = 68157954;
          v21 = 16;
          v22 = 2096;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "comparing against device uuid %{uuid_t}.16P", buf, 0x12u);
        }

        if (!uuid_compare([v10 remoteUUID], a1))
        {
          v13 = v10;

          ++v6;
          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);

    if (v7 && v6 >= 2)
    {
      sub_10003E014();
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

void sub_100030C88(id a1, BOOL a2)
{
  v2 = sub_10002F03C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100043424();
  }
}

void sub_100030CD4(id a1, int a2, OS_nw_error *a3)
{
  v4 = a3;
  v5 = sub_10002F03C();
  v6 = v5;
  switch(a2)
  {
    case 4:
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v4;
        v7 = "nw_browser_state_waiting: %@";
        v8 = v6;
        v9 = 12;
        goto LABEL_14;
      }

LABEL_20:

      break;
    case 2:
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000434B0();
      }

      error_domain = nw_error_get_error_domain(v4);
      error_code = nw_error_get_error_code(v4);
      if (error_domain == nw_error_domain_dns && (error_code == -65563 || error_code == -65568))
      {
        nw_browser_cancel(qword_100064638);
        v12 = qword_100064638;
        qword_100064638 = 0;

        v13 = dispatch_time(0, 5000000000);
        dispatch_after(v13, qword_100064628, &stru_10005DF70);
      }

      break;
    case 1:
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v7 = "browsing for other bonjour remoted instances";
        v8 = v6;
        v9 = 2;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
        goto LABEL_20;
      }

      goto LABEL_20;
    default:
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10003E134();
      }

      if (v4)
      {
        v6 = sub_10002F03C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10003E1A8();
        }

        goto LABEL_20;
      }

      break;
  }
}

void sub_100030EC8(id a1)
{
  if (qword_100064630)
  {
    v3 = qword_100064638 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = [qword_100064630 index];

    sub_10002FB84(v4);
  }
}

void sub_100030F10(id a1, OS_nw_connection *a2)
{
  v2 = a2;
  v3 = sub_10002F03C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> got incoming remoted connection", buf, 0xCu);
  }

  v4 = nw_connection_copy_current_path(v2);
  v5 = nw_path_copy_effective_remote_endpoint(v4);
  v6 = sub_10002F03C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    description = nw_endpoint_get_description();
    *buf = 138543618;
    v53 = v2;
    v54 = 2080;
    v55 = description;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> remote endpoint: %s", buf, 0x16u);
  }

  if (nw_endpoint_get_type(v5) != nw_endpoint_type_address)
  {
    sub_100043520(&v48, buf);
  }

  nw_endpoint_get_address(v5);
  address_with_port = nw_endpoint_create_address_with_port();
  v9 = sub_10002F03C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10004358C(v2, address_with_port, v9);
  }

  v10 = address_with_port;
  v11 = sub_10002F03C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = nw_endpoint_get_description();
    *v56 = 136315138;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "checking for existing device endpoint %s", v56, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = qword_100064610;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (v14)
  {
    v15 = v14;
    v41 = v5;
    v42 = v4;
    v43 = v2;
    v44 = 0;
    v45 = 0;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v19 = [v18 address_endpoint];
        if (v19)
        {
          v20 = v19;
          v21 = [v18 address_endpoint];
          type = nw_endpoint_get_type(v21);

          if (type == nw_endpoint_type_address)
          {
            v23 = [v18 address_endpoint];
            nw_endpoint_get_address(v23);
            v24 = nw_endpoint_create_address_with_port();

            nw_endpoint_get_address(v10);
            v25 = nw_endpoint_create_address_with_port();
            v26 = sub_10002F03C();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *v56 = 138412290;
              v57 = v24;
              _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "stripped current endpoint %@", v56, 0xCu);
            }

            v27 = sub_10002F03C();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *v56 = 138412290;
              v57 = v25;
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "stripped target  endpoint %@", v56, 0xCu);
            }

            if ([v24 isEqual:v25])
            {
              if (byte_100064618 == 1 && ([v18 bonjour_endpoint], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
              {
                v29 = sub_10002F03C();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  sub_10004362C(&v46, v47, v29);
                }
              }

              else
              {
                v30 = v18;

                ++v44;
                v45 = v30;
              }
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v48 objects:buf count:16];
    }

    while (v15);

    v31 = v45;
    if (v45 && v44 >= 2)
    {
      sub_10004366C();
    }

    v4 = v42;
    v2 = v43;
    v5 = v41;
    if (v45)
    {
      v32 = sub_10002F03C();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v45;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@> reusing existing device for incoming connection endpoint", buf, 0xCu);
      }

      v33 = [v45 connection];

      if (v33)
      {
        v34 = sub_10002F03C();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v53 = v45;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@> canceling existing connection to replace it", buf, 0xCu);
        }

        v35 = [v45 peerconn];

        if (v35)
        {
          v36 = [v45 peerconn];
          nw_connection_cancel(v36);
        }

        v37 = [v45 connection];
        xpc_remote_connection_cancel();

        [v45 setPeerconn:v43];
      }

      else
      {
        [v45 setPeerconn:v43];
        [v45 needsConnect];
      }

      goto LABEL_47;
    }
  }

  else
  {
  }

  v38 = sub_10002F03C();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v2;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@> did not find existing device, creating new device for incoming connection endpoint", buf, 0xCu);
  }

  v39 = nw_path_copy_interface();
  if (!v39)
  {
    sub_100043688(&v48, buf);
  }

  v31 = v39;

  nw_endpoint_set_interface();
  v40 = [[RSDRemoteBonjourPeerDevice alloc] initWithIncomingEndpoint:v10];
  [(RSDRemoteBonjourPeerDevice *)v40 setPeerconn:v2];
  [(RSDRemoteBonjourPeerDevice *)v40 attach];

LABEL_47:
}

void sub_10003159C(id a1, int a2, OS_nw_error *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2 == 3)
  {
    v15 = sub_10002F03C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000436F4();
    }

    error_domain = nw_error_get_error_domain(v5);
    error_code = nw_error_get_error_code(v5);
    if (error_domain == nw_error_domain_dns && (error_code == -65563 || error_code == -65568))
    {
      nw_listener_cancel(qword_100064640);
      v18 = qword_100064640;
      qword_100064640 = 0;

      v19 = dispatch_time(0, 5000000000);
      dispatch_after(v19, qword_100064628, &stru_10005DFF0);
    }
  }

  else if (a2 == 2)
  {
    v6 = sub_10002F03C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = nw_listener_copy_local_endpoint();
      v20 = 138412802;
      v21 = v7;
      v22 = 1024;
      v23 = 2;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "listening on %@ (state %u, error %@)", &v20, 0x1Cu);
    }

    port = nw_listener_get_port(qword_100064640);
    if (port)
    {
      v9 = port;
      v10 = sub_10002F03C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v20 = 67109120;
        LODWORD(v21) = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "listener port: %u", &v20, 8u);
      }

      v11 = nw_listener_copy_local_endpoint();
      if (v11)
      {
        description = nw_endpoint_get_description();
        if (description)
        {
          v13 = description;
          v14 = sub_10002F03C();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v20 = 136315138;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "listener local endpoint: %s", &v20, 0xCu);
          }
        }
      }

LABEL_22:
    }
  }

  else if (v4)
  {
    v11 = sub_10002F03C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100043764();
    }

    goto LABEL_22;
  }
}

void sub_100031844(id a1)
{
  if (qword_100064630)
  {
    v3 = qword_100064640 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = [qword_100064630 index];

    sub_10002FCC4(v4);
  }
}

void sub_10003188C(id a1, OS_nw_endpoint *a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sub_10002F03C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "removed";
    if (v3)
    {
      v6 = "added";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "advertised endpoint %@ %s", &v7, 0x16u);
  }
}

NSObject *sub_100031974(int a1)
{
  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  if (!a1)
  {
    sub_10004258C(&v8, v9);
  }

  v3 = secure_tcp;
  v4 = nw_interface_create_with_index();
  if (v4)
  {
    nw_parameters_require_interface(v3, v4);
    nw_parameters_set_local_only(v3, 1);
    nw_parameters_set_required_address_family();
    nw_parameters_set_required_interface_type(v3, nw_interface_type_wired);
    nw_parameters_set_no_fallback();
    nw_parameters_set_indefinite();
    xpc_remote_connection_setup_nw_parameters();
    v5 = v3;
  }

  else
  {
    v6 = sub_1000012E4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003D524(v6);
    }

    v5 = 0;
  }

  return v5;
}

void sub_100031ABC(void *a1)
{
  v1 = a1;
  v2 = [v1 interface];
  [v1 setBackendProperty:"InterfaceIndex" withUint:{objc_msgSend(v2, "index")}];

  v3 = [v1 interface];
  [v1 setBackendProperty:"InterfaceName" withString:{objc_msgSend(v3, "name")}];
}

BOOL sub_100031B50()
{
  if (qword_100064660 != -1)
  {
    sub_1000437D4();
  }

  return (byte_100064658 & 1) == 0;
}

void sub_100031B90(id a1)
{
  if (os_parse_boot_arg_int())
  {
    byte_100064658 = 1;
  }
}

uint64_t sub_100031EDC(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    sub_100043850(&v4, v5);
  }

  v2 = *a1 ^ 2 | (a1[1] << 8) | (a1[2] << 16) | (a1[3] << 40) | (a1[4] << 48) | ((a1[5] ^ (a2 - 1)) << 56) | 0xFEFF000000;
  return 33022;
}

void sub_100032E68(id a1)
{
  qword_100064668 = os_log_create("com.apple.RemoteServiceDiscovery", "ncm_common");

  _objc_release_x1();
}

void sub_100032EAC()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v5, buf);
  }

  if (dword_1000642DC == 3)
  {
    if (qword_100064688)
    {
      sub_100043ED0(&v5, buf);
    }

    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Attaching loopback device.", buf, 2u);
    }

    v2 = [(RSDRemoteDevice *)[RSDRemoteLoopbackDevice alloc] initWithName:"localhost"];
    v3 = qword_100064688;
    qword_100064688 = v2;

    dword_1000642DC = 1;
    [qword_100064688 setBackendProperty:"IsLoopback" withBool:1];
    [qword_100064688 attach];
  }

  else
  {
    v4 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot attach loopback, state = %d", buf, 8u);
    }
  }
}

void sub_100033040(id a1, NSError *a2)
{
  v3 = +[RSDRemoteLoopbackDevice tlsOidsRequiredOfPeer];
  v2 = [v3 allObjects];
  sub_10001BF34(v2, &stru_10005E0D0);
}

void sub_1000330A8(id a1)
{
  v1 = qword_100064678;
  if (!v1)
  {
    sub_10003F068(&v11, buf);
  }

  v2 = dword_1000642DC;
  if (dword_1000642DC == 1)
  {
    v3 = qword_100064688;
    if (!qword_100064688)
    {
      sub_100043F3C(&v11, buf);
    }

    v4 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@> Connecting to loopback device", buf, 0xCu);
    }

    xpc_remote_connection_get_version_flags();
    *buf = 0;
    xpc_remote_connection_create_connected_ipv6_pair();
    v5 = *buf;
    v6 = *buf;
    v7 = 0;
    objc_storeStrong(&qword_100064690, v5);
    objc_storeStrong(&qword_100064698, 0);
    byte_1000646A1 = 0;
    [qword_100064688 connect:qword_100064698];
    xpc_remote_connection_set_event_handler();
    if ([qword_100064688 tlsEnabled])
    {
      v8 = sub_10001C540();
      if (!v8)
      {
        sub_100039204();
      }

      v9 = v8;
      xpc_remote_connection_set_tls();
    }

    xpc_remote_connection_activate();
    dword_1000642DC = 2;
  }

  else
  {
    v10 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot connect loopback, state = %d", buf, 8u);
    }
  }
}

void sub_1000332CC()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v7, buf);
  }

  if (dword_1000642DC == 3)
  {
    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cannot disconnect loopback, state = %d", buf, 8u);
    }
  }

  else
  {
    if (!qword_100064688)
    {
      sub_100043F3C(&v7, buf);
    }

    v2 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = qword_100064688;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%{public}@> Disconnecting loopback device", buf, 0xCu);
    }

    if (dword_1000642DC == 2)
    {
      if (!qword_100064690)
      {
        sub_100044014(&v7, buf);
      }

      xpc_remote_connection_cancel();
      v3 = qword_100064690;
      qword_100064690 = 0;

      v4 = [qword_100064688 connection];

      if (v4)
      {
        v5 = [qword_100064688 connection];
        xpc_remote_connection_cancel();

        [qword_100064688 setConnection:0];
      }

      v6 = qword_100064698;
      if (!qword_100064698)
      {
        sub_100043FA8(&v7, buf);
      }

      qword_100064698 = 0;
    }

    dword_1000642DC = 3;
    byte_1000646A0 = 0;
  }
}

void sub_1000334B0()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v4, buf);
  }

  if (dword_1000642DC == 3)
  {
    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cannot detach loopback, state = %d", buf, 8u);
    }
  }

  else
  {
    if (!qword_100064688)
    {
      sub_100043F3C(&v4, buf);
    }

    v2 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = qword_100064688;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%{public}@> Detaching loopback device", buf, 0xCu);
    }

    sub_1000332CC();
    [qword_100064688 disconnect];
    v3 = qword_100064688;
    qword_100064688 = 0;
  }
}

void sub_100033604()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v3, buf);
  }

  if (dword_1000642DC == 2)
  {
    if (!qword_100064688)
    {
      sub_100043F3C(&v3, buf);
    }

    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = qword_100064688;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%{public}@> Suspending loopback device", buf, 0xCu);
    }

    byte_1000646A0 = 1;
  }

  else
  {
    v2 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cannot suspend loopback, state = %d", buf, 8u);
    }
  }
}

void sub_100033754()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v3, buf);
  }

  if (dword_1000642DC == 2)
  {
    if (!qword_100064688)
    {
      sub_100043F3C(&v3, buf);
    }

    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = qword_100064688;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%{public}@> Resuming loopback device", buf, 0xCu);
    }

    byte_1000646A0 = 0;
    [qword_100064688 drainPendedRequests];
  }

  else
  {
    v2 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cannot resume loopback, state = %d", buf, 8u);
    }
  }
}

void sub_1000338A0()
{
  v0 = qword_100064678;
  if (!v0)
  {
    sub_10003F068(&v4, buf);
  }

  if (dword_1000642DC == 2)
  {
    if (!qword_100064688)
    {
      sub_100043F3C(&v4, buf);
    }

    if (!qword_100064690)
    {
      sub_100044014(&v4, buf);
    }

    v1 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = qword_100064688;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%{public}@> Resetting loopback device", buf, 0xCu);
    }

    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "MessageType", "Reset");
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000642DC;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cannot reset loopback, state = %d", buf, 8u);
    }
  }
}

void sub_100033A40(id a1, OS_xpc_object *a2)
{
  byte_1000646A1 = 1;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "MessageType", "ResetGoahead");
  xpc_remote_connection_send_message();
}

void sub_100033AB4(id obj)
{
  objc_storeStrong(&qword_100064678, obj);
  v4 = obj;
  v2 = os_log_create("com.apple.RemoteServiceDiscovery", "loopback");
  v3 = qword_100064680;
  qword_100064680 = v2;
}

void sub_100034164(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    if (byte_1000646A1 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  string = xpc_dictionary_get_string(v2, "MessageType");
  if (!string)
  {
    v10 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_1000445B0(v10);
    }

    sub_1000334B0();
    goto LABEL_18;
  }

  v4 = string;
  if (!strcmp(string, "Handshake") || !strcmp(v4, "StartTls"))
  {
    xpc_remote_connection_send_message();
    goto LABEL_18;
  }

  if (!strcmp(v4, "Heartbeat"))
  {
    reply_msg_id = _xpc_dictionary_get_reply_msg_id();
    _xpc_dictionary_set_reply_msg_id();
    v12[1] = _NSConcreteStackBlock;
    v12[2] = 3221225472;
    v12[3] = sub_100034420;
    v12[4] = &unk_10005E130;
    v12[5] = reply_msg_id;
    xpc_remote_connection_send_message_with_reply();
    goto LABEL_18;
  }

  if (!strcmp(v4, "Reset"))
  {
    reply = xpc_dictionary_create_reply(v2);
    xpc_dictionary_set_string(reply, "Result", "Ok");
    xpc_dictionary_send_reply();
LABEL_21:

    goto LABEL_18;
  }

  if (!strcmp(v4, "ResetGoahead"))
  {
LABEL_13:
    sub_1000332CC();
    dword_1000642DC = 1;
    sub_10001C54C(3, 1, 1, &stru_10005E0B0);
    goto LABEL_18;
  }

  if (!strcmp(v4, "Timesync"))
  {
    v5 = xpc_dictionary_get_value(v2, "TimesyncPayload");
    if (!v5)
    {
      sub_100044544(v12, v13);
    }

    reply = v5;

    v7 = sub_100010054(reply, qword_100064680);
    if (!v7)
    {
      sub_1000444D8(v12, v13);
    }

    v8 = v7;

    v9 = xpc_dictionary_create_reply(v2);
    xpc_dictionary_set_value(v9, "TimesyncPayload", v8);
    xpc_dictionary_send_reply();

    goto LABEL_21;
  }

LABEL_18:
}

void sub_100034420(uint64_t a1, void *a2)
{
  v4 = a2;
  if (xpc_get_type(v4) != &_xpc_type_error)
  {
    v3 = *(a1 + 32);
    _xpc_dictionary_set_reply_msg_id();
    _xpc_dictionary_set_remote_connection();
    xpc_dictionary_send_reply();
  }
}

void sub_10003449C(id a1, OS_sec_protocol_metadata *a2, OS_sec_trust *a3, id a4)
{
  v5 = qword_100064688;
  v7 = a4;
  v6 = sub_10001CB24(v5, a3);
  v7[2](v7, v6);
}

void sub_100034520(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100034540()
{
  if (!qword_1000646A8)
  {
    v0 = os_log_create("com.apple.RemoteServiceDiscovery", "virtualmachine_common");
    v1 = qword_1000646A8;
    qword_1000646A8 = v0;

    v2 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "initializing virtualmachine common", v3, 2u);
    }
  }
}

void sub_1000349B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100034CF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = qword_1000646B0;
    if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_ERROR))
    {
      sub_100044A64(a1, a3, v5);
    }

    [*(a1 + 32) connect:0];
  }

  else
  {
    v6 = [*(a1 + 32) connection];

    v7 = qword_1000646B0;
    v8 = os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, but socket is not needed anymore, closing", &v13, 0xCu);
      }

      close(*(*(a1 + 32) + 248));
    }

    else
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> pollConnect completed, socket is connected", &v13, 0xCu);
      }

      v11 = *(*(a1 + 32) + 248);
      xpc_remote_connection_get_failsafe_version_flags();
      v12 = xpc_remote_connection_create_with_connected_fd();
      [*(a1 + 32) connect:v12];
    }
  }

  *(*(a1 + 32) + 248) = -1;
}

void sub_100034F4C(void *a1)
{
  v2 = a1;
  sub_100034540();
  if (qword_1000646D0 != -1)
  {
    sub_100044B78();
  }

  if (byte_1000646C8 == 1 && qword_1000646B8 == 0)
  {
    v4 = os_log_create("com.apple.RemoteServiceDiscovery", "virtualmachine_device");
    v5 = qword_1000646B0;
    qword_1000646B0 = v4;

    v6 = qword_1000646B0;
    if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "initializing virtualmachine host", v9, 2u);
    }

    objc_storeStrong(&qword_1000646B8, a1);
    v7 = [[RSDVirtualMachineHostDevice alloc] initHostDevice];
    v8 = qword_1000646C0;
    qword_1000646C0 = v7;

    [qword_1000646C0 attach];
  }
}

void sub_100035058(id a1)
{
  v1 = socket(40, 1, 1);
  if (v1 != -1)
  {
    byte_1000646C8 = 1;

    close(v1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_ntoh(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_ntoh(*(a1 + 4));
  result = sntp_timestamp_ntoh(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_ntoh(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

unint64_t sntp_server_respond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  *a4 = *a2;
  v9 = *(a1 + 40);
  *(a4 + 16) = *(a2 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = sntp_timestamp_hton(v8);
  v10 = a3();
  result = sntp_timestamp_hton(v10);
  *(a4 + 40) = result;
  if (__ROR8__(v10, 32) < __ROR8__(v8, 32))
  {
    *(a4 + 1) = 0;
    *(a4 + 12) = 1398031696;
  }

  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!sub_1000362D8(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = sub_1000363F0(&v54);
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = sub_1000364C0(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = sub_100036594(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = sub_1000366BC(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = sub_100036780(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = sub_100036890(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57 == 1)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!sub_100036964(&v58, v70, v53))
    {
      return v49;
    }

    result = sub_1000369F0(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t sub_1000362D8(uint64_t *a1, int a2, _BYTE *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v6 = *a1;
  v7 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_1000363F0(uint64_t a1)
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    return 0;
  }

  return result;
}

uint64_t sub_1000364C0(uint64_t *a1, void *a2, _BYTE *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = sub_1000362D8(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3 == 1)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100036594(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}