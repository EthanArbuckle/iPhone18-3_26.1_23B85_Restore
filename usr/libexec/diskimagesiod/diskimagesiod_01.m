uint64_t sub_10001E668(curl_slist **a1, unsigned int a2, char *__s, uint64_t a4, uint64_t a5)
{
  v116[0] = 0;
  v116[1] = 0;
  v117 = 0;
  v114[0] = 0;
  v114[1] = 0;
  v115 = 0;
  v112[0] = 0;
  v112[1] = 0;
  v113 = 0;
  v110[0] = 0;
  v110[1] = 0;
  v111 = 0;
  v121 = 0;
  memset(__sa, 0, sizeof(__sa));
  v10 = strlen(__s);
  if (v10 < 7)
  {
    goto LABEL_8;
  }

  if (*__s == 1886680168 && *(__s + 3) == 791624304)
  {
    v19 = 7;
  }

  else
  {
    if (v10 == 7 || *__s != 0x2F2F3A7370747468)
    {
LABEL_8:
      v14 = "Invalid URL";
      v15 = 492;
LABEL_9:
      v16 = 0;
LABEL_10:
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", v15, 84, v16, v14, v11, v12, v98);
LABEL_11:
      v17 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v19 = 8;
  }

  v20 = &__s[v19];
  v21 = strchr(&__s[v19], 47);
  if (!v21)
  {
    v14 = "Invalid URL";
    v15 = 494;
    goto LABEL_9;
  }

  v22 = v21;
  v108 = v20;
  v106 = a2;
  v23 = strchr(v21, 63);
  v24 = "/";
  v107 = v22;
  if (!v23)
  {
    v30 = strlen(v22);
    if (v30 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v30;
    }

    if (v30)
    {
      v24 = v22;
    }

    goto LABEL_30;
  }

  v25 = v23;
  v26 = v23 + 1;
  v27 = strlen(v23 + 1);
  v28 = v25 == v22;
  if (v25 == v22)
  {
    v29 = 1;
  }

  else
  {
    v29 = v25 - v22;
  }

  if (!v28)
  {
    v24 = v22;
  }

  if (!v27)
  {
LABEL_30:
    __n = 0;
    v105 = "";
    goto LABEL_31;
  }

  __n = v27;
  v105 = v26;
LABEL_31:
  if ((sub_10001DDA0(a1, "X-Amz-Date: %s", (a4 + 68)) & 0x80000000) != 0 || *(a4 + 452) && (sub_10001DDA0(a1, "X-Amz-Security-Token: %s", (a4 + 452)) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  __src = v24;
  if (a5)
  {
    v31 = *a5;
    v32 = *(a5 + 8);
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    sub_10001DB90(&v122, v31, v32);
    if (v122)
    {
      v33 = v29;
      v34 = &v122 + 4;
      v35 = 2 * v122;
      v36 = v35 | 1;
      v37 = __str;
      do
      {
        v38 = *v34++;
        snprintf(v37, v36, "%02x", v38);
        v36 -= 2;
        v37 += 2;
      }

      while (v36 != 1);
LABEL_42:
      v29 = v33;
      goto LABEL_44;
    }
  }

  else
  {
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    sub_10001DB90(&v122, 0, 0);
    if (v122)
    {
      v33 = v29;
      v39 = &v122 + 4;
      v35 = 2 * v122;
      v40 = v35 | 1;
      v41 = __str;
      do
      {
        v42 = *v39++;
        snprintf(v41, v40, "%02x", v42);
        v40 -= 2;
        v41 += 2;
      }

      while (v40 != 1);
      goto LABEL_42;
    }
  }

  v35 = 0;
LABEL_44:
  __str[v35] = 0;
  memset_s(&v122, 0x104uLL, 0, 0x104uLL);
  if ((sub_10001DDA0(a1, "X-Amz-Content-Sha256: %s", __str) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v43 = *a1;
  if (*a1)
  {
    v44 = 1;
    do
    {
      v43 = v43->next;
      ++v44;
    }

    while (v43);
  }

  else
  {
    v44 = 1;
  }

  v109 = calloc(v44, 8uLL);
  if (!v109)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 526;
    goto LABEL_10;
  }

  v101 = (a4 + 68);
  v102 = v29;
  v99 = a1;
  v100 = a4;
  v45 = *a1;
  if (!v45)
  {
    v46 = 0;
LABEL_75:
    v55 = v22 - v108;
    v56 = v107 - v108 + 6;
    if (v56 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_80:
      v60 = *__error();
      v63 = 560;
      goto LABEL_83;
    }

    v57 = malloc(v56);
    if (!v57)
    {
      goto LABEL_80;
    }

    v58 = v57;
    v109[v46] = v57;
    v57[4] = 58;
    *v57 = 1953722216;
    memcpy(v57 + 5, v108, v55);
    v58[v55 + 5] = 0;
    qsort(v109, v46 + 1, 8uLL, sub_10001F214);
    if (v106 > 3)
    {
      v59 = "???";
    }

    else
    {
      v59 = off_1001F7540[v106];
    }

    v64 = strlen(v59);
    if ((sub_10001F220(v116, v59, v64) & 0x80000000) == 0 && (sub_10001F220(v116, "\n", 1uLL) & 0x80000000) == 0 && (sub_10001F220(v116, __src, v102) & 0x80000000) == 0 && (sub_10001F220(v116, "\n", 1uLL) & 0x80000000) == 0 && (sub_10001F220(v116, v105, __n) & 0x80000000) == 0 && (sub_10001F220(v116, "\n", 1uLL) & 0x80000000) == 0)
    {
      if (v46 == -1)
      {
LABEL_100:
        if ((sub_10001F220(v116, "\n", 1uLL) & 0x80000000) == 0)
        {
          v72 = v115;
          v73 = strlen(v115);
          if ((sub_10001F220(v116, v115, v73) & 0x80000000) == 0 && (sub_10001F220(v116, "\n", 1uLL) & 0x80000000) == 0)
          {
            v74 = strlen(__str);
            if ((sub_10001F220(v116, __str, v74) & 0x80000000) == 0 && (sub_10001F220(v112, "AWS4-HMAC-SHA256\n", 0x11uLL) & 0x80000000) == 0)
            {
              v75 = strlen(v101);
              if ((sub_10001F220(v112, v101, v75) & 0x80000000) == 0 && (sub_10001F220(v112, "\n", 1uLL) & 0x80000000) == 0)
              {
                v76 = strlen((v100 + 4));
                if ((sub_10001F220(v112, (v100 + 4), v76) & 0x80000000) == 0 && (sub_10001F220(v112, "/", 1uLL) & 0x80000000) == 0)
                {
                  v77 = strlen((v100 + 132));
                  if ((sub_10001F220(v112, (v100 + 132), v77) & 0x80000000) == 0 && (sub_10001F220(v112, "/s3/aws4_request\n", 0x11uLL) & 0x80000000) == 0)
                  {
                    v138 = 0;
                    v136 = 0u;
                    v137 = 0u;
                    v134 = 0u;
                    v135 = 0u;
                    v132 = 0u;
                    v133 = 0u;
                    v130 = 0u;
                    v131 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v78 = strlen(v117);
                    sub_10001DB90(&v122, v117, v78);
                    if (v122)
                    {
                      v79 = &v122 + 4;
                      v80 = 2 * v122;
                      v81 = v80 | 1;
                      v82 = v118;
                      do
                      {
                        v83 = *v79++;
                        snprintf(v82, v81, "%02x", v83);
                        v81 -= 2;
                        v82 += 2;
                      }

                      while (v81 != 1);
                    }

                    else
                    {
                      v80 = 0;
                    }

                    v118[v80] = 0;
                    memset_s(&v122, 0x104uLL, 0, 0x104uLL);
                    v86 = strlen(v118);
                    if ((sub_10001F220(v112, v118, v86) & 0x80000000) == 0)
                    {
                      v87 = strlen(v113);
                      sub_10001DAC0(__sa, (v100 + 2500), v113, v87);
                      if (LODWORD(__sa[0]))
                      {
                        v88 = __sa + 4;
                        v89 = 2 * LODWORD(__sa[0]);
                        v90 = v89 | 1;
                        v91 = v118;
                        do
                        {
                          v92 = *v88++;
                          snprintf(v91, v90, "%02x", v92);
                          v90 -= 2;
                          v91 += 2;
                        }

                        while (v90 != 1);
                      }

                      else
                      {
                        v89 = 0;
                      }

                      v118[v89] = 0;
                      if ((sub_10001F220(v110, "AWS4-HMAC-SHA256 Credential=", 0x1CuLL) & 0x80000000) == 0)
                      {
                        v93 = strlen((v100 + 196));
                        if ((sub_10001F220(v110, (v100 + 196), v93) & 0x80000000) == 0 && (sub_10001F220(v110, "/", 1uLL) & 0x80000000) == 0)
                        {
                          v94 = strlen((v100 + 4));
                          if ((sub_10001F220(v110, (v100 + 4), v94) & 0x80000000) == 0 && (sub_10001F220(v110, "/", 1uLL) & 0x80000000) == 0)
                          {
                            v95 = strlen((v100 + 132));
                            if ((sub_10001F220(v110, (v100 + 132), v95) & 0x80000000) == 0 && (sub_10001F220(v110, "/s3/aws4_request,SignedHeaders=", 0x1FuLL) & 0x80000000) == 0)
                            {
                              v96 = strlen(v72);
                              if ((sub_10001F220(v110, v72, v96) & 0x80000000) == 0 && (sub_10001F220(v110, ",Signature=", 0xBuLL) & 0x80000000) == 0)
                              {
                                v97 = strlen(v118);
                                if ((sub_10001F220(v110, v118, v97) & 0x80000000) == 0)
                                {
                                  v17 = (sub_10001DDA0(v99, "Authorization: %s", v111) >> 31);
                                  goto LABEL_117;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v65 = 0;
        while (1)
        {
          v66 = v109[v65];
          v67 = strchr(v66, 58);
          if (!v67)
          {
            break;
          }

          v70 = v67;
          v71 = strlen(v66);
          if ((sub_10001F220(v116, v66, v71) & 0x80000000) != 0 || (sub_10001F220(v116, "\n", 1uLL) & 0x80000000) != 0 || v65 && (sub_10001F220(v114, ";", 1uLL) & 0x80000000) != 0 || (sub_10001F220(v114, v66, v70 - v66) & 0x80000000) != 0)
          {
            goto LABEL_116;
          }

          if (v46 + 1 == ++v65)
          {
            goto LABEL_100;
          }
        }

        sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 586, 84, 0, "Invalid header: %s", v68, v69, v66);
      }
    }

LABEL_116:
    v17 = 0xFFFFFFFFLL;
LABEL_117:
    ++v46;
    goto LABEL_118;
  }

  v46 = 0;
  while (1)
  {
    data = v45->data;
    if (strncasecmp(v45->data, "x-amz-", 6uLL))
    {
      goto LABEL_71;
    }

    v48 = strlen(data);
    if (v48 + 1 >= 0x2000000001)
    {
      break;
    }

    v49 = malloc(v48 + 1);
    if (!v49)
    {
      goto LABEL_82;
    }

    v50 = v49;
    v109[v46] = v49;
    if (v48)
    {
      v51 = 0;
      v52 = 0;
      v53 = 1;
      while (1)
      {
        v54 = v45->data[v51];
        if (v54 < 0)
        {
          if (!__maskrune(v45->data[v51], 0x4000uLL))
          {
LABEL_62:
            if (v54 == 58)
            {
              v53 = 0;
            }

            if (v53)
            {
              LOBYTE(v54) = __tolower(v54);
            }

            v50[v52++] = v54;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v54] & 0x4000) == 0)
        {
          goto LABEL_62;
        }

        if (v48 == ++v51)
        {
          goto LABEL_70;
        }
      }
    }

    v52 = 0;
LABEL_70:
    ++v46;
    v50[v52] = 0;
LABEL_71:
    v45 = v45->next;
    if (!v45)
    {
      goto LABEL_75;
    }
  }

  *__error() = 12;
LABEL_82:
  v60 = *__error();
  v63 = 544;
LABEL_83:
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", v63, 84, v60, "malloc", v61, v62, v98);
  v17 = 0xFFFFFFFFLL;
LABEL_118:
  if (v46)
  {
    v84 = v109;
    do
    {
      v85 = *v84++;
      free(v85);
      --v46;
    }

    while (v46);
  }

  free(v109);
LABEL_12:
  memset_s(__sa, 0x104uLL, 0, 0x104uLL);
  memset_s(v118, 0x80uLL, 0, 0x80uLL);
  memset_s(__str, 0x80uLL, 0, 0x80uLL);
  sub_10001F32C(v116);
  sub_10001F32C(v114);
  sub_10001F32C(v112);
  sub_10001F32C(v110);
  return v17;
}

uint64_t sub_10001F220(unint64_t *a1, void *__src, size_t __n)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 + __n + 1;
  v9 = v8 >= *a1;
  v10 = v8 - *a1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = (v10 + 255) & 0xFFFFFFFFFFFFFF00;
  v12 = v7 + v11;
  v13 = a1[2];
  if (v7 + v11 <= v7)
  {
    goto LABEL_8;
  }

  if (v12 < 0x2000000001)
  {
    v14 = realloc(a1[2], v7 + v11);
    if (!v14)
    {
      free(v13);
      goto LABEL_10;
    }

    a1[2] = v14;
    *a1 = v12;
    v13 = v14;
    v6 = a1[1];
LABEL_8:
    memcpy(&v13[v6], __src, __n);
    result = 0;
    v16 = a1[2];
    v17 = a1[1] + __n;
    a1[1] = v17;
    *(v16 + v17) = 0;
    return result;
  }

  *__error() = 12;
LABEL_10:
  a1[2] = 0;
  v18 = __error();
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3StringBufferAppend", 437, 84, *v18, "malloc", v19, v20, v21);
  *a1 = 0;
  a1[1] = 0;
  return 0xFFFFFFFFLL;
}

void sub_10001F32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    memset_s(*(a1 + 16), *a1, 0, *a1);
  }

  free(v1);
}

uint64_t sub_10001F378(void *__s, char *a2, uint64_t a3, uint64_t a4)
{
  if (__s)
  {
    memset_s(__s, 0x18uLL, 0, 0x18uLL);
  }

  *__s = a4;
  if (a2)
  {
    v8 = strlen(a2);
    v9 = v8 + 1;
    if (v8 + 1 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_10:
      __s[1] = 0;
      v13 = *__error();
      v16 = "strdup";
      v17 = 659;
      goto LABEL_15;
    }

    v10 = malloc(v8 + 1);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = v10;
    memcpy(v10, a2, v9);
    __s[1] = v11;
  }

  if (a3)
  {
    v12 = sub_10001D020(a3);
  }

  else
  {
    v12 = AAS3ContextCreate();
  }

  __s[2] = v12;
  if (v12)
  {
    return 0;
  }

  v13 = *__error();
  v16 = "malloc";
  v17 = 662;
LABEL_15:
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3StreamBaseInit", v17, 84, v13, v16, v14, v15, v19);
  sub_10001F4A8(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001F4A8(uint64_t a1)
{
  free(*(a1 + 8));
  AAS3ContextDestroy(*(a1 + 16));

  return memset_s(a1, 0x18uLL, 0, 0x18uLL);
}

AAByteStream_impl *AAS3DownloadStreamOpen(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 && *a2)
  {
    return sub_10001D798(a1, a2, a3);
  }

  else
  {
    return sub_100020F18(a1, a2, a3, a4);
  }
}

void sub_10001F87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F8A8(uint64_t a1, void *a2, void *a3, id a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [AAS3DownloadSession completeRequest:WeakRetained data:v9 response:v8 error:v7];
}

uint64_t sub_100020D84(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      a1[3] = 0;
      atomic_store([v2 bytesDownloaded], a1 + 5);
      [v2 invalidateAndCancel];
    }

    if (*a1 >> 62)
    {
      v10.tv_sec = 0;
      *&v10.tv_usec = 0;
      gettimeofday(&v10, 0);
      v3 = v10.tv_sec + v10.tv_usec * 0.000001 - *(a1 + 6);
      fwrite("AAS3DownloadStream (NSURLSession)\n", 0x22uLL, 1uLL, __stderrp);
      fprintf(__stderrp, "%12u max attempts for a request\n", *(a1 + 14));
      fprintf(__stderrp, "%12u max requests in flight\n", *(a1 + 16));
      fprintf(__stderrp, "%12.2f initial interval between retries (s)\n", *(a1 + 15));
      v4 = __stderrp;
      v5 = atomic_load(a1 + 5);
      v6 = atomic_load(a1 + 5);
      fprintf(v4, "%12llu bytes downloaded (%.2f MB)\n", v5, vcvtd_n_f64_u64(v6, 0x14uLL));
      v7 = __stderrp;
      v8 = atomic_load(a1 + 5);
      fprintf(v7, "%12.2f MB/s download speed\n", v8 / v3 * 0.000000953674316);
    }

    sub_10001F4A8(a1);
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    free(a1);
  }

  return 0;
}

AAByteStream sub_100020F18(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = AACustomByteStreamOpen();
  v9 = malloc(0x48uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x48uLL, 0, 0x48uLL), !v8))
  {
    perror("malloc");
    goto LABEL_12;
  }

  if ((sub_10001F378(v10, a1, a2, a3) & 0x80000000) != 0)
  {
    v19 = "s3StreamBaseInit";
    v20 = 697;
LABEL_11:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "s3DownloadStreamOpen_urlsession", v20, 121, 0, v19, v11, v12, v22.tv_sec);
LABEL_12:
    free(v8);
    sub_100020D84(v10);
    return 0;
  }

  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  gettimeofday(&v22, 0);
  v10[6] = v22.tv_sec + v22.tv_usec * 0.000001;
  v10[7] = 32.0;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 16;
  }

  *(v10 + 16) = v13;
  v14 = [AAS3DownloadSession alloc];
  v15 = [NSString stringWithUTF8String:a1];
  v16 = [NSURL URLWithString:v15];
  LODWORD(v17) = *(v10 + 15);
  v18 = [(AAS3DownloadSession *)v14 initWithURL:v16 streamBase:v10 maxAttempts:*(v10 + 14) pauseInterval:*(v10 + 16) maxRequestsInFlight:v17];

  if (!v18)
  {
    v19 = "creating session";
    v20 = 710;
    goto LABEL_11;
  }

  *(v10 + 3) = v18;
  *v8 = v10;
  *(v8 + 1) = sub_100020D84;
  *(v8 + 4) = sub_100021128;
  *(v8 + 2) = sub_1000211B0;
  *(v8 + 10) = sub_1000211BC;
  return v8;
}

id sub_100021128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 >> 62 == 3)
  {
    fprintf(__stderrp, "NSURLSession read to buffer nbyte=%zx offset=%llx\n", a3, a4);
  }

  v8 = a1[3];

  return [v8 readToBuffer:a2 size:a3 atOffset:a4];
}

id sub_1000211BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 >> 62 == 3)
  {
    fprintf(__stderrp, "NSURLSession read to stream nbyte=%zx offset=%llx\n", a3, a4);
  }

  v8 = a1[3];

  return [v8 readToAsyncByteStream:a2 size:a3 atOffset:a4];
}

uint64_t sub_100021244(char **a1, uint64_t a2)
{
  v4 = malloc(0x58uLL);
  v5 = v4;
  if (!v4)
  {
    v7 = *__error();
    v10 = "malloc";
    v11 = 308;
LABEL_12:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextCreate", v11, 125, v7, v10, v8, v9, v16);
    goto LABEL_13;
  }

  memset_s(v4, 0x58uLL, 0, 0x58uLL);
  *(v5 + 80) = a2;
  if (a1)
  {
    if ((sub_100023320(v5, 0, *a1, "KNOX_APPLECONNECT_ACCOUNT") & 0x80000000) != 0 || (sub_100023320(v5, 1u, a1[1], "KNOX_KEYTAB_FILE") & 0x80000000) != 0 || (sub_100023320(v5, 2u, a1[2], "KNOX_DAW_TOKEN") & 0x80000000) != 0 || (sub_100023320(v5, 3u, a1[3], "KNOX_DAW_TOKEN_FILE") & 0x80000000) != 0 || (sub_100023320(v5, 4u, a1[4], "KNOX_WESTGATE_TOKEN") & 0x80000000) != 0 || (sub_100023320(v5, 5u, a1[5], "KNOX_WESTGATE_TOKEN_FILE") & 0x80000000) != 0 || (sub_100023320(v5, 8u, a1[6], "KNOX_USER_AGENT") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    v6 = a1[7];
  }

  else
  {
    if ((sub_100023320(v5, 0, 0, "KNOX_APPLECONNECT_ACCOUNT") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((sub_100023320(v5, 1u, 0, "KNOX_KEYTAB_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((sub_100023320(v5, 2u, 0, "KNOX_DAW_TOKEN") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((sub_100023320(v5, 3u, 0, "KNOX_DAW_TOKEN_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((sub_100023320(v5, 4u, 0, "KNOX_WESTGATE_TOKEN") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((sub_100023320(v5, 5u, 0, "KNOX_WESTGATE_TOKEN_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    v13 = sub_100023320(v5, 8u, 0, "KNOX_USER_AGENT");
    v6 = 0;
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }

  if ((sub_100023320(v5, 9u, v6, "KNOX_PROXY") & 0x80000000) != 0)
  {
LABEL_13:
    sub_100022214(v5);
    return 0;
  }

  if (!*(v5 + 16))
  {
    v15 = *(v5 + 24);
    if (v15)
    {
      if ((sub_100023404(v5, 2u, v15) & 0x80000000) != 0)
      {
        v10 = "loading daw token";
        v11 = 324;
        goto LABEL_31;
      }
    }
  }

  if (!*(v5 + 32))
  {
    v14 = *(v5 + 40);
    if (v14)
    {
      if ((sub_100023404(v5, 4u, v14) & 0x80000000) != 0)
      {
        v10 = "loading westgate token";
        v11 = 327;
LABEL_31:
        v7 = 0;
        goto LABEL_12;
      }
    }
  }

  return v5;
}

uint64_t sub_10002150C(uint64_t a1, char *__s)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    goto LABEL_4;
  }

  v11 = strlen(__s);
  v12 = v11 + 200;
  if (v11 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_71:
    v60 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", 345, 125, *v60, "malloc", v61, v62, v112);
    v27 = 0;
    v37 = 0;
    v30 = 0;
LABEL_100:
    sub_100024154(v37);
    AAByteStreamClose(v30);
    free(v27);
    v24 = "getting service name and realm";
    v25 = 649;
    goto LABEL_101;
  }

  v26 = malloc(v11 + 200);
  if (!v26)
  {
    goto LABEL_71;
  }

  v27 = v26;
  v30 = AATempStreamOpen();
  if (!v30)
  {
    v83 = "AATempStreamOpen";
    v84 = 348;
LABEL_93:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", v84, 125, 0, v83, v28, v29, v112);
    v37 = 0;
    goto LABEL_100;
  }

  snprintf(v27, v12, "https://%s/westgate/appinfo", __s);
  if ((sub_100022268(a1, 1u, v27, 0, v30) & 0x80000000) != 0)
  {
    v112 = v27;
    v83 = "Knox request failed: %s";
    v84 = 351;
    goto LABEL_93;
  }

  AAByteStreamSeek(v30, 0, 0);
  v37 = sub_100024068(v30);
  if (!v37)
  {
    v94 = "AAJSONInputStreamOpen";
    v95 = 356;
    goto LABEL_99;
  }

  v38 = 0;
  v39 = 0;
  do
  {
    while (1)
    {
      v118 = 0;
      *__sa = 0u;
      v117 = 0u;
      *__s1 = 0u;
      if ((sub_1000241B0(v37, __s1, v31, v32, v33, v34, v35, v36) & 0x80000000) != 0)
      {
        v94 = "parsing JSON";
        v95 = 363;
        goto LABEL_99;
      }

      if (LODWORD(__s1[0]) < 2)
      {
        if (v38 == 1 && __s1[1] && !strcmp(__s1[1], "idms"))
        {
          v39 = 1;
        }

        ++v38;
        goto LABEL_41;
      }

      if (LODWORD(__s1[0]) == 2)
      {
        break;
      }

      if (LODWORD(__s1[0]) != 3)
      {
        goto LABEL_41;
      }

      if (!v39)
      {
        goto LABEL_41;
      }

      v40 = __s1[1];
      if (!__s1[1])
      {
        goto LABEL_41;
      }

      if (!strcmp(__s1[1], "realm"))
      {
        if ((sub_100023320(a1, 6u, __sa[0], 0) & 0x80000000) == 0)
        {
          v40 = __s1[1];
          goto LABEL_33;
        }

        v94 = "realm";
        v95 = 377;
LABEL_99:
        sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", v95, 125, 0, v94, v35, v36, v114);
        goto LABEL_100;
      }

LABEL_33:
      if (!strcmp(v40, "serviceName") && (sub_100023320(a1, 7u, __sa[0], 0) & 0x80000000) != 0)
      {
        v94 = "serviceName";
        v95 = 378;
        goto LABEL_99;
      }

LABEL_41:
      if (!v38)
      {
        goto LABEL_44;
      }
    }

    v39 = 0;
    --v38;
  }

  while (v38);
LABEL_44:
  if (!*(a1 + 48) || !*(a1 + 56))
  {
    v94 = "could not parse service name and realm";
    v95 = 389;
    goto LABEL_99;
  }

  sub_100024154(v37);
  AAByteStreamClose(v30);
  free(v27);
  __s1[0] = 0;
  __s1[1] = 0;
  __sa[0] = 0;
  v43 = *(a1 + 48);
  if (!v43 || (v44 = *(a1 + 56)) == 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", 411, 125, 0, "missing service name or realm", v41, v42, v114);
    v47 = 0;
LABEL_110:
    v49 = 0;
LABEL_115:
    free(v49);
    v96 = v47;
    goto LABEL_116;
  }

  v45 = *(a1 + 80) >> 62;
  if (v45)
  {
    fwrite("  obtaining a DAW token from the appleconnect CLI\n", 0x32uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "  - realm: %s\n", v43);
    fprintf(__stderrp, "  - service name: %s\n", v44);
  }

  v46 = malloc(0x4000uLL);
  v47 = v46;
  if (!v46)
  {
    __s1[0] = 0;
    __s1[1] = 0;
    __sa[0] = 0;
    v86 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", 420, 125, *v86, "malloc", v87, v88, v114);
    goto LABEL_110;
  }

  __s1[1] = 0x4000;
  __sa[0] = v46;
  v48 = malloc(0x4000uLL);
  v49 = v48;
  if (!v48)
  {
    v89 = *__error();
    v92 = "malloc";
    v93 = 422;
LABEL_114:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v93, 125, v89, v92, v90, v91, v114);
    goto LABEL_115;
  }

  snprintf(v48, 0x4000uLL, "/usr/local/bin/appleconnect serviceTicket --show-signIn-dialog --dawToken --realm %s --serviceName %s", v43, v44);
  if (*a1)
  {
    if (v45)
    {
      fprintf(__stderrp, "  - account: %s\n", *a1);
    }

    __strlcat_chk();
    v50 = *a1;
    __strlcat_chk();
  }

  if (*(a1 + 8))
  {
    if (v45)
    {
      fprintf(__stderrp, "  - keytab file: %s\n", *(a1 + 8));
    }

    __strlcat_chk();
    v51 = *(a1 + 8);
    __strlcat_chk();
  }

  v52 = popen(v49, "r");
  if (!v52)
  {
    v89 = *__error();
    v114 = v49;
    v92 = "%s";
    v93 = 444;
    goto LABEL_114;
  }

  v53 = v52;
  v54 = 0;
  while (1)
  {
    v55 = fread(&v54[v47], 1uLL, 0x4000 - v54, v53);
    if (v55)
    {
      v58 = &v54[v55];
      if (__CFADD__(v54, v55) || v58 > 0x4000)
      {
        v97 = "invalid read";
        v98 = 454;
        v99 = 0;
        goto LABEL_136;
      }

      goto LABEL_69;
    }

    if (feof(v53))
    {
      break;
    }

    if (ferror(v53))
    {
      v99 = *__error();
      v97 = "fread";
      v98 = 452;
LABEL_136:
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v98, 125, v99, v97, v56, v57, v112);
      __s1[0] = v54;
      goto LABEL_155;
    }

    v58 = v54;
LABEL_69:
    v54 = v58;
    if (v58 == 0x4000)
    {
      __s1[0] = 0x4000;
      v59 = 447;
      goto LABEL_154;
    }
  }

  __s1[0] = v54;
  if (v54)
  {
    do
    {
      v100 = v54[(v47 - 1)];
      if (v100 < 0)
      {
        v101 = __maskrune(v54[(v47 - 1)], 0x4000uLL);
      }

      else
      {
        v101 = _DefaultRuneLocale.__runetype[v100] & 0x4000;
      }

      if (!v101)
      {
        break;
      }

      --v54;
    }

    while (v54);
    __s1[0] = v54;
  }

  v102 = (v54 + 1);
  if (((v54 == -1) << 63) >> 63 != (v54 == -1) || (v102 & 0x8000000000000000) != 0)
  {
    goto LABEL_153;
  }

  if (v102 > 0x4000)
  {
    for (i = 0x4000; i < v102; i += v104)
    {
      v104 = i >> 1;
      if ((i & (i >> 1)) != 0)
      {
        v104 = i & (i >> 1);
      }
    }

    if (i >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_152;
    }

    v106 = realloc(v47, i);
    if (v106)
    {
      v105 = v106;
      __s1[1] = i;
      __sa[0] = v106;
      v47 = v106;
      goto LABEL_140;
    }

    free(v47);
LABEL_152:
    v47 = 0;
    __s1[0] = 0;
    __s1[1] = 0;
    __sa[0] = 0;
LABEL_153:
    v59 = 459;
LABEL_154:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v59, 125, 0, "token is too long", v56, v57, v112);
LABEL_155:
    v105 = v47;
LABEL_156:
    pclose(v53);
    free(v49);
    v96 = v105;
LABEL_116:
    free(v96);
    memset_s(__s1, 0x18uLL, 0, 0x18uLL);
    v24 = "getting DAW token";
    v25 = 650;
LABEL_101:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextResolveWestgateToken", v25, 125, 0, v24, v22, v23, v113);
    return 0xFFFFFFFFLL;
  }

  v105 = __sa[0];
LABEL_140:
  __s1[0] = v54 + 1;
  v54[v47] = 0;
  if ((v54 + 1) < 6 || (*v105 == 1415004484 ? (v107 = *(v105 + 2) == 20043) : (v107 = 0), !v107))
  {
    v108 = "invalid token format";
    v109 = 460;
LABEL_146:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v109, 125, 0, v108, v56, v57, v112);
    goto LABEL_156;
  }

  if ((sub_100023320(a1, 2u, v105, 0) & 0x80000000) != 0)
  {
    v108 = "daw token";
    v109 = 463;
    goto LABEL_146;
  }

  pclose(v53);
  free(v49);
  free(v105);
  memset_s(__s1, 0x18uLL, 0, 0x18uLL);
  if (*(a1 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 486, 125, 0, "missing host or DAW token", v110, v111, v112);
    v20 = 0;
    v8 = 0;
LABEL_17:
    v21 = 0;
    v17 = 0;
LABEL_18:
    sub_100024154(v20);
    AAByteStreamClose(v8);
    free(v17);
    free(v21);
    v24 = "getting Westgate token";
    v25 = 655;
    goto LABEL_101;
  }

LABEL_4:
  if (*(a1 + 80) >> 62)
  {
    fwrite("  requesting Westgate token from the Knox server\n", 0x31uLL, 1uLL, __stderrp);
  }

  v8 = AATempStreamOpen();
  if (!v8)
  {
    v13 = "AATempStreamOpen";
    v14 = 491;
    v15 = 0;
LABEL_16:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", v14, 125, v15, v13, v6, v7, v112);
    v20 = 0;
    goto LABEL_17;
  }

  v9 = strlen(__s);
  v10 = v9 + 200;
  if (v9 + 200 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_15;
  }

  v16 = malloc(v9 + 200);
  if (!v16)
  {
LABEL_15:
    v15 = *__error();
    v13 = "malloc";
    v14 = 495;
    goto LABEL_16;
  }

  v17 = v16;
  v18 = strlen(v5);
  v19 = v18 + 200;
  if (v18 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_90:
    v80 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 498, 125, *v80, "malloc", v81, v82, v112);
    v20 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v63 = malloc(v18 + 200);
  if (!v63)
  {
    goto LABEL_90;
  }

  v21 = v63;
  snprintf(v63, v19, "Authorization: Bearer %s", v5);
  v119[0] = v21;
  v119[1] = 0;
  snprintf(v17, v10, "https://%s/westgate/token", __s);
  if ((sub_100022268(a1, 2u, v17, v119, v8) & 0x80000000) != 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 505, 125, 0, "Knox request failed: %s", v64, v65, v17);
    v20 = 0;
    goto LABEL_18;
  }

  AAByteStreamSeek(v8, 0, 0);
  v66 = sub_100024068(v8);
  v20 = v66;
  if (!v66)
  {
    v78 = "AAJSONInputStreamOpen";
    v79 = 510;
    goto LABEL_105;
  }

  v118 = 0;
  *__sa = 0u;
  v117 = 0u;
  *__s1 = 0u;
  if ((sub_1000241B0(v66, __s1, v67, v68, v69, v70, v71, v72) & 0x80000000) != 0)
  {
LABEL_89:
    v78 = "parsing JSON";
    v79 = 516;
LABEL_105:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", v79, 125, 0, v78, v71, v72, v113);
    goto LABEL_18;
  }

  v77 = 0;
  while (1)
  {
    if (LODWORD(__s1[0]) < 2)
    {
      ++v77;
      goto LABEL_87;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      break;
    }

    if (LODWORD(__s1[0]) != 3 || v77 != 1 || !__s1[1])
    {
      goto LABEL_87;
    }

    if (!strcasecmp(__s1[1], "password") && (sub_100023320(a1, 4u, __sa[0], 0) & 0x80000000) != 0)
    {
      v78 = "password";
      v79 = 529;
      goto LABEL_105;
    }

    v77 = 1;
LABEL_88:
    v118 = 0;
    *__sa = 0u;
    v117 = 0u;
    *__s1 = 0u;
    if ((sub_1000241B0(v20, __s1, v73, v74, v75, v76, v71, v72) & 0x80000000) != 0)
    {
      goto LABEL_89;
    }
  }

  --v77;
LABEL_87:
  if (v77)
  {
    goto LABEL_88;
  }

  v85 = *(a1 + 32);
  if (!v85 || strncmp(v85, "WGTKN", 5uLL))
  {
    v78 = "invalid/missing token";
    v79 = 537;
    goto LABEL_105;
  }

  sub_100024154(v20);
  AAByteStreamClose(v8);
  free(v17);
  free(v21);
  if (!*(a1 + 32))
  {
    v24 = "invalid Westgate token";
    v25 = 658;
    goto LABEL_101;
  }

  return 0;
}

void sub_100022214(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 80; i += 8)
    {
      free(*&a1[i]);
    }

    free(a1);
  }
}

uint64_t sub_100022268(uint64_t a1, unsigned int a2, char *a3, const char **a4, uint64_t a5)
{
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0uLL;
  v75 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v10 = AAS3ContextCreate();
  v77 = v10;
  if (!v10)
  {
    v56 = "AAS3ContextCreate";
    v57 = 189;
LABEL_40:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v57, 125, 0, v56, v11, v12, v67);
    v22 = 0;
LABEL_41:
    v29 = 0;
    v28 = 0;
LABEL_42:
    v58 = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v13 = v10;
  v14 = malloc(0x18uLL);
  v15 = v14;
  if (!v14)
  {
    v22 = calloc(1uLL, 0x68uLL);
    goto LABEL_39;
  }

  memset_s(v14, 0x18uLL, 0, 0x18uLL);
  v16 = calloc(1uLL, 0x68uLL);
  v22 = v16;
  if (!v16)
  {
LABEL_39:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamOpen", 165, 125, 0, "malloc", v20, v21, v67);
    free(v15);
    free(v22);
    v56 = "open page stream";
    v57 = 192;
    goto LABEL_40;
  }

  *v15 = a5;
  *v16 = v15;
  v16[1] = sub_100023624;
  v16[3] = sub_1000236C0;
  if ((AAS3ContextSetFieldString(v13, 5, *(a1 + 64), v17, v18, v19, v20, v21) & 0x80000000) != 0)
  {
    v60 = 194;
LABEL_46:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v60, 125, 0, "setup context", v26, v27, v67);
    goto LABEL_41;
  }

  if ((AAS3ContextSetFieldString(v13, 0, *(a1 + 72), v23, v24, v25, v26, v27) & 0x80000000) != 0)
  {
    v60 = 195;
    goto LABEL_46;
  }

  v28 = malloc(0x800uLL);
  if (!v28)
  {
    v61 = *__error();
    v62 = 200;
LABEL_52:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v62, 125, v61, "malloc", v54, v55, v67);
    v29 = 0;
    goto LABEL_42;
  }

  v29 = 0;
  v30 = "link:";
  v69 = a3;
  v70 = a4;
  while (2)
  {
    memset_s(v28, 0x800uLL, 0, 0x800uLL);
    v74 = 0uLL;
    v75 = v22;
    v71 = v28;
    v72 = 2047;
    v33 = a3;
    v73 = 0;
    if (v29)
    {
      if (v22[1] == sub_100023624)
      {
        v34 = *v22;
        if (*(*v22 + 2) < 1 || !*(v34 + 4))
        {
          goto LABEL_15;
        }

        if (!*(v34 + 5) || AAByteStreamWrite(*v34, ",", 1uLL) == 1)
        {
          *(v34 + 12) = 1;
LABEL_15:
          *(v34 + 5) = 0;
          v33 = v29;
          goto LABEL_16;
        }

        v63 = "writing ','";
        v64 = 146;
      }

      else
      {
        v63 = "invalid stream";
        v64 = 132;
      }

      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamEndPage", v64, 125, 0, v63, v31, v32, v67);
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 209, 125, 0, "page stream next page", v65, v66, v68);
      goto LABEL_42;
    }

LABEL_16:
    if ((sub_10001E030(a2, v33, v76, 0, &v74, &v71, a4) & 0x80000000) != 0)
    {
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 212, 125, 0, "request: %s", v35, v36, v33);
      goto LABEL_42;
    }

    free(v29);
    v37 = strlen(v28);
    if (v37)
    {
      v38 = v37;
      v29 = 0;
      v39 = 0;
      do
      {
        if (v38 <= v39 + 1)
        {
          v40 = v39 + 1;
        }

        else
        {
          v40 = v38;
        }

        v41 = v39;
        while (v28[v41] != 10)
        {
          if (v40 == ++v41)
          {
            v41 = v40;
            break;
          }
        }

        v28[v41] = 0;
        if (v41 - v39 >= 5)
        {
          v42 = &v28[v39];
          if (!strncmp(&v28[v39], v30, 5uLL))
          {
            v43 = v30;
            v44 = strchr(v42, 60);
            v45 = strrchr(v42, 62);
            if (!v44 || (v48 = v45, v45 <= v44))
            {
              sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 231, 125, 0, "invalid link header (1): %s", v46, v47, v42);
              goto LABEL_42;
            }

            if (!strstr(v45, "rel=next"))
            {
              sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 233, 125, 0, "invalid link header (2): %s", v49, v50, v42);
              goto LABEL_42;
            }

            *v48 = 0;
            v51 = strlen(v44 + 1);
            v52 = v51 + 1;
            if (v51 + 1 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_51:
              v62 = 236;
              v61 = 0;
              goto LABEL_52;
            }

            v53 = malloc(v51 + 1);
            if (!v53)
            {
              goto LABEL_51;
            }

            v29 = v53;
            memcpy(v53, v44 + 1, v52);
            v30 = v43;
          }
        }

        v39 = v41 + 1;
      }

      while (v41 + 1 < v38);
      a3 = v69;
      a4 = v70;
      if (v29)
      {
        continue;
      }
    }

    else
    {
      v29 = 0;
    }

    break;
  }

  v58 = 0;
LABEL_43:
  free(v29);
  free(v28);
  AAByteStreamClose(v22);
  AAS3ContextDestroy(v77);
  return v58;
}

