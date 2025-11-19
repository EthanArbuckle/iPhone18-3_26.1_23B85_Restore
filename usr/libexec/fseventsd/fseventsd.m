uint64_t sub_100000950()
{
  v0 = mach_thread_self();
  pthread_setname_np("com.apple.fseventsd.dev.fsevents");
  policy_info = 19;
  thread_policy_set(v0, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v0);
  v20 = 0;
  v1 = mach_thread_self();
  get_default = 1;
  policy_infoCnt[0] = 1;
  if (!thread_policy_get(v1, 1u, &v20, policy_infoCnt, &get_default))
  {
    v20 = 0;
    thread_policy_set(v1, 1u, &v20, 1u);
  }

  mach_port_deallocate(mach_task_self_, v1);
  if (!dword_1000246C8)
  {
    while (1)
    {
      pthread_mutex_lock(&stru_1000241C0);
      v4 = qword_100024730;
      if (qword_100024730)
      {
        break;
      }

      do
      {
LABEL_13:
        v7 = v4;
        v4 = *(v4 + 32);
      }

      while (v4);
      v8 = sub_10000D850(1, 0x10000);
      *(v7 + 32) = v8;
      if (v8)
      {
        v5 = v8;
        ++dword_10002473C;
        goto LABEL_16;
      }

      pthread_cond_signal(&stru_100024200);
      pthread_mutex_unlock(&stru_1000241C0);
      v16 = sub_100009620();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000189CC(policy_infoCnt, policy_infoCnt + 1);
      }

      sleep(2u);
LABEL_35:
      if (dword_1000246C8)
      {
        goto LABEL_4;
      }
    }

    v5 = qword_100024730;
    while (1)
    {
      v6 = v5[3];
      if (*v5 - v6 >= 0x8000 || v5[1] == v6)
      {
        break;
      }

      v5 = *(v5 + 4);
      if (!v5)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v9 = v5[1];
    v10 = v5[3];
    if (v9 == v5[2] && v9 == v10)
    {
      v10 = 0;
      *(v5 + 1) = 0;
      v5[1] = 0;
    }

    v12 = *v5 - v10;
    pthread_mutex_unlock(&stru_1000241C0);
    v13 = read(dword_100024048, (*(v5 + 3) + v10), v12);
    if (v13 < 0)
    {
      if (*__error() == 9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v14 = v13;
      if (v13)
      {
        if (v13 <= v12)
        {
          v5[3] += v13;
          pthread_mutex_lock(&stru_1000241C0);
          pthread_cond_signal(&stru_100024200);
          pthread_mutex_unlock(&stru_1000241C0);
        }

        else
        {
          v15 = sub_100009620();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v20 = 134218240;
            v21 = v14;
            v22 = 1024;
            v23 = v12;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "fsevent_producer: ************* DANGER : read %zd bytes but buffer is only %u", &v20, 0x12u);
          }
        }
      }

      else if (dword_1000246C8)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

LABEL_4:
  if (*__error() != 9)
  {
    v2 = dword_100024048;
    if ((dword_100024048 & 0x80000000) == 0)
    {
      dword_100024048 = -1;
      close(v2);
    }
  }

  pthread_mutex_lock(&stru_1000241C0);
  pthread_cond_signal(&stru_100024200);
  pthread_mutex_unlock(&stru_1000241C0);
  return 0;
}

uint64_t sub_100000C88()
{
  v23.tv_sec = 0;
  v23.tv_nsec = 0;
  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  v21.tv_sec = 0;
  *&v21.tv_usec = 0;
  v0 = mach_thread_self();
  pthread_setname_np("com.apple.fseventsd.notify");
  policy_info = 18;
  thread_policy_set(v0, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v0);
  if (!dword_1000246C8)
  {
    v2 = 0;
    v3 = 9999;
    while (1)
    {
      while (1)
      {
        pthread_mutex_lock(&stru_1000241C0);
LABEL_5:
        v4 = qword_100024730;
        if (!qword_100024730)
        {
          break;
        }

        while (1)
        {
          v5 = *(v4 + 4);
          if (v5 != *(v4 + 12) || *(v4 + 8) > v5)
          {
            break;
          }

          v4 = *(v4 + 32);
          if (!v4)
          {
            goto LABEL_9;
          }
        }

        pthread_mutex_unlock(&stru_1000241C0);
LABEL_19:
        v8 = 0;
        if (!v4)
        {
          if (dword_1000246CC)
          {
            goto LABEL_31;
          }

          if (!v2)
          {
            goto LABEL_46;
          }

LABEL_33:
          gettimeofday(&v21, 0);
          v3 = sub_100002DE8(&v21);
          sub_10000309C(&qword_100025830);
          if (!v4)
          {
            goto LABEL_46;
          }

          v14 = *(v4 + 4);
          if (v14 == *(v4 + 8) && v14 <= *(v4 + 12))
          {
            v4 = *(v4 + 32) ? *(v4 + 32) : qword_100024730;
            if (!v4)
            {
              goto LABEL_46;
            }

            v15 = *(v4 + 4);
            if (v15 == *(v4 + 8) && v15 <= *(v4 + 12))
            {
              goto LABEL_46;
            }
          }

          ++v8;
        }

        if (v8 >= 101)
        {
          v16 = sub_100009620();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100018A00(&v18, v19);
          }

          goto LABEL_46;
        }

        v9 = *(v4 + 8);
        v10 = *(v4 + 12);
        if (v9 < v10)
        {
          goto LABEL_22;
        }

        if (v9 > v10 && *(v4 + 4) == v9)
        {
          *(v4 + 4) = 0;
LABEL_22:
          *(v4 + 8) = v10;
          v9 = v10;
        }

        if (!dword_1000246C8)
        {
          v11 = *(v4 + 4);
          v12 = v9 - v11;
          sub_100001034((*(v4 + 24) + v11), v9 - v11, &qword_100025830, sub_100001BC0, 0);
          *(v4 + 4) += v12;
          if (dword_1000246CC)
          {
LABEL_31:
            v13 = -dword_1000246CC;
            sub_10000BE0C(sub_10000D920);
            atomic_fetch_add_explicit(&dword_1000246CC, v13, memory_order_relaxed);
          }

          v2 = 1;
          goto LABEL_33;
        }

LABEL_46:
        if (dword_1000246C8)
        {
          return sub_10000D7E0();
        }
      }

LABEL_9:
      if (dword_1000246CC)
      {
        pthread_mutex_unlock(&stru_1000241C0);
        if (dword_1000246CC)
        {
          v17 = -dword_1000246CC;
          sub_10000BE0C(sub_10000D920);
          v4 = 0;
          atomic_fetch_add_explicit(&dword_1000246CC, v17, memory_order_relaxed);
          v2 = 1;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_19;
      }

      gettimeofday(&v22, 0);
      if ((v3 - 1500001) < 0xFFFFFFFFFFE91CA0)
      {
        v3 = 1500000;
      }

      v6 = 1000 * v3 + 1000 * v22.tv_usec;
      v23.tv_sec = v22.tv_sec + v6 / 0x3B9ACA00;
      v23.tv_nsec = v6 % 0x3B9ACA00;
      v7 = pthread_cond_timedwait(&stru_100024200, &stru_1000241C0, &v23);
      if (!v7)
      {
LABEL_15:
        if (!dword_1000246CC && dword_1000246C8)
        {
          pthread_mutex_unlock(&stru_1000241C0);
          return sub_10000D7E0();
        }

        goto LABEL_5;
      }

      if (v7 != 60)
      {
        if (dword_1000246C8)
        {
          goto LABEL_15;
        }

        goto LABEL_5;
      }

      pthread_mutex_unlock(&stru_1000241C0);
      gettimeofday(&v21, 0);
      v3 = sub_100002DE8(&v21);
      sub_10000309C(&qword_100025830);
    }
  }

  return sub_10000D7E0();
}

uint64_t sub_100001034(_DWORD *a1, int a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, __int16 *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v88 = 47;
  if (a2 >= 1)
  {
    v74 = 0;
    v77 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v57 = 0;
    v75 = 0;
    v76 = 0;
    v70 = 0;
    v78 = a2;
    v5 = a1;
    v6 = a1 + a2;
    v55 = v6;
    while (1)
    {
      v7 = *v5;
      v8 = (v5 + 2);
      if ((*v5 & 0xFFF) != 0x3E7)
      {
        v80 = v5[1];
        v9 = (byte_100024288 & ((*v5 & 0x2000u) >> 13)) != 0 ? (1 << *v5) | 0x20000000 : 1 << *v5;
        if (qword_1000246D0[dword_1000246E0] != -1)
        {
          break;
        }
      }

      ++dword_100024738;
      if (atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed) == -2)
      {
        v52 = sub_100009620();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_100015F18(&v94, &v95);
        }

        sub_10000A794(sub_10000D90C);
        v50 = a3;
        v51 = 2415919104;
      }

      else
      {
        v50 = a3;
        v51 = 0x80000000;
      }

      a4(v50, 0xFFFFFFFFLL, 0, &v88, 2, 2, v51);
      if (*v8 == 45887)
      {
        v8 = v5 + 5;
      }

      else
      {
        v53 = sub_100009620();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_100015F60(&v86, v87);
        }
      }

LABEL_148:
      v5 = v8;
      if (v8 - a1 >= v78)
      {
        return 1;
      }
    }

    if (v8 >= v6)
    {
      goto LABEL_148;
    }

    v81 = v9;
    v10 = 0;
    v82 = 0;
    v67 = 0;
    v68 = 0;
    *&v58[8] = 0;
    v66 = 0;
    v69 = 0;
    v11 = 0;
    v12 = 0;
    *v58 = (v7 - 11);
    v13 = "created";
    if (v7 == 12)
    {
      v13 = "changed";
    }

    v56 = v13;
    while (1)
    {
      v14 = *v8;
      if (v14 == 45887)
      {
        ++v8;
        goto LABEL_148;
      }

      v15 = v8[1];
      if (atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed) == -2)
      {
        v16 = sub_100009620();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100015ED0(&v92, &v93);
        }

        sub_10000A794(sub_10000D90C);
        (a4)(a3, 0xFFFFFFFFLL, 0, &v88, 2, 2, 2415919104, -1, 0, 0, a5);
        atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed);
      }

      v17 = (v8 + 2);
      if (v7 == 15)
      {
        if (v10 <= 3)
        {
          if (v10 <= 1)
          {
            if (v10)
            {
              if (v10 == 1 && v14 == 9)
              {
                v77 |= 1u;
                v65 = *v17;
                v82 = *v17;
              }
            }

            else if (v14 == 4)
            {
              v64 = 0;
              v65 = 0;
              v62 = 0;
              v63 = 0;
              v60 = 0;
              v61 = 0;
              v59 = 0;
              v77 = 0;
              v57 = *v17;
            }

            else
            {
              v57 = 0;
              v64 = 0;
              v65 = 0;
              v62 = 0;
              v63 = 0;
              v60 = 0;
              v61 = 0;
              v59 = 0;
              v77 = 0;
            }

            goto LABEL_136;
          }

          if (v10 == 2)
          {
            if (v14 == 7)
            {
              v64 = *v17;
              v33 = v77 | 2;
              goto LABEL_75;
            }
          }

          else if (v14 == 5)
          {
            v63 = *v17;
            v33 = v77 | 4;
LABEL_75:
            v77 = v33;
          }
        }

        else if (v10 <= 5)
        {
          if (v10 == 4)
          {
            if (v14 == 5)
            {
              v62 = *v17;
              v33 = v77 | 8;
              goto LABEL_75;
            }
          }

          else if (v14 == 4)
          {
            v61 = *v17;
            v33 = v77 | 0x10;
            goto LABEL_75;
          }
        }

        else
        {
          if (v10 == 6)
          {
            if (v14 == 4)
            {
              v60 = *v17;
            }

            goto LABEL_136;
          }

          if (v10 != 7)
          {
            if (v10 != 8 || v14 != 5 || (v77 & 0x5F) == 0)
            {
              goto LABEL_136;
            }

            v18 = (snprintf(__str, 0x400uLL, "/.activity/%d/%d/%lld/%lld/%lld/%u/%u/%lld", v57, v65, v64, v63, v62, v61, v60, v59) + 1);
            v19 = __str;
            v21 = v82;
            v20 = a3;
            v22 = v80;
            goto LABEL_135;
          }

          if (v14 == 5)
          {
            v59 = *v17;
            v33 = v77 | 0x40;
            goto LABEL_75;
          }
        }
      }

      else
      {
        if ((v14 - 1) <= 1)
        {
          if (*v17 == 47)
          {
            v11 = (v8 + 2);
          }

          else
          {
            v26 = sub_100009620();
            v11 = &unk_100024230;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315138;
              *&__str[4] = v8 + 2;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "consumer: DANGER! fname does not begin with a '/' (%s)", __str, 0xCu);
            }
          }

          if (v11[1])
          {
            v27 = strrchr(v11, 47);
            if (!v27)
            {
              goto LABEL_119;
            }

            v28 = v27;
            v29 = v27 - 12;
            if (v27 - 12 <= v11 || strncmp(v27 - 12, "/..namedfork", 0xCuLL))
            {
              goto LABEL_51;
            }

            v81 |= 0x200u;
            *v29 = 0;
            v38 = strrchr(v11, 47);
            if (v38)
            {
              v28 = v38;
              v39 = v38 + 1;
              if (v38[1])
              {
                *v38 = 0;
                v40 = strrchr(v11, 47);
                if (v40 && (v41 = v40, !strcmp(v40 + 1, v39)))
                {
                  v28 = v41;
                }

                else
                {
                  *v28 = 47;
                }
              }

LABEL_51:
              v12 = v28 + 1;
              v70 = v28[1];
              v30 = strlen(v11) + 1;
              v24 = v28 - v11 + 2;
LABEL_122:
              v75 = v30;
              if (v82)
              {
                if (v12 && (v74 & 0x20000000) != 0)
                {
                  *v12 = v70;
                  v24 = strlen(v11) + 1;
                  v25 = v81 | 0x20000000;
                }

                else
                {
                  v25 = v81;
                }

                v21 = v82;
                v20 = a3;
                v22 = v80;
                v19 = v11;
                v18 = v30;
LABEL_129:
                v76 = v24;
                v81 = v25;
LABEL_135:
                (a4)(v20, v22, v21, v19, v18);
                goto LABEL_136;
              }

              v76 = v24;
              v82 = 0;
              goto LABEL_136;
            }

            if (v11[1])
            {
LABEL_119:
              v46 = sub_100009620();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *__str = 136315138;
                *&__str[4] = v11;
                _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "consumer: DANGER! last_slash is NULL and fname <<%s>> looks bad.", __str, 0xCu);
              }
            }
          }

          v12 = 0;
          v24 = 2;
          v30 = 2;
          goto LABEL_122;
        }

        if (v14 > 9)
        {
          if (v14 == 10)
          {
            v74 = *v17;
            v35 = *v17 & 0xF000;
            switch(v35)
            {
              case 40960:
                v36 = v81 | 0x400000;
                break;
              case 32768:
                v36 = v81 | 0x800000;
                break;
              case 16384:
                v36 = v81 | 0x1000000;
                break;
              default:
                v36 = v81;
                break;
            }

            v81 = v36 | (v74 >> 30 << 19);
            goto LABEL_136;
          }

          if (v14 != 11)
          {
            if (v14 != 12)
            {
              goto LABEL_136;
            }

            v74 = *(v8 + 4);
            v31 = v74 & 0xF000;
            if (v31 == 40960)
            {
              v32 = v81 | 0x400000;
            }

            else if (v31 == 0x8000)
            {
              v32 = v81 | 0x800000;
            }

            else
            {
              v32 = v31 == 0x4000 ? v81 | 0x1000000 : v81;
            }

            v71 = *(v8 + 2);
            v82 = *(v8 + 3);
            v73 = *(v8 + 6);
            v81 = v32 | (v74 >> 30 << 19);
            if (!v11)
            {
              goto LABEL_136;
            }

            if (v12)
            {
              v45 = *(v8 + 2);
              if ((v74 & 0x20000000) != 0)
              {
                *v12 = v70;
                v76 = strlen(v11) + 1;
                v81 |= 0x20000000u;
              }
            }

            else
            {
              v49 = *(v8 + 2);
            }

            v21 = v82;
            v20 = a3;
            v22 = v80;
            v19 = v11;
            v18 = v75;
            goto LABEL_135;
          }

          v72 = *v17;
        }

        else
        {
          switch(v14)
          {
            case 5:
              if (*v58 > 1u)
              {
                v34 = v66;
              }

              else
              {
                v34 = v66;
                if (!v66)
                {
                  *&v58[4] = *v17;
                  v34 = 1;
                }
              }

              if (*v58 <= 1u && v69 == 2 && v34 == 1)
              {
                v44 = snprintf(__str, 0x400uLL, "/.docid/%lld/%s/%lld/src=%lld,dst=%lld", v82, v56, *&v58[4], v67, v68) + 1;
                v6 = v55;
                v76 = strrchr(__str, 47) - __str + 2;
                (a4)(a3, v80, v82, __str, v44);
                v66 = 1;
                v69 = 2;
              }

              else
              {
                v66 = v34;
              }

              break;
            case 7:
              if (v15 == 4)
              {
                v37 = *v17;
              }

              else
              {
                v37 = *v17;
              }

              if (v69)
              {
                v42 = v67;
              }

              else
              {
                v42 = v37;
              }

              v43 = v68;
              if (v69)
              {
                v43 = v37;
              }

              v67 = v42;
              v68 = v43;
              ++v69;
              break;
            case 9:
              v23 = *v17;
              v82 = *v17;
              if (v7 == 13)
              {
                v89 = *v17;
                *__str = 0;
                sub_1000021A0(&unk_100025758);
                if (sub_10001232C(&v89, __str))
                {
                  sub_1000024C8(&unk_100025758);
                  v90 = v23;
                  ioctl(dword_100024048, 0x80047368uLL, &v90);
                }

                else
                {
                  *(*__str + 32) |= 0x400u;
                  sub_1000024C8(&unk_100025758);
                  v47 = 0;
                  atomic_compare_exchange_strong_explicit(dword_100024700, &v47, 1u, memory_order_relaxed, memory_order_relaxed);
                  if (qword_100024748)
                  {
                    v48 = *(qword_100024748 + 16);
                    if (v48)
                    {
                      sub_1000033CC(v48);
                    }
                  }
                }
              }

              if (v11)
              {
                if (v12 && (v74 & 0x20000000) != 0)
                {
                  *v12 = v70;
                  v24 = strlen(v11) + 1;
                  v25 = v81 | 0x20000000;
                }

                else
                {
                  v24 = v76;
                  v25 = v81;
                }

                v21 = v82;
                v20 = a3;
                v22 = v80;
                v19 = v11;
                v18 = v75;
                goto LABEL_129;
              }

              break;
          }
        }
      }

LABEL_136:
      v8 = (v17 + v15);
      ++v10;
      if (v17 + v15 >= v6)
      {
        goto LABEL_148;
      }
    }
  }

  return 1;
}

uint64_t sub_100001BC0(uint64_t a1, int a2, int a3, char *__s1, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10)
{
  atomic_fetch_add(&dword_100024718, 1u);
  qword_100024710 = qword_100024708;
  if (!qword_100024708)
  {
    v17 = 0;
LABEL_19:
    atomic_fetch_add(&dword_100024718, 0xFFFFFFFF);
    return v17;
  }

  if ((a7 & 0x80000000) == 0)
  {
    LOBYTE(v43[0]) = 0;
    v42 = !strncmp(__s1, "/.docid/", 8uLL) || !strncmp(__s1, "/.activity/", 0xBuLL);
    v18 = __s1;
    if (a3)
    {
      v18 = sub_100002030(a3, __s1, v43);
    }

    if (!v18)
    {
      sub_10001587C();
    }

    if (!strncmp(v18, ".Spotlight-V100", 0xFuLL) || !strncmp(v18, ".fseventsd", 0xAuLL) || !strncmp(v18, ".MobileBackups", 0xEuLL) || !strncmp(v18, "Backups.backupdb", 0x10uLL) || strnstr(v18, "/.ubd/", 0x400uLL) || (v43[0] & 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v41 = a2;
      pthread_mutex_lock(&stru_100024180);
      v25 = qword_100024710;
      if (*(qword_100024710 + 8) < 1)
      {
        v17 = 0;
      }

      else
      {
        v38 = a6;
        v39 = a1;
        v40 = a8;
        v26 = 0;
        v17 = 0;
        do
        {
          if (*(*(*v25 + 8 * v26) + 8) != -1)
          {
            v27 = *(*(*v25 + 8 * v26) + 12);
            if (v27 >= 2)
            {
              v27 -= *(**(*v25 + 8 * v26) + v27 - 1) == 47;
            }

            v28 = __s1;
            if (a3)
            {
              if (*(*(*v25 + 8 * v26) + 8))
              {
                v28 = v18;
              }

              else
              {
                v28 = __s1;
              }
            }

            if (!strncmp(**(*v25 + 8 * v26), v28, v27))
            {
              if (v27 < 2 || ((v29 = v28[v27], v29 != 47) ? (v30 = v29 == 0) : (v30 = 1), v30))
              {
                if (!*(*(*v25 + 8 * v26) + 8) || *(*(*v25 + 8 * v26) + 8) == a3)
                {
                  if ((((*(*(*v25 + 8 * v26) + 14) & 1) == 0) & ~v42) != 0)
                  {
                    v33 = (__s1 - v28 + v38);
                    if (v33 >= v27)
                    {
                      v34 = v33 - 1;
                      v35 = __s1[v38 - 1];
                      __s1[v38 - 1] = 0;
                      v36 = sub_10000255C(v39, v41, a3, v28, a7 & 0x7E23F800, v40, a9, a10);
                      if (v36)
                      {
                        v37 = v36;
                        sub_100002B70(*(*(*qword_100024710 + 8 * v26) + 24), v36);
                        sub_100002CCC(v37);
                        v17 = (v17 + 1);
                      }

                      v34[v28] = v35;
                    }
                  }

                  else
                  {
                    v31 = sub_10000255C(v39, v41, a3, v28, a7, v40, a9, a10);
                    if (v31)
                    {
                      v32 = v31;
                      sub_100002B70(*(*(*qword_100024710 + 8 * v26) + 24), v31);
                      sub_100002CCC(v32);
                      v17 = (v17 + 1);
                    }
                  }
                }
              }
            }
          }

          ++v26;
          v25 = qword_100024710;
        }

        while (v26 < *(qword_100024710 + 8));
      }

      pthread_mutex_unlock(&stru_100024180);
    }

    qword_100024710 = 0;
    goto LABEL_19;
  }

  v20 = sub_10000255C(a1, -1, 0, __s1, a7, a8, a9, a10);
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v17 = 0;
    atomic_fetch_add(&dword_10002471C, 1u);
    do
    {
      v23 = *(&xmmword_100024758 + v22);
      if (v23 && (*(v23 + 192) & 2) == 0)
      {
        v43[0] = *(&xmmword_100024758 + v22);
        v43[1] = 0;
        sub_100002B70(v43, v21);
        v17 = (v17 + 1);
      }

      v22 += 8;
    }

    while (v22 != 4096);
    atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
    sub_100002CCC(v21);
    qword_100024710 = 0;
    atomic_fetch_add(&dword_100024718, 0xFFFFFFFF);
  }

  else
  {
    v24 = sub_100009620();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100015840();
    }

    return 0;
  }

  return v17;
}

