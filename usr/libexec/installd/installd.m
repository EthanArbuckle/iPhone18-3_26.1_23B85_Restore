uint64_t sub_1000016D0(const char *a1)
{
  size = 0;
  v15 = 0;
  v2 = open(a1, 256);
  if (v2 < 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v6 = __error();
      strerror(*v6);
      MOLogWrite();
    }

    v4 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  if (fgetxattr(v2, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0) != -1)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_1000577C8(v3, &v15, &size))
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v7 = __error();
      strerror(*v7);
      MOLogWrite();
    }

    v5 = 0;
    v4 = 0;
    goto LABEL_32;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x47D90AE5uLL);
    *__error() = 0;
    v8 = size;
    if (v8 != pread(v3, v4, size, 0))
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    close(v3);
    v9 = open(a1, 258);
    if ((v9 & 0x80000000) == 0)
    {
      v3 = v9;
      if (fsetxattr(v9, "com.apple.installd.hidden_archs_fat_header", v4, size, 0, 2))
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *__error() = 0;
        v13 = size;
        if (v13 == pwrite(v3, v15, size, 0))
        {
          if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
          {
            MOLogWrite();
          }

          goto LABEL_7;
        }

        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
LABEL_31:
          v5 = 0;
          goto LABEL_32;
        }
      }

LABEL_30:
      v10 = __error();
      strerror(*v10);
      MOLogWrite();
      goto LABEL_31;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v12 = __error();
      strerror(*v12);
      MOLogWrite();
    }

LABEL_12:
    v5 = 0;
    goto LABEL_33;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
  {
    goto LABEL_6;
  }

LABEL_5:
  MOLogWrite();
LABEL_6:
  v4 = 0;
LABEL_7:
  v5 = 1;
LABEL_32:
  close(v3);
LABEL_33:
  if (v15)
  {
    free(v15);
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

uint64_t sub_100001AA8(const char *a1, char *a2, _BYTE *a3)
{
  *a3 = 0;
  v5 = open(a1, 256);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = fgetxattr(v5, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0);
    if (v7 < 0)
    {
      if (*__error() == 93)
      {
        v9 = 0;
        goto LABEL_17;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v16 = __error();
        strerror(*v16);
        MOLogWrite();
      }

LABEL_32:
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      v9 = 0;
LABEL_36:
      v14 = 0;
LABEL_37:
      v12 = v6;
      goto LABEL_38;
    }

    v8 = v7;
    v9 = malloc_type_malloc(v7, 0xD8332BFBuLL);
    v10 = fgetxattr(v6, "com.apple.installd.hidden_archs_fat_header", v9, v8, 0, 0);
    if (v10 < 0)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
LABEL_27:
        if (v9)
        {
          free(v9);
        }

        goto LABEL_32;
      }

      v15 = __error();
      strerror(*v15);
    }

    else
    {
      if (v8 == v10)
      {
        if (v8)
        {
          v11 = mkstemp(a2);
          if (v11 != -1)
          {
            v12 = v11;
            if (fcopyfile(v6, v11, 0, 0xAu))
            {
              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
              {
                goto LABEL_53;
              }
            }

            else
            {
              *__error() = 0;
              if (v8 == pwrite(v12, v9, v8, 0))
              {
                if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
                {
                  MOLogWrite();
                }

                v14 = 1;
                *a3 = 1;
LABEL_54:
                close(v6);
                if (v12 < 0)
                {
LABEL_39:
                  if (v9)
                  {
                    free(v9);
                  }

                  return v14;
                }

LABEL_38:
                close(v12);
                goto LABEL_39;
              }

              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
              {
LABEL_53:
                v14 = 0;
                goto LABEL_54;
              }
            }

            v19 = __error();
            strerror(*v19);
            MOLogWrite();
            goto LABEL_53;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            v18 = __error();
            strerror(*v18);
            MOLogWrite();
          }

          goto LABEL_36;
        }

LABEL_17:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          MOLogWrite();
        }

        v14 = 1;
        goto LABEL_37;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    MOLogWrite();
    goto LABEL_27;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v13 = __error();
    strerror(*v13);
    MOLogWrite();
  }

  return 0;
}

uint64_t sub_100001ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, CFErrorRef *a10)
{
  v10 = __chkstk_darwin();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v10;
  bzero(to, 0x400uLL);
  bzero(v289, 0x400uLL);
  bzero(&v287, 0x410uLL);
  v286[0] = v25;
  v286[1] = 0;
  v26 = fts_open_b(v286, 85, &stru_100090B70);
  if (!v26)
  {
    v41 = __error();
    strerror(*v41);
    v46 = sub_100003598("hardlink_copy_hierarchy", 746, v42, v43, 0, v44, @"fts_open of %s failed: %s", v45, v25);
    goto LABEL_24;
  }

  v27 = v26;
  if (!v22)
  {
    bzero(cf, 0x400uLL);
    if (__strlcpy_chk() < 0x400)
    {
      LOWORD(v251.st_dev) = 0;
      *__str = 0;
      if ((sub_100003994(cf, v289, &v251, __str) & 1) == 0)
      {
        v46 = sub_100003598("hardlink_copy_hierarchy", 786, v55, v56, *__str, v57, @"Failed to realpath parent of %s", v58, cf);
        v64 = *__str;
        if (!*__str)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!LOWORD(v251.st_dev) || (v251.st_dev & 0xF000) == 0x4000)
      {
        v83 = 0;
        v84 = 0;
        goto LABEL_41;
      }

      v54 = sub_100003598("hardlink_copy_hierarchy", 792, v55, v56, 0, v57, @"Entity exists at %s but it's not a directory", v58, v289);
      goto LABEL_14;
    }

    v51 = @"Destination path was too long";
    v52 = 779;
LABEL_13:
    v54 = sub_100003598("hardlink_copy_hierarchy", v52, v47, v48, 0, v49, v51, v50, v242);
LABEL_14:
    v46 = v54;
    goto LABEL_23;
  }

  if (!realpath_DARWIN_EXTSN(v24, v289))
  {
    v53 = __error();
    strerror(*v53);
    LOBYTE(v242) = v24;
    v51 = @"realpath of '%s' failed at element '%s': %s";
    v52 = 752;
    goto LABEL_13;
  }

  memset(&v251, 0, sizeof(v251));
  v28 = open(v22, 256);
  if (v28 < 0)
  {
    v59 = __error();
    strerror(*v59);
    v36 = sub_100003598("open_delta_manifest", 416, v60, v61, 0, v62, @"Could not open %s: %s", v63, v22);
LABEL_20:
    v46 = sub_100003598("hardlink_copy_hierarchy", 758, v37, v38, v36, v39, @"Failed to open manifest %s", v40, v22);
    if (v36)
    {
      v64 = v36;
LABEL_22:
      CFRelease(v64);
    }

LABEL_23:
    fts_close(v27);
    goto LABEL_24;
  }

  v29 = v28;
  if (fstat(v28, &v251))
  {
    v30 = __error();
    strerror(*v30);
    v35 = sub_100003598("open_delta_manifest", 421, v31, v32, 0, v33, @"Could not stat %s: %s", v34, v22);
LABEL_7:
    v36 = v35;
LABEL_8:
    close(v29);
    goto LABEL_20;
  }

  v66 = mmap(0, v251.st_size, 1, 1026, v29, 0);
  if (v66 == -1)
  {
    v162 = __error();
    strerror(*v162);
    v35 = sub_100003598("open_delta_manifest", 435, v163, v164, 0, v165, @"Failed to map file at %s; error %s", v166, v22);
    goto LABEL_7;
  }

  v249 = v66;
  if (madvise(v66, v251.st_size, 2) && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    v67 = __error();
    LOBYTE(v242) = strerror(*v67);
    MOLogWrite();
  }

  v68 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040113C0ABBuLL);
  if (!v68)
  {
    v36 = sub_100003598("open_delta_manifest", 446, v69, v70, 0, v71, @"Failed to allocate command stream object", v72, v242);
    munmap(v249, v251.st_size);
    goto LABEL_8;
  }

  v73 = v68;
  *v68 = v249;
  v68[1] = v251.st_size;
  v68[2] = 0;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  v309 = 0u;
  v308 = 0u;
  v307 = 0u;
  v306 = 0u;
  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  v302 = 0u;
  v301 = 0u;
  v300 = 0u;
  v299 = 0u;
  *cf = 0u;
  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  *__str = 0u;
  v255 = 0u;
  v253 = 0;
  v252 = 0;
  v297 = 0;
  v296 = 0;
  if ((sub_100003CD0(v68, 0, &v252, 6uLL) & 1) == 0)
  {
    v167 = @"Failed to read magic";
    v168 = 299;
LABEL_168:
    v78 = sub_100003598("validate_stream", v168, v74, v75, 0, v76, v167, v77, v242);
    goto LABEL_169;
  }

  if (v252 ^ 0x44617069 | v253)
  {
    v78 = sub_100003598("validate_stream", 305, v74, v75, 0, v76, @"Stream had invalid magic: %s", v77, &v252);
LABEL_169:
    v169 = v78;
LABEL_170:
    v36 = sub_100003598("open_delta_manifest", 456, v79, v80, v169, v81, @"Invalid manifest file at %s", v82, v22);
    if (v169)
    {
      CFRelease(v169);
    }

    munmap(v249, v251.st_size);
    free(v73);
    goto LABEL_8;
  }

  if ((sub_100003CD0(v73, 0, &v296, 0xAuLL) & 1) == 0)
  {
    v167 = @"Failed to read version from manifest header";
    v168 = 310;
    goto LABEL_168;
  }

  v170 = strtol(&v296, 0, 10);
  if ((v170 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v78 = sub_100003598("validate_stream", 318, v171, v172, 0, v173, @"Manifest had invalid version: %ld; expected 1, 2, or 3", v174, v170);
    goto LABEL_169;
  }

  v248 = v170;
  if ((sub_100003CD0(v73, 0, cf, 0x200uLL) & 1) == 0)
  {
    v167 = @"Failed to read manifest source version";
    v168 = 323;
    goto LABEL_168;
  }

  v247 = v73;
  if (v20)
  {
    v179 = v18;
  }

  else
  {
    v179 = "";
  }

  if (v20)
  {
    v180 = v20;
  }

  else
  {
    v180 = "0";
  }

  if (v20)
  {
    v181 = " ";
  }

  else
  {
    v181 = "";
  }

  if (v179)
  {
    v182 = v179;
  }

  else
  {
    v182 = "";
  }

  if (snprintf(__str, 0x200uLL, "%s%s%s", v180, v181, v182) > 0x1FF)
  {
    v187 = sub_100003598("validate_stream", 350, v183, v184, 0, v185, @"Incoming expected source version string %s%s%s was too long", v186, v180);
LABEL_240:
    v169 = v187;
LABEL_241:
    v73 = v247;
    goto LABEL_170;
  }

  for (i = __str; *i == 10; ++i)
  {
    *i = 32;
LABEL_236:
    ;
  }

  if (*i)
  {
    goto LABEL_236;
  }

  if (strcmp(__str, cf))
  {
    v242 = cf;
    v209 = @"Got manifest for version %s, but expected version %s";
    v210 = 357;
    goto LABEL_239;
  }

  if (v248 < 2)
  {
    goto LABEL_262;
  }

  v295 = 0;
  v294 = 0u;
  v293 = 0u;
  v292 = 0u;
  *v291 = 0u;
  if (!sub_100003CD0(v247, 0, v291, 0x41uLL))
  {
    v209 = @"Failed to read stream";
    v210 = 375;
LABEL_239:
    v187 = sub_100003598("validate_stream", v210, v205, v206, 0, v207, v209, v208, v242);
    goto LABEL_240;
  }

  if (!v16)
  {
    v209 = @"expected_infoplisthash is NULL";
    v210 = 371;
    goto LABEL_239;
  }

  if (memcmp(v16, v291, 0x41uLL))
  {
    v209 = @"Compare of info plist hash failed";
    v210 = 367;
    goto LABEL_239;
  }

  if (v248 != 2)
  {
    v291[0] = 0;
    if ((sub_100003D48(v247, v12, v291) & 1) == 0)
    {
      v169 = sub_100003598("validate_stream", 384, v229, v230, v291[0], v231, @"Failed to validate supported devices", v232, v242);
      if (v291[0])
      {
        CFRelease(v291[0]);
      }

      goto LABEL_241;
    }
  }

LABEL_262:
  close(v29);
  cf[0] = 0;
  if ((sub_100003728(v247, &v287, cf, v233, v234, v235, v236, v237) & 1) == 0)
  {
    v46 = sub_100003598("hardlink_copy_hierarchy", 765, v238, v239, cf[0], v240, @"Failed to read first manifest command", v241, v242);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v176 = 0;
    v122 = -1;
    v83 = v247;
    goto LABEL_248;
  }

  v84 = v287 != 120;
  v83 = v247;
LABEL_41:
  v250 = strlen(v25);
  v85 = fts_read(v27);
  if (!v85)
  {
    v175 = 0;
LABEL_177:
    if (v22 && v287 != 120)
    {
      v217 = sub_100003598("hardlink_copy_hierarchy", 1110, v86, v87, 0, v89, @"Got done processing bundle but there were still commands remaining in manifest.", v91, v242);
      goto LABEL_246;
    }

    v46 = 0;
    if (a9)
    {
      *a9 = v175;
    }

    v122 = -1;
    v176 = 1;
    if (v83)
    {
      goto LABEL_248;
    }

    goto LABEL_249;
  }

  v92 = v85;
  v93 = 0;
  v246 = v83;
  while (2)
  {
    to[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
    fts_info = v92->fts_info;
    if (fts_info > 0xD || ((1 << fts_info) & 0x314A) == 0)
    {
      v99 = 0;
      v100 = 0;
    }

    else
    {
      v96 = &v92->fts_path[v250];
      v98 = *v96;
      v97 = v96 + 1;
      if (v98 == 47)
      {
        v99 = v97;
      }

      else
      {
        v99 = &v92->fts_path[v250];
      }

      if (((fts_info != 6) & v84) == 1 && !sub_100003488(v288, v99))
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          LOBYTE(v242) = v287;
          MOLogWrite();
        }

        v100 = 1;
      }

      else
      {
        v100 = 0;
      }

      fts_info = v92->fts_info;
    }

    if (fts_info > 7)
    {
      if ((fts_info - 12) < 2)
      {
        if (v100 && (v287 == 43 || v287 == 45))
        {
          goto LABEL_150;
        }

        LOWORD(v251.st_dev) = 0;
        *__str = 0;
        if (sub_100003B5C(v289, v99, to, &v251, __str))
        {
          if (LOWORD(v251.st_dev))
          {
            v217 = sub_100003598("hardlink_copy_hierarchy", 855, v101, v102, 0, v103, @"Entity with mode 0%o exists at symlink location in dest path %s", v104, v251.st_dev);
            goto LABEL_246;
          }

          v105 = v84;
          v106 = v93;
          v107 = qword_1000A9720;
          if (qword_1000A9720)
          {
            p_fts_path = &v92->fts_path;
            fts_path = v92->fts_path;
            if (*(qword_1000A9720 + 44) <= 6 || (v242 = v92->fts_path, MOLogWrite(), v107 = qword_1000A9720, fts_path = *p_fts_path, qword_1000A9720))
            {
              if (*(v107 + 44) >= 7)
              {
                LOBYTE(v242) = fts_path;
                MOLogWrite();
              }
            }
          }

          else
          {
            p_fts_path = &v92->fts_path;
            fts_path = v92->fts_path;
          }

          v137 = readlink(fts_path, cf, 0x400uLL);
          if (v137 < 0)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
LABEL_211:
              v188 = __error();
              strerror(*v188);
              MOLogWrite();
            }

LABEL_212:
            v217 = sub_100003598("hardlink_copy_hierarchy", 862, v138, v87, 0, v89, @"Failed to copy symlink %s to %s", v91, *p_fts_path);
            goto LABEL_246;
          }

          *(cf + v137) = 0;
          if (symlink(cf, to))
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              goto LABEL_211;
            }

            goto LABEL_212;
          }

          v93 = v106;
LABEL_131:
          v84 = v105;
LABEL_150:
          v93 += v92->fts_statp->st_blocks;
          goto LABEL_151;
        }

        v46 = sub_100003598("hardlink_copy_hierarchy", 848, v101, v102, *__str, v103, @"Failed to make dest path for symlink %s", v104, v99);
        v178 = *__str;
        if (!*__str)
        {
          goto LABEL_247;
        }

        goto LABEL_214;
      }

      if (fts_info == 8)
      {
        goto LABEL_71;
      }

      if (fts_info == 10)
      {
        goto LABEL_187;
      }

      goto LABEL_151;
    }

    if (fts_info > 3)
    {
      if (fts_info == 6)
      {
        LOWORD(cf[0]) = 0;
        if (sub_100003B5C(v289, v99, to, cf, 0))
        {
          if ((cf[0] & 0xF000) == 0x4000 && (st_mode = v92->fts_statp->st_mode, st_mode != LOWORD(cf[0])))
          {
            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              v242 = to;
              MOLogWrite();
              LOWORD(st_mode) = v92->fts_statp->st_mode;
            }

            if (chmod(to, st_mode))
            {
              v157 = __error();
              strerror(*v157);
              v217 = sub_100003598("hardlink_copy_hierarchy", 1060, v158, v159, 0, v160, @"chmod of '%s' failed: %s", v161, to);
              goto LABEL_246;
            }
          }

          else if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
          {
            LOBYTE(v242) = cf[0];
            MOLogWrite();
          }
        }
      }

      else if (fts_info == 4 || fts_info == 7)
      {
LABEL_187:
        fts_errno = v92->fts_errno;
        v244 = v92->fts_path;
        v217 = sub_100003598("hardlink_copy_hierarchy", 1078, v86, v87, 0, v89, @"FTS in %s returned an error %d for path '%s'", v91, "hardlink_copy_hierarchy");
        goto LABEL_246;
      }

      goto LABEL_151;
    }

    if (fts_info == 1)
    {
      if (v100 && (v287 == 45 || v287 == 43))
      {
        if (fts_set(v27, v92, 4))
        {
          v218 = __error();
          strerror(*v218);
          v217 = sub_100003598("hardlink_copy_hierarchy", 1012, v219, v220, 0, v221, @"Failed to skip directory %s: %s", v222, v99);
          goto LABEL_246;
        }

        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          LOBYTE(v242) = v99;
          MOLogWrite();
        }

LABEL_152:
        cf[0] = 0;
        if (sub_100003728(v83, &v287, cf, v87, v88, v89, v90, v91))
        {
          if (v287 == 120)
          {
            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              MOLogWrite();
            }

            v84 = 0;
          }

LABEL_158:
          v92 = fts_read(v27);
          if (!v92)
          {
            v175 = v93 << 9;
            goto LABEL_177;
          }

          continue;
        }

        v177 = sub_100003598("hardlink_copy_hierarchy", 1094, v153, v154, cf[0], v155, @"Failed to read next manifest command", v156, v242);