uint64_t sub_1000227C4(uint64_t a1, const char *a2, const char *a3, const char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  *a5 = 0;
  *a6 = 0;
  if (!v8)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 568, 125, 0, "missing Westgate token", a7, a8, v64);
    v21 = 0;
    v18 = 0;
LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  if (v9 >> 62)
  {
    fwrite("  requesting decryption components from the Knox server\n", 0x38uLL, 1uLL, __stderrp);
  }

  v18 = AATempStreamOpen();
  if (!v18)
  {
    v22 = "AATempStreamOpen";
    v23 = 573;
    v24 = 0;
LABEL_13:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", v23, 125, v24, v22, v16, v17, v64);
    v21 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v19 = strlen(a2);
  v20 = v19 + 200;
  if (v19 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_12:
    v24 = *__error();
    v22 = "malloc";
    v23 = 577;
    goto LABEL_13;
  }

  __str = malloc(v19 + 200);
  if (!__str)
  {
    goto LABEL_12;
  }

  v25 = strlen(v8);
  v26 = v25 + 200;
  if (v25 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_54:
    v59 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 580, 125, *v59, "malloc", v60, v61, v64);
    v21 = 0;
    v8 = 0;
    v28 = 0xFFFFFFFFLL;
    v27 = __str;
    goto LABEL_16;
  }

  v30 = malloc(v25 + 200);
  if (!v30)
  {
    goto LABEL_54;
  }

  v65 = v8;
  v8 = v30;
  snprintf(v30, v26, "Authorization: Bearer %s", v65);
  v76[0] = v8;
  v76[1] = 0;
  v67 = a4;
  v27 = __str;
  snprintf(__str, v20, "https://%s/spaces/%s/files/%s/decryption-components", a2, a3, v67);
  if ((sub_100022268(a1, 2u, __str, v76, v18) & 0x80000000) != 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 587, 125, 0, "Knox request failed: %s", v31, v32, __str);
    v21 = 0;
    goto LABEL_15;
  }

  AAByteStreamSeek(v18, 0, 0);
  v33 = sub_100024068(v18);
  v21 = v33;
  if (!v33)
  {
    v62 = "AAJSONInputStreamOpen";
    v63 = 592;
    goto LABEL_62;
  }

  v75 = 0;
  *__s = 0u;
  v74 = 0u;
  *__s1 = 0u;
  if ((sub_1000241B0(v33, __s1, v34, v35, v36, v37, v38, v39) & 0x80000000) != 0)
  {
LABEL_56:
    v62 = "parsing JSON";
    v63 = 600;
    goto LABEL_62;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v70 = v8;
  while (LODWORD(__s1[0]) >= 2)
  {
    if (LODWORD(__s1[0]) == 2)
    {
      v45 = 0;
      v44 = 0;
      --v46;
      goto LABEL_47;
    }

    if (LODWORD(__s1[0]) != 3)
    {
      goto LABEL_47;
    }

    v47 = __s1[1];
    if (v45 && v46 == 2 && __s1[1] && !strcmp(__s1[1], "key"))
    {
      v68 = v44;
      v48 = __s[0];
      if (!__s[0])
      {
        goto LABEL_64;
      }

      v49 = strlen(__s[0]);
      v50 = v49 + 1;
      if (v49 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_64:
        *a6 = 0;
        sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 618, 125, 0, "key", v38, v39, v66);
        v8 = v70;
        v27 = __str;
        goto LABEL_15;
      }

      v51 = malloc(v49 + 1);
      if (!v51)
      {
        goto LABEL_64;
      }

      v52 = v51;
      memcpy(v51, v48, v50);
      *a6 = v52;
      v27 = __str;
      v44 = v68;
    }

    if (!v44 || v46 != 2 || !v47)
    {
      v8 = v70;
      goto LABEL_47;
    }

    if (!strcmp(v47, "uri"))
    {
      v69 = v44;
      v54 = __s[0];
      v8 = v70;
      if (!__s[0])
      {
        goto LABEL_66;
      }

      v55 = strlen(__s[0]);
      v56 = v55 + 1;
      if (v55 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_66:
        *a5 = 0;
        sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 623, 125, 0, "uri", v38, v39, v66);
        v27 = __str;
        goto LABEL_15;
      }

      v57 = malloc(v55 + 1);
      if (!v57)
      {
        goto LABEL_66;
      }

      v58 = v57;
      memcpy(v57, v54, v56);
      *a5 = v58;
      v46 = 2;
      v27 = __str;
      v44 = v69;
    }

    else
    {
      v46 = 2;
      v8 = v70;
    }

