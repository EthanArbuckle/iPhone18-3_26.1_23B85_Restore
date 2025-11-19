void thread_device_node_type_callback(uint64_t a1)
{
  rloc16 = cti_get_rloc16_(a1, 210);
  if (rloc16)
  {
    v2 = rloc16;
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "thread_device_node_type_callback";
      v6 = 1024;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: got error status from cti_get_rloc16: %d", &v4, 0x12u);
    }
  }
}

void thread_device_thread_tracker_callback(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[6];
    if (*(v2 + 72))
    {
      service_tracker_start(v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = a1[6];
  }

  service_tracker_stop(v3);
LABEL_6:
  v4 = state_machine_event_create(9);
  service_publisher_deliver_event_to_all_publishers(a1, v4);
  v5 = *v4;
  if (!*v4)
  {
    v6 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v10 = 136447490;
    v11 = "thread_device_thread_tracker_callback";
    v12 = 1024;
    *v13 = 0;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "thread-device.c";
    v14 = 1024;
    v15 = 200;
    v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_21;
  }

  v6 = global_os_log;
  if (v5 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v10 = 136447490;
    v11 = "thread_device_thread_tracker_callback";
    v12 = 1024;
    *v13 = v5;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "thread-device.c";
    v14 = 1024;
    v15 = 200;
    v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v9, &v10, 0x36u);
LABEL_22:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136447490;
    v11 = "thread_device_thread_tracker_callback";
    v12 = 1024;
    *v13 = v5;
    *&v13[4] = 2048;
    *&v13[6] = v4;
    *&v13[14] = 2080;
    *&v13[16] = "event";
    *&v13[24] = 2080;
    *&v13[26] = "thread-device.c";
    v14 = 1024;
    v15 = 200;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
    v5 = *v4;
  }

  *v4 = v5 - 1;
  if (v5 == 1)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136447234;
      v11 = "thread_device_thread_tracker_callback";
      v12 = 2048;
      *v13 = v4;
      *&v13[8] = 2080;
      *&v13[10] = "event";
      *&v13[18] = 2080;
      *&v13[20] = "thread-device.c";
      *&v13[28] = 1024;
      *&v13[30] = 200;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
    }

    ++state_machine_event_finalized;
    v8 = *(v4 + 4);
    if (v8)
    {
      v8(v4);
    }

    free(v4);
  }
}

void thread_device_stop(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v61 = 136446210;
    v62 = "thread_device_stop";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: stopping", &v61, 0xCu);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    service_tracker_cancel_probes(v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      service_tracker_stop(*(a1 + 48));
      v5 = v4[5];
      if (v5)
      {
        do
        {
          v7 = *v5;
          v6 = v5[1];
          if (v6)
          {
            v6(v5[3]);
          }

          free(v5);
          v5 = v7;
        }

        while (v7);
        v4[5] = 0;
        v8 = *v4;
        if (!*v4)
        {
          v44 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_204;
          }

          v61 = 136447490;
          v62 = "service_tracker_cancel";
          v63 = 1024;
          *v64 = 0;
          *&v64[4] = 2048;
          *&v64[6] = v4;
          *&v64[14] = 2080;
          *&v64[16] = "tracker";
          *&v64[24] = 2080;
          *&v64[26] = "service-tracker.c";
          v65 = 1024;
          v66 = 545;
          v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_199;
        }

        v9 = global_os_log;
        if (v8 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_204;
          }

          v61 = 136447490;
          v62 = "service_tracker_cancel";
          v63 = 1024;
          *v64 = v8;
          *&v64[4] = 2048;
          *&v64[6] = v4;
          *&v64[14] = 2080;
          *&v64[16] = "tracker";
          *&v64[24] = 2080;
          *&v64[26] = "service-tracker.c";
          v65 = 1024;
          v66 = 545;
          v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_202;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447490;
          v62 = "service_tracker_cancel";
          v63 = 1024;
          *v64 = v8;
          *&v64[4] = 2048;
          *&v64[6] = v4;
          *&v64[14] = 2080;
          *&v64[16] = "tracker";
          *&v64[24] = 2080;
          *&v64[26] = "service-tracker.c";
          v65 = 1024;
          v66 = 545;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
          v8 = *v4;
        }

        *v4 = v8 - 1;
        if (v8 == 1)
        {
          v10 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v61 = 136447234;
            v62 = "service_tracker_cancel";
            v63 = 2048;
            *v64 = v4;
            *&v64[8] = 2080;
            *&v64[10] = "tracker";
            *&v64[18] = 2080;
            *&v64[20] = "service-tracker.c";
            *&v64[28] = 1024;
            *&v64[30] = 545;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
          }

          ++service_tracker_finalized;
          service_tracker_finalize(v4);
        }
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = *v11;
        if (!*v11)
        {
          v44 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_204;
          }

          v61 = 136447490;
          v62 = "service_tracker_release_";
          v63 = 1024;
          *v64 = 0;
          *&v64[4] = 2048;
          *&v64[6] = v11;
          *&v64[14] = 2080;
          *&v64[16] = "omw";
          *&v64[24] = 2080;
          *&v64[26] = "thread-device.c";
          v65 = 1024;
          v66 = 557;
          v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_199;
        }

        v9 = global_os_log;
        if (v12 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_204;
          }

          v61 = 136447490;
          v62 = "service_tracker_release_";
          v63 = 1024;
          *v64 = v12;
          *&v64[4] = 2048;
          *&v64[6] = v11;
          *&v64[14] = 2080;
          *&v64[16] = "omw";
          *&v64[24] = 2080;
          *&v64[26] = "thread-device.c";
          v65 = 1024;
          v66 = 557;
          v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_202;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447490;
          v62 = "service_tracker_release_";
          v63 = 1024;
          *v64 = v12;
          *&v64[4] = 2048;
          *&v64[6] = v11;
          *&v64[14] = 2080;
          *&v64[16] = "omw";
          *&v64[24] = 2080;
          *&v64[26] = "thread-device.c";
          v65 = 1024;
          v66 = 557;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
          v12 = *v11;
        }

        *v11 = v12 - 1;
        if (v12 == 1)
        {
          v13 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v61 = 136447234;
            v62 = "service_tracker_release_";
            v63 = 2048;
            *v64 = v11;
            *&v64[8] = 2080;
            *&v64[10] = "omw";
            *&v64[18] = 2080;
            *&v64[20] = "thread-device.c";
            *&v64[28] = 1024;
            *&v64[30] = 557;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
          }

          ++service_tracker_finalized;
          service_tracker_finalize(v11);
        }
      }
    }

    *(a1 + 48) = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = v14[5];
    if (v15)
    {
      cti_events_discontinue(v15);
      v14[5] = 0;
      v16 = *v14;
      if (!*v14)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 283;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v16 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = v16;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 283;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = v16;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 283;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v16 = *v14;
      }

      *v14 = v16 - 1;
      if (v16 == 1)
      {
        v17 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "thread_tracker_cancel";
          v63 = 2048;
          *v64 = v14;
          *&v64[8] = 2080;
          *&v64[10] = "tracker";
          *&v64[18] = 2080;
          *&v64[20] = "thread-tracker.c";
          *&v64[28] = 1024;
          *&v64[30] = 283;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++thread_tracker_finalized;
        free(v14);
      }
    }

    v18 = v14[6];
    if (v18)
    {
      do
      {
        v20 = *v18;
        v19 = v18[1];
        if (v19)
        {
          v19(v18[3]);
        }

        free(v18);
        v18 = v20;
      }

      while (v20);
      v14[6] = 0;
      v21 = *v14;
      if (!*v14)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 293;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v21 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = v21;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 293;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "thread_tracker_cancel";
        v63 = 1024;
        *v64 = v21;
        *&v64[4] = 2048;
        *&v64[6] = v14;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "thread-tracker.c";
        v65 = 1024;
        v66 = 293;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v21 = *v14;
      }

      *v14 = v21 - 1;
      if (v21 == 1)
      {
        v22 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "thread_tracker_cancel";
          v63 = 2048;
          *v64 = v14;
          *&v64[8] = 2080;
          *&v64[10] = "tracker";
          *&v64[18] = 2080;
          *&v64[20] = "thread-tracker.c";
          *&v64[28] = 1024;
          *&v64[30] = 293;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++thread_tracker_finalized;
        free(v14);
      }
    }

    v23 = *(a1 + 80);
    if (v23)
    {
      v24 = *v23;
      if (!*v23)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_release_";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v23;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 562;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v24 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "thread_tracker_release_";
        v63 = 1024;
        *v64 = v24;
        *&v64[4] = 2048;
        *&v64[6] = v23;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 562;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "thread_tracker_release_";
        v63 = 1024;
        *v64 = v24;
        *&v64[4] = 2048;
        *&v64[6] = v23;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 562;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v24 = *v23;
      }

      *v23 = v24 - 1;
      if (v24 == 1)
      {
        v25 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "thread_tracker_release_";
          v63 = 2048;
          *v64 = v23;
          *&v64[8] = 2080;
          *&v64[10] = "omw";
          *&v64[18] = 2080;
          *&v64[20] = "thread-device.c";
          *&v64[28] = 1024;
          *&v64[30] = 562;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++thread_tracker_finalized;
        free(v23);
      }
    }

    *(a1 + 80) = 0;
  }

  v26 = *(a1 + 88);
  if (v26)
  {
    v27 = v26[5];
    if (v27)
    {
      cti_events_discontinue(v27);
      v26[5] = 0;
      v28 = *v26;
      if (!*v26)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 256;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v28 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = v28;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 256;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = v28;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 256;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v28 = *v26;
      }

      *v26 = v28 - 1;
      if (v28 == 1)
      {
        v29 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "node_type_tracker_cancel";
          v63 = 2048;
          *v64 = v26;
          *&v64[8] = 2080;
          *&v64[10] = "tracker";
          *&v64[18] = 2080;
          *&v64[20] = "node-type-tracker.c";
          *&v64[28] = 1024;
          *&v64[30] = 256;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++node_type_tracker_finalized;
        free(v26);
      }
    }

    v30 = v26[6];
    if (v30)
    {
      do
      {
        v32 = *v30;
        v31 = v30[1];
        if (v31)
        {
          v31(v30[3]);
        }

        free(v30);
        v30 = v32;
      }

      while (v32);
      v26[6] = 0;
      v33 = *v26;
      if (!*v26)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 266;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v33 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = v33;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 266;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "node_type_tracker_cancel";
        v63 = 1024;
        *v64 = v33;
        *&v64[4] = 2048;
        *&v64[6] = v26;
        *&v64[14] = 2080;
        *&v64[16] = "tracker";
        *&v64[24] = 2080;
        *&v64[26] = "node-type-tracker.c";
        v65 = 1024;
        v66 = 266;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v33 = *v26;
      }

      *v26 = v33 - 1;
      if (v33 == 1)
      {
        v34 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "node_type_tracker_cancel";
          v63 = 2048;
          *v64 = v26;
          *&v64[8] = 2080;
          *&v64[10] = "tracker";
          *&v64[18] = 2080;
          *&v64[20] = "node-type-tracker.c";
          *&v64[28] = 1024;
          *&v64[30] = 266;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++node_type_tracker_finalized;
        free(v26);
      }
    }

    v35 = *(a1 + 88);
    if (v35)
    {
      v36 = *v35;
      if (!*v35)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_release_";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v35;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 567;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v36 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "node_type_tracker_release_";
        v63 = 1024;
        *v64 = v36;
        *&v64[4] = 2048;
        *&v64[6] = v35;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 567;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "node_type_tracker_release_";
        v63 = 1024;
        *v64 = v36;
        *&v64[4] = 2048;
        *&v64[6] = v35;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 567;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v36 = *v35;
      }

      *v35 = v36 - 1;
      if (v36 == 1)
      {
        v37 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "node_type_tracker_release_";
          v63 = 2048;
          *v64 = v35;
          *&v64[8] = 2080;
          *&v64[10] = "omw";
          *&v64[18] = 2080;
          *&v64[20] = "thread-device.c";
          *&v64[28] = 1024;
          *&v64[30] = 567;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++node_type_tracker_finalized;
        free(v35);
      }
    }

    *(a1 + 88) = 0;
    *(a1 + 419) = 0;
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    service_publisher_stop_publishing(v38);
    service_publisher_cancel(*(a1 + 56));
    service_publisher_release_(*(a1 + 56), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 577);
    *(a1 + 56) = 0;
  }

  v39 = *(a1 + 224);
  if (v39)
  {
    v40 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *v39;
      v61 = 136447490;
      v62 = "omr_watcher_cancel";
      v63 = 1024;
      *v64 = v41;
      *&v64[4] = 2048;
      *&v64[6] = v39;
      *&v64[14] = 2080;
      *&v64[16] = "omw";
      *&v64[24] = 2080;
      *&v64[26] = "omr-watcher.c";
      v65 = 1024;
      v66 = 842;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
    }

    v42 = *v39;
    if (*v39)
    {
      v43 = v42 + 1;
      *v39 = v42 + 1;
      if (v42 + 1 >= 10001)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v43;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 842;
        v45 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_199:
        v60 = v44;
LABEL_203:
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, v45, &v61, 0x36u);
LABEL_204:
        abort();
      }
    }

    else
    {
      ++omr_watcher_created;
      *v39 = 1;
    }

    v46 = v39[4];
    if (v46)
    {
      cti_events_discontinue(v46);
      v39[4] = 0;
      v47 = *v39;
      if (!*v39)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 847;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v47 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v47;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 847;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v47;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 847;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v47 = *v39;
      }

      *v39 = v47 - 1;
      if (v47 == 1)
      {
        v48 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "omr_watcher_cancel";
          v63 = 2048;
          *v64 = v39;
          *&v64[8] = 2080;
          *&v64[10] = "omw";
          *&v64[18] = 2080;
          *&v64[20] = "omr-watcher.c";
          *&v64[28] = 1024;
          *&v64[30] = 847;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++omr_watcher_finalized;
        omr_watcher_finalize(v39);
      }
    }

    v49 = v39[5];
    if (v49)
    {
      cti_events_discontinue(v49);
      v39[5] = 0;
      v50 = *v39;
      if (!*v39)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 852;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v50 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v50;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 852;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v50;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 852;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v50 = *v39;
      }

      *v39 = v50 - 1;
      if (v50 == 1)
      {
        v51 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "omr_watcher_cancel";
          v63 = 2048;
          *v64 = v39;
          *&v64[8] = 2080;
          *&v64[10] = "omw";
          *&v64[18] = 2080;
          *&v64[20] = "omr-watcher.c";
          *&v64[28] = 1024;
          *&v64[30] = 852;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++omr_watcher_finalized;
        omr_watcher_finalize(v39);
      }
    }

    v52 = v39[6];
    if (v52)
    {
      cti_events_discontinue(v52);
      v39[6] = 0;
      v53 = *v39;
      if (!*v39)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 864;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v53 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v53;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 864;
        v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_202;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v53;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 864;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v53 = *v39;
        v9 = global_os_log;
      }

      v54 = v53 - 1;
      *v39 = v54;
      if (v54)
      {
        goto LABEL_129;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447234;
        v62 = "omr_watcher_cancel";
        v63 = 2048;
        *v64 = v39;
        *&v64[8] = 2080;
        *&v64[10] = "omw";
        *&v64[18] = 2080;
        *&v64[20] = "omr-watcher.c";
        *&v64[28] = 1024;
        *&v64[30] = 864;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
      }

      ++omr_watcher_finalized;
      omr_watcher_finalize(v39);
    }

    v54 = *v39;
    v9 = global_os_log;
    if (!*v39)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_204;
      }

      v61 = 136447490;
      v62 = "omr_watcher_cancel";
      v63 = 1024;
      *v64 = 0;
      *&v64[4] = 2048;
      *&v64[6] = v39;
      *&v64[14] = 2080;
      *&v64[16] = "omw";
      *&v64[24] = 2080;
      *&v64[26] = "omr-watcher.c";
      v65 = 1024;
      v66 = 867;
      v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_202;
    }

LABEL_129:
    if (v54 >= 10001)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_204;
      }

      v61 = 136447490;
      v62 = "omr_watcher_cancel";
      v63 = 1024;
      *v64 = v54;
      *&v64[4] = 2048;
      *&v64[6] = v39;
      *&v64[14] = 2080;
      *&v64[16] = "omw";
      *&v64[24] = 2080;
      *&v64[26] = "omr-watcher.c";
      v65 = 1024;
      v66 = 867;
      v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 136447490;
        v62 = "omr_watcher_cancel";
        v63 = 1024;
        *v64 = v54;
        *&v64[4] = 2048;
        *&v64[6] = v39;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "omr-watcher.c";
        v65 = 1024;
        v66 = 867;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
        v54 = *v39;
      }

      *v39 = v54 - 1;
      if (v54 == 1)
      {
        v55 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447234;
          v62 = "omr_watcher_cancel";
          v63 = 2048;
          *v64 = v39;
          *&v64[8] = 2080;
          *&v64[10] = "omw";
          *&v64[18] = 2080;
          *&v64[20] = "omr-watcher.c";
          *&v64[28] = 1024;
          *&v64[30] = 867;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
        }

        ++omr_watcher_finalized;
        omr_watcher_finalize(v39);
      }

      v56 = *(a1 + 224);
      if (!v56)
      {
        goto LABEL_145;
      }

      v57 = *v56;
      if (!*v56)
      {
        v44 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_204;
        }

        v61 = 136447490;
        v62 = "omr_watcher_release_";
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2048;
        *&v64[6] = v56;
        *&v64[14] = 2080;
        *&v64[16] = "omw";
        *&v64[24] = 2080;
        *&v64[26] = "thread-device.c";
        v65 = 1024;
        v66 = 604;
        v45 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_199;
      }

      v9 = global_os_log;
      if (v57 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v61 = 136447490;
          v62 = "omr_watcher_release_";
          v63 = 1024;
          *v64 = v57;
          *&v64[4] = 2048;
          *&v64[6] = v56;
          *&v64[14] = 2080;
          *&v64[16] = "omw";
          *&v64[24] = 2080;
          *&v64[26] = "thread-device.c";
          v65 = 1024;
          v66 = 604;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v61, 0x36u);
          v57 = *v56;
        }

        *v56 = v57 - 1;
        if (v57 == 1)
        {
          v58 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v61 = 136447234;
            v62 = "omr_watcher_release_";
            v63 = 2048;
            *v64 = v56;
            *&v64[8] = 2080;
            *&v64[10] = "omw";
            *&v64[18] = 2080;
            *&v64[20] = "thread-device.c";
            *&v64[28] = 1024;
            *&v64[30] = 604;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v61, 0x30u);
          }

          ++omr_watcher_finalized;
          omr_watcher_finalize(v56);
        }

LABEL_145:
        *(a1 + 224) = 0;
        goto LABEL_146;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_204;
      }

      v61 = 136447490;
      v62 = "omr_watcher_release_";
      v63 = 1024;
      *v64 = v57;
      *&v64[4] = 2048;
      *&v64[6] = v56;
      *&v64[14] = 2080;
      *&v64[16] = "omw";
      *&v64[24] = 2080;
      *&v64[26] = "thread-device.c";
      v65 = 1024;
      v66 = 604;
      v45 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

LABEL_202:
    v60 = v9;
    goto LABEL_203;
  }

LABEL_146:
  v59 = *(a1 + 152);
  if (v59)
  {
    dnssd_client_cancel(v59);
    dnssd_client_release_(*(a1 + 152), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 610);
    *(a1 + 152) = 0;
  }

  *(a1 + 420) = 0;
  *(a1 + 415) = 0;
  *(a1 + 417) = 0;
}

void ifpermit_list_add(uint64_t a1, char *__s1)
{
  if (a1 != 1)
  {
    v3 = (a1 + 8);
    while (1)
    {
      v4 = *v3;
      if (!*v3)
      {
        break;
      }

      v3 = *v3;
      if (!strcmp(__s1, v4[1]))
      {
        goto LABEL_13;
      }
    }

    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0xD9A59EF8uLL);
    if (v10)
    {
      if (!__s1)
      {
        v18 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        v23 = 136446210;
        v24 = "strict_strdup";
        v19 = "%{public}s: strict_strdup called with NULL string";
        goto LABEL_26;
      }

      v4 = v10;
      v11 = strdup(__s1);
      if (v11)
      {
        v4[1] = v11;
        v12 = if_nametoindex(__s1);
        *(v4 + 4) = v12;
        if (v12)
        {
          *v3 = v4;
LABEL_13:
          v13 = *(v4 + 5) + 1;
          *(v4 + 5) = v13;
          v14 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(v4 + 4);
            v23 = 136446978;
            v24 = "ifpermit_list_add";
            v25 = 1024;
            *v26 = v13;
            *&v26[4] = 2082;
            *&v26[6] = __s1;
            *&v26[14] = 1024;
            *&v26[16] = v15;
            v6 = "%{public}s: %d permits for interface %{public}s with index %d";
            v7 = v14;
            v8 = OS_LOG_TYPE_DEFAULT;
            v9 = 34;
            goto LABEL_15;
          }
        }

        else
        {
          v16 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v23 = 136446466;
            v24 = "ifpermit_list_add";
            v25 = 2082;
            *v26 = __s1;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: if_nametoindex for interface %{public}s returned 0.", &v23, 0x16u);
          }

          v17 = v4[1];
          if (v17)
          {
            free(v17);
          }

          free(v4);
        }

        return;
      }

      v18 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v23 = 136446210;
        v24 = "strict_strdup";
        v19 = "%{public}s: strdup() failed";