LABEL_184:
        v46 = v177;
        v178 = cf[0];
        if (!cf[0])
        {
          goto LABEL_247;
        }

LABEL_214:
        CFRelease(v178);
        goto LABEL_247;
      }

      *__str = 0;
      cf[0] = 0;
      if ((sub_100003B5C(v289, v99, to, __str, cf) & 1) == 0)
      {
        v177 = sub_100003598("hardlink_copy_hierarchy", 1023, v132, v87, cf[0], v89, @"Failed to make dest path for directory %s", v91, v99);
        goto LABEL_184;
      }

      if (*__str && (*__str & 0xF000) != 0x4000)
      {
        v217 = sub_100003598("hardlink_copy_hierarchy", 1030, v132, v87, 0, v89, @"Non-directory entity with mode 0%o exists at directory location in dest path %s", v91, __str[0]);
        goto LABEL_246;
      }

      if (*__str)
      {
        if (*__str != (v92->fts_statp->st_mode | 0x80) && chmod(to, v92->fts_statp->st_mode | 0x80))
        {
          v228 = __error();
          strerror(*v228);
          v217 = sub_100003598("hardlink_copy_hierarchy", 1043, v133, v134, 0, v135, @"Failed to make destination directory %s writable: %s", v136, to);
          goto LABEL_246;
        }
      }

      else
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          v242 = to;
          MOLogWrite();
        }

        if (mkdir(to, v92->fts_statp->st_mode | 0x80))
        {
          v223 = __error();
          strerror(*v223);
          v217 = sub_100003598("hardlink_copy_hierarchy", 1038, v224, v225, 0, v226, @"mkdir of '%s' failed: %s", v227, to);
          goto LABEL_246;
        }
      }

LABEL_151:
      if (!v100)
      {
        goto LABEL_158;
      }

      goto LABEL_152;
    }

    break;
  }

  if (fts_info != 3)
  {
    goto LABEL_151;
  }

LABEL_71:
  if (v287 == 94)
  {
    v110 = v100;
  }

  else
  {
    v110 = 0;
  }

  if (v110 != 1)
  {
    if (v100 && (v287 == 45 || v287 == 43))
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        LOBYTE(v242) = v99;
        MOLogWrite();
      }

      goto LABEL_150;
    }

    *__str = 0;
    cf[0] = 0;
    if ((sub_100003B5C(v289, v99, to, __str, cf) & 1) == 0)
    {
      v177 = sub_100003598("hardlink_copy_hierarchy", 975, v126, v127, cf[0], v128, @"Failed to make dest path for file %s", v129, v99);
      goto LABEL_184;
    }

    if (*__str)
    {
      v217 = sub_100003598("hardlink_copy_hierarchy", 982, v126, v127, 0, v128, @"Entity with mode 0%o exists at file location in dest path %s", v129, __str[0]);
      goto LABEL_246;
    }

    v105 = v84;
    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      v242 = v92->fts_path;
      MOLogWrite();
    }

    if (link(v92->fts_path, to))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v130 = v92->fts_path;
        v131 = __error();
        strerror(*v131);
        LOBYTE(v242) = v130;
        v83 = v246;
        MOLogWrite();
      }

      if (copyfile(v92->fts_path, to, 0, 0xC000Fu))
      {
        v211 = v92->fts_path;
        v212 = __error();
        strerror(*v212);
        v217 = sub_100003598("hardlink_copy_hierarchy", 991, v213, v214, 0, v215, @"copyfile of %s to %s failed: %s", v216, v211);
        goto LABEL_246;
      }
    }

    goto LABEL_131;
  }

  LOWORD(v291[0]) = 0;
  bzero(cf, 0x400uLL);
  *&v251.st_dev = 0;
  if ((sub_100003B5C(v289, v99, to, v291, &v251) & 1) == 0)
  {
    v46 = sub_100003598("hardlink_copy_hierarchy", 882, v111, v112, *&v251.st_dev, v113, @"Failed to make dest path for file %s", v114, v99);
    v178 = *&v251.st_dev;
    if (!*&v251.st_dev)
    {
      goto LABEL_247;
    }

    goto LABEL_214;
  }

  v115 = v93;
  v116 = v291[0];
  if (LOWORD(v291[0]))
  {
    if (snprintf(cf, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v217 = sub_100003598("hardlink_copy_hierarchy", 894, v117, v118, 0, v119, @"failed to make newfile path: %s.XXXXXXX", v120, to);
      goto LABEL_246;
    }

    v121 = mkstemp(cf);
    if (v121 == -1)
    {
      v189 = __error();
      strerror(*v189);
      v217 = sub_100003598("hardlink_copy_hierarchy", 899, v190, v191, 0, v192, @"mktemp failed for %s : %s", v193, cf);
      goto LABEL_246;
    }

    v122 = v121;
    v245 = v84;
    v123 = v92->fts_path;
    bzero(__str, 0x400uLL);
    if (!v14 || sub_100003488(v123, v14))
    {
      v124 = 0;
      goto LABEL_144;
    }

    if (snprintf(__str, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v46 = sub_100003598("hardlink_copy_hierarchy", 914, v139, v140, 0, v141, @"failed to make newfile path: %s.XXXXXXX", v142, to);
      goto LABEL_225;
    }

    LOBYTE(v296) = 0;
    if (sub_100001AA8(v14, __str, &v296))
    {
      v124 = v296;
      if (v296)
      {
        v123 = __str;
      }

LABEL_144:
      if (sub_100053E30(v123, to, v122))
      {
        v194 = sub_100003598("hardlink_copy_hierarchy", 934, v147, v148, 0, v149, @"patch_file failed for:\n\t%s\n\t%s\n\t%s", v150, v123);
      }

      else
      {
        if (!fchmod(v122, v116))
        {
          close(v122);
          rename(cf, to, v151);
          if (!v152)
          {
            if (v124)
            {
              unlink(v123);
            }

            v93 = v115;
            v83 = v246;
            v84 = v245;
            goto LABEL_150;
          }

          v198 = __error();
          strerror(*v198);
          v46 = sub_100003598("hardlink_copy_hierarchy", 948, v199, v200, 0, v201, @"rename of %s to %s failed: %s", v202, cf);
          v122 = -1;
LABEL_224:
          v83 = v246;
LABEL_225:
          v176 = 0;
          if (v83)
          {
            goto LABEL_248;
          }

          goto LABEL_249;
        }

        v195 = __error();
        v242 = cf;
        strerror(*v195);
        v196 = @"chmod failed for %s : %s";
        v197 = 939;
LABEL_220:
        v194 = sub_100003598("hardlink_copy_hierarchy", v197, v143, v144, 0, v145, v196, v146, v242);
      }

      v46 = v194;
      goto LABEL_224;
    }

    v196 = @"Failed to create hidden archs executable";
    v197 = 920;
    goto LABEL_220;
  }

  v217 = sub_100003598("hardlink_copy_hierarchy", 889, v111, v112, 0, v113, @"Entity does not exist at file location in dest path %s", v114, to);
LABEL_246:
  v46 = v217;
LABEL_247:
  v176 = 0;
  v122 = -1;
  if (v83)
  {
LABEL_248:
    munmap(*v83, v83[1]);
    free(v83);
  }

LABEL_249:
  fts_close(v27);
  if ((v122 & 0x80000000) == 0)
  {
    close(v122);
  }

  if (v176)
  {
    return 1;
  }

LABEL_24:
  if (a10)
  {
    result = 0;
    *a10 = v46;
  }

  else
  {
    if (v46)
    {
      CFRelease(v46);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100003488(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  bzero(buffer, 0x400uLL);
  bzero(__s2, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(v3, buffer, 1024) || !CFStringGetFileSystemRepresentation(v4, __s2, 1024))
  {
    v5 = 0xFFFFFFFFLL;
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = strcmp(buffer, __s2);
  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

LABEL_7:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

CFErrorRef sub_100003598(const char *a1, int a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7, uint64_t a8, char a9)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"FunctionName", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SourceFileLine", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a5)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, a5);
  }

  v15 = CFStringCreateWithFormatAndArguments(0, 0, a7, &a9);
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  CFDictionaryAddValue(Mutable, kCFErrorLocalizedDescriptionKey, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = CFErrorCreate(0, @"MIInstallerDeltaErrorDomain", 1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t sub_100003728(void *a1, char *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v8 = a1[2];
  if (v8 >= v9)
  {
    sub_100057B58();
  }

  if (v8 + 1 >= v9)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      LOBYTE(v28) = 1;
      MOLogWrite();
    }

    v24 = @"Failed to read command from manifest";
    v25 = 508;
  }

  else
  {
    v13 = *(*a1 + v8);
    *a2 = v13;
    ++a1[2];
    v14 = (v13 - 43) > 0x33 || ((1 << (v13 - 43)) & 0x8000000040005) == 0;
    if (v14 && v13 != 120)
    {
      v26 = sub_100003598("read_next_manifest_command", 514, a3, a4, 0, a6, @"Stream had invalid command: %hhu", a8, v13);
      goto LABEL_28;
    }

    v15 = a2 + 1;
    v16 = sub_100003CD0(a1, 1, a2 + 1, 0x400uLL);
    v17 = *a2;
    if ((v16 & 1) == 0)
    {
      v26 = sub_100003598("read_next_manifest_command", 520, a3, a4, 0, a6, @"Failed to read arg1 of command %hhu", a8, *a2);
      goto LABEL_28;
    }

    if (v17 != 61)
    {
      goto LABEL_12;
    }

    *__str = 0;
    v30 = 0;
    v32 = 0;
    v31 = 0;
    if ((sub_100003CD0(a1, 1, __str, 0x19uLL) & 1) == 0)
    {
      v26 = sub_100003598("read_next_manifest_command", 528, v18, v19, 0, v20, @"Failed to read arg2 of command %hhu", v21, *a2);
      goto LABEL_28;
    }

    v22 = strtoll(__str, 0, 10);
    *(a2 + 129) = v22;
    if (v22)
    {
      v17 = *a2;
LABEL_12:
      if (v17 != 120 || *v15 == 69 && a2[2] == 79 && a2[3] == 70)
      {
        return 1;
      }

      v24 = @"Got malformed EOF marker";
      v25 = 542;
      goto LABEL_27;
    }

    v28 = __str;
    v24 = @"Invalid touch time %s found for path %s";
    v25 = 535;
  }

LABEL_27:
  v26 = sub_100003598("read_next_manifest_command", v25, a3, a4, 0, a6, v24, a8, v28);
LABEL_28:
  if (a3)
  {
    v23 = 0;
    *a3 = v26;
  }

  else
  {
    if (v26)
    {
      CFRelease(v26);
    }

    return 0;
  }

  return v23;
}

uint64_t sub_100003994(const char *a1, char *a2, mode_t *a3, CFErrorRef *a4)
{
  v8 = strlen(a1);
  v13 = v8;
  if (a1[v8 - 1] == 47)
  {
    a1[v8 - 1] = 0;
    v13 = v8 - 1;
  }

  do
  {
    v14 = &a1[v13 - 1];
    if (v14 < a1)
    {
      v30 = a1;
      v15 = @"Failed to find parent of '%s'";
      v16 = 588;
LABEL_10:
      v17 = sub_100003598("realpath_parent_no_symlink", v16, v9, v10, 0, v11, v15, v12, v30);
LABEL_11:
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    --v13;
  }

  while (*v14 != 47);
  if (!v13)
  {
    strlcpy(a2, a1, 0x400uLL);
    goto LABEL_14;
  }

  a1[v13] = 0;
  if (!realpath_DARWIN_EXTSN(a1, a2))
  {
    v24 = __error();
    strerror(*v24);
    v17 = sub_100003598("realpath_parent_no_symlink", 599, v25, v26, 0, v27, @"realpath of '%s' failed at element '%s': %s", v28, a1);
    a1[v13] = 47;
    if (!a4)
    {
LABEL_17:
      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }

LABEL_12:
    v18 = 0;
    *a4 = v17;
    return v18;
  }

  a1[v13] = 47;
  if (strlcat(a2, &a1[v13], 0x400uLL) >= 0x400)
  {
    v15 = @"Path was too long";
    v16 = 608;
    goto LABEL_10;
  }

LABEL_14:
  memset(&v31, 0, sizeof(v31));
  if (lstat(a2, &v31))
  {
    st_mode = 0;
    goto LABEL_22;
  }

  st_mode = v31.st_mode;
  if ((v31.st_mode & 0xF000) == 0xA000)
  {
    v17 = sub_100003598("realpath_parent_no_symlink", 618, v19, v20, 0, v21, @"Found symlink at destination path %s; this is not allowed.", v22, a2);
    goto LABEL_11;
  }

LABEL_22:
  *a3 = st_mode;
  return 1;
}

uint64_t sub_100003B5C(const char *a1, const char *a2, char *a3, mode_t *a4, CFErrorRef *a5)
{
  bzero(__str, 0x400uLL);
  if (snprintf(__str, 0x400uLL, "%s/%s", a1, a2) < 0x400)
  {
    cf = 0;
    if ((sub_100003994(__str, a3, a4, &cf) & 1) == 0)
    {
      v23 = sub_100003598("make_and_check_dest_path", 701, v15, v16, cf, v17, @"Failed to realpath parent of %s", v18, __str);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_7;
    }

    if (!sub_100003488(__str, a3))
    {
      return 1;
    }

    v14 = sub_100003598("make_and_check_dest_path", 709, v19, v20, 0, v21, @"realpath'd destpath '%s' is different from non-realpath '%s'", v22, a3);
  }

  else
  {
    v14 = sub_100003598("make_and_check_dest_path", 695, v10, v11, 0, v12, @"Dest path '%s/%s' was too long", v13, a1);
  }

  v23 = v14;
LABEL_7:
  if (a5)
  {
    result = 0;
    *a5 = v23;
  }

  else
  {
    if (v23)
    {
      CFRelease(v23);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100003CD0(void *a1, int a2, _BYTE *a3, unint64_t a4)
{
  v4 = a1[2];
  if (v4 >= a1[1])
  {
    sub_100057B84();
  }

  if (!a4)
  {
    return 0;
  }

  for (i = 1; ; ++i)
  {
    v6 = *(*a1 + v4);
    a1[2] = v4 + 1;
    v7 = v6 == 9 ? a2 : 0;
    if (v6 == 10 || v7 != 0)
    {
      break;
    }

    *a3++ = v6;
    v4 = a1[2];
    if (v4 >= a1[1] || i >= a4)
    {
      return 0;
    }
  }

  *a3 = 0;
  return 1;
}

uint64_t sub_100003D48(void *a1, const __CFArray *a2, CFErrorRef *a3)
{
  v10 = malloc_type_calloc(1uLL, 0x800uLL, 0x9CD77285uLL);
  if (!v10)
  {
    v33 = @"Failed to malloc buffer for line";
    v34 = 200;
LABEL_23:
    v31 = sub_100003598("validate_supported_devices", v34, v6, v7, 0, v8, v33, v9, v41);
    free(v10);
    goto LABEL_24;
  }

  if ((sub_100003CD0(a1, 0, v10, 0x800uLL) & 1) == 0)
  {
    v33 = @"Failed to read supported devices from stream";
    v34 = 205;
    goto LABEL_23;
  }

  if (!*v10)
  {
    if (!a2)
    {
      free(v10);
      return 1;
    }

    v33 = @"Existing app lists supported devices but there were none in the manifest";
    v34 = 211;
    goto LABEL_23;
  }

  v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (!v11)
  {
    v33 = @"Failed to create patch supported devices string";
    v34 = 222;
    goto LABEL_23;
  }

  v12 = v11;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v11, @" ");
  v18 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || !CFArrayGetCount(ArrayBySeparatingStrings))
  {
    v36 = sub_100003598("validate_supported_devices", 228, v14, v15, 0, v16, @"Failed to split patch supported devices string", v17, v41);
LABEL_32:
    v31 = v36;
    free(v10);
    v32 = 0;
    Mutable = 0;
    v20 = 0;
    goto LABEL_41;
  }

  if (!a2)
  {
    v36 = sub_100003598("validate_supported_devices", 234, v14, v15, 0, v16, @"Target app had no supported devices but patch did: %@", v17, v18);
    goto LABEL_32;
  }

  v42 = v12;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  Count = CFArrayGetCount(a2);
  v22 = CFArrayGetCount(v18);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v43.location = 0;
      v43.length = v22;
      if (!CFArrayContainsValue(v18, v43, ValueAtIndex))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      v26 = CFArrayGetValueAtIndex(v18, j);
      v44.location = 0;
      v44.length = Count;
      if (!CFArrayContainsValue(a2, v44, v26))
      {
        CFArrayAppendValue(v20, v26);
      }
    }
  }

  if (Mutable && CFArrayGetCount(Mutable))
  {
    v31 = sub_100003598("validate_supported_devices", 242, v27, v28, 0, v29, @"Expected supported devices had devices that were not in patch: %@", v30, Mutable);
    v32 = 0;
    v12 = v42;
  }

  else
  {
    v12 = v42;
    if (v20 && CFArrayGetCount(v20))
    {
      v31 = sub_100003598("validate_supported_devices", 247, v37, v38, 0, v39, @"Patch listed devices that were not in expected supported devices: %@", v40, v20);
      v32 = 0;
    }

    else
    {
      v31 = 0;
      v32 = 1;
    }
  }

  free(v10);
LABEL_41:
  CFRelease(v12);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v32)
  {
    return 1;
  }

LABEL_24:
  if (a3)
  {
    result = 0;
    *a3 = v31;
  }

  else
  {
    if (v31)
    {
      CFRelease(v31);
    }

    return 0;
  }

  return result;
}

id sub_1000040C8()
{
  os_unfair_lock_lock(&unk_1000A9598);
  WeakRetained = objc_loadWeakRetained(&qword_1000A95A0);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileInstallationHelperServiceProtocol];
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = [NSSet setWithObjects:v1, v2, v3, objc_opt_class(), 0];
    [WeakRetained setClasses:v4 forSelector:"stagingLocationForInstallLocation:withinStagingSubsytem:usingUniqueName:completion:" argumentIndex:0 ofReply:0];

    v5 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v5 forSelector:"stagingLocationForSystemContentWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v6 forSelector:"stagingLocationForUserContentWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    [WeakRetained setClasses:v8 forSelector:"allStagingLocationsWithinSubsystem:completion:" argumentIndex:0 ofReply:1];

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    [WeakRetained setClasses:v9 forSelector:"stagingLocationForURL:withinStagingSubsytem:usingUniqueName:completion:" argumentIndex:0 ofReply:1];

    objc_storeWeak(&qword_1000A95A0, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_1000A9598);

  return WeakRetained;
}

id sub_100004308()
{
  os_unfair_lock_lock(&unk_1000A95A8);
  WeakRetained = objc_loadWeakRetained(&qword_1000A95B0);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileInstallerDelegateProtocol];
    objc_storeWeak(&qword_1000A95B0, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_1000A95A8);

  return WeakRetained;
}

id sub_100004390()
{
  os_unfair_lock_lock(&unk_1000A95B8);
  WeakRetained = objc_loadWeakRetained(&qword_1000A95C0);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileInstallerProtocol];
    v1 = ICLKnownBundleRecordClasses();
    v2 = [v1 setByAddingObject:objc_opt_class()];

    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
    [WeakRetained setClasses:v6 forSelector:"checkCapabilities:withOptions:completion:" argumentIndex:0 ofReply:0];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    [WeakRetained setClasses:v8 forSelector:"uninstallIdentifiers:withOptions:completion:" argumentIndex:0 ofReply:1];

    [WeakRetained setClasses:v2 forSelector:"installURL:identity:targetingDomain:options:returningResultInfo:completion:" argumentIndex:1 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:"fetchInfoForContainerizedAppWithIdentity:inDomain:options:completion:" argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:"fetchInfoForFrameworkAtURL:options:completion:" argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:"cancelUpdateForStagedIdentifiers:completion:" argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:"finalizeStagedInstallForIdentifier:returningResultInfo:completion:" argumentIndex:1 ofReply:1];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    [WeakRetained setClasses:v10 forSelector:"reconcileContentsOnKnownOSModules:completion:" argumentIndex:0 ofReply:0];

    objc_storeWeak(&qword_1000A95C0, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_1000A95B8);

  return WeakRetained;
}

void sub_100004660(id a1)
{
  qword_1000A95C8 = objc_alloc_init(MIIPAPatcherFileManager);

  _objc_release_x1();
}

void sub_100007164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007188(uint64_t a1, int a2, id a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_MD5_Update((v4 + 32), v7, v8);
  return 1;
}

void sub_1000073A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000073C4(uint64_t a1, int a2, id a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA256_Update((v4 + 32), v7, v8);
  return 1;
}

void sub_100007A4C(id a1)
{
  v1 = qword_1000A95D8;
  qword_1000A95D8 = &off_10009B680;
}

uint64_t sub_100009864()
{
  if (qword_1000A95F0 != -1)
  {
    sub_100057C98();
  }

  return dword_1000A95E8;
}

void sub_10000989C(id a1)
{
  v1 = +[UMUserManager sharedManager];
  v2 = [v1 currentUser];
  dword_1000A95E8 = [v2 uid];

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }
}