LABEL_48:
    v75 = 0;
    *__s = 0u;
    v74 = 0u;
    *__s1 = 0u;
    if ((sub_1000241B0(v21, __s1, v40, v41, v42, v43, v38, v39) & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  if (v46 == 1)
  {
    v53 = __s1[1];
    if (__s1[1])
    {
      if (!strcmp(__s1[1], "encryption"))
      {
        v45 = 1;
      }

      if (!strcmp(v53, "location"))
      {
        v44 = 1;
      }
    }
  }

  ++v46;
LABEL_47:
  if (v46)
  {
    goto LABEL_48;
  }

  if (*a5 && *a6)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v62 = "invalid/missing decryption components";
  v63 = 631;
LABEL_62:
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", v63, 125, 0, v62, v38, v39, v66);
LABEL_15:
  v28 = 0xFFFFFFFFLL;
LABEL_16:
  sub_100024154(v21);
  AAByteStreamClose(v18);
  free(v27);
  free(v8);
  return v28;
}

uint64_t AAS3KnoxResolveURL(uint64_t a1, char **a2, void *a3, size_t a4, _BYTE *a5, size_t *a6, unint64_t a7)
{
  __s = 0;
  if (strncmp(a1, "knox://", 7uLL))
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 854, 125, 0, "invalid Knox scheme: %s", v14, v15, a1);
LABEL_11:
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  v16 = a1 + 7;
  v17 = strchr((a1 + 7), 47);
  v20 = v17;
  if (!v17)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 859, 125, 0, "invalid Knox host: %s", v18, v19, a1);
    v23 = 0;
    v24 = 0;
LABEL_12:
    v32 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v21 = &v17[-v16];
  v22 = &v17[-v16 + 1];
  if (v22 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_10:
    v29 = *__error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 863, 125, v29, "malloc", v30, v31, v72);
    goto LABEL_11;
  }

  v73 = a6;
  v25 = malloc(v22);
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = v25;
  memcpy(v25, (a1 + 7), &v20[-v16]);
  v21[v26] = 0;
  if (strncmp(v20 + 1, "download/", 9uLL))
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 869, 125, 0, "invalid Knox action: %s", v27, v28, a1);
LABEL_36:
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_37;
  }

  v35 = v20 + 10;
  v36 = strchr(v20 + 10, 47);
  v20 = v36;
  if (!v36)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 874, 125, 0, "invalid Knox space: %s", v37, v38, a1);
    v23 = 0;
    v24 = 0;
LABEL_37:
    v32 = 0;
    goto LABEL_13;
  }

  v39 = v36 - v35;
  v40 = v36 - v35 + 1;
  if (v40 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_35:
    v49 = *__error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 878, 125, v49, "malloc", v50, v51, v72);
    goto LABEL_36;
  }

  v41 = malloc(v40);
  if (!v41)
  {
    goto LABEL_35;
  }

  v32 = v41;
  memcpy(v41, v35, v20 - v35);
  v42 = 0;
  v32[v39] = 0;
  v43 = v20 + 1;
  v44 = v20 + 1;
  do
  {
    v45 = v42;
    v46 = v43[v42];
    if (!v43[v42])
    {
      break;
    }

    if (v46 < 0)
    {
      v47 = __maskrune(v43[v42], 0x4000uLL);
      v43 = v44;
    }

    else
    {
      v47 = _DefaultRuneLocale.__runetype[v46] & 0x4000;
    }

    if ((v46 - 127) < 0xA1u)
    {
      break;
    }

    if (v46 == 47 || (v46 - 37) < 2u)
    {
      break;
    }

    if (v46 == 35)
    {
      break;
    }

    v42 = v45 + 1;
  }

  while (!v47);
  if (v45 + 1 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_48:
    v67 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 895, 125, *v67, "malloc", v68, v69, v72);
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v52 = malloc(v45 + 1);
  if (!v52)
  {
    goto LABEL_48;
  }

  v20 = v52;
  memcpy(v52, v44, v45);
  v20[v45] = 0;
  if (a7 >> 62)
  {
    fwrite("Knox resolve URL\n", 0x11uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "  host: %s\n", v26);
    fprintf(__stderrp, "  space: %s\n", v32);
    fprintf(__stderrp, "  file digest: %s\n", v20);
  }

  v53 = sub_100021244(a2, a7);
  v24 = v53;
  if (!v53)
  {
    v70 = "contextInit failed";
    v71 = 909;
LABEL_51:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", v71, 125, 0, v70, v54, v55, v72);
    v23 = 0;
    goto LABEL_13;
  }

  if ((sub_10002150C(v53, v26) & 0x80000000) != 0)
  {
    v70 = "getting Westgate token";
    v71 = 912;
    goto LABEL_51;
  }

  if ((sub_1000227C4(v24, v26, v32, v20, a3, &__s, v54, v55) & 0x80000000) != 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 915, 125, 0, "getting decryption credentials", v56, v57, v72);
    v33 = 0xFFFFFFFFLL;
    v23 = __s;
    goto LABEL_14;
  }

  v23 = __s;
  v58 = strlen(__s);
  if (!v58 || (v58 & 1) != 0)
  {
    v72 = v58;
    v65 = "invalid key length: %zu";
    v66 = 919;
  }

  else
  {
    v64 = v58 >> 1;
    if (v58 >> 1 <= a4)
    {
      if ((sub_100023DF8(v58 >> 1, a5, __s, v59, v60, v61, v62, v63) & 0x80000000) == 0)
      {
        v33 = 0;
        *v73 = v64;
        goto LABEL_14;
      }

      v65 = "invalid hex key";
      v66 = 922;
    }

    else
    {
      v65 = "key_capacity is too low";
      v66 = 921;
    }
  }

  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", v66, 125, 0, v65, v62, v63, v72);
LABEL_13:
  v33 = 0xFFFFFFFFLL;
LABEL_14:
  free(v26);
  free(v32);
  free(v20);
  free(v23);
  sub_100022214(v24);
  return v33;
}

uint64_t sub_100023320(uint64_t a1, unsigned int a2, char *__s, char *a4)
{
  v4 = __s;
  if (!__s)
  {
    if (a4)
    {
      v4 = getenv(a4);
    }
  }

  if (!v4)
  {
    result = 0;
    *(a1 + 8 * a2) = 0;
    return result;
  }

  v7 = strlen(v4);
  v8 = v7 + 1;
  if (v7 + 1 < 0x2000000001)
  {
    v10 = malloc(v7 + 1);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, v4, v8);
      result = 0;
      *(a1 + 8 * a2) = v11;
      return result;
    }
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 8 * a2) = 0;
  v12 = __error();
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextSetString", 259, 125, *v12, "malloc", v13, v14, v15);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100023404(uint64_t a1, unsigned int a2, char *a3)
{
  memset(&v30, 0, sizeof(v30));
  v6 = open(a3, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (fstat(v6, &v30) < 0 || ((st_size = v30.st_size, (v30.st_mode & 0xF000) == 0x8000) ? (v11 = v30.st_size == 0) : (v11 = 1), v11))
    {
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 274, 125, 0, "invalid file: %s", v8, v9, a3);
    }

    else
    {
      if ((v30.st_size + 1) < 0x2000000001)
      {
        v16 = malloc(v30.st_size + 1);
        if (v16)
        {
          v17 = v16;
          v18 = read(v7, v16, st_size);
          if (v18 < 0)
          {
            v26 = *__error();
            v27 = 280;
            v28 = a3;
          }

          else
          {
            if (v18 == st_size)
            {
              do
              {
                v21 = v17[st_size - 1];
                if (v21 < 0)
                {
                  if (!__maskrune(v21, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v21] & 0x4000) == 0)
                {
                  break;
                }

                --st_size;
              }

              while (st_size);
              v15 = 0;
              v17[st_size] = 0;
              *(a1 + 8 * a2) = v17;
              goto LABEL_24;
            }

            v28 = "truncated read";
            v27 = 281;
            v26 = 0;
          }

          sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", v27, 125, v26, v28, v19, v20, v29);
LABEL_23:
          free(v17);
          v15 = 0xFFFFFFFFLL;
LABEL_24:
          close(v7);
          return v15;
        }
      }

      else
      {
        *__error() = 12;
      }

      v22 = *__error();
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 277, 125, v22, "malloc", v23, v24, v29);
    }

    v17 = 0;
    goto LABEL_23;
  }

  v12 = __error();
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 273, 125, *v12, a3, v13, v14, v29);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100023624(int *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2] >= 1 && a1[4] && AAByteStreamWrite(*a1, "]\n", 2uLL) != 2)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamClose", 67, 125, 0, "writing final ']'", v2, v3, v6);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  free(a1);
  return v4;
}

uint64_t sub_1000236C0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = *(a1 + 8);
  if (v11)
  {
    if (v11 < 1)
    {
      v12 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    if (!a3 || *a2 != 91)
    {
      v12 = 0;
      *(a1 + 8) = -1;
      goto LABEL_28;
    }

    *(a1 + 8) = 1;
  }

  v12 = 0;
  if (a3 && *(a1 + 12))
  {
    if (*a2 != 91)
    {
      v14 = "expected '['";
      v15 = 93;
LABEL_41:
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamWrite", v15, 125, 0, v14, a7, a8, v22);
      return -1;
    }

    *(a1 + 12) = 0;
    v9 = a2 + 1;
    v8 = a3 - 1;
    v12 = 1;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    v13 = 0;
    goto LABEL_18;
  }

  if (AAByteStreamWrite(*a1, "]", 1uLL) != 1)
  {
    v14 = "writing ']'";
    v15 = 105;
    goto LABEL_41;
  }

  *(a1 + 16) = 0;
  v13 = 1;
LABEL_18:
  v16 = v12 + 1;
  v17 = v8 - 1;
  while (1)
  {
    v18 = v9[v17];
    if (v18 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v18] & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    ++v16;
    if (--v17 == -1)
    {
      goto LABEL_27;
    }
  }

  if (__maskrune(v18, 0x4000uLL))
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v9[v17] == 93)
  {
    *(a1 + 16) = 1;
    v12 = v16;
    v8 = v17;
  }

LABEL_27:
  if (v8)
  {
LABEL_28:
    *(a1 + 20) = 1;
    v19 = *a1;
    if (*(v19 + 3))
    {
      if (v8)
      {
        v13 = 0;
        while (1)
        {
          v20 = (*(v19 + 3))(*v19, v9, v8);
          if (v20 < 1)
          {
            break;
          }

          v9 += v20;
          v13 += v20;
          v8 -= v20;
          if (!v8)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        v13 = v20;
        if (v20 < 0)
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

LABEL_35:
      v13 = 0;
      goto LABEL_39;
    }

    v13 = -1;
LABEL_37:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamWrite", 124, 125, 0, "write", a7, a8, v22);
  }

  else
  {
LABEL_39:
    v13 += v12;
  }

  return v13;
}

size_t sub_1000238F8(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100023B18(__str, v15 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v15 | 0x80000000), __str);
}

uint64_t sub_100023A04(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v16 = v12;
    v17 = 2082;
    v18 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v12, __s);
}