LABEL_26:
        v20 = v18;
        v21 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, &v23, v21);
      }
    }

    else
    {
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v23 = 136446722;
        v24 = "ifpermit_list_add";
        v25 = 2048;
        *v26 = 1;
        *&v26[8] = 2048;
        *&v26[10] = 24;
        v19 = "%{public}s: strict_calloc(%zu, %zu) failed";
        v20 = v22;
        v21 = 32;
        goto LABEL_27;
      }
    }

LABEL_28:
    __break(1u);
  }

  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v23 = 136446466;
    v24 = "ifpermit_list_add";
    v25 = 2082;
    *v26 = __s1;
    v6 = "%{public}s: blocked permit list when adding %{public}s";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, v8, v6, &v23, v9);
  }
}

void ifpermit_list_remove(uint64_t a1, char *__s1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v15 = 136446466;
      v16 = "ifpermit_list_remove";
      v17 = 2082;
      *v18 = __s1;
      v4 = "%{public}s: blocked permit list when removing %{public}s";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v8 = (a1 + 8);
      while (1)
      {
        v9 = v8;
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (!strcmp(__s1, v8[1]))
        {
          v10 = *(v8 + 5) - 1;
          *(v8 + 5) = v10;
          v11 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v8 + 4);
            v15 = 136446978;
            v16 = "ifpermit_list_remove";
            v17 = 1024;
            *v18 = v10;
            *&v18[4] = 2082;
            *&v18[6] = __s1;
            v19 = 1024;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %d permits for interface %{public}s with index %d", &v15, 0x22u);
            v10 = *(v8 + 5);
          }

          if (!v10)
          {
            *v9 = *v8;
            v13 = v8[1];
            if (v13)
            {
              free(v13);
              v8[1] = 0;
            }

            free(v8);
          }

          return;
        }
      }

      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v15 = 136446466;
      v16 = "ifpermit_list_remove";
      v17 = 2082;
      *v18 = __s1;
      v4 = "%{public}s: permit remove for interface %{public}s which does not exist";
      v5 = v14;
      v6 = OS_LOG_TYPE_FAULT;
    }
  }

  else
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = 136446466;
    v16 = "ifpermit_list_remove";
    v17 = 2082;
    *v18 = __s1;
    v4 = "%{public}s: no permit list when removing %{public}s";
    v5 = v7;
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v5, v6, v4, &v15, 0x16u);
}

void ifpermit_list_retain_(int *a1, int a2)
{
  if (a1 >= 2)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a1;
      *buf = 136447490;
      v10 = "ifpermit_list_retain_";
      v11 = 1024;
      v12 = v5;
      v13 = 2048;
      v14 = a1;
      v15 = 2080;
      v16 = "list";
      v17 = 2080;
      v18 = "macos-ioloop.c";
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    if (*a1)
    {
      v6 = *a1 + 1;
      *a1 = v6;
      if (v6 >= 10001)
      {
        v8 = v6;
        v7 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v10 = "ifpermit_list_retain_";
          v11 = 1024;
          v12 = v8;
          v13 = 2048;
          v14 = a1;
          v15 = 2080;
          v16 = "list";
          v17 = 2080;
          v18 = "macos-ioloop.c";
          v19 = 1024;
          v20 = a2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++ifpermit_list_created;
      *a1 = 1;
    }
  }
}

void ifpermit_list_release_(int *a1, int a2)
{
  if (a1 < 2)
  {
    return;
  }

  v4 = *a1;
  if (!*a1)
  {
    v5 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v11 = 136447490;
    v12 = "ifpermit_list_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "list";
    *&v14[24] = 2080;
    *&v14[26] = "macos-ioloop.c";
    v15 = 1024;
    v16 = a2;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_19;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    v11 = 136447490;
    v12 = "ifpermit_list_release_";
    v13 = 1024;
    *v14 = v4;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "list";
    *&v14[24] = 2080;
    *&v14[26] = "macos-ioloop.c";
    v15 = 1024;
    v16 = a2;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_20:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "ifpermit_list_release_";
    v13 = 1024;
    *v14 = v4;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "list";
    *&v14[24] = 2080;
    *&v14[26] = "macos-ioloop.c";
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v4 = *a1;
  }

  *a1 = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "ifpermit_list_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "list";
      *&v14[18] = 2080;
      *&v14[20] = "macos-ioloop.c";
      *&v14[28] = 1024;
      *&v14[30] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++ifpermit_list_finalized;
    v7 = *(a1 + 1);
    if (v7)
    {
      do
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8)
        {
          free(v8);
        }

        free(v7);
        v7 = v9;
      }

      while (v9);
    }

    free(a1);
  }
}

void ifpermit_add_permitted_interface_to_server_(uint64_t a1, char *__s1, char *a3, int a4)
{
  v5 = *(a1 + 96);
  if (v5)
  {
LABEL_12:

    ifpermit_list_add(v5, __s1);
    return;
  }

  v9 = malloc_type_calloc(1uLL, 0x10uLL, 0xFD45B1C2uLL);
  v10 = global_os_log;
  if (v9)
  {
    v5 = v9;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v5;
      v16 = 136447490;
      v17 = "ifpermit_list_create_";
      v18 = 1024;
      *v19 = v11;
      *&v19[4] = 2048;
      *&v19[6] = v5;
      *&v19[14] = 2080;
      *&v19[16] = "permits";
      v20 = 2080;
      v21 = strrchr(a3, 47) + 1;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
    }

    v12 = *v5;
    if (*v5)
    {
      v13 = v12 + 1;
      *v5 = v12 + 1;
      if (v12 + 1 >= 10001)
      {
        v14 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v15 = strrchr(a3, 47);
          v16 = 136447490;
          v17 = "ifpermit_list_create_";
          v18 = 1024;
          *v19 = v13;
          *&v19[4] = 2048;
          *&v19[6] = v5;
          *&v19[14] = 2080;
          *&v19[16] = "permits";
          v20 = 2080;
          v21 = v15 + 1;
          v22 = 1024;
          v23 = a4;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v16, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++ifpermit_list_created;
      *v5 = 1;
    }

    *(a1 + 96) = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v16 = 136446722;
    v17 = "ifpermit_list_create_";
    v18 = 2048;
    *v19 = 1;
    *&v19[8] = 2048;
    *&v19[10] = 16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v16, 0x20u);
  }

  __break(1u);
}

void srpk_label_cache_(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 56) <= 1u)
  {
    if ((*(a1 + 8) - *a1) <= 0x10000)
    {
      v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x7D6EADEBuLL);
      if (v6)
      {
        v6[1] = 0;
        v6[2] = 0;
        *(v6 + 12) = a3;
        *(v6 + 14) = a2;
        v7 = *(a1 + 8);
        v8 = (v7 - *a1);
        *(v6 + 26) = v7 - *a1;
        v6[3] = v7;
        *v6 = *(a1 + 40);
        *(a1 + 40) = v6;
      }

      else
      {
        v9 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v10 = 136446722;
          v11 = "srpk_label_cache_";
          v12 = 2048;
          v13 = 1;
          v14 = 2048;
          v15 = 64;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v10, 0x20u);
        }

        __break(1u);
      }
    }

    else
    {
      *(a1 + 56) = 15;
      *(a1 + 48) = a3;
    }
  }
}

void thread_service_retain_(int *a1, char *a2, int a3)
{
  if (a1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      *buf = 136447490;
      v13 = "thread_service_retain_";
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = a1;
      v18 = 2080;
      v19 = "omw";
      v20 = 2080;
      v21 = strrchr(a2, 47) + 1;
      v22 = 1024;
      v23 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    if (*a1)
    {
      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 >= 10001)
      {
        v11 = v8;
        v9 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v10 = strrchr(a2, 47);
          *buf = 136447490;
          v13 = "thread_service_retain_";
          v14 = 1024;
          v15 = v11;
          v16 = 2048;
          v17 = a1;
          v18 = 2080;
          v19 = "omw";
          v20 = 2080;
          v21 = v10 + 1;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++thread_service_created;
      *a1 = 1;
    }
  }
}

void thread_service_release_(int *a1, char *a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "thread_service_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "thread_service_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "thread_service_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "omw";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v11 = 136447234;
      v12 = "thread_service_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "omw";
      *&v14[18] = 2080;
      *&v14[20] = v9 + 1;
      *&v14[28] = 1024;
      *&v14[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++thread_service_finalized;
    free(a1);
  }
}

int *thread_service_unicast_create_(__int16 a1, _OWORD *a2, _WORD *a3, char a4, char *a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x7A029730uLL);
  if (!v12)
  {
    v21 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446722;
      v23 = "thread_service_unicast_create_";
      v24 = 2048;
      *v25 = 1;
      *&v25[8] = 2048;
      *&v25[10] = 88;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v22, 0x20u);
    }

    __break(1u);
  }

  v13 = v12;
  *(v12 + 4) = *a2;
  *(v12 + 40) = *a3;
  *(v12 + 8) = a1;
  v12[5] = 2;
  *(v12 + 18) = a4;
  v14 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *v13;
    v22 = 136447490;
    v23 = "thread_service_unicast_create_";
    v24 = 1024;
    *v25 = v15;
    *&v25[4] = 2048;
    *&v25[6] = v13;
    *&v25[14] = 2080;
    *&v25[16] = "service";
    v26 = 2080;
    v27 = strrchr(a5, 47) + 1;
    v28 = 1024;
    v29 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
  }

  v16 = *v13;
  if (*v13)
  {
    v17 = v16 + 1;
    *v13 = v16 + 1;
    if (v16 + 1 >= 10001)
    {
      v18 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v19 = strrchr(a5, 47);
        v22 = 136447490;
        v23 = "thread_service_unicast_create_";
        v24 = 1024;
        *v25 = v17;
        *&v25[4] = 2048;
        *&v25[6] = v13;
        *&v25[14] = 2080;
        *&v25[16] = "service";
        v26 = 2080;
        v27 = v19 + 1;
        v28 = 1024;
        v29 = a6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++thread_service_created;
    *v13 = 1;
  }

  return v13;
}

int *thread_service_anycast_create_(__int16 a1, char a2, char a3, char *a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x58uLL, 0xE47D8F6CuLL);
  if (!v10)
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "thread_service_anycast_create_";
      v22 = 2048;
      *v23 = 1;
      *&v23[8] = 2048;
      *&v23[10] = 88;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v20, 0x20u);
    }

    __break(1u);
  }

  v11 = v10;
  *(v10 + 8) = a1;
  *(v10 + 80) = a2;
  v10[5] = 3;
  *(v10 + 18) = a3;
  v12 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *v11;
    v20 = 136447490;
    v21 = "thread_service_anycast_create_";
    v22 = 1024;
    *v23 = v13;
    *&v23[4] = 2048;
    *&v23[6] = v11;
    *&v23[14] = 2080;
    *&v23[16] = "service";
    v24 = 2080;
    v25 = strrchr(a4, 47) + 1;
    v26 = 1024;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
  }

  v14 = *v11;
  if (*v11)
  {
    v15 = v14 + 1;
    *v11 = v14 + 1;
    if (v14 + 1 >= 10001)
    {
      v16 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v17 = strrchr(a4, 47);
        v20 = 136447490;
        v21 = "thread_service_anycast_create_";
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 2048;
        *&v23[6] = v11;
        *&v23[14] = 2080;
        *&v23[16] = "service";
        v24 = 2080;
        v25 = v17 + 1;
        v26 = 1024;
        v27 = a5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++thread_service_created;
    *v11 = 1;
  }

  return v11;
}

int *thread_service_flag_create_(__int16 a1, char a2, char *a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0xA1E8AF18uLL);
  if (!v8)
  {
    v16 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "thread_service_flag_create_";
      v20 = 2048;
      *v21 = 1;
      *&v21[8] = 2048;
      *&v21[10] = 88;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
    }

    __break(1u);
  }

  v9 = v8;
  *(v8 + 8) = a1;
  v8[5] = 4;
  *(v8 + 18) = a2;
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *v9;
    *buf = 136447490;
    v19 = "thread_service_flag_create_";
    v20 = 1024;
    *v21 = v11;
    *&v21[4] = 2048;
    *&v21[6] = v9;
    *&v21[14] = 2080;
    *&v21[16] = "service";
    v22 = 2080;
    v23 = strrchr(a3, 47) + 1;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v9)
  {
    v12 = *v9 + 1;
    *v9 = v12;
    if (v12 >= 10001)
    {
      v17 = v12;
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v14 = strrchr(a3, 47);
        *buf = 136447490;
        v19 = "thread_service_flag_create_";
        v20 = 1024;
        *v21 = v17;
        *&v21[4] = 2048;
        *&v21[6] = v9;
        *&v21[14] = 2080;
        *&v21[16] = "service";
        v22 = 2080;
        v23 = v14 + 1;
        v24 = 1024;
        v25 = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++thread_service_created;
    *v9 = 1;
  }

  return v9;
}

int *thread_service_pref_id_create_(__int16 a1, int *a2, int *a3, char a4, char *a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x9CF7F618uLL);
  if (!v12)
  {
    v22 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446722;
      v24 = "thread_service_pref_id_create_";
      v25 = 2048;
      *v26 = 1;
      *&v26[8] = 2048;
      *&v26[10] = 88;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v23, 0x20u);
    }

    __break(1u);
  }

  v13 = v12;
  *(v12 + 8) = a1;
  v12[16] = *a2;
  v14 = *a3;
  *(v12 + 72) = *(a3 + 4);
  v12[17] = v14;
  v12[5] = 1;
  *(v12 + 18) = a4;
  v15 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *v13;
    v23 = 136447490;
    v24 = "thread_service_pref_id_create_";
    v25 = 1024;
    *v26 = v16;
    *&v26[4] = 2048;
    *&v26[6] = v13;
    *&v26[14] = 2080;
    *&v26[16] = "service";
    v27 = 2080;
    v28 = strrchr(a5, 47) + 1;
    v29 = 1024;
    v30 = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v23, 0x36u);
  }

  v17 = *v13;
  if (*v13)
  {
    v18 = v17 + 1;
    *v13 = v17 + 1;
    if (v17 + 1 >= 10001)
    {
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v20 = strrchr(a5, 47);
        v23 = 136447490;
        v24 = "thread_service_pref_id_create_";
        v25 = 1024;
        *v26 = v18;
        *&v26[4] = 2048;
        *&v26[6] = v13;
        *&v26[14] = 2080;
        *&v26[16] = "service";
        v27 = 2080;
        v28 = v20 + 1;
        v29 = 1024;
        v30 = a6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v23, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++thread_service_created;
    *v13 = 1;
  }

  return v13;
}

void thread_service_note(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 20);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v28 = -3;
      v29 = *(a2 + 68);
      v30 = *(a2 + 72);
      v31 = 0;
      v32 = 0;
      v18 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v19 = *(a2 + 64);
      v20 = *(a2 + 65);
      v21 = *(a2 + 66);
      v22 = *(a2 + 67);
      v23 = *(a2 + 16);
      *buf = 136450563;
      v34 = "thread_service_note";
      v35 = 2082;
      *v36 = a1;
      *&v36[8] = 2082;
      *&v36[10] = "ULA: ";
      *&v36[18] = 2160;
      *&v36[20] = 1752392040;
      *&v36[28] = 1041;
      v37 = 6;
      v38 = 2097;
      v39 = &v28;
      v40 = 2160;
      v41 = 1752392040;
      v42 = 1042;
      v43 = 2;
      v44 = 2098;
      v45 = &v31;
      v46 = 2160;
      v47 = 1752392040;
      v48 = 1041;
      v49 = 8;
      v50 = 2097;
      v51 = &v31 + 2;
      v52 = 1024;
      v53 = v19;
      v54 = 1024;
      v55 = v20;
      v56 = 1024;
      *v57 = v21;
      *&v57[4] = 1024;
      *&v57[6] = v22;
      v58 = 1024;
      v59 = v23;
      v60 = 2082;
      v61 = a3;
      v14 = "%{public}s: %{public}s pref:id {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}:%02x%02x%02x%02x rloc %x %{public}s";
      v15 = v18;
      v16 = 150;
      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v7 = *(a2 + 80);
      v8 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = __rev16(v7);
      v10 = *(a2 + 64);
      if ((v10 & 0xFE) == 0xFC)
      {
        v11 = "ULA: ";
      }

      else if (v10 == 254 && (*(a2 + 65) & 0xC0) == 0x80)
      {
        v11 = "LUA: ";
      }

      else if ((v10 & 0xE0) == 0x20)
      {
        v11 = "GUA: ";
      }

      else
      {
        v11 = "";
      }

      v27 = *(a2 + 16);
      *buf = 136449795;
      v34 = "thread_service_note";
      v35 = 2082;
      *v36 = a1;
      *&v36[8] = 2082;
      *&v36[10] = v11;
      *&v36[18] = 2160;
      *&v36[20] = 1752392040;
      *&v36[28] = 1041;
      v37 = 6;
      v38 = 2097;
      v39 = (a2 + 64);
      v40 = 2160;
      v41 = 1752392040;
      v42 = 1042;
      v43 = 2;
      v44 = 2098;
      v45 = (a2 + 70);
      v46 = 2160;
      v47 = 1752392040;
      v48 = 1041;
      v49 = 8;
      v50 = 2097;
      v51 = (a2 + 72);
      v52 = 1024;
      v53 = v9;
      v54 = 1024;
      v55 = v27;
      v56 = 2082;
      *v57 = a3;
      v14 = "%{public}s: %{public}s unicast SRP service {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}%%%d, rloc16 %x %{public}s";
      v15 = v8;
      v16 = 132;
      goto LABEL_24;
    }

LABEL_11:
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136446722;
    v34 = "thread_service_note";
    v35 = 1024;
    *v36 = v6;
    *&v36[4] = 2048;
    *&v36[6] = a2;
    v14 = "%{public}s: invalid service type %d on service %p";
    v15 = v17;
    v16 = 28;
    goto LABEL_24;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      v12 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v13 = *(a2 + 16);
      *buf = 136446978;
      v34 = "thread_service_note";
      v35 = 2082;
      *v36 = a1;
      *&v36[8] = 1024;
      *&v36[10] = v13;
      *&v36[14] = 2082;
      *&v36[16] = a3;
      v14 = "%{public}s: %{public}s apple flag service on RLOC16 %x %{public}s";
      v15 = v12;
      v16 = 38;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v24 = global_os_log;
  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v25 = *(a2 + 16);
  v26 = *(a2 + 80);
  *buf = 136447234;
  v34 = "thread_service_note";
  v35 = 2082;
  *v36 = a1;
  *&v36[8] = 1024;
  *&v36[10] = v25;
  *&v36[14] = 1024;
  *&v36[16] = v26;
  *&v36[20] = 2082;
  *&v36[22] = a3;
  v14 = "%{public}s: %{public}s anycast SRP service on RLOC16 %x with sequence number %02x %{public}s";
  v15 = v24;
  v16 = 44;
LABEL_24:
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
}

BOOL thread_service_equal(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 20);
    if (v3 == *(a2 + 20))
    {
      switch(v3)
      {
        case 4:
          return 1;
        case 3:
          v6 = *(a1 + 80);
          v7 = *(a2 + 80);
          break;
        case 2:
          if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
          {
            return 0;
          }

          v6 = *(a1 + 80);
          v7 = *(a2 + 80);
          break;
        default:
          return 0;
      }

      return v6 == v7;
    }

    return 0;
  }

  return v2;
}

void ioloop_message_create_(uint64_t a1, char *a2, int a3)
{
  if ((a1 - 0x10000) >= 0xFFFFFFFFFFFF000CLL)
  {
    v5 = a1;
    v6 = malloc_type_malloc(a1 + 94, 0xD6FFB4CBuLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 78) = 0u;
      v6[3] = 0u;
      v6[4] = 0u;
      v6[1] = 0u;
      v6[2] = 0u;
      *v6 = 0u;
      v8 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 136447490;
      v15 = "ioloop_message_create_";
      v16 = 1024;
      v17 = 0;
      v18 = 2048;
      v19 = v7;
      v20 = 2080;
      v21 = "message";
      v22 = 2080;
      v23 = strrchr(a2, 47) + 1;
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v9 = *v7;
      if (*v7)
      {
        v10 = v9 + 1;
        *v7 = v9 + 1;
        if (v9 + 1 >= 10001)
        {
          v11 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            v12 = strrchr(a2, 47);
            *buf = 136447490;
            v15 = "ioloop_message_create_";
            v16 = 1024;
            v17 = v10;
            v18 = 2048;
            v19 = v7;
            v20 = 2080;
            v21 = "message";
            v22 = 2080;
            v23 = v12 + 1;
            v24 = 1024;
            v25 = a3;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
LABEL_9:
        ++message_created;
        *v7 = 1;
      }

      *(v7 + 32) = v5;
    }

    else
    {
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "ioloop_message_create_";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: strict allocator failed", buf, 0xCu);
      }

      __break(1u);
    }
  }
}