id sub_100009938()
{
  v0 = +[UMUserManager sharedManager];
  v1 = [v0 allUsers];

  return v1;
}

id sub_10000998C()
{
  if (qword_1000A9600 != -1)
  {
    sub_100057CAC();
  }

  v1 = qword_1000A95F8;

  return v1;
}

void sub_1000099D0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.installd.LaunchServicesRegistrationQueue", v3);
  v2 = qword_1000A95F8;
  qword_1000A95F8 = v1;
}

id sub_100009A34(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = v1[2](v1);

    if (!v4)
    {
      break;
    }

    v5 = [v4 domain];
    if ([v5 isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v4, "code") == 4097)
    {

      if (v3 >= 5)
      {
        break;
      }
    }

    else
    {
      v6 = [v4 domain];
      if (![v6 isEqualToString:NSCocoaErrorDomain] || objc_msgSend(v4, "code") != 4099)
      {

        break;
      }

      if (v3 > 4)
      {
        break;
      }
    }

    ++v3;
    v2 = v4;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v8 = v4;
      MOLogWrite();
    }

    sleep(1u);
  }

  return v4;
}

void sub_100009BA8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = objc_alloc_init(SDRDiagnosticReporter);
  v15 = [v14 signatureWithDomain:v13 type:v12 subType:v11 subtypeContext:v10 detectedProcess:@"installd" triggerThresholdValues:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009D5C;
  v18[3] = &unk_100090CB0;
  v16 = v15;
  v19 = v16;
  v17 = v9;
  v20 = v17;
  if (([v14 snapshotWithSignature:v16 delay:0 events:v17 payload:0 actions:v18 reply:0.0] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100057CC0(v16);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }
}

uint64_t sub_100009D5C(uint64_t a1, void *a2)
{
  v12 = [a2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v12 BOOLValue];
    v4 = qword_1000A9720;
    if (v3)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v6 = *(a1 + 32);
        v9 = *(a1 + 40);
LABEL_10:
        v4 = MOLogWrite();
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v8 = *(a1 + 32);
      v11 = *(a1 + 40);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_1000A9720;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v10 = *(a1 + 40);
      v7 = *(a1 + 32);
      goto LABEL_10;
    }
  }

  return _objc_release_x2(v4);
}

void sub_10000A160(void *a1)
{
  v1 = a1;
  if ([v1 isTransient])
  {
    v2 = [v1 identifier];
    v5 = 0;
    v3 = [v1 removeUnderlyingContainerWaitingForDeletion:0 error:&v5];
    v4 = v5;
    if (v3)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_9;
    }

    MOLogWrite();
LABEL_9:
  }
}

void sub_10000C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C2C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C2E0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [MILaunchServicesOperationManager registerInstalledInfo:v2 forIdentity:v3 inDomain:1 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

__CFString *sub_10000C51C(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"DiskImage";
  }

  else if (a1 == 2)
  {
    v2 = @"OSModule";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"Unknown MIAttachedEntityType %lu", a1];
  }

  return v2;
}

uint64_t sub_10000C648(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A9608 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_10000C954()
{
  v0 = +[MIDaemonConfiguration sharedInstance];
  v1 = [v0 dataDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"DiskImageMountPaths.plist" isDirectory:0];

  return v2;
}

id sub_10000C9CC()
{
  v0 = +[MIDaemonConfiguration sharedInstance];
  v1 = [v0 dataDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"OSModulePaths.plist" isDirectory:0];

  return v2;
}

void sub_10000CA44(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_10000CAF4(v2);
    [*(a1 + 40) setMountInfo:v3];
  }

  else
  {
    [*(a1 + 40) _onQueue_resetDiskImagePaths];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = sub_10000CAF4(v4);
    [*(a1 + 40) setOsModuleInfo:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 _onQueue_resetOSModulePaths];
  }
}

id sub_10000CAF4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
        v9 = [v8 URLByAppendingPathComponent:@"Applications" isDirectory:1];

        v10 = +[MIDaemonConfiguration sharedInstance];
        v11 = [v10 _bundleIDMapForAppsInDirectory:v9];
        [v2 setObject:v11 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return v2;
}

id sub_10000D0DC(uint64_t a1)
{
  [*(a1 + 32) _onQueue_resetDiskImagePaths];
  v2 = *(a1 + 32);

  return [v2 _onQueue_resetOSModulePaths];
}

void sub_10000D3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D40C(uint64_t a1)
{
  v2 = [*(a1 + 32) mountInfo];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) osModuleInfo];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (!v5)
    {
      return;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_10000D584(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) osModuleInfo];
    [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    v5 = *(a1 + 32);
    v10 = [v5 osModuleInfo];
    v6 = sub_10000C9CC();
    v7 = @"OSModulePaths";
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) mountInfo];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

    v5 = *(a1 + 32);
    v10 = [v5 mountInfo];
    v6 = sub_10000C954();
    v7 = @"DiskImageMountPaths";
  }

  [v5 _onQueue_saveInfo:v10 withTopLevelKey:v7 atURL:v6];
}

void sub_10000D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D7AC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v10 = [*(a1 + 32) osModuleInfo];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];

    if (!v11)
    {
      return;
    }

    v12 = [*(a1 + 32) osModuleInfo];
    [v12 removeObjectForKey:*(a1 + 40)];

    v6 = *(a1 + 32);
    v7 = [v6 osModuleInfo];
    v8 = sub_10000C9CC();
    v9 = @"OSModulePaths";
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = [*(a1 + 32) mountInfo];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) mountInfo];
      [v5 removeObjectForKey:*(a1 + 40)];

      v6 = *(a1 + 32);
      v7 = [v6 mountInfo];
      v8 = sub_10000C954();
      v9 = @"DiskImageMountPaths";
LABEL_7:
      [v6 _onQueue_saveInfo:v7 withTopLevelKey:v9 atURL:v8];

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void sub_10000DA3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void sub_10000DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DC48(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPath];
  if (v2 && [*(a1 + 40) hasPrefix:v2])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 32) _onQueue_infoForEntityType:*(a1 + 56)];
    v4 = v3;
    if (v3)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(a1 + 40) hasPrefix:{*(*(&v10 + 1) + 8 * i), v10}])
            {
              *(*(*(a1 + 48) + 8) + 24) = 1;
              goto LABEL_16;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

void sub_10000DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DEE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DEF8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_infoForEntityType:*(a1 + 48)];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 allKeys];
    v4 = [NSSet setWithArray:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v2 = v7;
  }
}

void sub_10000E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E0E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_infoForEntityType:*(a1 + 56)];
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000E198;
    v5[3] = &unk_100090E38;
    v6 = *(a1 + 40);
    v3 = v2;
    v4 = *(a1 + 48);
    v7 = v3;
    v8 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_10000E198(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKeyedSubscript:a1[4]];
  v7 = a1[5];
  if (v7)
  {
    v11 = v6;
    v8 = [v6 copy];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v6 = v11;
    LOBYTE(v7) = 1;
  }

  *a4 = v7;
}

void sub_10000E30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E324(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_infoForEntityType:*(a1 + 56)];
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000E3D0;
    v5[3] = &unk_100090E60;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = v3;
    v7 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_10000E3D0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *a4 = 0;
  }
}

void sub_10000E51C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_infoForEntityType:*(a1 + 48)];
  if (v2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000E5C4;
    v3[3] = &unk_100090E88;
    v4 = *(a1 + 40);
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }
}

void sub_10000E5C4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 allKeys];
  [v5 addObjectsFromArray:v6];

  *a4 = 0;
}

uint64_t sub_10000E87C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  if ([v4 isEqualToString:@"app"])
  {
    v56 = 0;
    v5 = [MIExecutableBundle bundleForURL:v3 error:&v56];
    v6 = v56;
    v7 = v6;
    if (!v5)
    {
      if (sub_10001090C(v6) || qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_30;
      }

      v8 = [v3 path];
      MOLogWrite();
LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    v8 = [v5 identifier];
    v9 = +[MIGlobalConfiguration sharedInstance];
    v10 = [v9 primaryPersonaString];
    v55 = v7;
    v11 = [MILaunchServicesDatabaseGatherer entryForBundle:v5 inContainer:0 forPersona:v10 withError:&v55];
    v12 = v55;

    if (v11)
    {
      v13 = [*(a1 + 32) objectForKeyedSubscript:v8];

      if (!v13)
      {
        v45 = v12;
        v19 = objc_opt_new();
        v47 = v8;
        [*(a1 + 32) setObject:v19 forKeyedSubscript:v8];
        v38 = v19;
        v42 = v11;
        [v19 addObject:v11];
        v20 = objc_opt_new();
        v43 = v5;
        v21 = [v5 infoPlistSubset];
        v22 = a1;
        v23 = v21;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v40 = v22;
        v24 = *(v22 + 40);
        v25 = [v24 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v52;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v52 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v51 + 1) + 8 * i);
              v30 = [v23 objectForKeyedSubscript:v29];
              [v20 setObject:v30 forKeyedSubscript:v29];
            }

            v26 = [v24 countByEnumeratingWithState:&v51 objects:v57 count:16];
          }

          while (v26);
        }

        [v20 setObject:v3 forKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
        v31 = [v20 copy];
        [*(v40 + 48) setObject:v31 forKeyedSubscript:v47];

        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10000EDD0;
        v49[3] = &unk_100090ED8;
        v41 = v38;
        v50 = v41;
        v32 = objc_retainBlock(v49);
        v33 = +[MIGlobalConfiguration sharedInstance];
        v34 = [v33 primaryPersonaString];
        v48 = v45;
        v39 = v32;
        v36 = v32;
        v5 = v43;
        LOBYTE(v31) = [MILaunchServicesDatabaseGatherer enumerateAppExtensionsInBundle:v43 forPersona:v34 updatingAppExtensionParentID:0 ensureAppExtensionsAreExecutable:0 installProfiles:0 error:&v48 enumerator:v36];
        v7 = v48;

        if ((v31 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
        {
          MOLogWrite();
        }

        v8 = v47;
        v11 = v42;
        goto LABEL_28;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        [v5 identifier];
        v14 = v46 = v8;
        [v11 bundleURL];
        v16 = v15 = v11;
        [v16 path];
        v17 = v44 = v12;
        v18 = [v5 bundleURL];
        v37 = [v18 path];
        MOLogWrite();

        v11 = v15;
        v7 = v44;
        v8 = v46;
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v7 = v12;
    goto LABEL_28;
  }

LABEL_31:

  return 1;
}

void sub_10000EEF8(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EF9C;
  v4[3] = &unk_100090F28;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }
}

void sub_10000EF9C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v13 = v7;
    MOLogWrite();
  }

  v9 = +[MILaunchServicesOperationManager instanceForCurrentUser];
  v10 = *(a1 + 32);
  v14 = 0;
  v11 = [v9 registerInstalledInfo:v8 onMountPoint:v10 forAppBundleID:v7 error:&v14];
  v12 = v14;

  if (v11)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
LABEL_10:
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    goto LABEL_10;
  }

  *a4 = 0;
}

void sub_10000F608(uint64_t a1)
{
  v2 = +[MIFileManager defaultManager];
  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [v2 realPathForURL:v3 allowNonExistentPathComponents:0 isDirectory:1 error:&v15];
  v5 = v15;

  if (v4)
  {
    v6 = [v4 path];
    if ([*(a1 + 40) _isKnownPath:v6])
    {
      v7 = *(a1 + 40);
      v8 = [v4 URLByAppendingPathComponent:@"Applications" isDirectory:1];
      v13 = v5;
      v14 = 0;
      v9 = [v7 _onQueue_scanApps:v8 returnMapInfo:&v14 error:&v13];
      v10 = v14;
      v11 = v13;

      if (v9)
      {
        if ([v9 count])
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v12 = v6;
            MOLogWrite();
          }

          [*(a1 + 40) _onQueue_registerDiscoveredAppEntries:v9 onMountPoint:v4 completion:{0, v12}];
        }

        else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          MOLogWrite();
        }
      }

      v5 = v11;
      goto LABEL_19;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_14:
    MOLogWrite();
    goto LABEL_19;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v6 = [*(a1 + 32) path];
    goto LABEL_14;
  }

LABEL_20:
}