const char *sub_100002030(int a1, char *__s1, _BYTE *a3)
{
  v3 = __s1;
  *a3 = 0;
  if (a1)
  {
    if (!strncmp(__s1, "/.docid/", 8uLL) || !strncmp(v3, "/.activity/", 0xBuLL))
    {
      ++v3;
    }

    else
    {
      sub_1000021A0(&unk_100025758);
      v6 = qword_1000246E8;
      if (!qword_1000246E8)
      {
        goto LABEL_25;
      }

      if (*(qword_1000246E8 + 8) < 1)
      {
        LODWORD(v7) = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          if (**(*v6 + 8 * v7) == a1)
          {
            if ((*(*(*v6 + 8 * v7) + 32) & 0x8000) != 0)
            {
              *a3 = 1;
            }

            else if ((*(*(*v6 + 8 * v7) + 32) & 0x50) == 0)
            {
              break;
            }
          }

          ++v7;
        }

        while (v7 < *(v6 + 8));
      }

      if (v7 < *(v6 + 8))
      {
        v8 = *(*(*v6 + 8 * v7) + 24);
        if (v8 < 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = 0;
          do
          {
            if (v3[v9] == 47)
            {
              --v8;
            }

            else if (!v3[v9])
            {
              break;
            }

            ++v9;
          }

          while (v8 > 0);
          v10 = v9;
        }

        sub_1000024C8(&unk_100025758);
        v3 += v10;
      }

      else
      {
LABEL_25:
        sub_1000024C8(&unk_100025758);
      }
    }
  }

  return v3;
}

uint64_t sub_1000021A0(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *v2;
    if ((*v2 & 0x80000000) != 0)
    {
      sub_100003238();
    }

    *v2 = v4 + 1;
    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = pthread_rwlock_rdlock((a1 + 8));
      if (v5)
      {
        v7 = sub_100009620();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100014974(v5, v3);
        }
      }
    }
  }

  else
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100014A10();
    }

    return pthread_rwlock_rdlock((a1 + 8));
  }

  return v5;
}

void *sub_100002260(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v4 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v2 = v4;
    if (v4)
    {
      *v4 = 0;
      if (pthread_setspecific(*a1, v4))
      {
        free(v2);
        return 0;
      }
    }
  }

  return v2;
}

char *sub_1000022D8(const char *a1, size_t a2)
{
  v2 = a2;
  if (a1[a2 - 1] && !a1[a2])
  {
    v2 = a2 + 1;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = (a1 + 1);
    do
    {
      v5 = dword_100024298[v4 ^ HIBYTE(v5)] ^ (v5 << 8);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  pthread_mutex_lock(&stru_100024050);
  v9 = (qword_100025848 + 8 * (dword_100025854 & v8));
  v10 = *v9;
  if (*v9)
  {
    while (strncmp(v10 + 20, a1, v2) || v10[v2 + 19])
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v13 = (v10 + 16);
  }

  else
  {
LABEL_16:
    v11 = malloc_type_zone_malloc(qword_1000246A8, v2 + 24, 0x10A0040FC488333uLL);
    if (!v11)
    {
      pthread_mutex_unlock(&stru_100024050);
      return 0;
    }

    v10 = v11;
    *(v11 + 4) = 1;
    strlcpy(v11 + 20, a1, v2);
    v12 = *v9;
    *v10 = *v9;
    if (v12)
    {
      *(v12 + 1) = v10;
    }

    *v9 = v10;
    *(v10 + 1) = v9;
    v13 = &dword_100025850;
  }

  ++*v13;
  pthread_mutex_unlock(&stru_100024050);
  return v10 + 20;
}

uint64_t sub_100002450(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 16), 1u);
  if (add <= -2)
  {
    v2 = sub_100009620();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100015470();
    }

    MEMORY[0x99] = -1159983647;
  }

  return (add + 1);
}

uint64_t sub_1000024C8(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
      sub_100003264();
    }

    if (v3 < 1)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = v3 - 1;
    }

    *v2 = v4;
    if (v4)
    {
      return 0;
    }
  }

  else
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000148F4();
    }
  }

  return pthread_rwlock_unlock((a1 + 8));
}

char *sub_10000255C(uint64_t a1, int a2, int a3, const char *a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *a4;
  if (*a4)
  {
    v12 = 0;
    v13 = (a4 + 1);
    v14 = a4;
    while (1)
    {
      if (v12 && v11 == 47)
      {
        v12 = 1;
      }

      else
      {
        *v14++ = v11;
        if (v14 - a4 == 1023)
        {
          *v14 = 0;
          v16 = 1023;
          goto LABEL_13;
        }

        v12 = *(v13 - 1) == 47;
      }

      v15 = *v13++;
      v11 = v15;
      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = a4;
LABEL_11:
  *v14 = 0;
  v16 = v14 - a4;
LABEL_13:
  v17 = v16 + 1;
  if (a4[v16])
  {
    if (a4[v17])
    {
      v68 = a4[v16];
      a4[v16] = 0;
    }

    else
    {
      v68 = 0;
      v17 = v16 + 2;
    }
  }

  else
  {
    v68 = 0;
  }

  v18 = (a1 + 16);
  v19 = *(a1 + 8);
  v69 = (a1 + 8);
  if (3 * v19 + 3 <= (4 * *(a1 + 16)))
  {
    v20 = 2 * v19 + 2;
    if (v20 >= 0x80000)
    {
      if (!*(a1 + 12))
      {
        v21 = sub_100009620();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000158E4((a1 + 16), v69);
        }

        *(a1 + 12) = 1;
      }

      goto LABEL_46;
    }

    v72 = 0;
    v22 = sub_1000083CC(v20, &v72);
    if (v22)
    {
      v23 = v22;
      v63 = v17;
      v64 = a5;
      pthread_mutex_lock(&stru_100024100);
      v24 = 0;
      *(a1 + 16) = 0;
      v25 = *a1;
      *a1 = v23;
      v26 = *(a1 + 8);
      *(a1 + 8) = v72;
      while (1)
      {
        v27 = v25[v24];
        if (v27)
        {
          break;
        }

LABEL_42:
        if (++v24 > v26)
        {
          pthread_mutex_unlock(&stru_100024100);
          free(v25);
          a5 = v64;
          v17 = v63;
          goto LABEL_46;
        }
      }

      while (1)
      {
        v28 = v27[15];
        v29 = *v28;
        if (*v28)
        {
          v30 = 0;
          v31 = v28 + 1;
          do
          {
            v30 = dword_100024298[v29 ^ HIBYTE(v30)] ^ (v30 << 8);
            v32 = *v31++;
            v29 = v32;
          }

          while (v32);
        }

        else
        {
          v30 = 0;
        }

        if (v30 <= 1)
        {
          v30 = 1;
        }

        v33 = *(a1 + 8);
        v34 = (*a1 + 8 * (v33 & v30));
        v35 = *v34;
        if (*v34)
        {
          v36 = *v27;
          *v27 = v35;
        }

        else
        {
          v37 = *v18 + 1;
          *v18 = v37;
          if (v37 > v33)
          {
            v38 = sub_100009620();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = *v18;
              v40 = *v69;
              *buf = 67109376;
              v74 = v39;
              v75 = 1024;
              v76 = v40;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "event table is screwed up! filled buckets %u / table_mask %u)", buf, 0xEu);
            }
          }

          v35 = *v34;
          v36 = *v27;
          *v27 = *v34;
          if (!v35)
          {
            goto LABEL_41;
          }
        }

        *(v35 + 8) = v27;
LABEL_41:
        *v34 = v27;
        v27[1] = v34;
        v27 = v36;
        if (!v36)
        {
          goto LABEL_42;
        }
      }
    }

    v41 = sub_100009620();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1000158A8();
    }
  }

LABEL_46:
  v42 = sub_100002AE8(a2);
  v43 = *a4;
  if (*a4)
  {
    v44 = 0;
    v45 = (a4 + 1);
    do
    {
      v44 = dword_100024298[v43 ^ HIBYTE(v44)] ^ (v44 << 8);
      v46 = *v45++;
      v43 = v46;
    }

    while (v46);
  }

  else
  {
    v44 = 0;
  }

  if (v44 <= 1)
  {
    v44 = 1;
  }

  v47 = (*a1 + 8 * (*(a1 + 8) & v44));
  v48 = a5;
  if ((a5 & 0x6000000) == 0)
  {
    v49 = *v47;
    while (v49)
    {
      v50 = v49;
      v49 = *v49;
      v51 = *(v50 + 6);
      if (v42)
      {
        if (v51 != a2)
        {
          continue;
        }
      }

      else if (sub_100002AE8(v51))
      {
        continue;
      }

      if (*(v50 + 5) == a7)
      {
        v52 = *(v50 + 15);
        if (!strncmp(v52, a4, v17) && !v52[v17 - 1])
        {
          if (atomic_fetch_add(v50 + 4, 1u) <= -2)
          {
            v62 = sub_100009620();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_100015960();
            }
          }

          v54 = a8;
          if (*(v50 + 4) == 1)
          {
            *(v50 + 5) = 0;
          }

          v60 = a6;
          v59 = v68;
LABEL_74:
          *(v50 + 5) |= v48;
          *(v50 + 6) = a2;
          *(v50 + 4) = v60;
          *(v50 + 5) = a7;
          *(v50 + 12) = v54;
          if (v59)
          {
            goto LABEL_75;
          }

          return v50;
        }
      }
    }
  }

  v53 = malloc_type_zone_malloc(qword_1000246C0, 0x80uLL, 0x10B00402042220DuLL);
  v50 = v53;
  if (v53)
  {
    *(v53 + 2) = 1;
    *(v53 + 7) = a3;
    *(v53 + 26) = v17;
    *(v53 + 5) = a7;
    v54 = a8;
    *(v53 + 12) = a8;
    *(v53 + 56) = 0u;
    *(v53 + 72) = 0u;
    *(v53 + 88) = 0u;
    *(v53 + 104) = 0u;
    v55 = sub_1000022D8(a4, v17);
    *(v50 + 15) = v55;
    if (v55[v17 - 1])
    {
      v56 = dword_100024698++;
      if (v56 <= 49)
      {
        v57 = sub_100009620();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_1000159E0(v50 + 15);
        }
      }
    }

    v58 = *v47;
    if (*v47)
    {
      *(v58 + 1) = v50;
    }

    else
    {
      ++*v18;
    }

    v60 = a6;
    v59 = v68;
    *v47 = v50;
    *v50 = v58;
    *(v50 + 1) = v47;
    goto LABEL_74;
  }

  LOBYTE(v59) = v68;
  if (v68)
  {
LABEL_75:
    a4[v17 - 1] = v59;
  }

  return v50;
}

BOOL sub_100002AE8(int a1)
{
  pthread_mutex_lock(&stru_100024008);
  if (dword_100025858[0] == a1)
  {
    v2 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v3;
      if (v3 == 31)
      {
        break;
      }

      v5 = dword_100025858[++v3];
    }

    while (v5 != a1);
    v2 = v4 < 0x1F;
  }

  pthread_mutex_unlock(&stru_100024008);
  return v2;
}

uint64_t sub_100002B70(uint64_t result, uint64_t a2)
{
  atomic_fetch_add(&dword_10002471C, 1u);
  if (result)
  {
    v3 = result;
    v4 = a2 + 56;
    do
    {
      if ((*(*v3 + 24) & 2) == 0)
      {
        v5 = (*v3)[50];
        if (((0x80u >> (v5 & 7)) & atomic_fetch_or_explicit((v4 + (v5 >> 3)), 0x80u >> (v5 & 7), memory_order_relaxed)) == 0)
        {
          v6 = *v3;
          result = sub_100002D90(*v3);
          v7 = *v3;
          if (result >= *(v6 + 232) - 1)
          {
            atomic_fetch_and_explicit((v4 + (*(v7 + 200) >> 3)), -129 >> (*(v7 + 200) & 7), memory_order_relaxed);
            v8 = *v3;
            if ((*(*v3 + 24) & 1) == 0)
            {
              *(v8 + 192) |= 1uLL;
              *(v8 + 152) = *(a2 + 32);
            }
          }

          else if ((*(v7 + 192) & 0x80) != 0 && *(a2 + 24) == *(v7 + 256))
          {
            atomic_fetch_and_explicit((v4 + (*(v7 + 200) >> 3)), -129 >> (*(v7 + 200) & 7), memory_order_relaxed);
          }

          else
          {
            result = sub_100002450(a2);
            v9 = *v3;
            *(*(*v3 + 54) + 8 * (*v3)[63]) = a2;
            *(v9 + 252) = (*(v9 + 252) + 1) % *(v9 + 232);
          }
        }
      }

      v3 = v3[1];
    }

    while (v3);
  }

  atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
  return result;
}

uint64_t sub_100002CCC(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 16), 0xFFFFFFFF);
  v2 = (add - 1);
  if (add <= 0)
  {
    v4 = sub_100009620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000154E8();
    }

    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100015560(a1);
    }

    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000155D4(a1);
    }

    MEMORY[0xAA] = -1159983646;
  }

  return v2;
}

uint64_t sub_100002D90(_DWORD *a1)
{
  v3 = a1[62];
  v2 = a1[63];
  if (v3 <= v2)
  {
    return (v2 - v3);
  }

  else
  {
    return (a1[58] - v3 + v2);
  }
}

uint64_t sub_100002DE8(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 8) + 1000000 * *a1;
  atomic_fetch_add(&dword_10002471C, 1u);
  do
  {
    v4 = *(&xmmword_100024758 + v1);
    if (!v4 || (*(v4 + 192) & 2) != 0)
    {
      goto LABEL_26;
    }

    v5 = *(v4 + 144);
    if ((*(v4 + 192) & 4) != 0)
    {
      v7 = *(v4 + 176);
      v6 = v3 - v5;
    }

    else if (!v5 || ((v6 = v3 - v5, v7 = *(v4 + 176), v7 >= 0x3E8) ? (v8 = v6 >= 2 * v7) : (v8 = 0), v8))
    {
      *(v4 + 144) = v3;
LABEL_17:
      if (*(v4 + 248) != *(v4 + 252) && v2 - 1 >= (*(v4 + 176) - v3 + *(v4 + 144)))
      {
        v2 = *(v4 + 176) - v3 + *(v4 + 144);
      }

      goto LABEL_20;
    }

    if (v6 < v7 && sub_100002D90(*(&xmmword_100024758 + v1)) <= *(v4 + 232) / 2)
    {
      goto LABEL_17;
    }

    if (*(v4 + 248) != *(v4 + 252))
    {
      *(v4 + 144) = v3;
      sub_1000033CC(v4);
    }

LABEL_20:
    if ((v3 - *(v4 + 320)) >= 0x141DD76001)
    {
      memset(buffer, 0, sizeof(buffer));
      if ((*(v4 + 192) & 0x20) != 0 && proc_pidinfo(*(v4 + 256), 4, 0, buffer, 96) != 96)
      {
        v9 = sub_100009620();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(v4 + 256);
          *buf = 67109120;
          v14 = v10;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to gather process task information for pid: %i", buf, 8u);
        }
      }

      analytics_send_event_lazy();
      *(v4 + 320) = v3;
    }

LABEL_26:
    v1 += 8;
  }

  while (v1 != 4096);
  atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
  return v2;
}

uint64_t sub_10000309C(uint64_t *a1)
{
  pthread_mutex_lock(&stru_100024100);
  v2 = *(a1 + 5);
  if (v2 <= 0xFFFFFDFF)
  {
    v3 = v2 + 512;
    do
    {
      v4 = *a1;
      v5 = a1[1] & v2;
      v6 = *(*a1 + 8 * v5);
      if (v6)
      {
        do
        {
          v9 = *v6;
          if (!v6[4])
          {
            v10 = *(v6 + 1);
            if (v9)
            {
              *(v9 + 8) = v10;
            }

            *v10 = v9;
            if (!*(v4 + 8 * v5))
            {
              v11 = *(a1 + 4) - 1;
              *(a1 + 4) = v11;
              if (v11 > *(a1 + 2))
              {
                v12 = sub_100009620();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  v7 = *(a1 + 4);
                  v8 = *(a1 + 2);
                  *buf = 67109376;
                  v15 = v7;
                  v16 = 1024;
                  v17 = v8;
                  _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "event table is screwed up! filled buckets %u / table_mask %u)", buf, 0xEu);
                }
              }
            }

            sub_100003290(*(v6 + 15), *(v6 + 26));
            *(v6 + 15) = 0;
            malloc_zone_free(qword_1000246C0, v6);
          }

          v6 = v9;
        }

        while (v9);
        v2 = *(a1 + 5);
      }

      *(a1 + 5) = ++v2;
    }

    while (v2 < v3);
  }

  return pthread_mutex_unlock(&stru_100024100);
}