BOOL srp_log_ref_check(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  if (have_os_status)
  {
    if (is_internal == 1)
    {
      v8 = strrchr(__s, 47);
      if (v8)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = __s;
      }

      v10 = ref_history_cur;
      v11 = ref_history_highwater;
      if (ref_history_highwater >= 1)
      {
        v12 = 0;
        v13 = 0;
        if (ref_history_highwater == 4096)
        {
          v14 = ref_history_cur;
        }

        else
        {
          v14 = -1;
        }

        v15 = 1;
        while (2)
        {
          v16 = ref_history_cur - 1 - v13;
          while (1)
          {
            v17 = (ref_history_highwater & (v16 >> 31)) + v16;
            if (*(ref_history + 16 * v17) == a1)
            {
              break;
            }

            ++v13;
            --v16;
            if (ref_history_highwater == v13)
            {
              if (v15)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            }
          }

          if (*(ref_history + 8 + 16 * v17))
          {
            if (v15)
            {
              return 1;
            }
          }

          else
          {
            if ((v15 & 1) == 0)
            {
              v14 = v17 - 1;
              break;
            }

            v12 = 1;
          }

          v15 = 0;
          v14 = v17 - 1;
          if (++v13 != ref_history_highwater)
          {
            continue;
          }

          break;
        }

LABEL_35:
        v37 = v12;
        v26 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v39 = "srp_log_ref_check";
          v40 = 2048;
          *v41 = a1;
          *&v41[8] = 2082;
          *v42 = a2;
          *&v42[8] = 2082;
          *v43 = v9;
          *&v43[8] = 1024;
          *v44 = a4;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s: %p: release with refcount 0 for %{public}s at %{public}s:%d", buf, 0x30u);
          v10 = ref_history_cur;
        }

        v27 = v14 + 1;
        if (v14 + 1 != v10)
        {
          v28 = ref_history;
          do
          {
            if (v27 == 4096)
            {
              v29 = 0;
            }

            else
            {
              v29 = v27;
            }

            v30 = v28 + 16 * v29;
            if (*v30 == a1)
            {
              v31 = "<unknown file>";
              if (*(v30 + 10) < num_files)
              {
                v31 = ref_filenames[*(v30 + 10)];
              }

              v32 = "<unknown type>";
              if (*(v30 + 14) < num_types)
              {
                v32 = ref_types[*(v30 + 14)];
              }

              v33 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(v30 + 8);
                v35 = *(v30 + 12);
                *buf = 136447490;
                v39 = "srp_log_ref_check";
                v40 = 1024;
                *v41 = v29;
                *&v41[4] = 1024;
                *&v41[6] = v34;
                *v42 = 2082;
                *&v42[2] = v32;
                *v43 = 2082;
                *&v43[2] = v31;
                *v44 = 1024;
                *&v44[2] = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: %d: refcount %d for %{public}s at %{public}s:%d", buf, 0x32u);
                v28 = ref_history;
                v10 = ref_history_cur;
              }
            }

            v27 = v29 + 1;
          }

          while (v29 + 1 != v10);
        }

        if ((v37 & 1) == 0)
        {
          return 0;
        }

        v36 = global_os_log;
        result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT);
        if (result)
        {
          *buf = 136446466;
          v39 = "srp_log_ref_check";
          v40 = 2048;
          *v41 = a1;
          v22 = "%{public}s: memory at %p is not safe";
          v23 = v36;
          v24 = 22;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, v22, buf, v24);
          return 0;
        }

        return result;
      }

LABEL_30:
      v25 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447746;
        v39 = "srp_log_ref_check";
        v40 = 2048;
        *v41 = a1;
        *&v41[8] = 2082;
        *v42 = a2;
        *&v42[8] = 2082;
        *v43 = v9;
        *&v43[8] = 1024;
        *v44 = a4;
        *&v44[4] = 1024;
        v45 = v10;
        v46 = 1024;
        v47 = v11;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s: %p (%{public}s at %{public}s:%d) is not in the history (%d,%d)", buf, 0x3Cu);
      }
    }

    return 1;
  }

  v18 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v20 = strrchr(__s, 47);
    v39 = "srp_log_ref_check";
    *buf = 136447234;
    if (v20)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = __s;
    }

    v40 = 2082;
    *v41 = a2;
    *&v41[8] = 2048;
    *v42 = a1;
    *&v42[8] = 2082;
    *v43 = v21;
    *&v43[8] = 1024;
    *v44 = a4;
    v22 = "%{public}s: called before first logged retain on (%{public}s_t)%p at %{public}s:%d";
    v23 = v18;
    v24 = 48;
    goto LABEL_27;
  }

  return result;
}

void srp_log_ref_final(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  if (have_os_status == 1)
  {
    if ((is_internal & 1) == 0)
    {
      return;
    }
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    is_internal = has_internal_diagnostics;
    have_os_status = 1;
    if (!has_internal_diagnostics)
    {
      return;
    }
  }

  v9 = strrchr(__s, 47);
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = __s;
  }

  v11 = ref_history;
  if (!ref_history)
  {
    v12 = malloc_type_malloc(0x10000uLL, 0xA344E442uLL);
    if (!v12)
    {
      v24 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v25 = 136446210;
        v26 = "srp_log_ref_final";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: strict allocator failed", &v25, 0xCu);
      }

      __break(1u);
      return;
    }

    v11 = v12;
    ref_history = v12;
  }

  v13 = num_files;
  if (num_files)
  {
    v14 = 0;
    while (ref_filenames[v14] != v10)
    {
      if (num_files == ++v14)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    LOWORD(v14) = 0;
  }

  if (num_files == v14)
  {
LABEL_18:
    if (num_files == 20)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      v25 = 136446210;
      v26 = "srp_log_ref_final";
      v16 = "%{public}s: more files than space";
      goto LABEL_32;
    }

    ref_filenames[num_files] = v10;
    num_files = v13 + 1;
    LOWORD(v14) = v13;
  }

  v17 = num_types;
  if (num_types)
  {
    v18 = 0;
    while (ref_types[v18] != "adv_record")
    {
      if (num_types == ++v18)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    LOWORD(v18) = 0;
  }

  if (num_types == v18)
  {
LABEL_29:
    if (num_types == 20)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      v25 = 136446210;
      v26 = "srp_log_ref_final";
      v16 = "%{public}s: more types than space";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v16, &v25, 0xCu);
      v11 = ref_history;
LABEL_33:
      is_internal = 0;
      if (v11)
      {
        free(v11);
        ref_history = 0;
      }

      return;
    }

    ref_types[num_types] = "adv_record";
    num_types = v17 + 1;
    LOWORD(v18) = v17;
  }

  if (ref_history_cur == 4096)
  {
    v19 = 0;
  }

  else
  {
    v19 = ref_history_cur;
  }

  v20 = &v11[16 * v19];
  v21 = v19 + 1;
  ref_history_cur = v21;
  if (ref_history_highwater < v21)
  {
    ref_history_highwater = v21;
  }

  *v20 = a1;
  if (a2 >= 0xFFFF)
  {
    v22 = -1;
  }

  else
  {
    v22 = a2;
  }

  *(v20 + 4) = v22;
  *(v20 + 5) = v14;
  *(v20 + 7) = v18;
  if (a4 >= 0xFFFF)
  {
    v23 = -1;
  }

  else
  {
    v23 = a4;
  }

  *(v20 + 6) = v23;
}

void adv_ctl_set_int(uint64_t a1, unint64_t *a2, char *__str)
{
  v3 = a2[3];
  if (v3 >= 0x1B1)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446722;
    v20 = "adv_ctl_set_int";
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = 432;
    v5 = "%{public}s: which->offset out of range: %zu vs %zu";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x20u);
    return;
  }

  __endptr = 0;
  if (*__str == 48 && __str[1] == 120)
  {
    v9 = __str + 2;
    v10 = 16;
  }

  else
  {
    v9 = __str;
    v10 = 10;
  }

  v11 = strtol(v9, &__endptr, v10);
  v12 = v11;
  if (__endptr == __str)
  {
    goto LABEL_14;
  }

  if (!__endptr)
  {
    if (v11 == v11)
    {
      goto LABEL_18;
    }

LABEL_14:
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = *a2;
    *buf = 136446722;
    v20 = "adv_ctl_set_int";
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = __str;
    v5 = "%{public}s: invalid int for %{public}s: %{public}s";
    goto LABEL_16;
  }

  if (*__endptr)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v11 - 0x80000000) >= 0xFFFFFFFF00000000;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a2;
    v17 = *(a1 + v3);
    *buf = 136447746;
    v20 = "adv_ctl_set_int";
    v21 = 2082;
    v22 = v16;
    v23 = 2082;
    v24 = __str;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v12;
    v29 = 1024;
    v30 = v17;
    v31 = 1024;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: setting %{public}s to '%{public}s' %ld (%lx), originally %d (%x)", buf, 0x40u);
  }

  *(a1 + v3) = v12;
}

void adv_ctl_thread_shutdown_status_check(uint64_t a1)
{
  if (*(a1 + 427) == 1)
  {
    v1 = *(a1 + 48);
    if (v1 && (v2 = *(v1 + 48)) != 0)
    {
      while ((*(v2 + 50) & 1) == 0)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      adv_ctl_thread_shutdown_continue(a1);
    }
  }
}

void adv_ctl_thread_shutdown_continue(uint64_t a1)
{
  *(a1 + 424) = 0;
  v2 = *(a1 + 200);
  if (v2)
  {
    ioloop_cancel_wake_event(v2);
    ioloop_wakeup_release_(*(a1 + 200), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 628);
    *(a1 + 200) = 0;
  }

  v3 = *(a1 + 192);
  if (!v3)
  {
    v10 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = 136446210;
    v16 = "adv_ctl_thread_shutdown_continue";
    v11 = "%{public}s: shutdown request unexpectedly NULL here.";
    v12 = v10;
    v13 = OS_LOG_TYPE_FAULT;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, v13, v11, &v15, 0xCu);
    return;
  }

  reply = xpc_dictionary_create_reply(v3);
  if (!reply)
  {
    v14 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = 136446210;
    v16 = "adv_ctl_thread_shutdown_continue";
    v11 = "%{public}s: adv_xpc_message: Unable to create reply dictionary.";
    v12 = v14;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_17;
  }

  v5 = reply;
  xpc_dictionary_set_uint64(reply, "status", 0);
  xpc_connection_send_message(*(a1 + 184), v5);
  xpc_release(v5);
  v6 = *(a1 + 192);
  if (v6)
  {
    xpc_release(v6);
    *(a1 + 192) = 0;
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    xpc_release(v7);
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "adv_ctl_thread_shutdown_continue";
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: clearing server_state->wanted (%p) unconditionally.", &v15, 0x16u);
      v8 = *(a1 + 168);
    }

    srp_xpc_client_finalize(v8);
  }
}

void srp_xpc_client_finalize(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "srp_xpc_client_finalize";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: No longer wanted.", &v6, 0xCu);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(v3 + 168) = 0;
    os_release(*(a1 + 8));
    free(a1);
    thread_device_shutdown(v3);
    *(v3 + 429) = 0;
    v4 = *(v3 + 104);
    if (v4)
    {
      do
      {
        v5 = *v4;
        adv_ctl_wanted_service_free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 104) = 0;
  }

  else
  {
    os_release(*(a1 + 8));
    free(a1);
  }
}

void adv_ctl_wanted_service_free(void *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "<null>";
    v4 = a1[1];
    if (!v4)
    {
      v4 = "<null>";
    }

    if (a1[2])
    {
      v3 = a1[2];
    }

    v7 = 136447235;
    v8 = "adv_ctl_wanted_service_free";
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2081;
    v12 = v4;
    v13 = 2082;
    v14 = v3;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s%{public}s: %p", &v7, 0x34u);
  }

  v5 = a1[1];
  if (v5)
  {
    free(v5);
    a1[1] = 0;
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

BOOL adv_xpc_message(xpc_connection_t connection, unint64_t a2, uint64_t a3)
{
  if (!(connection | a2))
  {
    if (adv_xpc_wakeup)
    {
      ioloop_cancel_wake_event(adv_xpc_wakeup);
      v4 = adv_xpc_wakeup;
    }

    else
    {
      v4 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 1308);
      adv_xpc_wakeup = v4;
    }

    ioloop_add_wake_event(v4, a3, adv_xpc_restart, 0, 0x2710u);
    return 0;
  }

  v5 = connection;
  if (!connection)
  {
    v16 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *&buf[4] = "adv_xpc_message";
    v18 = "%{public}s: disconnected.";
    v19 = v16;
    v20 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_216;
  }

  v6 = a2;
  LODWORD(v7) = xpc_connection_get_pid(connection);
  LODWORD(v8) = xpc_connection_get_euid(v5);
  if (!v6)
  {
    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
LABEL_48:
      adv_xpc_connection_delete(v5);
      return 0;
    }

    *buf = 136446722;
    *&buf[4] = "adv_xpc_message";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    v12 = "%{public}s: Client uid %d pid %d disconnected.";
    v13 = v21;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 24;
LABEL_47:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
    goto LABEL_48;
  }

  string = xpc_dictionary_get_string(v6, "xpc-command");
  if (!strcmp(string, "enable"))
  {
    v22 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "adv_xpc_message";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      *&buf[24] = 2082;
      *&buf[26] = string;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
    }

    reply = xpc_dictionary_create_reply(v6);
    if (!reply)
    {
      v67 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      *&buf[4] = "adv_proxy_enable";
      v18 = "%{public}s: Unable to create reply dictionary.";
      goto LABEL_215;
    }

    v7 = reply;
    connectiona = v5;
    v24 = malloc_type_calloc(1uLL, 0x30uLL, 0xFE7C43E8uLL);
    if (v24)
    {
      string = v24;
      v25 = *(a3 + 168);
      if (v25)
      {
        goto LABEL_160;
      }

      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0xEA4E8AC6uLL);
      if (v26)
      {
        *(a3 + 168) = v26;
        v26[2] = a3;
        *(*(a3 + 168) + 8) = os_transaction_create();
        v27 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = "adv_proxy_wanted";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: Wanted.", buf, 0xCu);
        }

        thread_device_shutdown(a3);
        v8 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = "thread_device_startup";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: starting up", buf, 0xCu);
        }

        rloc16 = cti_get_rloc16_(a3, 498);
        if (rloc16)
        {
          v29 = rloc16;
          v8 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446466;
            *&buf[4] = "thread_device_startup";
            *&buf[12] = 1024;
            *&buf[14] = v29;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}s: can't get rloc16: %d", buf, 0x12u);
          }
        }

        v30 = malloc_type_calloc(1uLL, 0x78uLL, 0x46046BADuLL);
        v31 = global_os_log;
        if (!v30)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_234;
          }

          *buf = 136446722;
          *&buf[4] = "omr_watcher_create_";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 120;
          v120 = "%{public}s: strict_calloc(%zu, %zu) failed";
          v121 = v31;
          goto LABEL_293;
        }

        v32 = v30;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *v32;
          *buf = 136447490;
          *&buf[4] = "omr_watcher_create_";
          *&buf[12] = 1024;
          *&buf[14] = v33;
          *&buf[18] = 2048;
          *&buf[20] = v32;
          *&buf[28] = 2080;
          *&buf[30] = "omw";
          v143 = 2080;
          v144 = "omr-watcher.c";
          v145 = 1024;
          v146 = 540;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v34 = *v32;
        if (*v32)
        {
          v35 = v34 + 1;
          *v32 = v34 + 1;
          if (v34 + 1 >= 10001)
          {
            v36 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_281;
            }

            *buf = 136447490;
            *&buf[4] = "omr_watcher_create_";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            *&buf[18] = 2048;
            *&buf[20] = v32;
            *&buf[28] = 2080;
            *&buf[30] = "omw";
            v143 = 2080;
            v144 = "omr-watcher.c";
            v145 = 1024;
            v146 = 540;
            goto LABEL_280;
          }
        }

        else
        {
          ++omr_watcher_created;
          *v32 = 1;
        }

        *(v32 + 8) = a3;
        *(v32 + 80) = 0;
        *(v32 + 109) = 1;
        *(a3 + 224) = v32;
        if (!cti_get_netdata_mode_(v32, omr_watcher_netdata_mode_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/omr-watcher.c", 829))
        {
          v72 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v73 = *v32;
            *buf = 136447490;
            *&buf[4] = "omr_watcher_start";
            *&buf[12] = 1024;
            *&buf[14] = v73;
            *&buf[18] = 2048;
            *&buf[20] = v32;
            *&buf[28] = 2080;
            *&buf[30] = "omw";
            v143 = 2080;
            v144 = "omr-watcher.c";
            v145 = 1024;
            v146 = 832;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          v74 = *v32;
          if (*v32)
          {
            v75 = v74 + 1;
            *v32 = v74 + 1;
            if (v74 + 1 >= 10001)
            {
              v36 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_281;
              }

              *buf = 136447490;
              *&buf[4] = "omr_watcher_start";
              *&buf[12] = 1024;
              *&buf[14] = v75;
              *&buf[18] = 2048;
              *&buf[20] = v32;
              *&buf[28] = 2080;
              *&buf[30] = "omw";
              v143 = 2080;
              v144 = "omr-watcher.c";
              v145 = 1024;
              v146 = 832;
              goto LABEL_280;
            }
          }

          else
          {
            ++omr_watcher_created;
            *v32 = 1;
          }
        }

        active = cti_track_active_data_set_((a3 + 264), a3, thread_device_active_data_set_changed_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 525);
        if (active)
        {
          v77 = active;
          v78 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "thread_device_startup";
            *&buf[12] = 1024;
            *&buf[14] = v77;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}s: unable to start tracking active dataset: %d", buf, 0x12u);
          }
        }

        tunnel_name = cti_get_tunnel_name_(a3, thread_device_tunnel_name_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 530);
        if (tunnel_name)
        {
          v80 = tunnel_name;
          v81 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "thread_device_startup";
            *&buf[12] = 1024;
            *&buf[14] = v80;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%{public}s: unable to get tunnel name: %d", buf, 0x12u);
          }
        }

        v82 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v82, "interface", "org.wpantund.v1");
        xpc_dictionary_set_string(v82, "path", "/org/wpantund/utun2");
        v5 = setup_for_command((a3 + 272), "get_wed_status", "WakeOnDeviceConnectionStatus", 0, v82, a3, thread_device_wed_callback, cti_internal_wed_reply_callback, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 536);
        if (v82)
        {
          xpc_release(v82);
        }

        if (v5)
        {
          v83 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446466;
            *&buf[4] = "thread_device_startup";
            *&buf[12] = 1024;
            *&buf[14] = v5;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "%{public}s: can't track WED status: %d", buf, 0x12u);
          }
        }

        v84 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v84, "interface", "org.wpantund.v1");
        xpc_dictionary_set_string(v84, "path", "/org/wpantund/utun2");
        v85 = setup_for_command((a3 + 280), "get_neighbor_ml_eid", "ThreadNeighborMeshLocalAddress", 0, v84, a3, thread_device_neighbor_callback, cti_internal_string_event_reply, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/thread-device.c", 542);
        if (v84)
        {
          xpc_release(v84);
        }

        if (v85)
        {
          v86 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446466;
            *&buf[4] = "thread_device_startup";
            *&buf[12] = 1024;
            *&buf[14] = v85;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_FAULT, "%{public}s: can't track WED status: %d", buf, 0x12u);
          }
        }

        thread_device_active_data_set_changed_callback(a3, 0);
        v25 = *(a3 + 168);
        if (!v25)
        {
LABEL_165:
          array = xpc_dictionary_get_array(v6, "permitted-interfaces");
          if (array)
          {
            v6 = array;
            if (xpc_get_type(array) != &_xpc_type_array)
            {
              v92 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "adv_proxy_enable";
                *&buf[12] = 2082;
                *&buf[14] = "permitted-interfaces";
                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s type is not array", buf, 0x16u);
              }
            }

            count = xpc_array_get_count(v6);
            if (count)
            {
              v8 = count;
              if (count >> 61)
              {
                v119 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_234;
                }

                *buf = 136446210;
                *&buf[4] = "adv_proxy_enable";
                v120 = "%{public}s: strict_calloc count * size would overflow";
LABEL_232:
                v121 = v119;
                v122 = 12;
LABEL_233:
                _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, v120, buf, v122);
                goto LABEL_234;
              }

              v94 = malloc_type_calloc(count, 8uLL, 0xE31DD9B3uLL);
              if (v94)
              {
                v95 = 0;
                *(string + 4) = v94;
                while (1)
                {
                  v96 = xpc_array_get_string(v6, v95);
                  if (!v96)
                  {
                    break;
                  }

                  v5 = v96;
                  v97 = strdup(v96);
                  if (!v97)
                  {
                    v119 = global_os_log;
                    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446210;
                      *&buf[4] = "strict_strdup";
                      v120 = "%{public}s: strdup() failed";
                      goto LABEL_232;
                    }

LABEL_234:
                    __break(1u);
LABEL_235:
                    v123 = global_os_log;
                    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446978;
                      *&buf[4] = "adv_xpc_message";
                      *&buf[12] = 1024;
                      *&buf[14] = v8;
                      *&buf[18] = 1024;
                      *&buf[20] = v7;
                      *&buf[24] = 2082;
                      *&buf[26] = string;
                      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                    }

                    thread_device_stop(a3);
LABEL_209:
                    v113 = 0;
LABEL_210:
                    v114 = xpc_dictionary_create_reply(v6);
                    if (v114)
                    {
                      v115 = v114;
                      xpc_dictionary_set_uint64(v114, "status", v113);
                      xpc_connection_send_message(v5, v115);
                      v71 = v115;
LABEL_212:
                      xpc_release(v71);
                      return 0;
                    }

                    v67 = global_os_log;
                    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 136446210;
                    *&buf[4] = "adv_xpc_message";
                    v18 = "%{public}s: adv_xpc_message: Unable to create reply dictionary.";
LABEL_215:
                    v19 = v67;
                    v20 = OS_LOG_TYPE_ERROR;
LABEL_216:
                    _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, 0xCu);
                    return 0;
                  }

                  v98 = *(string + 10);
                  *(*(string + 4) + 8 * v98) = v97;
                  if (!*(*(string + 4) + 8 * v98))
                  {
                    v110 = global_os_log;
                    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446466;
                      *&buf[4] = "adv_proxy_enable";
                      *&buf[12] = 2082;
                      *&buf[14] = v5;
                      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%{public}s: no memory for client permitted interface list entry for %{public}s", buf, 0x16u);
                      LODWORD(v98) = *(string + 10);
                    }

                    v100 = connectiona;
                    if (v98 >= 1)
                    {
                      v111 = 0;
                      do
                      {
                        v112 = *(*(string + 4) + 8 * v111);
                        if (v112)
                        {
                          free(v112);
                          *(*(string + 4) + 8 * v111) = 0;
                          LODWORD(v98) = *(string + 10);
                        }

                        ++v111;
                      }

                      while (v111 < v98);
                    }

                    v109 = -65539;
                    v106 = *(string + 4);
                    v104 = -65539;
                    if (!v106)
                    {
                      goto LABEL_192;
                    }