void sub_10000F940(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v18;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [LSPrecondition preconditionCheckingRelationshipToURL:*(a1 + 40) ofBundleWithIdentifier:v7 placeholderFetchBehavior:0 requiredRelationship:0, v13, v14];
        v9 = +[MILaunchServicesOperationManager instanceForCurrentUser];
        v16 = 0;
        v10 = [v9 unregisterAppForBundleID:v7 inDomain:3 operationType:2 precondition:v8 error:&v16];
        v11 = v16;

        if (v10)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v13 = v7;
            MOLogWrite();
          }
        }

        else
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v13 = v7;
            v14 = v11;
            MOLogWrite();
          }

          v12 = v11;

          v4 = v12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000FC2C(uint64_t a1)
{
  v2 = +[MILaunchServicesOperationManager instanceForCurrentUser];
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v2 unregisterAppsAtMountPoint:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = MIInstallerErrorDomain;
    v7 = [*(a1 + 32) path];
    v9 = sub_100010734("[MIDiskImageManager _onQueue_unregisterContentsOnDiskImageAtMountPoint:completion:]_block_invoke", 677, v6, 4, v5, 0, @"Unregistering applications failed for mount point %@", v8, v7);

    v5 = v9;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 56) - 1) < 2)
  {
    v9 = +[MIFileManager defaultManager];
    v10 = *(a1 + 32);
    v27 = 0;
    v11 = [v9 realPathForURL:v10 allowNonExistentPathComponents:0 isDirectory:1 error:&v27];
    v12 = v27;

    if (!v11)
    {
      v20 = MIInstallerErrorDomain;
      v21 = [*(a1 + 32) path];
      v23 = sub_100010734("[MIDiskImageManager unregisterContentsOnAttachedEntityAtURL:ofType:completion:]_block_invoke", 695, v20, 25, v12, 0, @"Failed to realpath image mount %@", v22, v21);

      (*(*(a1 + 48) + 16))();
      v12 = v23;
LABEL_19:

      goto LABEL_20;
    }

    v13 = [v11 path];
    v14 = *(a1 + 56);
    if (v14 == 2)
    {
      v15 = [*(a1 + 40) _onQueue_infoForEntityType:2];
      if (!v15)
      {
        v25 = sub_100010734("[MIDiskImageManager unregisterContentsOnAttachedEntityAtURL:ofType:completion:]_block_invoke", 706, MIInstallerErrorDomain, 4, 0, 0, @"Failed to fetch cached info for installed apps on module at %@", v16, v13);

        (*(*(a1 + 48) + 16))();
        v12 = v25;
LABEL_18:

        goto LABEL_19;
      }

      v17 = v15;
      v18 = [v15 objectForKeyedSubscript:v13];
      v19 = [v18 allKeys];

      v14 = *(a1 + 56);
    }

    else
    {
      v19 = 0;
    }

    if ([*(a1 + 40) _removePath:v13 fromEntityType:v14])
    {
      v24 = *(a1 + 40);
      if (*(a1 + 56) == 1)
      {
        [v24 _onQueue_unregisterContentsOnDiskImageAtMountPoint:v11 completion:*(a1 + 48)];
      }

      else
      {
        [v24 _onQueue_unregisterContentsOnOSModuleAtURL:v11 withBundleIDs:v19 completion:*(a1 + 48)];
      }
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48));
    }

    goto LABEL_18;
  }

  v12 = sub_100010734("[MIDiskImageManager unregisterContentsOnAttachedEntityAtURL:ofType:completion:]_block_invoke", 688, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly found unknown MIAttachedEntityTypeUnknown", a8, v26);
  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void sub_10001017C(id *a1)
{
  v2 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000DEE0;
  v20[4] = sub_10000DEF0;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        dispatch_group_enter(v2);
        v7 = a1[5];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10001040C;
        v13[3] = &unk_100090FF0;
        v15 = v20;
        v14 = v2;
        [v7 _onQueue_registerContentsOnAttachedEntityAtURL:v6 ofType:2 completion:v13];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v3);
  }

  v8 = [a1[5] internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010474;
  block[3] = &unk_100091018;
  v11 = a1[6];
  v12 = v20;
  dispatch_group_notify(v2, v8, block);

  _Block_object_dispose(v20, 8);
}

void sub_10001040C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_100010558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v22 = [NSString stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:MIFunctionNameErrorKey];

  v23 = [NSNumber numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:MISourceFileLineErrorKey];

  v24 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id sub_1000106F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100010558(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id sub_100010734(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100010774(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id sub_100010774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a5;
  v16 = sub_100010558(a1, a2, a3, a4, v15, a6, a7, a8);
  v17 = [v16 userInfo];
  v18 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];

  if (v15)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v19 = [v15 domain];
      [v15 code];
      v20 = [v15 userInfo];
      v22 = [v20 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  return v16;
}

BOOL sub_10001090C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = MIInstallerErrorDomain;
  if ([v2 isEqualToString:MIInstallerErrorDomain] && objc_msgSend(v1, "code") == 12)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 domain];
    if ([v5 isEqualToString:v3] && objc_msgSend(v1, "code") == 11)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v1 domain];
      if ([v6 isEqualToString:v3])
      {
        v4 = [v1 code] == 35;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *sub_1000109F8()
{
  v0 = container_error_copy_unlocalized_description();
  if (v0)
  {
    v1 = v0;
    v2 = [NSString stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = @"(container_error_copy_unlocalized_description returned NULL)";
  }

  return v2;
}

id sub_100010A60(void *a1, id a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

uint64_t sub_100010AB8(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id sub_100010BC4(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

uint64_t sub_100010D20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010E00;
  v8[3] = &unk_100091040;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_100010DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010E00(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_100010E9C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [NSString stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100010F2C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (sub_100010AB8(v1))
      {
        v2 = v1;
LABEL_7:
        v3 = v2;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v1;
        v2 = [NSArray arrayWithObjects:&v6 count:1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 allObjects];
        if (sub_100010AB8(v4))
        {
          v3 = v4;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v3 = 0;
LABEL_12:

  return v3;
}

BOOL sub_100011064(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

void sub_1000116BC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000A9720;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v4 = v2;
    v3 = MOLogWrite();
    v2 = v4;
  }

  _objc_release_x1(v3, v2);
}

void sub_1000118C4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v3 = v4;
    MOLogWrite();
  }

  [*(a1 + 32) invalidate];
}

void sub_1000119F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v3 = v4;
    MOLogWrite();
  }

  [*(a1 + 32) invalidate];
}

uint64_t sub_100012148(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return (*(a1[7] + 16))(a1[7], a1[4] != 0);
}

uint64_t sub_100012238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    a3 = 0;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, a3);
}

uint64_t sub_100012660(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return (*(a1[7] + 16))(a1[7], a1[4] != 0);
}

id sub_1000129E4()
{
  if (qword_1000A9620 != -1)
  {
    sub_100057D54();
  }

  v1 = qword_1000A9618;

  return v1;
}

id sub_100012A28(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 xpcConnection];
  v7 = v5;
  if (!v5)
  {
    v9 = sub_100010734("_ValidateMIAllowedSPIEntitlement", 193, MIInstallerErrorDomain, 2, 0, &off_10009C1A0, @"XPCConnection object was nil so failing entitlement check", v6, v14);
    goto LABEL_12;
  }

  v8 = [v5 valueForEntitlement:@"com.apple.private.mobileinstall.allowedSPI"];
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v8 isEqualToString:v4] & 1) == 0)
    {
LABEL_10:
      v10 = MIInstallerErrorDomain;
      v11 = [v3 clientName];
      v9 = sub_100010734("_ValidateMIAllowedSPIEntitlement", 191, v10, 2, 0, &off_10009C178, @"Process %@ is required to have an entitlement named %@ with an array containing %@ to call the MobileInstallation SPI.", v12, v11);

      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 containsObject:v4] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_11:

LABEL_12:

  return v9;
}

id sub_100012BD0(int a1)
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 installQOSOverride];

  if (v3)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v4 = v3;
  }

  else if (a1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v4 = 25;
  }

  else
  {
    v4 = 17;
  }

  v5 = dispatch_get_global_queue(v4, 0);

  return v5;
}

void sub_100012CC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012D78;
  v5[3] = &unk_100091160;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v2 _placeholderInstallForStagedIdentifier:v3 fromURL:v4 completion:v5];
  dispatch_semaphore_signal(*(a1 + 56));
}

uint64_t sub_100012D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    a3 = 0;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, a3);
}

void sub_1000132E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100013258);
  }

  JUMPOUT(0x1000132F4);
}

void sub_1000136B4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100013634);
  }

  JUMPOUT(0x1000136C8);
}

void sub_1000141B8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100014128);
  }

  JUMPOUT(0x1000141CCLL);
}

uint64_t sub_1000141D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000141EC(uint64_t a1)
{
  v11 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v11 count:1];
  v3 = [*(a1 + 40) identity];
  v4 = [*(a1 + 40) domain];
  v10 = 0;
  v5 = [MILaunchServicesOperationManager registerInstalledInfo:v2 forIdentity:v3 inDomain:v4 error:&v10];
  v6 = v10;
  v7 = v10;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
  }
}

id sub_1000146E0(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10001473C(void *a1)
{
  v1 = [a1 xpcConnection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueForEntitlement:@"com.apple.private.installcoordinationd.daemon"];
    v4 = sub_100010A60(v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

intptr_t sub_100014A70(uint64_t a1)
{
  [*(a1 + 32) _doInstallationForURL:*(a1 + 40) identity:*(a1 + 48) domain:*(a1 + 80) options:*(a1 + 56) operationType:*(a1 + 88) completion:*(a1 + 72)];
  v2 = *(a1 + 64);

  return dispatch_semaphore_signal(v2);
}

intptr_t sub_100015290(uint64_t a1)
{
  [*(a1 + 32) _stageURL:*(a1 + 40) identity:*(a1 + 48) domain:*(a1 + 80) options:*(a1 + 56) completion:*(a1 + 72)];
  v2 = *(a1 + 64);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_100015858(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return (*(a1[7] + 16))(a1[7], a1[4] != 0);
}

void sub_100015B5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015C08;
  v4[3] = &unk_100091160;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  [v2 _finalizeStagedUpdateForIdentifier:v3 completion:v4];
  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_100015C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    a3 = 0;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, a3);
}

uint64_t sub_100016188(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return (*(a1[7] + 16))(a1[7], a1[4] != 0);
}

void sub_100017538(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1000175ECLL);
}

void sub_1000175D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100017554);
  }

  _Unwind_Resume(a1);
}

void sub_1000182B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = v1;
  v5 = v2;
  [v3 xpcConnection];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100020F24;
  v6 = v36[3] = &unk_1000913A0;
  v37 = v6;
  v7 = objc_retainBlock(v36);
  v8 = +[MIDaemonConfiguration sharedInstance];
  v9 = [v8 dataDirectory];
  v10 = [v9 URLByAppendingPathComponent:@"LastLaunchServicesMap.plist"];

  v11 = +[MIFileManager defaultManager];
  [v11 removeItemAtURL:v10 error:0];

  v12 = sub_100012A28(v3, @"EnumerateInstalledAppsForLaunchServices");
  if (v12)
  {
    v13 = 0;
  }

  else if (v4 && ((objc_opt_class(), v14 = v4, (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), v14, v15, !v15))
  {
    v13 = 0;
    v12 = sub_100010734("_DoEnumerationOfInstalledAppsWithOptions", 1602, MIInstallerErrorDomain, 25, 0, 0, @"Options provided was not a dictionary", v16, v27);
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v27 = [v3 clientName];
      v29 = v4;
      MOLogWrite();
    }

    v17 = [v4 objectForKeyedSubscript:{@"UserRequestedAppDBRebuild", v27, v29}];
    v18 = sub_100010A60(v17, 0);

    if (v18)
    {
      v30[0] = 1;
      if ((container_invalidate_code_signing_cache() & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        v28 = v30[0];
        MOLogWrite();
      }
    }

    v19 = [v4 objectForKeyedSubscript:{@"OnlyScanPluginsUnderFrameworks", v28}];
    v20 = sub_100010A60(v19, 0);

    if (v20)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    sub_100054DB8();
    v13 = 1;
    v22 = [[MILaunchServicesDatabaseGatherer alloc] initWithOptions:v21 enumerator:v7];
    v35 = 0;
    [v22 performGatherWithError:&v35];
    v12 = v35;
  }

  if (v13)
  {
    sub_100054DC0();
  }

  [v3 sendDelegateMessagesComplete];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100021030;
  v30[3] = &unk_1000913C8;
  v23 = v3;
  v31 = v23;
  v24 = v4;
  v32 = v24;
  v25 = v5;
  v34 = v25;
  v26 = v12;
  v33 = v26;
  [v23 _callBlockAfterDelegateMessagesSend:"com.apple.installd.enumerate-installed-apps-complete" dispatchBlock:v30];
}

void sub_100018DBC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];

  if (v6)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:{v12, v12}];
      v8 = [v7 bundleURL];
      v9 = [v8 path];
      v10 = [v5 bundleURL];
      v11 = [v10 path];
      MOLogWrite();
    }
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v12];
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100019F68(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [*(a1 + 40) legacySinfInfoDictionary];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  LOBYTE(v3) = [v2 updateSINFMetadataForApplicationWithIdentifier:v3 operationUUID:v4 requestContext:v5 parsedSINFInfo:v6 saveObserver:0 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void sub_10001A780(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [*(a1 + 40) dictionaryRepresentation];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  LOBYTE(v3) = [v2 updateiTunesMetadataForApplicationWithIdentifier:v3 operationUUID:v4 requestContext:v5 metadataPlist:v6 saveObserver:0 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void sub_10001B944(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10001B9F4);
}

void sub_10001B9E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10001B95CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10001C034(void *a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = a1[4];
  v4 = objc_opt_new();
  v5 = a1[5];
  v6 = a1[8];
  v7 = a1[9];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  LOBYTE(v3) = [v2 updatePlaceholderMetadataForApplicationWithIdentifier:v3 operationUUID:v4 requestContext:v5 installType:v6 failure:v7 saveObserver:0 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[6] + 8) + 24) = v3;
}

void sub_10001D6AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) domain];
  v11 = 0;
  v6 = [MILaunchServicesOperationManager registerInstalledInfo:v2 forAppBundleID:v3 personas:v4 inDomain:v5 error:&v11];
  v7 = v11;
  v8 = v11;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
  }
}

void sub_10001E5CC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10001E544);
  }

  JUMPOUT(0x10001E5E0);
}

uint64_t sub_10001E5E8(void *a1)
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 hasInternalContent];

  if (v3)
  {
    if ((+[ICLFeatureFlags switchingPersonasEnabled]& 1) != 0)
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_9;
    }

    v7 = MIInstallerErrorDomain;
    v8 = @"Switching personas is not available on this platform";
    v9 = 3075;
  }

  else
  {
    v7 = MIInstallerErrorDomain;
    v8 = @"Switching personas is not available on this build";
    v9 = 3070;
  }

  v5 = sub_100010734("_IsPersonaSwitchingSupported", v9, v7, 4, 0, 0, v8, v4, v11);
  if (a1)
  {
    v5 = v5;
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

void sub_10001EBD4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10001EB50);
  }

  JUMPOUT(0x10001EBE8);
}

void sub_10001F0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10001F078);
  }

  JUMPOUT(0x10001F110);
}

void sub_10001FFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002000C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    v7 = objc_opt_new();
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    [v7 setTargetUserID:v8];

    v9 = +[LSApplicationWorkspace defaultWorkspace];
    v10 = [v5 legacyRecordDictionary];
    v20 = v10;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v19 = 0;
    v12 = [v9 registerApplicationForRebuildWithInfoDictionaries:v11 requestContext:v7 registrationError:&v19];
    v13 = v19;
    v14 = v19;

    if (v12)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v18 = [v5 bundleIdentifier];
        MOLogWrite();
      }

      v15 = *(*(a1 + 32) + 8);
      v17 = *(v15 + 40);
      v16 = (v15 + 40);
      if (!v17)
      {
        objc_storeStrong(v16, v13);
      }
    }
  }
}

void sub_100020E64(id a1)
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v1 = dispatch_semaphore_create([v3 nSimultaneousInstallations]);
  v2 = qword_1000A9618;
  qword_1000A9618 = v1;
}

void sub_100020EC0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mobileinstallation.enumeration", v3);
  v2 = qword_1000A9630;
  qword_1000A9630 = v1;
}

void sub_100020F24(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 remoteObjectProxyWithErrorHandler:&stru_100091378];
  v7 = [v6 legacyRecordDictionary];

  [v8 enumerateAppDictionary:v7 error:v5];
}

void sub_100020FC0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000A9720;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v4 = v2;
    v3 = MOLogWrite();
    v2 = v4;
  }

  _objc_release_x1(v3, v2);
}

uint64_t sub_100021030(uint64_t a1)
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v5 = [*(a1 + 32) clientName];
    v6 = *(a1 + 40);
    MOLogWrite();
  }

  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

uint64_t sub_100021808(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A9638;
  qword_1000A9638 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100023B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100023B98(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    if ([v7 isEqualToString:@"app"])
    {
      v8 = *(a1 + 72);
      v34 = 0;
      v9 = [MIExecutableBundle bundleForURL:v6 platformHint:v8 forceAsPlaceholder:1 error:&v34];
      v10 = v34;
      if (!v9)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        v25 = *(*(a1 + 56) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v10;

        goto LABEL_20;
      }

      v11 = [v9 identifier];
      if ([v11 isEqualToString:*(a1 + 32)])
      {
        v12 = *(*(a1 + 64) + 8);
        v15 = *(v12 + 40);
        v14 = (v12 + 40);
        v13 = v15;
        if (v15)
        {
          v33 = MIInstallerErrorDomain;
          v16 = *(a1 + 32);
          v17 = [v13 bundleURL];
          v18 = [v17 lastPathComponent];
          v32 = [v6 lastPathComponent];
          v20 = sub_100010734("[MIInstaller _bundleInDirectory:withBundleID:platformHint:error:]_block_invoke", 449, v33, 181, 0, &off_10009C218, @"Multiple .app bundles with the bundle ID %@ were found within the installable: both %@ and %@ have this bundle ID.", v19, v16);
          v21 = *(*(a1 + 56) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

LABEL_20:
          v23 = 0;
LABEL_28:

          goto LABEL_29;
        }

        objc_storeStrong(v14, v9);
      }

      else
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v27 = [v6 lastPathComponent];
          [*(a1 + 40) path];
          v31 = v30 = v11;
          v29 = v27;
          MOLogWrite();
        }

        [*(a1 + 48) addObject:{v11, v29, v30, v31}];
      }
    }

    else
    {
      if ([v7 isEqualToString:@"bundle"])
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_27;
        }
      }

      else if (![v7 isEqualToString:@"vpnplugin"] || qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_27;
      }

      v24 = [v6 path];
      MOLogWrite();
    }