uint64_t sub_100003290(const char *a1, size_t a2)
{
  v2 = a2;
  if (a1[a2 - 1] && !a1[a2])
  {
    v2 = a2 + 1;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = (a1 + 1);
    do
    {
      v5 = dword_100024298[v4 ^ HIBYTE(v5)] ^ (v5 << 8);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  pthread_mutex_lock(&stru_100024050);
  v9 = *(qword_100025848 + 8 * (dword_100025854 & v8));
  if (!v9)
  {
    goto LABEL_16;
  }

  while (strncmp(v9 + 20, a1, v2) || v9[v2 + 19])
  {
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v11 = *(v9 + 4) - 1;
  *(v9 + 4) = v11;
  if (v11)
  {
LABEL_16:
    pthread_mutex_unlock(&stru_100024050);
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    if (*v9)
    {
      *(v12 + 1) = v13;
    }

    *v13 = v12;
    --dword_100025850;
    pthread_mutex_unlock(&stru_100024050);
    malloc_zone_free(qword_1000246A8, v9);
  }

  return 0;
}

uint64_t sub_1000033CC(uint64_t a1)
{
  pthread_mutex_lock(a1);
  if ((*(a1 + 192) & 0x800) != 0)
  {
    memset(&v4, 0, sizeof(v4));
    v3 = 0;
    if ((*(a1 + 192) & 0x20) != 0)
    {
      sub_100015814();
    }

    *(a1 + 192) &= ~0x800uLL;
    pthread_attr_init(&v4);
    pthread_attr_setdetachstate(&v4, 2);
    pthread_create(&v3, &v4, sub_1000034A0, a1);
    pthread_attr_destroy(&v4);
  }

  pthread_cond_signal((a1 + 64));
  return pthread_mutex_unlock(a1);
}

uint64_t sub_1000034A0(uint64_t a1)
{
  v2 = "client";
  v3 = *(a1 + 192);
  if ((v3 & 0x20) != 0)
  {
    v2 = "disklogger";
  }

  snprintf(__str, 0x32uLL, "com.apple.fseventsd.%s.%d", v2, *(a1 + 256));
  pthread_setname_np(__str);
  v4 = pthread_self();
  *(a1 + 328) = pthread_mach_thread_np(v4);
  if ((v3 & 0x20) != 0)
  {
    setiopolicy_np(0, 1, 2);
  }

  v144 = (a1 + 260);
  v5 = *(a1 + 260);
  if (v5)
  {
    if (!*(a1 + 352))
    {
      v6 = getpwuid(v5);
      if (v6)
      {
        *(a1 + 352) = strdup(v6->pw_name);
      }

      else
      {
        v7 = sub_100009620();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000177FC(v144);
        }
      }
    }

    if (*v144 && *(a1 + 112))
    {
      sub_10000B748(a1);
    }
  }

  if ((*(a1 + 192) & 0x10000) != 0)
  {
    v8 = (a1 + 112);
    if (*(a1 + 112))
    {
      thread_info_outCnt[0] = 0;
      v9 = sub_100009620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        buf.f_bsize = 136315650;
        *&buf.f_iosize = "send_device_state_event";
        WORD2(buf.f_blocks) = 2048;
        *(&buf.f_blocks + 6) = a1;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = "client_loop";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: client: %p : %s : DEVICE STATE EVENT", &buf, 0x20u);
      }

      sub_1000021A0(&unk_100025758);
      v10 = sub_100009948(*v8);
      if (v10)
      {
        if (*(v10 + 128))
        {
          snprintf(&buf, 0x400uLL, "/.fseventsd-config/current_uuid/%s/previous_uuid/%s/last_pruned_event_id/%s");
        }

        else
        {
          snprintf(&buf, 0x400uLL, "/.fseventsd-config/current_uuid/%s/previous_uuid/NO-UUID/last_pruned_event_id/0");
        }

        v12 = sub_100009620();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *v8;
          v14 = *(qword_1000246E8 + 8);
          *v157 = 136315906;
          *&v157[4] = "send_device_state_event";
          *&v157[12] = 2080;
          *&v157[14] = &buf;
          v158 = 1024;
          v159 = v13;
          v160 = 1024;
          v161 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: state_event_path(%s) %d (num_devices %d)", v157, 0x22u);
        }
      }

      else
      {
        strcpy(&buf, "/.fseventsd-config/current_uuid/NO-UUID-NO-DEV-INFO");
        v11 = sub_100009620();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100017870(&buf, (a1 + 112));
        }
      }

      sub_1000024C8(&unk_100025758);
      v15 = strnlen(&buf, 0x400uLL);
      thread_info_outCnt[0] = &buf;
      *&v151.st_dev = v15 + 1;
      v154[0] = 0;
      v155[0] = 0;
      v152[0] = 0;
      v162[0] = 0;
      v153[0] = 0;
      v16 = *(a1 + 216);
      if (v16)
      {
        v17 = v16(*(a1 + 224), 1, &v151, thread_info_outCnt, v154, v153, v155, v152, v162);
        if (v17)
        {
          v18 = v17;
          if (v17 == 268435459)
          {
            *(a1 + 192) |= 2uLL;
          }

          v19 = sub_100009620();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = *(a1 + 256);
            *v157 = 136315906;
            *&v157[4] = "send_device_state_event";
            *&v157[12] = 2048;
            *&v157[14] = a1;
            v158 = 1024;
            v159 = v18;
            v160 = 1024;
            v161 = v20;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: client (%p) failed sending device state event (0x%x) to pid %d\n", v157, 0x22u);
          }
        }

        else
        {
          v21 = sub_100009620();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = *(a1 + 256);
            *v157 = 136315650;
            *&v157[4] = "send_device_state_event";
            *&v157[12] = 2048;
            *&v157[14] = a1;
            v158 = 1024;
            v159 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: client (%p) SENT device state event to pid %d\n", v157, 0x1Cu);
          }

          *(a1 + 192) &= ~0x10000uLL;
        }
      }
    }
  }

  if ((*(a1 + 192) & 0x400) == 0)
  {
    sub_100005500(a1);
    pthread_mutex_lock(a1);
    *(a1 + 192) |= 0x400uLL;
    pthread_mutex_unlock(a1);
  }

  v141 = v3;
  if (*v144)
  {
    pthread_setugid_np(*v144, *(a1 + 264));
    v23 = *(a1 + 352);
    if (v23)
    {
      if (initgroups(v23, *(a1 + 264)) < 0)
      {
        v24 = sub_100009620();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v131 = *(a1 + 352);
          v132 = *(a1 + 260);
          LODWORD(v3) = *(a1 + 264);
          v133 = *__error();
          v134 = __error();
          v135 = strerror(*v134);
          buf.f_bsize = 136316162;
          *&buf.f_iosize = v131;
          WORD2(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 6) = v132;
          WORD1(buf.f_bfree) = 1024;
          HIDWORD(buf.f_bfree) = v3;
          LOBYTE(v3) = v141;
          LOWORD(buf.f_bavail) = 1024;
          *(&buf.f_bavail + 2) = v133;
          HIWORD(buf.f_bavail) = 2080;
          buf.f_files = v135;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "client_loop: initgroups failed for user %s uid %d gid %d (err: %d/%s)", &buf, 0x28u);
        }
      }
    }
  }

  v25 = &off_100024000;
  if (!dword_1000246C8)
  {
    v147 = (a1 + 268);
    v53 = a1 + 368;
    while (1)
    {
      if ((*(a1 + 192) & 0x1ALL) != 0)
      {
        goto LABEL_43;
      }

      pthread_mutex_lock(a1);
      if (!dword_1000246C8 && (*(a1 + 192) & 0x21BLL) == 0)
      {
        if ((v3 & 0x20) != 0)
        {
          if (pthread_cond_wait((a1 + 64), a1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          *&buf.f_bsize = 0;
          buf.f_blocks = 0;
          *v157 = 0;
          *&v157[8] = 0;
          gettimeofday(&buf, 0);
          *v157 = *&buf.f_bsize + 15;
          *&v157[8] = 0;
          if (pthread_cond_timedwait((a1 + 64), a1, v157) == 60 && *(a1 + 248) == *(a1 + 252))
          {
            *(a1 + 192) |= 0x800uLL;
            pthread_mutex_unlock(a1);
            pthread_exit(0);
          }
        }
      }

      pthread_mutex_unlock(a1);
      if (!dword_1000246C8 || (v3 & 0x20) != 0)
      {
        break;
      }

LABEL_256:
      if (dword_1000246C8)
      {
        goto LABEL_43;
      }
    }

    if ((*(a1 + 192) & 2) != 0 || ((*(a1 + 192) & 1) != 0 ? (v55 = sub_100010B68(a1)) : (v55 = 0), (*(a1 + 192) & 2) != 0))
    {
LABEL_236:
      memset(&buf, 0, 40);
      LODWORD(thread_info_outCnt[0]) = 10;
      v121 = thread_info(*(a1 + 328), 3u, &buf, thread_info_outCnt);
      if (v121)
      {
        v122 = v121;
        v123 = sub_100009620();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          *v157 = 136315394;
          *&v157[4] = "client_get_thread_info";
          *&v157[12] = 1024;
          *&v157[14] = v122;
          _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%s : [%d]thread_info", v157, 0x12u);
        }
      }

      else
      {
        *(a1 + 332) = *&buf.f_bsize;
      }

      if ((*(a1 + 192) & 8) != 0)
      {
        v126 = open(".", 0);
        LOBYTE(v3) = v141;
        if (v126 >= 1)
        {
          v127 = v126;
          if (!fcntl(v126, 50, &buf))
          {
            v128 = *(a1 + 120);
            if (v128)
            {
              free(v128);
            }

            *(a1 + 120) = strdup(&buf);
          }

          close(v127);
        }

        *(a1 + 192) &= ~8uLL;
        *(a1 + 192) |= 0x40uLL;
        syscall(348, "/");
        goto LABEL_253;
      }

      LOBYTE(v3) = v141;
      if ((*(a1 + 192) & 0x10) != 0)
      {
        if (*(a1 + 120))
        {
          if (syscall(348, *(a1 + 120)))
          {
            v124 = sub_100009620();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              v125 = *(a1 + 120);
              buf.f_bsize = 136315138;
              *&buf.f_iosize = v125;
              _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "client: failed to chdir back to %s", &buf, 0xCu);
            }

            goto LABEL_253;
          }

          goto LABEL_259;
        }

        if (!sub_10000B748(a1))
        {
LABEL_259:
          *(a1 + 192) &= ~0x10uLL;
        }
      }

LABEL_253:
      v25 = &off_100024000;
      if ((v3 & 0x20) != 0)
      {
        v129 = 1;
        atomic_compare_exchange_strong_explicit(dword_100024700, &v129, 0, memory_order_relaxed, memory_order_relaxed);
        if (v129 == 1)
        {
          sub_10000A794(sub_10000BF8C);
        }
      }

      goto LABEL_256;
    }

    memset(v152, 0, sizeof(v152));
    if ((*(a1 + 192) & 0x200) != 0)
    {
      v152[0] = **(a1 + 136);
      *v157 = strlen(v152[0]) + 1;
      v162[0] = 0x8000000;
      thread_info_outCnt[0] = *(a1 + 168);
      v153[0] = 0;
      v56 = *(a1 + 216);
      if (v56)
      {
        v57 = v56(*(a1 + 224), 1, v157, v152, v162, v153, thread_info_outCnt, v155, v154);
        if (!v57)
        {
          *(a1 + 192) &= ~0x200uLL;
          if ((*(a1 + 192) & 2) != 0)
          {
            goto LABEL_236;
          }

LABEL_115:
          v58 = sub_100002D90(a1);
          if (v58)
          {
            v59 = v58;
            v60 = v58;
            v61 = malloc_type_malloc(8 * v58, 0x2004093837F09uLL);
            if (!v61)
            {
              LOBYTE(v3) = v141;
              v25 = &off_100024000;
              goto LABEL_43;
            }

            v62 = v61;
            v136 = v61;
            if (v59 <= 0)
            {
              qsort(v61, v60, 8uLL, sub_100004B9C);
LABEL_234:
              free(v136);
            }

            else
            {
              v63 = 0;
              v64 = *(a1 + 232);
              do
              {
                *&v61[8 * v63] = *(*(a1 + 432) + 8 * ((v63 + *(a1 + 248)) % v64));
                ++v63;
              }

              while (v59 != v63);
              qsort(v61, v60, 8uLL, sub_100004B9C);
              v65 = 0;
              v66 = *(a1 + 232);
              do
              {
                *(*(a1 + 432) + 8 * ((v65 + *(a1 + 248)) % v66)) = v62[v65];
                ++v65;
              }

              while (v59 != v65);
              v137 = v59;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              LOBYTE(v3) = v141;
              v143 = v53;
              do
              {
                v140 = v67;
                if ((*(a1 + 192) & 2) != 0)
                {
                  break;
                }

                v138 = v68;
                v70 = v137 - v67;
                if ((v137 - v140) >= 0x20)
                {
                  LODWORD(v71) = 32;
                }

                else
                {
                  LODWORD(v71) = v70;
                }

                v139 = v71;
                if (v137 != v140)
                {
                  v77 = 0;
                  v72 = 0;
                  if (v71 <= 1)
                  {
                    v71 = 1;
                  }

                  else
                  {
                    v71 = v71;
                  }

                  v142 = v71;
                  while (1)
                  {
                    v145 = v77;
                    v146 = v72;
                    memset(&v151, 0, sizeof(v151));
                    v69 = *&v136[8 * v140 + 8 * v77];
                    v78 = *(a1 + 200);
                    if (((atomic_fetch_and_explicit((v69 + (v78 >> 3) + 56), ~~(-129 >> (v78 & 7)), memory_order_relaxed) << (v78 & 7)) & 0x80) == 0)
                    {
                      v79 = sub_100009620();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        v112 = *(a1 + 200);
                        buf.f_bsize = 134218240;
                        *&buf.f_iosize = v69;
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v112;
                        _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "client loop: event %p did not have my bit (%d) set!", &buf, 0x12u);
                      }
                    }

                    if (*v144)
                    {
                      break;
                    }

LABEL_208:
                    v105 = 0;
                    v106 = *(v69 + 120);
                    do
                    {
                      v107 = *(v53 + v105);
                      if (!v107)
                      {
                        break;
                      }

                      v108 = strlen(*(v53 + v105));
                      if (!strncmp(v106, v107, v108))
                      {
                        goto LABEL_219;
                      }

                      v105 += 8;
                    }

                    while (v105 != 64);
                    v109 = v146;
                    v152[v146] = v106;
                    *&v157[8 * v146] = *(v69 + 52);
                    v110 = *(v69 + 20);
                    v162[v146] = v110;
                    v153[v146] = *(v69 + 28);
                    thread_info_outCnt[v146] = *(v69 + 32);
                    v155[v146] = *(v69 + 40);
                    v154[v146] = *(v69 + 48);
                    if ((*(a1 + 192) & 0x1000) != 0 && *(a1 + 256) == *(v69 + 24))
                    {
                      v162[v146] = v110 | 0x200000;
                    }

                    v111 = *(v69 + 32);
                    if (v111 > *(a1 + 160))
                    {
                      *(a1 + 160) = v111;
                    }

LABEL_220:
                    v72 = v109 + 1;
                    v77 = v145 + 1;
                    if (v145 + 1 == v142)
                    {
                      goto LABEL_129;
                    }
                  }

                  v80 = 1;
                  while (2)
                  {
                    if (*(a1 + 300) || (*(v69 + 23) & 6) != 0)
                    {
                      goto LABEL_208;
                    }

                    v81 = *(v69 + 120);
                    if (*v81)
                    {
                      if (strncmp(*(v69 + 120), ".docid/", 7uLL) && strncmp(v81, ".activity/", 0xAuLL))
                      {
                        v82 = 1;
                        goto LABEL_159;
                      }

                      v150 = 0uLL;
                      DWORD2(v150) = *(v69 + 28);
                      sub_10000A794(sub_10000B7BC);
                      v81 = v150;
                      if (v150)
                      {
                        v82 = 0;
                        goto LABEL_159;
                      }

                      v94 = sub_100009620();
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                      {
                        v95 = *(v69 + 28);
                        buf.f_bsize = 136315394;
                        *&buf.f_iosize = "client_process_events";
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v95;
                        _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%s: path for pseudo path  device(%d)  is not available", &buf, 0x12u);
                      }

LABEL_187:
                      if ((*(a1 + 192) & 0x40) == 0 || (v80 & 1) == 0)
                      {
                        goto LABEL_219;
                      }

                      memset(&buf, 0, 512);
                      v101 = *(a1 + 120);
                      if (v101)
                      {
                        if (!statfs(v101, &buf) && buf.f_fsid.val[0] == *(a1 + 112) && syscall(348, *(a1 + 120)))
                        {
                          v113 = sub_100009620();
                          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                          {
                            v115 = *(a1 + 120);
                            LODWORD(v150) = 136315138;
                            *(&v150 + 4) = v115;
                            _os_log_error_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "client: failed to chdir back to %s", &v150, 0xCu);
                          }

LABEL_219:
                          v109 = v146 - 1;
                          goto LABEL_220;
                        }
                      }

                      else if (sub_10000B748(a1))
                      {
                        goto LABEL_219;
                      }

                      v80 = 0;
                      *(a1 + 192) &= 0xFFFFFFFFFFFFFFAFLL;
                      if (!*(a1 + 260))
                      {
                        goto LABEL_208;
                      }

                      continue;
                    }

                    break;
                  }

                  v82 = 1;
                  v81 = ".";
LABEL_159:
                  if (!lstat(v81, &v151))
                  {
                    if (!*(a1 + 256))
                    {
                      sub_10001791C();
                    }

                    goto LABEL_164;
                  }

                  if (*__error() == 2)
                  {
                    goto LABEL_161;
                  }

                  if (*__error() == 63)
                  {
                    v89 = strrchr(v81, 47);
                    if (!v89 || (v90 = v89, strlen(v89 + 1) < 0xFF) || (v91 = v90[1]) == 0)
                    {
LABEL_175:
                      if ((v82 & 1) == 0)
                      {
                        free(v81);
                      }

                      goto LABEL_187;
                    }

                    v92 = (v90 + 2);
                    while ((v91 & 0x80) == 0)
                    {
                      v93 = *v92++;
                      v91 = v93;
                      if (!v93)
                      {
                        goto LABEL_175;
                      }
                    }

LABEL_161:
                    v83 = sub_100013194(v81);
                    v84 = access(v83, 4);
                    v85 = *(a1 + 284);
                    *&buf.f_bsize = *v147;
                    *&buf.f_bfree = v85;
                    v86 = sandbox_check_by_audit_token();
                    free(v83);
                    if (!(v84 | v86))
                    {
                      v87 = 0;
                      goto LABEL_185;
                    }

                    v96 = *(a1 + 128);
                    if (v96 < 1)
                    {
                      v87 = 1;
LABEL_185:
                      v53 = v143;
                      if (v82)
                      {
                        goto LABEL_166;
                      }
                    }

                    else
                    {
                      v97 = 0;
                      v98 = *(v69 + 120);
                      v99 = *(a1 + 136);
                      v100 = 8 * v96;
                      while (!strstr(v98, *(v99 + v97)))
                      {
                        v97 += 8;
                        if (v100 == v97)
                        {
                          v87 = 1;
                          LOBYTE(v3) = v141;
                          goto LABEL_185;
                        }
                      }

                      v102 = *(v99 + v97);
                      if (*(a1 + 112))
                      {
                        if (*v102)
                        {
                          v81 = *(v99 + v97);
                        }

                        else
                        {
                          v81 = ".";
                        }

                        LOBYTE(v3) = v141;
                        v53 = v143;
                        if (lstat(v81, &v151) || v151.st_uid != *v144)
                        {
                          goto LABEL_206;
                        }

LABEL_164:
                        v88 = *(a1 + 284);
                        *&buf.f_bsize = *v147;
                        *&buf.f_bfree = v88;
                      }

                      else
                      {
                        LOBYTE(v3) = v141;
                        v53 = v143;
                        if (lstat(v102, &v151) || v151.st_uid != *v144)
                        {
                          goto LABEL_206;
                        }

                        v103 = *(*(a1 + 136) + v97);
                        v104 = *(a1 + 284);
                        *&buf.f_bsize = *v147;
                        *&buf.f_bfree = v104;
                      }

                      v87 = sandbox_check_by_audit_token() != 0;
                      if (v82)
                      {
LABEL_166:
                        if (!v87)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_187;
                      }
                    }
                  }

                  else
                  {
LABEL_206:
                    v87 = 1;
                    if (v82)
                    {
                      goto LABEL_166;
                    }
                  }

                  free(v81);
                  if (!v87)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_187;
                }

                v72 = 0;
LABEL_129:
                v73 = *(a1 + 216);
                if (v73 && (*(a1 + 192) & 2) == 0 && v72 >= 1)
                {
                  v74 = v73(*(a1 + 224));
                  if (v74)
                  {
                    if (v74 == 268435459)
                    {
                      *(a1 + 192) |= 2uLL;
                    }

                    v138 = v74;
                    *(a1 + 192) |= 1uLL;
                    if (!*(a1 + 152))
                    {
                      *(a1 + 152) = thread_info_outCnt[0];
                    }

                    v75 = *(a1 + 184);
                    *(a1 + 184) = v75 + 1;
                    if (v75 >= 5)
                    {
                      v76 = sub_100009620();
                      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                      {
                        v119 = *(a1 + 256);
                        buf.f_bsize = 134218496;
                        *&buf.f_iosize = a1;
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v119;
                        WORD1(buf.f_bfree) = 1024;
                        HIDWORD(buf.f_bfree) = dword_1000246A0;
                        _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "SLOWDOWN: client %p (pid %d) sleeping due to too many errors (num usleeps %d)", &buf, 0x18u);
                      }

                      sleep(2u);
                      *(a1 + 184) = 0;
                      LOBYTE(v3) = v141;
                    }
                  }

                  else
                  {
                    ++*(a1 + 312);
                    v138 = 0;
                    *(a1 + 304) += strlen(*(v69 + 120));
                  }
                }

                if (v137 != v140)
                {
                  if (v139 <= 1)
                  {
                    v116 = 1;
                  }

                  else
                  {
                    v116 = v139;
                  }

                  v117 = &v136[8 * v140];
                  do
                  {
                    v118 = *v117++;
                    sub_100002CCC(v118);
                    --v116;
                  }

                  while (v116);
                }

                *(a1 + 248) = (*(a1 + 248) + v139) % *(a1 + 232);
                if (v138 == 268435460 || v138 == 268435469)
                {
                  goto LABEL_234;
                }

                v67 = v139 + v140;
                v68 = v138;
              }

              while ((v139 + v140) < v137);
              v120 = v68;
              free(v136);
              v25 = &off_100024000;
              if (v120)
              {
                goto LABEL_43;
              }
            }
          }

          goto LABEL_236;
        }

        v55 = v57;
        if (v57 == 268435459)
        {
          *(a1 + 192) |= 2uLL;
          if ((*(a1 + 192) & 2) != 0)
          {
            goto LABEL_236;
          }

LABEL_113:
          *&buf.f_bsize = 0;
          buf.f_blocks = 0;
          gettimeofday(&buf, 0);
          *&v151.st_dev = *&buf.f_bsize + 1;
          v151.st_ino = 0;
          pthread_mutex_lock(a1);
          pthread_cond_timedwait((a1 + 64), a1, &v151);
          pthread_mutex_unlock(a1);
          goto LABEL_236;
        }
      }
    }

    if ((*(a1 + 192) & 2) != 0)
    {
      goto LABEL_236;
    }

    if (v55)
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

LABEL_43:
  if (*(v25 + 434))
  {
    v26 = (v3 & 0x20) == 0;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
LABEL_47:
    if (*v144 && *(a1 + 112))
    {
      syscall(348, "/");
    }

    pthread_mutex_lock(a1);
    *(a1 + 192) |= 2uLL;
    pthread_mutex_unlock(a1);
    if (atomic_fetch_add_explicit(&dword_10002471C, 0, memory_order_relaxed))
    {
      v27 = 0;
      do
      {
        usleep(0x1388u);
        if (atomic_fetch_add_explicit(&dword_10002471C, 0, memory_order_relaxed))
        {
          v28 = v27 >= 0x1387;
        }

        else
        {
          v28 = 1;
        }

        ++v27;
      }

      while (!v28);
    }

    pthread_mutex_lock(&stru_100024140);
    v29 = sub_100002D90(a1);
    if (v29 >= 1)
    {
      v30 = v29;
      for (i = 0; v30 != i; ++i)
      {
        v32 = *(*(a1 + 432) + 8 * ((i + *(a1 + 248)) % *(a1 + 232)));
        if (v32)
        {
          v33 = *(a1 + 200);
          if (((atomic_fetch_and_explicit((v32 + (v33 >> 3) + 56), ~~(-129 >> (v33 & 7)), memory_order_relaxed) << (v33 & 7)) & 0x80) != 0)
          {
            sub_100002CCC(v32);
          }

          else
          {
            v40 = sub_100009620();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = *(v32 + 20);
              v42 = *(a1 + 200);
              v43 = *(v32 + 56);
              v44 = *(v32 + 57);
              v45 = *(a1 + 248);
              v46 = *(a1 + 252);
              buf.f_bsize = 134220032;
              *&buf.f_iosize = v32;
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = v41;
              WORD1(buf.f_bfree) = 1024;
              HIDWORD(buf.f_bfree) = v42;
              LOWORD(buf.f_bavail) = 1024;
              *(&buf.f_bavail + 2) = v43;
              HIWORD(buf.f_bavail) = 1024;
              LODWORD(buf.f_files) = v44;
              WORD2(buf.f_files) = 1024;
              *(&buf.f_files + 6) = i;
              WORD1(buf.f_ffree) = 1024;
              HIDWORD(buf.f_ffree) = v45;
              LOWORD(buf.f_fsid.val[0]) = 1024;
              *(buf.f_fsid.val + 2) = v46;
              HIWORD(buf.f_fsid.val[1]) = 1024;
              buf.f_owner = v30;
              v37 = v40;
              v38 = "client drain: event %p (mask 0x%x) did not have my bit (%d) set! (0x%x 0x%x) (i %d rd %d wr %d, num_pending %d)";
              v39 = 60;
              goto LABEL_68;
            }
          }
        }

        else
        {
          v34 = sub_100009620();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = i + *(a1 + 248);
            v36 = *(a1 + 232);
            buf.f_bsize = 67109120;
            buf.f_iosize = v35 % v36;
            v37 = v34;
            v38 = "client drain: *** encountered a NULL entry at idx %d";
            v39 = 8;
LABEL_68:
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v38, &buf, v39);
          }
        }
      }
    }

    sub_10000B250(a1);
    sub_10000B630(a1);
    pthread_mutex_unlock(&stru_100024140);
    pthread_mutex_lock(a1);
    if ((v141 & 0x20) == 0)
    {
      sub_10000B154(*(a1 + 224));
    }

    free(*(a1 + 208));
    if (*(a1 + 128) >= 1)
    {
      v47 = 0;
      do
      {
        free(*(*(a1 + 136) + 8 * v47));
        *(*(a1 + 136) + 8 * v47++) = 0;
      }

      while (v47 < *(a1 + 128));
    }

    free(*(a1 + 136));
    *(a1 + 136) = 0;
    for (j = 368; j != 432; j += 8)
    {
      free(*(a1 + j));
      *(a1 + j) = 0;
    }

    v49 = *(a1 + 120);
    if (v49)
    {
      free(v49);
    }

    v50 = *(a1 + 352);
    if (v50)
    {
      free(v50);
    }

    v51 = *(a1 + 360);
    if (v51)
    {
      free(v51);
      *(a1 + 360) = 0;
    }

    if ((*(a1 + 192) & 0x1000) != 0)
    {
      pthread_mutex_lock(&stru_100024008);
      v52 = 0;
      while (dword_100025858[v52] != *(a1 + 256))
      {
        if (++v52 == 32)
        {
          goto LABEL_261;
        }
      }

      dword_100025858[v52] = 0;
LABEL_261:
      pthread_mutex_unlock(&stru_100024008);
    }

    pthread_mutex_unlock(a1);
    pthread_cond_destroy((a1 + 64));
    free(a1);
    if ((v141 & 0x20) != 0)
    {
      atomic_fetch_add_explicit(&dword_100024724, 0xFFFFFFFF, memory_order_relaxed);
    }
  }

  atomic_fetch_add_explicit(&dword_100024720, 0xFFFFFFFF, memory_order_relaxed);
  return 0;
}

uint64_t sub_100004B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a2 + 32);
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100004BBC(int *a1, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = 0;
  address = 0;
  if (!a1)
  {
    v21 = sub_100009620();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100014764(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v16 = -1;
    v14 = -1;
    v20 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v14 = a2;
  v16 = 4 * a2;
  v17 = vm_allocate(mach_task_self_, &address, 4 * a2, -150994943);
  if (v17)
  {
    v18 = v17;
    v19 = sub_100009620();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000145AC(v18);
    }

    v14 = 0;
    address = 0;
    v20 = 4294967294;
    goto LABEL_23;
  }

  v48 = v14;
  if (v14)
  {
    LODWORD(v29) = v14;
    v14 = 0;
    v29 = v29;
    v30 = a3;
    do
    {
      v31 = *v30;
      v30 += 2;
      v32 = v14 + v31;
      v33 = v14 + v31 + 8;
      if (a1[38])
      {
        v32 = v33;
      }

      if (a1[39])
      {
        v14 = v32 + 4;
      }

      else
      {
        v14 = v32;
      }

      --v29;
    }

    while (v29);
  }

  v34 = vm_allocate(mach_task_self_, &v49, v14, -150994943);
  if (!v34)
  {
    v47 = a7;
    if (v48)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        *(address + 4 * v38) = v39;
        strlcpy((v49 + v39), *(a4 + 8 * v38), 0x400uLL);
        v39 += a3[2 * v38];
        if (a1[38])
        {
          if (a8)
          {
            v40 = *(a8 + 8 * v38);
          }

          else
          {
            v40 = 0;
          }

          *(v49 + v39) = v40;
          v39 += 8;
        }

        if (a1[39])
        {
          if (a9)
          {
            v41 = *(a9 + 4 * v38);
          }

          else
          {
            v41 = 0;
          }

          *(v49 + v39) = v41;
          v39 += 4;
        }

        ++v38;
      }

      while (v48 != v38);
    }

    else
    {
      v39 = 0;
    }

    if (v39 != v14)
    {
      v42 = sub_100009620();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v52 = "callback_client";
        v53 = 1024;
        v54 = v48;
        v55 = 1024;
        v56 = v39;
        v57 = 1024;
        v58 = v14;
        v59 = 1024;
        v60 = v48;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s: ERROR: npaths=%d j=%d paths_blob_size=%d i=%d", buf, 0x24u);
      }

      v43 = sub_100009620();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000146CC(v43);
      }
    }

    v44 = sub_100004FC4(*a1, 0x2710u, v48, address, v48, a5, v48, v47, v48, v49, v14);
    v20 = v44;
    if (!v44 || v44 == 268435459)
    {
      goto LABEL_21;
    }

    v45 = time(0);
    if (v45 - qword_100024270 < 5)
    {
      if (v45 - qword_100024270 < 2 || (v46 = a1[34], dword_100024278 == v46))
      {
LABEL_53:
        if (v20 == 268435460)
        {
          ++dword_1000246A0;
          usleep(0x186A0u);
          v20 = 268435460;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v46 = a1[34];
    }

    qword_100024270 = v45;
    dword_100024278 = v46;
    goto LABEL_53;
  }

  v35 = v34;
  v36 = sub_100009620();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    sub_10001463C(v35);
  }

  v49 = 0;
  v20 = 4294967293;
LABEL_21:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, v16);
  }

LABEL_23:
  if (v49)
  {
    vm_deallocate(mach_task_self_, v49, v14);
  }

  return v20;
}