LABEL_191:
                    free(v106);
                    v104 = v109;
                    goto LABEL_192;
                  }

                  *(string + 10) = v98 + 1;
                  ifpermit_add_permitted_interface_to_server_(a3, v5, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 1053);
                  if (v8 == ++v95)
                  {
                    goto LABEL_181;
                  }
                }

                v105 = xpc_array_get_value(v6, v95);
                v106 = xpc_copy_description(v105);
                v107 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  v108 = "<null>";
                  if (v106)
                  {
                    v108 = v106;
                  }

                  *buf = 136446466;
                  *&buf[4] = "adv_proxy_enable";
                  *&buf[12] = 2082;
                  *&buf[14] = v108;
                  _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%{public}s: non-string interface %{public}s specified", buf, 0x16u);
                }

                v109 = 0;
                v104 = 0;
                v100 = connectiona;
                if (v106)
                {
                  goto LABEL_191;
                }

LABEL_192:
                free(string);
LABEL_193:
                xpc_dictionary_set_uint64(v7, "status", v104);
                xpc_connection_send_message(v100, v7);
                xpc_release(v7);
                return v104 == 0;
              }

              v130 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_234;
              }

              *buf = 136446722;
              *&buf[4] = "adv_proxy_enable";
              *&buf[12] = 2048;
              *&buf[14] = v8;
              *&buf[22] = 2048;
              *&buf[24] = 8;
              v120 = "%{public}s: strict_calloc(%zu, %zu) failed";
              goto LABEL_292;
            }

            v99 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "adv_proxy_enable";
              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%{public}s: empty permitted interface array.", buf, 0xCu);
            }

            *(string + 4) = 0;
          }

LABEL_181:
          v100 = connectiona;
          *(string + 1) = connectiona;
          *(string + 2) = a3;
          xpc_retain(connectiona);
          string[25] = 1;
          v101 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "adv_proxy_enable";
            *&buf[12] = 2048;
            *&buf[14] = string;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}s: connection from client: %p", buf, 0x16u);
          }

          v102 = &srp_xpc_clients;
          do
          {
            v103 = v102;
            v102 = *v102;
          }

          while (v102);
          v104 = 0;
          *v103 = string;
          goto LABEL_193;
        }

LABEL_160:
        v87 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v88 = *v25;
          *buf = 136447490;
          *&buf[4] = "adv_proxy_wanted";
          *&buf[12] = 1024;
          *&buf[14] = v88;
          *&buf[18] = 2048;
          *&buf[20] = v25;
          *&buf[28] = 2080;
          *&buf[30] = "server_state->wanted";
          v143 = 2080;
          v144 = "adv-ctl-server.c";
          v145 = 1024;
          v146 = 978;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v25 = *(a3 + 168);
        }

        v89 = *v25;
        if (!*v25)
        {
          ++srp_xpc_client_created;
          v89 = *v25;
        }

        v90 = v89 + 1;
        *v25 = v89 + 1;
        if (v89 + 1 >= 10001)
        {
          v36 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_281;
          }

          *buf = 136447490;
          *&buf[4] = "adv_proxy_wanted";
          *&buf[12] = 1024;
          *&buf[14] = v90;
          *&buf[18] = 2048;
          *&buf[20] = v25;
          *&buf[28] = 2080;
          *&buf[30] = "server_state->wanted";
          v143 = 2080;
          v144 = "adv-ctl-server.c";
          v145 = 1024;
          v146 = 978;
LABEL_280:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
LABEL_281:
          abort();
        }

        goto LABEL_165;
      }

      v130 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_234;
      }

      *buf = 136446722;
      *&buf[4] = "adv_proxy_wanted";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 24;
      v120 = "%{public}s: strict_calloc(%zu, %zu) failed";
    }

    else
    {
      v130 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_234;
      }

      *buf = 136446722;
      *&buf[4] = "adv_proxy_enable";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 48;
      v120 = "%{public}s: strict_calloc(%zu, %zu) failed";
    }

LABEL_292:
    v121 = v130;
LABEL_293:
    v122 = 32;
    goto LABEL_233;
  }

  if (!strcmp(string, "list service types"))
  {
    v37 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_209;
    }

    goto LABEL_208;
  }

  if (strcmp(string, "list services"))
  {
    if (!strcmp(string, "list hosts"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "get host"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "flush entries"))
    {
      v68 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        *&buf[4] = "adv_xpc_message";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 2082;
        *&buf[26] = string;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
      }

      srp_mdns_flush(a3);
      goto LABEL_209;
    }

    if (!strcmp(string, "block service"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "unblock service"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "regenerate ULA"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "advertise prefix"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "advertise prefix high priority"))
    {
      v37 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_209;
      }

      goto LABEL_208;
    }

    if (!strcmp(string, "add prefix"))
    {
      v116 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_222:
        *buf = 136446978;
        *&buf[4] = "adv_xpc_message";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 2082;
        *&buf[26] = string;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
      }
    }

    else
    {
      if (strcmp(string, "remove prefix"))
      {
        if (!strcmp(string, "add nat64 prefix"))
        {
          v118 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
LABEL_228:
            v117 = adv_ctl_nat64_prefix_add_remove(v6);
            goto LABEL_229;
          }
        }

        else
        {
          if (strcmp(string, "remove nat64 prefix"))
          {
            if (!strcmp(string, "stop"))
            {
              goto LABEL_235;
            }

            if (!strcmp(string, "stop apple service"))
            {
              v37 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_209;
              }
            }

            else if (!strcmp(string, "continue apple service"))
            {
              v37 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_209;
              }
            }

            else
            {
              if (!strcmp(string, "get ula"))
              {
                v124 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446978;
                  *&buf[4] = "adv_xpc_message";
                  *&buf[12] = 1024;
                  *&buf[14] = v8;
                  *&buf[18] = 1024;
                  *&buf[20] = v7;
                  *&buf[24] = 2082;
                  *&buf[26] = string;
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                }

                return adv_xpc_get_ula(v6, v5, a3);
              }

              if (!strcmp(string, "disable SRP replication"))
              {
                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_209;
                }
              }

              else if (!strcmp(string, "drop srpl connection"))
              {
                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_209;
                }
              }

              else if (!strcmp(string, "undrop srpl connection"))
              {
                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_209;
                }
              }

              else if (!strcmp(string, "drop srpl advertisement"))
              {
                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_209;
                }
              }

              else if (!strcmp(string, "undrop srpl advertisement"))
              {
                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_209;
                }
              }

              else
              {
                if (!strcmp(string, "start dropping push connections"))
                {
                  v125 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446978;
                    *&buf[4] = "adv_xpc_message";
                    *&buf[12] = 1024;
                    *&buf[14] = v8;
                    *&buf[18] = 1024;
                    *&buf[20] = v7;
                    *&buf[24] = 2082;
                    *&buf[26] = string;
                    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                  }

                  dp_start_dropping();
                  goto LABEL_209;
                }

                if (!strcmp(string, "start breaking time validation"))
                {
                  v126 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446978;
                    *&buf[4] = "adv_xpc_message";
                    *&buf[12] = 1024;
                    *&buf[14] = v8;
                    *&buf[18] = 1024;
                    *&buf[20] = v7;
                    *&buf[24] = 2082;
                    *&buf[26] = string;
                    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                  }

                  v113 = 0;
                  *(a3 + 414) = 1;
                  goto LABEL_210;
                }

                if (!strcmp(string, "set variable"))
                {
                  v127 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446978;
                    *&buf[4] = "adv_xpc_message";
                    *&buf[12] = 1024;
                    *&buf[14] = v8;
                    *&buf[18] = 1024;
                    *&buf[20] = v7;
                    *&buf[24] = 2082;
                    *&buf[26] = string;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                  }

                  adv_ctl_xpc_set_variable(a3, v6);
                  goto LABEL_209;
                }

                if (!strcmp(string, "block anycast service"))
                {
                  v37 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_209;
                  }
                }

                else
                {
                  if (strcmp(string, "unblock anycast service"))
                  {
                    if (!strcmp(string, "start thread shutdown"))
                    {
                      v128 = global_os_log;
                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446978;
                        *&buf[4] = "adv_xpc_message";
                        *&buf[12] = 1024;
                        *&buf[14] = v8;
                        *&buf[18] = 1024;
                        *&buf[20] = v7;
                        *&buf[24] = 2082;
                        *&buf[26] = string;
                        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
                      }

                      adv_ctl_start_thread_shutdown(v6, v5, a3);
                      return 1;
                    }

                    if (!strcmp(string, "need service instance"))
                    {
                      v129 = global_os_log;
                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446722;
                        *&buf[4] = "adv_xpc_message";
                        *&buf[12] = 1024;
                        *&buf[14] = v8;
                        *&buf[18] = 1024;
                        *&buf[20] = v7;
                        _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a kDNSSDAdvertisingProxyNeedServiceInstance request.", buf, 0x18u);
                      }

                      adv_ctl_need_service_instance(v6, a3);
                      goto LABEL_209;
                    }

                    if (!strcmp(string, "update primary resident"))
                    {
                      v131 = global_os_log;
                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446722;
                        *&buf[4] = "adv_xpc_message";
                        *&buf[12] = 1024;
                        *&buf[14] = v8;
                        *&buf[18] = 1024;
                        *&buf[20] = v7;
                        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a kDNSSDAdvertisingProxyUpdatePrimaryResident request.", buf, 0x18u);
                      }

                      adv_ctl_update_primary_resident(v6, a3);
                      goto LABEL_209;
                    }

                    v10 = strcmp(string, "get host service info");
                    v11 = global_os_log;
                    if (!v10)
                    {
                      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446722;
                        *&buf[4] = "adv_xpc_message";
                        *&buf[12] = 1024;
                        *&buf[14] = v8;
                        *&buf[18] = 1024;
                        *&buf[20] = v7;
                        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a kDNSSDAdvertisingProxyGetHostService request.", buf, 0x18u);
                      }

                      return adv_ctl_get_host_service(v6, v5, a3);
                    }

                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_48;
                    }

                    *buf = 136446978;
                    *&buf[4] = "adv_xpc_message";
                    *&buf[12] = 1024;
                    *&buf[14] = v8;
                    *&buf[18] = 1024;
                    *&buf[20] = v7;
                    *&buf[24] = 2082;
                    *&buf[26] = string;
                    v12 = "%{public}s: Client uid %d pid %d sent a request with unknown message type %{public}s.";
                    v13 = v11;
                    v14 = OS_LOG_TYPE_ERROR;
                    v15 = 34;
                    goto LABEL_47;
                  }

                  v37 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_209;
                  }
                }
              }
            }

LABEL_208:
            *buf = 136446978;
            *&buf[4] = "adv_xpc_message";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            *&buf[18] = 1024;
            *&buf[20] = v7;
            *&buf[24] = 2082;
            *&buf[26] = string;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
            goto LABEL_209;
          }

          v118 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_228;
          }
        }

        *buf = 136446978;
        *&buf[4] = "adv_xpc_message";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *&buf[24] = 2082;
        *&buf[26] = string;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
        goto LABEL_228;
      }

      v116 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_222;
      }
    }

    v117 = adv_ctl_prefix_add_remove(v6);
LABEL_229:
    v113 = v117;
    goto LABEL_210;
  }

  v38 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "adv_xpc_message";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2082;
    *&buf[26] = string;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: Client uid %d pid %d sent a %{public}s request.", buf, 0x22u);
  }

  v39 = xpc_array_create(0, 0);
  *buf = 0;
  *&buf[8] = 0;
  gettimeofday(buf, 0);
  if (!v39)
  {
    v67 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *&buf[4] = "adv_xpc_list_services";
    v18 = "%{public}s: adv_xpc_list_services: Unable to create service array";
    goto LABEL_215;
  }

  value = v39;
  v40 = *buf;
  v41 = *&buf[8];
  v42 = xpc_dictionary_create_reply(v6);
  if (!v42)
  {
    v67 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *&buf[4] = "adv_xpc_list_services";
    v18 = "%{public}s: adv_xpc_list_services: Unable to create reply dictionary.";
    goto LABEL_215;
  }

  xdict = v42;
  xpc_dictionary_set_uint64(v42, "status", 0);
  v43 = *(a3 + 8);
  if (!v43)
  {
    goto LABEL_112;
  }

  v44 = 1000 * v40 + v41 / 1000;
  v133 = v44;
  while (2)
  {
    v45 = 0;
    v46 = 0;
    v47 = value;
    while (1)
    {
      v48 = *(v43 + 104);
      if (v48 && v46 < *(v48 + 4))
      {
        v49 = *(*(v48 + 8) + 8 * v46);
        if (!v49)
        {
          goto LABEL_110;
        }

        goto LABEL_84;
      }

      if (v45)
      {
        break;
      }

      v49 = 0;
LABEL_84:
      v50 = xpc_dictionary_create(0, 0, 0);
      if (!v50)
      {
        v69 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v70 = *(v43 + 48);
          *__str = 136446723;
          v137 = "adv_xpc_list_services";
          v138 = 2160;
          v139 = 1752392040;
          v140 = 2081;
          v141 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%{public}s: adv_xpc_list_services: failed to allocate instance dictionary for %{private, mask.hash}s", __str, 0x20u);
        }

        xpc_release(v47);
        v71 = xdict;
        goto LABEL_212;
      }

      v51 = v50;
      xpc_dictionary_set_string(v50, "hostname", *(v43 + 48));
      xpc_dictionary_set_string(v51, "regname", *(v43 + 56));
      if (v49)
      {
        xpc_dictionary_set_string(v51, "name", *(v49 + 64));
        xpc_dictionary_set_string(v51, "type", *(v49 + 72));
        snprintf(__str, 6uLL, "%u", *(v49 + 80));
        xpc_dictionary_set_string(v51, "port", __str);
        xpc_dictionary_set_data(v51, "txt", *(v49 + 88), *(v49 + 96));
        v52 = "replicated";
        if (*(v43 + 216) == *(a3 + 344))
        {
          if (*(v49 + 134))
          {
            v52 = "anycast";
          }

          else
          {
            v52 = "unicast";
          }
        }

        xpc_dictionary_set_string(v51, "regtype", v52);
      }

      v53 = *(v43 + 88);
      if (v53)
      {
        if (*(v53 + 4) >= 1)
        {
          empty = xpc_array_create_empty();
          if (empty)
          {
            v55 = empty;
            v56 = *(v43 + 88);
            if (*(v56 + 4) >= 1)
            {
              v57 = 0;
              v58 = 0;
              do
              {
                v59 = *(*(v56 + 8) + 8 * v57);
                if (v59)
                {
                  v60 = *(v59 + 72) == 1 ? 2 : 30;
                  inet_ntop(v60, *(v59 + 64), buf, 0x2Eu);
                  v61 = xpc_string_create(buf);
                  if (v61)
                  {
                    v62 = v61;
                    xpc_array_append_value(v55, v61);
                    xpc_release(v62);
                    ++v58;
                  }
                }

                ++v57;
                v56 = *(v43 + 88);
              }

              while (v57 < *(v56 + 4));
              v47 = value;
              if (v58)
              {
                xpc_dictionary_set_value(v51, "addresses", v55);
              }
            }

            xpc_release(v55);
            v44 = v133;
          }
        }
      }

      v63 = *(v43 + 248);
      v64 = v63 < v44;
      v65 = v63 - v44;
      if (v64)
      {
        v66 = -1;
      }

      else
      {
        v66 = v65;
      }

      xpc_dictionary_set_int64(v51, "lease", v66);
      xpc_dictionary_set_BOOL(v51, "removed", *(v43 + 256));
      xpc_dictionary_set_int64(v51, "update-server-id", *(v43 + 216));
      xpc_array_append_value(v47, v51);
      xpc_release(v51);
      v45 = 1;
LABEL_110:
      ++v46;
    }

    v43 = *(v43 + 32);
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_112:
  xpc_dictionary_set_value(xdict, "instances", value);
  xpc_release(value);
  xpc_connection_send_message(v5, xdict);
  xpc_release(xdict);
  return 1;
}

void adv_xpc_connection_delete(uint64_t a1)
{
  v1 = &srp_xpc_clients;
  do
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      return;
    }
  }

  while (v1[1] != a1);
  xpc_release(v1[1]);
  v1[1] = 0;
  if (*(v1 + 25) == 1)
  {
    v3 = *(v1[2] + 168);
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = global_os_log;
        if (v4 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136447490;
            v15 = "adv_xpc_connection_delete";
            v16 = 1024;
            *v17 = v4;
            *&v17[4] = 2048;
            *&v17[6] = v3;
            *&v17[14] = 2080;
            *&v17[16] = "client->server_state->wanted";
            *&v17[24] = 2080;
            *&v17[26] = "adv-ctl-server.c";
            v18 = 1024;
            v19 = 1121;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v14, 0x36u);
            v3 = *(v1[2] + 168);
            v4 = *v3;
          }

          *v3 = v4 - 1;
          if (v4 == 1)
          {
            v6 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v14 = 136447234;
              v15 = "adv_xpc_connection_delete";
              v16 = 2048;
              *v17 = v3;
              *&v17[8] = 2080;
              *&v17[10] = "client->server_state->wanted";
              *&v17[18] = 2080;
              *&v17[20] = "adv-ctl-server.c";
              *&v17[28] = 1024;
              *&v17[30] = 1121;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v14, 0x30u);
              v3 = *(v1[2] + 168);
            }

            ++srp_xpc_client_finalized;
            srp_xpc_client_finalize(v3);
          }

          goto LABEL_14;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_30:
          abort();
        }

        v14 = 136447490;
        v15 = "adv_xpc_connection_delete";
        v16 = 1024;
        *v17 = v4;
        *&v17[4] = 2048;
        *&v17[6] = v3;
        *&v17[14] = 2080;
        *&v17[16] = "client->server_state->wanted";
        *&v17[24] = 2080;
        *&v17[26] = "adv-ctl-server.c";
        v18 = 1024;
        v19 = 1121;
        v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v13 = v5;
      }

      else
      {
        v11 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_30;
        }

        v14 = 136447490;
        v15 = "adv_xpc_connection_delete";
        v16 = 1024;
        *v17 = 0;
        *&v17[4] = 2048;
        *&v17[6] = v3;
        *&v17[14] = 2080;
        *&v17[16] = "client->server_state->wanted";
        *&v17[24] = 2080;
        *&v17[26] = "adv-ctl-server.c";
        v18 = 1024;
        v19 = 1121;
        v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        v13 = v11;
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v12, &v14, 0x36u);
      goto LABEL_30;
    }
  }

LABEL_14:
  if (*(v1 + 10) >= 1)
  {
    v7 = 0;
    do
    {
      ifpermit_list_remove(*(v1[2] + 96), *(v1[4] + 8 * v7));
      v8 = *(v1[4] + 8 * v7);
      if (v8)
      {
        free(v8);
        *(v1[4] + 8 * v7) = 0;
      }

      ++v7;
    }

    while (v7 < *(v1 + 10));
  }

  v9 = v1[4];
  if (v9)
  {
    free(v9);
    v1[4] = 0;
  }

  *v2 = *v1;
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "adv_xpc_connection_delete";
    v16 = 2048;
    *v17 = v1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: deleting client: %p", &v14, 0x16u);
  }

  free(v1);
}