LABEL_27:
    v23 = 1;
    goto LABEL_28;
  }

  v23 = 1;
LABEL_29:

  return v23;
}

void sub_100025AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025ACC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 8)
  {
    v7 = [v5 pathExtension];
    if ([v7 isEqualToString:@"mobileprovision"] && (v8 = MIInstallProfileAtURL(), v9 = *(a1 + 48), MIIsFatalMISProfileInstallationError()))
    {
      v10 = MIInstallerErrorDomain;
      v21[0] = @"LegacyErrorString";
      v21[1] = MILibMISErrorNumberKey;
      v22[0] = @"ApplicationVerificationFailed";
      v11 = [NSNumber numberWithInt:v8];
      v22[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      v13 = [*(a1 + 32) installURL];
      v20 = MIErrorStringForMISError();
      v15 = sub_100010734("[MIInstaller _installProvisioningProfilesAtStagingRootWithError:]_block_invoke", 1058, v10, 13, 0, v12, @"Failed to install local provisioning profile at staging root for %@ : 0x%08x (%@)", v14, v13);
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

void sub_100026A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100026A54(void *a1)
{
  v2 = a1[4];
  v6 = 0;
  v3 = [v2 performLaunchServicesRegistrationWithError:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v4);
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100027C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100027C74(void *a1)
{
  v2 = a1[4];
  v6 = 0;
  v3 = [v2 performLaunchServicesRegistrationWithError:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v4);
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100027EB8(id a1)
{
  v1 = os_log_create("com.apple.installd", "Signpost");
  v2 = qword_1000A9648;
  qword_1000A9648 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t start()
{
  [NSError _setFileNameLocalizationEnabled:0];
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  if (mach_timebase_info(&qword_1000A9728))
  {
    syslog(3, "Failed to get timebase info\n");
    qword_1000A9728 = &_mh_execute_header;
  }

  signal(15, 1);
  v103 = dispatch_get_global_queue(21, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v103);
  dispatch_source_set_event_handler(v2, &stru_1000914D0);
  dispatch_activate(v2);
  v3 = +[MIFileManager defaultManager];
  memset(&v111, 0, sizeof(v111));
  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 installdPath];

  if (stat([v5 fileSystemRepresentation], &v111))
  {
    v6 = *__error();
    v7 = [v5 URLByDeletingLastPathComponent];
    v8 = [v3 debugDescriptionForItemAtURL:v7];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100057E5C(v5, v6);
    }
  }

  else
  {
    st_mode = v111.st_mode;
    if ((v111.st_mode & 0xF000) != 0x4000 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100057F2C(v5);
    }

    v10 = +[MIDaemonConfiguration sharedInstance];
    v11 = [v10 uid];

    if (v11 != v111.st_uid && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100057FC4(v5, &v111.st_uid);
    }

    v12 = +[MIDaemonConfiguration sharedInstance];
    v13 = [v12 gid];

    if (v13 != v111.st_gid && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058068(v5, &v111.st_gid);
    }

    if ((st_mode & 0xFFF) != 0x1ED && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005810C(v5);
    }
  }

  v14 = +[MIDaemonConfiguration sharedInstance];
  v15 = [v14 currentUserDataDirectory];

  if (!v15)
  {
    sub_1000581B0();
  }

  v16 = +[MIDaemonConfiguration sharedInstance];
  v17 = [v16 installdLibraryPath];
  sub_100029B74(v3, v17, 0);

  v18 = +[MIDaemonConfiguration sharedInstance];
  v19 = [v18 logDirectory];
  sub_100029B74(v3, v19, 1);

  v20 = +[MIDaemonConfiguration sharedInstance];
  v21 = [v20 dataDirectory];
  sub_100029B74(v3, v21, 0);

  v22 = +[MIDaemonConfiguration sharedInstance];
  v23 = [v22 backedUpStateDirectory];
  sub_100029B74(v3, v23, 0);

  v24 = +[MIDaemonConfiguration sharedInstance];
  v25 = [v24 cachesDirectory];
  sub_100029B74(v3, v25, 0);

  v26 = +[MIDaemonConfiguration sharedInstance];
  v27 = [v26 journalStorageBaseURL];
  sub_100029B74(v3, v27, 0);

  v28 = +[MIDaemonConfiguration sharedInstance];
  v29 = [v28 launchServicesOperationStorageBaseURL];
  sub_100029B74(v3, v29, 0);

  v30 = +[MIDaemonConfiguration sharedInstance];
  v31 = [v30 logDirectory];
  v32 = [v31 URLByAppendingPathComponent:@"mobile_installation.log" isDirectory:0];

  v33 = sem_open("installd.firstboot_check", 0);
  v34 = v33;
  if (v33 != -1)
  {
    sem_close(v33);
    v35 = 0;
    goto LABEL_32;
  }

  v36 = +[MIDaemonConfiguration sharedInstance];
  v37 = [v36 roleUserMigrationMarkerFilePath];
  v38 = [v3 itemDoesNotExistAtURL:v37];

  if (!v38)
  {
    goto LABEL_31;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v39 = +[MIHelperServiceClient sharedInstance];
  v110 = 0;
  v40 = [v39 migrateMobileContentWithError:&v110];
  v35 = v110;

  if ((v40 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v92 = v35;
      MOLogWrite();
    }

LABEL_31:
    v35 = 0;
  }

LABEL_32:
  v101 = v1;
  context = v0;
  qword_1000A9720 = MOLogOpen();
  if (!qword_1000A9720)
  {
    syslog(3, "Failed to set up rotating logs at path %s", [v32 fileSystemRepresentation]);
  }

  v41 = +[MIDaemonConfiguration sharedInstance];
  [v41 allowsInternalSecurityPolicy];

  [v32 fileSystemRepresentation];
  MOLogEnableDiskLogging();
  ICLSetLoggingHandle();
  v42 = +[MIHelperServiceClient sharedInstance];
  v109 = v35;
  v43 = [v42 wipeStagingRootAndSetUpPerUserDataDirWithError:&v109];
  v44 = v109;

  if ((v43 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v93 = v44;
      MOLogWrite();
    }

    v44 = 0;
  }

  v45 = +[MIHelperServiceFrameworkClient sharedInstance];
  v108 = v44;
  v46 = [v45 stagingLocationForSystemContentWithinSubsystem:1 error:&v108];
  v47 = v108;

  if (v46)
  {
    v107 = v47;
    v48 = [v46 resolveWithError:&v107];
    v49 = v107;

    if (v48)
    {
      sub_100029B74(v3, v48, 1);
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v94 = v46;
        v97 = v49;
        MOLogWrite();
      }

      v49 = 0;
    }

    v47 = v48;
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v94 = v47;
      MOLogWrite();
    }

    v49 = 0;
  }

  v100 = v2;

  v50 = &DirectoryPatch_ptr;
  v51 = +[MIGlobalConfiguration sharedInstance];
  v52 = [v51 isSharediPad];

  if ((v52 & 1) == 0)
  {
    v53 = +[MIDaemonConfiguration sharedInstance];
    v54 = [v53 currentUserJournalStorageBaseURL];
    sub_100029B74(v3, v54, 0);

    v50 = &DirectoryPatch_ptr;
    v55 = +[MIDaemonConfiguration sharedInstance];
    v56 = [v55 currentUserLaunchServicesOperationStorageBaseURL];
    sub_100029B74(v3, v56, 0);
  }

  LOBYTE(v111.st_dev) = 0;
  v57 = [MITestManager sharedInstance:v94];
  v106 = v49;
  v58 = [v57 isRunningInTestMode:&v111 outError:&v106];
  v59 = v106;

  if (v58 && LOBYTE(v111.st_dev) == 1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    sub_100029C90(0);
  }

  if (+[ICLFeatureFlags transientBundleCleanupEnabled])
  {
    v105 = v59;
    v60 = [MIBundleContainer purgeTransientBundleContainersWithError:&v105];
    v61 = v105;

    if (v60)
    {
      v59 = v61;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v95 = v61;
        MOLogWrite();
      }

      v59 = 0;
    }
  }

  if (v34 == -1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v63 = +[MIDaemonConfiguration sharedInstance];
    v64 = [v63 lastBuildInfoFileURL];

    v104[1] = 0;
    LODWORD(v63) = MIIsBuildUpgrade();
    v65 = 0;
    v66 = v65;
    if (v63)
    {
      v99 = v65;
      v67 = [MIContainerLinkManager sharedInstanceForDomain:2];
      if (!v67 || (v68 = v67, [MIContainerLinkManager sharedInstanceForDomain:3], v69 = objc_claimAutoreleasedReturnValue(), v69, v68, !v69))
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }
      }

      v70 = +[MIDaemonConfiguration sharedInstance];
      v71 = [v70 dataDirectory];
      v72 = [v71 URLByAppendingPathComponent:@"DeveloperDiskImageInfo.plist" isDirectory:0];
      [v3 removeItemAtURL:v72 error:0];

      v73 = +[MIDaemonConfiguration sharedInstance];
      v74 = [v73 dataDirectory];
      v75 = [v74 URLByAppendingPathComponent:@"DiskImagesInfo.plist" isDirectory:0];
      [v3 removeItemAtURL:v75 error:0];

      v76 = +[MIKeychainAccessGroupTracker sharedTracker];
      [v76 reconcile];

      v77 = +[MIDaemonConfiguration sharedInstance];
      v78 = [v77 dataDirectory];
      v79 = [v78 URLByAppendingPathComponent:@"ArchivedApplications.plist" isDirectory:0];
      [v3 removeItemAtURL:v79 error:0];

      v104[0] = v59;
      LOBYTE(v78) = [MIObsoleteUpgradeCleaner cleanUpgradesWithError:v104];
      v62 = v104[0];

      if ((v78 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        v96 = v62;
        MOLogWrite();
      }

      v66 = v99;
      sub_100029C90(v99);
      MIRecordCurrentBuildVersion();
    }

    else
    {
      v62 = v59;
    }

    v80 = +[MIUninstalledAppList sharedList];
    [v80 preflightUninstalledMap];

    v81 = +[MIDiskImageManager sharedInstance];
    [v81 resetMountPaths];

    v82 = sem_open("installd.firstboot_check", 512, 256, 0);
    if (v82 == -1)
    {
      v50 = &DirectoryPatch_ptr;
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v83 = __error();
        v95 = "installd.firstboot_check";
        v98 = strerror(*v83);
        MOLogWrite();
      }
    }

    else
    {
      sem_close(v82);
      v50 = &DirectoryPatch_ptr;
    }
  }

  else
  {
    v62 = v59;
  }

  v84 = [v50[284] sharedInstance];
  v85 = [v84 isSharediPad];

  if (v85)
  {
    v86 = 0;
  }

  else
  {
    v86 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
  }

  v87 = +[MILaunchServicesOperationManager instanceForCurrentUser];
  if (v34 == -1)
  {
    [v86 purge];
    [v87 purge];
  }

  else
  {
    [v86 reconcile];
    [v87 reconcile];
  }

  v88 = +[MIJournal sharedInstance];
  [v88 reconcile];
  v89 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.installd"];
  v90 = objc_opt_new();
  [v89 setDelegate:v90];
  [v89 resume];

  objc_autoreleasePoolPop(context);
  CFRunLoopRun();

  return 0;
}

void sub_100029B20(id a1)
{
  v2 = qword_1000A9720;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v2 = MOLogWrite();
  }

  _xpc_transaction_exit_clean(v2);
}

void sub_100029B74(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v12 = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:a3 mode:493 class:4 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    goto LABEL_9;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:NSPOSIXErrorDomain])
  {
    v11 = [v9 code];

    if (v11 == 28)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058288(v6, v9, v5);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000581CC(v6, v9, v5);
  }

LABEL_9:
}

void sub_100029C90(void *a1)
{
  v1 = a1;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_65;
  }

  v71 = objc_opt_new();
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = +[MIGlobalConfiguration sharedInstance];
  v5 = [v4 isSharediPad];

  if (v5)
  {
    goto LABEL_64;
  }

  v6 = &DirectoryPatch_ptr;
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 wasErroneousContainerCleanupDone];

  v91 = 0;
  v9 = [MIContainer containersWithClass:1 error:&v91];
  v10 = v91;
  v69 = v3;
  v58 = v9;
  if (!v9)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_58;
    }

    v53 = v10;
LABEL_57:
    MOLogWrite();
LABEL_58:
    obj = 0;
    goto LABEL_59;
  }

  v11 = +[UMUserManager sharedManager];
  v90 = v10;
  v12 = [v11 listAllPersonaAttributesWithError:&v90];
  v57 = v90;

  if (!v12)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      obj = 0;
      v10 = v57;
      goto LABEL_59;
    }

    v10 = v57;
    v53 = v57;
    goto LABEL_57;
  }

  v55 = v8;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v87;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v87 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v86 + 1) + 8 * i);
        if ([v17 isDataSeparatedPersona])
        {
          v18 = [v17 userPersonaBundleIDList];
          [v2 addObjectsFromArray:v18];

          v19 = [v17 userPersonaUniqueString];
          [v71 addObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v14);
  }

  if (![v71 count])
  {
    v44 = 1;
    v10 = v57;
    v6 = &DirectoryPatch_ptr;
    goto LABEL_63;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v59 = v58;
  v56 = v1;
  v63 = [v59 countByEnumeratingWithState:&v82 objects:v96 count:16];
  if (!v63)
  {
    v70 = 0;
    v20 = v3;
    goto LABEL_68;
  }

  v70 = 0;
  v62 = *v83;
  v20 = v3;
  v60 = v2;
  do
  {
    for (j = 0; j != v63; j = j + 1)
    {
      if (*v83 != v62)
      {
        objc_enumerationMutation(v59);
      }

      v22 = *(*(&v82 + 1) + 8 * j);
      v23 = objc_autoreleasePoolPush();
      v24 = [v22 identifier];
      v81 = 0;
      v25 = [MIContainer allContainersForAllPersonasForIdentifier:v24 options:2 error:&v81];
      v26 = v81;
      v27 = v26;
      if (v25)
      {
        v64 = v26;
        v67 = v23;
        v68 = j;
        v66 = v24;
        v28 = [v2 containsObject:v24];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = v25;
        v29 = v25;
        v30 = [v29 countByEnumeratingWithState:&v77 objects:v95 count:16];
        if (!v30)
        {
          goto LABEL_41;
        }

        v31 = v30;
        v32 = *v78;
        while (1)
        {
          for (k = 0; k != v31; k = k + 1)
          {
            if (*v78 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v77 + 1) + 8 * k);
            v35 = [v34 personaUniqueString];
            v36 = [v71 containsObject:v35];

            if (v28 != v36)
            {
              v37 = v34;
              v38 = [v37 containerURL];
              v93 = 0;
              v39 = +[MIHelperServiceClient sharedInstance];
              v40 = [v37 containerClass];
              v92 = 0;
              v41 = [v39 dataContainer:v38 ofContainerType:v40 isEmpty:&v93 error:&v92];
              v42 = v92;

              if (v41)
              {
                v43 = v93;

                v20 = v69;
                if (v43)
                {
LABEL_38:
                  [v20 addObject:{v37, v53, v54}];
                  continue;
                }
              }

              else
              {
                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
                {
                  v53 = v37;
                  v54 = v42;
                  MOLogWrite();
                }

                v20 = v69;
              }

              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v53 = v37;
                MOLogWrite();
              }

              ++v70;
              goto LABEL_38;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v77 objects:v95 count:16];
          if (!v31)
          {
LABEL_41:

            v2 = v60;
            v23 = v67;
            j = v68;
            v25 = v65;
            v24 = v66;
            v27 = v64;
            goto LABEL_45;
          }
        }
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v53 = v24;
        v54 = v26;
        MOLogWrite();
      }

LABEL_45:

      objc_autoreleasePoolPop(v23);
    }

    v63 = [v59 countByEnumeratingWithState:&v82 objects:v96 count:16];
  }

  while (v63);
LABEL_68:

  if (![v20 count])
  {
    v10 = v57;
    v6 = &DirectoryPatch_ptr;
LABEL_90:
    if (v70)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000583D4();
      }

      v1 = v56;
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v53 = v70;
        MOLogWrite();
      }

      v44 = 1;
    }

    else
    {
      v44 = 1;
      v1 = v56;
    }

    goto LABEL_63;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v46 = v20;
  v47 = [v46 countByEnumeratingWithState:&v73 objects:v94 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v74;
    do
    {
      for (m = 0; m != v48; m = m + 1)
      {
        if (*v74 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v73 + 1) + 8 * m);
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v53 = *(*(&v73 + 1) + 8 * m);
          MOLogWrite();
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v73 objects:v94 count:16];
    }

    while (v48);
  }

  v8 = v55;
  v1 = v56;
  v6 = &DirectoryPatch_ptr;
  if (v55)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058344();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v53 = v56;
      MOLogWrite();
    }
  }

  v72 = v57;
  v52 = [MIContainer removeContainers:v46 waitForDeletion:0 error:&v72, v53];
  v10 = v72;

  if (v52)
  {
    goto LABEL_90;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v53 = v10;
    MOLogWrite();
  }