uint64_t sub_100004FC4(int a1, mach_msg_timeout_t timeout, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  v15 = a4;
  v16 = 16777472;
  v17 = 4 * a5;
  v18 = a6;
  v19 = 16777472;
  v20 = 4 * a7;
  v21 = a8;
  v22 = 16777472;
  v23 = 8 * a9;
  v24 = a10;
  v25 = 16777472;
  v26 = a11;
  v27 = NDR_record;
  v28 = a3;
  v29 = a5;
  v30 = a7;
  v31 = a9;
  v32 = a11;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_10001B150;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v12 = mach_msg(msg, 17, 0x78u, 0, 0, timeout, 0);
  if ((v12 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v12;
}

uint64_t sub_1000050E0(uint64_t a1)
{
  v29 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
  if (!v29)
  {
    return 12;
  }

  if (qword_100024708)
  {
    *v29 = *qword_100024708;
  }

  else
  {
    *v29 = 0;
    *(v29 + 1) = 0;
  }

  v2 = malloc_type_malloc(4 * *(a1 + 128), 0x100004052888210uLL);
  if (!v2)
  {
    goto LABEL_56;
  }

  v3 = v2;
  if (*(a1 + 128) < 1)
  {
    v12 = *(v29 + 3);
    v6 = (v29 + 8);
    v13 = 8 * v12;
    if (*(v29 + 2) < v12)
    {
      goto LABEL_29;
    }

LABEL_28:
    v12 += 128;
    goto LABEL_29;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v29 + 8);
  do
  {
    v7 = *v6;
    if (v7 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = *(a1 + 112);
      v10 = *v29;
      while (1)
      {
        v11 = *(v10 + 8 * v8);
        if ((!v9 || v9 == *(v11 + 8)) && !strcmp(*(*(a1 + 136) + 8 * v4), *v11) && ((*(a1 + 192) & 0x100) != 0 && (*(v11 + 14) & 1) != 0 || (*(a1 + 192) & 0x100) == 0 && (*(v11 + 14) & 1) == 0))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_22;
        }
      }

      v3[v4] = v8;
      ++*(v11 + 16);
      LODWORD(v7) = *v6;
    }

    if (v8 >= v7)
    {
LABEL_22:
      v3[v4] = -1;
      ++v5;
    }

    ++v4;
  }

  while (v4 < *(a1 + 128));
  v12 = *(v29 + 3);
  v13 = 8 * v12;
  if (*(v29 + 2) + v5 < v12)
  {
    goto LABEL_29;
  }

  if (v5 <= 127)
  {
    goto LABEL_28;
  }

  v12 += (v5 + 31) & 0x7FFFFFE0;
LABEL_29:
  v14 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
  if (!v14)
  {
    goto LABEL_55;
  }

  v15 = v14;
  if (*v29)
  {
    memcpy(v14, *v29, v13);
  }

  v16 = *v6;
  if (*(a1 + 128) < 1)
  {
LABEL_40:
    qsort(v15, v16, 8uLL, sub_1000054C4);
    *v29 = v15;
    *(v29 + 2) = v16;
    *(v29 + 3) = v12;
    v23 = qword_100024708;
    qword_100024708 = v29;
    __dmb(0xBu);
    do
    {
      if (!atomic_fetch_add_explicit(&dword_100024718, 0, memory_order_relaxed))
      {
        break;
      }

      usleep(0x2710u);
    }

    while (qword_100024710 == v23);
    if (v23)
    {
      free(*v23);
      free(v23);
    }

    free(v3);
    return 0;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = v3[v18];
    if (v19 == -1)
    {
      break;
    }

    *(*(a1 + 208) + v17 + 8) = *(*&v15[8 * v19] + 24);
    __dmb(0xBu);
    *(*&v15[8 * v3[v18]] + 24) = *(a1 + 208) + v17;
LABEL_39:
    ++v18;
    v17 += 16;
    if (v18 >= *(a1 + 128))
    {
      goto LABEL_40;
    }
  }

  v20 = malloc_type_malloc(0x20uLL, 0x10300405734DD4FuLL);
  *&v15[8 * v16] = v20;
  if (!v20)
  {
    goto LABEL_47;
  }

  v21 = *(a1 + 136);
  *v20 = strdup(*(v21 + 8 * v18));
  v22 = *&v15[8 * v16];
  if (*v22)
  {
    *(v22 + 8) = *(a1 + 112);
    *(v22 + 12) = strlen(*(v21 + 8 * v18));
    *(v22 + 14) = (*(a1 + 192) >> 8) & 1;
    *(v22 + 16) = 1;
    *(v22 + 24) = *(a1 + 208) + v17;
    ++v16;
    goto LABEL_39;
  }

  free(*&v15[8 * v16]);
LABEL_47:
  v25 = sub_100009620();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100015664();
  }

  v26 = *v6;
  if (v26 < v16)
  {
    v27 = &v15[8 * v26];
    v28 = v16 - v26;
    do
    {
      if (*v27)
      {
        free(*v27);
      }

      ++v27;
      --v28;
    }

    while (v28);
  }

  free(v15);
LABEL_55:
  free(v3);
LABEL_56:
  free(v29);
  return 12;
}

uint64_t sub_100005500(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  if (*(a1 + 240) == -1)
  {
    return 0;
  }

  v2 = dword_100024740;
  if (dword_100024740)
  {
LABEL_3:
    v3 = sub_10000A794(sub_10000A160);
  }

  else
  {
    while (v2 != 10)
    {
      v4 = v2;
      if ((*(a1 + 192) & 0x1ALL) == 0)
      {
        usleep(0x3D090u);
        v2 = v4 + 1;
        if (!dword_100024740)
        {
          continue;
        }
      }

      if (v4 < 9)
      {
        goto LABEL_3;
      }

      break;
    }

    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000181E4();
    }

    v3 = 0;
  }

  if (*(a1 + 216) && (*(a1 + 192) & 2) == 0)
  {
    if (**(a1 + 136))
    {
      if ((*(a1 + 192) & 1) != 0 && (*(a1 + 192) & 0x4000) == 0)
      {
        v3 = sub_100010B68(a1);
      }

      if (!v3)
      {
        v6 = **(a1 + 136);
        __strlcpy_chk();
        v16 = strlen(__s) + 1;
        v14 = __s;
        v13 = 0x8000000;
        if (!*(a1 + 168))
        {
          *(a1 + 168) = *(a1 + 240);
        }

        v7 = (*(a1 + 216))(*(a1 + 224), 1, &v16, &v14, &v13, 0, a1 + 168, &v12, &v11);
        v3 = v7;
        if (v7)
        {
          if (v7 == 268435459)
          {
            *(a1 + 192) |= 2uLL;
          }

          v8 = sub_100009620();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100018220(a1);
          }

          *(a1 + 192) |= 0x200uLL;
        }
      }
    }

    else
    {
      v9 = sub_100009620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001829C();
      }
    }
  }

  return v3;
}

void *sub_100005740(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if ((*(a1[4] + 192) & 0x20) != 0)
  {
    xpc_dictionary_set_string(v2, "metric_type", "global");
    xpc_dictionary_set_int64(v3, "resident_size", a1[6]);
    xpc_dictionary_set_int64(v3, "virtual_size", a1[5]);
    xpc_dictionary_set_int64(v3, "string_table_count", dword_100025850);
    xpc_dictionary_set_int64(v3, "event_id", qword_1000246D0[dword_1000246E0] - *(a1[4] + 160));
    v5 = dword_100024720;
    v6 = "num_clients";
  }

  else
  {
    xpc_dictionary_set_string(v2, "metric_type", "client");
    if (*(a1[4] + 360))
    {
      v4 = *(a1[4] + 360);
    }

    else
    {
      v4 = "unknown";
    }

    xpc_dictionary_set_string(v3, "client_name", v4);
    xpc_dictionary_set_int64(v3, "client_pid", *(a1[4] + 256));
    xpc_dictionary_set_int64(v3, "num_paths", *(a1[4] + 128));
    v5 = *(a1[4] + 304);
    v6 = "allocated_bytes";
  }

  xpc_dictionary_set_int64(v3, v6, v5);
  return v3;
}

BOOL sub_1000058A8(uint64_t a1, unsigned int a2, char *a3)
{
  v5 = *(a1 + 284);
  *v12.val = *(a1 + 268);
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v12);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *v12.val = 0;
  v8 = SecTaskCopySigningIdentifier(v6, &v12);
  if (v8)
  {
    v9 = v8;
    v10 = CFStringGetCString(v8, a3, a2, 0x8000100u) != 0;
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v7);
  return v10;
}

uint64_t sub_100005950(char *cStr, unsigned int a2, char *a3)
{
  if (!cStr || !a3)
  {
    v13 = sub_100009620();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100015A58();
    }

    return 0;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    v14 = sub_100009620();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100015C4C();
    }

    return 0;
  }

  v6 = v5;
  v7 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    v15 = sub_100009620();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100015BD0();
    }

    CFRelease(v6);
    return 0;
  }

  v8 = v7;
  v9 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  v10 = v9;
  if (v9)
  {
    Identifier = CFBundleGetIdentifier(v9);
    if (Identifier)
    {
      if (CFStringGetCString(Identifier, a3, a2, 0x8000100u))
      {
        v12 = 1;
        goto LABEL_23;
      }

      v18 = sub_100009620();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100015AD8();
      }
    }

    else
    {
      v17 = sub_100009620();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100015B54();
      }
    }
  }

  v12 = 0;
LABEL_23:
  CFRelease(v6);
  CFRelease(v8);
  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t sub_100005AEC(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 256);
  v4 = -1;
  v5 = dword_1000258D8;
  while (1)
  {
    v7 = *v5;
    v5 += 2;
    v6 = v7;
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v2;
    }

    if (v4 == -1)
    {
      v4 = v8;
    }

    if (v3 == v6)
    {
      break;
    }

    v2 = (v2 + 1);
    if (v2 == 512)
    {
      if (v4 == -1)
      {
        v14 = sub_100009620();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000156A0();
        }

        return 28;
      }

      v2 = &dword_1000258D8[2 * v4];
      *v2 = v3;
      v2[1] = 0;
      LODWORD(v2) = v4;
      break;
    }
  }

  v9 = &dword_1000258D8[2 * v2];
  if (v9[1] <= 511)
  {
    for (i = 0; i != 512; ++i)
    {
      if (!*(&xmmword_100024758 + i))
      {
        result = 0;
        *(a1 + 200) = i;
        __dmb(0xBu);
        *(&xmmword_100024758 + i) = a1;
        ++v9[1];
        return result;
      }
    }

    if (v2 == v4)
    {
      *v9 = 0;
    }

    v12 = sub_100009620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001571C();
    }
  }

  else
  {
    v10 = sub_100009620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100015798((a1 + 256));
    }
  }

  return 28;
}

uint64_t sub_100005C24(int a1, int a2, uint64_t a3, unsigned int a4, uint64_t *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, _OWORD *a15, unint64_t *a16)
{
  if (a2 && a4 >= 2 && a13)
  {
    return 22;
  }

  v25 = malloc_type_calloc(8 * a8 + 440, 1uLL, 0x10B0040A09B0EA7uLL);
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  v54 = a13;
  pthread_mutex_init(v25, 0);
  pthread_cond_init((v26 + 64), 0);
  *(v26 + 128) = a4;
  v27 = a4;
  v28 = malloc_type_calloc(a4, 8uLL, 0x10040436913F5uLL);
  *(v26 + 136) = v28;
  if (!v28)
  {
    goto LABEL_48;
  }

  v52 = a7;
  v53 = a1;
  if (!a4)
  {
    goto LABEL_29;
  }

  v29 = 0;
  while (1)
  {
    v30 = *(a3 + 8 * v29);
    if (!a2)
    {
LABEL_19:
      v34 = v30;
      goto LABEL_21;
    }

    if (*v30 == 47 && !v30[1])
    {
      break;
    }

    v31 = strstr(*(a3 + 8 * v29), "/.docid");
    if (v31)
    {
      if (strcmp(v31, "/.docid"))
      {
        goto LABEL_22;
      }

      v32 = ".docid";
    }

    else
    {
      v33 = strstr(v30, "/.activity");
      if (!v33)
      {
        goto LABEL_19;
      }

      if (strcmp(v33, "/.activity"))
      {
        goto LABEL_22;
      }

      v32 = ".activity";
    }

    *(*(v26 + 136) + 8 * v29) = strdup(v32);
LABEL_23:
    if (a4 == ++v29)
    {
      goto LABEL_29;
    }
  }

  v34 = &unk_10001A42E;
LABEL_21:
  *(*(v26 + 136) + 8 * v29) = strdup(v34);
LABEL_22:
  if (*(*(v26 + 136) + 8 * v29))
  {
    goto LABEL_23;
  }

  v35 = sub_100009620();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_100015DC8();
  }

  if (a4 != v29)
  {
    if (v29 < a4)
    {
      do
      {
        *(*(v26 + 136) + 8 * v29++) = 0;
      }

      while (a4 != v29);
    }

    goto LABEL_48;
  }

LABEL_29:
  *(v26 + 400) = 0u;
  *(v26 + 416) = 0u;
  *(v26 + 368) = 0u;
  *(v26 + 384) = 0u;
  if (a6)
  {
    v36 = (v26 + 368);
    v37 = a6;
    do
    {
      v38 = *a5;
      __strlcpy_chk();
      if (__s[strlen(__s) - 1] != 47)
      {
        __strlcat_chk();
      }

      *v36++ = strdup(__s);
      ++a5;
      --v37;
    }

    while (v37);
  }

  *(v26 + 112) = a2;
  *(v26 + 216) = a11;
  *(v26 + 224) = a12;
  *(v26 + 176) = v52;
  *(v26 + 232) = a8;
  *(v26 + 240) = a9;
  *(v26 + 192) = a10;
  *(v26 + 432) = v26 + 440;
  *(v26 + 256) = v53;
  *(v26 + 260) = v54;
  *(v26 + 264) = a14;
  v39 = a15[1];
  *(v26 + 268) = *a15;
  *(v26 + 284) = v39;
  v40 = a15[1];
  *__s = *a15;
  v56 = v40;
  *(v26 + 300) = sub_1000062F8(__s, "com.apple.private.vfs.authorized-access");
  if (!sub_100006430())
  {
    v41 = *(v26 + 256);
    if (v41 != getpid())
    {
      v42 = sub_100009620();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100015E50();
      }
    }
  }

  v43 = malloc_type_malloc(16 * a4, 0x20040A4A59CD2uLL);
  *(v26 + 208) = v43;
  if (!v43)
  {
LABEL_48:
    v24 = 12;
    goto LABEL_49;
  }

  if (a4)
  {
    v44 = v43 + 8;
    v45 = a4;
    do
    {
      *(v44 - 1) = v26;
      *v44 = 0;
      v44 += 2;
      --v45;
    }

    while (v45);
  }

  pthread_mutex_lock(&stru_100024140);
  v24 = sub_100005AEC(v26);
  if (v24)
  {
LABEL_45:
    pthread_mutex_unlock(&stru_100024140);
LABEL_49:
    free(*(v26 + 208));
    v46 = *(v26 + 136);
    if (v46)
    {
      if (a4)
      {
        v47 = 0;
        v48 = 8 * v27;
        do
        {
          v49 = *(*(v26 + 136) + v47);
          if (v49)
          {
            free(v49);
            *(*(v26 + 136) + v47) = 0;
          }

          v47 += 8;
        }

        while (v48 != v47);
        v46 = *(v26 + 136);
      }

      free(v46);
    }

    for (i = 368; i != 432; i += 8)
    {
      free(*(v26 + i));
      *(v26 + i) = 0;
    }

    pthread_cond_destroy((v26 + 64));
    free(v26);
    v26 = 0;
    goto LABEL_60;
  }

  v24 = sub_1000050E0(v26);
  if (v24)
  {
    sub_10000B630(v26);
    goto LABEL_45;
  }

  pthread_mutex_unlock(&stru_100024140);
LABEL_60:
  *a16 = v26;
  return v24;
}

uint64_t sub_1000060E0(uint64_t a1)
{
  if (!sub_100006F34())
  {
    return 22;
  }

  v2 = *(a1 + 120);
  v3 = 16 * v2;
  v4 = (16 * v2) & 0x80 | (4 * ((v2 >> 1) & 1));
  if ((v2 & 0x20) != 0)
  {
    v4 |= 0x1000uLL;
    pthread_mutex_lock(&stru_100024008);
    v5 = 0;
    while (dword_100025858[v5])
    {
      if (++v5 == 32)
      {
        goto LABEL_8;
      }
    }

    dword_100025858[v5] = *(a1 + 136);
LABEL_8:
    pthread_mutex_unlock(&stru_100024008);
    v2 = *(a1 + 120);
    v3 = 16 * v2;
  }

  v6 = v4 | v3 & 0x100;
  if ((v2 & 0x80) != 0)
  {
    v7 = v6 | 0x4000;
  }

  else
  {
    v7 = v6;
  }

  if ((v2 & 0x80) != 0)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = 457;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 |= 0x2000uLL;
    *(a1 + 152) = 1;
  }

  if ((v2 & 0x100) != 0)
  {
    v7 |= 0x8000uLL;
    *(a1 + 156) = 1;
  }

  v22 = 0;
  v23 = 0;
  memset(&__attr, 0, sizeof(__attr));
  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a1 + 40);
  v13 = *(a1 + 112);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  v16 = *(a1 + 140);
  v17 = *(a1 + 144);
  v18 = *(a1 + 176);
  v21[0] = *(a1 + 160);
  v21[1] = v18;
  if (sub_100005C24(v15, v10, v9, v11, (a1 + 48), v12, v13, v8, v14, v7 | (v2 << 7) & 0x10000, sub_100004BBC, a1, v16, v17, v21, &v23))
  {
    v19 = sub_100009620();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100018AB4((a1 + 24));
    }

    return 22;
  }

  atomic_fetch_add_explicit(&dword_100024720, 1u, memory_order_relaxed);
  sub_1000054F0(a1);
  pthread_attr_init(&__attr);
  pthread_attr_setdetachstate(&__attr, 2);
  if ((v7 & 0x4000) != 0)
  {
    pthread_attr_set_qos_class_np(&__attr, QOS_CLASS_USER_INTERACTIVE, 0);
  }

  pthread_create(&v22, &__attr, sub_1000034A0, v23);
  pthread_attr_destroy(&__attr);
  return 0;
}

BOOL sub_1000062F8(_OWORD *a1, const char *a2)
{
  if (a2)
  {
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    v4 = a1[1];
    *cf.val = *a1;
    *&cf.val[4] = v4;
    v5 = SecTaskCreateWithAuditToken(0, &cf);
    if (v5)
    {
      v6 = v5;
      *cf.val = 0;
      v7 = SecTaskCopyValueForEntitlement(v5, v3, &cf);
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
        CFRelease(v8);
      }

      else
      {
        v10 = 0;
      }

      if (*cf.val)
      {
        CFRelease(*cf.val);
      }

      CFRelease(v6);
      if (v3)
      {
LABEL_19:
        CFRelease(v3);
      }
    }

    else
    {
      v12 = sub_100009620();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100015CC8();
      }

      v10 = 0;
      if (v3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = sub_100009620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100015D48();
    }

    return 0;
  }

  return v10;
}

BOOL sub_100006430()
{
  v0 = __chkstk_darwin();
  memset(v6, 0, 255);
  v1 = *(v0 + 256);
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v1, buffer, 0x1000u) >= 1)
  {
    v2 = buffer;
  }

  else
  {
    v2 = "(unknown)";
  }

  if (sub_100005950(v2, 0xFFu, v6) || (v4 = *(v0 + 256), buffer[0] = 0, v5 = csops(), result = 0, !v5) && (buffer[0] & 0x4000000) != 0 && (result = sub_1000058A8(v0, 0xFFu, v6)))
  {
    *(v0 + 360) = strdup(v6);
    return 1;
  }

  return result;
}

void sub_100006568(uint64_t a1, unint64_t a2, uint64_t a3, mach_error_t a4)
{
  if (a4)
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100013994(a4);
    }
  }

  if (a2 > 0xD)
  {
    goto LABEL_10;
  }

  if (((1 << a2) & 0x2182) != 0)
  {
    return;
  }

  if (a2 == 2)
  {
    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();
      mach_msg_destroy(msg);
    }
  }

  else
  {
LABEL_10:
    v8 = sub_100009620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013A54();
    }
  }
}

void sub_100006648(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 5 || *(a1 + 4) != 160)
  {
    v5 = -304;
LABEL_18:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 67) != 1 || *(a1 + 83) != 1 || *(a1 + 99) != 1 || *(a1 + 120) != *(a1 + 52) >> 2 || *(a1 + 68) != *(a1 + 124) || *(a1 + 132) != *(a1 + 84) >> 2 || *(a1 + 100) != *(a1 + 136))
  {
    v5 = -300;
    goto LABEL_18;
  }

  v28 = v2;
  v29 = v3;
  v4 = a1 + 160;
  if (*(a1 + 160) || *(a1 + 164) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v6 = (a2 + 28);
    *(a2 + 32) = 0x14000000000000;
    v8 = *(a1 + 12);
    v9 = *(a1 + 28);
    v10 = *(a1 + 112);
    v11 = *(a1 + 116);
    v12 = *(a1 + 40);
    v13 = *(a1 + 52) >> 2;
    v14 = *(a1 + 56);
    v15 = *(a1 + 68);
    v16 = *(a1 + 128);
    v17 = *(a1 + 72);
    v18 = *(a1 + 84) >> 2;
    v19 = *(a1 + 88);
    v20 = *(a1 + 100);
    v21 = *(a1 + 140);
    v22 = *(a1 + 148);
    v23 = *(a1 + 152);
    v24 = *(v4 + 36);
    v27[0] = *(v4 + 20);
    v27[1] = v24;
    v25 = sub_10000688C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v6, v27);
    mig_deallocate(*(a1 + 88), *(a1 + 100));
    *(a1 + 88) = 0;
    *(a1 + 100) = 0;
    mig_deallocate(*(a1 + 72), *(a1 + 84));
    *(a1 + 72) = 0;
    *(a1 + 84) = 0;
    mig_deallocate(*(a1 + 56), *(a1 + 68));
    *(a1 + 56) = 0;
    *(a1 + 68) = 0;
    mig_deallocate(*(a1 + 40), *(a1 + 52));
    *(a1 + 40) = 0;
    *(a1 + 52) = 0;
    if (v25)
    {
      *(a2 + 32) = v25;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      *a2 |= 0x80000000;
      *(a2 + 4) = 40;
      *(a2 + 24) = 1;
    }
  }
}

uint64_t sub_10000688C(int a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6, const void *a7, unsigned int a8, unsigned int a9, int *a10, int a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16, mach_port_name_t *a17, _OWORD *a18)
{
  *egidp = 0;
  pidp = 0;
  v25 = a18[1];
  *atoken.val = *a18;
  *&atoken.val[4] = v25;
  audit_token_to_au32(&atoken, 0, &egidp[1], egidp, 0, 0, &pidp, 0, 0);
  v26 = mach_task_self_;
  *a17 = 0;
  if (a4 == a6)
  {
    v52 = a2;
    if (a9 == a11)
    {
      if (a4 > 0x1000 || a9 > 0x400000)
      {
        v33 = v26;
        v31 = 268435459;
        v36 = sub_100009620();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100013FFC();
        }
      }

      else if (a8 > 0x400000 || a13 > 0x400000)
      {
        v33 = v26;
        v31 = 268435459;
        v37 = sub_100009620();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100013F7C();
        }
      }

      else if (a4)
      {
        v27 = 0;
        while (*(a5 + 4 * v27) <= a8)
        {
          if (a4 == ++v27)
          {
            goto LABEL_11;
          }
        }

        v33 = v26;
        v31 = 268435459;
        v38 = sub_100009620();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100013BDC();
        }
      }

      else
      {
LABEL_11:
        if (a9 < 1)
        {
LABEL_15:
          v29 = v26;
          v30 = mach_port_allocate(v26, 1u, a17);
          if (v30)
          {
            v31 = v30;
            v32 = sub_100009620();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_100013C60(v31);
            }

            goto LABEL_35;
          }

          v51 = a7;
          previous = 0;
          v33 = v29;
          v40 = mach_port_request_notification(v29, *a17, 70, 1u, *a17, 0x15u, &previous);
          if (v40)
          {
            v31 = v40;
            v41 = sub_100009620();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_100013CF0(v31);
            }
          }

          else
          {
            v43 = a14;
            if (previous)
            {
              mach_port_deallocate(mach_task_self_, previous);
              v43 = a14;
            }

            v44 = *a17;
            v45 = a18[1];
            *atoken.val = *a18;
            *&atoken.val[4] = v45;
            v46 = sub_100007074(v52, v44, a3, a4, a5, a8, v51, v43, a15, a16, pidp, egidp[1], egidp[0], &atoken);
            if (v46)
            {
              v47 = v46;
              if (sub_1000071A8(v46, a9, a10, a13, a12))
              {
                v31 = 268435459;
                *v47 = 0;
                sub_10000B078(v47);
                v48 = sub_100009620();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  sub_100013D80();
                }
              }

              else
              {
                if (!sub_1000060E0(v47))
                {
                  return 0;
                }

                v31 = 268435459;
                *v47 = 0;
                sub_10000B078(v47);
                v50 = sub_100009620();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  sub_100013DFC();
                }
              }

              goto LABEL_35;
            }

            v31 = 268435459;
            v49 = sub_100009620();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_100013E78();
            }
          }
        }

        else
        {
          v28 = 0;
          while (a10[v28] <= a13)
          {
            if (a9 == ++v28)
            {
              goto LABEL_15;
            }
          }

          v33 = v26;
          v31 = 268435459;
          v39 = sub_100009620();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_100013EF8();
          }
        }
      }
    }

    else
    {
      v33 = v26;
      v31 = 268435459;
      v35 = sub_100009620();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100013B5C();
      }
    }
  }

  else
  {
    v33 = v26;
    v31 = 268435459;
    v34 = sub_100009620();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100013ADC();
    }
  }

  if (*a17)
  {
    mach_port_mod_refs(v33, *a17, 1u, -1);
LABEL_35:
    *a17 = 0;
  }

  return v31;
}