uint64_t adv_ctl_prefix_add_remove(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  v2 = length;
  v3 = global_os_log;
  if (data)
  {
    v4 = length == 16;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 0;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *data;
      if ((v6 & 0xFE) == 0xFC)
      {
        v7 = "ULA: ";
      }

      else if (v6 == 254 && (data[1] & 0xC0) == 0x80)
      {
        v7 = "LUA: ";
      }

      else if ((v6 & 0xE0) == 0x20)
      {
        v7 = "GUA: ";
      }

      else
      {
        v7 = "";
      }

      *buf = 136448771;
      v11 = "adv_ctl_prefix_add_remove";
      v12 = 2082;
      v13 = v7;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 1041;
      v17 = 6;
      v18 = 2097;
      v19 = data;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 1042;
      v23 = 2;
      v24 = 2098;
      v25 = data + 6;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 1041;
      v29 = 8;
      v30 = 2097;
      v31 = data + 8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: got prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0x64u);
      return 0;
    }
  }

  else
  {
    v5 = 4294901756;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "adv_ctl_prefix_add_remove";
      v12 = 2048;
      v13 = data;
      v14 = 2048;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: invalid request, data[%p], data_len[%ld]", buf, 0x20u);
    }
  }

  return v5;
}

uint64_t adv_ctl_nat64_prefix_add_remove(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  v2 = length;
  v3 = global_os_log;
  if (data)
  {
    v4 = length == 16;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 0;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *data;
      if ((v6 & 0xFE) == 0xFC)
      {
        v7 = "ULA: ";
      }

      else if (v6 == 254 && (data[1] & 0xC0) == 0x80)
      {
        v7 = "LUA: ";
      }

      else if ((v6 & 0xE0) == 0x20)
      {
        v7 = "GUA: ";
      }

      else
      {
        v7 = "";
      }

      *buf = 136448771;
      v11 = "adv_ctl_nat64_prefix_add_remove";
      v12 = 2082;
      v13 = v7;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 1041;
      v17 = 6;
      v18 = 2097;
      v19 = data;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 1042;
      v23 = 2;
      v24 = 2098;
      v25 = data + 6;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 1041;
      v29 = 8;
      v30 = 2097;
      v31 = data + 8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: got nat64 prefix {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0x64u);
      return 0;
    }
  }

  else
  {
    v5 = 4294901756;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "adv_ctl_nat64_prefix_add_remove";
      v12 = 2048;
      v13 = data;
      v14 = 2048;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: invalid request, data[%p], data_len[%ld]", buf, 0x20u);
    }
  }

  return v5;
}

BOOL adv_xpc_get_ula(void *a1, _xpc_connection_s *a2, uint64_t a3)
{
  reply = xpc_dictionary_create_reply(a1);
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "status", 0);
    v7 = 0;
    v8 = 0;
    do
    {
      v8 = *(a3 + 345 + v7++) | (v8 << 8);
    }

    while (v7 != 5);
    xpc_dictionary_set_uint64(v6, "ula", v8);
    xpc_connection_send_message(a2, v6);
    xpc_release(v6);
  }

  else
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446210;
      v12 = "adv_xpc_get_ula";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: Unable to create reply dictionary.", &v11, 0xCu);
    }
  }

  return v6 != 0;
}

void adv_ctl_xpc_set_variable(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  if (!data)
  {
    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *__str = 136446722;
    v45 = "adv_ctl_xpc_set_variable";
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = length;
    v22 = "%{public}s: invalid request, data %p, len %zu";
    v23 = __str;
    v24 = v21;
    v25 = 32;
    goto LABEL_26;
  }

  v4 = data;
  v5 = length;
  if (length)
  {
    v6 = __str;
    v7 = 1;
    v8 = data;
    do
    {
      v9 = *v8++;
      v10 = snprintf(v6, &v50 - v6, "%02x ", v9);
      if (v7 >= v5)
      {
        break;
      }

      v6 += v10;
      ++v7;
    }

    while (v6 < &v50);
  }

  v11 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "adv_ctl_set_variable";
    v32 = 2082;
    v33 = __str;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: hexbuf: %{public}s", buf, 0x16u);
  }

  v12 = memchr(v4, 0, v5);
  if (!v12)
  {
    v26 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v31 = "adv_ctl_set_variable";
    v22 = "%{public}s: name not NUL-terminated";
LABEL_25:
    v23 = buf;
    v24 = v26;
    v25 = 12;
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = v12 + 1 - v4;
  if (v14 >= v5)
  {
    v26 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v31 = "adv_ctl_set_variable";
    v22 = "%{public}s: no value";
    goto LABEL_25;
  }

  v15 = memchr(v12 + 1, 0, v14);
  if (!v15)
  {
    v26 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v31 = "adv_ctl_set_variable";
    v22 = "%{public}s: value not NUL-terminated";
    goto LABEL_25;
  }

  v16 = v15;
  v17 = (v15 - v4);
  if (v15 - v4 != v5 - 1)
  {
    v27 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136447746;
    v31 = "adv_ctl_set_variable";
    v32 = 2048;
    v33 = v17;
    v34 = 2048;
    v35 = v5;
    v36 = 2048;
    v37 = v4;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v16;
    v42 = 2048;
    v43 = v14;
    v22 = "%{public}s: extra bytes at end of name/value buffer: %zd != %zd %p %p %p %zu";
    v23 = buf;
    v24 = v27;
    v25 = 72;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v22, v23, v25);
    return;
  }

  v18 = variables;
  if (variables)
  {
    v19 = 1;
    v20 = &variables;
    while (strcmp(v4, v18))
    {
      v20 = &(&variables)[4 * v19];
      v18 = *v20;
      ++v19;
      if (!*v20)
      {
        return;
      }
    }

    v28 = v20[2];
    if (v28)
    {
      (v28)(a1, v20, v13);
    }
  }
}

BOOL adv_ctl_start_thread_shutdown(void *a1, xpc_object_t object, uint64_t a3)
{
  *(a3 + 184) = object;
  xpc_retain(object);
  *(a3 + 192) = a1;
  xpc_retain(a1);
  v5 = *(a3 + 48);
  if (v5)
  {
    service_tracker_cancel_probes(v5);
  }

  v6 = *(a3 + 152);
  if (v6)
  {
    dnssd_client_cancel(v6);
    dnssd_client_release_(*(a3 + 152), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 708);
    *(a3 + 152) = 0;
  }

  for (i = 0; i != 3; ++i)
  {
    if (i)
    {
      if (i == 2)
      {
        v8 = 4;
        v9 = (a3 + 64);
      }

      else
      {
        v8 = 3;
        v9 = (a3 + 72);
      }
    }

    else
    {
      v8 = 2;
      v9 = (a3 + 56);
    }

    v10 = *v9;
    if (*v9)
    {
      service_publisher_stop_publishing(*v9);
      service_publisher_cancel(v10);
      service_publisher_release_(v10, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 736);
      v11 = *(a3 + 48);
      for (j = *(v11 + 48); j; j = *(j + 8))
      {
        if (*(j + 20) == v8)
        {
          v13 = *(v11 + 24);
          if (*(v13 + 417) == 1 && *(j + 16) == *(v13 + 408))
          {
            *(j + 50) = 1;
            *(v13 + 426) = 1;
          }
        }
      }

      *v9 = 0;
    }
  }

  adv_ctl_thread_shutdown_status_check(a3);
  v14 = *(a3 + 200);
  if (!v14)
  {
    v14 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/adv-ctl-server.c", 659);
    *(a3 + 200) = v14;
  }

  result = ioloop_add_wake_event(v14, a3, adv_ctl_thread_shutdown_continue, 0, 0x7D0u);
  *(a3 + 427) = 1;
  return result;
}

void adv_ctl_need_service_instance(void *a1, uint64_t a2)
{
  string = xpc_dictionary_get_string(a1, "name");
  v5 = xpc_dictionary_get_string(a1, "service-type");
  v6 = xpc_dictionary_get_BOOL(a1, "needed");
  v7 = v6;
  if (string && v5)
  {
    v9 = (a2 + 104);
    v8 = *(a2 + 104);
    if (v8)
    {
      while (1)
      {
        v10 = v8;
        if (!strcasecmp(v8[1], string))
        {
          v11 = strcasecmp(v10[2], v5);
          if (v11 == 0 && !v7)
          {
            *v9 = *v10;

            adv_ctl_wanted_service_free(v10);
            return;
          }

          if (!v11)
          {
            return;
          }
        }

        v8 = *v10;
        v9 = v10;
        if (!*v10)
        {
          if (!v7)
          {
            return;
          }

LABEL_14:
          v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x2E3B6731uLL);
          if (v13)
          {
            v14 = v13;
            v15 = strdup(string);
            if (v15)
            {
              v14[1] = v15;
              v16 = strdup(v5);
              if (v16)
              {
                v14[2] = v16;
                v17 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = 136447235;
                  v25 = "adv_ctl_wanted_service_allocate";
                  v26 = 2160;
                  v27 = 1752392040;
                  v28 = 2081;
                  v29 = string;
                  v30 = 2082;
                  v31 = v5;
                  v32 = 2048;
                  v33 = v14;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s%{public}s: %p", &v24, 0x34u);
                }

                *v10 = v14;
                v18 = *(a2 + 56);
                if (v18)
                {
                  service_publisher_wanted_service_added(v18);
                }

                return;
              }
            }

            v19 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v24 = 136446210;
              v25 = "strict_strdup";
              v20 = "%{public}s: strdup() failed";
              v21 = v19;
              v22 = 12;
              goto LABEL_27;
            }
          }

          else
          {
            v23 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v24 = 136446722;
              v25 = "adv_ctl_wanted_service_allocate";
              v26 = 2048;
              v27 = 1;
              v28 = 2048;
              v29 = 24;
              v20 = "%{public}s: strict_calloc(%zu, %zu) failed";
              v21 = v23;
              v22 = 32;
LABEL_27:
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, &v24, v22);
            }
          }

          __break(1u);
        }
      }
    }

    v10 = (a2 + 104);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a2 + 429) = v6;
    v12 = *(a2 + 56);

    service_publisher_wanted_service_added(v12);
  }
}

void adv_ctl_update_primary_resident(void *a1, uint64_t a2)
{
  v3 = xpc_dictionary_get_BOOL(a1, "primary");
  *(a2 + 430) = v3;
  v4 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (v3)
    {
      v5 = "true";
    }

    v6 = 136446466;
    v7 = "adv_ctl_update_primary_resident";
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: update primary resident to %{public}s", &v6, 0x16u);
  }
}

BOOL adv_ctl_get_host_service(void *a1, _xpc_connection_s *a2, void *a3)
{
  string = xpc_dictionary_get_string(a1, "host_name");
  v7 = xpc_dictionary_get_string(a1, "instance_name");
  v8 = xpc_dictionary_get_string(a1, "address");
  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "status", 0);
    v71 = a2;
    if (string)
    {
      v11 = a3[1];
      if (v11)
      {
        while (strcmp(*(v11 + 48), string) && strcmp(*(v11 + 56), string))
        {
          v11 = *(v11 + 32);
          if (!v11)
          {
            goto LABEL_35;
          }
        }

        v23 = 0;
        v22 = 1;
        LODWORD(v17) = -1;
        v24 = 1;
LABEL_38:
        *buf = 0;
        *&buf[8] = 0;
        clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
        if ((*buf - a3[47]) < 30)
        {
          v23 |= 0x100uLL;
        }

        if (!v22)
        {
          v35 = v71;
          if (string)
          {
            v36 = v10;
            v37 = 1;
          }

          else if (v7)
          {
            v36 = v10;
            v37 = 2;
          }

          else
          {
            if (!v8)
            {
              goto LABEL_59;
            }

            v36 = v10;
            v37 = 3;
          }

          xpc_dictionary_set_int64(v36, "error_code", v37);
          goto LABEL_59;
        }

        if (*(v11 + 256))
        {
          v33 = v10;
          v34 = 4;
LABEL_54:
          xpc_dictionary_set_int64(v33, "error_code", v34);
LABEL_55:
          v35 = v71;
LABEL_59:
          xpc_dictionary_set_uint64(v10, "status_bitmap", v23);
          xpc_connection_send_message(v35, v10);
          xpc_release(v10);
          return 1;
        }

        v33 = v10;
        if (*(v11 + 257) != 1)
        {
          v34 = 5;
          goto LABEL_54;
        }

        xpc_dictionary_set_int64(v10, "error_code", 0);
        v38 = *(v11 + 216);
        v39 = a3[43];
        v40 = v38 != v39;
        if (v38 != v39)
        {
          v23 |= 0x200uLL;
        }

        v41 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v41, "hostname", *(v11 + 48));
        xpc_dictionary_set_string(v41, "regname", *(v11 + 56));
        xpc_dictionary_set_uint64(v41, "lease_time", *(v11 + 248));
        v42 = *(v11 + 104);
        if (v42)
        {
          v43 = *(v42 + 4);
        }

        else
        {
          v43 = 0;
        }

        xpc_dictionary_set_uint64(v41, "num_instances", v43);
        v44 = *(v11 + 88);
        if (v44)
        {
          v45 = *(v44 + 4);
        }

        else
        {
          v45 = 0;
        }

        xpc_dictionary_set_uint64(v41, "num_addresses", v45);
        xpc_dictionary_set_value(v10, "host", v41);
        if (v41)
        {
          xpc_release(v41);
        }

        v46 = *(v11 + 104);
        if (!v46 || *(v46 + 4) < 1)
        {
          goto LABEL_86;
        }

        v47 = xpc_array_create(0, 0);
        if (v47)
        {
          v48 = v47;
          v49 = *(*(v11 + 104) + 4);
          if (v24)
          {
            v50 = 0;
          }

          else
          {
            v50 = v17;
          }

          if (!v24)
          {
            v49 = v17 + 1;
          }

          v51 = v49 - v50;
          if (v49 > v50)
          {
            v52 = 8 * v50;
            do
            {
              v53 = *(*(*(v11 + 104) + 8) + v52);
              if (v53)
              {
                v54 = xpc_dictionary_create(0, 0, 0);
                if (!v54)
                {
                  v69 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                  {
                    v70 = *(v53 + 64);
                    *buf = 136446723;
                    *&buf[4] = "adv_ctl_get_host_service";
                    *&buf[12] = 2160;
                    *&buf[14] = 1752392040;
                    v76 = 2081;
                    v77 = v70;
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%{public}s: failed to allocate instance dictionary for %{private, mask.hash}s", buf, 0x20u);
                  }

                  xpc_release(v48);
LABEL_105:
                  xpc_release(v10);
                  return 0;
                }

                v55 = v54;
                xpc_dictionary_set_string(v54, "instance_name", *(v53 + 64));
                xpc_dictionary_set_string(v55, "service_type", *(v53 + 72));
                xpc_dictionary_set_uint64(v55, "lease_time", *(v53 + 120));
                v56 = "replicated";
                if (!v40)
                {
                  if (*(v53 + 134))
                  {
                    v56 = "anycast";
                  }

                  else
                  {
                    v56 = "unicast";
                  }
                }

                xpc_dictionary_set_string(v55, "regtype", v56);
                xpc_array_append_value(v48, v55);
                xpc_release(v55);
              }

              v52 += 8;
              --v51;
            }

            while (v51);
          }

          xpc_dictionary_set_value(v10, "instances", v48);
          xpc_release(v48);
LABEL_86:
          v57 = *(v11 + 88);
          if (!v57 || *(v57 + 4) < 1)
          {
            goto LABEL_55;
          }

          empty = xpc_array_create_empty();
          if (empty)
          {
            v59 = empty;
            v60 = *(v11 + 88);
            if (*(v60 + 4) >= 1)
            {
              v61 = 0;
              do
              {
                v62 = *(*(v60 + 8) + 8 * v61);
                if (v62)
                {
                  if (*(v62 + 72) == 1)
                  {
                    v63 = 2;
                  }

                  else
                  {
                    v63 = 30;
                  }

                  inet_ntop(v63, *(v62 + 64), buf, 0x2Fu);
                  xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
                  v60 = *(v11 + 88);
                }

                ++v61;
              }

              while (v61 < *(v60 + 4));
            }

            xpc_dictionary_set_value(v10, "addresses", v59);
            xpc_release(v59);
            goto LABEL_55;
          }

          v64 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_105;
          }

          v68 = *(v11 + 48);
          *v72 = 136446723;
          *&v72[4] = "adv_ctl_get_host_service";
          *&v72[12] = 2160;
          *&v72[14] = 1752392040;
          v73 = 2081;
          v74 = v68;
          v65 = "%{public}s: failed to allocate addresses array for %{private, mask.hash}s";
          v67 = v72;
LABEL_104:
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, v65, v67, 0x20u);
          goto LABEL_105;
        }

        v64 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        v66 = *(v11 + 48);
        *buf = 136446723;
        *&buf[4] = "adv_ctl_get_host_service";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        v76 = 2081;
        v77 = v66;
        v65 = "%{public}s: failed to allocate instances array for %{private, mask.hash}s";
LABEL_103:
        v67 = buf;
        goto LABEL_104;
      }
    }

    else if (v7)
    {
      v11 = a3[1];
      if (v11)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(v11 + 104);
          if (v15)
          {
            v16 = *(v15 + 4);
            if (v16 >= 1)
            {
              break;
            }
          }

LABEL_19:
          v11 = *(v11 + 32);
          if (!v11)
          {
            v22 = 0;
            v23 = 0;
            v24 = v14 == 0;
            goto LABEL_37;
          }
        }

        v17 = 0;
        v18 = v16 & ~(v16 >> 31);
        v19 = *(v15 + 8);
        while (1)
        {
          v20 = *(v19 + 8 * v17);
          if (v20)
          {
            v21 = strcmp(*(v20 + 64), v7);
            v14 = v20;
            if (!v21)
            {
              break;
            }
          }

          if (v18 == ++v17)
          {
            goto LABEL_19;
          }
        }

        v23 = 0;
        v24 = 0;
        v22 = 1;
        goto LABEL_38;
      }
    }

    else
    {
      if (!v8)
      {
        v22 = 0;
        v23 = 0;
        v11 = 0;
LABEL_36:
        v24 = 1;
LABEL_37:
        LODWORD(v17) = -1;
        goto LABEL_38;
      }

      *v72 = 0;
      *&v72[8] = 0;
      if (inet_pton(30, v8, v72) != 1)
      {
        v64 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        *buf = 136446723;
        *&buf[4] = "adv_ctl_get_host_service";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        v76 = 2081;
        v77 = v8;
        v65 = "%{public}s: invalid ipv6 address %{private, mask.hash}s";
        goto LABEL_103;
      }

      v11 = a3[1];
      if (v11)
      {
        while (1)
        {
          v25 = *(v11 + 88);
          if (v25)
          {
            v26 = *(v25 + 4);
            if (v26 >= 1)
            {
              break;
            }
          }

LABEL_34:
          v11 = *(v11 + 32);
          if (!v11)
          {
            goto LABEL_35;
          }
        }

        v27 = v26 & ~(v26 >> 31);
        v28 = *(v25 + 8);
        while (1)
        {
          if (*(*v28 + 72) == 28)
          {
            v29 = *(*v28 + 64);
            v31 = *v29;
            v30 = v29[1];
            if (*v72 == v31 && *&v72[8] == v30)
            {
              break;
            }
          }

          v28 += 8;
          if (!--v27)
          {
            goto LABEL_34;
          }
        }

        v23 = (v26 != 1) << 7;
        v22 = 1;
        goto LABEL_36;
      }
    }

LABEL_35:
    v22 = 0;
    v23 = 0;
    goto LABEL_36;
  }

  v12 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446210;
    *&buf[4] = "adv_ctl_get_host_service";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: adv_xpc_get_host_service: Unable to create reply dictionary.", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t adv_xpc_restart(uint64_t a1)
{
  result = ioloop_create_xpc_service();
  *(a1 + 160) = result;
  if (!result)
  {
    v3 = adv_xpc_wakeup;

    return ioloop_add_wake_event(v3, a1, adv_xpc_restart, 0, 0x2710u);
  }

  return result;
}

void keychain_key_remove()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v1 = Mutable;
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassKey);
    CFDictionaryAddValue(v1, kSecAttrAccessGroup, @"com.apple.srp-mdns-proxy");
    CFDictionaryAddValue(v1, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
    CFDictionaryAddValue(v1, kSecUseDataProtectionKeychain, kCFBooleanTrue);
    CFDictionaryAddValue(v1, kSecAttrSynchronizable, kCFBooleanFalse);
    SecItemDelete(v1);
    CFDictionaryRemoveValue(v1, kSecAttrAccessible);
    SecItemDelete(v1);

    CFRelease(v1);
  }
}

