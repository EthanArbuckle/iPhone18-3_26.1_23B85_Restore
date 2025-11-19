uint64_t start()
{
  v0 = __chkstk_darwin();
  if (v0 == 1 || (v2 = v1, v3 = v0, v4 = strcmp(*(v1 + 8), "--init"), v5 = v4, v3 == 2) && !v4)
  {
    fwrite("usage: dirs_cleaner [--init] directory ...\n", 0x2BuLL, 1uLL, __stderrp);
    exit(64);
  }

  bzero(v74, 0x520uLL);
  if (v5)
  {
    v76[0] = 5;
    if (v3 < 2)
    {
      return 0;
    }

    v72 = v5;
    v6 = 1;
    goto LABEL_11;
  }

  if (!sub_1000010DC(v78, 0x14u, 0))
  {
    v89 |= 1u;
  }

  v76[0] = 5;
  if (v3 > 2)
  {
    v72 = 0;
    v6 = 2;
LABEL_11:
    v73 = 0;
    v7 = 0;
    v8 = (v2 + 8 * v6);
    v9 = v3 - v6;
    while (1)
    {
      v10 = *v8;
      bzero(&v91, 0x878uLL);
      bzero(v90, 0x400uLL);
      v11 = realpath_DARWIN_EXTSN(v10, v90);
      if (!v11)
      {
        v14 = __error();
        v15 = __stderrp;
        strerror(*v14);
        fprintf(v15, "%s: realpath: (%s, NULL, ...) failed with errno=%d: %s\n");
        goto LABEL_32;
      }

      v12 = statfs(v11, &v91);
      if (v12)
      {
        v13 = __stderrp;
        strerror(v12);
        fprintf(v13, "%s: statfs: (%s, NULL, ...) failed with errno=%d: %s\n");
        goto LABEL_32;
      }

      v16 = strlen(v91.f_mntonname);
      if (v16 == 12)
      {
        if (*v91.f_mntonname != 0x657461766972702FLL || *&v91.f_mntonname[8] != 1918989871)
        {
LABEL_31:
          v20 = __stderrp;
          strerror(22);
          fprintf(v20, "%s: (bad path: %s, NULL, ...) failed with errno=%d: %s\n");
        }
      }

      else
      {
        if (v16 != 19)
        {
          goto LABEL_31;
        }

        v17 = *v91.f_mntonname == 0x657461766972702FLL && *&v91.f_mntonname[8] == 0x626F6D2F7261762FLL;
        if (!v17 || *&v91.f_mntonname[11] != 0x656C69626F6D2F72)
        {
          goto LABEL_31;
        }
      }

LABEL_32:
      v21 = __strlcpy_chk();
      v22 = v21;
      if ((v21 - 1) > 0x3B)
      {
        v25 = __stderrp;
        strerror(22);
        fprintf(v25, "%s: strlcpy(%s, %s, %zu) failed with errno=%d: %s\n");
LABEL_40:
        v75[0] = 0;
        v24 = v89 | 1;
        goto LABEL_41;
      }

      if (v75[v21 - 1] != 47)
      {
        *&v75[v21] = 47;
        v22 = v21 + 1;
      }

      if (mkdir(v75, 0x1C0u))
      {
        v23 = __error();
        if (*v23 != 17)
        {
          v26 = __stderrp;
          strerror(*v23);
          fprintf(v26, "%s: mkdir(%s, 0700) failed with errno=%d: %s\n");
          goto LABEL_40;
        }
      }

      v75[v22 + 2] = 0;
      v88 = v22;
      v24 = v89;
LABEL_41:
      v27 = *v8;
      v89 = v24 & 0xFFFFFFFD;
      if (realpath_DARWIN_EXTSN(v27, v74) && (v77 = 1073971208, !getattrlist(v74, v76, v84, 0x18uLL, 0)))
      {
        if (v84[1] != 2)
        {
          v34 = __error();
          v28 = 20;
          *v34 = 20;
LABEL_44:
          v29 = "dc_reset: %s: %s\n";
LABEL_58:
          v38 = __stderrp;
          v39 = *v8;
          v40 = strerror(v28);
          fprintf(v38, v29, v39, v40);
          v7 = 1;
          goto LABEL_59;
        }

        v86 &= 0xFFFu;
        if (!strncmp("/tmp", v27, 4uLL))
        {
          v86 = 1023;
          v85 = 0;
        }
      }

      else
      {
        v28 = *__error();
        if (v28)
        {
          goto LABEL_44;
        }
      }

      v30 = v89;
      if (v89)
      {
        goto LABEL_55;
      }

      *&v75[v88] = 22616;
      if (!mkdtemp(v75))
      {
        v35 = *__error();
        v36 = __stderrp;
        v37 = strerror(v35);
        fprintf(v36, "%s: mkdtemp(%s) failed with errno=%d: %s\n", "dc_reset", v75, v35, v37);
        v30 = v89;
LABEL_55:
        v89 = v30 | 2;
        goto LABEL_56;
      }

      v77 = 1073971200;
      *&v91.f_bsize = v85;
      LODWORD(v91.f_blocks) = v86;
      HIDWORD(v91.f_blocks) = v87;
      if (setattrlist(v75, v76, &v91, 0x10uLL, 0))
      {
        v31 = *__error();
        v32 = __stderrp;
        v33 = strerror(v31);
        fprintf(v32, "%s: setattrlist(%s, ...) failed with errno=%d: %s\n", "dc_swap_dirs", v75, v31, v33);
        if (!v31)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!renamex_np(v74, v75, 2u))
        {
          goto LABEL_65;
        }

        v41 = *__error();
        v42 = __stderrp;
        v43 = strerror(v41);
        fprintf(v42, "%s: renamex_np(%s, %s, RENAME_SWAP) failed with errno=%d: %s\n", "dc_swap_dirs", v74, v75, v41, v43);
        if (!v41)
        {
          goto LABEL_65;
        }
      }

      v89 |= 2u;
      if (rmdir(v75))
      {
        v44 = *__error();
        v45 = __stderrp;
        v46 = strerror(v44);
        fprintf(v45, "%s: rmdir(%s) failed with errno=%d: %s\n", "dc_swap_dirs", v75, v44, v46);
      }

LABEL_65:
      if ((v89 & 2) == 0)
      {
        v73 = 1;
        goto LABEL_59;
      }

LABEL_56:
      v28 = sub_100000EB4(v74, 1);
      if (v28)
      {
        v29 = "dc_clean_sync: %s: %s\n";
        goto LABEL_58;
      }

LABEL_59:
      ++v8;
      if (!--v9)
      {
        if (v72)
        {
          return 0;
        }

        if (v7)
        {
          if ((v89 & 1) == 0)
          {
            v75[v88] = 0;
            sub_100000EB4(v74, 0);
          }

          return 0;
        }

        if ((v73 & 1) == 0 || !sub_100000F84(v74))
        {
          return 0;
        }

        v75[v88] = 0;
        v48 = removefile_state_alloc();
        state = v48;
        if (!v48)
        {
          v53 = __stderrp;
          v69 = 12;
          v70 = strerror(12);
          v54 = "%s: removefile_state_alloc(...) failed with errno=%d: %s\n";
LABEL_80:
          fprintf(v53, v54, "dc_init_thread_ctx", v69, v70, v71);
          goto LABEL_88;
        }

        if (removefile_state_set(v48, 3u, sub_1000011A8))
        {
          v49 = *__error();
          v50 = __stderrp;
          v51 = strerror(v49);
          fprintf(v50, "%s: failed to set error cb!\n failed with errno=%d: %s\n", "dc_init_thread_ctx", v49, v51);
        }

        v52 = pthread_mutex_init(&v81, 0);
        if (v52)
        {
          v53 = __stderrp;
          v69 = v52;
          v70 = strerror(v52);
          v54 = "%s: pthread_mutex_init(...) failed with errno=%d: %s\n";
          goto LABEL_80;
        }

        v55 = pthread_cond_init(&v82, 0);
        if (v55)
        {
          v56 = v55;
          v57 = __stderrp;
          v58 = strerror(v55);
          fprintf(v57, "%s: pthread_cond_init(...) failed with errno=%d: %s\n", "dc_init_thread_ctx", v56, v58);
          goto LABEL_87;
        }

        v59 = pthread_mutex_lock(&v81);
        if (!v59)
        {
          v60 = pthread_create(&v80, 0, sub_100001234, v74);
          if (v60)
          {
            v61 = v60;
            v62 = __stderrp;
            v63 = strerror(v60);
            fprintf(v62, "%s: pthread_create(...) failed with errno=%d: %s\n", "dc_init_thread_ctx", v61, v63);
            v59 = pthread_mutex_unlock(&v81);
            if (!v59)
            {
              pthread_cond_destroy(&v82);
LABEL_87:
              pthread_mutex_destroy(&v81);
LABEL_88:
              if ((v89 & 4) == 0)
              {
LABEL_94:
                removefile_state_free(state);
                return 0;
              }

              v64 = pthread_mutex_lock(&v81);
              if (!v64)
              {
                if ((v89 & 8) != 0 || (v89 |= 8u, (v64 = pthread_cond_signal(&v82)) == 0))
                {
                  v64 = pthread_mutex_unlock(&v81);
                  if (!v64)
                  {
                    pthread_join(v80, 0);
                    pthread_cond_destroy(&v82);
                    pthread_mutex_destroy(&v81);
                    goto LABEL_94;
                  }
                }
              }

              v67 = __stderrp;
              strerror(v64);
              fprintf(v67, "dirs_cleaner: tag=%s err=%d err_str=%s\n");
LABEL_101:
              exit(71);
            }
          }

          else
          {
            v83 = 4;
            v89 |= 4u;
            v59 = pthread_mutex_unlock(&v81);
            if (!v59)
            {
              if (removefile(v75, state, 0x303u))
              {
                v65 = __error();
                if (*v65 != 89)
                {
                  v66 = __stderrp;
                  strerror(*v65);
                  fprintf(v66, "%s: removefile(%s, ...) failed with errno=%d: %s\n");
                }
              }

              goto LABEL_88;
            }
          }
        }

        v68 = __stderrp;
        strerror(v59);
        fprintf(v68, "dirs_cleaner: tag=%s err=%d err_str=%s\n");
        goto LABEL_101;
      }
    }
  }

  return 0;
}