LABEL_59:
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v53 = v8;
    MOLogWrite();
  }

  v44 = 0;
LABEL_63:
  v45 = [v6[280] sharedInstance];
  [v45 setErroneousContainerCleanupDone:v44];

  v3 = v69;
LABEL_64:

LABEL_65:
}

uint64_t sub_10002A688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A9658;
  qword_1000A9658 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10002AF44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 8 && ([v5 pathExtension], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"plist"), v7, v8))
  {
    v20 = 0;
    v9 = [NSData dataWithContentsOfURL:v6 options:3 error:&v20];
    v10 = v20;
    if (v9)
    {
      v11 = *(a1 + 32);
      v19 = v10;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v19];
      v13 = v19;

      v14 = *(*(a1 + 48) + 16);
      if (v12)
      {
        v15 = v14();
      }

      else
      {
        v14();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_1000585CC(v6);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v18 = [v6 path];
          MOLogWrite();
        }

        if (*(a1 + 57) == 1)
        {
          [*(a1 + 40) addObject:v6];
        }

        v15 = *(a1 + 56);
      }

      v10 = v13;
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058678(v6);
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v17 = [v6 path];
        MOLogWrite();
      }

      v15 = *(a1 + 56);
    }
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

BOOL sub_10002B250(id a1, MIJournalEntry *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v9 = v4;
      MOLogWrite();
    }

    v10 = 0;
    v6 = [(MIJournalEntry *)v4 finalizeWithError:&v10, v9];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058724();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }
    }
  }

  return 1;
}

void sub_10002B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B71C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002B734(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return 1;
}

void sub_10002B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B904(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return 1;
}

uint64_t sub_10002B994()
{
  v0 = +[MIGlobalConfiguration sharedInstance];
  v1 = [v0 migrationPlistURL];
  v2 = MIIsBuildUpgrade();

  return v2 ^ 1u;
}

void sub_10002C6D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10002C64CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10002C6F0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10002C6FCLL);
}

void sub_10002CA94(id a1)
{
  v1 = objc_alloc_init(MISystemAppMigrationState);
  v2 = qword_1000A9670;
  qword_1000A9670 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002CB68(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = *(a1 + 40);
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v3 = +[MIDaemonConfiguration sharedInstance];
    v4 = [v3 migrationPlistURL];
    MIRecordCurrentBuildVersion();

    v5 = [*(a1 + 32) blockArray];

    if (v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [*(a1 + 32) blockArray];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v11 + 1) + 8 * v10) + 16))();
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      [*(a1 + 32) setBlockArray:0];
    }
  }
}

void sub_10002CDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CEA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [v2 blockArray];

    if (v4 || (v5 = objc_alloc_init(NSMutableArray), [*(a1 + 32) setBlockArray:v5], v5, objc_msgSend(*(a1 + 32), "blockArray"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v11 = [*(a1 + 32) blockArray];
      v8 = objc_retainBlock(*(a1 + 40));
      [v11 addObject:v8];
    }

    else
    {
      v9 = *(a1 + 40);
      v11 = sub_100010734("[MISystemAppMigrationState waitForSystemAppMigrationToComplete:]_block_invoke", 118, MIInstallerErrorDomain, 4, 0, 0, @"Failed to create an array", v7, v10);
      (*(v9 + 16))(v9, v11);
    }
  }
}

void sub_10002D0DC(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v6 = a2;
  v7 = a3;
  *a4 = 0;
  v8 = v6;
  v42 = 0;
  v9 = [MIBundleContainer appBundleContainerWithIdentifier:v8 createIfNeeded:0 created:0 error:&v42];
  v10 = v42;
  v11 = v10;
  if (v9)
  {
    v12 = [(NSDictionary *)v7 objectForKeyedSubscript:kCFBundleVersionKey];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      goto LABEL_47;
    }

    v17 = [v9 bundle];

    if (!v17)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v23 = [v9 containerURL];
        v34 = [v23 path];
        MOLogWrite();
      }

      goto LABEL_47;
    }

    v18 = [v9 bundle];
    v19 = [v18 infoPlistSubset];
    v20 = [v19 objectForKeyedSubscript:kCFBundleVersionKey];
    objc_opt_class();
    v21 = v20;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        v24 = [v9 containerURL];
        [v24 path];
        v38 = v22;
        v40 = v14;
        v36 = v33 = v8;
        MOLogWrite();
      }

      v25 = [v22 compare:v14 options:{64, v33, v36, v38, v40}];
      if (v25 == -1)
      {
        goto LABEL_35;
      }

      v26 = v25;
      v27 = +[MIDaemonConfiguration sharedInstance];
      v28 = [v27 allowsInternalSecurityPolicy];
      if (!v26 && (v28 & 1) == 0)
      {

        goto LABEL_35;
      }

      v29 = +[MIDaemonConfiguration sharedInstance];
      v30 = [v29 allowsInternalSecurityPolicy];

      if (v30)
      {
LABEL_35:
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v37 = v22;
          v39 = v14;
          v35 = v8;
          MOLogWrite();
        }

        v41 = v11;
        v31 = [v9 removeUnderlyingContainerWaitingForDeletion:0 error:{&v41, v35, v37, v39}];
        v32 = v41;

        if ((v31 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
        {
          MOLogWrite();
        }

        v11 = v32;
        goto LABEL_46;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
LABEL_46:

LABEL_47:
        goto LABEL_48;
      }
    }

    else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_46;
    }

    MOLogWrite();
    goto LABEL_46;
  }

  v15 = [v10 domain];
  if ([v15 isEqualToString:MIContainerManagerErrorDomain])
  {
    v16 = [v11 code];

    if (v16 == 21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_48:
}

id sub_10002E0E4()
{
  v0 = +[MIDaemonConfiguration sharedInstance];
  v1 = [v0 dataDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"LinkedParentBundles.plist" isDirectory:0];

  return v2;
}

uint64_t sub_10002E204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) initWithDomain:2];
  v3 = qword_1000A9680;
  qword_1000A9680 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10002E2E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) initWithDomain:3];
  v3 = qword_1000A9690;
  qword_1000A9690 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10002F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002F270(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  obj = 0;
  v5 = [v2 _onQueue_isValidLinkForParent:v3 toChild:v4 error:&obj];
  v6 = obj;
  *(*(a1[7] + 8) + 24) = v5;
  objc_storeStrong((*(a1[8] + 8) + 40), v6);
}

void sub_10002F464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002F488(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  obj = 0;
  v5 = [v2 _onQueue_updateLinkForParent:v3 toChild:v4 operationType:0 error:&obj];
  v6 = obj;
  *(*(a1[7] + 8) + 24) = v5;
  objc_storeStrong((*(a1[8] + 8) + 40), v6);
}

void sub_10002F680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002F6A4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  obj = 0;
  v5 = [v2 _onQueue_updateLinkForParent:v3 toChild:v4 operationType:1 error:&obj];
  v6 = obj;
  *(*(a1[7] + 8) + 24) = v5;
  objc_storeStrong((*(a1[8] + 8) + 40), v6);
}

void sub_10002FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002FCD4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 _onQueue_childrenForParentBundleID:v3 error:&v10];
  v5 = v10;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void sub_100030044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100030068(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _onQueue_removeParent:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

void sub_100030154(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void _MILogTransactionStep(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if (a2 == 1)
  {
    v18 = "Start";
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_14:
    if ((a1 - 1) > 0xE)
    {
      v22 = "Unknown";
    }

    else
    {
      v22 = off_1000916A8[a1 - 1];
    }

    [NSString stringWithFormat:@"%s : %s", v18, v22, v24, 0];
    v21 = LABEL_20:;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    if (!v16)
    {
      v19 = "Fail";
      if (a3)
      {
        v19 = "Success";
      }

      if ((a1 - 1) > 0xE)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_1000916A8[a1 - 1];
      }

      [NSString stringWithFormat:@"%s (%s) : %s", v19, "End", v20, 0];
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (a2 != 3)
  {
    v18 = "Unknown Phase";
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v18 = "Start (Asynch)";
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_12:
  v21 = [[NSString alloc] initWithFormat:v16 arguments:&a9];
LABEL_21:
  v23 = v21;
  [AITransactionLog logStep:a1 byParty:7 phase:a2 success:a3 forBundleID:v14 persona:v15 description:v21];
}

__CFString *sub_1000317C4(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [NSString stringWithFormat:@"Unknown phase: %lu", a1];
  }

  else
  {
    v2 = off_100091720[a1];
  }

  return v2;
}

void sub_100035A00(void *a1)
{
  v1 = a1;
  v2 = qword_1000A9720;
  v3 = v1;
  if (!v1)
  {
LABEL_5:
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
    v2 = qword_1000A9720;
    goto LABEL_5;
  }

LABEL_6:
  if (*(v2 + 44) >= 7)
  {
    MOLogWrite();
  }

LABEL_8:
  notify_post("com.apple.mobile.application_deletion_complete");
}

uint64_t sub_1000374BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000374D4(uint64_t a1)
{
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v49;
    v40 = kMIUninstallParallelPlaceholderKey;
    v41 = *v49;
    do
    {
      v5 = 0;
      v42 = v3;
      do
      {
        if (*v49 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v48 + 1) + 8 * v5);
        v7 = [v6 bundleIdentifier];
        v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
        v9 = v8;
        if (v8)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            [v8 path];
            v39 = v38 = v7;
            MOLogWrite();
          }

          v10 = [MILaunchServicesOperationManager instanceForCurrentUser:v38];
          v11 = *(*(a1 + 64) + 8);
          v47 = *(v11 + 40);
          v12 = [v10 registerInstalledInfoForBuiltInAppAtURL:v9 error:&v47];
          objc_storeStrong((v11 + 40), v47);

          if (!v12)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v34 = [v9 path];
              v35 = *(*(*(a1 + 64) + 8) + 40);
              *buf = 136315650;
              v53 = "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]_block_invoke";
              v54 = 2112;
              v55 = v34;
              v56 = 2112;
              v57 = v35;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to re-register built-in app at %@ : %@", buf, 0x20u);
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v38 = [v9 path];
              v39 = *(*(*(a1 + 64) + 8) + 40);
              MOLogWrite();
            }

            *(*(*(a1 + 72) + 8) + 24) = 1;
          }

          goto LABEL_55;
        }

        if (![v6 doesNotHaveBundleContainer])
        {
          if ([v6 hasParallelPlaceholder])
          {
            v14 = v7;
            v15 = &__kCFBooleanTrue;
            goto LABEL_24;
          }

          v16 = [v6 isPlaceholder];
          v14 = v7;
          if (v16)
          {
            v15 = &__kCFBooleanTrue;
            v17 = &__kCFBooleanFalse;
          }

          else
          {
            v15 = &__kCFBooleanFalse;
LABEL_24:
            v17 = &__kCFBooleanTrue;
          }

          v13 = [LSPrecondition registrationStatePreconditionForBundleWithIdentifier:v14 placeholderInstalled:v15 fullApplicationInstalled:v17];
          goto LABEL_26;
        }

        v13 = +[LSPrecondition emptyPrecondition];
LABEL_26:
        v44 = v13;
        if ([v6 isLinked])
        {
          v18 = 0;
          v19 = 3;
        }

        else
        {
          v20 = [*(a1 + 48) options];
          v21 = [v20 objectForKeyedSubscript:@"UninstallPlaceholdersOnly"];
          v22 = [v21 isEqual:&__kCFBooleanTrue];

          if (v22)
          {
            v18 = 1;
            v19 = 1;
          }

          else
          {
            v23 = [*(a1 + 48) options];
            v24 = [v23 objectForKeyedSubscript:v40];
            v18 = [v24 isEqual:&__kCFBooleanTrue];

            if (v18)
            {
              v19 = 4;
            }

            else
            {
              v19 = 3;
            }
          }
        }

        v25 = sub_100009864();
        if (+[ICLFeatureFlags appReferencesEnabled])
        {
          v26 = +[MIGlobalConfiguration sharedInstance];
          v27 = [v26 isSharediPad];

          if ((v27 & 1) == 0)
          {
            if (v25)
            {
              if ([v6 isLastReference])
              {
                if ([*(a1 + 56) containsObject:v7])
                {
                  v28 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
                  v29 = *(*(a1 + 64) + 8);
                  v46 = *(v29 + 40);
                  v30 = [v28 unregisterAppForBundleID:v7 inDomain:1 operationType:v19 precondition:v44 error:&v46];
                  objc_storeStrong((v29 + 40), v46);

                  if ((v30 & 1) == 0)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                    {
                      v37 = *(*(*(a1 + 64) + 8) + 40);
                      *buf = 136315650;
                      v53 = "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]_block_invoke";
                      v54 = 2112;
                      v55 = v7;
                      v56 = 2112;
                      v57 = v37;
                      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to unregister record for %@ in system domain: %@", buf, 0x20u);
                    }

                    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                    {
                      v38 = v7;
                      v39 = *(*(*(a1 + 64) + 8) + 40);
                      MOLogWrite();
                    }

                    *(*(*(a1 + 80) + 8) + 24) = 1;
                  }
                }
              }
            }
          }
        }

        if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && (v18 | [v6 isLastReference]) == 1)
        {
          v31 = +[MILaunchServicesOperationManager instanceForCurrentUser];
          v32 = *(*(a1 + 64) + 8);
          v45 = *(v32 + 40);
          v33 = [v31 unregisterAppForBundleID:v7 inDomain:1 operationType:v19 precondition:v44 error:&v45];
          objc_storeStrong((v32 + 40), v45);

          if ((v33 & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v36 = *(*(*(a1 + 64) + 8) + 40);
              *buf = 136315650;
              v53 = "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]_block_invoke";
              v54 = 2112;
              v55 = v7;
              v56 = 2112;
              v57 = v36;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to unregister record for %@ in user domain: %@", buf, 0x20u);
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v38 = v7;
              v39 = *(*(*(a1 + 64) + 8) + 40);
              MOLogWrite();
            }

            *(*(*(a1 + 80) + 8) + 24) = 1;
          }
        }

        v4 = v41;
        v3 = v42;
LABEL_55:

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v3);
  }
}

uint64_t sub_100037C48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 2112;
  return result;
}

uint64_t sub_100037D00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A96A0;
  qword_1000A96A0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10003800C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10003804C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

void sub_10003808C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

void sub_1000383B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000383CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000383E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000385C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000385D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000388B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000388E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100038964(void *a1, void *a2, char a3, void *a4)
{
  v9 = a2;
  v8 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  if (!v8)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
  }
}

void sub_100038B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100038DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10003903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100039060(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100039308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10003932C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000393A8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100039624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100039648(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000396C4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100039908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10003992C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000399A8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_100039AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A96A8;
  qword_1000A96A8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100039DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100039E10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100039E28(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    v8 = [v7 isEqualToString:@"app"];

    if (v8)
    {
      v9 = +[MIFileManager defaultManager];
      v19 = 0;
      v10 = [v9 insecureCachedAppIdentifierIfValidatedByFreeProfileForBundle:v6 error:&v19];
      v11 = v19;

      if (v10)
      {
        v12 = [*(a1 + 32) refs];
        [v12 addObject:v10];
      }

      else
      {
        v14 = [v11 domain];
        if ([v14 isEqualToString:NSPOSIXErrorDomain])
        {
          v15 = [v11 code];

          if (v15 == 93)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v16 = *(*(a1 + 40) + 8);
        v17 = v11;
        v12 = *(v16 + 40);
        *(v16 + 40) = v17;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

void sub_10003A120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003A138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v3 _onQueue_addAppIdentifierIfCachedOnContainer:a2 error:&v8];
  v5 = v8;
  v6 = v8;
  if ((v4 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  return v4;
}

void sub_10003A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10003A678(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _onQueue_addReferenceForApplicationIdentifier:v3 bundle:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_10003AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10003AAFC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _onQueue_removeReferenceForBundle:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

uint64_t sub_10003CA30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A96B8;
  qword_1000A96B8 = v2;

  return _objc_release_x1(v2, v3);
}

BOOL sub_10003CE04()
{
  memset(&v2, 0, sizeof(v2));
  result = 0;
  if (!lstat("/var/mobile/Library/ApplicationSync", &v2))
  {
    tv_sec = v2.st_mtimespec.tv_sec;
    if (tv_sec > time(0) - 31536000)
    {
      return 1;
    }
  }

  return result;
}

void sub_10003CF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003CF9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003CFB4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_uninstalledList];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10003D0BC(uint64_t a1)
{
  v3 = [*(a1 + 32) _onQueue_uninstalledList];
  v2 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  [*(a1 + 32) _onQueue_setUninstalledList:v3];
}

void sub_10003D1F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_uninstalledList];
  [v2 removeObjectsForKeys:*(a1 + 40)];
  [*(a1 + 32) _onQueue_setUninstalledList:v2];
}

void sub_10003D584(void *a1)
{
  v1 = a1;
  if (![v1 isTransient])
  {
    goto LABEL_14;
  }

  if (![v1 isStagedContainer])
  {
    v3 = [v1 identifier];
    v7 = 0;
    v4 = [v1 removeUnderlyingContainerWaitingForDeletion:0 error:&v7];
    v5 = v7;
    if (v4)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
      {
        goto LABEL_13;
      }
    }

    else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_13;
    }

    MOLogWrite();
LABEL_13:

    goto LABEL_14;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v2 = [v1 containerURL];
    v6 = [v2 path];
    MOLogWrite();
  }

LABEL_14:
}

uint64_t sub_100042B8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  [v3 fileSystemRepresentation];
  v4 = MIMachOFileIterateImageVersions();
  v5 = 0;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = v5;
    v10 = *(v15 + 40);
    *(v15 + 40) = v16;
    goto LABEL_5;
  }

  if ((v19[3] & 1) == 0)
  {
    v7 = [v3 path];
    v8 = [*(a1 + 32) bundleURL];
    v9 = [v8 path];
    v10 = [v7 substringFromIndex:{objc_msgSend(v9, "length")}];

    v12 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]_block_invoke", 1743, MIInstallerErrorDomain, 202, 0, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v11, v10);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