void sub_100023B18(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

size_t sub_100023BA4(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      v3 = sub_100023D28();
      result = pthread_getspecific(v3);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *sub_100023C48(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_100023D28();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_100023C90(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_100023D28();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  sub_100023C48(a1);

  return sub_100023BA4(a2);
}

uint64_t sub_100023D28()
{
  if (pthread_once(&stru_1002349C8, sub_100023D90))
  {
    v0 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return qword_100235350;
}

uint64_t sub_100023D90()
{
  result = pthread_key_create(&qword_100235350, 0);
  if (result)
  {
    v1 = *__error();

    return sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

uint64_t sub_100023DF8(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (2 * a1);
  if (!v8)
  {
LABEL_15:
    v11 = 0;
    return (v11 << 31 >> 31);
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = *(a3 + v10);
    if (!*(a3 + v10))
    {
      v14 = "truncated hex string";
      v15 = 13;
      goto LABEL_17;
    }

    v13 = 16 * v9;
    if ((v12 - 48) <= 9)
    {
      v9 = v12 + v13 - 48;
      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if ((v12 - 97) > 5)
    {
      break;
    }

    v9 = v13 + v12 - 87;
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_10:
    v11 = ++v10 < v8;
    if (v8 == v10)
    {
      goto LABEL_15;
    }
  }

  if ((v12 - 65) <= 5)
  {
    v9 = v13 + v12 - 55;
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a2++ = v9;
    v9 = 0;
    goto LABEL_10;
  }

  v14 = "invalid hex string";
  v15 = 18;
LABEL_17:
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASerialization.c", "aaParseHexString", v15, 106, 0, v14, a7, a8, v17);
  return (v11 << 31 >> 31);
}

uint64_t sub_100023EF8(uint64_t a1, char a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (a1 + 72);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 72) = v8;
    v7 = reallocf(*(a1 + 88), v8);
    *(a1 + 88) = v7;
    if (!v7)
    {
      v11 = __error();
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushLabel", 358, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 80);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v9 = 0;
  *(a1 + 80) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

uint64_t sub_100023FB0(uint64_t a1, char a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = (a1 + 96);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 96) = v8;
    v7 = reallocf(*(a1 + 112), v8);
    *(a1 + 112) = v7;
    if (!v7)
    {
      v11 = __error();
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushValue", 372, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 104);
  }

  else
  {
    v7 = *(a1 + 112);
  }

  v9 = 0;
  *(a1 + 104) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

void *sub_100024068(uint64_t a1)
{
  v2 = malloc(0x78uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x78uLL, 0, 0x78uLL);
    v3[1] = a1;
    v3[5] = 0x10000;
    v4 = malloc(0x10000uLL);
    v3[8] = v4;
    if (v4)
    {
      *(v3 + 20) = 32;
      v3[4] = calloc(0x20uLL, 4uLL);
    }

    else
    {
      v8 = __error();
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 387, 109, *v8, "malloc", v9, v10, v12);
      sub_100024154(v3);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 382, 109, *v5, "malloc", v6, v7, v12);
  }

  return v3;
}

void sub_100024154(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[11]);
    free(a1[14]);
    free(a1[8]);

    free(a1);
  }
}

uint64_t sub_1000241B0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  if (v10 == 9 || v10 == -1)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 418, 109, 0, "unexpected read call", a7, a8, v43);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v14 = *(a1 + 56);
            v15 = *(a1 + 64);
            if (v14 >= *(a1 + 48))
            {
              v16 = AAByteStreamRead(*(a1 + 8), v15, *(a1 + 40));
              if (v16 < 0)
              {
                sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 430, 109, 0, "read error: %zd", a7, a8, v16);
                goto LABEL_113;
              }

              if (!v16)
              {
                v28 = "EOF reached";
                v29 = 431;
                goto LABEL_112;
              }

              v14 = 0;
              *(a1 + 48) = v16;
              v15 = *(a1 + 64);
            }

            *(a1 + 56) = v14 + 1;
            v17 = v15[v14];
            v18 = v15[v14];
            v19 = *(a1 + 16);
            if (v19 > 3)
            {
              break;
            }

            if (v19 > 1)
            {
              if (v19 == 2)
              {
                if (((v18 - 98) >> 1) | ((v18 - 98) << 7)) < 0xAu && ((0x341u >> (((v18 - 98) >> 1) | ((v18 - 98) << 7))))
                {
                  v21 = asc_1001BB818[(((v18 - 98) >> 1) | ((v18 - 98) << 7))];
                }

                else if (v17 == 102)
                {
                  v21 = 12;
                }

                else
                {
                  v21 = v15[v14];
                }

                if ((sub_100023FB0(a1, v21) & 0x80000000) != 0)
                {
                  v28 = "jsonPushValue";
                  v29 = 512;
                  goto LABEL_112;
                }

LABEL_55:
                v20 = 1;
                goto LABEL_78;
              }

              if ((v17 - 48) > 9)
              {
                *(a1 + 16) = 5;
                *(a1 + 56) = v14;
                if ((sub_100023FB0(a1, 0) & 0x80000000) != 0)
                {
                  v28 = "jsonPushValue";
                  v29 = 539;
                  goto LABEL_112;
                }

                v25 = 4;
                goto LABEL_130;
              }

              if ((sub_100023FB0(a1, v17) & 0x80000000) != 0)
              {
                v28 = "jsonPushValue";
                v29 = 533;
                goto LABEL_112;
              }
            }

            else if (v19)
            {
              if (v19 != 1)
              {
                goto LABEL_111;
              }

              if (v17 == 92)
              {
                v20 = 2;
                goto LABEL_78;
              }

              if (v17 == 34)
              {
                *(a1 + 16) = 5;
                if ((sub_100023FB0(a1, 0) & 0x80000000) == 0)
                {
                  v25 = 3;
                  goto LABEL_130;
                }

                v28 = "jsonPushValue";
                v29 = 499;
LABEL_112:
                sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", v29, 109, 0, v28, a7, a8, v43);
LABEL_113:
                result = 0xFFFFFFFFLL;
                *(a1 + 16) = -1;
                return result;
              }

              if ((sub_100023FB0(a1, v17) & 0x80000000) != 0)
              {
                v28 = "jsonPushValue";
                v29 = 503;
                goto LABEL_112;
              }
            }

            else
            {
              *(a1 + 104) = 0;
              if (v17 < 0)
              {
                if (!__maskrune(v17, 0x4000uLL))
                {
                  goto LABEL_63;
                }
              }

              else if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
              {
LABEL_63:
                if (v17 == 34)
                {
                  goto LABEL_55;
                }

                if (v17 == 43 || v17 == 45 || (v17 - 48) <= 9)
                {
                  if ((sub_100023FB0(a1, v17) & 0x80000000) != 0)
                  {
                    v28 = "jsonPushValue";
                    v29 = 451;
                    goto LABEL_112;
                  }

                  v20 = 3;
                }

                else
                {
                  if (v17 == 123)
                  {
                    v30 = *(a1 + 24);
                    if (v30 != *(a1 + 20))
                    {
                      v25 = 0;
                      v41 = *(a1 + 32);
                      *(a1 + 24) = v30 + 1;
                      *(v41 + 4 * v30) = 0;
                      v34 = 6;
                      goto LABEL_129;
                    }

                    v28 = "max level reached";
                    v29 = 465;
                    goto LABEL_112;
                  }

                  if (v17 == 91)
                  {
                    v31 = *(a1 + 24);
                    if (v31 != *(a1 + 20))
                    {
                      v34 = 0;
                      v42 = *(a1 + 32);
                      *(a1 + 24) = v31 + 1;
                      v25 = 1;
                      *(v42 + 4 * v31) = 1;
                      goto LABEL_129;
                    }

                    v28 = "max level reached";
                    v29 = 457;
                    goto LABEL_112;
                  }

                  if ((v17 - 97) > 0x19)
                  {
                    v23 = *(a1 + 24) - 1;
                    v32 = v17 != 93;
                    if (*(*(a1 + 32) + 4 * v23))
                    {
                      v33 = 0;
                    }

                    else
                    {
                      v32 = 1;
                      v33 = v17 == 125;
                    }

                    if (!v32 || v33)
                    {
                      goto LABEL_125;
                    }

LABEL_111:
                    v43 = v18;
                    v44 = *(a1 + 64) + *(a1 + 56) - 1;
                    v28 = "invalid char %c %s";
                    v29 = 610;
                    goto LABEL_112;
                  }

                  if ((sub_100023FB0(a1, v17) & 0x80000000) != 0)
                  {
                    v28 = "jsonPushValue";
                    v29 = 473;
                    goto LABEL_112;
                  }

                  v20 = 4;
                }

LABEL_78:
                *(a1 + 16) = v20;
              }
            }
          }

          if (v19 <= 5)
          {
            break;
          }

          switch(v19)
          {
            case 6:
              *(a1 + 80) = 0;
              if (v17 < 0)
              {
                if (!__maskrune(v17, 0x4000uLL))
                {
LABEL_70:
                  if (v17 != 34)
                  {
                    if (v17 != 125)
                    {
                      goto LABEL_111;
                    }

                    v27 = *(a1 + 24);
                    if (v27)
                    {
                      v23 = v27 - 1;
                      v24 = *(*(a1 + 32) + 4 * v23);
                      goto LABEL_100;
                    }

                    goto LABEL_101;
                  }

                  v20 = 7;
                  goto LABEL_78;
                }
              }

              else if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
              {
                goto LABEL_70;
              }

              break;
            case 7:
              if (v17 == 34)
              {
                if ((sub_100023EF8(a1, 0) & 0x80000000) != 0)
                {
                  v28 = "jsonPushLabel";
                  v29 = 587;
                  goto LABEL_112;
                }

                v20 = 8;
                goto LABEL_78;
              }

              if ((sub_100023EF8(a1, v17) & 0x80000000) != 0)
              {
                v28 = "jsonPushLabel";
                v29 = 591;
                goto LABEL_112;
              }

              break;
            case 8:
              if (v17 < 0)
              {
                if (!__maskrune(v17, 0x4000uLL))
                {
LABEL_60:
                  if (v17 != 58)
                  {
                    goto LABEL_111;
                  }

                  v20 = 0;
                  goto LABEL_78;
                }
              }

              else if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
              {
                goto LABEL_60;
              }

              break;
            default:
              goto LABEL_111;
          }
        }

        if (v19 != 4)
        {
          break;
        }

        if ((v17 - 97) > 0x19)
        {
          *(a1 + 16) = 5;
          *(a1 + 56) = v14;
          if ((sub_100023FB0(a1, 0) & 0x80000000) != 0)
          {
            v28 = "jsonPushValue";
            v29 = 524;
            goto LABEL_112;
          }

          v26 = *(a1 + 112);
          if (!strcmp(v26, "false") || !strcmp(v26, "true"))
          {
            v25 = 6;
          }

          else
          {
            if (strcmp(v26, "null"))
            {
              goto LABEL_111;
            }

            v25 = 7;
          }

          goto LABEL_130;
        }

        if ((sub_100023FB0(a1, v17) & 0x80000000) != 0)
        {
          v28 = "jsonPushValue";
          v29 = 519;
          goto LABEL_112;
        }
      }

      if (v17 < 0)
      {
        break;
      }

      if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (__maskrune(v17, 0x4000uLL));
LABEL_73:
  v22 = *(a1 + 24);
  if (!v22)
  {
    v28 = "invalid JSON state";
    v29 = 546;
    goto LABEL_112;
  }

  v23 = v22 - 1;
  v24 = *(*(a1 + 32) + 4 * v23);
  switch(v17)
  {
    case ',':
      if (v24)
      {
        v20 = 0;
      }

      else
      {
        v20 = 6;
      }

      goto LABEL_78;
    case ']':
      if ((v24 & 1) == 0)
      {
        v18 = 93;
        goto LABEL_111;
      }

      break;
    case '}':
LABEL_100:
      if (v24)
      {
LABEL_101:
        v18 = 125;
        goto LABEL_111;
      }

      break;
    default:
      goto LABEL_111;
  }

LABEL_125:
  *(a1 + 24) = v23;
  if (v23)
  {
    v34 = 5;
  }

  else
  {
    v34 = 9;
  }

  v25 = 2;
LABEL_129:
  *(a1 + 16) = v34;
LABEL_130:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  *a2 = v25;
  v35 = *(a1 + 80);
  if (v35)
  {
    v35 = *(a1 + 88);
  }

  *(a2 + 1) = v35;
  a2[12] = *(a1 + 24);
  if (v25 == 6)
  {
    v39 = strcmp(*(a1 + 112), "true");
    result = 0;
    a2[9] = v39 == 0;
  }

  else if (v25 == 4)
  {
    v36 = *(a1 + 112);
    if (*v36 == 45)
    {
      v37 = strtoull(v36 + 1, 0, 10);
      result = 0;
      *(a2 + 3) = v37;
      v38 = -1;
    }

    else
    {
      v40 = strtoull(v36, 0, 0);
      result = 0;
      *(a2 + 3) = v40;
      v38 = v40 != 0;
    }

    a2[8] = v38;
  }

  else
  {
    result = 0;
    if (v25 == 3)
    {
      *(a2 + 2) = *(a1 + 112);
    }
  }

  return result;
}

uint64_t _FSGetLocationFromStatfs(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (sub_100024A18((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

void sub_100024BA8(uint64_t *a1, uint64_t a2)
{
  sub_1000292E0(&v14, a2 + 72);
  v3 = v14;
  if (v14 != v15)
  {
    v4 = a1 + 1;
    v5 = *a1;
    do
    {
      v6 = *(v5 - 128);
      if (!*(v4 + v6))
      {
        v7 = *(v3 + 14) + 2147483643;
        if (v7 <= 3)
        {
          v8 = dword_1001BBD20[v7];
          v9 = qword_1001BBCF8[v7];
          *(v4 + v6) = v8;
          *v4 = v9;
        }
      }

      v10 = v3[5] - v3[4] + (v3[6] & 1) + ((*(v3 + 48) >> 1) & 1) - 1;
      *(a1 + *(v5 - 128) + 16) += v3[9];
      *(a1 + *(v5 - 112) + 56) -= v10 << 9;
      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v15);
  }

  sub_1000285E0(&v14, v15[0]);
}

uint64_t sub_100024CEC(void *a1, uint64_t a2)
{
  sub_100001DC0(&v23);
  LODWORD(__p[0]) = *(*(a2 + 136) + 352);
  sub_100026198(&v23, __p);
  sub_100028B04(&v24, __p);
  v4 = (a1 + *(*a1 - 136));
  if (*(v4 + 31) < 0)
  {
    operator delete(v4[1]);
  }

  *(v4 + 1) = *__p;
  v4[3] = v22;
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  sub_100001C58(&v24, __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a2 + 136);
  v6 = *(v5 + 356);
  if (v6 >= 8)
  {
    v7 = (v5 + 360);
    v8 = v6 >> 3;
    v9 = v23;
    v10 = *(&v23 + *(v23 - 3) + 8);
    v11 = v8 - 1;
    if (v8 != 1)
    {
      v20 = v7;
      v12 = v8 - 1;
      do
      {
        *(&v25[-1].__locale_ + *(v23 - 3)) = *(&v25[-1].__locale_ + *(v23 - 3)) & 0xFFFFFFB5 | 8;
        LOBYTE(__p[0]) = 48;
        v13 = sub_1000283FC(&v23, __p);
        *(v13 + *(*v13 - 24) + 24) = 2;
        v14 = *v7;
        v15 = std::ostream::operator<<();
        sub_100001FE8(v15, " ", 1);
        ++v7;
        --v12;
      }

      while (v12);
      v9 = v23;
      v7 = v20;
    }

    *(&v23 + *(v9 - 3) + 8) = *(&v23 + *(v9 - 3) + 8) & 0xFFFFFFB5 | 8;
    LOBYTE(__p[0]) = 48;
    v16 = sub_1000283FC(&v23, __p);
    *(v16 + *(*v16 - 24) + 24) = 2;
    v17 = v7[v11];
    std::ostream::operator<<();
    *(&v23 + *(v23 - 3) + 8) = v10;
  }

  sub_100028B04(&v24, __p);
  v18 = (a1 + *(*a1 - 136));
  if (*(v18 + 55) < 0)
  {
    operator delete(v18[4]);
  }

  *(v18 + 2) = *__p;
  v18[6] = v22;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100025068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000250B4(void *a1, uint64_t a2)
{
  v3 = a1[1];
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  do
  {
    while (1)
    {
      (*(*v9 + 176))(v9, a2);
      v4 = v9;
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        sub_10000E984(v3);
      }

      sub_100192F44(&v9, &v8);
      v5 = v8;
      v8 = 0uLL;
      v6 = *(&v9 + 1);
      v9 = v5;
      if (v6)
      {
        break;
      }

      v3 = *(&v4 + 1);
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    sub_10000E984(v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      sub_10000E984(*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    sub_10000E984(*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_10000E984(*(&v9 + 1));
  }
}

void sub_1000251BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000E984(v12);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002530C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000EAD0(va);
  _Unwind_Resume(a1);
}

void sub_100025328(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = off_1001F89F0;
  *(a1 + 48) = off_1001F8A20;
  *(a1 + 56) = off_1001F8A50;
  *(a1 + 64) = off_1001F8A80;
  *a1 = off_1001F7F50;
  *(a1 + 24) = off_1001F7F98;
  *(a1 + 32) = off_1001F7FE0;
  *(a1 + 40) = off_1001F8028;
  *(a1 + *(*a1 - 48)) = off_1001F8070;
  *(a1 + *(*a1 - 56)) = off_1001F80B8;
  *(a1 + *(*a1 - 64)) = off_1001F8100;
  *a1 = off_1001F7C08;
  *(a1 + 24) = off_1001F7C50;
  *(a1 + 32) = off_1001F7C98;
  *(a1 + 40) = off_1001F7CE0;
  *(a1 + *(*a1 - 48)) = off_1001F7D28;
  *(a1 + *(*a1 - 56)) = off_1001F7D70;
  *(a1 + *(*a1 - 64)) = off_1001F7DB8;
  *(a1 + 72) = off_1001F8160;
  *(a1 + 24) = off_1001F81B8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = off_1001F8308;
  *(a1 + 144) = 0;
  *(a1 + 40) = off_1001F8360;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = off_1001F84B0;
  *(a1 + 32) = off_1001F8508;
  *(a1 + 184) = 0;
  *(a1 + 208) = off_1001F8658;
  *(a1 + 48) = off_1001F86B0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  sub_100025BD0((a1 + 264), &off_1001F7B88, a2);
}

void sub_100025B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100029278(va);
  sub_100029278(v8);
  sub_100025DE0(v9, &off_1001F7B88);
  sub_100025EA0(v7, &off_1001F7B68);
  sub_100025F68(v6, &off_1001F7B28);
  _Unwind_Resume(a1);
}

void sub_100025BD0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = off_1001F8F10;
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_10013D8E0(a3 + 64);
}

void sub_100025D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  sub_1000283C8((v10 + 24));
  sub_1000283C8((v10 + 16));
  sub_1000283C8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_100025DE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  sub_1000283C8((a1 + 24));
  sub_1000283C8((a1 + 16));
  sub_1000283C8((a1 + 8));
  return a1;
}

uint64_t sub_100025EA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100025F68(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  sub_1000283C8((a1 + 32));
  return a1;
}

const __CFString *sub_100026018(uint64_t a1)
{
  v1 = *(a1 + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

const __CFString *sub_100026044(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

const __CFString *sub_100026088(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

const __CFString *sub_1000260CC(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

const __CFString *sub_100026110(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

const __CFString *sub_100026154(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_1001F8F30[v1];
  }
}

void *sub_100026198(void *a1, _DWORD *a2)
{
  v2 = &off_1001F8AA8;
  v3 = 264;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

void sub_1000264B0(uint64_t a1, int *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = *a2;
  sub_100028820(v11);
  LODWORD(__p[0]) = v5;
  sub_100028AC4(&v12, __p);
  sub_100028B04(&v13, __p);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v8;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  CFDictionaryAddValue(Mutable, @"Type", v7);
  CFRelease(v7);
  sub_100144CE4(Mutable, @"Reserved", a2[1]);
  sub_100144CE4(Mutable, @"Sector Count", *(a2 + 2));
  sub_100144CE4(Mutable, @"Start Offset", *(a2 + 1));
  sub_100144CE4(Mutable, @"Compressed Offset", *(a2 + 3));
  sub_100144CE4(Mutable, @"Compressed Length", *(a2 + 4));
  CFArrayAppendValue(*(a1 + 16), Mutable);
}

void sub_100026744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void **sub_1000267A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100144E18(&v6);
  valuePtr = *(a1 + 8);
  v8 = @"Total Bytes";
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v10 = @"Sector Count";
  valuePtr = *(a1 + 16);
  v11 = 0;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v12 = @"Empty Bytes";
  valuePtr = *(a1 + 56);
  v13 = 0;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v14 = &v8;
  v15 = 3;
  sub_1001453B8(&v6, &v14);
  for (i = 5; i != -1; i -= 2)
  {
    sub_100028CF8(&(&v8)[i]);
  }

  if (*(a1 + 48) == 1)
  {
    v14 = @"Max Size Bytes";
    valuePtr = *(a1 + 40);
    v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v8 = &v14;
    v9 = 1;
    sub_1001453B8(&v6, &v8);
    sub_100028CF8(&v15);
  }

  if (*(a1 + 32) == 1)
  {
    v14 = @"Min Size Bytes";
    valuePtr = *(a1 + 24);
    v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v8 = &v14;
    v9 = 1;
    sub_1001453B8(&v6, &v8);
    sub_100028CF8(&v15);
  }

  *a2 = v6;
  v6 = 0;
  return sub_100028D2C(&v6);
}

void sub_100026988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028CF8((v2 + 8));
  sub_100028D2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100026A4C(uint64_t a1)
{
  *a1 = off_1001F8D68;
  *(a1 + 40) = off_1001F8DC0;
  sub_1000283C8((a1 + 32));
  return a1;
}

void sub_100026AB4(uint64_t a1)
{
  *a1 = off_1001F8D68;
  *(a1 + 40) = off_1001F8DC0;
  sub_1000283C8((a1 + 32));

  operator delete();
}

const void **sub_100026B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v4 = &kCFBooleanTrue;
  }

  else
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;
  v19 = @"Is Encrypted";
  v20 = v5;
  valuePtr = 0;
  v13 = &v19;
  v14 = 1;
  sub_100145408(&v13, &v11);
  sub_100028CF8(&v20);
  sub_100028D60(&valuePtr);
  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 8) - 1;
    if (v6 > 2)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_1001F8F58[v6];
    }

    v13 = @"Encryption Method";
    v14 = v7;
    valuePtr = *(a1 + 16);
    v15 = @"Key Size";
    v16 = 0;
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v17 = @"UUID";
    v8 = *(a1 + 32);
    v18 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v19 = &v13;
    v20 = 3;
    sub_1001453B8(&v11, &v19);
    for (i = 5; i != -1; i -= 2)
    {
      sub_100028CF8(&(&v13)[i]);
    }
  }

  *a2 = v11;
  v11 = 0;
  return sub_100028D2C(&v11);
}

void sub_100026CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, char a12)
{
  do
  {
    sub_100028CF8(v12 - 1);
    v12 -= 2;
  }

  while (v12 != &a12);
  sub_100028D2C(&a10);
  _Unwind_Resume(a1);
}

const void **sub_100026D44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8D68;
  *(v1 + 5) = off_1001F8DC0;
  return sub_1000283C8(v1 + 4);
}

void sub_100026DA0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8D68;
  *(v1 + 5) = off_1001F8DC0;
  sub_1000283C8(v1 + 4);

  operator delete();
}

const void **sub_100026E54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  valuePtr = *(a1 + 16);
  v11[0] = @"Compressed Bytes";
  v11[1] = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  LODWORD(valuePtr) = *(a1 + 24);
  v11[2] = @"Compression Ratio";
  v12 = 0;
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  v4 = *(a1 + 8) - 1;
  if (v4 > 3)
  {
    v5 = @"raw";
  }

  else
  {
    v5 = off_1001F8F70[v4];
  }

  v13 = @"Compression Type";
  v14 = v5;
  v8[0] = v11;
  v8[1] = 3;
  sub_100145408(v8, &v9);
  *a2 = v9;
  v9 = 0;
  sub_100028D2C(&v9);
  for (i = 5; i != -1; i -= 2)
  {
    result = sub_100028CF8(&v11[i]);
  }

  return result;
}