void *sub_100006CFC(int a1, uintptr_t a2, int a3, unsigned int a4, uint64_t a5, int a6, const void *a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, int a13, _OWORD *a14)
{
  v22 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10B004086E55B40uLL);
  if (!v22)
  {
    v29 = sub_100009620();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000142DC(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    return 0;
  }

  v23 = v22;
  v24 = malloc_type_malloc(a6, 0x86BF7356uLL);
  *(v23 + 4) = v24;
  if (!v24)
  {
    v37 = sub_100009620();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100014264(v37, v38, v39, v40, v41, v42, v43, v44);
    }

    goto LABEL_18;
  }

  memcpy(v24, a7, a6);
  v25 = malloc_type_malloc(8 * a4, 0x10040436913F5uLL);
  *(v23 + 3) = v25;
  if (!v25)
  {
    v45 = sub_100009620();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1000141EC(v45, v46, v47, v48, v49, v50, v51, v52);
    }

    goto LABEL_17;
  }

  if (a4)
  {
    v26 = 0;
    do
    {
      *(*(v23 + 3) + 8 * v26) = *(v23 + 4) + *(a5 + 4 * v26);
      ++v26;
    }

    while (a4 != v26);
  }

  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
  *v23 = a1;
  *(v23 + 1) = a2;
  v27 = sub_1000070E4(a2);
  *(v23 + 1) = v27;
  if (!v27)
  {
    v53 = sub_100009620();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100014174(v53, v54, v55, v56, v57, v58, v59, v60);
    }

LABEL_17:
    free(*(v23 + 4));
LABEL_18:
    free(v23);
    return 0;
  }

  *(v23 + 14) = a8;
  *(v23 + 30) = a9;
  *(v23 + 16) = a10;
  *(v23 + 34) = a11;
  *(v23 + 35) = a12;
  *(v23 + 36) = a13;
  *(v23 + 37) = 1;
  v28 = a14[1];
  *(v23 + 10) = *a14;
  *(v23 + 11) = v28;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000B6B4;
  handler[3] = &unk_100020808;
  handler[4] = v23;
  dispatch_source_set_cancel_handler(v27, handler);
  dispatch_activate(*(v23 + 1));
  return v23;
}

uint64_t sub_100006F34()
{
  if (dword_1000246C8)
  {
    return 0;
  }

  if (dword_100024750)
  {
    return 1;
  }

  pthread_mutex_lock(&stru_100024090);
  if (dword_100024750)
  {
    pthread_mutex_unlock(&stru_100024090);
    return 1;
  }

  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v6);
  v6.tv_sec += 10;
  while (!dword_1000246C8)
  {
    v2 = pthread_cond_timedwait(&stru_1000240D0, &stru_100024090, &v6);
    if (dword_100024750)
    {
      v0 = dword_1000246C8 == 0;
      goto LABEL_19;
    }

    v3 = v2;
    if (v2)
    {
      if (v2 == 60)
      {
        v4 = sub_100009620();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10001831C();
        }
      }

      else
      {
        v5 = sub_100009620();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10001839C(v3);
        }
      }

      break;
    }
  }

  v0 = 0;
LABEL_19:
  pthread_mutex_unlock(&stru_100024090);
  return v0;
}

void *sub_100007074(int a1, uintptr_t a2, int a3, unsigned int a4, uint64_t a5, int a6, const void *a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, int a13, _OWORD *a14)
{
  v14 = a14[1];
  v16[0] = *a14;
  v16[1] = v14;
  result = sub_100006CFC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v16);
  if (result)
  {
    result[24] = qword_100024260;
    qword_100024260 = result;
    ++dword_100024268;
  }

  return result;
}

NSObject *sub_1000070E4(uintptr_t handle)
{
  v1 = dispatch_source_create(&_dispatch_source_type_mach_recv, handle, 0, qword_100024248);
  v2 = v1;
  if (v1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10000AC90;
    handler[3] = &unk_1000207E8;
    handler[4] = v1;
    dispatch_source_set_event_handler(v1, handler);
  }

  else
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001387C();
    }
  }

  return v2;
}

uint64_t sub_1000071A8(uint64_t a1, int a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (a2 > 8)
  {
    return 28;
  }

  if (a2 >= 1)
  {
    v10 = a3;
    v11 = a2;
    v12 = a2;
    v13 = a3;
    do
    {
      v14 = *v13++;
      if (strnlen((a5 + v14), 0x401uLL) > 0x400)
      {
        return 22;
      }

      --v12;
    }

    while (v12);
    do
    {
      v15 = *v10++;
      __strlcpy_chk();
      *v5++ = strdup(__s1);
      --v11;
    }

    while (v11);
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_1000072C0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000021A0(&unk_100025758);
  if (a2)
  {
    v12 = 0;
    v13 = a2;
    v14 = &off_100024000;
    v93 = a4;
    v94 = a6;
    v92 = a2;
    while (1)
    {
      v15 = sub_100009948(*(a6 + 4 * v12));
      if (!v15)
      {
        v21 = v14[233];
        goto LABEL_18;
      }

      v16 = v15;
      v17 = (v15 + 216);
      v18 = v14[233];
      if (*(v15 + 216))
      {
        v19 = *(v15 + 216);
      }

      else
      {
        v19 = v14[233];
      }

      if ((*(v15 + 32) & 0x80) == 0 && (*(v15 + 32) & 4) != 0)
      {
        goto LABEL_58;
      }

      bzero(&v117, 0x878uLL);
      if (strnstr(*(a4 + 8 * v12), ".fseventsd", 0x400uLL) || strnstr(*(a4 + 8 * v12), ".Spotlight-V100", 0x400uLL))
      {
        goto LABEL_119;
      }

      if (statfs(*(v16 + 8), &v117) || v117.f_fsid.val[0] != *v16)
      {
        break;
      }

      if (time(0) - *(v16 + 40) >= 16)
      {
        v20 = sub_100009620();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v89 = *(v16 + 8);
          *buf = 136315138;
          v110 = v89;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Events arrived for %s after an unmount request! Re-initializing.", buf, 0xCu);
        }

        *(v16 + 32) &= ~0x80u;
        *(v16 + 32) |= 0x2004u;
        sub_10000CA34();
        *(v16 + 32) &= ~0x2000u;
LABEL_56:
        v19 = *v17;
      }

      v18 = v14[233];
LABEL_58:
      if ((*(v16 + 32) & 0x1000) == 0)
      {
        v52 = v16;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        if ((v52[1].next & 0x40) == 0)
        {
          v53 = v52;
LABEL_65:
          if ((v53[1].next & 2) != 0)
          {
            v54 = v53;
            v55 = sub_100009620();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v88 = *(v54 + 8);
              v117.f_bsize = 136315138;
              *&v117.f_iosize = v88;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "event id's wrapped for volume %s", &v117, 0xCu);
            }

            sub_1000087F4(v21 + 2304);
            sub_10000EDBC(v21, 1);
            *(v21 + 252) = 0;
            *(v21 + 8) = 0;
            v53 = v54;
            sub_10000EFA4(v54, v21);
            *(v54 + 32) &= ~2u;
          }

          v22 = *(a4 + 8 * v12);
          v23 = *(a3 + 8 * v12);
          v99 = v53;
          if (*(a6 + 4 * v12) == v53->have)
          {
            v56 = strncmp(v22, "/.docid/", 8uLL);
            v57 = strncmp(v22, "/.activity/", 0xBuLL);
            have = 1;
            if (v56 && v57 && (have = v99[1].have, have < 1))
            {
              v59 = v22;
            }

            else
            {
              v59 = v22;
              do
              {
                if (*v59 == 47)
                {
                  --have;
                }

                else if (!*v59)
                {
                  break;
                }

                ++v59;
              }

              while (have > 0);
            }

            v103 = 0;
            v23 = &v22[v23] - v59;
            v22 = v59;
          }

          else
          {
            v103 = 0;
          }

LABEL_19:
          v24 = *(a7 + 8 * v12);
          if (v24 > *(v21 + 8))
          {
            *(v21 + 8) = v24;
            v24 = *(a7 + 8 * v12);
          }

          v102 = v24;
          v25 = *(a8 + 8 * v12);
          v100 = *(a5 + 4 * v12);
          v101 = *(a9 + 4 * v12);
          if (v22[v23 - 1])
          {
            v26 = v22[v23];
            v27 = sub_100009620();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (v26)
            {
              if (v28)
              {
                v117.f_bsize = 136315394;
                *&v117.f_iosize = v22;
                WORD2(v117.f_blocks) = 2048;
                *(&v117.f_blocks + 6) = v23;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd but no trailing nul char!", &v117, 0x16u);
              }
            }

            else
            {
              if (v28)
              {
                v117.f_bsize = 136315394;
                *&v117.f_iosize = v22;
                WORD2(v117.f_blocks) = 2048;
                *(&v117.f_blocks + 6) = v23;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd but should be +1!", &v117, 0x16u);
              }

              ++v23;
            }
          }

          v29 = *(v21 + 2512);
          v104 = v12;
          if (3 * v29 + 3 <= (4 * *(v21 + 2520)))
          {
            v30 = 2 * v29 + 2;
            if (v30 >= 0x80000)
            {
              if (!*(v21 + 2516))
              {
                v31 = sub_100009620();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v86 = *(v21 + 2520);
                  v87 = *(v21 + 2512);
                  v117.f_bsize = 67109376;
                  v117.f_iosize = v86;
                  LOWORD(v117.f_blocks) = 1024;
                  *(&v117.f_blocks + 2) = v87;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "fname table has grown too large. (filled %d / mask 0x%x)\n", &v117, 0xEu);
                }

                *(v21 + 2516) = 1;
              }

              goto LABEL_82;
            }

            *buf = 0;
            v32 = sub_1000083CC(v30, buf);
            if (v32)
            {
              v33 = v32;
              v91 = v22;
              pthread_rwlock_wrlock((v21 + 2304));
              v34 = 0;
              v35 = *(v21 + 2504);
              *(v21 + 2504) = v33;
              v36 = *(v21 + 2512);
              *(v21 + 2512) = *buf;
              *(v21 + 2520) = 0;
              while (1)
              {
                v37 = v35[v34];
                if (v37)
                {
                  break;
                }

LABEL_52:
                if (++v34 > v36)
                {
                  pthread_rwlock_unlock((v21 + 2304));
                  free(v35);
                  v22 = v91;
                  goto LABEL_82;
                }
              }

              while (2)
              {
                v38 = v37[5];
                v39 = *v38;
                if (*v38)
                {
                  v40 = 0;
                  v41 = v38 + 1;
                  do
                  {
                    v40 = dword_100024298[v39 ^ HIBYTE(v40)] ^ (v40 << 8);
                    v42 = *v41++;
                    v39 = v42;
                  }

                  while (v42);
                }

                else
                {
                  v40 = 0;
                }

                if (v40 <= 1)
                {
                  v40 = 1;
                }

                v43 = *(v21 + 2512);
                v44 = (*(v21 + 2504) + 8 * (v43 & v40));
                v45 = *v44;
                if (*v44)
                {
                  v46 = *v37;
                  *v37 = v45;
                  goto LABEL_50;
                }

                v47 = *(v21 + 2520) + 1;
                *(v21 + 2520) = v47;
                if (v47 > v43)
                {
                  v48 = sub_100009620();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = *(v21 + 2520);
                    v50 = *(v21 + 2512);
                    v117.f_bsize = 67109376;
                    v117.f_iosize = v49;
                    LOWORD(v117.f_blocks) = 1024;
                    *(&v117.f_blocks + 2) = v50;
                    _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "fname table is screwed up! filled buckets %u / table_mask %u)", &v117, 0xEu);
                  }
                }

                v45 = *v44;
                v46 = *v37;
                *v37 = *v44;
                if (v45)
                {
LABEL_50:
                  *(v45 + 8) = v37;
                }

                *v44 = v37;
                v37[1] = v44;
                v37 = v46;
                if (!v46)
                {
                  goto LABEL_52;
                }

                continue;
              }
            }

            v60 = sub_100009620();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              sub_100017758(&v107, v108);
            }
          }

LABEL_82:
          v61 = *v22;
          if (*v22)
          {
            v62 = 0;
            v63 = (v22 + 1);
            do
            {
              v62 = dword_100024298[v61 ^ HIBYTE(v62)] ^ (v62 << 8);
              v64 = *v63++;
              v61 = v64;
            }

            while (v64);
          }

          else
          {
            v62 = 0;
          }

          if (v62 <= 1)
          {
            v65 = 1;
          }

          else
          {
            v65 = v62;
          }

          pthread_rwlock_wrlock((v21 + 2304));
          v66 = (*(v21 + 2504) + 8 * (*(v21 + 2512) & v65));
          v67 = *v66;
          if (*v66)
          {
            v68 = 0;
            while (1)
            {
              v69 = v67;
              v67 = *v67;
              if (v69[3] == v25)
              {
                v70 = v69[5];
                if (!strncmp(v70, v22, v23) && !v70[v23 - 1])
                {
                  break;
                }
              }

              ++v68;
              if (!v67)
              {
                goto LABEL_98;
              }
            }

LABEL_112:
            pthread_rwlock_unlock((v21 + 2304));
            v78 = *(v69 + 9) | v100;
            v69[2] = v102;
            v69[3] = v25;
            *(v69 + 9) = v78;
            *(v69 + 8) = v101;
          }

          else
          {
            v68 = 0;
LABEL_98:
            v71 = *(v21 + 2548);
            if (v71 < *(v21 + 2544))
            {
              v72 = *(v21 + 2536);
              *(v21 + 2548) = v71 + 1;
              if (v68 > dword_100024728)
              {
                dword_100024728 = v68;
              }

              v69 = (v72 + 48 * v71);
              ++*(v21 + 2524);
              *(v69 + 9) = 0;
              v73 = sub_1000022D8(v22, v23);
              v69[5] = v73;
              if (v73[v23 - 1])
              {
                v74 = dword_10002469C++;
                if (v74 <= 49)
                {
                  v75 = sub_100009620();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    v83 = v69[5];
                    v117.f_bsize = 136315394;
                    *&v117.f_iosize = v83;
                    WORD2(v117.f_blocks) = 2048;
                    *(&v117.f_blocks + 6) = v23;
                    _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd", &v117, 0x16u);
                  }
                }
              }

              v76 = *v66;
              if (*v66)
              {
                *(v21 + 2528) += v23;
                v76[1] = v69;
              }

              else
              {
                ++*(v21 + 2520);
                *(v21 + 2528) += v23;
              }

              *v69 = v76;
              *v66 = v69;
              v69[1] = v66;
              goto LABEL_112;
            }

            v77 = sub_100009620();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v81 = *(v21 + 2544);
              v82 = *(v21 + 2548);
              v117.f_bsize = 67109634;
              v117.f_iosize = v81;
              LOWORD(v117.f_blocks) = 1024;
              *(&v117.f_blocks + 2) = v82;
              HIWORD(v117.f_blocks) = 2080;
              v117.f_bfree = v22;
              _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "too many filenames in the table (max %d cur %d) : path %s\n", &v117, 0x18u);
            }

            pthread_rwlock_unlock((v21 + 2304));
          }

          a4 = v93;
          a6 = v94;
          v12 = v104;
          v13 = v92;
          v14 = &off_100024000;
          if ((v103 & 1) == 0 && *(v21 + 2524) >= 0xAAAu)
          {
            memset(&v117.f_bfree, 0, 24);
            *&v117.f_bsize = v99;
            v117.f_blocks = v21;
            v79 = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0xD0E26DFDuLL);
            v117.f_bfree = v79;
            if (v79)
            {
              v117.f_bavail = 0x40000;
              *v79 = 1145852723;
              v79[2] = 12;
              LODWORD(v117.f_files) = 12;
              sub_100007DA8(0, (v21 + 2304), sub_100007F94, &v117);
              sub_1000080A0(v99, v21, &v117, 1);
              malloc_zone_free(qword_1000246B8, v117.f_bfree);
              sub_1000087F4(v21 + 2304);
            }

            else
            {
              v80 = sub_100009620();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                sub_10001778C(&v105, v106);
              }
            }
          }

          goto LABEL_119;
        }

        v53 = sub_100009948(-1);
        v21 = v14[233];
        if (v53)
        {
          goto LABEL_65;
        }

LABEL_18:
        v99 = 0;
        v22 = *(a4 + 8 * v12);
        v23 = *(a3 + 8 * v12);
        v103 = 1;
        goto LABEL_19;
      }

LABEL_119:
      if (++v12 == v13)
      {
        goto LABEL_124;
      }
    }

    v51 = sub_100009620();
    v17 = &qword_100024748;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v84 = *(v16 + 8);
      v85 = *v16;
      *buf = 136315906;
      v110 = "disk_logger_callback";
      v111 = 2080;
      v112 = v84;
      v113 = 1024;
      v114 = v85;
      v115 = 1024;
      v116 = v117.f_fsid.val[0];
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s: Assign to global disk logger - mount_point[%s], di->dev[%d] sfs.f_fsid.val[0]=[%d]", buf, 0x22u);
    }

    goto LABEL_56;
  }

LABEL_124:
  sub_1000024C8(&unk_100025758);
  return 0;
}

void sub_100007DA8(uint64_t a1, pthread_rwlock_t *a2, unsigned int (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (!a1 || (*(a1 + 32) & 0x90) == 0 && (*(a1 + 32) & 4) != 0)
  {
    pthread_rwlock_rdlock(a2);
    v8 = malloc_type_zone_malloc(qword_1000246B0, 8 * *&a2[1].__opaque[12], 0x2004093837F09uLL);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *a2[1].__opaque;
      if ((v12 + 1) > 1)
      {
        v13 = (v12 + 1);
      }

      else
      {
        v13 = 1;
      }

      do
      {
        v14 = *(a2[1].__sig + 8 * v10);
        if (v14)
        {
          v15 = *&a2[1].__opaque[12];
          do
          {
            if (v11 < v15)
            {
              v8[v11++] = v14;
            }

            v14 = *v14;
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v13);
      if (!a1 || (*(a1 + 32) & 0x90) == 0 && (*(a1 + 32) & 4) != 0)
      {
        qsort(v8, v11, 8uLL, sub_100007F80);
        if (v11)
        {
          v16 = v11 - 1;
          v17 = v9;
          do
          {
            if (a1 && ((*(a1 + 32) & 0x90) != 0 || (*(a1 + 32) & 4) == 0))
            {
              break;
            }

            v18 = *v17++;
          }

          while (!a3(v18, a4) && v16-- != 0);
        }
      }

      pthread_rwlock_unlock(a2);
      v20 = qword_1000246B0;

      malloc_zone_free(v20, v9);
    }

    else
    {

      pthread_rwlock_unlock(a2);
    }
  }
}

uint64_t sub_100007F94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = strlen(v4);
  v6 = *(a2 + 32);
  if (v5 + v6 + 25 >= *(a2 + 24))
  {
    sub_1000080A0(*a2, *(a2 + 8), a2, 0);
    v7 = *(a2 + 16);
    *(v7 + 4) = 0xC00000000;
    v6 = 12;
    *(a2 + 32) = 12;
    v4 = *(a1 + 40);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v8 = v5 + 1;
  memcpy((v7 + v6), v4, v8);
  v9 = *(a2 + 32) + v8;
  *(a2 + 32) = v9;
  *(*(a2 + 16) + v9) = *(a1 + 16);
  v10 = *(a2 + 32) + 8;
  *(a2 + 32) = v10;
  *(*(a2 + 16) + v10) = *(a1 + 36);
  v11 = *(a2 + 32) + 4;
  *(a2 + 32) = v11;
  *(*(a2 + 16) + v11) = *(a1 + 24);
  v12 = *(a2 + 32) + 8;
  *(a2 + 32) = v12;
  *(*(a2 + 16) + v12) = *(a1 + 32);
  *(a2 + 32) += 4;
  return 0;
}

gzFile sub_1000080A0(gzFile result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if (*(a2 + 28))
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000EDBC(a2, 1);
    sub_10000EFA4(v7, a2);
    *(a2 + 252) = 0;
    result = sub_100008458(v7, a2, 1);
    if (!result)
    {
      return result;
    }

    v8 = result;
    *(a2 + 28) = 1;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a3 + 32) < 0xDu)
  {
    return result;
  }

LABEL_7:
  v9 = *(a3 + 16);
  *v9 = 1145852723;
  v10 = *(a3 + 32);
  *(v9 + 8) = v10;
  *(v9 + 4) = sub_100008360(v9, v10);
  pthread_rwlock_wrlock((a2 + 48));
  if (v8)
  {
    goto LABEL_10;
  }

  v11 = sub_100008458(v7, a2, 0);
  if (v11)
  {
    v8 = v11;
    *(a2 + 28) = 1;
LABEL_10:
    v12 = gzwrite(v8, *(a3 + 16), *(a3 + 32));
    if (gzflush(v8, 2))
    {
      v13 = sub_100009620();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001750C();
      }
    }

    if (v12 == *(a3 + 32))
    {
      v14 = *a2 + *(a3 + 24);
      *a2 = v14;
      v15 = gzclose(v8);
      if (a4 || v14 >= 0x400000)
      {
        if (v15)
        {
          if (*__error() == 28)
          {
            *(a2 + 28) = 0;
          }

          v18 = sub_100009620();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000176A4();
          }

          sub_10000EDBC(a2, 0);
          sub_10000EFA4(v7, a2);
        }

        *(*(a3 + 16) + 4) = 0xC00000000;
        *a2 = 0;
        *(a2 + 252) = 0;
      }

      else
      {
        *(a2 + 252) = 1;
      }
    }

    else
    {
      v16 = sub_100009620();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100017588(a3);
      }

      if (*__error() == 28)
      {
        *(a2 + 28) = 0;
        gzclose(v8);
        *(*(a3 + 16) + 4) = 0xC00000000;
        v17 = sub_100009620();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100017630();
        }

        sub_10000EDBC(a2, 0);
        sub_10000EFA4(v7, a2);
      }
    }

    return pthread_rwlock_unlock((a2 + 48));
  }

  *(a2 + 28) = 0;

  return pthread_rwlock_unlock((a2 + 48));
}

uint64_t sub_100008360(_BYTE *a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 = dword_100024298[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      --a2;
    }

    while (a2);
  }

  else
  {
    v4 = *a1;
    if (*a1)
    {
      v2 = 0;
      v5 = a1 + 1;
      do
      {
        v2 = dword_100024298[v4 ^ HIBYTE(v2)] ^ (v2 << 8);
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    else
    {
      v2 = 0;
    }
  }

  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void *sub_1000083CC(int a1, unsigned int *a2)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 <= a1);
  v5 = v4 >> 1;
  v6 = malloc_type_malloc(8 * (v4 >> 1), 0x2004093837F09uLL);
  v7 = v6;
  if (v6)
  {
    v8 = v5 - 1;
    bzero(v6, 8 * v8 + 8);
    *a2 = v8;
  }

  return v7;
}