LABEL_5:
  }

  _Block_object_dispose(&v18, 8);

  return 1;
}

void sub_100042D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042D6C(uint64_t a1, int a2, int a3)
{
  v4 = a2 == 16777228 && (a3 & 0xFFFFFF) == 2;
  result = !v4;
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_100043024(void *a1)
{
  v1 = a1;
  if (sub_10004BE78(v1))
  {
    v2 = 1;
  }

  else if (sub_10004BE88(v1))
  {
    v2 = sub_10004BEE4(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100045420(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 bundleTypeDescription];
  v8 = [v5 bundleType];
  if (v8 - 1 < 5 || v8 == 9)
  {

    v7 = @"app";
  }

  if (sub_10004CAB8(v6))
  {
    v10 = MIInstallerErrorDomain;
    v11 = [v5 relativePath];
    sub_100010734("_ValidateBundleDoesNotHaveBrowserExtensionEntitlements", 1824, v10, 205, 0, 0, @"The %@ at %@ has the entitlement %@, which is only allowed on app extensions targeting the extension point %@.", v12, v7);
  }

  else if (sub_10004CAA8(v6))
  {
    v13 = MIInstallerErrorDomain;
    v11 = [v5 relativePath];
    sub_100010734("_ValidateBundleDoesNotHaveBrowserExtensionEntitlements", 1829, v13, 205, 0, 0, @"The %@ at %@ has the entitlement %@, which is only allowed on app extensions targeting the extension point %@.", v14, v7);
  }

  else
  {
    if (!sub_10004CA98(v6))
    {
      v17 = 0;
      v19 = 1;
      goto LABEL_17;
    }

    v15 = MIInstallerErrorDomain;
    v11 = [v5 relativePath];
    sub_100010734("_ValidateBundleDoesNotHaveBrowserExtensionEntitlements", 1834, v15, 205, 0, 0, @"The %@ at %@ has the entitlement %@, which is only allowed on app extensions targeting the extension point %@.", v16, v7);
  }
  v17 = ;

  if (a3)
  {
    v18 = v17;
    v19 = 0;
    *a3 = v17;
  }

  else
  {
    v19 = 0;
  }

LABEL_17:

  return v19;
}

uint64_t sub_100045600(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 bundleTypeDescription];
  if (sub_10004CA78(v6))
  {
    v8 = MIInstallerErrorDomain;
    v9 = [v5 relativePath];
    sub_100010734("_ValidateBundleDoesNotHaveBrowserAppEntitlements", 1854, v8, 204, 0, 0, @"The %@ at %@ has the %@ entitlement, which is only allowed on the browser app itself.", v10, v7);
  }

  else
  {
    if (!sub_10004CA88(v6))
    {
      v13 = 0;
      v15 = 1;
      goto LABEL_9;
    }

    v11 = MIInstallerErrorDomain;
    v9 = [v5 relativePath];
    sub_100010734("_ValidateBundleDoesNotHaveBrowserAppEntitlements", 1860, v11, 213, 0, 0, @"The %@ at %@ has the %@ entitlement, which is only allowed on the app itself.", v12, v7);
  }
  v13 = ;

  if (a3)
  {
    v14 = v13;
    v15 = 0;
    *a3 = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  return v15;
}

uint64_t sub_10004AB70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A96C8;
  qword_1000A96C8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10004AD60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_10004AE0C(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  if (v1)
  {
    JUMPOUT(0x10004ACC8);
  }

  JUMPOUT(0x10004ACD4);
}

void sub_10004B7C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x10004B73CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10004B7E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10004B7ECLL);
}

id sub_10004BC4C(void *a1, void *a2, id a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v6 BOOLValue];
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

uint64_t sub_10004BD40(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (sub_10004BC4C(v5, *(*(&v13 + 1) + 8 * v10), a3))
        {
          v11 = 1;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

BOOL sub_10004BEA8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"seatbelt-profiles"];
  v2 = v1 != 0;

  return v2;
}

id sub_10004BF44(void *a1, uint64_t a2)
{
  v3 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:a2];

  return v4;
}

id sub_10004BFB0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v7 = [v5 MI_writeToURL:v6 format:200 options:268435457 error:a3];

  return v7;
}

id sub_10004C038(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (!v4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (isKindOfClass)
  {
    if (sub_100010AB8(v4))
    {
      v6 = v4;
LABEL_7:
      v7 = [NSSet setWithArray:v6];
      v8 = [v7 allObjects];

      goto LABEL_16;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_13:
    MOLogWrite();
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = v4;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_15:
  v8 = 0;
LABEL_16:

  return v8;
}

BOOL sub_10004C1EC(void *a1)
{
  v1 = sub_10004C038(a1, @"com.apple.security.application-groups");
  v2 = v1 != 0;

  return v2;
}

id sub_10004C228(void *a1)
{
  v1 = a1;
  v2 = sub_10004C038(v1, @"com.apple.security.system-groups");
  v3 = v2;
  if (!v2 || ![v2 count])
  {
    v4 = sub_10004C038(v1, @"com.apple.security.system-group-containers");

    v3 = v4;
  }

  return v3;
}

BOOL sub_10004C2B0(void *a1)
{
  v1 = sub_10004C228(a1);
  v2 = v1 != 0;

  return v2;
}

id sub_10004C2F4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.parent-application-identifiers"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), sub_100010AB8(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10004C3B0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"application-identifier"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10004C430(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"previous-application-identifiers"];
  objc_opt_class();
  v2 = sub_100010F2C(v1);

  return v2;
}

id sub_10004C4A8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"keychain-access-groups"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), sub_100010AB8(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10004C574(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.app-management-domain"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10004C5F4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"swift-playgrounds"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.WebKit.PushBundles"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t sub_10004C664(void *a1)
{
  v1 = sub_10004C574(a1);
  v2 = sub_10004C5F4(v1);

  return v2;
}

id sub_10004C69C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.networking.networkextension"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), sub_100010AB8(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10004C758(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.associated-appclip-app-identifiers"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), sub_100010AB8(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10004C824(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection"];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [v1 objectForKeyedSubscript:@"data-protection-class"];
    objc_opt_class();
    v6 = v5;
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;

    if (!v4)
    {
      v7 = [v1 objectForKeyedSubscript:@"DataProtectionClass"];
      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_10004C968(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection-if-available"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = v2;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = v5;
      objc_opt_class();
      v4 = sub_100010BC4(v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id sub_10004CAC8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-accept"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10004CB48(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-send"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10004E4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004E510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004E528(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a3 == 4)
  {
    v7 = [NSUUID alloc];
    v8 = [v6 lastPathComponent];
    v9 = [v7 initWithUUIDString:v8];

    if (v9)
    {
      v10 = *(a1 + 32);
      v16 = 0;
      v11 = [v10 modificationDateForURL:v6 error:&v16];
      v12 = v16;
      if (v11)
      {
        if ([v11 compare:*(*(*(a1 + 48) + 8) + 40)] == 1)
        {
          if (*(*(*(a1 + 56) + 8) + 40))
          {
            [*(a1 + 40) addObject:?];
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        }

        else
        {
          [*(a1 + 40) addObject:v6];
        }
      }

      else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v15 = [v6 path];
        MOLogWrite();
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v14 = [v6 path];
      MOLogWrite();
    }
  }

  return 1;
}

void sub_10004ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10004EDA4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return a3 != 8;
}

uint64_t sub_10004F4A8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 8)
  {
    v7 = [v5 pathExtension];
    v8 = [v7 isEqualToString:@"plist"];

    if (v8)
    {
      v9 = *(a1 + 40);
      v14 = 0;
      v10 = [objc_opt_class() _operationFromURL:v6 error:&v14];
      v11 = v14;
      if (v10)
      {
        [*(a1 + 32) addObject:v10];
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100059524(v6);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v13 = [v6 path];
          MOLogWrite();
        }
      }

      goto LABEL_14;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v11 = [v6 lastPathComponent];
      MOLogWrite();
LABEL_14:
    }
  }

  return 1;
}

int64_t sub_10004F630(id a1, MILaunchServicesOperation *a2, MILaunchServicesOperation *a3)
{
  v4 = a3;
  v5 = [(MILaunchServicesOperation *)a2 serialNumber];
  v6 = [(MILaunchServicesOperation *)v4 serialNumber];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

id sub_100050BDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([objc_opt_class() appReferencesEnabled] && *(a1 + 88) && (v3 = *(a1 + 40)) != 0)
  {
    v4 = [v3 allObjects];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) _lsApplicationWorkspaceInstance];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [v5 registerContainerizedApplicationWithInstallationRecord:v6 extensionInstallationRecords:v7 personaUniqueStrings:v4 operationUUID:v8 requestContext:v9 saveObserver:v10 registrationError:&v17];
  v12 = v17;
  v13 = *(*(a1 + 80) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  v15 = 0;
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v15 = v12;
  }

  return v15;
}

void sub_100050F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100050F28(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[11];
  v13 = 0;
  v8 = [v2 _onQueue_registerApplicationInfo:v3 onMountPoint:v4 forAppBundleID:v5 domain:v7 personas:v6 error:&v13];
  v9 = v13;
  v10 = v13;
  v11 = *(a1[9] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  if (!*(*(a1[9] + 8) + 40))
  {
    objc_storeStrong((*(a1[10] + 8) + 40), v9);
  }
}

void sub_100051908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100051928(uint64_t a1)
{
  v2 = [*(a1 + 32) _lsApplicationWorkspaceInstance];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = 0;
  v8 = [v2 setPersonaUniqueStrings:v6 forApplicationWithBundleIdentifier:v3 operationUUID:v4 requestContext:v5 saveObserver:v7 error:&v12];
  v9 = v12;
  *(*(*(a1 + 72) + 8) + 24) = v8;

  v10 = 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v10 = v9;
  }

  return v10;
}

void sub_100051B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100051B94(void *a1)
{
  v3 = a1 + 6;
  v2 = a1[6];
  v4 = a1[4];
  v5 = *(v3 - 1);
  v6 = v3[3];
  v16 = 0;
  v7 = [v4 _onQueue_setPersonaUniqueStrings:v5 forAppBundleID:v2 inDomain:v6 error:&v16];
  v8 = v16;
  v9 = v16;
  *(*(v3[1] + 8) + 24) = v7;
  if ((*(*(v3[1] + 8) + 24) & 1) == 0)
  {
    v11 = a1[8];
    v10 = (a1 + 8);
    objc_storeStrong((*(v11 + 8) + 40), v8);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000598A4(v3, v3 + 3, v10);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v12 = *v3;
      v13 = v3[3];
      v14 = MIStringForInstallationDomain();
      v15 = *(*(*v10 + 8) + 40);
      MOLogWrite();
    }
  }
}

void sub_100051F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100051F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) _lsApplicationWorkspaceInstance];
  v3 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = 0;
  v9 = [v2 unregisterContainerizedApplicationWithBundleIdentifier:v7 operationUUID:v4 unregistrationOperation:v3 precondition:v5 requestContext:v6 saveObserver:v8 unregistrationError:&v13];
  v10 = v13;
  *(*(*(a1 + 72) + 8) + 24) = v9;

  v11 = 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v11 = v10;
  }

  return v11;
}

void sub_10005247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1000524B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v2 _onQueue_unregisterAppForBundleID:v3 domain:v6 operationType:v5 precondition:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v8;
}

void sub_100052904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100052928(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _onQueue_unregisterApplicationsAtMountPoint:v3 error:&v7];
  v5 = v7;
  v6 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

uint64_t sub_100052D20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(objc_opt_class()) initForInstallationDomain:2];
  v4 = qword_1000A96E8;
  qword_1000A96E8 = v3;

  v5 = *(a1 + 32);
  v6 = [objc_alloc(objc_opt_class()) initForInstallationDomain:3];
  v7 = qword_1000A96F0;
  qword_1000A96F0 = v6;

  return _objc_release_x1(v6, v7);
}

uint64_t sub_100053198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A9700;
  qword_1000A9700 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_100053550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = 0u;
  v38 = 0u;
  buf = 0;
  v35 = 0;
  v36 = 0;
  if ((*(a3 + 16))(a3, 3, &v37, 32, 0) != 32)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      return 0;
    }

LABEL_34:
    v27 = __error();
    strerror(*v27);
LABEL_37:
    MOLogWrite();
    return 0;
  }

  if (v37 != 0x3034464649445342)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v9 = sub_100053BC8(a3, 4, a4, 32);
  if (!v9)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v10 = v9;
  v11 = sub_100053BC8(a3, 5, a4, *(&v37 + 1) + 32);
  if (!v11)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v29 = __error();
      strerror(*v29);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_84;
  }

  v12 = v11;
  v13 = sub_100053BC8(a3, 6, a4, *(&v37 + 1) + v38 + 32);
  if (!v13)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v30 = __error();
      strerror(*v30);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_83;
  }

  v14 = v13;
  v15 = malloc_type_malloc(0x10000uLL, 0x2779B443uLL);
  if (!v15)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v31 = __error();
      strerror(*v31);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_82;
  }

  v16 = v15;
  v17 = malloc_type_malloc(0x10000uLL, 0x8F9F5CCDuLL);
  if (!v17)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v32 = __error();
      strerror(*v32);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_81;
  }

  v18 = v17;
  if (!*(&v38 + 1))
  {
    v26 = 1;
    goto LABEL_80;
  }

  v19 = 0;
  v20 = 0;
  v33 = v12;
  while (1)
  {
    if (sub_100053D60(v10, &buf, 24) != 24)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    if (v36 < 0)
    {
      v36 = -(v36 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v21 = buf;
    if (buf)
    {
      break;
    }

LABEL_23:
    v24 = v35;
    if (v35)
    {
      while (1)
      {
        v25 = v24 >= 0x10000 ? 0x10000 : v24;
        if (v25 != sub_100053D60(v14, v18, v25))
        {
          break;
        }

        if ((*(a5 + 16))(a5, 2, v18, v25, v19) != v25)
        {
          v12 = v33;
          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        v19 += v25;
        v24 -= v25;
        if (!v24)
        {
          goto LABEL_30;
        }
      }

      v12 = v33;
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_79;
      }

LABEL_78:
      MOLogWrite();
LABEL_79:
      v26 = 0;
      goto LABEL_80;
    }

LABEL_30:
    v20 += v36;
    v26 = 1;
    v12 = v33;
    if (v19 >= *(&v38 + 1))
    {
      goto LABEL_80;
    }
  }

  while (1)
  {
    if (v21 >= 0x10000)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = v21;
    }

    if ((*(a1 + 16))(a1, 1, v16, v22, v20) != v22)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v22 != sub_100053D60(v33, v18, v22))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v23 = 0;
    do
    {
      *(v18 + v23) += v16[v23];
      ++v23;
    }

    while (v22 != v23);
    if ((*(a5 + 16))(a5, 2, v18, v22, v19) != v22)
    {
      break;
    }

    v20 += v22;
    v19 += v22;
    v21 -= v22;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
LABEL_68:
    MOLogWrite();
  }

LABEL_69:
  v26 = 0;
  v12 = v33;
LABEL_80:
  free(v18);
LABEL_81:
  free(v16);
LABEL_82:
  sub_100053DDC(v14);
LABEL_83:
  sub_100053DDC(v12);
LABEL_84:
  sub_100053DDC(v10);
  return v26;
}

void *sub_100053BC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  bzerror = 0;
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040A4FBEE0AuLL);
  v9 = v8;
  if (!v8)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    v12 = __error();
    strerror(*v12);
LABEL_13:
    MOLogWrite();
LABEL_14:
    sub_100053DDC(v9);
    return 0;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a1;
  v10 = funopen(v8, sub_100054184, 0, 0, 0);
  v9[4] = v10;
  if (!v10)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = BZ2_bzReadOpen(&bzerror, v10, 0, 0, 0, 0);
  v9[5] = v11;
  if (!v11)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_100053D60(uint64_t a1, void *buf, int len)
{
  bzerror = 0;
  result = BZ2_bzRead(&bzerror, *(a1 + 40), buf, len);
  if ((bzerror & 0xFFFFFFFB) != 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_100053DDC(void *a1)
{
  bzerror = 0;
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      BZ2_bzReadClose(&bzerror, v2);
    }

    v3 = a1[4];
    if (v3)
    {
      fclose(v3);
    }

    free(a1);
  }
}

uint64_t sub_100053E30(const char *a1, const char *a2, int a3)
{
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  v5 = open(a1, 256);
  if (v5 != -1)
  {
    v6 = v5;
    if (fstat(v5, &v22) == -1)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = open(a2, 256);
      if (v7 != -1)
      {
        v8 = v7;
        if (fstat(v7, &v21) == -1)
        {
          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            goto LABEL_24;
          }

          v13 = __error();
          strerror(*v13);
        }

        else
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 0x40000000;
          v19[2] = sub_100054148;
          v19[3] = &unk_100091AF0;
          v20 = v6;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 0x40000000;
          v17[2] = sub_10005415C;
          v17[3] = &unk_100091B10;
          v18 = v8;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 0x40000000;
          v15[2] = sub_100054170;
          v15[3] = &unk_100091B30;
          v16 = a3;
          if (sub_100053550(v19, v9, v17, v21.st_size, v15))
          {
            v10 = 0;
LABEL_25:
            close(v8);
            goto LABEL_26;
          }

          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
LABEL_24:
            v10 = 0xFFFFFFFFLL;
            goto LABEL_25;
          }
        }

        MOLogWrite();
        goto LABEL_24;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