uint64_t keychain_identity_query(int a1, uint64_t *a2, double *a3)
{
  v49 = 0;
  result = 0;
  if (a1 || (Mutable = 0, v7 = 4294967246, a2) && a3)
  {
    v7 = 4294899624;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (v8)
      {
        v9 = v8;
        v46 = a2;
        v47 = a3;
        v10 = kSecReturnRef;
        CFDictionaryAddValue(Mutable, kSecReturnRef, kCFBooleanTrue);
        v11 = kSecReturnAttributes;
        CFDictionaryAddValue(Mutable, kSecReturnAttributes, kCFBooleanTrue);
        CFDictionaryAddValue(Mutable, kSecUseDataProtectionKeychain, kCFBooleanTrue);
        CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
        CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.srp-mdns-proxy");
        CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
        CFDictionaryAddValue(Mutable, kSecClass, kSecClassKey);
        CFDictionaryAddValue(Mutable, kSecAttrSynchronizable, kCFBooleanFalse);
        v12 = SecItemCopyMatching(Mutable, &result);
        if (!a1)
        {
          v7 = v12;
          if (v12)
          {
            goto LABEL_59;
          }
        }

        if (result)
        {
          Count = CFArrayGetCount(result);
          if (Count >= 1)
          {
            v52.length = Count;
            v52.location = 0;
            CFArrayAppendArray(v9, result, v52);
          }
        }

        if (a1 == 1)
        {
          CFDictionaryRemoveValue(Mutable, kSecAttrAccessible);
          if (!SecItemCopyMatching(Mutable, &v49))
          {
            if (v49)
            {
              v39 = CFArrayGetCount(v49);
              if (v39 >= 1)
              {
                v40 = v39;
                for (i = 0; i != v40; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v49, i);
                  Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrAccessible);
                  if (!Value || CFStringCompare(Value, kSecAttrAccessibleAfterFirstUnlock, 0))
                  {
                    CFArrayAppendValue(v9, ValueAtIndex);
                  }
                }
              }
            }
          }

          v48 = CFArrayGetCount(v9);
          v11 = kSecReturnAttributes;
          v10 = kSecReturnRef;
          if (v48 < 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v48 = CFArrayGetCount(v9);
          if (v48 == 1)
          {
            v48 = 1;
          }

          else
          {
            v14 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *cf = 134217984;
              *&cf[4] = v48;
              _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Have more than one TLS private keys -- count: %ld", cf, 0xCu);
            }
          }
        }

        CFDictionaryReplaceValue(Mutable, kSecClass, kSecClassCertificate);
        CFDictionaryReplaceValue(Mutable, kSecAttrSynchronizable, kCFBooleanTrue);
        CFDictionaryAddValue(Mutable, kSecAttrSyncViewHint, kSecAttrViewHintLimitedPeersAllowed);
        if (a1 == 1)
        {
          CFDictionaryRemoveValue(Mutable, v10);
          CFDictionaryRemoveValue(Mutable, v11);
          CFDictionaryRemoveValue(Mutable, kSecMatchLimit);
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (v48 >= 1)
        {
          v16 = Current;
          v17 = 0;
          AbsoluteTime = -1.0;
          while (1)
          {
            v19 = CFArrayGetValueAtIndex(v9, v17);
            if (!v19)
            {
              goto LABEL_54;
            }

            v20 = v19;
            v21 = CFGetTypeID(v19);
            if (v21 != CFDictionaryGetTypeID())
            {
              goto LABEL_54;
            }

            v22 = CFDictionaryGetValue(v20, kSecAttrAccessible);
            if (v22)
            {
              if (CFStringCompare(v22, kSecAttrAccessibleAfterFirstUnlock, 0))
              {
                v23 = kSecAttrAccessibleAlways;
              }

              else
              {
                v23 = kSecAttrAccessibleAfterFirstUnlock;
              }

              CFDictionarySetValue(Mutable, kSecAttrAccessible, v23);
            }

            if (!CFDictionaryGetValue(v20, kSecValueRef))
            {
              goto LABEL_54;
            }

            v24 = CFDictionaryGetValue(v20, kSecAttrLabel);
            if (!v24)
            {
              goto LABEL_54;
            }

            v25 = v24;
            if (!CFStringHasPrefix(v24, @"Key "))
            {
              goto LABEL_54;
            }

            if (!a1)
            {
              v26 = CFDictionaryGetValue(v20, kSecAttrCreationDate);
              if (!v26 || v16 - CFDateGetAbsoluteTime(v26) > 1088640.0)
              {
                goto LABEL_54;
              }
            }

            MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v25);
            if (!MutableCopy)
            {
              goto LABEL_54;
            }

            v28 = MutableCopy;
            CFStringTrim(MutableCopy, @"Key ");
            CFStringInsert(v28, 0, @"Certificate ");
            CFDictionarySetValue(Mutable, kSecAttrLabel, v28);
            CFRelease(v28);
            if (a1)
            {
              SecItemDelete(Mutable);
              goto LABEL_54;
            }

            *cf = 0;
            if (SecItemCopyMatching(Mutable, cf))
            {
              break;
            }

            if (!*cf)
            {
              goto LABEL_57;
            }

            v30 = CFGetTypeID(*cf);
            if (v30 != CFArrayGetTypeID())
            {
              goto LABEL_57;
            }

            v31 = CFArrayGetCount(*cf);
            if (!v31)
            {
              goto LABEL_57;
            }

            if (v31 != 1)
            {
              break;
            }

            v32 = CFArrayGetValueAtIndex(*cf, 0);
            v29 = v32;
            if (v32)
            {
              v33 = CFGetTypeID(v32);
              if (v33 != CFDictionaryGetTypeID())
              {
                break;
              }

              v34 = CFDictionaryGetValue(v29, kSecAttrCreationDate);
              if (!v34)
              {
                break;
              }

              v35 = v34;
              v36 = CFDictionaryGetValue(v29, kSecValueRef);
              v29 = v36;
              if (v36)
              {
                CFRetain(v36);
                AbsoluteTime = CFDateGetAbsoluteTime(v35);
              }
            }

LABEL_51:
            if (*cf)
            {
              CFRelease(*cf);
            }

            if (v29)
            {
              if (AbsoluteTime >= 0.0)
              {
                v45 = SecIdentityCreate();
                v44 = 4294899624;
                if (v45)
                {
                  v44 = 0;
                  *v46 = v45;
                  *v47 = AbsoluteTime;
                }
              }

              else
              {
                v44 = 4294941996;
              }

              CFRelease(v29);
              v7 = v44;
              goto LABEL_59;
            }

LABEL_54:
            if (v48 == ++v17)
            {
              goto LABEL_55;
            }
          }

          v29 = 0;
          goto LABEL_51;
        }

LABEL_55:
        if (!a1)
        {
LABEL_58:
          v7 = 4294941996;
          goto LABEL_59;
        }

        keychain_key_remove();
LABEL_57:
        v7 = 0;
LABEL_59:
        CFRelease(v9);
        if (v49)
        {
          CFRelease(v49);
          v49 = 0;
        }
      }

      else
      {
        v7 = 4294960567;
      }
    }
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7 == -25308)
  {
    v37 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "The device has to be unlocked since the last reboot to access keychain.", cf, 2u);
    }
  }

  return v7;
}

BOOL dns_u16_parse(uint64_t a1, unsigned int a2, unsigned int *a3, _WORD *a4)
{
  v5 = *a3;
  v6 = v5 + 2;
  if (v5 + 2 > a2)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136446722;
      v11 = "dns_u16_parse";
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: dns_u16_parse: not enough room: %u > %u.\n", &v10, 0x18u);
    }
  }

  else
  {
    v7 = *(a1 + (v5 + 1)) | (*(a1 + v5) << 8);
    *a3 = v6;
    *a4 = v7;
  }

  return v6 <= a2;
}

void *dns_label_create_(void *a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3;
  v7 = a3 + 10;
  v8 = malloc_type_calloc(1uLL, v7, 0xAA4EBD5FuLL);
  if (!v8)
  {
    v12 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "dns_label_create_";
      v15 = 2048;
      v16 = 1;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v13, 0x20u);
    }

    __break(1u);
  }

  v9 = v8;
  v8[8] = v3;
  v10 = v8 + 9;
  result = memcpy(v8 + 9, a2, v6);
  v10[v6] = 0;
  *a1 = v9;
  return result;
}

uint64_t dns_name_parse_(void **a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v10 = 0;
  v6 = dns_name_parse_in(&v10, a2, a3, a4, a5);
  v7 = v10;
  if (v6)
  {
    *a1 = v10;
  }

  else if (v10)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  return v6;
}

uint64_t dns_name_parse_in(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v10 = *a4;
  while (1)
  {
    if (v10 == a3)
    {
      return 0;
    }

    v11 = *(a2 + v10);
    if (v11 >= 0xC0)
    {
      break;
    }

    if (v11 >= 0x40)
    {
      v19 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v32 = "dns_name_parse_in";
      v33 = 1024;
      v34 = v11;
      v18 = "%{public}s: invalid label type: %x\n";
      goto LABEL_21;
    }

    v12 = v10 + 1;
    v13 = v12 + v11;
    if (v12 + v11 > a3)
    {
      v17 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v32 = "dns_label_parse_";
        v33 = 1024;
        v34 = v13;
        v35 = 1024;
        v36 = a3;
        v18 = "%{public}s: claimed length of label is too long: %u > %u.\n";
        goto LABEL_16;
      }

      return 0;
    }

    v30 = 0;
    dns_label_create_(&v30, (a2 + v12), v11);
    v10 = v11 + *a4 + 1;
    *a4 = v10;
    v14 = v30;
    if (!v30)
    {
      return 0;
    }

    *a1 = v30;
    a1 = v14;
    if (!*(v14 + 8))
    {
      return 1;
    }
  }

  v16 = v10 + 2;
  if (v10 + 2 > a3)
  {
    v17 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v32 = "dns_name_parse_in";
    v33 = 1024;
    v34 = v16;
    v35 = 1024;
    v36 = a3;
    v18 = "%{public}s: incomplete compression pointer: %u > %u";
LABEL_16:
    v20 = v17;
    goto LABEL_17;
  }

  v22 = *(a2 + v10 + 1) | ((v11 & 0x3F) << 8);
  *a4 = v16;
  v23 = v22 - 11;
  if (v22 <= 0xB)
  {
    v19 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v32 = "dns_name_parse_in";
    v33 = 1024;
    v34 = v22;
    v18 = "%{public}s: compression pointer points into header: %u.\n";
LABEL_21:
    v20 = v19;
    v21 = 18;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v18, buf, v21);
    return 0;
  }

  v24 = v22 - 12;
  LODWORD(v30) = v22 - 12;
  if (v22 - 12 >= a5)
  {
    v27 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *buf = 136446722;
      v32 = "dns_name_parse_in";
      v33 = 1024;
      v34 = v22 - 12;
      v35 = 1024;
      v36 = a5;
      v18 = "%{public}s: compression pointer points forward: %u >= %u.\n";
      goto LABEL_36;
    }
  }

  else
  {
    v25 = *(a2 + v24);
    if (v25 >= 0x40)
    {
      v28 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        if (v23 >= a3)
        {
          v29 = 255;
        }

        else
        {
          v29 = *(a2 + v23);
        }

        *buf = 136446978;
        v32 = "dns_name_parse_in";
        v33 = 1024;
        v34 = v22 - 12;
        v35 = 1024;
        v36 = v25;
        v37 = 1024;
        v38 = v29;
        v18 = "%{public}s: compression pointer points into pointer: %u %02x%02x.\n";
        v20 = v28;
        v21 = 30;
        goto LABEL_22;
      }
    }

    else
    {
      if (v24 + v25 < a5 && v24 + v25 < v16)
      {
        return dns_name_parse_in(a1, a2, a3, &v30, v22 - 12);
      }

      v27 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        *buf = 136446722;
        v32 = "dns_name_parse_in";
        v33 = 1024;
        v34 = v22 - 12;
        v35 = 1024;
        v36 = v25;
        v18 = "%{public}s: compression pointer points to something that goes past current position: %u %u\n";
LABEL_36:
        v20 = v27;
LABEL_17:
        v21 = 24;
        goto LABEL_22;
      }
    }
  }

  return result;
}

BOOL dns_u8_parse(uint64_t a1, unsigned int a2, unsigned int *a3, _BYTE *a4)
{
  v5 = *a3;
  v6 = v5 + 1;
  if (v5 + 1 > a2)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136446722;
      v11 = "dns_u8_parse";
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: dns_u8_parse: not enough room: %u > %u.\n", &v10, 0x18u);
    }
  }

  else
  {
    v7 = *(a1 + v5);
    *a3 = v6;
    *a4 = v7;
  }

  return v6 <= a2;
}

BOOL dns_u32_parse(uint64_t a1, unsigned int a2, unsigned int *a3, int *a4)
{
  v5 = *a3;
  v6 = v5 + 4;
  if (v5 + 4 > a2)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136446722;
      v11 = "dns_u32_parse";
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: dns_u32_parse: not enough room: %u > %u.\n", &v10, 0x18u);
    }
  }

  else
  {
    v7 = (*(a1 + v5) << 24) | (*(a1 + (v5 + 1)) << 16) | (*(a1 + (v5 + 2)) << 8) | *(a1 + (v5 + 3));
    *a3 = v6;
    *a4 = v7;
  }

  return v6 <= a2;
}

uint64_t dns_rdata_parse_data_(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, size_t size, int a6)
{
  v7 = *a3;
  v8 = a4 - *a3;
  if (a4 < *a3)
  {
    v9 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v34 = 136446722;
      i = "dns_rdata_parse_data_";
      v36 = 1024;
      v37 = a4;
      v38 = 1024;
      v39 = v7;
      v11 = "%{public}s: target %u < *offp %u";
      v12 = v9;
      v13 = 24;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v11, &v34, v13);
      return 0;
    }

    return result;
  }

  v14 = size;
  v18 = *(a1 + 8);
  if (v18 > 0xF)
  {
    if (*(a1 + 8) <= 0x18u)
    {
      if (v18 == 16)
      {
        if (v8 != size)
        {
          v25 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v34 = 136446722;
            i = "dns_rdata_parse_data_";
            v36 = 1024;
            v37 = v14;
            v38 = 1024;
            v39 = v8;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s: TXT record length %u doesn't match remaining space %d", &v34, 0x18u);
          }
        }

        if (v8 >= 0x100)
        {
          v26 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v34 = 136446466;
            i = "dns_rdata_parse_data_";
            v36 = 1024;
            v37 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s: TXT record length %u is longer than 255", &v34, 0x12u);
          }
        }

        *(a1 + 16) = v8;
        v22 = a4;
        if (!v8)
        {
          goto LABEL_70;
        }

        v27 = malloc_type_malloc(v8, 0xE1DD6F78uLL);
        if (!v27)
        {
          v33 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_86;
          }

          v34 = 136446210;
          i = "dns_rdata_parse_data_";
          goto LABEL_85;
        }

        *(a1 + 24) = v27;
        memcpy(v27, (a2 + *a3), *(a1 + 16));
LABEL_69:
        v22 = a4;
        goto LABEL_70;
      }

      if (v18 != 24)
      {
        goto LABEL_65;
      }

      *(a1 + 48) = a6;
      result = dns_u16_parse(a2, a4, a3, (a1 + 16));
      if (!result)
      {
        return result;
      }

      result = dns_u8_parse(a2, a4, a3, (a1 + 18));
      if (!result)
      {
        return result;
      }

      result = dns_u8_parse(a2, a4, a3, (a1 + 19));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 20));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 24));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 28));
      if (!result)
      {
        return result;
      }

      result = dns_u16_parse(a2, a4, a3, (a1 + 32));
      if (!result)
      {
        return result;
      }

      result = dns_name_parse_((a1 + 40), a2, a4, a3, *a3);
      if (!result)
      {
        return result;
      }

      v23 = *a3;
      v20 = a4 - *a3;
      *(a1 + 52) = v20;
      if (a4 != v23)
      {
        v24 = malloc_type_malloc(v20, 0xD1E9E795uLL);
        if (!v24)
        {
          v33 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_86;
          }

          v34 = 136446210;
          i = "dns_rdata_parse_data_";
          goto LABEL_85;
        }

        *(a1 + 56) = v24;
        memcpy(v24, (a2 + *a3), *(a1 + 52));
        LODWORD(v20) = *(a1 + 52);
      }
    }

    else
    {
      if (v18 == 33)
      {
        result = dns_u16_parse(a2, a4, a3, (a1 + 24));
        if (!result)
        {
          return result;
        }

        result = dns_u16_parse(a2, a4, a3, (a1 + 26));
        if (!result)
        {
          return result;
        }

        result = dns_u16_parse(a2, a4, a3, (a1 + 28));
        if (!result)
        {
          return result;
        }

        v7 = *a3;
        goto LABEL_25;
      }

      if (v18 == 28)
      {
        if (size == 16)
        {
          *(a1 + 16) = *(a2 + v7);
          goto LABEL_69;
        }

        v32 = global_os_log;
        result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        v34 = 136446466;
        i = "dns_rdata_parse_data_";
        v36 = 1024;
        v37 = v14;
        v11 = "%{public}s: dns_rdata_parse: AAAA rdlen is not 16: %u";
        goto LABEL_79;
      }

      if (v18 != 25)
      {
        goto LABEL_65;
      }

      result = dns_u16_parse(a2, a4, a3, (a1 + 16));
      if (!result)
      {
        return result;
      }

      result = dns_u8_parse(a2, a4, a3, (a1 + 18));
      if (!result)
      {
        return result;
      }

      result = dns_u8_parse(a2, a4, a3, (a1 + 19));
      if (!result)
      {
        return result;
      }

      v19 = *a3;
      v20 = a4 - *a3;
      *(a1 + 20) = v20;
      if (a4 != v19)
      {
        v21 = malloc_type_malloc(v20, 0xEB62887FuLL);
        if (!v21)
        {
          goto LABEL_87;
        }

        *(a1 + 24) = v21;
        memcpy(v21, (a2 + *a3), *(a1 + 20));
        LODWORD(v20) = *(a1 + 20);
      }
    }

    v22 = *a3 + v20;
LABEL_70:
    *a3 = v22;
    goto LABEL_71;
  }

  if (*(a1 + 8) <= 4u)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        goto LABEL_25;
      }

LABEL_65:
      if (!size)
      {
LABEL_68:
        *(a1 + 24) = v14;
        goto LABEL_69;
      }

      v28 = malloc_type_malloc(size, 0x47086A3FuLL);
      if (v28)
      {
        *(a1 + 16) = v28;
        memcpy(v28, (a2 + *a3), v14);
        goto LABEL_68;
      }

      v33 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      v34 = 136446210;
      for (i = "dns_rdata_parse_data_"; ; i = "dns_rdata_parse_data_")
      {
LABEL_85:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: strict allocator failed", &v34, 0xCu);
        do
        {
LABEL_86:
          __break(1u);
LABEL_87:
          v33 = global_os_log;
        }

        while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
        v34 = 136446210;
      }
    }

    if (size == 4)
    {
      *(a1 + 16) = *(a2 + v7);
      goto LABEL_69;
    }

    v32 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v34 = 136446466;
    i = "dns_rdata_parse_data_";
    v36 = 1024;
    v37 = v14;
    v11 = "%{public}s: dns_rdata_parse: A rdlen is not 4: %u";
LABEL_79:
    v12 = v32;
    v13 = 18;
    goto LABEL_4;
  }

  if (v18 != 5)
  {
    if (v18 == 6)
    {
      result = dns_name_parse_((a1 + 16), a2, a4, a3, v7);
      if (!result)
      {
        return result;
      }

      result = dns_name_parse_((a1 + 24), a2, a4, a3, *a3);
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 32));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 36));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 40));
      if (!result)
      {
        return result;
      }

      result = dns_u32_parse(a2, a4, a3, (a1 + 44));
      if (!result)
      {
        return result;
      }

      if (!dns_u32_parse(a2, a4, a3, (a1 + 48)))
      {
        return 0;
      }

      goto LABEL_71;
    }

    if (v18 != 12)
    {
      goto LABEL_65;
    }
  }