void sub_100026F88(_Unwind_Exception *a1)
{
  v3 = (v1 + 40);
  v4 = -48;
  do
  {
    v3 = sub_100028CF8(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t sub_100027000(uint64_t a1)
{
  *a1 = off_1001F8DF8;
  *(a1 + 56) = off_1001F8E50;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100027080(uint64_t a1)
{
  *a1 = off_1001F8DF8;
  *(a1 + 56) = off_1001F8E50;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

const void **sub_100027120@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
  }

  else
  {
    v5 = (a1 + 32);
  }

  v6 = CFStringCreateWithBytes(kCFAllocatorDefault, v5, v4, 0x8000100u, 0);
  v15 = v6;
  v7 = *(a1 + 31);
  if (v7 < 0)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
  }

  else
  {
    v8 = (a1 + 8);
  }

  v9 = CFStringCreateWithBytes(kCFAllocatorDefault, v8, v7, 0x8000100u, 0);
  cf = v9;
  v16[0] = @"Checksum Value";
  v16[1] = v6;
  if (v6)
  {
    CFRetain(v6);
    v9 = cf;
  }

  v16[2] = @"Checksum Type";
  v16[3] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v12[0] = v16;
  v12[1] = 2;
  sub_100145408(v12, &v13);
  *a2 = v13;
  v13 = 0;
  sub_100028D2C(&v13);
  for (i = 3; i != -1; i -= 2)
  {
    sub_100028CF8(&v16[i]);
  }

  sub_1000283C8(&cf);
  return sub_1000283C8(&v15);
}

void sub_100027270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  sub_100028CF8((v4 + 8));
  sub_1000283C8(va);
  sub_1000283C8(va1);
  _Unwind_Resume(a1);
}

void sub_1000272D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8DF8;
  *(v1 + 7) = off_1001F8E50;
  if (v1[55] < 0)
  {
    operator delete(*(v1 + 4));
  }

  if (v1[31] < 0)
  {
    v2 = *(v1 + 1);

    operator delete(v2);
  }
}

void sub_100027378(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8DF8;
  *(v1 + 7) = off_1001F8E50;
  if (v1[55] < 0)
  {
    operator delete(*(v1 + 4));
  }

  if (v1[31] < 0)
  {
    operator delete(*(v1 + 1));
  }

  operator delete();
}

uint64_t sub_10002742C(uint64_t a1)
{
  *a1 = off_1001F8E88;
  *(a1 + 32) = off_1001F8EE0;
  sub_1000283C8((a1 + 24));
  sub_1000283C8((a1 + 16));
  sub_1000283C8((a1 + 8));
  return a1;
}

void sub_1000274A4(uint64_t a1)
{
  *a1 = off_1001F8E88;
  *(a1 + 32) = off_1001F8EE0;
  sub_1000283C8((a1 + 24));
  sub_1000283C8((a1 + 16));
  sub_1000283C8((a1 + 8));

  operator delete();
}

const void **sub_10002753C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  v11 = @"UUID";
  v12 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v8 = &v11;
  v9 = 1;
  sub_100145408(&v8, &v10);
  sub_100028CF8(&v12);
  v5 = a1[3];
  if (v5)
  {
    v11 = @"Parent UUID";
    v12 = v5;
    CFRetain(v5);
    v8 = &v11;
    v9 = 1;
    sub_1001453B8(&v10, &v8);
    sub_100028CF8(&v12);
  }

  v6 = a1[2];
  if (v6)
  {
    v11 = @"Stable UUID";
    v12 = v6;
    CFRetain(v6);
    v8 = &v11;
    v9 = 1;
    sub_1001453B8(&v10, &v8);
    sub_100028CF8(&v12);
  }

  *a2 = v10;
  v10 = 0;
  return sub_100028D2C(&v10);
}

void sub_100027658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028CF8((v3 + 8));
  sub_100028D2C(va);
  _Unwind_Resume(a1);
}

const void **sub_1000276B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8E88;
  *(v1 + 4) = off_1001F8EE0;
  sub_1000283C8(v1 + 3);
  sub_1000283C8(v1 + 2);

  return sub_1000283C8(v1 + 1);
}

void sub_100027744(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_1001F8E88;
  *(v1 + 4) = off_1001F8EE0;
  sub_1000283C8(v1 + 3);
  sub_1000283C8(v1 + 2);
  sub_1000283C8(v1 + 1);

  operator delete();
}

uint64_t sub_1000277F0(uint64_t a1)
{
  v2 = sub_100028D94(a1, off_1001F7A20);
  *(v2 + 264) = off_1001F8800;
  *(v2 + 64) = off_1001F8858;
  sub_1000283C8((v2 + 288));
  sub_1000283C8((a1 + 280));
  sub_1000283C8((a1 + 272));
  *(a1 + 208) = off_1001F8658;
  *(a1 + 48) = off_1001F86B0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 136) = off_1001F8308;
  *(a1 + 40) = off_1001F8360;
  sub_1000283C8((a1 + 168));
  return a1;
}

void sub_100027920(uint64_t a1)
{
  sub_1000277F0(a1);

  operator delete();
}

const void **sub_100027958@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v11 = @"Image Format";
  v12 = v4;
  sub_1000291D4(a1, &cf);
  v13 = @"Format Description";
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1000267A0(a1 + *(*a1 - 112), &v10);
  v15 = @"Size Info";
  v16 = v10;
  v10 = 0;
  sub_10000E950(&v10);
  sub_100026B3C(a1 + *(*a1 - 120), &v10);
  v17 = @"Encryption Info";
  v18 = v10;
  v10 = 0;
  sub_10000E950(&v10);
  sub_100026E54(a1 + *(*a1 - 128), &v10);
  v19 = @"Compression Info";
  v20 = v10;
  v10 = 0;
  sub_10000E950(&v10);
  sub_100027120(a1 + *(*a1 - 136), &v10);
  v21 = @"Master Checksum Info";
  v22 = v10;
  v10 = 0;
  sub_10000E950(&v10);
  sub_10002753C((a1 + *(*a1 - 144)), &v10);
  v23 = @"Identity Info";
  v24 = v10;
  v10 = 0;
  sub_10000E950(&v10);
  v25 = &v11;
  v26 = 7;
  sub_100145408(&v25, &v9);
  for (i = 13; i != -1; i -= 2)
  {
    sub_100028CF8(&(&v11)[i]);
  }

  sub_1000283C8(&cf);
  v6 = a1[2];
  if (v6)
  {
    v25 = @"Runs";
    v26 = v6;
    CFRetain(v6);
    v11 = &v25;
    v12 = 1;
    sub_1001453B8(&v9, &v11);
    sub_100028CF8(&v26);
  }

  *a2 = v9;
  v9 = 0;
  return sub_100028D2C(&v9);
}

void sub_100027BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028CF8((v2 + 8));
  sub_100028D2C(va);
  _Unwind_Resume(a1);
}

void sub_100027C8C(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027D08(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027D84(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027E00(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027E7C(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027EF8(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 24));

  operator delete();
}

void sub_100027F74(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 32));

  operator delete();
}

void sub_10002800C(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 32));

  operator delete();
}

void sub_1000280A4(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 32));

  operator delete();
}

void sub_10002813C(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 32));

  operator delete();
}

void sub_1000281D4(void *a1)
{
  sub_1000277F0(a1 + *(*a1 - 32));

  operator delete();
}

const void **sub_1000283C8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1000283FC(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_1000284C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1000285E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000285E0(a1, *a2);
    sub_1000285E0(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_100028638(void *a1)
{
  sub_100001DC0(&v3);
  sub_100001FE8(&v3, "CoreFoundation type mismatch: ", 30);
  std::ostream::operator<<();
  sub_100001FE8(&v3, " while expecting ", 17);
  std::ostream::operator<<();
  sub_10000EBDC(a1, &v3, 0x16u);
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  std::ios::~ios();
  *a1 = &off_1001F8BD0;
  return a1;
}

void sub_1000287E8(std::exception *a1)
{
  sub_100001AF8(a1);

  operator delete();
}

void (__cdecl ***sub_100028820(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100001F2C((a1 + 3), 24);
  return a1;
}

void sub_100028A9C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100028AC4(void *a1, _DWORD *a2)
{
  v2 = &off_1001F8BF0;
  v3 = 360;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

const void *sub_100028B04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100001B64(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_100028BA8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

const void **sub_100028CF8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100028D2C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100028D60(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100028D94(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 104)) = a2[1];
  *(a1 + *(*a1 - 96)) = a2[2];
  *(a1 + *(*a1 - 24)) = a2[3];
  *(a1 + *(*a1 - 32)) = a2[4];
  *(a1 + *(*a1 - 40)) = a2[5];
  *(a1 + *(*a1 - 48)) = a2[6];
  *(a1 + *(*a1 - 56)) = a2[7];
  *(a1 + *(*a1 - 64)) = a2[8];
  *(a1 + *(*a1 - 112)) = a2[9];
  *(a1 + *(*a1 - 120)) = a2[10];
  *(a1 + *(*a1 - 128)) = a2[11];
  *(a1 + *(*a1 - 136)) = a2[12];
  *(a1 + *(*a1 - 144)) = a2[13];
  sub_100029278((a1 + 16));
  return a1;
}

CFStringRef sub_1000291D4@<X0>(void *a1@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(a1 + *(*a1 - 128) + 8);
  if (v3)
  {
    if (v3 > 4)
    {
      v4 = @"raw";
    }

    else
    {
      v4 = off_1001F8F70[v3 - 1];
    }

    result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s (%@)", "UDIF read-only compressed image", v4);
  }

  else
  {
    result = @"UDIF uncompressed read-only image";
  }

  *a2 = result;
  return result;
}

const void **sub_100029278(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000292AC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1000292E0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100029338(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100029338(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000293C0(v5, (v5 + 8), (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1000293C0(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *sub_100029470(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100029470(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_5;
  }

  v5 = *(a5 + 16);
  v6 = (v5 & 1) + *(a5 + 8) - 1;
  v7 = a2[4];
  if ((a2[6] & 2) == 0)
  {
    ++v7;
  }

  if (v6 < v7)
  {
LABEL_5:
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_23:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v15 = a2;
      do
      {
        v10 = v15[2];
        v11 = *v10 == v15;
        v15 = v10;
      }

      while (v11);
    }

    v16 = *a5;
    if ((*(a5 + 16) & 2) == 0)
    {
      ++v16;
    }

    if ((v10[6] & 1) + v10[5] - 1 < v16)
    {
      goto LABEL_23;
    }

    return sub_100029640(a1, a3, a5);
  }

  v11 = (v5 & 2) == 0;
  v12 = *a5;
  if (v11)
  {
    ++v12;
  }

  if ((a2[6] & 1) + a2[5] - 1 < v12)
  {
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        a4 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v11 = *a4 == v17;
        v17 = a4;
      }

      while (!v11);
    }

    if (a4 == a1 + 1)
    {
      goto LABEL_34;
    }

    v18 = a4[4];
    if ((a4[6] & 2) == 0)
    {
      ++v18;
    }

    if (v6 < v18)
    {
LABEL_34:
      if (v13)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }

    return sub_100029640(a1, a3, a5);
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

uint64_t *sub_1000295E8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000296C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_100029640(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      v6 = *a3;
    }

    else
    {
      v6 = *a3 + 1;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 48);
        v9 = v7[4];
        if ((v8 & 2) == 0)
        {
          ++v9;
        }

        if ((*(a3 + 16) & 1) + *(a3 + 8) - 1 >= v9)
        {
          break;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if ((v8 & 1) + v7[5] - 1 >= v6)
      {
        break;
      }

      result = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t *sub_1000296C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_10002AF10(uint64_t a1, const __DADissenter *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    Status = DADissenterGetStatus(a2);
    v5 = [NSString stringWithFormat:@"Dissented with status 0x%X, pid %d", Status, DADissenterGetProcessID()];
    v6 = [DIError errorWithEnumValue:156 verboseInfo:v5];
    [v7 setOperationError:v6];
  }

  [v7 setCallbackReached:1];
}

uint64_t sub_10002D7C8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(result + 24) == *(result + 16))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v3 = **result + *(result + 32);
  if (*(result + 56))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = *(*result + 8);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(result + 64);
  if (v5)
  {
LABEL_10:
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_11:
  *a3 = v3;
  *(a3 + 8) = v5;
  v6 = *(result + 32);
  v7 = *(*result + 16) - v6;
  if (v7 >= *(result + 24) - *(result + 16))
  {
    v7 = *(result + 24) - *(result + 16);
  }

  v8 = **(result + 8);
  v9 = v8 >= v6;
  v10 = v8 - v6;
  if (!v9)
  {
    v10 = 0;
  }

  *(a3 + 16) = v7;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_10002D858(uint64_t a1, void *a2, unint64_t **a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  v8 = 0;
  *a1 = *a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (a4 < a5)
  {
    v8 = **a3;
    if (v8 >= a6)
    {
      v8 = a6;
    }
  }

  *(a1 + 40) = v8;
  sub_10002D7C8(a1, 1, v11);
  v9 = *(a1 + 64);
  *(a1 + 56) = v11[0];
  if (v9)
  {
    sub_10000E984(v9);
  }

  *(a1 + 72) = v11[1];
  return a1;
}

uint64_t sub_10002D8EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    v4 = *(a1 + 8);
    v5 = *(*a1 + 16) + v2 - *(a1 + 32);
    v6 = *a1 + 24;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = v6;
    *(a1 + 8) = v4 + 8;
    *(a1 + 16) = v5;
  }

  sub_10002D7C8(a1, v2 != v3, v9);
  v7 = *(a1 + 64);
  *(a1 + 56) = v9[0];
  if (v7)
  {
    sub_10000E984(v7);
  }

  *(a1 + 72) = v9[1];
  return a1;
}

uint64_t sub_10002D97C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24) - v3;
    if (*(*a1 + 16) - *(a1 + 32) < v4)
    {
      v4 = *(*a1 + 16) - *(a1 + 32);
    }

    v5 = v4 <= a2;
    if (v4 <= a2)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 8) + 8;
      v8 = *a1 + 24;
      do
      {
        v9 = v7;
        v10 = v8;
        if (v6)
        {
          *(v7 - 8) = *(a1 + 40) + v4;
          v3 = *(a1 + 16);
        }

        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v3 += v4;
        *(a1 + 16) = v3;
        a2 -= v4;
        if (!a2)
        {
          break;
        }

        v4 = *(v8 + 16);
        if (v4 >= *(a1 + 24) - v3)
        {
          v4 = *(a1 + 24) - v3;
        }

        v7 += 8;
        v8 += 24;
        v11 = v4 > a2;
        if (v4 >= a2)
        {
          v4 = a2;
        }
      }

      while (!v11);
      *a1 = v10;
      *(a1 + 8) = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *(a1 + 40) + a2;
  *(a1 + 40) = v12;
  if (v12 && *(a1 + 48) == 1)
  {
    **(a1 + 8) = v12;
  }

  *(a1 + 16) += a2;
  *(a1 + 32) += a2;
  sub_10002D7C8(a1, v5, v15);
  v13 = *(a1 + 64);
  *(a1 + 56) = v15[0];
  if (v13)
  {
    sub_10000E984(v13);
  }

  *(a1 + 72) = v15[1];
  return a1;
}

uint64_t sub_10002DAB8(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 8) + 8;
    v8 = *a1 + 24;
    while (1)
    {
      v9 = v6 - v5;
      if (*(v8 - 8) - v4 < v6 - v5)
      {
        v9 = *(v8 - 8) - v4;
      }

      v10 = *(v7 - 8);
      v11 = v10 >= v4;
      v12 = v10 - v4;
      v13 = v11 ? v12 : 0;
      v14 = v13 >= v9 ? v9 : v13;
      if (v14 >= a2 && (v9 > v13 || a2 != v14))
      {
        break;
      }

      v4 = 0;
      v5 += v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v5;
      *a1 = v8;
      if (a2 >= v14)
      {
        v16 = a2 - v14;
      }

      else
      {
        v16 = 0;
      }

      v7 += 8;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v3 = 1;
      v8 += 24;
      v11 = v14 >= a2;
      a2 = v16;
      if (v11)
      {
        goto LABEL_22;
      }
    }

    v17 = *(a1 + 40) + a2;
    *(a1 + 16) = v5 + a2;
    *(a1 + 32) = v4 + a2;
    *(a1 + 40) = v17;
  }

LABEL_22:
  sub_10002D7C8(a1, v3 & 1, v20);
  v18 = *(a1 + 64);
  *(a1 + 56) = v20[0];
  if (v18)
  {
    sub_10000E984(v18);
  }

  *(a1 + 72) = v20[1];
  return a1;
}

void *sub_10002DBC0(void *result)
{
  v1 = result[2];
  if (v1 != result[3])
  {
    v2 = result[4];
    v3 = result[1];
    v4 = (*result + 16);
    do
    {
      *v3++ = v2;
      v5 = *v4;
      v4 += 3;
      v6 = result[3];
      v7 = v5 - v2;
      if (v7 >= v6 - v1)
      {
        v7 = v6 - v1;
      }

      v1 += v7;
      v2 = 0;
    }

    while (v1 != v6);
  }

  return result;
}

void sub_10002DC08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[14];
  if (!sub_10002DE0C(a1, a2))
  {
    sub_100014E18((a1 + 15));
    v8 = a1[22];
    v9 = a1[23];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = a1[24];
    v11 = a1[26];
    v12 = *(a2 + 208) - v11;
    if (v12 >= v10)
    {
      v12 = v10;
    }

    *v15 = v8;
    *&v15[8] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v15[16] = v12;
    *&v15[24] = v11;
    *&v15[32] = v10;
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    *&v15[40] = *(v6 + 264) & 3;
    sub_100030254(a3, v15);
    if (*&v15[8])
    {
      sub_10000E984(*&v15[8]);
    }

    if (*(v6 + 256) == 1 && *(v6 + 200))
    {
      sub_100093838(v6 + 200, *(v6 + 184), v11, v15);
      if (*(a3 + 104) != 1)
      {
        sub_10009386C(a3 + 48, v15);
        *(a3 + 104) = 1;
        if (!v9)
        {
          return;
        }

        goto LABEL_19;
      }

      v13 = *&v15[16];
      *(a3 + 48) = *v15;
      *(a3 + 64) = v13;
      *(a3 + 80) = *&v15[32];
      *(a3 + 96) = v16[0];
    }

    if (!v9)
    {
      return;
    }

LABEL_19:
    v7 = v9;
    goto LABEL_20;
  }

  if (*(v6 + 256) == 1 && *(v6 + 200))
  {
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    memset(v15, 0, 44);
    sub_100093838(v6 + 200, *(v6 + 184), a1[26], v14);
    sub_10009386C(v16, v14);
    v17 = 1;
    sub_100030254(a3, v15);
    v7 = *&v15[8];
    if (!*&v15[8])
    {
      return;
    }

LABEL_20:
    sub_10000E984(v7);
    return;
  }

  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 28) = 0u;
}