LABEL_17:
        v10 = 0xFFFFFFFFLL;
LABEL_26:
        close(v6);
        return v10;
      }
    }

    v12 = __error();
    strerror(*v12);
    MOLogWrite();
    goto LABEL_17;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v11 = __error();
    strerror(*v11);
    MOLogWrite();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100054184(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = (*(*(a1 + 3) + 16))();
  if (result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2) += result;
  return result;
}

void sub_100054638(const void *a1, int a2)
{
  v4 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v4)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, a1);
    v10.length = CFArrayGetCount(MutableCopy);
    v10.location = 0;
    CFArraySortValues(MutableCopy, v10, sub_1000548B4, 0);
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100054ED4;
    v7[3] = &unk_100091B88;
    v7[4] = Mutable;
    v8 = a2;
    sub_100054948(MutableCopy, v7);
    CFRelease(MutableCopy);
    CFRelease(Mutable);
  }

  else
  {
    if (CFStringGetTypeID() != v4)
    {
      sub_100059C40();
    }

    sub_100054F34(a1, a2);
  }
}

void sub_100054784(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v2)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, a1);
    v7.length = CFArrayGetCount(MutableCopy);
    v7.location = 0;
    CFArraySortValues(MutableCopy, v7, sub_1000548B4, 1);
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000549C0;
    v5[3] = &unk_100091B68;
    v5[4] = Mutable;
    sub_100054948(MutableCopy, v5);
    CFRelease(MutableCopy);
    CFRelease(Mutable);
  }

  else
  {
    if (CFStringGetTypeID() != v2)
    {
      sub_100059C84();
    }

    sub_100054A1C(a1);
  }
}

CFComparisonResult sub_1000548B4(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  v7 = CFStringGetTypeID();
  if (v7 != CFGetTypeID(a2))
  {
    return 0;
  }

  result = CFStringCompare(a1, a2, 0);
  v9 = 1;
  if (result == kCFCompareGreaterThan)
  {
    v10 = -1;
  }

  else
  {
    v10 = result;
  }

  if (result != kCFCompareLessThan)
  {
    v9 = v10;
  }

  if (a3)
  {
    return v9;
  }

  return result;
}

void sub_100054948(const __CFArray *a1, void *a2)
{
  if (a1)
  {
    context = a2;
    v5.length = CFArrayGetCount(a1);
    v5.location = 0;
    CFArrayApplyFunction(a1, v5, sub_100055124, context);
  }
}

void sub_1000549C0(uint64_t a1, const void *a2)
{
  if (!CFSetContainsValue(*(a1 + 32), a2))
  {
    sub_100054A1C(a2);
    v4 = *(a1 + 32);

    CFSetAddValue(v4, a2);
  }
}

uint64_t sub_100054A1C(const void *a1)
{
  pthread_mutex_lock(&stru_1000A9480);
  result = qword_1000A9580;
  if (!qword_1000A9580)
  {
    goto LABEL_31;
  }

  result = CFDictionaryGetValue(qword_1000A9580, a1);
  if (!result)
  {
    goto LABEL_31;
  }

  v3 = result;
  if (!*(result + 208))
  {
    goto LABEL_31;
  }

  if (*(result + 208) == -1)
  {
    v5 = -1;
    atomic_compare_exchange_strong((result + 208), &v5, 0);
    if (v5 != -1 || dword_1000A9590 || !dword_1000A958C)
    {
      goto LABEL_31;
    }

    v6 = dword_1000A958C - 1;
    dword_1000A958C = v6;
    if (dword_1000A9588 | v6)
    {
      v7 = 1;
      if (v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      pthread_cond_signal(&stru_1000A94C0);
      v7 = dword_1000A9590 != -1;
      if (dword_1000A958C)
      {
        goto LABEL_19;
      }
    }

    if (v7)
    {
      pthread_cond_broadcast(&stru_1000A94F0);
    }
  }

  else
  {
    if (atomic_fetch_add((result + 208), 0xFFFFFFFF) <= 0)
    {
      goto LABEL_31;
    }

    if (dword_1000A9590 < 0)
    {
      goto LABEL_31;
    }

    v4 = dword_1000A9588;
    if (!dword_1000A9588)
    {
      goto LABEL_31;
    }

    --dword_1000A9588;
    if (!((v4 - 1) | dword_1000A958C | dword_1000A9590))
    {
      pthread_cond_signal(&stru_1000A94C0);
    }
  }

LABEL_19:
  --*(v3 + 200);
  pthread_rwlock_unlock(v3);
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  if (*(v3 + 200))
  {
    goto LABEL_28;
  }

  result = qword_1000A9720;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    result = MOLogWrite();
  }

  if (*(v3 + 208))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  pthread_rwlock_destroy(v3);
  free(v3);
  CFDictionaryRemoveValue(qword_1000A9580, a1);
LABEL_28:

  return pthread_mutex_unlock(&stru_1000A9480);
}

uint64_t sub_100054C38(char a1)
{
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  pthread_mutex_lock(&stru_1000A9480);
  if (a1)
  {
    if (dword_1000A9588)
    {
      v2 = 0;
    }

    else
    {
      v2 = dword_1000A958C == 0;
    }

    if (!v2 || dword_1000A9590 != 0)
    {
      do
      {
        pthread_cond_wait(&stru_1000A94C0, &stru_1000A9480);
        if (dword_1000A9588)
        {
          v4 = 0;
        }

        else
        {
          v4 = dword_1000A958C == 0;
        }
      }

      while (!v4 || dword_1000A9590 != 0);
    }

    v6 = -1;
  }

  else
  {
    v8 = dword_1000A958C;
    for (i = dword_1000A9590; v8 || i == -1; i = dword_1000A9590)
    {
      pthread_cond_wait(&stru_1000A94F0, &stru_1000A9480);
      v8 = dword_1000A958C;
    }

    v6 = i + 1;
  }

  dword_1000A9590 = v6;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  return pthread_mutex_unlock(&stru_1000A9480);
}

uint64_t sub_100054DC4()
{
  result = pthread_mutex_lock(&stru_1000A9480);
  v1 = dword_1000A9590;
  if (dword_1000A9590 == -1)
  {
    dword_1000A9590 = 0;
    pthread_cond_signal(&stru_1000A94C0);
    pthread_cond_broadcast(&stru_1000A94F0);
    pthread_cond_broadcast(&stru_1000A9520);
    pthread_cond_broadcast(&stru_1000A9550);
  }

  else
  {
    if (dword_1000A9590 <= 0)
    {
      __break(1u);
      return result;
    }

    --dword_1000A9590;
    if (v1 == 1)
    {
      pthread_cond_broadcast(&stru_1000A9520);
      v2 = !dword_1000A9588 && dword_1000A958C == 0;
      if (v2 && dword_1000A9590 == 0)
      {
        pthread_cond_signal(&stru_1000A94C0);
      }
    }
  }

  pthread_mutex_unlock(&stru_1000A9480);
  result = qword_1000A9720;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {

    return MOLogWrite();
  }

  return result;
}

void sub_100054ED4(uint64_t a1, const void *a2)
{
  if (!CFSetContainsValue(*(a1 + 32), a2))
  {
    sub_100054F34(a2, *(a1 + 40));
    v4 = *(a1 + 32);

    CFSetAddValue(v4, a2);
  }
}

uint64_t sub_100054F34(const void *a1, int a2)
{
  pthread_mutex_lock(&stru_1000A9480);
  v4 = dword_1000A9590;
  if (a2)
  {
    while (dword_1000A9590)
    {
      pthread_cond_wait(&stru_1000A9520, &stru_1000A9480);
    }

    ++dword_1000A958C;
  }

  else
  {
    while (v4 == -1)
    {
      pthread_cond_wait(&stru_1000A9550, &stru_1000A9480);
      v4 = dword_1000A9590;
    }

    ++dword_1000A9588;
  }

  if (!qword_1000A9580)
  {
    qword_1000A9580 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(qword_1000A9580, a1);
  if (!Value)
  {
LABEL_12:
    v6 = malloc_type_malloc(0xD8uLL, 0x1000040E7203D26uLL);
    pthread_rwlock_init(v6, 0);
    *(v6 + 25) = 1;
    *(v6 + 52) = 0;
    CFDictionarySetValue(qword_1000A9580, a1, v6);
    goto LABEL_13;
  }

  v6 = Value;
  ++*(Value + 25);
LABEL_13:
  pthread_mutex_unlock(&stru_1000A9480);
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  v7 = v6;
  if (!a2)
  {
    goto LABEL_19;
  }

  v7 = pthread_rwlock_wrlock(v6);
  v8 = 0;
  atomic_compare_exchange_strong(v6 + 52, &v8, 0xFFFFFFFF);
  if (v8)
  {
    do
    {
      __break(1u);
LABEL_19:
      LODWORD(v7) = pthread_rwlock_rdlock(v7);
    }

    while ((atomic_fetch_add(v6 + 52, 1u) & 0x80000000) != 0);
  }

  result = qword_1000A9720;
  if (qword_1000A9720)
  {
    if (*(qword_1000A9720 + 44) >= 7)
    {
      return MOLogWrite();
    }
  }

  return result;
}

void sub_100055124(uint64_t a1, id a2)
{
  v3 = objc_retainBlock(a2);
  v3[2](v3, a1);
}

uint64_t sub_10005521C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1000A9710;
  qword_1000A9710 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000564AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000564D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000564EC(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 != 4)
  {
    v10 = *(a1 + 48);
    if (v10 == 1)
    {
      a4 = [v7 lastPathComponent];
      if ([a4 isEqualToString:@"TemporaryAppReferences"])
      {

LABEL_13:
        v13 = *(*(a1 + 32) + 8);
        obj = *(v13 + 40);
        a4 = [MIAppReferenceMetadata referenceMetadataFromURL:v8 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (!a4)
        {
          v9 = 0;
          goto LABEL_20;
        }

        v14 = [a4 personas];
        v15 = [v14 count];

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v16 = [a4 personas];
          v18 = [v8 path];
          MOLogWrite();
        }

        *(*(*(a1 + 40) + 8) + 24) += v15;
        goto LABEL_18;
      }

      if (*(a1 + 48) != 2)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = [v8 lastPathComponent];
    v12 = [v11 isEqualToString:@"AppReferences"];

    if (v10 == 1)
    {

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (!v12)
    {
LABEL_19:
      v9 = 1;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v9 = 1;
  *a4 = 1;
LABEL_20:

  return v9;
}

uint64_t sub_1000571A8(int a1, void *a2, size_t *a3, int a4)
{
  v9 = 0;
  v10 = 0;
  if (!a2 || !a3)
  {
LABEL_7:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!sub_10005729C(a1, &v9))
  {
    if ((v9 & 0x3E) != 0x2E)
    {
      return 0;
    }

    if (v10 < 2)
    {
      if (HIDWORD(v10) == HIDWORD(v9) - 1)
      {
        return sub_100057744(HIDWORD(v10), a2, a3);
      }

      if (a4)
      {
        return sub_100057634(a1, a2, a3, HIDWORD(v9), SHIDWORD(v10));
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10005729C(int a1, uint64_t a2)
{
  fat_header = 0;
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  *a2 = 0;
  *(a2 + 8) = 0;
  result = fstat(a1, &v20);
  if (result != -1)
  {
    if (sub_100057A64(a1, &fat_header, 8uLL, 0))
    {
      if (fat_header.magic != -1095041334)
      {
        return 0;
      }

      swap_fat_header(&fat_header, NX_LittleEndian);
      nfat_arch = fat_header.nfat_arch;
      *(a2 + 4) = fat_header.nfat_arch;
      if (sub_100057AB0(a1, nfat_arch, &v21))
      {
        if (v21.cputype == 16777228)
        {
          v18 = 0u;
          v19 = 0u;
          if (v20.st_size > v21.offset && v21.size >= 0x1C && v20.st_size >= (v21.size + v21.offset) && v21.align <= 0x40)
          {
            if (v21.size + v21.offset > 0x1F)
            {
              if (sub_100057A64(a1, &v18, 0x20uLL, v21.offset) && v18 == -17958193 && HIDWORD(v18) == 2)
              {
                *a2 |= 0x10u;
                ++fat_header.nfat_arch;
              }
            }

            else
            {
              *__error() = 34;
            }
          }
        }

        if (fat_header.nfat_arch)
        {
          v6 = 0;
          while (1)
          {
            if (!sub_100057AB0(a1, v6, &v21))
            {
              return 0xFFFFFFFFLL;
            }

            if (v21.cputype == 12)
            {
              *a2 |= 2u;
              v7 = 1;
            }

            else
            {
              v7 = 0;
              if (v21.cputype == 16777228)
              {
                *a2 |= 4u;
                ++*(a2 + 8);
                *(a2 + 12) = v6;
              }
            }

            v18 = 0u;
            v19 = 0u;
            if (v21.size + v21.offset <= 0x1F)
            {
              *__error() = 34;
              return 0xFFFFFFFFLL;
            }

            if (!sub_100057A64(a1, &v18, 0x20uLL, v21.offset))
            {
              return 0xFFFFFFFFLL;
            }

            if (v18 == -17958193)
            {
              break;
            }

            if (v18 == -17958194)
            {
              v8 = HIDWORD(v18);
              v9 = v19;
              v10 = 28;
              v11 = 28;
              goto LABEL_29;
            }

            syslog(5, "ignoring slice with magic %08x\n", v18);
LABEL_47:
            if (++v6 >= fat_header.nfat_arch)
            {
              return 0;
            }
          }

          v8 = HIDWORD(v18);
          v9 = v19;
          v10 = 32;
          v11 = 32;
LABEL_29:
          if (v8 == 2)
          {
            *a2 |= 0x20u;
            v11 = v10;
          }

          if (v7)
          {
            if (v9)
            {
              while (1)
              {
                v17 = 0;
                v12 = sub_100057B04(a1, &v17, 8uLL, v11, v21.offset, v21.size);
                v13 = v12;
                if (!v12)
                {
                  goto LABEL_42;
                }

                if (v17 == 37)
                {
                  break;
                }

                v11 += HIDWORD(v17);
                if (!--v9)
                {
                  goto LABEL_36;
                }
              }

              v15 = 0;
              v16 = 0;
              if (!sub_100057B04(a1, &v15, 0x10uLL, v11, v21.offset, v21.size))
              {
LABEL_42:
                v14 = 1;
                goto LABEL_43;
              }

              if (WORD1(v16) <= 6u)
              {
                *a2 |= 8u;
              }
            }

            else
            {
LABEL_36:
              v13 = 0;
            }

            v14 = 6;
LABEL_43:
            if (v14 != 6 || v13)
            {
              if (v14 != 6)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              *a2 |= 8u;
            }
          }

          goto LABEL_47;
        }

        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100057634(int a1, void *a2, size_t *a3, unsigned int a4, int a5)
{
  if (a4 >= 0x401)
  {
    v5 = __error();
    v6 = 22;
LABEL_7:
    *v5 = v6;
    return 0xFFFFFFFFLL;
  }

  v12 = 20 * a4 + 8;
  v13 = malloc_type_malloc(v12, 0x6C149251uLL);
  if (!v13)
  {
    v5 = __error();
    v6 = 12;
    goto LABEL_7;
  }

  v14 = v13;
  if (sub_100057A64(a1, v13, v12, 0))
  {
    result = 0;
    v16 = &v14[5 * a4 - 5];
    v17 = v16[6];
    v18 = &v14[5 * a5];
    v19 = *(v18 + 2);
    v16[6] = v18[6];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;
    *(v18 + 2) = v20;
    v18[6] = v17;
    v14[1] = bswap32(a4 - 1);
    *a2 = v14;
    *a3 = v12;
    return result;
  }

  free(v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100057744(unsigned int a1, void *a2, void *a3)
{
  v6 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *v7 = -1095041334;
    v7[1] = bswap32(a1);
    *a2 = v7;
    *a3 = 8;
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000577C8(int a1, void *a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!sub_10005729C(a1, &v6))
  {
    if ((~v6 & 0x3E) != 0)
    {
      return 0;
    }

    if (v7 < 2)
    {
      if (HIDWORD(v7) == HIDWORD(v6))
      {
        return sub_100057744(HIDWORD(v7) + 1, a2, a3);
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_11;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000578A0(char *a1, int a2, int a3, _BYTE *a4)
{
  v20 = 0;
  v21 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = open(a1, 256);
  v9 = v8;
  if (v8 == -1)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(3, "Could not open %s for reading: %s", a1, v11);
    goto LABEL_11;
  }

  if (a2)
  {
    if (!sub_1000571A8(v8, &v21, &v20, a3))
    {
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if (a3)
  {
    syslog(4, "allow_reorder not allowed for unhiding");
  }

  if (sub_1000577C8(v9, &v21, &v20))
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v20)
  {
    close(v9);
    v13 = open(a1, 258);
    v9 = v13;
    if (v13 == -1)
    {
      v17 = __error();
      strerror(*v17);
      syslog(3, "Could not open %s for writing: %s");
    }

    else
    {
      v14 = v20;
      v15 = pwrite(v13, v21, v20, 0);
      v16 = v15;
      if (v15 != v14 && v15 != -1)
      {
        *__error() = 5;
      }

      if (v16 == v14)
      {
        if (a4)
        {
          v12 = 0;
          *a4 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v18 = __error();
        strerror(*v18);
        syslog(3, "Could not write new header to executable: %s");
      }
    }
  }

  v12 = 0;
LABEL_23:
  if (v21)
  {
    free(v21);
  }

  if (v9 != -1)
  {
    close(v9);
  }

  return v12;
}