uint64_t sub_100000EB4(uint64_t a1, int a2)
{
  v2 = 1024;
  if (a2)
  {
    v2 = 0;
  }

  v3 = (a1 + v2);
  v4 = removefile_state_alloc();
  v5 = v4;
  if (v4)
  {
    removefile_state_set(v4, 3u, sub_1000011A8);
  }

  if (!removefile(v3, v5, 0x303u))
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v6 = __error();
  v7 = *v6;
  v8 = __stderrp;
  v9 = strerror(*v6);
  fprintf(v8, "%s: removefile(%s, NULL, ...) failed with errno=%d: %s\n", "dc_clean_sync", v3, v7, v9);
  if (v5)
  {
LABEL_7:
    removefile_state_free(v5);
  }

  return v7;
}

BOOL sub_100000F84(uint64_t a1)
{
  result = sub_1000010DC((a1 + 1128), *(a1 + 1272), (a1 + 1112));
  if (result)
  {
    memset(&v9, 0, 512);
    if (statfs(a1, &v9))
    {
      v3 = *__error();
      v4 = __stderrp;
      v5 = strerror(v3);
      fprintf(v4, "%s: statfs(%s, ...) failed with errno=%d: %s\n", "dc_should_reclaim", a1, v3, v5);
      return 0;
    }

    else
    {
      v6 = 0x40000000 / v9.f_bsize;
      v7 = 5 * v9.f_blocks / 0x64;
      if (v7 < v6)
      {
        v6 = 5 * v9.f_blocks / 0x64;
      }

      if (v7 >= 0x10000000 / v9.f_bsize)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0x10000000 / v9.f_bsize;
      }

      return v8 > v9.f_bfree;
    }
  }

  return result;
}