void sub_10002DDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(v18 + 8);
  if (v21)
  {
    sub_10000E984(v21);
  }

  if (v19)
  {
    sub_10000E984(v19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10002DE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2 != *(a2 + 112))
  {
    return 0;
  }

  if (*(a1 + 216) != 1 || (*(a2 + 216) & 1) == 0)
  {
    return *(a1 + 208) == *(a2 + 208);
  }

  sub_1000302E0(&v12, v2 + 272);
  v6 = *(a1 + 120);
  v7 = v6 == v14 && *(a1 + 128) == v15 && *(a1 + 136) == v16;
  v8 = *(a2 + 120);
  if (v8 == v14 && (v9 = *(a2 + 128), v9 == v15))
  {
    v3 = 0;
    if (v6 != v14 || v7 == (*(a2 + 136) != v16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = v6 != v8 || v7;
    if (v10)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 128);
  }

  if (*(a1 + 128) != v9 || *(a1 + 136) != *(a2 + 136))
  {
LABEL_20:
    v3 = 0;
    goto LABEL_21;
  }

  v3 = *(a1 + 208) == *(a2 + 208);
LABEL_21:
  if (v17)
  {
    sub_10000E984(v17);
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  return v3;
}

uint64_t sub_10002DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *(a3 + 16);
  *(a1 + 8) = *a2;
  v8 = (a1 + 8);
  v9 = *(a2 + 8);
  *a1 = v7 - *(a2 + 16);
  *(a1 + 16) = v9;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v11;
  *(a1 + 24) = v10;
  v12 = *(a2 + 64);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = *(a2 + 72);
  *(a1 + 96) = *a3;
  *(a1 + 104) = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  *(a1 + 144) = *(a3 + 48);
  *(a1 + 112) = v13;
  *(a1 + 128) = v14;
  v15 = *(a3 + 64);
  *(a1 + 152) = *(a3 + 56);
  *(a1 + 160) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = *(a3 + 72);
  *(a1 + 184) = a4;
  *(a1 + 192) = a5;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a6;
  sub_10002EDA8(a1 + 272, a1, (a1 + 96), 0);
  sub_10002EDA8(a1 + 496, a1, v8, 1);
  return a1;
}

void sub_10002E06C(_Unwind_Exception *a1)
{
  sub_10000FF88(v1 + 272);
  v3 = *(v1 + 160);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(v1 + 72);
  if (v4)
  {
    sub_10000E984(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002E0A8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t **a4, unint64_t **a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *a2;
  v14 = *a3;
  if (*a2 == *a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *(v13 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *(v13 + 16);
        sub_10000E984(v16);
      }

      else
      {
        v17 = *(v13 + 16);
      }

      v15 += v17;
      v13 += 24;
    }

    while (v13 != v14);
  }

  *a1 = v15;
  sub_10002D858(a1 + 8, a2, a4, 0, v15, 0, 1);
  sub_10002D858(a1 + 96, a3, a5, *a1, *a1, 0, 1);
  *(a1 + 184) = a6;
  *(a1 + 192) = a7;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a8;
  sub_10002EDA8(a1 + 272, a1, (a1 + 96), 0);
  sub_10002EDA8(a1 + 496, a1, (a1 + 8), 1);
  return a1;
}

void sub_10002E1E0(_Unwind_Exception *a1)
{
  sub_10000FF88(v1 + 272);
  v3 = *(v1 + 160);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(v1 + 72);
  if (v4)
  {
    sub_10000E984(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002E214(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *v9 = v2;
  *&v9[16] = v3;
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v4 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v14 = *(a1 + 80);
  for (i = v2; i != *(a1 + 96) || *&v9[8] != *(a1 + 104); i = *v9)
  {
    sub_100014E18(v9);
    v7 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      sub_10002DAB8(v9, *(&v14 + 1));
    }

    else
    {
      sub_10002D8EC(v9);
    }

    v5 += v7;
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  return v5;
}

void sub_10002E2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002E31C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1000302E0(&v26, (a1 + 34));
  v10 = sub_10002DE0C(a2, &v26);
  if (v33)
  {
    sub_10000E984(v33);
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = a1[24];
  if (v11 + a1[23] < a3)
  {
    a3 = v11 + a1[23];
  }

  if (a3 < *(a2 + 208))
  {
LABEL_6:
    sub_1000302E0(&v26, (a1 + 34));
    sub_1000302E0(&v17, (a1 + 34));
    sub_100030364(a5, &v26, &v17);
  }

  else
  {
    sub_1000302E0(&v26, a2);
    if (a4)
    {
      v12 = a1[14];
      if (v29 <= v12)
      {
        v17 = v28;
        v18 = v29;
        v19 = v30;
        v20 = v31;
        v21 = v32;
        v22 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = a1[14];
        }

        v23 = v34;
        if (v18 >= v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          do
          {
            sub_100014E18(&v17);
            if (a1[14] - v29 >= *(&v23 + 1))
            {
              v15 = *(&v23 + 1);
            }

            else
            {
              v15 = a1[14] - v29;
            }

            if (v15)
            {
              sub_10002DAB8(&v17, v15);
            }

            else
            {
              sub_10002D8EC(&v17);
            }

            v14 += v15;
          }

          while (v18 < a1[14]);
        }

        if (v22)
        {
          sub_10000E984(v22);
        }

        if (v14 >= a4)
        {
          v13 = a4;
        }

        else
        {
          v13 = v14;
        }

        if (v14)
        {
          sub_10002E60C(&v26, v13);
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      if (v14 < a4)
      {
        sub_10002E6D0(&v26, a4 - v13);
      }
    }

    sub_1000302E0(&v17, (a1 + 34));
    v25 = a3;
    sub_10002DC08(&v26, &v17, v16);
    sub_10002E794(&v26, v16);
    if (*(&v16[0] + 1))
    {
      sub_10000E984(*(&v16[0] + 1));
    }

    sub_1000304E0(a5, &v26, &v17);
  }

  if (v24)
  {
    sub_10000E984(v24);
  }

  if (*(&v17 + 1))
  {
    sub_10000E984(*(&v17 + 1));
  }

  if (v33)
  {
    sub_10000E984(v33);
  }

  if (v27)
  {
    sub_10000E984(v27);
  }
}

void *sub_10002E60C(void *a1, unint64_t a2)
{
  a1[26] += a2;
  sub_10002DAB8((a1 + 15), a2);
  if (a1[18] != a1[17])
  {
    sub_1000302E0(&v4, a1[14] + 272);
    sub_10002DC08(a1, &v4, v7);
    sub_10002E794(a1, v7);
    if (*(&v7[0] + 1))
    {
      sub_10000E984(*(&v7[0] + 1));
    }

    if (v6)
    {
      sub_10000E984(v6);
    }

    if (v5)
    {
      sub_10000E984(v5);
    }
  }

  return a1;
}

void sub_10002E6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 120);
  if (v11)
  {
    sub_10000E984(v11);
  }

  sub_10000FF88(&a9);
  _Unwind_Resume(a1);
}

void *sub_10002E6D0(void *a1, unint64_t a2)
{
  a1[26] += a2;
  sub_10002D97C((a1 + 15), a2);
  if (a1[18] != a1[17])
  {
    sub_1000302E0(&v4, a1[14] + 272);
    sub_10002DC08(a1, &v4, v7);
    sub_10002E794(a1, v7);
    if (*(&v7[0] + 1))
    {
      sub_10000E984(*(&v7[0] + 1));
    }

    if (v6)
    {
      sub_10000E984(v6);
    }

    if (v5)
    {
      sub_10000E984(v5);
    }
  }

  return a1;
}

void sub_10002E76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 120);
  if (v11)
  {
    sub_10000E984(v11);
  }

  sub_10000FF88(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E794(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = v6;
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 64) = v8;
      *(a1 + 80) = v9;
      *(a1 + 48) = v7;
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    sub_10009386C(a1 + 48, (a2 + 3));
    *(a1 + 104) = 1;
  }

  return a1;
}

uint64_t sub_10002E834(uint64_t a1)
{
  v2 = (a1 + 144);
  v3 = *(a1 + 136);
  if (*(a1 + 144) != v3)
  {
    v4 = a1 + 120;
    v13 = *(a1 + 120);
    v23[0] = *v2;
    *(v23 + 9) = *(v2 + 9);
    v6 = *(a1 + 176);
    v5 = *(a1 + 184);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 192);
    sub_10002D8EC(v4);
    v7 = *(a1 + 136);
    if (v3 <= v7)
    {
      v14 = v13;
      v15 = v3;
      v16[0] = v23[0];
      *(v16 + 9) = *(v23 + 9);
      v17 = v6;
      v18 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(a1 + 136);
        v9 = v15;
      }

      else
      {
        v9 = v3;
      }

      v19 = v22;
      if (v9 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          sub_100014E18(&v14);
          if (*(a1 + 136) - v3 >= *(&v19 + 1))
          {
            v10 = *(&v19 + 1);
          }

          else
          {
            v10 = *(a1 + 136) - v3;
          }

          if (v10)
          {
            sub_10002DAB8(&v14, v10);
          }

          else
          {
            sub_10002D8EC(&v14);
          }

          v8 += v10;
        }

        while (v15 < *(a1 + 136));
      }

      if (v18)
      {
        sub_10000E984(v18);
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = *(a1 + 16);
    if (v11 >= v8)
    {
      v11 = v8;
    }

    *(a1 + 208) += v11;
    sub_1000302E0(&v14, *(a1 + 112) + 272);
    sub_10002DC08(a1, &v14, v21);
    sub_10002E794(a1, v21);
    if (*(&v21[0] + 1))
    {
      sub_10000E984(*(&v21[0] + 1));
    }

    if (v20)
    {
      sub_10000E984(v20);
    }

    if (*(&v14 + 1))
    {
      sub_10000E984(*(&v14 + 1));
    }

    if (v5)
    {
      sub_10000E984(v5);
    }
  }

  return a1;
}

void sub_10002E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v4 - 200);
  if (v6)
  {
    sub_10000E984(v6);
  }

  sub_10000FF88(va);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10002EA5C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  v7 = *(a2 + 16);
  if (v6 < (v7 & 1) + *(a2 + 8) - 1)
  {
    v10 = a1[2] + v6;
    v11 = v7 & 2;
    v12 = *a2;
    if ((v7 & 2) != 0)
    {
      v13 = *a2;
    }

    else
    {
      v13 = v12 + 1;
    }

    if (v10 <= v13)
    {
      v14 = a1[14];
      sub_1000302E0(v34, a1);
      while (!sub_10002DE0C(v34, a3))
      {
        v10 += v36;
        v15 = *a2;
        if ((*(a2 + 16) & 2) == 0)
        {
          ++v15;
        }

        if (v10 >= v15)
        {
          break;
        }

        sub_10002E834(v34);
      }

      sub_1000302E0(v31, v14 + 272);
      v16 = sub_10002DE0C(v34, v31);
      if (v33)
      {
        sub_10000E984(v33);
      }

      if (v32)
      {
        sub_10000E984(v32);
      }

      if (v16)
      {
        sub_1000302E0(v31, v14 + 272);
        sub_1000302E0(&v28, v14 + 272);
        sub_100030364(a4, v31, &v28);
        if (v30)
        {
          sub_10000E984(v30);
        }

        if (v29)
        {
          sub_10000E984(v29);
        }

        if (v33)
        {
          sub_10000E984(v33);
        }

        if (v32)
        {
          sub_10000E984(v32);
        }

        if (v37)
        {
          sub_10000E984(v37);
        }

        if (v35)
        {
          sub_10000E984(v35);
        }

        return;
      }

      if (v37)
      {
        sub_10000E984(v37);
      }

      if (v35)
      {
        sub_10000E984(v35);
      }

      v7 = *(a2 + 16);
      v12 = *a2;
      v6 = a1[3];
      v11 = v7 & 2;
    }

    if (v11)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 + 1;
    }

    v18 = *(a2 + 8);
    v19 = v17 - v6;
    if (v17 < v6)
    {
      if (v7)
      {
        if (v7 == 3)
        {
          if (v18 < v12)
          {
            goto LABEL_56;
          }
        }

        else if (v12 >= v18)
        {
LABEL_56:
          v20 = qword_1002349D8;
          goto LABEL_57;
        }
      }

      else if (v12 >= v18 || v12 + 1 >= v18)
      {
        goto LABEL_56;
      }

      v20 = (v7 & 1) - v12 + (((v7 >> 1) & 1) - 1) + v18;
LABEL_57:
      v22 = v20 + v17;
      v23 = a1[14];
      if (*(a3 + 208) >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a3 + 208);
      }

      v25 = a4;
      v26 = a1;
      v19 = 0;
LABEL_67:
      sub_10002E31C(v23, v26, v24, v19, v25);
      return;
    }

    if (v7)
    {
      if (v7 == 3)
      {
        if (v18 < v12)
        {
          goto LABEL_62;
        }
      }

      else if (v12 >= v18)
      {
LABEL_62:
        v21 = qword_1002349D8;
        goto LABEL_63;
      }
    }

    else if (v12 >= v18 || v12 + 1 >= v18)
    {
      goto LABEL_62;
    }

    v21 = (v7 & 1) - v12 + (((v7 >> 1) & 1) - 1) + v18;
LABEL_63:
    v27 = v21 + v17;
    v23 = a1[14];
    if (*(a3 + 208) >= v27)
    {
      v24 = v27;
    }

    else
    {
      v24 = *(a3 + 208);
    }

    v25 = a4;
    v26 = a1;
    goto LABEL_67;
  }

  sub_10003052C(a4, a3, a3);
}

void sub_10002ED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  sub_10000FF88(&a65);
  _Unwind_Resume(a1);
}

void sub_10002ED8C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 112);
  if (*(a3 + 208) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a3 + 208);
  }

  sub_10002E31C(v6, a1, v7, a4, a5);
}