gzFile sub_100008458(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v23, 0, sizeof(v23));
  if ((*(a1 + 32) & 0x1040) != 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = qword_1000246D0[dword_1000246E0];
    *(a2 + 8) = v6;
  }

  v7 = 0;
  for (i = 0; ; ++i)
  {
    if (*(a2 + 252))
    {
      v9 = open((a2 + 1280), 536870922);
    }

    else
    {
      v7 = v6 + 1;
      snprintf((a2 + 1280), 0x400uLL, "%s/%.16llx", (a2 + 256), v6 + 1);
      v9 = open_dprotected_np((a2 + 1280), 536874498, 4, 0, 384);
    }

    v10 = v9;
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 17 || i >= 0x64)
    {
      goto LABEL_16;
    }

    v6 = *(a2 + 8) + 1;
    *(a2 + 8) = v6;
  }

  if (fstat(v9, &v23) || (v23.st_mode & 0xF000) != 0x8000)
  {
    __error();
    close(v10);
LABEL_16:
    v11 = sub_100009620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100019160();
    }

    v10 = open("/dev/null", 2);
    if (v10 < 0)
    {
      v18 = sub_100009620();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  v12 = strlen((a2 + 256));
  __s2[0] = 0;
  if (fcntl(v10, 50, __s2) || strncmp((a2 + 256), __s2, v12) || __s2[v12] != 47)
  {
    if (*__s2 != 0x6C756E2F7665642FLL || v25 != 108)
    {
      v14 = sub_100009620();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100019200();
      }
    }

    close(v10);
    v10 = open("/dev/null", 2);
    if (v10 < 0)
    {
      v19 = sub_100009620();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        sub_100019278();
      }

LABEL_39:
      v3 = 0;
LABEL_41:
      *(a2 + 28) = 0;
      return v3;
    }
  }

  v3 = gzdopen(v10, "ab");
  if (!v3)
  {
    close(v10);
    goto LABEL_41;
  }

  if (a3)
  {
    pthread_rwlock_wrlock((a2 + 48));
  }

  if (*(a2 + 252))
  {
    goto LABEL_48;
  }

  v15 = *(a2 + 32);
  v16 = *(a2 + 36);
  if (v15 >= v16)
  {
    v21 = malloc_type_calloc(v16 + 100, 8uLL, 0x100004000313F17uLL);
    if (!v21)
    {
      goto LABEL_48;
    }

    v17 = v21;
    v22 = *(a2 + 40);
    if (v22)
    {
      memcpy(v21, v22, 8 * *(a2 + 36));
      free(*(a2 + 40));
    }

    *(a2 + 40) = v17;
    v15 = *(a2 + 32);
    *(a2 + 36) += 100;
  }

  else
  {
    v17 = *(a2 + 40);
  }

  v17[v15] = v7;
  *(a2 + 32) = v15 + 1;
LABEL_48:
  if (a3)
  {
    pthread_rwlock_unlock((a2 + 48));
  }

  return v3;
}

uint64_t sub_1000087F4(uint64_t a1)
{
  pthread_rwlock_wrlock(a1);
  v2 = 0;
  v3 = *(a1 + 200);
  do
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = strlen(v4[5]);
        sub_100003290(v4[5], v6 + 1);
        v4[5] = 0;
        v4 = v5;
      }

      while (v5);
      v3 = *(a1 + 200);
    }

    *(v3 + 8 * v2++) = 0;
  }

  while (v2 <= *(a1 + 208));
  *(a1 + 216) = 0;
  *(a1 + 244) = 0;

  return pthread_rwlock_unlock(a1);
}

uint64_t sub_100008898(uint64_t a1, uint64_t a2, int8x8_t *a3, unsigned int a4, int a5, unint64_t a6, _DWORD *a7, int *a8, char a9)
{
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v16 = a3->i32[0];
  v17 = 1;
  if (a3->i32[0] > 1145852721)
  {
    if (v16 == 1145852722)
    {
      goto LABEL_9;
    }

    v18 = 1145852723;
  }

  else
  {
    if (v16 == 844319812)
    {
      goto LABEL_9;
    }

    v18 = 861097028;
  }

  if (v16 == v18)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:
  __s2 = 0;
  __endptr = 0;
  bzero(&v122, 0x588uLL);
  v121 = a2;
  *a7 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  v19 = a3->i32[0];
  v113 = a2;
  if (a3->i32[0] > 1145852720)
  {
    if ((v19 - 1145852721) < 3)
    {
      v20 = a3[1].i32[0];
      goto LABEL_18;
    }
  }

  else if (v19 == 827542596 || v19 == 844319812 || v19 == 861097028)
  {
    v20 = bswap32(a3[1].u32[0]);
    goto LABEL_18;
  }

  v20 = a3[1].i32[0];
  if (v20 > 0x40000)
  {
    v91 = sub_100009620();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      sub_100017DEC(a3);
    }

    return 22;
  }

LABEL_18:
  if (a5)
  {
    v21 = 22;
    if (v20 > 0x40000 || v20 > a4)
    {
      return v21;
    }

    v22 = a3->i32[1];
    a3->i32[1] = 0;
    v23 = sub_100008360(a3, v20);
    if (v19 == 827542596 || v19 == 861097028 || v19 == 844319812)
    {
      v23 = bswap32(v23);
    }

    if (v22 == v23)
    {
      if (a8)
      {
        v24 = 2;
LABEL_31:
        *a8 = v24;
      }
    }

    else
    {
      if (v22 != sub_100012F68(a3, v20))
      {
        v92 = sub_100009620();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          sub_100017E80();
        }

        return v21;
      }

      if (a8)
      {
        v24 = 1;
        goto LABEL_31;
      }
    }
  }

  v25 = a3->i32[0];
  if (a3->i32[0] == 827542596 || v25 == 861097028 || v25 == 844319812)
  {
    sub_100012FD4(a3, a4, v17);
  }

  v26 = (v113 + 128);
  v27 = malloc_type_malloc(16 * *(v113 + 128), 0x1010040466105CCuLL);
  if (!v27)
  {
    v90 = sub_100009620();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      sub_100018170(v26);
    }

    return 12;
  }

  v109 = a6;
  v110 = a7;
  v28 = v27;
  v29 = *(a1 + 16);
  __strlcpy_chk();
  v30 = *(a1 + 16);
  v31 = strlen(v30);
  v32 = v31;
  v111 = v31;
  if (*v30 == 47)
  {
    v111 = v31;
    if (*(v30 + 1))
    {
      *&v130[v31] = 47;
      v111 = v31 + 1;
    }
  }

  v107 = (v113 + 128);
  v33 = *v26;
  if (v33 >= 1)
  {
    v34 = *(v113 + 136);
    v35 = *(v113 + 112);
    v36 = v28 + 1;
    do
    {
      v37 = *v34;
      v38 = strlen(*v34);
      *(v36 - 1) = v38;
      if (v35)
      {
        goto LABEL_43;
      }

      v39 = v38;
      if (!strncmp(v30, v37, v32) && v39 >= v32)
      {
        if (v32 == 1 || ((v41 = v37[v32], v41 != 47) ? (v42 = v41 == 0) : (v42 = 1), v42))
        {
          v43 = &v37[v32];
          *v36 = &v37[v32];
          if (v37[v32] == 47)
          {
            *v36 = ++v43;
          }

          *(v36 - 1) = (&v37[v39] - v43);
          goto LABEL_44;
        }
      }

      if (*v37 != 47 || v37[1])
      {
LABEL_43:
        *v36 = v37;
      }

      else
      {
        *(v36 - 1) = 0;
        *v36 = &unk_10001A42E;
      }

LABEL_44:
      v36 += 2;
      ++v34;
      --v33;
    }

    while (v33);
  }

  v44 = &a3[1] + 4;
  __size = 1024 - v111;
  v45 = v113;
  v105 = (v113 + 268);
  v108 = v113 + 368;
  v46 = v110;
  v47 = a1;
LABEL_63:
  v48 = a3[1].i32[0];
  v49 = a3 + v48;
  while (1)
  {
    if (v44 >= v49)
    {
      goto LABEL_179;
    }

    v50 = v44;
    __s2 = v44;
    v51 = v49 - v44;
    v52 = v44;
    while (*v52)
    {
      ++v52;
      if (!--v51)
      {
        v52 = a3 + v48;
        break;
      }
    }

    v131 = v52 - v44 + 1;
    if (v131 >= 0x401)
    {
      v93 = sub_100009620();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        sub_1000180F0();
      }

LABEL_179:
      v21 = 0;
      goto LABEL_193;
    }

    v53 = v52 + 1;
    if ((v52 + 1) >= v49)
    {
      break;
    }

    if (a9 && ((v47[8] & 0xD0) != 0 || (v47[8] & 4) == 0))
    {
      goto LABEL_179;
    }

    if ((v52 + 9) > v49)
    {
      v96 = sub_100009620();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        sub_100018070();
      }

      goto LABEL_192;
    }

    v44 = v52 + 13;
    v54 = *v53;
    v127 = *v53;
    if ((v52 + 13) > v49)
    {
      v97 = sub_100009620();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        sub_100017FF0();
      }

      goto LABEL_192;
    }

    v128 = *(v52 + 9);
    v55 = a3->i32[0];
    if (a3->i32[0] == 1145852722 || v55 == 844319812)
    {
      if ((v53 + 20) > v49)
      {
        v98 = sub_100009620();
        if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_192;
        }

        goto LABEL_187;
      }

      v126 = *v44;
      v44 = v53 + 20;
    }

    if (v55 == 1145852723 || v55 == 861097028)
    {
      v56 = (v44 + 8);
      if ((v44 + 8) > v49)
      {
        v99 = sub_100009620();
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_192;
        }

LABEL_187:
        sub_100017EF0();
        goto LABEL_192;
      }

      v57 = *v44;
      v44 += 12;
      v126 = v57;
      if (v44 > v49)
      {
        v100 = sub_100009620();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          sub_100017F70();
        }

        goto LABEL_192;
      }

      v125 = *v56;
    }

    if (v54 > v109 || (*(v45 + 192) & 0x4000) != 0)
    {
      v102 = strncmp(v50, ".docid/", 7uLL);
      if (v102)
      {
        if (strncmp(v50, ".activity/1/", 0xCuLL))
        {
          strlcpy(&v130[v111], v50, __size);
          v103 = 0;
          v58 = v130;
LABEL_103:
          __s1 = v58;
          v66 = *v107;
          if (v66 >= 1)
          {
            v67 = v131 - 1;
            v68 = __s2;
            v69 = v28 + 1;
            while (1)
            {
              v70 = *(v69 - 1);
              if (v70 <= v67)
              {
                v71 = *v69;
                if (v70 >= 2)
                {
                  v70 -= v71[v70 - 1] == 47;
                }

                if (!strncmp(v71, v68, v70) && (v70 < 2 || !v68[v70] || v68[v70] == 47))
                {
                  break;
                }
              }

              v69 += 2;
              if (!--v66)
              {
LABEL_113:
                v46 = v110;
                v47 = a1;
                v45 = v113;
                goto LABEL_63;
              }
            }

            v47 = a1;
            v45 = v113;
            v46 = v110;
            if (!*(v113 + 112) || *v68 != 47)
            {
              if (*(v113 + 260))
              {
                v72 = __s1;
                memset(&v129, 0, sizeof(v129));
                if (HIDWORD(v103))
                {
                  v72 = *(a1 + 16);
                }

                v73 = *(v113 + 284);
                *&v120.st_dev = *v105;
                *&v120.st_uid = v73;
                v74 = sandbox_check_by_audit_token();
                if (lstat(v72, &v129) | v74)
                {
                  if (*__error() != 2)
                  {
LABEL_167:
                    v45 = v113;
                    goto LABEL_63;
                  }

                  memset(&v120, 0, sizeof(v120));
                  v75 = sub_100013194(v72);
                  v76 = access(v75, 4);
                  v114 = *v105;
                  v117 = *(v113 + 284);
                  v77 = sandbox_check_by_audit_token();
                  free(v75);
                  if (v76)
                  {
                    v78 = *v107;
                    if (v78 < 1)
                    {
                      goto LABEL_166;
                    }

                    v79 = 0;
                    v80 = *(v113 + 136);
                    v81 = 8 * v78;
                    while (!strstr(__s1, *(v80 + v79)))
                    {
                      v79 += 8;
                      if (v81 == v79)
                      {
                        goto LABEL_166;
                      }
                    }

                    v88 = *(v80 + v79);
                    if (!*(v113 + 112) || *v88)
                    {
                      if (!lstat(v88, &v120) && v120.st_uid == *(v113 + 260))
                      {
                        v89 = *(*(v113 + 136) + v79);
                        v115 = *v105;
                        v118 = *(v113 + 284);
                        goto LABEL_165;
                      }

                      goto LABEL_166;
                    }

                    if (lstat(".", &v120) || v120.st_uid != *(v113 + 260))
                    {
                      goto LABEL_166;
                    }

                    v116 = *v105;
                    v119 = *(v113 + 284);
LABEL_165:
                    if (sandbox_check_by_audit_token())
                    {
LABEL_166:
                      v47 = a1;
                      goto LABEL_167;
                    }
                  }

                  else if (v77)
                  {
                    goto LABEL_166;
                  }
                }

                v68 = __s2;
              }

              v82 = 0;
              v83 = 0;
              do
              {
                v84 = *(v108 + v82);
                if (!v84)
                {
                  break;
                }

                v85 = strlen(*(v108 + v82));
                if (*(v113 + 112))
                {
                  if (!strncmp(v68, v84, v85))
                  {
                    v83 = 1;
                  }
                }

                else if (!strncmp(__s1, v84, v85))
                {
                  goto LABEL_113;
                }

                v82 += 8;
                v46 = v110;
              }

              while (v82 != 64);
              v47 = a1;
              v45 = v113;
              if (!v83 && (v127 > v109 || (*(v113 + 192) & 0x4000) != 0))
              {
                if (!*(v113 + 216) || (*(v113 + 192) & 2) != 0)
                {
                  goto LABEL_179;
                }

                if (v127 > *(v113 + 168) || (*(v113 + 192) & 0x4000) != 0)
                {
                  *(v113 + 168) = v127;
                }

                if (!*(v113 + 112) && *v68 != 47)
                {
                  v86 = v111;
                  if (HIDWORD(v103))
                  {
                    v86 = 1;
                  }

                  v131 += v86;
                  v68 = __s1;
                  __s2 = __s1;
                }

                if (!((*(v113 + 192) >> 8) & 1 | v103 & 1) && v102)
                {
                  v87 = strrchr(v68, 47);
                  if (v87 > v68)
                  {
                    v87[1] = 0;
                    v131 = strlen(v68) + 1;
                  }

                  v128 &= 0xFE23F800;
                }

                v21 = sub_1000132DC(&v121, &v131, &__s2, &v128, a1, &v127, &v126, &v125);
                if (v21 && v21 != 268435460)
                {
                  goto LABEL_193;
                }
              }
            }
          }

          goto LABEL_63;
        }

        v62 = strtoull(v50 + 12, &__endptr, 10);
        v60 = *v47;
        LOBYTE(v103) = 1;
        v63 = &v130[v111];
        if (*v47 != v62)
        {
          v64 = ".activity/1/%lld";
          goto LABEL_99;
        }

LABEL_98:
        strlcpy(v63, v50, __size);
      }

      else
      {
        v59 = strtoull(v50 + 7, &__endptr, 10);
        if (!strncmp(v50, ".activity/1/", 0xCuLL))
        {
          v65 = strtoull(v50 + 12, &__endptr, 10);
          v60 = *v47;
          LOBYTE(v103) = 1;
          v61 = *v47 == v65;
        }

        else
        {
          LOBYTE(v103) = 0;
          v60 = *v47;
          v61 = *v47 == v59;
        }

        v63 = &v130[v111];
        if (v61)
        {
          v45 = v113;
          goto LABEL_98;
        }

        v64 = ".docid/%lld";
        v45 = v113;
LABEL_99:
        snprintf(v63, __size, v64, v60);
        if (__endptr)
        {
          strlcat(v63, __endptr, __size);
        }

        __s2 = v63;
        v131 = strlen(v63) + 1;
      }

      HIDWORD(v103) = 1;
      v58 = &v130[v111 - 1];
      goto LABEL_103;
    }
  }

  v94 = sub_100009620();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    v95 = a3[1].i32[0];
    v129.st_dev = 134218240;
    *&v129.st_mode = v53 - a3;
    WORD2(v129.st_ino) = 1024;
    *(&v129.st_ino + 6) = v95;
    _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "process_disk_event_buf: ptr out-of-bounds (%ld > max %d)", &v129, 0x12u);
  }

LABEL_192:
  v21 = 22;
LABEL_193:
  sub_100009FA4(&v121);
  *v46 = a3[1].i32[0];
  free(v28);
  return v21;
}

uint64_t sub_100009620()
{
  if (qword_100024238 != -1)
  {
    sub_100013868();
  }

  return qword_100024240;
}

uint64_t sub_10000967C(int a1, char *a2)
{
  result = sub_100006F34();
  if (result)
  {
    sub_1000021A0(&unk_100025758);
    v5 = sub_100009948(a1);
    if (v5)
    {
      v6 = v5;
      if ((*(v5 + 32) & 0x40) != 0)
      {
        v9 = sub_100009620();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = *v6;
          v12 = *(v6 + 32);
          v13 = *(qword_1000246E8 + 8);
          v17 = 67109888;
          v18 = v11;
          v19 = 1024;
          v20 = a1;
          v21 = 1024;
          v22 = v12;
          v23 = 1024;
          v24 = v13;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "DI_IGNORE_ME (di->dev  %d) (dev %d) (flags 0x%x) (num_devices %d)", &v17, 0x1Au);
        }

        strcpy(a2, "NO-UUID-VOLUME-IS-IGNORED");
      }

      else if (*v5 == a1)
      {
        v7 = strlen((v5 + 64));
        strncpy(a2, (v6 + 64), v7);
      }

      else
      {
        v10 = sub_100009620();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = *v6;
          v15 = *(v6 + 32);
          v16 = *(qword_1000246E8 + 8);
          v17 = 67109888;
          v18 = v14;
          v19 = 1024;
          v20 = a1;
          v21 = 1024;
          v22 = v15;
          v23 = 1024;
          v24 = v16;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NO-UUID-UNKNOWN-DEVICE (di->dev  %d) (dev %d) (flags 0x%x) (num_devices %d)", &v17, 0x1Au);
        }

        strcpy(a2, "NO-UUID-UNKNOWN-DEVICE");
      }
    }

    else
    {
      v8 = sub_100009620();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100018434();
      }

      strcpy(a2, "NO-UUID-NO-DEV-INFO");
    }

    return sub_1000024C8(&unk_100025758);
  }

  else
  {
    strcpy(a2, "NO-UUID-NO-DEV-INFO");
  }

  return result;
}

_DWORD *sub_1000098C4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100009658(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 72;
    }
  }

  return result;
}

uint64_t sub_100009948(int a1)
{
  v1 = qword_1000246E8;
  if (!qword_1000246E8)
  {
    return 0;
  }

  if (*(qword_1000246E8 + 8) < 1)
  {
    goto LABEL_15;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = -1;
  do
  {
    if ((*(*(*qword_1000246E8 + v2) + 32) & 0x4010) == 0)
    {
      v6 = *(*qword_1000246E8 + v2);
      if (*v6 == a1)
      {
        if (*(v6 + 216))
        {
          v7 = *qword_1000246E8 + v2;
          return *v7;
        }

        v5 = v3;
      }

      else if (*(v6 + 32))
      {
        v4 = *(*qword_1000246E8 + v2);
      }
    }

    ++v3;
    v2 += 8;
  }

  while (v3 < *(qword_1000246E8 + 8));
  if ((v5 & 0x80000000) == 0)
  {
    v7 = *qword_1000246E8 + 8 * v5;
    return *v7;
  }

  if (!v4)
  {
LABEL_15:
    v8 = sub_100009620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100014C60();
    }

    v7 = *v1;
    return *v7;
  }

  return v4;
}

uint64_t sub_100009A48(uint64_t a1, uint64_t a2, const char *a3, unint64_t a4)
{
  v45 = 0;
  if (qword_1000268D8 != -1)
  {
    sub_100017CEC();
  }

  memset(&v44, 0, sizeof(v44));
  dispatch_semaphore_wait(qword_1000268E0, 0xFFFFFFFFFFFFFFFFLL);
  v8 = open(a3, 0x20000000);
  v9 = v8;
  if (v8 < 0 || fstat(v8, &v44) || (v44.st_mode & 0xF000) != 0x8000)
  {
    if (a1 && (*(a1 + 32) & 0x1000) == 0 && (v19 = sub_100009620(), os_log_type_enabled(v19, OS_LOG_TYPE_ERROR)))
    {
      v22 = *__error();
      v23 = (v44.st_mode & 0xF000) == 0x8000;
      v24 = getuid();
      v25 = geteuid();
      v26 = getgid();
      v27 = getegid();
      *buf = 136316930;
      v47 = a3;
      v48 = 1024;
      *v49 = v9;
      *&v49[4] = 1024;
      *&v49[6] = v22;
      *v50 = 1024;
      *&v50[2] = v23;
      v51 = 1024;
      *v52 = v24;
      *&v52[4] = 1024;
      *&v52[6] = v25;
      v53 = 1024;
      v54 = v26;
      v55 = 1024;
      v56 = v27;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "read_disk_log: problems with history file: %s (fd %d, errno %d ; is_reg %d; uid %d/%d gid %d/%d)", buf, 0x36u);
      if (v9 < 0)
      {
        goto LABEL_22;
      }
    }

    else if (v9 < 0)
    {
LABEL_22:
      dispatch_semaphore_signal(qword_1000268E0);
      return 22;
    }

    close(v9);
    goto LABEL_22;
  }

  if (!v44.st_size)
  {
    close(v9);
LABEL_60:
    dispatch_semaphore_signal(qword_1000268E0);
    return 0;
  }

  v10 = gzdopen(v9, "r");
  if (v10)
  {
    v11 = v10;
    v12 = &off_100024000;
    ptr = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0x3B3FAC75uLL);
    if (!ptr)
    {
      gzclose(v11);
      dispatch_semaphore_signal(qword_1000268E0);
      return 12;
    }

    file = v11;
    v13 = *(a2 + 260);
    if (v13)
    {
      pthread_setugid_np(v13, *(a2 + 264));
      v14 = *(a2 + 352);
      if (v14)
      {
        if (initgroups(v14, *(a2 + 264)) < 0)
        {
          v15 = sub_100009620();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a2 + 352);
            v36 = *(a2 + 260);
            v37 = *(a2 + 264);
            v42 = *__error();
            v38 = __error();
            v39 = strerror(*v38);
            *buf = 136316162;
            v47 = v35;
            v12 = &off_100024000;
            v48 = 1024;
            *v49 = v36;
            *&v49[4] = 1024;
            *&v49[6] = v37;
            *v50 = 1024;
            *&v50[2] = v42;
            v51 = 2080;
            *v52 = v39;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "read_disk_log: initgroups failed for user %s uid %d gid %d (err: %d/%s)", buf, 0x28u);
          }
        }
      }
    }

    if ((*(a1 + 32) & 0x80) == 0 && (*(a1 + 32) & 4) != 0)
    {
      v41 = 0;
      v28 = 0;
      v29 = 0;
      v17 = 0;
      while (1)
      {
        if ((*(a2 + 192) & 2) != 0 || (0x40000 - v29 >= 0x10000 ? (v30 = 0x10000) : (v30 = 0x40000 - v29), v31 = gzread(file, ptr + v29, v30), v17 = v31, v31 < 1))
        {
LABEL_47:
          v18 = v28 == 0;
          goto LABEL_48;
        }

        *buf = 0;
        v41 += v31;
        if (!v29 && v31 <= 0xB)
        {
          break;
        }

        v29 += v31;
        if (!sub_100008898(a1, a2, ptr, v29, 1, a4, &v45, buf, 1))
        {
          v28 = 1;
        }

        if (v45 && *buf == 2)
        {
          v29 = 0x40000 - v45;
          __memmove_chk();
        }

        else if (v45)
        {
          v29 = 0;
        }

        if ((*(a1 + 32) & 0x80) != 0 || (*(a1 + 32) & 4) == 0)
        {
          goto LABEL_47;
        }
      }

      v34 = sub_100009620();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100017D00();
      }

      v18 = 1;