LABEL_25:
  if ((dns_name_parse_((a1 + 16), a2, a4, a3, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v29 = *a3;
  if (*a3 == a4)
  {
    return 1;
  }

  v30 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v31 = *(a1 + 8);
    v34 = 136446978;
    i = "dns_rdata_parse_data_";
    v36 = 1024;
    v37 = v31;
    v38 = 1024;
    v39 = a4;
    v40 = 1024;
    v41 = v29;
    v11 = "%{public}s: dns_rdata_parse: parse for rrtype %d not fully contained: %u %u";
    v12 = v30;
    v13 = 30;
    goto LABEL_4;
  }

  return result;
}

uint64_t dns_rr_parse_()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = *v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  result = dns_name_parse_(v0, v7, v5, v3, *v3);
  if (result)
  {
    result = dns_u16_parse(v8, v6, v4, (v9 + 8));
    if (result)
    {
      result = dns_u16_parse(v8, v6, v4, (v9 + 10));
      if (result)
      {
        if (!v2)
        {
          goto LABEL_75;
        }

        result = dns_u32_parse(v8, v6, v4, (v9 + 12));
        if (result)
        {
          *buf = 0;
          if (!dns_u16_parse(v8, v6, v4, buf))
          {
            return 0;
          }

          v12 = *v4 + *buf;
          if (v12 > v6)
          {
            return 0;
          }

          result = dns_rdata_parse_data_(v9, v8, v4, v12, *buf, v10);
          if (result)
          {
LABEL_75:
            if (*v9)
            {
              dns_name_print_to_limit(*v9, 0, v47, 0x3F2uLL);
            }

            else
            {
              strcpy(v47, "<null>");
            }

            v13 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v9 + 8);
              v15 = *(v9 + 10);
              v16 = "";
              *&buf[4] = "dns_rr_parse_";
              *buf = 136447491;
              if (v2)
              {
                v16 = "  rrdata:";
              }

              v49 = 1024;
              v50 = v14;
              v51 = 1024;
              v52 = v15;
              v53 = 2160;
              v54 = 1752392040;
              v55 = 2081;
              v56 = v47;
              v57 = 2082;
              v58 = v16;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: rrtype: %u  qclass: %u  name: %{private, mask.hash}s%{public}s", buf, 0x36u);
            }

            if (!v2)
            {
              return 1;
            }

            v17 = *(v9 + 8);
            if (v17 <= 0xF)
            {
              if (*(v9 + 8) > 5u)
              {
                if (v17 == 6)
                {
                  dns_name_print_to_limit(*(v9 + 16), 0, v59, 0x3F2uLL);
                  snprintf(buf, 0x800uLL, "SOA %s", v59);
                  dns_name_print_to_limit(*(v9 + 24), 0, v59, 0x3F2uLL);
                  snprintf(buf, 0x800uLL, "%s %u %d %d %d %d", v59, *(v9 + 32), *(v9 + 36), *(v9 + 40), *(v9 + 44), *(v9 + 48));
                  v20 = &buf[strlen(buf)];
                  goto LABEL_64;
                }

                if (v17 != 12)
                {
                  goto LABEL_68;
                }

                dns_name_print_to_limit(*(v9 + 16), 0, v59, 0x3F2uLL);
                snprintf(buf, 0x800uLL, "PTR %s");
              }

              else if (v17 == 1)
              {
                inet_ntop(2, (v9 + 16), v59, 0x2Eu);
                snprintf(buf, 0x800uLL, "A %s");
              }

              else
              {
                if (v17 != 5)
                {
                  goto LABEL_68;
                }

                dns_name_print_to_limit(*(v9 + 16), 0, v59, 0x3F2uLL);
                snprintf(buf, 0x800uLL, "CNAME %s");
              }
            }

            else
            {
              if (*(v9 + 8) <= 0x18u)
              {
                if (v17 == 16)
                {
                  strcpy(buf, "TXT ");
                  v33 = strlen(buf);
                  v20 = &buf[v33];
                  v34 = 2048 - v33;
                  if (*(v9 + 16))
                  {
                    v35 = 0;
                    do
                    {
                      v36 = *(*(v9 + 24) + v35);
                      if ((v36 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v36] & 0x40000) != 0)
                      {
                        if (v34 >= 2)
                        {
                          *v20++ = v36;
                          --v34;
                        }
                      }

                      else
                      {
                        snprintf(v20, v34, "<%x>", *(*(v9 + 24) + v35));
                        v37 = strlen(v20);
                        v20 += v37;
                        v34 -= v37;
                      }

                      ++v35;
                    }

                    while (v35 < *(v9 + 16));
                  }

                  if (v34 <= 1)
                  {
                    goto LABEL_64;
                  }

                  v31 = 34;
LABEL_61:
                  *v20++ = v31;
                  goto LABEL_64;
                }

                if (v17 == 24)
                {
                  dns_name_print_to_limit(*(v9 + 40), 0, v59, 0x3F2uLL);
                  snprintf(buf, 0x800uLL, "SIG %d %d %d %lu %lu %lu %d %s", *(v9 + 16), *(v9 + 18), *(v9 + 19), *(v9 + 20), *(v9 + 24), *(v9 + 28), *(v9 + 32), v59);
                  v26 = strlen(buf);
                  v20 = &buf[v26];
                  v21 = 2048 - v26;
                  if (*(v9 + 52))
                  {
                    v27 = 0;
                    do
                    {
                      v28 = *(v9 + 56);
                      if (v27)
                      {
                        v29 = v28[v27];
                        snprintf(v20, v21, " %02x");
                      }

                      else
                      {
                        v44 = *v28;
                        snprintf(v20, v21, "%d [%02x");
                      }

                      v30 = strlen(v20);
                      v20 += v30;
                      v21 -= v30;
                      ++v27;
                    }

                    while (v27 < *(v9 + 52));
                  }

                  goto LABEL_45;
                }

LABEL_68:
                snprintf(buf, 0x800uLL, "<rrtype %d>:", *(v9 + 8));
                v39 = strlen(buf);
                v20 = &buf[v39];
                v40 = 2048 - v39;
                if (*(v9 + 24))
                {
                  v41 = 0;
                  do
                  {
                    snprintf(v20, v40, " %02x", *(*(v9 + 16) + v41));
                    v42 = strlen(v20);
                    v20 += v42;
                    v40 -= v42;
                    ++v41;
                  }

                  while (v41 < *(v9 + 24));
                }

                else
                {
                  snprintf(v20, v40, " <none>");
                  v20 += strlen(v20);
                }

                goto LABEL_64;
              }

              switch(v17)
              {
                case 0x21u:
                  dns_name_print_to_limit(*(v9 + 16), 0, v59, 0x3F2uLL);
                  v32 = *(v9 + 24);
                  v46 = *(v9 + 28);
                  v45 = *(v9 + 26);
                  snprintf(buf, 0x800uLL, "SRV %d %d %d %s");
                  break;
                case 0x1Cu:
                  inet_ntop(30, (v9 + 16), v59, 0x2Eu);
                  snprintf(buf, 0x800uLL, "AAAA %s");
                  break;
                case 0x19u:
                  v18 = *(v9 + 16);
                  snprintf(buf, 0x800uLL, "KEY <AC %d> <Z %d> <XT %d> <ZZ %d> <NAMTYPE %d> <ZZZZ %d> <ORY %d> %d %d ", v18 >> 14, (v18 >> 13) & 1, (v18 >> 12) & 1, (v18 >> 10) & 3, (v18 >> 8) & 3, v18 >> 4, v18 & 0xF, *(v9 + 18), *(v9 + 19));
                  v19 = strlen(buf);
                  v20 = &buf[v19];
                  v21 = 2048 - v19;
                  if (*(v9 + 20))
                  {
                    v22 = 0;
                    do
                    {
                      v23 = *(v9 + 24);
                      if (v22)
                      {
                        v24 = v23[v22];
                        snprintf(v20, v21, " %02x");
                      }

                      else
                      {
                        v43 = *v23;
                        snprintf(v20, v21, "%d [%02x");
                      }

                      v25 = strlen(v20);
                      v20 += v25;
                      v21 -= v25;
                      ++v22;
                    }

                    while (v22 < *(v9 + 20));
                  }

LABEL_45:
                  if (v21 <= 1)
                  {
                    goto LABEL_64;
                  }

                  v31 = 93;
                  goto LABEL_61;
                default:
                  goto LABEL_68;
              }
            }

            v20 = &buf[strlen(buf)];
LABEL_64:
            *v20 = 0;
            v38 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
            {
              *v59 = 136446466;
              v60 = "dns_rrdata_dump";
              v61 = 2082;
              v62 = buf;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%{public}s: %{public}s", v59, 0x16u);
            }

            return 1;
          }
        }
      }
    }
  }

  return result;
}

void dns_rrdata_free(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 8);
  if (v2 > 0xF)
  {
    if (*(a1 + 8) <= 0x18u)
    {
      if (v2 == 16)
      {
        v3 = *(a1 + 24);
        v7 = (a1 + 24);
        if (!v3)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (v2 != 24)
      {
        goto LABEL_34;
      }

      v9 = *(a1 + 40);
      do
      {
        if (!v9)
        {
          break;
        }

        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
      v11 = *(a1 + 56);
      v4 = (a1 + 56);
      v3 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      if (v2 == 33)
      {
        goto LABEL_16;
      }

      if (v2 == 28)
      {
        return;
      }

      if (v2 != 25)
      {
LABEL_34:
        v7 = (a1 + 16);
        if (!*(a1 + 24))
        {
          goto LABEL_37;
        }

        v3 = *v7;
        if (!*v7)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v4 = (a1 + 24);
      v3 = *(a1 + 24);
      if (!v3)
      {
        return;
      }
    }

    v7 = v4;
LABEL_36:
    free(v3);
LABEL_37:
    *v7 = 0;
    return;
  }

  if (*(a1 + 8) <= 4u)
  {
    if (v2 == 1)
    {
      return;
    }

    if (v2 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  if (v2 == 5)
  {
    goto LABEL_16;
  }

  if (v2 != 6)
  {
    if (v2 != 12)
    {
      goto LABEL_34;
    }

LABEL_16:
    v6 = (a1 + 16);
    v5 = *(a1 + 16);
    v7 = v6;
    do
    {
      if (!v5)
      {
        break;
      }

      v8 = *v5;
      free(v5);
      v5 = v8;
    }

    while (v8);
    goto LABEL_37;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    do
    {
      v15 = *v14;
      free(v14);
      v14 = v15;
    }

    while (v15);
  }
}

void dns_message_free(uint64_t a1)
{
  if (a1)
  {
    dns_message_rr_group_free(*(a1 + 4), (a1 + 24));
    dns_message_rr_group_free(*(a1 + 8), (a1 + 32));
    dns_message_rr_group_free(*(a1 + 12), (a1 + 40));
    dns_message_rr_group_free(*(a1 + 16), (a1 + 48));
    v2 = *(a1 + 56);
    if (v2)
    {
      do
      {
        v3 = *v2;
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

void dns_message_rr_group_free(int a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (a1 < 1)
    {
      goto LABEL_10;
    }

    v4 = 0;
    v5 = a1;
    do
    {
      v6 = &v2[64 * v4];
      if (*(v6 + 4))
      {
        v7 = *v6;
        if (*v6)
        {
          do
          {
            v8 = *v7;
            free(v7);
            v7 = v8;
          }

          while (v8);
        }

        dns_rrdata_free(&v2[64 * v4]);
      }

      ++v4;
    }

    while (v4 != v5);
    v2 = *a2;
    if (*a2)
    {
LABEL_10:
      free(v2);
      *a2 = 0;
    }
  }
}

void dns_wire_parse_(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 0xC)
  {
    return;
  }

  v5 = malloc_type_calloc(1uLL, 0x48uLL, 0xD9EC13C2uLL);
  if (!v5)
  {
    v46 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2048;
    v53 = 1;
    v54 = 2048;
    v55 = 72;
    goto LABEL_90;
  }

  v6 = v5;
  v7 = vmovl_u16(vrev16_s8(*(a2 + 4)));
  *(v5 + 4) = v7;
  v8 = vaddvq_s32(v7);
  v9 = v8;
  if (!v8)
  {
    LODWORD(v12) = v7.i32[3];
LABEL_8:
    if (v12)
    {
      v13 = 0;
      v14 = (v6 + 56);
      v47 = a1;
      while (1)
      {
        v15 = *(v6 + 48) + (v13 << 6);
        if (*(v15 + 8) == 41)
        {
          v49 = 0;
          v16 = *(v15 + 24);
          if (*(v15 + 24))
          {
            break;
          }
        }

LABEL_19:
        if (++v13 >= v12)
        {
          goto LABEL_70;
        }
      }

      v17 = *(v15 + 16);
      while (1)
      {
        v48 = 0;
        if (!dns_u16_parse(v17, v16, &v49, &v48 + 1))
        {
          goto LABEL_57;
        }

        if (!dns_u16_parse(v17, v16, &v49, &v48))
        {
          goto LABEL_57;
        }

        v18 = v49;
        v19 = v48;
        v20 = v49 + v48;
        if (v20 > v16)
        {
          goto LABEL_57;
        }

        v21 = malloc_type_calloc(1uLL, v48 + 16, 0xC5479D03uLL);
        if (!v21)
        {
          v46 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 136446722;
          v51 = "dns_opt_parse";
          v52 = 2048;
          v53 = 1;
          v54 = 2048;
          v55 = v19 + 16;
          goto LABEL_90;
        }

        v22 = v21;
        v21[4] = v19;
        v21[5] = HIWORD(v48);
        memcpy(v21 + 6, (v17 + v18), v19);
        *v14 = v22;
        v49 = v20;
        v14 = v22;
        if (v20 >= v16)
        {
          LODWORD(v12) = *(v6 + 16);
          v14 = (v6 + 56);
          a1 = v47;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_70;
  }

  v10 = malloc_type_calloc(v8, 2uLL, 0x7983371FuLL);
  if (!v10)
  {
    v46 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2048;
    v53 = v9;
    v54 = 2048;
    v55 = 2;
    goto LABEL_90;
  }

  *(v6 + 64) = v10;
  LODWORD(v11) = *(v6 + 4);
  if (v11 >= 0x33)
  {
    *(v6 + 4) = 0;
LABEL_57:
    dns_message_free(v6);
    return;
  }

  v23 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2080;
    v53 = "question";
    v54 = 1024;
    LODWORD(v55) = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s: Section %s, %d records", buf, 0x1Cu);
    LODWORD(v11) = *(v6 + 4);
  }

  if (v11)
  {
    v24 = malloc_type_calloc(v11, 0x40uLL, 0xBD470B86uLL);
    if (v24)
    {
      *(v6 + 24) = v24;
      if (*(v6 + 4))
      {
        v25 = 0;
        v26 = 0;
        v11 = 0;
        while (1)
        {
          *(*(v6 + 64) + (v25 >> 31)) = 0;
          v27 = *(v6 + 24);
          if ((dns_rr_parse_() & 1) == 0)
          {
            break;
          }

          ++v11;
          v26 += 64;
          v25 += &_mh_execute_header;
          if (v11 >= *(v6 + 4))
          {
            goto LABEL_31;
          }
        }

        dns_message_free(v6);
        v34 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v51 = "dns_wire_parse_";
          v52 = 1024;
          LODWORD(v53) = v11;
          v35 = "%{public}s: question %d RR parse failed.\n";
LABEL_75:
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x12u);
          return;
        }

        return;
      }

      LODWORD(v11) = 0;
      goto LABEL_31;
    }

    v46 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2048;
    v53 = v11;
    v54 = 2048;
    v55 = 64;
LABEL_90:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
    goto LABEL_91;
  }

LABEL_31:
  v28 = *(v6 + 8);
  if (v28 >= 0x33)
  {
    *(v6 + 8) = 0;
    goto LABEL_57;
  }

  v29 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2080;
    v53 = "answers";
    v54 = 1024;
    LODWORD(v55) = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}s: Section %s, %d records", buf, 0x1Cu);
    v28 = *(v6 + 8);
  }

  if (!v28)
  {
    goto LABEL_42;
  }

  v30 = malloc_type_calloc(v28, 0x40uLL, 0xF4069E8CuLL);
  if (!v30)
  {
    v46 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  *(v6 + 32) = v30;
  if (!*(v6 + 8))
  {
LABEL_42:
    v28 = *(v6 + 12);
    if (v28 >= 0x33)
    {
      *(v6 + 12) = 0;
      goto LABEL_57;
    }

    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v51 = "dns_wire_parse_";
      v52 = 2080;
      v53 = "authority";
      v54 = 1024;
      LODWORD(v55) = v28;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: Section %s, %d records", buf, 0x1Cu);
      v28 = *(v6 + 12);
    }

    if (!v28)
    {
      goto LABEL_55;
    }

    v37 = malloc_type_calloc(v28, 0x40uLL, 0xA65AE006uLL);
    if (v37)
    {
      *(v6 + 40) = v37;
      if (*(v6 + 12))
      {
        v38 = 0;
        v39 = 0;
        while (1)
        {
          *(*(v6 + 64) + 2 * (v11 + v39)) = 0;
          v40 = *(v6 + 40);
          if ((dns_rr_parse_() & 1) == 0)
          {
            break;
          }

          ++v39;
          v38 += 64;
          if (v39 >= *(v6 + 12))
          {
            LODWORD(v11) = v11 + v39;
            goto LABEL_55;
          }
        }

        dns_message_free(v6);
        v34 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v51 = "dns_wire_parse_";
          v52 = 1024;
          LODWORD(v53) = v39;
          v35 = "%{public}s: authority %d RR parse failed.\n";
          goto LABEL_75;
        }

        return;
      }

LABEL_55:
      v28 = *(v6 + 16);
      if (v28 >= 0x33)
      {
        *(v6 + 16) = 0;
        goto LABEL_57;
      }

      v41 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v51 = "dns_wire_parse_";
        v52 = 2080;
        v53 = "additional";
        v54 = 1024;
        LODWORD(v55) = v28;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%{public}s: Section %s, %d records", buf, 0x1Cu);
        v28 = *(v6 + 16);
      }

      if (!v28)
      {
        goto LABEL_70;
      }

      v42 = malloc_type_calloc(v28, 0x40uLL, 0x6AC3B0DAuLL);
      if (v42)
      {
        *(v6 + 48) = v42;
        if (*(v6 + 16))
        {
          v43 = 0;
          v44 = 0;
          while (1)
          {
            *(*(v6 + 64) + 2 * (v11 + v44)) = 0;
            v45 = *(v6 + 48);
            if ((dns_rr_parse_() & 1) == 0)
            {
              break;
            }

            ++v44;
            v12 = *(v6 + 16);
            v43 += 64;
            if (v44 >= v12)
            {
              goto LABEL_8;
            }
          }

          dns_message_free(v6);
          v34 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v51 = "dns_wire_parse_";
            v52 = 1024;
            LODWORD(v53) = v44;
            v35 = "%{public}s: additional %d RR parse failed.\n";
            goto LABEL_75;
          }

          return;
        }

LABEL_70:
        *a1 = v6;
        return;
      }

      v46 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_89;
      }

LABEL_91:
      __break(1u);
      return;
    }

    v46 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

LABEL_89:
    *buf = 136446722;
    v51 = "dns_wire_parse_";
    v52 = 2048;
    v53 = v28;
    v54 = 2048;
    v55 = 64;
    goto LABEL_90;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    *(*(v6 + 64) + 2 * (v11 + v32)) = 0;
    v33 = *(v6 + 32);
    if ((dns_rr_parse_() & 1) == 0)
    {
      break;
    }

    ++v32;
    v31 += 64;
    if (v32 >= *(v6 + 8))
    {
      LODWORD(v11) = v11 + v32;
      goto LABEL_42;
    }
  }

  dns_message_free(v6);
  v34 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v51 = "dns_wire_parse_";
    v52 = 1024;
    LODWORD(v53) = v32;
    v35 = "%{public}s: answers %d RR parse failed.\n";
    goto LABEL_75;
  }
}

uint64_t getipaddr(char *a1, const char *a2)
{
  v4 = 2;
  result = inet_pton(2, a2, a1 + 4);
  if (result)
  {
    v6 = 16;
  }

  else
  {
    v4 = 30;
    result = inet_pton(30, a2, a1 + 8);
    if (!result)
    {
      return result;
    }

    v6 = 28;
  }

  a1[1] = v4;
  *a1 = v6;
  return result;
}

void ioloop_wakeup_release_(void *a1, char *a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "ioloop_wakeup_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "wakeup";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "ioloop_wakeup_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "wakeup";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "ioloop_wakeup_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "wakeup";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v11 = 136447234;
      v12 = "ioloop_wakeup_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "wakeup";
      *&v14[18] = 2080;
      *&v14[20] = v9 + 1;
      *&v14[28] = 1024;
      *&v14[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++wakeup_finalized;
    wakeup_finalize(a1);
  }
}

void wakeup_finalize(void *a1)
{
  if (!*a1)
  {
    v3 = a1[5];
    if (v3)
    {
      dispatch_release(v3);
      a1[5] = 0;
    }

    v4 = a1[2];
    v5 = a1[4];
    a1[4] = 0;
    a1[2] = 0;
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v5();
    }

    free(a1);
  }
}

int *ioloop_wakeup_create_(char *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0xB49424E9uLL);
  v5 = global_os_log;
  if (!v4)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "ioloop_wakeup_create_";
      v15 = 2048;
      *v16 = 1;
      *&v16[8] = 2048;
      *&v16[10] = 48;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
    }

    __break(1u);
  }

  v6 = v4;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v6;
    *buf = 136447490;
    v14 = "ioloop_wakeup_create_";
    v15 = 1024;
    *v16 = v7;
    *&v16[4] = 2048;
    *&v16[6] = v6;
    *&v16[14] = 2080;
    *&v16[16] = "ret";
    v17 = 2080;
    v18 = strrchr(a1, 47) + 1;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v6)
  {
    v8 = *v6 + 1;
    *v6 = v8;
    if (v8 >= 10001)
    {
      v12 = v8;
      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v10 = strrchr(a1, 47);
        *buf = 136447490;
        v14 = "ioloop_wakeup_create_";
        v15 = 1024;
        *v16 = v12;
        *&v16[4] = 2048;
        *&v16[6] = v6;
        *&v16[14] = 2080;
        *&v16[16] = "ret";
        v17 = 2080;
        v18 = v10 + 1;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++wakeup_created;
    *v6 = 1;
  }

  return v6;
}