uint64_t sub_10002EDA8(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 112) = a2;
  *(a1 + 120) = *a3;
  *(a1 + 128) = a3[1];
  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  *(a1 + 168) = *(a3 + 48);
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 176) = a3[7];
  v8 = a3[8];
  *(a1 + 184) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = *(a3 + 9);
  *(a1 + 216) = a4;
  v9 = *a3;
  if (*a3 == *(a2 + 96) && a3[1] == *(a2 + 104) && a3[2] == *(a2 + 112))
  {
    v10 = *(a2 + 184);
    v11 = v10 + *(a2 + 192);
    *(a1 + 208) = v11;
    v14 = *(a2 + 200);
    v13 = a2 + 200;
    v12 = v14;
    if (*(v13 + 56) != 1 || !v12)
    {
      return a1;
    }

    v29[0] = 0;
    v30 = 0;
    memset(v28, 0, 44);
    sub_100093838(v13, v10, v11, v32);
    sub_10009386C(v29, v32);
    v30 = 1;
    sub_10002F0BC(a1, v28);
  }

  else
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    *v33 = v15;
    *&v33[16] = v16;
    v34 = *(a2 + 40);
    v35 = *(a2 + 56);
    v17 = *(a2 + 72);
    v36 = *(a2 + 64);
    v37 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *a3;
    }

    v38 = *(a2 + 80);
    v18 = a3[1];
    v19 = a3[2];
    v20 = a3[8];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15 == v9 && *&v33[8] == __PAIR128__(v19, v18))
    {
      v21 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        sub_100014E18(v33);
        v23 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = DWORD2(v38);
          sub_10000E984(v23);
        }

        else
        {
          v24 = DWORD2(v38);
        }

        v22 += v24;
        sub_10002D8EC(v33);
      }

      while (*v33 != v9 || *&v33[8] != v18 || *&v33[16] != v19);
      v21 = v22;
    }

    *(a1 + 208) = *(a2 + 184) + v21;
    if (v20)
    {
      sub_10000E984(v20);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    sub_1000302E0(v28, a2 + 272);
    sub_10002DC08(a1, v28, v32);
    sub_10002E794(a1, v32);
    if (*(&v32[0] + 1))
    {
      sub_10000E984(*(&v32[0] + 1));
    }

    if (v31)
    {
      sub_10000E984(v31);
    }
  }

  if (*(&v28[0] + 1))
  {
    sub_10000E984(*(&v28[0] + 1));
  }

  return a1;
}

void sub_10002F044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  v40 = *(v38 + 184);
  if (v40)
  {
    sub_10000E984(v40);
  }

  v41 = *(v38 + 8);
  if (v41)
  {
    sub_10000E984(v41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002F0BC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_10000E984(v6);
  }

  v7 = *(a2 + 1);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = v7;
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      v8 = *(a2 + 3);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      *(a1 + 96) = a2[12];
      *(a1 + 64) = v9;
      *(a1 + 80) = v10;
      *(a1 + 48) = v8;
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    sub_10009386C(a1 + 48, (a2 + 6));
    *(a1 + 104) = 1;
  }

  return a1;
}

uint64_t sub_10002F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a2 + 208) - a3;
  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 < a5)
  {
    a5 = v9;
  }

  sub_10002DF74(a6, a1 + 120, a2 + 120, a3, a5, *(*(a1 + 112) + 264));
  result = sub_10002DE0C(a1, a2);
  if ((result & 1) == 0)
  {
    v13 = *(a1 + 48);
    v12 = a1 + 48;
    v11 = v13;
    if (*(v12 + 56) == 1 && v11 != 0)
    {
      return sub_10002F410(a6, v12);
    }
  }

  return result;
}

void *sub_10002F23C(void *a1)
{
  v2 = a1[85];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[63];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[57];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[35];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    sub_10000E984(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    sub_10000E984(v7);
  }

  return a1;
}

uint64_t sub_10002F2A8(uint64_t a1)
{
  if (*(a1 + 720) == 1)
  {
    v2 = *(a1 + 680);
    if (v2)
    {
      sub_10000E984(v2);
    }

    v3 = *(a1 + 504);
    if (v3)
    {
      sub_10000E984(v3);
    }

    v4 = *(a1 + 456);
    if (v4)
    {
      sub_10000E984(v4);
    }

    v5 = *(a1 + 280);
    if (v5)
    {
      sub_10000E984(v5);
    }

    v6 = *(a1 + 160);
    if (v6)
    {
      sub_10000E984(v6);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      sub_10000E984(v7);
    }
  }

  return a1;
}

void *sub_10002F320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  v7 = a1[4];
  v12 = v14;
  v14[0] = v5;
  v14[1] = v4;
  v14[2] = v7;
  v13 = xmmword_1001BBD40;
  sub_1000306B4(a2, &v12, v6, a1[2], *(a1 + 10));
  v10 = *(a1 + 12);
  v9 = (a1 + 6);
  v8 = v10;
  if (*(v9 + 56) == 1 && v8)
  {
    sub_10002F410(a2 + 208, v9);
  }

  return sub_100012FF8(&v12);
}

void sub_10002F3EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000157A4(v2);
  sub_100012FF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F410(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 256) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    *(a1 + 248) = *(a2 + 48);
    *(a1 + 232) = v5;
    *(a1 + 216) = v4;
    *(a1 + 200) = v3;
  }

  else
  {
    sub_10009386C(a1 + 200, a2);
    *(a1 + 256) = 1;
  }

  sub_100030AE4(a1);
  return a1;
}

unint64_t sub_10002F478(uint64_t a1, uint64_t a2)
{
  if (!sub_10002DE0C(a1, a2) && *(a1 + 104) == 1 && *(a1 + 48) != 0)
  {
    sub_10002F570(a1, a2);
  }

  sub_1000302E0(v10, a1);
  sub_1000302E0(&v7, a2);
  v5 = sub_10002FA8C(sub_100093960, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return v5;
}

void sub_10002F54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

void sub_10002F570(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 == 3)
  {
    sub_1001460D4(v19, 0, a1 + 56, *(a1 + 88));
    sub_100146188(v27);
    v28 = 2;
    sub_100146248(v19);
  }

  else if (v4 == 2)
  {
    sub_100145D00(v19, 0, a1 + 56, a1 + 72, *(a1 + 88));
    sub_100145E3C(v27);
    v28 = 1;
    v19[0] = off_10021B3A0;
    sub_100030D98(&v22);
    v19[0] = off_1001F8FA0;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100146500(&v18, a1 + 72);
    sub_100145774(v19, 0, a1 + 56, &v18, *(a1 + 88));
    sub_1001458C8(v27);
    v28 = 0;
    v19[0] = off_10021B378;
    sub_100030CF8(v23);
    v5 = v22;
    v22 = 0;
    if (v5)
    {
      operator delete[]();
    }

    v19[0] = off_1001F8FA0;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    v6 = v18;
    v18 = 0;
    if (v6)
    {
      operator delete[]();
    }
  }

  v7 = *(a1 + 88);
  sub_100030DC4(v25, v27);
  v26 = v7;
  v8 = *(a1 + 96) - *(a1 + 208);
  v24[0] = off_1001F9008;
  v24[1] = v8;
  v24[3] = v24;
  sub_100192AE0(v11);
  v11[0] = off_10021B508;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sub_1000302E0(v10, a1);
  sub_100033298(v17, v24);
  sub_100033298(v16, v17);
  sub_10003324C(&v18, v10, v16);
  sub_100033424(v16);
  sub_1000302E0(v9, a2);
  sub_100033298(v15, v24);
  sub_100033298(v29, v15);
  sub_10003324C(v16, v9, v29);
  sub_100033424(v29);
  sub_10003118C(v19, v25, v11, &v18, v16, 0, 0);
}

void sub_10002F960(_Unwind_Exception *a1)
{
  sub_100030C64(&STACK[0x450]);
  v2 = STACK[0x350];
  STACK[0x350] = 0;
  if (v2)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10002FA8C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100030464(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100030464(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_10003368C(a1, &v26, &v15, a4, 1);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000E984(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v13;
}

void sub_10002FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

unint64_t sub_10002FBF0(uint64_t a1, uint64_t a2)
{
  if (!sub_10002DE0C(a1, a2) && *(a1 + 104) == 1 && *(a1 + 48) != 0)
  {
    sub_1000302E0(v33, a1);
    sub_1000302E0(v22, a2);
    sub_100030464(&v55, v33);
    v57 = v35;
    v58 = v36;
    v59 = v37;
    v60 = v38;
    v61 = v39;
    v6 = v40;
    v40 = 0uLL;
    v62 = v6;
    v63 = v41;
    v65 = v43;
    v64 = v42;
    sub_100030464(v44, v22);
    v7 = 0;
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v27;
    v50 = v28;
    v8 = v29;
    v29 = 0uLL;
    v51 = v8;
    v52 = v30;
    v9 = v31;
    v54 = v32;
    v53 = v31;
    v73[0] = 0;
    v82 = 0;
    do
    {
      if (sub_10002DE0C(&v55, v44))
      {
        break;
      }

      if (v64 >= v9 || v7 == -1)
      {
        break;
      }

      if (sub_1000E9608())
      {
        *&v70 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/sg_vec.cpp:455:28)]";
        *(&v70 + 1) = 104;
        LODWORD(v71) = 2;
        sub_1000339C8(v67, &v70);
        sub_100001FE8(v69, "sg: ", 4);
        sub_100192838(v69, &v55);
        std::ostream::~ostream();
        sub_100033C40(v67);
        std::ios::~ios();
      }

      v67[0] = 0;
      v67[1] = v9;
      v68 = 2;
      sub_100093990(&v55, v67, &v70);
      v11 = v71;
      v12 = v71 >= 0 || v71 == 0;
      v13 = v12;
      if (v12)
      {
        v14 = v72;
        if (v64 > v72 || v53 - v64 < v71)
        {
          sub_1000302E0(v66, &v55);
          sub_10002F174(v66, v44, v14, v11, 0xFFFFFFFFFFFFFFFFLL, v67);
          sub_100033B34(v73, v67);
          sub_10002F23C(v67);
          sub_10000FF88(v66);
          sub_1000302E0(v67, &v79);
          sub_100030B94(&v55, v67);
          sub_10000FF88(v67);
          sub_1000302E0(v67, &v76);
          sub_100030B94(v44, v67);
          sub_10000FF88(v67);
        }

        sub_10002E6D0(&v55, v11);
        v7 += v11;
      }

      if (*(&v70 + 1))
      {
        sub_10000E984(*(&v70 + 1));
      }
    }

    while ((v13 & 1) != 0);
    if (v82 == 1)
    {
      if (v81)
      {
        sub_10000E984(v81);
      }

      if (v80)
      {
        sub_10000E984(v80);
      }

      if (v78)
      {
        sub_10000E984(v78);
      }

      if (v77)
      {
        sub_10000E984(v77);
      }

      if (v75)
      {
        sub_10000E984(v75);
      }

      if (v74)
      {
        sub_10000E984(v74);
      }
    }

    if (*(&v51 + 1))
    {
      sub_10000E984(*(&v51 + 1));
    }

    if (v45)
    {
      sub_10000E984(v45);
    }

    if (*(&v62 + 1))
    {
      sub_10000E984(*(&v62 + 1));
    }

    if (v56)
    {
      sub_10000E984(v56);
    }

    if (*(&v29 + 1))
    {
      sub_10000E984(*(&v29 + 1));
    }

    if (v23)
    {
      sub_10000E984(v23);
    }

    if (*(&v40 + 1))
    {
      sub_10000E984(*(&v40 + 1));
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    sub_10002F570(a1, a2);
  }

  sub_1000302E0(v19, a1);
  sub_1000302E0(&v16, a2);
  v5 = sub_1000300F0(sub_100093960, v19, &v16, 0xFFFFFFFFFFFFFFFFLL);
  if (v18)
  {
    sub_10000E984(v18);
  }

  if (v17)
  {
    sub_10000E984(v17);
  }

  if (v21)
  {
    sub_10000E984(v21);
  }

  if (v20)
  {
    sub_10000E984(v20);
  }

  return v5;
}

void sub_10003001C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x620]);
  if (STACK[0x8F8])
  {
    sub_10000E984(STACK[0x8F8]);
  }

  sub_10002F2A8(&STACK[0x960]);
  sub_10000FF88(&STACK[0x380]);
  sub_10000FF88(&STACK[0x460]);
  sub_10000FF88(&a65);
  sub_10000FF88(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

unint64_t sub_1000300F0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100030464(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100030464(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_10003368C(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000E984(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v13;
}

void sub_100030230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_100030254(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 28);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(a1 + 28) = v5;
  *(a1 + 16) = v4;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    sub_10009386C(v6, a2 + 48);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1000302C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000302E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100030254(a1, a2);
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 120) = *(a2 + 120);
  *(v3 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  *(v3 + 168) = *(a2 + 168);
  *(v3 + 152) = v5;
  *(v3 + 136) = v4;
  v6 = *(a2 + 184);
  *(v3 + 176) = *(a2 + 176);
  *(v3 + 184) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 192);
  *(v3 + 192) = result;
  v8 = *(a2 + 208);
  *(v3 + 216) = *(a2 + 216);
  *(v3 + 208) = v8;
  return result;
}

uint64_t sub_100030364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030464(a1, a2);
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 128) = *(a2 + 128);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 152) = v8;
  *(v6 + 136) = v7;
  *(v6 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(v6 + 192) = *(a2 + 192);
  v9 = *(a2 + 208);
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 208) = v9;
  sub_100030464(v6 + 224, a3);
  *(a1 + 336) = *(a3 + 112);
  *(a1 + 344) = *(a3 + 120);
  *(a1 + 352) = *(a3 + 128);
  v10 = *(a3 + 136);
  v11 = *(a3 + 152);
  *(a1 + 392) = *(a3 + 168);
  *(a1 + 360) = v10;
  *(a1 + 376) = v11;
  *(a1 + 400) = *(a3 + 176);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a1 + 416) = *(a3 + 192);
  v12 = *(a3 + 208);
  *(a1 + 440) = *(a3 + 216);
  *(a1 + 432) = v12;
  return a1;
}

uint64_t sub_100030464(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 16);
  v4 = *(a2 + 28);
  *(a1 + 48) = 0;
  v5 = a1 + 48;
  *(v5 - 20) = v4;
  *(v5 - 32) = v3;
  *(v5 + 56) = 0;
  if (*(a2 + 104) == 1)
  {
    sub_10009386C(v5, a2 + 48);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1000304C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000304E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000302E0(a1, a2);
  sub_1000302E0(v5 + 224, a3);
  return a1;
}

uint64_t sub_10003052C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000302E0(a1, a2);
  sub_1000302E0(v5 + 224, a3);
  return a1;
}

uint64_t sub_100030578(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v8 = (a1 + 96);
  *(a1 + 104) = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = *(a2 + 168);
  v11 = *(a2 + 184);
  *(a1 + 200) = 0;
  v12 = a1 + 200;
  *(v12 - 16) = v11;
  *(v12 + 56) = 0;
  if (*(a2 + 256) == 1)
  {
    sub_10009386C(v12, a2 + 200);
    *(a1 + 256) = 1;
  }

  *(a1 + 264) = *(a2 + 264);
  sub_10002EDA8(a1 + 272, a1, v8, 0);
  sub_10002EDA8(a1 + 496, a1, v5, 1);
  return a1;
}

void sub_100030680(_Unwind_Exception *a1)
{
  sub_10000FF88(v1 + 272);
  v3 = *(v1 + 160);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(v1 + 72);
  if (v4)
  {
    sub_10000E984(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000306B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_100030750(a1, a2);
  v10 = v9[1];
  v17 = *v9;
  v11 = v17 + 24 * v10;
  v12 = v9[19];
  v15 = v9[18];
  v16 = v11;
  v14 = &v15[v12];
  sub_10002E0A8((v9 + 26), &v17, &v16, &v15, &v14, a3, a4, a5);
  return a1;
}

uint64_t sub_100030750(uint64_t a1, void *a2)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_1001BABD0;
  sub_1000307FC(a1, a2);
  *(a1 + 144) = a1 + 168;
  v3 = *(a1 + 8);
  *(a1 + 152) = xmmword_1001BABD0;
  sub_100013068(a1 + 144, v3);
  return a1;
}

void sub_1000307CC(_Unwind_Exception *a1)
{
  if (v1[20])
  {
    if (v3 != *v2)
    {
      operator delete(*v2);
    }
  }

  sub_100012FF8(v1);
  _Unwind_Resume(a1);
}

void sub_1000307FC(uint64_t a1, void *a2)
{
  v4 = (a2 + 3);
  v3 = *a2;
  if (v4 == v3)
  {
    sub_100030874(a1, v3, v3 + 24 * a2[1]);

    sub_100012D58(a2);
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = *(a2 + 1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_100030874(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (v5 <= a1[2])
  {
    sub_1000309C4(a1, a2, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3), *a1, a1[1]);
    a1[1] = v5;
  }

  else
  {
    if (v5 >= 0x555555555555556)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v7 = operator new(a3 - a2);
    v8 = *a1;
    if (*a1)
    {
      sub_100012D58(a1);
      if (a1 + 3 != v8)
      {
        operator delete(v8);
      }
    }

    a1[1] = 0;
    a1[2] = v5;
    *a1 = v7;

    sub_100030968(a1, a2, a3);
  }
}

void *sub_100030968(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = *result + 24 * v3;
  v5 = v4;
  if (a2 != a3)
  {
    do
    {
      *v5 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(v5 + 16) = *(a2 + 16);
      a2 += 24;
      v5 += 24;
    }

    while (a2 != a3);
    v3 = result[1];
  }

  result[1] = v3 - 0x5555555555555555 * ((v5 - v4) >> 3);
  return result;
}

void sub_1000309C4(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  v9 = a5 - a3;
  if (a5 >= a3)
  {
    if (a3)
    {
      v15 = a3;
      do
      {
        v16 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v17 = *(a4 + 8);
        *a4 = v16;
        if (v17)
        {
          sub_10000E984(v17);
        }

        *(a4 + 16) = *(v8 + 2);
        v8 = (v8 + 24);
        a4 += 24;
        --v15;
      }

      while (v15);
    }

    if (a5 != a3)
    {
      v18 = a3 - a5;
      v19 = (a4 + 8);
      do
      {
        if (*v19)
        {
          sub_10000E984(*v19);
        }

        v19 += 3;
        v14 = __CFADD__(v18++, 1);
      }

      while (!v14);
    }
  }

  else
  {
    if (a5)
    {
      v10 = a2;
      v8 = (a2 + 24 * a5);
      v11 = a5;
      do
      {
        v12 = *v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v13 = *(a4 + 8);
        *a4 = v12;
        if (v13)
        {
          sub_10000E984(v13);
        }

        *(a4 + 16) = *(v10 + 2);
        v10 = (v10 + 24);
        a4 += 24;
        --v11;
      }

      while (v11);
    }

    if (a3 != a5)
    {
      do
      {
        *a4 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        *(a4 + 16) = *(v8 + 2);
        v8 = (v8 + 24);
        a4 += 24;
        v14 = __CFADD__(v9++, 1);
      }

      while (!v14);
    }
  }
}

void sub_100030AE4(uint64_t a1)
{
  sub_10002EDA8(&v2, a1, (a1 + 8), 1);
  sub_100030B94(a1 + 496, &v2);
  if (v4)
  {
    sub_10000E984(v4);
  }

  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_10002EDA8(&v2, a1, (a1 + 96), 0);
  sub_100030B94(a1 + 272, &v2);
  if (v4)
  {
    sub_10000E984(v4);
  }

  if (v3)
  {
    sub_10000E984(v3);
  }
}

uint64_t sub_100030B94(uint64_t a1, uint64_t a2)
{
  sub_10002E794(a1, a2);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 152);
  v5 = *(a2 + 136);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 136) = v5;
  *(a1 + 152) = v4;
  v6 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v7 = *(a1 + 184);
  *(a1 + 176) = v6;
  if (v7)
  {
    sub_10000E984(v7);
  }

  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v8;
  return a1;
}

uint64_t sub_100030C20(uint64_t a1)
{
  sub_100033424(a1 + 224);
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

uint64_t sub_100030C64(uint64_t a1)
{
  *a1 = off_10021B378;
  sub_100030CF8((a1 + 56));
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1001F8FA0;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

int *sub_100030CF8(int *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return sub_100149A14(result + 2, v1);
  }

  return result;
}

uint64_t sub_100030D24(uint64_t a1)
{
  *a1 = off_10021B3A0;
  sub_100030D98((a1 + 48));
  *a1 = off_1001F8FA0;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

int *sub_100030D98(int *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return sub_100149AD8(result + 2, v1);
  }

  return result;
}

uint64_t sub_100030DC4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 144) = -1;
  sub_100030E0C(a1, a2);
  return a1;
}