BOOL sub_1000010DC(__darwin_time_t *a1, unsigned int a2, void *a3)
{
  v12.tv_sec = 0;
  *&v12.tv_usec = 0;
  if (gettimeofday(&v12, 0))
  {
    v6 = *__error();
    v7 = __stderrp;
    v8 = strerror(v6);
    fprintf(v7, "%s: gettimeofday(...) failed with errno=%d: %s\n", "dtc_timespan2timespec", v6, v8);
    v9 = 0;
  }

  else if (a3)
  {
    v10 = a2;
    if (*a3 - v12.tv_sec < a2)
    {
      v10 = *a3 - v12.tv_sec;
    }

    v9 = v10 + v12.tv_sec;
    if (*a3 <= v12.tv_sec)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v12.tv_sec + a2;
  }

  *a1 = v9;
  return v9 != 0;
}

uint64_t sub_1000011A8(_removefile_state *a1)
{
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    fprintf(__stderrp, "dc removefile unknown error on path: %s ");
  }

  else
  {
    fprintf(__stderrp, "dc removefile error: %d on path: %s ");
  }

  fwrite("...continuing...\n", 0x11uLL, 1uLL, __stderrp);
  return 1;
}

uint64_t sub_100001234(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 1160));
  if (v2)
  {
LABEL_12:
    v8 = __stderrp;
    strerror(v2);
    fprintf(v8, "dirs_cleaner: tag=%s err=%d err_str=%s\n");
    goto LABEL_13;
  }

  while ((*(a1 + 1308) & 8) == 0)
  {
    v2 = pthread_cond_timedwait((a1 + 1224), (a1 + 1160), (a1 + 1128));
    if (v2)
    {
      if (v2 != 60)
      {
        goto LABEL_12;
      }

      if (!sub_100000F84(a1))
      {
        if (removefile_cancel(*(a1 + 1144)))
        {
          v3 = *__error();
          v4 = __stderrp;
          v5 = strerror(v3);
          fprintf(v4, "%s: removefile_cancel(...) failed with errno=%d: %s\n", "dtc_timer", v3, v5);
        }

        *(a1 + 1308) |= 8u;
      }
    }
  }

  v6 = pthread_mutex_unlock((a1 + 1160));
  if (v6)
  {
    v9 = __stderrp;
    strerror(v6);
    fprintf(v9, "dirs_cleaner: tag=%s err=%d err_str=%s\n");
LABEL_13:
    exit(71);
  }

  return 0;
}