LABEL_48:
      v12 = &off_100024000;
      v16 = v41;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 1;
    }

    gzclose(file);
    malloc_zone_free(v12[215], ptr);
    if (v18 && (*(a1 + 32) & 0x80) == 0 && (*(a1 + 32) & 4) != 0 && (*(a2 + 192) & 2) == 0)
    {
      v32 = sub_100009620();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v47 = a3;
        v48 = 2048;
        *v49 = v16;
        *&v49[8] = 1024;
        *v50 = v17;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "read_disk_log: error processing log file %s (total_read %lld, size %d)", buf, 0x1Cu);
      }
    }

    if ((*(a1 + 32) & 0x80) == 0 && (*(a1 + 32) & 4) != 0)
    {
      v33 = *(a2 + 192);
    }

    if (*(a2 + 260))
    {
      pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
    }

    goto LABEL_60;
  }

  v21 = sub_100009620();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100017D7C();
  }

  close(v9);
  dispatch_semaphore_signal(qword_1000268E0);
  return *__error();
}

uint64_t sub_100009FA4(uint64_t a1)
{
  if (*(*a1 + 192))
  {
    v2 = sub_100009620();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001932C(a1);
    }

    sub_100010B68(*a1);
  }

  v3 = *(a1 + 1416);
  if (v3)
  {
    v4 = a1 + 1032;
    v5 = (*(*a1 + 216))(*(*a1 + 224), v3, a1 + 8, a1 + 1032, a1 + 264, a1 + 1288, a1 + 392, a1 + 648, a1 + 904);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      if (v5 == 268435459)
      {
        *(v7 + 192) |= 2uLL;
      }

      if ((*(v7 + 192) & 2) == 0)
      {
        *(v7 + 192) |= 1uLL;
        v8 = sub_100009620();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 1416);
          v12 = *(*a1 + 256);
          *buf = 136315906;
          v14 = "client_buffer_flush";
          v15 = 1024;
          v16 = v11;
          v17 = 1024;
          v18 = v12;
          v19 = 1024;
          v20 = v6;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: failed to send %u events to client pid: %d (status: %d)", buf, 0x1Eu);
        }
      }
    }

    if (*(a1 + 1416))
    {
      v9 = 0;
      do
      {
        free(*(v4 + 8 * v9));
        *(v4 + 8 * v9++) = 0;
      }

      while (v9 < *(a1 + 1416));
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 1416) = 0;
  return v6;
}

uint64_t sub_10000A160(uint64_t a1, uint64_t a2)
{
  v44 = 0;
  v3 = (a1 + 32);
  if ((*(a1 + 32) & 0x50) != 0)
  {
    v4 = sub_100009620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017BC4(a1);
    }
  }

  else if ((*v3 & 0x90) == 0 && (*v3 & 4) != 0)
  {
    v6 = *(a2 + 112);
    if (!v6 || v6 == *a1)
    {
      v7 = *(a1 + 216);
      if (v7 && *(v7 + 16))
      {
        v8 = 0;
        v9 = *(a2 + 240);
        v41 = (v7 + 256);
LABEL_11:
        pthread_rwlock_rdlock((v7 + 48));
        v10 = *(v7 + 32);
        if (v10 < 1)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          v11 = 0;
          v12 = *(v7 + 32);
          do
          {
            LODWORD(v13) = (v11 + v12) >> 1;
            v14 = *(*(v7 + 40) + 8 * v13);
            if (v14 <= v9)
            {
              if (v14 >= v9)
              {
                goto LABEL_22;
              }

              v11 = v13 + 1;
            }

            else
            {
              v12 = (v11 + v12) >> 1;
            }
          }

          while (v11 < v12);
          if (v11 <= 0)
          {
            LODWORD(v13) = 0;
          }

          else
          {
            LODWORD(v13) = v11 - 1;
          }
        }

LABEL_22:
        v42 = *(v7 + 250);
        v43 = *(v7 + 248);
        while (1)
        {
          v15 = v10;
          pthread_rwlock_unlock((v7 + 48));
          v40 = v15;
          if (v13 < v15 - 1)
          {
            v16 = 0;
            v13 = v13;
            v39 = v15 - 1;
            v17 = v15 - 1;
            while ((*(a2 + 192) & 0x1ALL) == 0)
            {
              if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0)
              {
                return 0;
              }

              pthread_rwlock_rdlock((v7 + 48));
              if (v43 != *(v7 + 248) || v42 != *(v7 + 250))
              {
                pthread_rwlock_unlock((v7 + 48));
                *(a2 + 192) |= 1uLL;
                if (v16)
                {
                  v9 = v16;
                }

                goto LABEL_11;
              }

              snprintf(__str, 0x400uLL, "%s/%.16llx", v41, *(*(v7 + 40) + 8 * v13));
              v16 = *(*(v7 + 40) + 8 * v13 + 8);
              pthread_rwlock_unlock((v7 + 48));
              if (sub_100009A48(a1, a2, __str, *(a2 + 240)))
              {
                memset(&v45, 0, 512);
                if (statfs(*(a1 + 8), &v45) || v45.f_fsid.val[0] != *a1)
                {
                  v23 = sub_100009620();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    sub_100017C40((a1 + 8));
                  }

                  return 0;
                }
              }

              if (v17 == ++v13)
              {
                LODWORD(v13) = v39;
                break;
              }
            }
          }

          sub_1000033CC(*(v7 + 16));
          if (v8 <= 100)
          {
            v18 = 100;
          }

          else
          {
            v18 = v8;
          }

          v19 = v18 + 1;
          while (1)
          {
            usleep(0x3E8u);
            if ((*v3 & 0x90) != 0)
            {
              break;
            }

            if ((*v3 & 4) == 0)
            {
              break;
            }

            v20 = *(v7 + 16);
            if (!v20 || *(v20 + 248) == *(v20 + 252))
            {
              break;
            }

            if (v19 == ++v8)
            {
              v8 = v19;
              break;
            }
          }

          if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0)
          {
            return 0;
          }

          pthread_rwlock_rdlock((v7 + 48));
          if (v40 > *(*(a1 + 216) + 32) || v43 != *(v7 + 248) || v42 != *(v7 + 250))
          {
            break;
          }

          v10 = *(v7 + 32);
          if (v40 >= v10)
          {
            if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0 || !*(v7 + 16))
            {
              pthread_rwlock_unlock((v7 + 48));
              return 0;
            }

            if (v40 >= 1)
            {
              v32 = *(v7 + 40);
              if (v32)
              {
                snprintf(__str, 0x400uLL, "%s/%.16llx", v41, *(v32 + 8 * v40 - 8));
                sub_100009A48(a1, a2, __str, *(a2 + 240));
              }
            }

            goto LABEL_60;
          }
        }

        *(a2 + 192) |= 1uLL;
LABEL_60:
        v24 = sub_10000AA3C(a1, v7, &v44 + 1);
        if ((*(a1 + 32) & 0x90) == 0 && (*v3 & 4) != 0 && *(v7 + 16))
        {
          pthread_rwlock_unlock((v7 + 48));
          v25 = HIDWORD(v44);
          if (HIDWORD(v44))
          {
            v24[1].i32[0] = HIDWORD(v44);
            v26 = *(a2 + 260);
            if (v26)
            {
              pthread_setugid_np(v26, *(a2 + 264));
              v27 = *(a2 + 352);
              if (v27)
              {
                if (initgroups(v27, *(a2 + 264)) < 0)
                {
                  v28 = sub_100009620();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v33 = *(a2 + 352);
                    v34 = *(a2 + 260);
                    v35 = *(a2 + 264);
                    v36 = *__error();
                    v37 = __error();
                    v38 = strerror(*v37);
                    v45.f_bsize = 136316162;
                    *&v45.f_iosize = v33;
                    WORD2(v45.f_blocks) = 1024;
                    *(&v45.f_blocks + 6) = v34;
                    WORD1(v45.f_bfree) = 1024;
                    HIDWORD(v45.f_bfree) = v35;
                    LOWORD(v45.f_bavail) = 1024;
                    *(&v45.f_bavail + 2) = v36;
                    HIWORD(v45.f_bavail) = 2080;
                    v45.f_files = v38;
                    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "scan_for_old_events: initgroups failed for user %s uid %d gid %d (err: %d/%s)", &v45, 0x28u);
                  }
                }
              }
            }

            if (sub_100008898(a1, a2, v24, v25, 0, *(a2 + 240), &v44, 0, 0))
            {
              v29 = sub_100009620();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_100017CB0();
              }
            }
          }

          if (*(a2 + 260))
          {
            pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
          }
        }

        else
        {
          pthread_rwlock_unlock((v7 + 48));
        }

        free(v24);
        return 0;
      }

      v21 = sub_100009620();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 8);
        if (v7)
        {
          v31 = *(v7 + 16);
        }

        else
        {
          v31 = 0;
        }

        v45.f_bsize = 136315650;
        *&v45.f_iosize = v30;
        WORD2(v45.f_blocks) = 2048;
        *(&v45.f_blocks + 6) = v7;
        HIWORD(v45.f_bfree) = 2048;
        v45.f_bavail = v31;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "scan_old: bailing out because device mounted @ %s has dls %p and dls->fci %p", &v45, 0x20u);
      }
    }
  }

  return 0;
}

uint64_t sub_10000A794(uint64_t (*a1)(void))
{
  sub_1000021A0(&unk_100025758);
  if (qword_1000246E8)
  {
    v2 = *(qword_1000246E8 + 8);
    v3 = malloc_type_calloc(*(qword_1000246E8 + 8), 8uLL, 0x2004093837F09uLL);
    if (v3)
    {
      v4 = v3;
      memcpy(v3, *qword_1000246E8, 8 * *(qword_1000246E8 + 8));
      v5 = *(qword_1000246E8 + 8);
      if (v5 <= 0)
      {
        sub_1000024C8(&unk_100025758);
        v14 = 0;
      }

      else
      {
        v6 = (v5 - 1);
        v7 = v6 + 1;
        v8 = &v4[8 * v6];
        do
        {
          if ((*(*v8 + 32) & 0x50) != 0)
          {
            *v8 = 0;
          }

          else
          {
            atomic_fetch_add_explicit((*v8 + 36), 1u, memory_order_relaxed);
          }

          v8 -= 8;
          v9 = v7-- <= 1;
        }

        while (!v9);
        sub_1000024C8(&unk_100025758);
        v10 = v6 + 1;
        v11 = &v4[8 * v6];
        v12 = v11;
        while (1)
        {
          if (*v12)
          {
            if ((*(*v12 + 32) & 0x50) == 0)
            {
              v13 = a1();
              if (v13)
              {
                break;
              }
            }
          }

          v12 -= 8;
          v9 = v10-- <= 1;
          if (v9)
          {
            v14 = 0;
            goto LABEL_17;
          }
        }

        v14 = v13;
LABEL_17:
        v15 = v6 + 1;
        do
        {
          if (*v11)
          {
            atomic_fetch_add_explicit((*v11 + 36), 0xFFFFFFFF, memory_order_relaxed);
          }

          v11 -= 8;
          v9 = v15-- <= 1;
        }

        while (!v9);
      }

      free(v4);
    }

    else
    {
      v16 = sub_100009620();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100014BE0();
      }

      sub_1000024C8(&unk_100025758);
      return 12;
    }
  }

  else
  {
    sub_1000024C8(&unk_100025758);
    return 0;
  }

  return v14;
}

uint64_t sub_10000A960(void *a1)
{
  result = sub_100006F34();
  if (result)
  {
    *a1 = qword_1000246D0[dword_1000246E0];
  }

  return result;
}

_DWORD *sub_10000A9C0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000A9A0(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_10000AA3C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *(a2 + 2524);
  if (!v4)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v6 = *(a2 + 2528) + 24 * v4;
  v7 = v6 + 4096;
  if (v6 + 4096 < 0)
  {
    v11 = sub_100009620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a2 + 2528);
      v14 = *(a2 + 2524);
      *buf = 134218496;
      v18 = v7;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "in mem disk log size is bad: 0x%zx (string size: %zu num items %d)\n", buf, 0x1Cu);
    }

    v4 = 0;
    goto LABEL_8;
  }

  v9 = malloc_type_malloc(v6 + 4096, 0x33E2731BuLL);
  v10 = v9;
  if (v9)
  {
    v15[0] = 0;
    v15[1] = a2;
    v15[2] = v9;
    v15[3] = v7;
    LODWORD(v16) = 12;
    *v9 = 1145852723;
    v9[2] = 12;
    sub_100007DA8(a1, (a2 + 2304), sub_10000ABB0, v15);
    v4 = v16;
    v10[2] = v16;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  *a3 = v4;
  return v10;
}

uint64_t sub_10000ABB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = strlen(v4);
  v6 = *(a2 + 32);
  if (v5 + v6 + 25 >= *(a2 + 24))
  {
    return 28;
  }

  v7 = v5 + 1;
  memcpy((*(a2 + 16) + v6), v4, v5 + 1);
  result = 0;
  v9 = *(a2 + 32) + v7;
  *(a2 + 32) = v9;
  *(*(a2 + 16) + v9) = *(a1 + 16);
  v10 = *(a2 + 32) + 8;
  *(a2 + 32) = v10;
  *(*(a2 + 16) + v10) = *(a1 + 36);
  v11 = *(a2 + 32) + 4;
  *(a2 + 32) = v11;
  *(*(a2 + 16) + v11) = *(a1 + 24);
  v12 = *(a2 + 32) + 8;
  *(a2 + 32) = v12;
  *(*(a2 + 16) + v12) = *(a1 + 32);
  *(a2 + 32) += 4;
  return result;
}

void sub_10000AC90(uint64_t a1)
{
  dispatch_source_get_handle(*(a1 + 32));
  if (dispatch_mig_server())
  {
    v1 = sub_100009620();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000138FC();
    }
  }
}

uint64_t sub_10000AD10(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  if (a1->msgh_id == 70)
  {
    v4 = a1 + ((a1->msgh_size + 3) & 0x1FFFFFFFCLL);
    pidp = 0;
    mig_reply_setup(a1, a2);
    a2[1].msgh_remote_port = -305;
    if (!*v4 && *(v4 + 1) >= 0x34u)
    {
      v5 = *(v4 + 36);
      *atoken.val = *(v4 + 20);
      *&atoken.val[4] = v5;
      audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
      if (!pidp)
      {
        v6 = sub_10000AF74(a1->msgh_local_port);
        if (v6)
        {
          v7 = v6;
          sub_10000AF9C(v6);
          sub_10000B078(v7);
        }
      }
    }

    return 1;
  }

  else
  {

    return sub_10000AE80(a1, a2);
  }
}

uint64_t sub_10000AE14(int a1)
{
  v1 = sub_10000AF74(a1);
  if (v1)
  {
    v2 = v1;
    nullsub_1();
    sub_10000AF9C(v2);
    sub_10000B078(v2);
  }

  else
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000140F8();
    }
  }

  return 0;
}

uint64_t sub_10000AE80(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 66007) >= 0xFFFFFFF9 && (v5 = *(&off_100020988 + 5 * (v4 - 66000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_10000AF1C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = sub_10000AE14(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000AF74(int a1)
{
  for (result = qword_100024260; result; result = *(result + 192))
  {
    if (*(result + 4) == a1)
    {
      break;
    }
  }

  return result;
}

void sub_10000AF9C(uint64_t a1)
{
  if (sub_100006F34())
  {
    pthread_mutex_lock(&stru_100024140);
    v2 = 0;
    while (1)
    {
      v3 = *(&xmmword_100024758 + v2);
      if (v3)
      {
        if (*(v3 + 224) == a1)
        {
          break;
        }
      }

      v2 += 8;
      if (v2 == 4096)
      {
        pthread_mutex_unlock(&stru_100024140);
        v4 = sub_100009620();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100018B38(a1);
        }

        return;
      }
    }

    pthread_mutex_lock(*(&xmmword_100024758 + v2));
    *(v3 + 192) |= 2uLL;
    pthread_mutex_unlock(v3);
    sub_1000033CC(v3);

    pthread_mutex_unlock(&stru_100024140);
  }
}

void sub_10000B078(uint64_t a1)
{
  sub_10000B0B0(a1);

  sub_10000B154(a1);
}

void sub_10000B0B0(uint64_t a1)
{
  v1 = qword_100024260;
  if (qword_100024260 == a1)
  {
    qword_100024260 = *(a1 + 192);
    --dword_100024268;
  }

  else
  {
    if (!qword_100024260)
    {
      goto LABEL_10;
    }

    do
    {
      v2 = v1;
      v1 = *(v1 + 192);
    }

    while (v1 != a1 && v1 != 0);
    if (v1)
    {
      *(v2 + 192) = *(v1 + 192);
      --dword_100024268;
    }

    else
    {
LABEL_10:
      v4 = sub_100009620();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100014534(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }
}

void sub_10000B154(uint64_t a1)
{
  v2 = (a1 + 148);
  add_explicit = atomic_fetch_add_explicit((a1 + 148), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 0)
  {
    v8 = sub_100009620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100014498(a1, v2, v8);
    }
  }

  else if (add_explicit == 1)
  {
    *(a1 + 20) = 0;
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    for (i = 48; i != 112; i += 8)
    {
      free(*(a1 + i));
      *(a1 + i) = 0;
    }

    if (*a1)
    {
      v5 = mach_port_deallocate(mach_task_self_, *a1);
      if (v5)
      {
        v6 = v5;
        v7 = sub_100009620();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000143F8(a1, v6);
        }
      }
    }

    *a1 = 0;
    dispatch_source_cancel(*(a1 + 8));
  }
}

uint64_t sub_10000B250(uint64_t a1)
{
  if (qword_100024708)
  {
    v2 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
    if (v2)
    {
      v3 = v2;
      *v2 = *qword_100024708;
      v4 = malloc_type_malloc(8 * v2[3], 0x2004093837F09uLL);
      if (v4)
      {
        v5 = v4;
        pthread_mutex_lock(&stru_100024180);
        memcpy(v5, *v3, 8 * *(v3 + 12));
        *v3 = v5;
        if (*(a1 + 128) >= 1)
        {
          v6 = 0;
          v7 = 0;
          while (1)
          {
            v8 = *(v3 + 8);
            if (v8 < 1)
            {
              LODWORD(v9) = 0;
              goto LABEL_31;
            }

            v9 = 0;
            v10 = *(a1 + 112);
            v11 = *v3;
            while (1)
            {
              v12 = v11[v9];
              if ((!v10 || v10 == *(v12 + 8)) && !strcmp(*(*(a1 + 136) + 8 * v6), *v12))
              {
                v13 = *(v12 + 24);
                if (v13)
                {
                  break;
                }
              }

LABEL_16:
              if (++v9 == v8)
              {
                LODWORD(v9) = v8;
                goto LABEL_31;
              }
            }

            v14 = 0;
            while (1)
            {
              v15 = v13;
              if (*v13 == a1 && v13 == (*(a1 + 208) + 16 * v6))
              {
                break;
              }

              v13 = v13[1];
              v14 = v15;
              if (!v13)
              {
                goto LABEL_16;
              }
            }

            v16 = v13[1];
            if (v14)
            {
              v14[1] = v16;
            }

            else
            {
              *(v12 + 24) = v16;
              v11 = *v3;
            }

            v15[1] = 0;
            v17 = &v11[v9];
            v18 = *v17;
            v19 = *(*v17 + 24);
            v20 = *(*v17 + 16) - 1;
            *(*v17 + 16) = v20;
            if (v20)
            {
              break;
            }

            if (v19)
            {
              v25 = sub_100009620();
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_31;
              }

              v26 = *(*v3 + 8 * v9);
              *buf = 67109376;
              LODWORD(v34[0]) = v9;
              WORD2(v34[0]) = 2048;
              *(v34 + 6) = v26;
              v23 = v25;
              v24 = "remove_paths: prefix_table inconsistent.  refcount == 0 but client_list is non-NULL! prefix_table[%d] = %p";
              goto LABEL_29;
            }

            *(v18 + 8) = -1;
            memmove(v17, v17 + 8, 8 * (*(v3 + 8) + ~v9));
            --*(v3 + 8);
            LODWORD(v9) = v9 - 1;
            *(v18 + 24) = v7;
            v7 = v18;
LABEL_31:
            if (v9 >= *(v3 + 8))
            {
              v27 = sub_100009620();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = *(*(a1 + 136) + 8 * v6);
                *buf = 136315138;
                v34[0] = v28;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "remove_paths: did not find prefix header for path %s", buf, 0xCu);
              }
            }

            if (++v6 >= *(a1 + 128))
            {
              goto LABEL_39;
            }
          }

          if (v19)
          {
            goto LABEL_31;
          }

          v21 = sub_100009620();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v22 = *(*v3 + 8 * v9);
          *buf = 67109376;
          LODWORD(v34[0]) = v9;
          WORD2(v34[0]) = 2048;
          *(v34 + 6) = v22;
          v23 = v21;
          v24 = "remove_paths: prefix_table inconsistent.  refcount > 0 but client_list is NULL! prefix_table[%d] = %p";
LABEL_29:
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
          goto LABEL_31;
        }

        v7 = 0;
LABEL_39:
        pthread_mutex_unlock(&stru_100024180);
        v30 = qword_100024708;
        qword_100024708 = v3;
        __dmb(0xBu);
        do
        {
          if (!atomic_fetch_add_explicit(&dword_100024718, 0, memory_order_relaxed))
          {
            break;
          }

          usleep(0x2710u);
        }

        while (qword_100024710 == v30);
        if (v30)
        {
          free(*v30);
          free(v30);
        }

        if (v7)
        {
          do
          {
            v31 = *(v7 + 24);
            free(*v7);
            *&v32 = 0xD9D9D9D9D9D9D9D9;
            *(&v32 + 1) = 0xD9D9D9D9D9D9D9D9;
            *v7 = v32;
            *(v7 + 16) = v32;
            free(v7);
            v7 = v31;
          }

          while (v31);
        }

        return 0;
      }

      free(v3);
    }

    return 12;
  }

  return 0;
}

uint64_t sub_10000B630(unint64_t a1)
{
  v1 = *(a1 + 256);
  v2 = &dword_1000258DC;
  v3 = 512;
  do
  {
    if (v1 == *(v2 - 1) && (*v2)-- <= 1)
    {
      *(v2 - 1) = 0;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  v5 = vdupq_n_s64(a1);
  v6 = &xmmword_100024758;
  v7 = 512;
  do
  {
    v8 = vmovn_s64(vceqq_s64(*v6, v5));
    if (v8.i8[0])
    {
      v6->i64[0] = 0;
    }

    if (v8.i8[4])
    {
      v6->i64[1] = 0;
    }

    ++v6;
    v7 -= 2;
  }

  while (v7);
  return 0;
}

void sub_10000B6B4(uint64_t a1)
{
  v1 = (a1 + 32);
  dispatch_release(*(*(a1 + 32) + 8));
  *(*v1 + 1) = 0;
  v2 = mach_port_mod_refs(mach_task_self_, *(*v1 + 1), 1u, -1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100009620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100014354(v1, v3);
    }
  }

  free(*v1);
}

uint64_t sub_10000B748(uint64_t a1)
{
  v2 = *(a1 + 112);
  sub_10000A794(sub_10000B7BC);
  return 2;
}

uint64_t sub_10000B7BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 8))
  {
    return 0;
  }

  *a2 = strdup(*(a1 + 8));
  return 1;
}