uint64_t sub_100030E0C(uint64_t a1, uint64_t a2)
{
  result = sub_100030E70(a1);
  v5 = *(a2 + 144);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1001F8FE0[v5])(&v6, a2);
    *(a1 + 144) = v5;
  }

  return result;
}

uint64_t sub_100030E70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  if (v2 != -1)
  {
    result = (off_1001F8FC8[v2])(&v3, result);
  }

  *(v1 + 144) = -1;
  return result;
}

void sub_100030EC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_10021B378;
  sub_100030CF8((a2 + 56));
  v3 = *(a2 + 48);
  *(a2 + 48) = 0;
  if (v3)
  {
    operator delete[]();
  }

  *a2 = off_1001F8FA0;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a2 + 24) = v4;

    operator delete(v4);
  }
}

void sub_100030F74(uint64_t a1, uint64_t a2)
{
  *a2 = off_10021B3A0;
  sub_100030D98((a2 + 48));
  *a2 = off_1001F8FA0;
  v3 = *(a2 + 16);
  if (v3)
  {
    *(a2 + 24) = v3;

    operator delete(v3);
  }
}

uint64_t sub_100031090(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001F9008;
  a2[1] = v2;
  return result;
}

void sub_1000310BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100030254(&v5, a2);
  v7 += *(a1 + 8);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100030254(a3, &v5);
  if (v6)
  {
    sub_10000E984(v6);
  }
}

void sub_100031128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100031140(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001F9078))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000311F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_100148204(a6, v18);
  v16 = sub_100031808(a4, a5, v14, v15, v18);
  sub_100147DC0(a1, v16);
  sub_1000320D4(v18);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  sub_1000302E0(v23, a4);
  sub_100033298(v26, a4 + 224);
  sub_1000302E0(v19, a5);
  sub_100033298(v22, a5 + 224);
  v17 = sub_100031B1C(v23, v19);
  sub_100033424(v22);
  if (v21)
  {
    sub_10000E984(v21);
  }

  if (v20)
  {
    sub_10000E984(v20);
  }

  sub_100033424(v26);
  if (v25)
  {
    sub_10000E984(v25);
  }

  if (v24)
  {
    sub_10000E984(v24);
  }

  *(a1 + 96) = v17;
  is_mul_ok(3 * v17, 0x18uLL);
  operator new[]();
}

void sub_10003162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100032234(v12 + 32);
  sub_1000320D4(va);
  sub_1000323C4(v11 + 25);
  sub_100032FF4(v11 + 22);
  sub_100031E48(v11 + 19);
  sub_1000330A8(v11 + 16);
  sub_100031E9C(v11 + 13);
  sub_100015888(v11, 0);
  sub_10001590C((v11 + 1));
  _Unwind_Resume(a1);
}

void sub_10003171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000320D4(va);
  JUMPOUT(0x100031714);
}

uint64_t sub_10003172C(uint64_t a1)
{
  (*(**(a1 + 72) + 152))(*(a1 + 72));
  sub_1000323C4((a1 + 200));
  sub_100032FF4((a1 + 176));
  if (*(a1 + 152))
  {
    if (*(a1 + 168))
    {
      *(a1 + 168) = 0;
    }

    *(a1 + 152) = 0;
    operator delete[]();
  }

  sub_1000330A8((a1 + 128));
  if (*(a1 + 104))
  {
    if (*(a1 + 120))
    {
      *(a1 + 120) = 0;
    }

    *(a1 + 104) = 0;
    operator delete[]();
  }

  sub_100015888(a1, 0);
  sub_10001590C(a1 + 8);
  return a1;
}

uint64_t sub_100031808(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (sub_10002DE0C(a1, a2))
  {
    return 0;
  }

  sub_100032004(a1);
  sub_100030464(v26, v37);
  if (v38)
  {
    sub_10000E984(v38);
  }

  v11 = v28 / a3 * a3;
  sub_100032050(v37, a1, a2);
  sub_100031EF0(v37, v33);
  sub_100031F48(v37, v29);
  v10 = 0;
  while (!sub_10002DE0C(v33, v29))
  {
    sub_100032004(v33);
    sub_100030254(v20, v24);
    v12 = *(a5 + 24);
    if (!v12)
    {
      sub_10001583C();
    }

    if ((*(*v12 + 48))(v12, v20))
    {
      v13 = v23 - v11 + v22;
      if (v13 % a3)
      {
        v14 = a3 - v13 % a3;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 + v13;
      v10 += v15;
      v11 += v15;
    }

    else
    {
      v16 = a3;
      if (!(v23 % a4))
      {
        if (!(v22 % a4))
        {
          v11 = v22 + v23;
          goto LABEL_20;
        }

        v16 = 0;
      }

      v17 = v16 + v10;
      if ((v22 + v23) % a4)
      {
        v18 = a3;
      }

      else
      {
        v18 = 0;
      }

      v10 = v17 + v18;
      v11 = (a4 - 1 + v22 + v23) / a4 * a4;
    }

LABEL_20:
    if (v21)
    {
      sub_10000E984(v21);
    }

    if (v25)
    {
      sub_10000E984(v25);
    }

    sub_10002E834(v33);
  }

  sub_100033424(&v32);
  if (v31)
  {
    sub_10000E984(v31);
  }

  if (v30)
  {
    sub_10000E984(v30);
  }

  sub_100033424(&v36);
  if (v35)
  {
    sub_10000E984(v35);
  }

  if (v34)
  {
    sub_10000E984(v34);
  }

  sub_100033424(&v43);
  if (v42)
  {
    sub_10000E984(v42);
  }

  if (v41)
  {
    sub_10000E984(v41);
  }

  sub_100033424(&v40);
  if (v39)
  {
    sub_10000E984(v39);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v10;
}

void sub_100031AA4(_Unwind_Exception *a1)
{
  if (STACK[0x360])
  {
    sub_10000E984(STACK[0x360]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100031B1C(uint64_t a1, uint64_t a2)
{
  sub_1000302E0(v10, a1);
  sub_100033298(v13, a1 + 224);
  sub_1000302E0(v6, a2);
  sub_100033298(v9, a2 + 224);
  for (i = 0; !sub_10002DE0C(v10, v6); ++i)
  {
    sub_10002E834(v10);
  }

  sub_100033424(v9);
  if (v8)
  {
    sub_10000E984(v8);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  sub_100033424(v13);
  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return i;
}

void sub_100031C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_100030C20(&a10);
  sub_100030C20(&a42);
  _Unwind_Resume(a1);
}

void sub_100031C78(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100032050(v18, a2, a3);
  sub_100031EF0(v18, v14);
  sub_100031F48(v18, v10);
  while (!sub_10002DE0C(v14, v10))
  {
    sub_100032004(v14);
    sub_100030254(&v5, v8);
    v4 = sub_100147EF8(a1, &v5, 0);
    if (v4 != v7)
    {
      sub_100148248(a1, &v5, v4, 0);
    }

    if (v6)
    {
      sub_10000E984(v6);
    }

    if (v9)
    {
      sub_10000E984(v9);
    }

    sub_10002E834(v14);
  }

  sub_100033424(&v13);
  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  sub_100033424(&v17);
  if (v16)
  {
    sub_10000E984(v16);
  }

  if (v15)
  {
    sub_10000E984(v15);
  }

  sub_100033424(&v24);
  if (v23)
  {
    sub_10000E984(v23);
  }

  if (v22)
  {
    sub_10000E984(v22);
  }

  sub_100033424(&v21);
  if (v20)
  {
    sub_10000E984(v20);
  }

  if (v19)
  {
    sub_10000E984(v19);
  }
}

void sub_100031DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100030C20(&a38);
  sub_100030C20(&a70);
  sub_100031FA0(&STACK[0x2E8]);
  _Unwind_Resume(a1);
}

void *sub_100031E48(void *result)
{
  if (*result)
  {
    if (result[2])
    {
      result[2] = 0;
    }

    *result = 0;
    operator delete[]();
  }

  return result;
}

void *sub_100031E9C(void *result)
{
  if (*result)
  {
    if (result[2])
    {
      result[2] = 0;
    }

    *result = 0;
    operator delete[]();
  }

  return result;
}

void *sub_100031FA0(void *a1)
{
  sub_100033424((a1 + 60));
  v2 = a1[55];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100033424((a1 + 28));
  v4 = a1[23];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_10000E984(v5);
  }

  return a1;
}

uint64_t sub_100032004(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    sub_10001583C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100032050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000302E0(a1, a2);
  sub_100033298(a1 + 224, a2 + 224);
  sub_1000302E0(a1 + 256, a3);
  sub_100033298(a1 + 480, a3 + 224);
  return a1;
}

uint64_t sub_1000320D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000321DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_1000321E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032234(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void *sub_10003233C(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100032378(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1000323C4(uint64_t *a1)
{
  if (*a1)
  {
    sub_100032420(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t *sub_100032420(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    do
    {
      v2[2] = --v1;
      result = (*v2 + 40 * v1);
      if (*(result + 8) == 1)
      {
        result = sub_100032478(result);
        v1 = v2[2];
      }
    }

    while (v1);
  }

  return result;
}

uint64_t *sub_100032478(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1000324AC(v2);
  }

  return a1;
}

void sub_1000324AC(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    v2 = *a1;
    v3 = *v2;
    if ((*(*v2 + 4) & 1) == 0)
    {
      v4 = *(a1 + 12);
      if (v4)
      {
        *&v5 = "lw_future_managed_setter<int>::put() [T = int, empty_value = 0]";
        *(&v5 + 1) = 34;
        v6 = 16;
        sub_1000325A8(v7, &v5);
        sub_100001FE8(v8, "managed future err ", 19);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_1000327DC(v7);
        std::ios::~ios();
        v2 = *a1;
        v3 = **a1;
      }

      else
      {
        v4 = *(a1 + 8);
      }

      *v3 = v4;
      *(v3 + 4) = 1;
      sub_100032F74(v2);
    }
  }
}

void sub_100032594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000326D0(va);
  _Unwind_Resume(a1);
}

void *sub_1000325A8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100032714(a1, a2);
  *a1 = off_1001F91B0;
  a1[45] = &off_1001F92B0;
  a1[46] = &off_1001F92D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F91B0;
  a1[45] = off_1001F9238;
  a1[46] = off_1001F9260;
  return a1;
}

void sub_1000326AC(_Unwind_Exception *a1)
{
  sub_1000327DC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000326D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000327DC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100032714(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F9348;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000327C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000327DC(uint64_t a1)
{
  *a1 = off_1001F9348;
  sub_100032C1C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100032948(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000327DC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000329B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000329EC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100032A58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000327DC(v1);

  return std::ios::~ios();
}

void sub_100032AA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000327DC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100032B08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000327DC(v1);

  return std::ios::~ios();
}

void sub_100032B68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000327DC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100032BE4(uint64_t a1)
{
  sub_1000327DC(a1);

  operator delete();
}

uint64_t sub_100032C1C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100032D90((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100032D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100032D90(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 198;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 198;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100032F74(unint64_t *a1)
{
  v2 = *a1;
  if (*(v2 + 8))
  {
    v3 = sub_100192398(v2);
    std::mutex::lock(v3);
    if (*(*a1 + 8))
    {
      v4 = sub_100192424(*a1);
      std::condition_variable::notify_all(v4);
    }

    std::mutex::unlock(v3);
  }
}

uint64_t *sub_100032FF4(uint64_t *a1)
{
  if (*a1)
  {
    sub_100033050(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t *sub_100033050(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    do
    {
      v2[2] = --v1;
      result = (*v2 + 56 * v1);
      if (*(result + 8) == 1)
      {
        result = sub_100032478(result);
        v1 = v2[2];
      }
    }

    while (v1);
  }

  return result;
}

uint64_t *sub_1000330A8(uint64_t *a1)
{
  if (*a1)
  {
    sub_100033104(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

void sub_100033104(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    do
    {
      while (1)
      {
        v3 = v1 - 1;
        a1[2] = v1 - 1;
        v4 = *(*a1 + 112 * v1 - 104);
        if (!v4)
        {
          break;
        }

        sub_10000E984(v4);
        v1 = a1[2];
        if (!v1)
        {
          return;
        }
      }

      --v1;
    }

    while (v3);
  }
}

uint64_t sub_100033164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = a2;
  v9 = a1 + 232;
  sub_1000302E0(a1 + 8, a3);
  sub_100033298(v9, a3 + 224);
  sub_1000302E0(a1 + 264, a4);
  sub_100033298(a1 + 488, a4 + 224);
  sub_1000302E0(a1 + 520, a3);
  sub_100033298(a1 + 744, a3 + 224);
  *(a1 + 776) = a5;
  return a1;
}

void sub_1000331F8(_Unwind_Exception *a1)
{
  sub_10000FF88(v1 + 520);
  sub_100030C20(v1 + 264);
  sub_100030C20(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000302E0(a1, a2);
  sub_100033298(v5 + 224, a3);
  return a1;
}

uint64_t sub_100033298(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100033330(void *a1)
{
  sub_100147730(a1);
  sub_100033374(a1 + 28);

  return sub_10003172C(a1);
}

void *sub_100033374(void *a1)
{
  (*(**a1 + 152))(*a1);
  sub_100033424((a1 + 93));
  v2 = a1[88];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100033424((a1 + 61));
  v4 = a1[56];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[34];
  if (v5)
  {
    sub_10000E984(v5);
  }

  sub_100033424((a1 + 29));
  v6 = a1[24];
  if (v6)
  {
    sub_10000E984(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_10000E984(v7);
  }

  return a1;
}

uint64_t sub_100033424(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000334A4(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1000334DC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[5] + v5) / 0x22] + 120 * ((a1[5] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 112);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          sub_10000E984(v10);
        }

        v7 += 120;
        if (v7 - *v6 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 17;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 34;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10003363C(a1);
}

uint64_t sub_10003363C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_10003368C(uint64_t (*a1)(__int128 *), uint64_t *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v30[0] = 0;
  v39 = 0;
  while (!sub_10002DE0C(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v28 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = io_result_t (&)(const sg_entry &)]";
      *(&v28 + 1) = 119;
      v29 = 2;
      sub_1000339C8(v25, &v28);
      sub_100001FE8(v27, "sg: ", 4);
      sub_100192838(v27, a2);
      std::ostream::~ostream();
      sub_100033C40(v25);
      std::ios::~ios();
    }

    v25[0] = 0;
    v25[1] = v10;
    v26 = 2;
    sub_100093990(a2, v25, &v28);
    v12 = a1(&v28);
    v14 = v12;
    v15 = v12 >= 0 || v12 == 0;
    v16 = v15;
    if (v15)
    {
      v17 = v13;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      v18 = a2[26];
      if (v18 > v13 || *(a3 + 208) - v18 < v12)
      {
        sub_1000302E0(v24, a2);
        sub_10002F174(v24, a3, v17, v14, a4, v25);
        sub_100033B34(v30, v25);
        sub_10002F23C(v25);
        sub_10000FF88(v24);
        sub_1000302E0(v25, &v36);
        sub_100030B94(a2, v25);
        sub_10000FF88(v25);
        sub_1000302E0(v25, &v33);
        sub_100030B94(a3, v25);
        sub_10000FF88(v25);
      }

      if (a5)
      {
        sub_10002E60C(a2, v14);
      }

      else
      {
        sub_10002E6D0(a2, v14);
      }

      v9 += v14;
    }

    else
    {
      if (v12 >= 0)
      {
        v19 = v12;
      }

      else
      {
        v19 = -v12;
      }

      v21 = -v19;
    }

    if (*(&v28 + 1))
    {
      sub_10000E984(*(&v28 + 1));
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v21 = v9;
LABEL_35:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000E984(v38);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v32)
    {
      sub_10000E984(v32);
    }

    if (v31)
    {
      sub_10000E984(v31);
    }
  }

  return v21;
}

void sub_100033944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_10000FF88(&a41);
  if (STACK[0x3D8])
  {
    sub_10000E984(STACK[0x3D8]);
  }

  sub_10002F2A8(&STACK[0x440]);
  _Unwind_Resume(a1);
}

void *sub_1000339C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100033B78(a1, a2);
  *a1 = off_1001F93D0;
  a1[45] = &off_1001F94D0;
  a1[46] = &off_1001F94F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F93D0;
  a1[45] = off_1001F9458;
  a1[46] = off_1001F9480;
  return a1;
}

void sub_100033ACC(_Unwind_Exception *a1)
{
  sub_100033C40(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100033AF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100033C40(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100033B34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    sub_1000343D8(a1, a2);
  }

  else
  {
    sub_100030578(a1, a2);
    *(a1 + 720) = 1;
  }

  return a1;
}

uint64_t sub_100033B78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F9568;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100033C28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100033C40(uint64_t a1)
{
  *a1 = off_1001F9568;
  sub_100034080(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100033DAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100033C40(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100033E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100033E50(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100033EBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100033C40(v1);

  return std::ios::~ios();
}

void sub_100033F08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100033C40(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100033F6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100033C40(v1);

  return std::ios::~ios();
}

void sub_100033FCC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100033C40(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100034048(uint64_t a1)
{
  sub_100033C40(a1);

  operator delete();
}

uint64_t sub_100034080(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000341F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}