void ioloop_comm_retain_(uint64_t a1, char *a2, int a3)
{
  if (a1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 136447490;
      v14 = "ioloop_comm_retain_";
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = a1;
      v19 = 2080;
      v20 = "comm";
      v21 = 2080;
      v22 = strrchr(a2, 47) + 1;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v8 + 1;
      *(a1 + 32) = v9;
      if (v9 >= 10001)
      {
        v12 = v9;
        v10 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v11 = strrchr(a2, 47);
          *buf = 136447490;
          v14 = "ioloop_comm_retain_";
          v15 = 1024;
          v16 = v12;
          v17 = 2048;
          v18 = a1;
          v19 = 2080;
          v20 = "comm";
          v21 = 2080;
          v22 = v11 + 1;
          v23 = 1024;
          v24 = a3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++comm_created;
      *(a1 + 32) = 1;
    }
  }
}

void ioloop_comm_release_(uint64_t a1, char *a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "ioloop_comm_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "comm";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v11 = 136447490;
    v12 = "ioloop_comm_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "comm";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "ioloop_comm_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "comm";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *(a1 + 32);
  }

  *(a1 + 32) = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v11 = 136447234;
      v12 = "ioloop_comm_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "comm";
      *&v14[18] = 2080;
      *&v14[20] = v9 + 1;
      *&v14[28] = 1024;
      *&v14[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++comm_finalized;
    comm_finalize(a1);
  }
}

void comm_finalize(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446210;
    v21 = "comm_finalize";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: comm_finalize", &v20, 0xCu);
  }

  if (*a1)
  {
    nw_release(*a1);
    ++nw_connection_finalized;
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    nw_release(v3);
    ++nw_listener_finalized;
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    nw_release(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(v6 + 32);
    if (!v7)
    {
      v17 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      v20 = 136447490;
      v21 = "comm_finalize";
      v22 = 1024;
      *v23 = 0;
      *&v23[4] = 2048;
      *&v23[6] = v6;
      *&v23[14] = 2080;
      *&v23[16] = "comm->listener_state";
      *&v23[24] = 2080;
      *&v23[26] = "macos-ioloop.c";
      v24 = 1024;
      v25 = 274;
      v18 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_42;
    }

    v8 = global_os_log;
    if (v7 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      v20 = 136447490;
      v21 = "comm_finalize";
      v22 = 1024;
      *v23 = v7;
      *&v23[4] = 2048;
      *&v23[6] = v6;
      *&v23[14] = 2080;
      *&v23[16] = "comm->listener_state";
      *&v23[24] = 2080;
      *&v23[26] = "macos-ioloop.c";
      v24 = 1024;
      v25 = 274;
      v18 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_45;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136447490;
      v21 = "comm_finalize";
      v22 = 1024;
      *v23 = v7;
      *&v23[4] = 2048;
      *&v23[6] = v6;
      *&v23[14] = 2080;
      *&v23[16] = "comm->listener_state";
      *&v23[24] = 2080;
      *&v23[26] = "macos-ioloop.c";
      v24 = 1024;
      v25 = 274;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
      v6 = *(a1 + 24);
      v7 = *(v6 + 32);
    }

    *(v6 + 32) = v7 - 1;
    if (v7 == 1)
    {
      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136447234;
        v21 = "comm_finalize";
        v22 = 2048;
        *v23 = v6;
        *&v23[8] = 2080;
        *&v23[10] = "comm->listener_state";
        *&v23[18] = 2080;
        *&v23[20] = "macos-ioloop.c";
        *&v23[28] = 1024;
        *&v23[30] = 274;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v20, 0x30u);
        v6 = *(a1 + 24);
      }

      ++listener_finalized;
      listener_finalize(v6);
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 32) > 0)
  {
    return;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    ioloop_cancel_wake_event(v10);
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v8 = global_os_log;
        if (v12 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 136447490;
            v21 = "comm_finalize";
            v22 = 1024;
            *v23 = v12;
            *&v23[4] = 2048;
            *&v23[6] = v11;
            *&v23[14] = 2080;
            *&v23[16] = "comm->idle_timer";
            *&v23[24] = 2080;
            *&v23[26] = "macos-ioloop.c";
            v24 = 1024;
            v25 = 293;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
            v11 = *(a1 + 40);
            v12 = *v11;
          }

          *v11 = v12 - 1;
          if (v12 == 1)
          {
            v13 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 136447234;
              v21 = "comm_finalize";
              v22 = 2048;
              *v23 = v11;
              *&v23[8] = 2080;
              *&v23[10] = "comm->idle_timer";
              *&v23[18] = 2080;
              *&v23[20] = "macos-ioloop.c";
              *&v23[28] = 1024;
              *&v23[30] = 293;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v20, 0x30u);
              v11 = *(a1 + 40);
            }

            ++wakeup_finalized;
            wakeup_finalize(v11);
          }

          goto LABEL_32;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v20 = 136447490;
          v21 = "comm_finalize";
          v22 = 1024;
          *v23 = v12;
          *&v23[4] = 2048;
          *&v23[6] = v11;
          *&v23[14] = 2080;
          *&v23[16] = "comm->idle_timer";
          *&v23[24] = 2080;
          *&v23[26] = "macos-ioloop.c";
          v24 = 1024;
          v25 = 293;
          v18 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_45:
          v19 = v8;
          goto LABEL_46;
        }

LABEL_47:
        abort();
      }

      v17 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      v20 = 136447490;
      v21 = "comm_finalize";
      v22 = 1024;
      *v23 = 0;
      *&v23[4] = 2048;
      *&v23[6] = v11;
      *&v23[14] = 2080;
      *&v23[16] = "comm->idle_timer";
      *&v23[24] = 2080;
      *&v23[26] = "macos-ioloop.c";
      v24 = 1024;
      v25 = 293;
      v18 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_42:
      v19 = v17;
LABEL_46:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, v18, &v20, 0x36u);
      goto LABEL_47;
    }
  }

LABEL_32:
  v14 = *(a1 + 192);
  if (v14)
  {
    free(v14);
    *(a1 + 192) = 0;
  }

  v15 = *(a1 + 408);
  if (v15)
  {
    ifpermit_list_release_(v15, 298);
  }

  v16 = *(a1 + 240);
  if (v16)
  {
    v16(*(a1 + 200));
  }

  free(a1);
}

void listener_finalize(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    nw_release(v2);
    ++nw_listener_finalized;
    a1[1] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    free(v3);
    a1[24] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    nw_release(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    free(v5);
    a1[21] = 0;
  }

  v6 = a1[51];
  if (v6)
  {
    ifpermit_list_release_(v6, 1128);
  }

  v7 = a1[30];
  if (v7)
  {
    v7(a1[25]);
  }

  free(a1);
}

void ioloop_comm_cancel(uint64_t a1)
{
  v1 = *(a1 + 424);
  if ((v1 & 0x800) != 0)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = "ioloop_comm_cancel";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: already canceled", buf, 0xCu);
    }
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v15 = "ioloop_comm_cancel";
        v16 = 2048;
        *v17 = a1;
        *&v17[8] = 2048;
        *&v17[10] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %p %p", buf, 0x20u);
        v3 = *a1;
      }

      connection_cancel_(a1, v3, 330);
      v1 = *(a1 + 424);
    }

    if ((v1 & 0x20) == 0 && !*a1 && *(a1 + 148) != -1)
    {
      ioloop_close(a1 + 56);
      if (*(a1 + 248))
      {
        v7 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          *buf = 136447490;
          v15 = "ioloop_comm_cancel";
          v16 = 1024;
          *v17 = v8;
          *&v17[4] = 2048;
          *&v17[6] = a1;
          *&v17[14] = 2080;
          *&v17[16] = "connection";
          v18 = 2080;
          v19 = "macos-ioloop.c";
          v20 = 1024;
          v21 = 342;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = v9 + 1;
          *(a1 + 32) = v10;
          if (v10 >= 10001)
          {
            v12 = v10;
            v11 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v15 = "ioloop_comm_cancel";
              v16 = 1024;
              *v17 = v12;
              *&v17[4] = 2048;
              *&v17[6] = a1;
              *&v17[14] = 2080;
              *&v17[16] = "connection";
              v18 = 2080;
              v19 = "macos-ioloop.c";
              v20 = 1024;
              v21 = 342;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            }

            abort();
          }
        }

        else
        {
          ++listener_created;
          *(a1 + 32) = 1;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = __ioloop_comm_cancel_block_invoke;
        block[3] = &__block_descriptor_tmp_1413;
        block[4] = a1;
        dispatch_async(ioloop_main_queue, block);
      }
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      ioloop_cancel_wake_event(v5);
    }

    *(a1 + 424) |= 0x800u;
  }
}

void connection_cancel_(uint64_t a1, NSObject *a2, int a3)
{
  v6 = global_os_log;
  v7 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = " (already canceled)";
      v9 = *(a1 + 424);
      v11 = "connection_cancel_";
      v10 = 136447234;
      v12 = 2048;
      if ((v9 & 0x800) == 0)
      {
        v8 = "";
      }

      v13 = a2;
      v14 = 2082;
      v15 = v8;
      v16 = 2082;
      v17 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/macos-ioloop.c";
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %p: %{public}s %{public}s:%d", &v10, 0x30u);
    }

    if ((*(a1 + 424) & 0x800) == 0)
    {
      nw_connection_cancel(a2);
    }
  }

  else if (v7)
  {
    v10 = 136446722;
    v11 = "connection_cancel_";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/macos-ioloop.c";
    v14 = 1024;
    LODWORD(v15) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: null connection at %{public}s:%d", &v10, 0x1Cu);
  }
}

void ioloop_close(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 92);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v8 = 136447234;
    v9 = "ioloop_close";
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: io %p fd %d, read source %p, write_source %p", &v8, 0x30u);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }
}

void __ioloop_comm_cancel_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  if (v3)
  {
    v3(*(a1 + 32), *(v2 + 200));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  v4 = *(v2 + 32);
  if (!v4)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v10 = 136447490;
    v11 = "ioloop_comm_cancel_block_invoke";
    v12 = 1024;
    *v13 = 0;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 347;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    v9 = v7;
    goto LABEL_16;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v10 = 136447490;
    v11 = "ioloop_comm_cancel_block_invoke";
    v12 = 1024;
    *v13 = v4;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 347;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v9 = v5;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v8, &v10, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136447490;
    v11 = "ioloop_comm_cancel_block_invoke";
    v12 = 1024;
    *v13 = v4;
    *&v13[4] = 2048;
    *&v13[6] = v2;
    *&v13[14] = 2080;
    *&v13[16] = "connection";
    *&v13[24] = 2080;
    *&v13[26] = "macos-ioloop.c";
    v14 = 1024;
    v15 = 347;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
    v2 = *(a1 + 32);
    v4 = *(v2 + 32);
  }

  *(v2 + 32) = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136447234;
      v11 = "ioloop_comm_cancel_block_invoke";
      v12 = 2048;
      *v13 = v2;
      *&v13[8] = 2080;
      *&v13[10] = "connection";
      *&v13[18] = 2080;
      *&v13[20] = "macos-ioloop.c";
      *&v13[28] = 1024;
      *&v13[30] = 347;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
      v2 = *(a1 + 32);
    }

    ++listener_finalized;
    listener_finalize(v2);
  }
}

void ioloop_message_retain_(int *a1, char *a2, int a3)
{
  if (a1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      *buf = 136447490;
      v13 = "ioloop_message_retain_";
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = a1;
      v18 = 2080;
      v19 = "message";
      v20 = 2080;
      v21 = strrchr(a2, 47) + 1;
      v22 = 1024;
      v23 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    if (*a1)
    {
      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 >= 10001)
      {
        v11 = v8;
        v9 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v10 = strrchr(a2, 47);
          *buf = 136447490;
          v13 = "ioloop_message_retain_";
          v14 = 1024;
          v15 = v11;
          v16 = 2048;
          v17 = a1;
          v18 = 2080;
          v19 = "message";
          v20 = 2080;
          v21 = v10 + 1;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        }

        abort();
      }
    }

    else
    {
      ++message_created;
      *a1 = 1;
    }
  }
}

void ioloop_message_release_(int *a1, char *a2, int a3)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v11 = 136447490;
    v12 = "ioloop_message_release_";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "message";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_14;
  }

  v7 = global_os_log;
  if (v6 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v11 = 136447490;
    v12 = "ioloop_message_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "message";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_15:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "ioloop_message_release_";
    v13 = 1024;
    *v14 = v6;
    *&v14[4] = 2048;
    *&v14[6] = a1;
    *&v14[14] = 2080;
    *&v14[16] = "message";
    *&v14[24] = 2080;
    *&v14[26] = strrchr(a2, 47) + 1;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  if (v6 == 1)
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = strrchr(a2, 47);
      v11 = 136447234;
      v12 = "ioloop_message_release_";
      v13 = 2048;
      *v14 = a1;
      *&v14[8] = 2080;
      *&v14[10] = "message";
      *&v14[18] = 2080;
      *&v14[20] = v9 + 1;
      *&v14[28] = 1024;
      *&v14[30] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++message_finalized;
    free(a1);
  }
}

uint64_t ioloop_send_message(uint64_t a1, uint64_t a2, iovec *a3)
{
  v5 = *a1;
  if ((*(a1 + 424) & 0x20) != 0)
  {
    if (!v5)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v47 = "ioloop_send_message_inner";
      v20 = "%{public}s: no connection";
      goto LABEL_38;
    }
  }

  else if (!v5)
  {
    if (*(a1 + 148) != -1)
    {
      v7 = (a2 + 4);
      v8 = *(a2 + 60);
      *&v45.msg_namelen = 0;
      *(&v45.msg_iovlen + 1) = 0;
      v45.msg_iov = a3;
      v45.msg_iovlen = 1;
      v45.msg_name = v7;
      v45.msg_control = &buffer;
      *&v45.msg_controllen = 0;
      v9 = *(a2 + 33);
      if (v9 == 30)
      {
        v45.msg_namelen = 28;
        v45.msg_controllen = 32;
        buffer = 0x2900000020;
        v92 = 46;
        v94 = v8;
        v93 = *(a2 + 40);
      }

      else
      {
        if (v9 != 2)
        {
          v36 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v47 = "ioloop_udp_send_message";
            v48 = 1024;
            LODWORD(v49) = v9;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s: unknown family %d", buf, 0x12u);
          }

          abort();
        }

        v45.msg_namelen = 16;
        v45.msg_controllen = 24;
        buffer = 24;
        v92 = 26;
        LODWORD(v93) = v8;
        DWORD1(v93) = *(a2 + 36);
        DWORD2(v93) = DWORD1(v93);
      }

      iov_len = a3->iov_len;
      v41 = 0;
      v42 = 0;
      v44 = 0;
      v43 = 0;
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v39 = 0;
      ioloop_normalize_address(&v41, v7);
      ioloop_normalize_address(&v37, (a2 + 32));
      v22 = BYTE1(v41);
      v23 = global_os_log;
      v24 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v22 == 2)
      {
        if (v24)
        {
          *buf = 136448771;
          v47 = "ioloop_udp_send_message";
          v48 = 2048;
          v49 = iov_len;
          v50 = 2160;
          v51 = 1752392040;
          v52 = 1041;
          *v53 = 4;
          *&v53[4] = 2097;
          *&v53[6] = &v37 + 4;
          v54 = 1024;
          *v55 = bswap32(WORD1(v37)) >> 16;
          *&v55[4] = 1024;
          *&v55[6] = v8;
          strcpy(&v56, "p\bhash");
          HIBYTE(v56) = 0;
          v57 = 0;
          *v58 = 1041;
          *&v58[2] = 4;
          *v59 = 2097;
          *&v59[2] = &v41 + 4;
          LOWORD(v60) = 1024;
          *(&v60 + 2) = bswap32(WORD1(v41)) >> 16;
          v25 = "%{public}s: sending %zd byte UDP response from %{private, mask.hash, network:in_addr}.4P port %d index %d to %{private, mask.hash, network:in_addr}.4P#%d";
          v26 = v23;
          v27 = 92;
LABEL_56:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        }
      }

      else if (v24)
      {
        if ((v38 & 0xFE) == 0xFC)
        {
          v28 = "ULA: ";
        }

        else if (v38 == 254 && (BYTE1(v38) & 0xC0) == 0x80)
        {
          v28 = "LUA: ";
        }

        else if ((v38 & 0xE0) == 0x20)
        {
          v28 = "GUA: ";
        }

        else
        {
          v28 = "";
        }

        v30 = bswap32(WORD1(v37)) >> 16;
        if ((v42 & 0xFE) == 0xFC)
        {
          v31 = "ULA: ";
        }

        else if (v42 == 254 && (BYTE1(v42) & 0xC0) == 0x80)
        {
          v31 = "LUA: ";
        }

        else if ((v42 & 0xE0) == 0x20)
        {
          v31 = "GUA: ";
        }

        else
        {
          v31 = "";
        }

        *buf = 136452355;
        v47 = "ioloop_udp_send_message";
        v48 = 2048;
        v49 = iov_len;
        v50 = 2082;
        v51 = v28;
        v52 = 2160;
        *v53 = 1752392040;
        *&v53[8] = 1041;
        *&v53[10] = 6;
        v54 = 2097;
        *v55 = &v38;
        *&v55[8] = 2160;
        v56 = 1752392040;
        v57 = 1042;
        *v58 = 2;
        *&v58[4] = 2098;
        *v59 = &v38 + 6;
        *&v59[8] = 2160;
        v60 = 1752392040;
        v61 = 1041;
        v62 = 8;
        v63 = 2097;
        v64 = &v39;
        v65 = 1024;
        v66 = v30;
        v67 = 1024;
        v68 = v8;
        v69 = 2082;
        v70 = v31;
        v71 = 2160;
        v72 = 1752392040;
        v73 = 1041;
        v74 = 6;
        v75 = 2097;
        v76 = &v42;
        v77 = 2160;
        v78 = 1752392040;
        v79 = 1042;
        v80 = 2;
        v81 = 2098;
        v82 = &v42 + 6;
        v83 = 2160;
        v84 = 1752392040;
        v85 = 1041;
        v86 = 8;
        v87 = 2097;
        v88 = &v43;
        v89 = 1024;
        v90 = bswap32(WORD1(v41)) >> 16;
        v25 = "%{public}s: sending %zd byte UDP response from {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} port %d index %d to {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}#%d";
        v26 = v23;
        v27 = 216;
        goto LABEL_56;
      }

      v32 = sendmsg(*(a1 + 148), &v45, 0);
      v18 = v32 >= 0;
      if (v32 < 0)
      {
        v33 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v34 = __error();
          v35 = strerror(*v34);
          *buf = 136446466;
          v47 = "ioloop_udp_send_message";
          v48 = 2080;
          v49 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: %s", buf, 0x16u);
        }
      }

      return v18;
    }

    return 0;
  }

  v10 = dispatch_data_create(a3->iov_base, a3->iov_len, ioloop_main_queue, 0);
  if (!v10)
  {
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v47 = "ioloop_send_message_inner";
    v20 = "%{public}s: ioloop_send_message: no memory.";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    return 0;
  }

  v11 = v10;
  LOWORD(buffer) = a3->iov_len;
  if (!buffer)
  {
    dispatch_release(v10);
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v47 = "ioloop_send_message_inner";
    v20 = "%{public}s: zero length";
    goto LABEL_38;
  }

  if ((*(a1 + 424) & 0x20) == 0)
  {
    goto LABEL_13;
  }

  LOWORD(buffer) = bswap32(buffer) >> 16;
  v12 = dispatch_data_create(&buffer, 2uLL, ioloop_main_queue, 0);
  if (!v12)
  {
    dispatch_release(v11);
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v47 = "ioloop_send_message_inner";
    v20 = "%{public}s: no memory for new_data";
    goto LABEL_38;
  }

  v13 = v12;
  concat = dispatch_data_create_concat(v12, v11);
  dispatch_release(v11);
  dispatch_release(v13);
  v11 = concat;
  if (!concat)
  {
    v19 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v47 = "ioloop_send_message_inner";
    v20 = "%{public}s: no memory for combined";
    goto LABEL_38;
  }

LABEL_13:
  if (*(a1 + 48))
  {
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 192);
      if (!v16)
      {
        v16 = "<null>";
      }

      *buf = 136446723;
      v47 = "ioloop_send_message_inner";
      v48 = 2160;
      v49 = 1752392040;
      v50 = 2081;
      v51 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: Dropping pending write on %{private, mask.hash}s", buf, 0x20u);
    }
  }

  *(a1 + 48) = v11;
  v17 = *(a1 + 424);
  *(a1 + 424) = v17 & 0xFFF7;
  if ((v17 & 4) != 0)
  {
    connection_write_now(a1);
  }

  return 1;
}