void start(int a1, uint64_t a2)
{
  v2 = 3;
  if (a1 == 2)
  {
    if (!strcmp("-d", *(a2 + 8)))
    {
      v2 = 35;
    }

    else
    {
      v2 = 3;
    }
  }

  v3 = getprogname();
  openlog(v3, v2, 24);
  v4 = bootstrap_check_in(bootstrap_port, "com.apple.FSEvents", &dword_100024250);
  if (v4)
  {
    v11 = v4;
    v12 = sub_100009620();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    v15 = "main";
    v16 = 2080;
    v17 = bootstrap_strerror(v11);
    v18 = 1024;
    v19 = v11;
    v8 = "%s: ERROR: bootstrap_check_in() => %s (%d)";
    v9 = v12;
    v10 = 28;
  }

  else
  {
    qword_100024248 = dispatch_queue_create("com.apple.fseventsd.mach_channel_queue", 0);
    qword_100024258 = dispatch_mach_create_f();
    dispatch_set_qos_class_fallback();
    dispatch_mach_connect();
    v13 = 0;
    v5 = pthread_create(&v13, 0, sub_100012130, 0);
    if (!v5)
    {
      dispatch_main();
    }

    v6 = v5;
    v7 = sub_100009620();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      closelog();
      exit(1);
    }

    *buf = 136315394;
    v15 = "main";
    v16 = 1024;
    LODWORD(v17) = v6;
    v8 = "%s: ERROR: pthread_create() => %d";
    v9 = v7;
    v10 = 18;
  }

  _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
  goto LABEL_12;
}

uint64_t sub_10000BA18(int a1, void *a2)
{
  v3 = sub_10000AF74(a1);
  if (v3)
  {
    v4 = v3;
    nullsub_1();
    sub_100012174(v4, a2);
  }

  else
  {
    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001407C();
    }
  }

  return 0;
}

uint64_t sub_10000BAB4(uint64_t a1, int a2, unint64_t a3, int *a4, int a5)
{
  if (a5)
  {
    v6 = 5;
    v7 = 13;
  }

  else
  {
    v7 = sub_100010EA0(a2, a3);
    v6 = 0;
  }

  *a4 = v7;
  return v6;
}

void sub_10000BB78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10000BBBC(uint64_t a1)
{
  v2 = pthread_rwlock_init((a1 + 8), 0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100009620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000147DC(v3);
    }
  }

  else
  {
    v3 = pthread_key_create(a1, &_free);
    if (v3)
    {
      v5 = sub_100009620();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100014868(v3);
      }
    }
  }

  return v3;
}

uint64_t sub_10000BC5C(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *v2;
    if (*v2 >= 1)
    {
      sub_100014B2C();
    }

    --*v2;
    if (v4 < 0)
    {
      return 0;
    }

    v5 = pthread_rwlock_wrlock((a1 + 8));
    if (v5)
    {
      v6 = sub_100009620();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100014A90(v5, v3);
      }
    }

    return v5;
  }

  else
  {

    return pthread_rwlock_wrlock((a1 + 8));
  }
}

uint64_t sub_10000BD0C(int a1, uint64_t a2, int a3, int a4)
{
  if (a1)
  {
    v7 = open("/dev/fsevents", 0);
    v8 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v8;
    }

    v15 = a3;
    v16 = a4;
    v17 = &dword_100024048;
    v14 = a2;
    v9 = ioctl(v7, 0x80187301uLL, &v14);
    if ((v9 & 0x80000000) != 0)
    {
      v12 = v9;
      v13 = sub_100009620();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100014B58();
      }

      close(v8);
      return v12;
    }

    close(v8);
    return 0;
  }

  v10 = dword_100024048;
  if (dword_100024048 < 0)
  {
    return 0;
  }

  dword_100024048 = -1;

  return close(v10);
}

uint64_t sub_10000BE0C(void (*a1)(void))
{
  sub_1000021A0(&unk_100025758);
  v2 = qword_1000246E8;
  if (qword_1000246E8 && *(qword_1000246E8 + 8) >= 1)
  {
    v3 = 0;
    do
    {
      if (*(*v2 + 8 * v3) && (*(*(*v2 + 8 * v3) + 32) & 0x20) != 0)
      {
        a1(*(*v2 + 8 * v3));
      }

      ++v3;
    }

    while (v3 < *(v2 + 8));
  }

  return sub_1000024C8(&unk_100025758);
}

void sub_10000BEAC(const char *a1, char *a2)
{
  v5 = xmmword_10001B110;
  v6 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (a1 && a2)
  {
    if (getattrlist(a1, &v5, v7, 0x14uLL, 0))
    {
      v3 = sub_100009620();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100014C9C();
      }
    }

    else
    {
      uuid_unparse(v7 + 4, a2);
    }
  }

  else
  {
    v4 = sub_100009620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100014D40();
    }
  }
}

uint64_t sub_10000BF8C(uint32_t *a1)
{
  v1 = *a1;
  v8 = *a1;
  if ((a1[8] & 0x400) != 0)
  {
    v10 = 0;
    if (dword_1000246C8)
    {
LABEL_23:
      v11.f_bsize = v1;
      ioctl(dword_100024048, 0x80047368uLL, &v11);
      return 0;
    }

    memset(&v11, 0, 512);
    if (qword_100024748)
    {
      v2 = *(qword_100024748 + 16);
      if (v2)
      {
        sub_1000033CC(v2);
      }
    }

    v9 = 0;
    sub_1000021A0(&unk_100025758);
    if (sub_10001232C(&v8, &v10))
    {
LABEL_22:
      sub_1000024C8(&unk_100025758);
      goto LABEL_23;
    }

    v3 = v10;
    if (v10)
    {
      if (statfs(*(v10 + 8), &v11))
      {
        v4 = sub_100009620();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100014DC0((v3 + 8));
        }
      }

      else
      {
        if (sub_10000C854(&v11, &v9))
        {
          goto LABEL_17;
        }

        if (v9 == 2)
        {
          v5 = *(v3 + 32) | 0x9040;
        }

        else
        {
          if (v9 != 1)
          {
            goto LABEL_17;
          }

          v5 = *(v3 + 32) | 0x1000;
        }

        *(v3 + 32) = v5;
      }
    }

LABEL_17:
    if ((*(v3 + 32) & 1) == 0)
    {
      *(v3 + 32) &= ~4u;
      *(v3 + 32) |= 0x80u;
      *(v3 + 32) &= ~0x400u;
      atomic_fetch_add_explicit((v3 + 36), 1u, memory_order_relaxed);
      sub_1000024C8(&unk_100025758);
      if (qword_100024748)
      {
        v6 = *(qword_100024748 + 16);
        if (v6)
        {
          sub_1000033CC(v6);
        }
      }

      sub_10000D738(*v3, 1);
      usleep(0xC350u);
      atomic_fetch_add_explicit((v3 + 36), 0xFFFFFFFF, memory_order_relaxed);
      sub_100010890(v3);
      *(v3 + 40) = time(0);
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_10000C1C4()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  qword_1000246B8 = zone;
  if (zone)
  {
    malloc_set_zone_name(zone, "DiskLoggerBufferZone");
  }

  v38 = 0;
  v1 = sub_10000C670(&v38);
  if (v1 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  sub_10000BBBC(&unk_100025758);
  v3 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (!v3)
  {
    free(v38);
    return 12;
  }

  v4 = v3;
  v5 = malloc_type_calloc(v2, 8uLL, 0x2004093837F09uLL);
  if (!v5)
  {
    free(v4);
    v30 = v38;
    goto LABEL_41;
  }

  v6 = v5;
  v36 = v4;
  v7 = 0;
  while (1)
  {
    v37 = 0;
    v8 = malloc_type_calloc(0xE0uLL, 1uLL, 0x1030040A2EC980AuLL);
    v6[v7] = v8;
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v10 = v38;
    v11 = v38 + 2168 * v7;
    v13 = *(v11 + 12);
    v12 = v11 + 48;
    *v8 = v13;
    v14 = strdup(v12 + 40);
    *(v9 + 1) = v14;
    if (sub_10000C724(v12 + 40, __s1))
    {
      *(v6[v7] + 16) = strdup(__s1);
      v14 = *(v6[v7] + 16);
    }

    else
    {
      v15 = sub_100009620();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v25 = *v6[v7];
        *buf = 136315650;
        v40 = "init_dev_info";
        v41 = 2080;
        v42 = v12 + 40;
        v43 = 1024;
        v44 = v25;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Could not resolve nofirmlink  path, fallback to mount_point[%s] dev[%d]\n", buf, 0x1Cu);
      }

      *(v6[v7] + 16) = strdup(v12 + 40);
    }

    v16 = v14;
    do
    {
      while (1)
      {
        v18 = *v16++;
        v17 = v18;
        if (v18 != 47)
        {
          break;
        }

        ++*(v6[v7] + 24);
      }
    }

    while (v17);
    v19 = v6[v7];
    if (v14[1])
    {
      ++v19[6];
    }

    v20 = v10[542 * v7 + 16];
    v19[7] = v20;
    v19[8] = 4;
    if ((v20 & 0x4000) != 0)
    {
      v19[8] |= 1u;
      dword_1000246F0 = *v12;
    }

    v37 = 0;
    if (sub_10000C854(&v10[542 * v7], &v37))
    {
      v21 = 256;
    }

    else
    {
      v21 = 64;
    }

    *(v6[v7] + 32) |= v21;
    if (v37 == 2)
    {
      v24 = sub_100009620();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = v6[v7];
        v29 = *(v28 + 8);
        LODWORD(v28) = *v28;
        *buf = 136315650;
        v40 = "init_dev_info";
        v41 = 2080;
        v42 = v29;
        v43 = 1024;
        v44 = v28;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: mount_point(%s) dev(%d) will be completely ignored", buf, 0x1Cu);
      }

      v23 = 32832;
      goto LABEL_33;
    }

    if (v37 == 1)
    {
      v22 = sub_100009620();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = v6[v7];
        v27 = *(v26 + 8);
        LODWORD(v26) = *v26;
        *buf = 136315650;
        v40 = "init_dev_info";
        v41 = 2080;
        v42 = v27;
        v43 = 1024;
        v44 = v26;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Logging disabled (no_log) completely for device: mount_point(%s) dev(%d)", buf, 0x1Cu);
      }

      v23 = 4096;
LABEL_33:
      *(v6[v7] + 32) |= v23;
    }

    if (++v7 == v2)
    {
      v34 = v36;
      *v36 = v6;
      v36[2] = v2;
      __dmb(0xBu);
      qword_1000246E8 = v34;
      sub_10000A794(sub_10000CA34);
      pthread_create(&qword_100024280, 0, sub_10000D5B0, 0);
      free(v38);
      return 0;
    }
  }

  v31 = sub_100009620();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  v33 = v38;
  if (v32)
  {
    sub_100014E40();
  }

  free(v6);
  free(v36);
  v30 = v33;
LABEL_41:
  free(v30);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000C670(void *a1)
{
  v2 = 1000;
  while (1)
  {
    v3 = getfsstat(0, 0, 2);
    if (v3 < 0)
    {
      return 0;
    }

    v4 = 2168 * v3 + 2168;
    result = malloc_type_malloc(v4, 0x100004087E0324AuLL);
    if (!result)
    {
      return result;
    }

    v6 = result;
    result = getfsstat(result, v4, 2);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    free(v6);
    if (!--v2)
    {
      v6 = 0;
      result = 0xFFFFFFFFLL;
LABEL_7:
      *a1 = v6;
      return result;
    }
  }
}

char *sub_10000C724(const char *a1, char *a2)
{
  v5 = xmmword_10001B128;
  memset(v8, 0, 512);
  v6 = 0;
  v7 = 32;
  DWORD1(v5) = 0x80000000;
  if (getattrlist(a1, &v5, v8, 0x420uLL, 0x20u) == -1)
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100014EC0();
    }

    return 0;
  }

  else if (a2)
  {
    strlcpy(a2, &v8[1] + SDWORD2(v8[1]) + 8, 0x400uLL);
  }

  else
  {
    return &v8[1] + SDWORD2(v8[1]) + 8;
  }

  return a2;
}

uint64_t sub_10000C854(uint64_t a1, int *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if ((*(a1 + 65) & 0x40) != 0)
  {
    return 1;
  }

  memset(&v8, 0, sizeof(v8));
  snprintf(__str, 0x400uLL, "%s/.fseventsd/no_log", (a1 + 88));
  if ((*(a1 + 65) & 0x10) != 0 && !lstat(__str, &v8))
  {
    if (!a2)
    {
      return 0;
    }

    result = 0;
    v6 = 1;
    goto LABEL_19;
  }

  snprintf(__str, 0x400uLL, "%s/.fseventsd/ignore", (a1 + 88));
  v4 = *(a1 + 64);
  if ((v4 & 0x1000) == 0)
  {
    goto LABEL_9;
  }

  if (!lstat(__str, &v8))
  {
    if (!a2)
    {
      return 0;
    }

    result = 0;
    v6 = 2;
LABEL_19:
    *a2 = v6;
    return result;
  }

  v4 = *(a1 + 64);
LABEL_9:
  if ((v4 & 0x21) != 0)
  {
    return 0;
  }

  if (strcmp((a1 + 72), "apfs"))
  {
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v7 = strstr((a1 + 88), "/Users/");
    result = 0;
    if ((v4 & 0x1000) == 0 || !v7)
    {
      return result;
    }

    goto LABEL_25;
  }

  v9 = 0;
  if (!APFSVolumeRole() && v9 == 576)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if ((v4 & 0x100000) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v4 & 0x1000) == 0)
  {
    return 0;
  }

LABEL_25:
  result = strcmp((a1 + 88), "/dev");
  if (result)
  {
    result = strcmp((a1 + 72), "acfs");
    if (result)
    {
      return (v4 & 0x200) == 0 && strcmp((a1 + 88), "/private/var/wireless/baseband_data");
    }
  }

  return result;
}

uint64_t sub_10000CA34()
{
  v0 = __chkstk_darwin();
  v1 = v0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  memset(&v57, 0, 512);
  v2 = *(v0 + 216);
  if (v2 && v2 != qword_100024748)
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100014F64(v1);
    }

    return 0;
  }

  v4 = (v0 + 32);
  if ((*(v0 + 32) & 0x100) == 0 || (*v4 & 0x1000) != 0 && (*v4 & 1) == 0)
  {
    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000152B8(v1);
    }

    return 0;
  }

  v6 = malloc_type_calloc(0x9F8uLL, 1uLL, 0x595BC342uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *(v6 + 3) = 0x100002000;
  pthread_rwlock_init((v6 + 48), 0);
  v8 = *(v1 + 8);
  if (*v8 == 47 && v8[1])
  {
    snprintf((v7 + 256), 0x400uLL, "%s/.fseventsd", *(v1 + 8));
  }

  else
  {
    __strlcpy_chk();
  }

  v9 = 1;
  while (1)
  {
    v10 = open((v7 + 256), 0x20000000);
    if (v10 < 0)
    {
      v12 = sub_100009620();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = *(v1 + 8);
        v16 = *v1;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v7 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v15;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v16;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <2> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }

      memset(&v51, 0, sizeof(v51));
    }

    else
    {
      v11 = v10;
      if (fstatfs(v10, &v57) || v57.f_fsid.val[0] != *v1 || v57.f_fsid.val[0] == dword_1000246F0 && (*v4 & 1) == 0)
      {
        v17 = sub_100009620();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(v1 + 8);
          v19 = *v1;
          buf.f_bsize = 136315906;
          *&buf.f_iosize = "create_dls_callback";
          WORD2(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 6) = v7 + 256;
          HIWORD(buf.f_bfree) = 2080;
          buf.f_bavail = v18;
          LOWORD(buf.f_files) = 1024;
          *(&buf.f_files + 2) = v19;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <1> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
        }

LABEL_60:
        close(v11);
LABEL_61:
        free(v7);
        return 0;
      }

      memset(&v51, 0, sizeof(v51));
      if (fstat(v11, &v51) || (v51.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_55;
      }

      close(v11);
    }

    v13 = *(v1 + 8);
    v14 = *v13;
    if ((v9 & 1) == 0)
    {
      break;
    }

    if (v14 == 47 && !v13[1])
    {
      __strlcpy_chk();
      v9 = 0;
      if ((*(v1 + 28) & 0x4001) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      snprintf((v7 + 256), 0x400uLL, "%s%s", *(v1 + 8), "/private/var/db/fseventsd");
      v9 = 0;
    }
  }

  if (v14 == 47 && v13[1])
  {
    snprintf((v7 + 256), 0x400uLL, "%s/.fseventsd", *(v1 + 8));
  }

  else
  {
    __strlcpy_chk();
  }

LABEL_39:
  unlink((v7 + 256));
  if (mkdir((v7 + 256), 0x1C0u))
  {
    if ((*v4 & 1) == 0 || *__error() != 30)
    {
      v20 = sub_100009620();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100014FD4();
      }
    }
  }

  else
  {
    sub_10000F14C((v7 + 256));
  }

  v21 = open((v7 + 256), 0x20000000);
  if (v21 < 0)
  {
    v28 = sub_100009620();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v37 = *(v1 + 8);
      v38 = *v1;
      buf.f_bsize = 136315906;
      *&buf.f_iosize = "create_dls_callback";
      WORD2(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 6) = v7 + 256;
      HIWORD(buf.f_bfree) = 2080;
      buf.f_bavail = v37;
      LOWORD(buf.f_files) = 1024;
      *(&buf.f_files + 2) = v38;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <3> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
    }

    if ((*v4 & 1) == 0)
    {
      v29 = sub_100009620();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(v1 + 8);
        v31 = *v1;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v7 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v30;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v31;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <4> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }

      goto LABEL_61;
    }

    strcpy((v7 + 256), "/tmp");
    v11 = open((v7 + 256), 0);
  }

  else
  {
    v11 = v21;
    if (*v4 & 1) != 0 || (*(v1 + 28))
    {
      v25 = sub_100009620();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(v1 + 8);
        v27 = *v1;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v7 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v26;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v27;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: Use fallback log directory for read only root fs [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }
    }

    else
    {
      if (fstatfs(v21, &v57) || v57.f_fsid.val[0] != *v1 || v57.f_fsid.val[0] == dword_1000246F0 && (*v4 & 1) == 0)
      {
        v22 = sub_100009620();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v49 = *(v1 + 8);
          v50 = *v1;
          buf.f_bsize = 136315906;
          *&buf.f_iosize = "create_dls_callback";
          WORD2(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 6) = v7 + 256;
          HIWORD(buf.f_bfree) = 2080;
          buf.f_bavail = v49;
          LOWORD(buf.f_files) = 1024;
          *(&buf.f_files + 2) = v50;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <5> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
        }

        close(v11);
        rmdir((v7 + 256));
        goto LABEL_61;
      }

LABEL_55:
      __s1[0] = 0;
      fstatfs(v11, &v57);
      fcntl(v11, 50, __s1);
      if (v57.f_fsid.val[0] != *v1 || strcmp(__s1, (v7 + 256)))
      {
        v23 = sub_100009620();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100015078();
        }

        unlink((v7 + 256));
        goto LABEL_60;
      }
    }
  }

  if (sub_10000F440(v11, (v7 + 32), (v7 + 36), (v7 + 40), sub_10000F600, &v53, &v52))
  {
    v32 = sub_100009620();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000150F0();
    }

    goto LABEL_61;
  }

  *(v7 + 248) = 65537;
  sub_10000F65C(v7 + 2304);
  v33 = *(v7 + 32);
  if (v33 < 2)
  {
    goto LABEL_91;
  }

  qsort(*(v7 + 40), v33, 8uLL, sub_10000F6E8);
  if (!((v52 - v53) >> 31))
  {
    goto LABEL_91;
  }

  if (*(v7 + 32) < 1)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      snprintf(__s1, 0x400uLL, "%s/%.16llx", (v7 + 256), *(*(v7 + 40) + 8 * v34));
      if (lstat(__s1, &v51))
      {
        break;
      }

      if (v51.st_size)
      {
        tv_sec = v51.st_ctimespec.tv_sec;
        if (v51.st_ctimespec.tv_sec < v35)
        {
          v40 = sub_100009620();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            buf.f_bsize = 134218498;
            *&buf.f_iosize = v51.st_ctimespec.tv_sec;
            WORD2(buf.f_blocks) = 2048;
            *(&buf.f_blocks + 6) = v35;
            HIWORD(buf.f_bfree) = 2080;
            buf.f_bavail = v7 + 256;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Log files out of order (%ld < %ld) in %s.", &buf, 0x20u);
          }

          goto LABEL_90;
        }
      }

      else
      {
        tv_sec = v35;
      }

      ++v34;
      v35 = tv_sec;
      if (v34 >= *(v7 + 32))
      {
        goto LABEL_90;
      }
    }

    v39 = sub_100009620();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100015168();
    }
  }

LABEL_90:
  if (v34 != *(v7 + 32))
  {
    v48 = sub_100009620();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1000151D8();
    }

    v41 = 0;
  }

  else
  {
LABEL_91:
    v41 = 1;
  }

  if ((*v4 & 0x2000) == 0)
  {
    sub_10000E8B0(v1, v7);
  }

  v42 = *(v7 + 32);
  if (v42 >= 1)
  {
    v43 = v42 - 1;
    while (sub_10000F700(v7, *(*(v7 + 40) + 8 * v43), &v54))
    {
      memset(&buf, 0, 512);
      if (!statfs(*(v1 + 8), &buf) && buf.f_fsid.val[0] == *v1)
      {
        v44 = v43-- + 1;
        if (v44 > 1)
        {
          continue;
        }
      }

      goto LABEL_103;
    }

    if (v54 > qword_1000246D0[dword_1000246E0])
    {
      qword_1000246D0[dword_1000246E0 ^ 1] = v54;
      atomic_fetch_xor(&dword_1000246E0, 1u);
    }
  }

LABEL_103:
  *(v7 + 8) = 0;
  if (sub_10000FFAC(v1, v7))
  {
    if ((*v4 & 1) == 0 || strcmp((v7 + 256), "/tmp"))
    {
      v45 = sub_100009620();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100015248();
      }
    }

    goto LABEL_109;
  }

  sub_10001013C(v1, v7, 0);
  if ((v41 & 1) == 0)
  {
LABEL_109:
    sub_10000EDBC(v7, 1);
    sub_10000EFA4(v1, v7);
  }

  *(v1 + 216) = v7;
  if (*(v1 + 32))
  {
    qword_100024748 = v7;
    v46 = v7;
  }

  else
  {
    v46 = qword_100024748;
    if (!qword_100024748)
    {
      return 0;
    }
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    *(v7 + 16) = v47;
  }

  return 0;
}

uint64_t sub_10000D5B0()
{
  pthread_setname_np("com.apple.fseventsd.volume");
  qword_1000246F8 = CFRunLoopGetCurrent();
  setiopolicy_np(0, 1, 2);
  v0 = sub_100012420();
  if (v0 < 0)
  {
    v1 = sub_100009620();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100015334();
    }
  }

  v2 = CFFileDescriptorCreate(0, v0, 1u, sub_100012498, 0);
  if (v2)
  {
    v3 = v2;
    RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v2, 0);
    if (RunLoopSource)
    {
      v5 = RunLoopSource;
      CFRunLoopAddSource(qword_1000246F8, RunLoopSource, kCFRunLoopDefaultMode);
      CFRelease(v5);
      CFFileDescriptorEnableCallBacks(v3, 1uLL);
    }

    else
    {
      v7 = sub_100009620();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100015370();
      }

      CFFileDescriptorInvalidate(v3);
      CFRelease(v3);
    }
  }

  else
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000153F0();
    }
  }

  CFRunLoopRun();
  return 0;
}

uint64_t sub_10000D6F4()
{
  if (qword_1000246F8)
  {
    CFRunLoopStop(qword_1000246F8);
    v0 = vars8;
  }

  v1 = qword_100024280;

  return pthread_join(v1, 0);
}

uint64_t sub_10000D738(int a1, int a2)
{
  pthread_mutex_lock(&stru_100024140);
  for (i = 0; i != 4096; i += 8)
  {
    v5 = *(&xmmword_100024758 + i);
    if (v5 && *(v5 + 112) == a1)
    {
      if (a2 == 1)
      {
        v6 = 8;
      }

      else
      {
        if (a2 != 2)
        {
LABEL_9:
          sub_1000033CC(v5);
          continue;
        }

        v6 = 16;
      }

      *(v5 + 192) |= v6;
      goto LABEL_9;
    }
  }

  return pthread_mutex_unlock(&stru_100024140);
}