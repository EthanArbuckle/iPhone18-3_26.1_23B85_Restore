void adv_instances_cancel(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 8) + 8 * v2);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          ioloop_dnssd_txn_cancel(v4);
          ioloop_dnssd_txn_release_(*(v3 + 8), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 963);
          *(v3 + 8) = 0;
        }

        v5 = *(v3 + 56);
        if (v5)
        {
          ioloop_cancel_wake_event(v5);
          ioloop_wakeup_release_(*(v3 + 56), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 968);
          *(v3 + 56) = 0;
        }
      }

      ++v2;
    }

    while (v2 < *(a1 + 4));
  }
}

void adv_instance_vec_finalize(_DWORD *a1)
{
  v2 = a1[1];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 1);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        v6 = *v5;
        if (!*v5)
        {
          v10 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v14 = "adv_instance_vec_finalize";
            v15 = 1024;
            *v16 = 0;
            *&v16[4] = 2048;
            *&v16[6] = v5;
            *&v16[14] = 2080;
            *&v16[16] = "vec->vec[i]";
            *&v16[24] = 2080;
            *&v16[26] = "srp-mdns-proxy.c";
            v17 = 1024;
            v18 = 364;
            v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            v12 = v10;
            goto LABEL_21;
          }

LABEL_22:
          abort();
        }

        v7 = global_os_log;
        if (v6 >= 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            v14 = "adv_instance_vec_finalize";
            v15 = 1024;
            *v16 = v6;
            *&v16[4] = 2048;
            *&v16[6] = v5;
            *&v16[14] = 2080;
            *&v16[16] = "vec->vec[i]";
            *&v16[24] = 2080;
            *&v16[26] = "srp-mdns-proxy.c";
            v17 = 1024;
            v18 = 364;
            v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v12 = v7;
LABEL_21:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v11, buf, 0x36u);
          }

          goto LABEL_22;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v14 = "adv_instance_vec_finalize";
          v15 = 1024;
          *v16 = v6;
          *&v16[4] = 2048;
          *&v16[6] = v5;
          *&v16[14] = 2080;
          *&v16[16] = "vec->vec[i]";
          *&v16[24] = 2080;
          *&v16[26] = "srp-mdns-proxy.c";
          v17 = 1024;
          v18 = 364;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v4 = *(a1 + 1);
          v5 = *(v4 + 8 * i);
          v6 = *v5;
        }

        *v5 = v6 - 1;
        if (v6 == 1)
        {
          v8 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v14 = "adv_instance_vec_finalize";
            v15 = 2048;
            *v16 = v5;
            *&v16[8] = 2080;
            *&v16[10] = "vec->vec[i]";
            *&v16[18] = 2080;
            *&v16[20] = "srp-mdns-proxy.c";
            *&v16[28] = 1024;
            *&v16[30] = 364;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            v5 = *(*(a1 + 1) + 8 * i);
          }

          ++adv_instance_finalized;
          adv_instance_finalize(v5);
          v4 = *(a1 + 1);
        }

        *(v4 + 8 * i) = 0;
        v2 = a1[1];
      }
    }
  }

  v9 = *(a1 + 1);
  if (v9)
  {
    free(v9);
  }

  free(a1);
}

void adv_instance_finalize(void *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    ioloop_dnssd_txn_cancel(v2);
    ioloop_dnssd_txn_release_(*(a1 + 1), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 250);
  }

  v3 = *(a1 + 11);
  if (v3)
  {
    free(v3);
    *(a1 + 11) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    free(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 9);
  if (v5)
  {
    free(v5);
    *(a1 + 9) = 0;
  }

  v6 = *(a1 + 5);
  if (v6)
  {
    v7 = *v6;
    if (!*v6)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_45;
      }

      v18 = 136447490;
      v19 = "adv_instance_finalize";
      v20 = 1024;
      *v21 = 0;
      *&v21[4] = 2048;
      *&v21[6] = v6;
      *&v21[14] = 2080;
      *&v21[16] = "instance->host";
      *&v21[24] = 2080;
      *&v21[26] = "srp-mdns-proxy.c";
      v22 = 1024;
      v23 = 256;
      v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_40;
    }

    v8 = global_os_log;
    if (v7 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_45;
      }

      v18 = 136447490;
      v19 = "adv_instance_finalize";
      v20 = 1024;
      *v21 = v7;
      *&v21[4] = 2048;
      *&v21[6] = v6;
      *&v21[14] = 2080;
      *&v21[16] = "instance->host";
      *&v21[24] = 2080;
      *&v21[26] = "srp-mdns-proxy.c";
      v22 = 1024;
      v23 = 256;
      v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_43:
      v17 = v8;
      goto LABEL_44;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136447490;
      v19 = "adv_instance_finalize";
      v20 = 1024;
      *v21 = v7;
      *&v21[4] = 2048;
      *&v21[6] = v6;
      *&v21[14] = 2080;
      *&v21[16] = "instance->host";
      *&v21[24] = 2080;
      *&v21[26] = "srp-mdns-proxy.c";
      v22 = 1024;
      v23 = 256;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
      v6 = *(a1 + 5);
      v7 = *v6;
    }

    *v6 = v7 - 1;
    if (v7 == 1)
    {
      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136447234;
        v19 = "adv_instance_finalize";
        v20 = 2048;
        *v21 = v6;
        *&v21[8] = 2080;
        *&v21[10] = "instance->host";
        *&v21[18] = 2080;
        *&v21[20] = "srp-mdns-proxy.c";
        *&v21[28] = 1024;
        *&v21[30] = 256;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v18, 0x30u);
        v6 = *(a1 + 5);
      }

      ++adv_host_finalized;
      adv_host_finalize(v6);
    }

    *(a1 + 5) = 0;
  }

  v10 = *(a1 + 13);
  if (v10)
  {
    ioloop_message_release_(v10, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 260);
    *(a1 + 13) = 0;
  }

  v11 = *(a1 + 6);
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
          v18 = 136447490;
          v19 = "adv_instance_finalize";
          v20 = 1024;
          *v21 = v12;
          *&v21[4] = 2048;
          *&v21[6] = v11;
          *&v21[14] = 2080;
          *&v21[16] = "instance->update";
          *&v21[24] = 2080;
          *&v21[26] = "srp-mdns-proxy.c";
          v22 = 1024;
          v23 = 264;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v18, 0x36u);
          v11 = *(a1 + 6);
          v12 = *v11;
        }

        *v11 = v12 - 1;
        if (v12 == 1)
        {
          v13 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136447234;
            v19 = "adv_instance_finalize";
            v20 = 2048;
            *v21 = v11;
            *&v21[8] = 2080;
            *&v21[10] = "instance->update";
            *&v21[18] = 2080;
            *&v21[20] = "srp-mdns-proxy.c";
            *&v21[28] = 1024;
            *&v21[30] = 264;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v18, 0x30u);
            v11 = *(a1 + 6);
          }

          ++adv_update_finalized;
          adv_update_finalize(v11);
        }

        *(a1 + 6) = 0;
        goto LABEL_31;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_45:
        abort();
      }

      v18 = 136447490;
      v19 = "adv_instance_finalize";
      v20 = 1024;
      *v21 = v12;
      *&v21[4] = 2048;
      *&v21[6] = v11;
      *&v21[14] = 2080;
      *&v21[16] = "instance->update";
      *&v21[24] = 2080;
      *&v21[26] = "srp-mdns-proxy.c";
      v22 = 1024;
      v23 = 264;
      v16 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_43;
    }

    v15 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    v18 = 136447490;
    v19 = "adv_instance_finalize";
    v20 = 1024;
    *v21 = 0;
    *&v21[4] = 2048;
    *&v21[6] = v11;
    *&v21[14] = 2080;
    *&v21[16] = "instance->update";
    *&v21[24] = 2080;
    *&v21[26] = "srp-mdns-proxy.c";
    v22 = 1024;
    v23 = 264;
    v16 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_40:
    v17 = v15;
LABEL_44:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, &v18, 0x36u);
    goto LABEL_45;
  }

LABEL_31:
  v14 = *(a1 + 7);
  if (v14)
  {
    ioloop_wakeup_release_(v14, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 268);
  }

  free(a1);
}

void adv_record_vec_remove_update(uint64_t a1, int *a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 8);
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8 && v8 == a2)
        {
          v10 = *v8;
          if (!*v8)
          {
            v15 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v17 = "adv_record_vec_remove_update";
              v18 = 1024;
              *v19 = 0;
              *&v19[4] = 2048;
              *&v19[6] = a2;
              *&v19[14] = 2080;
              *&v19[16] = "vec->vec[i]->update";
              *&v19[24] = 2080;
              *&v19[26] = "srp-mdns-proxy.c";
              v20 = 1024;
              v21 = 938;
              v13 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              v14 = v15;
LABEL_24:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v13, buf, 0x36u);
            }

LABEL_25:
            abort();
          }

          v11 = global_os_log;
          if (v10 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v17 = "adv_record_vec_remove_update";
              v18 = 1024;
              *v19 = v10;
              *&v19[4] = 2048;
              *&v19[6] = a2;
              *&v19[14] = 2080;
              *&v19[16] = "vec->vec[i]->update";
              *&v19[24] = 2080;
              *&v19[26] = "srp-mdns-proxy.c";
              v20 = 1024;
              v21 = 938;
              v13 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v14 = v11;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v17 = "adv_record_vec_remove_update";
            v18 = 1024;
            *v19 = v10;
            *&v19[4] = 2048;
            *&v19[6] = a2;
            *&v19[14] = 2080;
            *&v19[16] = "vec->vec[i]->update";
            *&v19[24] = 2080;
            *&v19[26] = "srp-mdns-proxy.c";
            v20 = 1024;
            v21 = 938;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v6 = *(a1 + 8);
            v8 = *(*(v6 + 8 * v5) + 48);
            v10 = *v8;
          }

          *v8 = v10 - 1;
          if (v10 == 1)
          {
            v12 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v17 = "adv_record_vec_remove_update";
              v18 = 2048;
              *v19 = v8;
              *&v19[8] = 2080;
              *&v19[10] = "vec->vec[i]->update";
              *&v19[18] = 2080;
              *&v19[20] = "srp-mdns-proxy.c";
              *&v19[28] = 1024;
              *&v19[30] = 938;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v8 = *(*(*(a1 + 8) + 8 * v5) + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v8);
            v6 = *(a1 + 8);
          }

          *(*(v6 + 8 * v5) + 48) = 0;
          v2 = *(a1 + 4);
        }
      }

      ++v5;
    }

    while (v5 < v2);
  }
}

void adv_update_free_instance_vectors(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      adv_instance_vec_remove_update(v2, a1);
      adv_instances_cancel(*(a1 + 56));
      v3 = *(a1 + 56);
      if (v3)
      {
        v4 = *v3;
        if (!*v3)
        {
          v19 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_66;
          }

          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = 0;
          *&v25[4] = 2048;
          *&v25[6] = v3;
          *&v25[14] = 2080;
          *&v25[16] = "update->update_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 984;
          v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_59;
        }

        v5 = global_os_log;
        if (v4 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_66;
          }

          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = v4;
          *&v25[4] = 2048;
          *&v25[6] = v3;
          *&v25[14] = 2080;
          *&v25[16] = "update->update_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 984;
          v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_64;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = v4;
          *&v25[4] = 2048;
          *&v25[6] = v3;
          *&v25[14] = 2080;
          *&v25[16] = "update->update_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 984;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
          v3 = *(a1 + 56);
          v4 = *v3;
        }

        *v3 = v4 - 1;
        if (v4 == 1)
        {
          v6 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136447234;
            v23 = "adv_update_free_instance_vectors";
            v24 = 2048;
            *v25 = v3;
            *&v25[8] = 2080;
            *&v25[10] = "update->update_instances";
            *&v25[18] = 2080;
            *&v25[20] = "srp-mdns-proxy.c";
            *&v25[28] = 1024;
            *&v25[30] = 984;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v22, 0x30u);
            v3 = *(a1 + 56);
          }

          ++adv_instance_vec_finalized;
          adv_instance_vec_finalize(v3);
        }
      }

      *(a1 + 56) = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      adv_instance_vec_remove_update(v7, a1);
      v8 = *(a1 + 64);
      if (v8)
      {
        v9 = *v8;
        if (!*v8)
        {
          v19 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_66;
          }

          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = 0;
          *&v25[4] = 2048;
          *&v25[6] = v8;
          *&v25[14] = 2080;
          *&v25[16] = "update->remove_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 989;
          v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          goto LABEL_59;
        }

        v5 = global_os_log;
        if (v9 >= 10001)
        {
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_66;
          }

          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = v9;
          *&v25[4] = 2048;
          *&v25[6] = v8;
          *&v25[14] = 2080;
          *&v25[16] = "update->remove_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 989;
          v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          goto LABEL_64;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136447490;
          v23 = "adv_update_free_instance_vectors";
          v24 = 1024;
          *v25 = v9;
          *&v25[4] = 2048;
          *&v25[6] = v8;
          *&v25[14] = 2080;
          *&v25[16] = "update->remove_instances";
          *&v25[24] = 2080;
          *&v25[26] = "srp-mdns-proxy.c";
          v26 = 1024;
          v27 = 989;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
          v8 = *(a1 + 64);
          v9 = *v8;
        }

        *v8 = v9 - 1;
        if (v9 == 1)
        {
          v10 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136447234;
            v23 = "adv_update_free_instance_vectors";
            v24 = 2048;
            *v25 = v8;
            *&v25[8] = 2080;
            *&v25[10] = "update->remove_instances";
            *&v25[18] = 2080;
            *&v25[20] = "srp-mdns-proxy.c";
            *&v25[28] = 1024;
            *&v25[30] = 989;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v22, 0x30u);
            v8 = *(a1 + 64);
          }

          ++adv_instance_vec_finalized;
          adv_instance_vec_finalize(v8);
        }
      }

      *(a1 + 64) = 0;
    }

    v11 = *(a1 + 72);
    if (!v11)
    {
LABEL_35:
      v15 = *(a1 + 80);
      if (!v15)
      {
        return;
      }

      adv_instance_vec_remove_update(v15, a1);
      adv_instances_cancel(*(a1 + 80));
      v16 = *(a1 + 80);
      if (!v16)
      {
        goto LABEL_45;
      }

      v17 = *v16;
      if (*v16)
      {
        v5 = global_os_log;
        if (v17 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136447490;
            v23 = "adv_update_free_instance_vectors";
            v24 = 1024;
            *v25 = v17;
            *&v25[4] = 2048;
            *&v25[6] = v16;
            *&v25[14] = 2080;
            *&v25[16] = "update->add_instances";
            *&v25[24] = 2080;
            *&v25[26] = "srp-mdns-proxy.c";
            v26 = 1024;
            v27 = 1000;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
            v16 = *(a1 + 80);
            v17 = *v16;
          }

          *v16 = v17 - 1;
          if (v17 == 1)
          {
            v18 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 136447234;
              v23 = "adv_update_free_instance_vectors";
              v24 = 2048;
              *v25 = v16;
              *&v25[8] = 2080;
              *&v25[10] = "update->add_instances";
              *&v25[18] = 2080;
              *&v25[20] = "srp-mdns-proxy.c";
              *&v25[28] = 1024;
              *&v25[30] = 1000;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v22, 0x30u);
              v16 = *(a1 + 80);
            }

            ++adv_instance_vec_finalized;
            adv_instance_vec_finalize(v16);
          }

LABEL_45:
          *(a1 + 80) = 0;
          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_66:
          abort();
        }

        v22 = 136447490;
        v23 = "adv_update_free_instance_vectors";
        v24 = 1024;
        *v25 = v17;
        *&v25[4] = 2048;
        *&v25[6] = v16;
        *&v25[14] = 2080;
        *&v25[16] = "update->add_instances";
        *&v25[24] = 2080;
        *&v25[26] = "srp-mdns-proxy.c";
        v26 = 1024;
        v27 = 1000;
        v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_64;
      }

      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_66;
      }

      v22 = 136447490;
      v23 = "adv_update_free_instance_vectors";
      v24 = 1024;
      *v25 = 0;
      *&v25[4] = 2048;
      *&v25[6] = v16;
      *&v25[14] = 2080;
      *&v25[16] = "update->add_instances";
      *&v25[24] = 2080;
      *&v25[26] = "srp-mdns-proxy.c";
      v26 = 1024;
      v27 = 1000;
      v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_59:
      v21 = v19;
LABEL_65:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v20, &v22, 0x36u);
      goto LABEL_66;
    }

    adv_instance_vec_remove_update(v11, a1);
    v12 = *(a1 + 72);
    if (!v12)
    {
LABEL_34:
      *(a1 + 72) = 0;
      goto LABEL_35;
    }

    v13 = *v12;
    if (!*v12)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_66;
      }

      v22 = 136447490;
      v23 = "adv_update_free_instance_vectors";
      v24 = 1024;
      *v25 = 0;
      *&v25[4] = 2048;
      *&v25[6] = v12;
      *&v25[14] = 2080;
      *&v25[16] = "update->renew_instances";
      *&v25[24] = 2080;
      *&v25[26] = "srp-mdns-proxy.c";
      v26 = 1024;
      v27 = 994;
      v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_59;
    }

    v5 = global_os_log;
    if (v13 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136447490;
        v23 = "adv_update_free_instance_vectors";
        v24 = 1024;
        *v25 = v13;
        *&v25[4] = 2048;
        *&v25[6] = v12;
        *&v25[14] = 2080;
        *&v25[16] = "update->renew_instances";
        *&v25[24] = 2080;
        *&v25[26] = "srp-mdns-proxy.c";
        v26 = 1024;
        v27 = 994;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v22, 0x36u);
        v12 = *(a1 + 72);
        v13 = *v12;
      }

      *v12 = v13 - 1;
      if (v13 == 1)
      {
        v14 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136447234;
          v23 = "adv_update_free_instance_vectors";
          v24 = 2048;
          *v25 = v12;
          *&v25[8] = 2080;
          *&v25[10] = "update->renew_instances";
          *&v25[18] = 2080;
          *&v25[20] = "srp-mdns-proxy.c";
          *&v25[28] = 1024;
          *&v25[30] = 994;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v22, 0x30u);
          v12 = *(a1 + 72);
        }

        ++adv_instance_vec_finalized;
        adv_instance_vec_finalize(v12);
      }

      goto LABEL_34;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    v22 = 136447490;
    v23 = "adv_update_free_instance_vectors";
    v24 = 1024;
    *v25 = v13;
    *&v25[4] = 2048;
    *&v25[6] = v12;
    *&v25[14] = 2080;
    *&v25[16] = "update->renew_instances";
    *&v25[24] = 2080;
    *&v25[26] = "srp-mdns-proxy.c";
    v26 = 1024;
    v27 = 994;
    v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_64:
    v21 = v5;
    goto LABEL_65;
  }
}

void adv_instance_vec_remove_update(uint64_t a1, int *a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 8);
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8 && v8 == a2)
        {
          v10 = *v8;
          if (!*v8)
          {
            v15 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v17 = "adv_instance_vec_remove_update";
              v18 = 1024;
              *v19 = 0;
              *&v19[4] = 2048;
              *&v19[6] = a2;
              *&v19[14] = 2080;
              *&v19[16] = "vec->vec[i]->update";
              *&v19[24] = 2080;
              *&v19[26] = "srp-mdns-proxy.c";
              v20 = 1024;
              v21 = 949;
              v13 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              v14 = v15;
LABEL_24:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v13, buf, 0x36u);
            }

LABEL_25:
            abort();
          }

          v11 = global_os_log;
          if (v10 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              v17 = "adv_instance_vec_remove_update";
              v18 = 1024;
              *v19 = v10;
              *&v19[4] = 2048;
              *&v19[6] = a2;
              *&v19[14] = 2080;
              *&v19[16] = "vec->vec[i]->update";
              *&v19[24] = 2080;
              *&v19[26] = "srp-mdns-proxy.c";
              v20 = 1024;
              v21 = 949;
              v13 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v14 = v11;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v17 = "adv_instance_vec_remove_update";
            v18 = 1024;
            *v19 = v10;
            *&v19[4] = 2048;
            *&v19[6] = a2;
            *&v19[14] = 2080;
            *&v19[16] = "vec->vec[i]->update";
            *&v19[24] = 2080;
            *&v19[26] = "srp-mdns-proxy.c";
            v20 = 1024;
            v21 = 949;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v6 = *(a1 + 8);
            v8 = *(*(v6 + 8 * v5) + 48);
            v10 = *v8;
          }

          *v8 = v10 - 1;
          if (v10 == 1)
          {
            v12 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v17 = "adv_instance_vec_remove_update";
              v18 = 2048;
              *v19 = v8;
              *&v19[8] = 2080;
              *&v19[10] = "vec->vec[i]->update";
              *&v19[18] = 2080;
              *&v19[20] = "srp-mdns-proxy.c";
              *&v19[28] = 1024;
              *&v19[30] = 949;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v8 = *(*(*(a1 + 8) + 8 * v5) + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v8);
            v6 = *(a1 + 8);
          }

          *(*(v6 + 8 * v5) + 48) = 0;
          v2 = *(a1 + 4);
        }
      }

      ++v5;
    }

    while (v5 < v2);
  }
}

void srp_mdns_stale_record_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v9 = global_os_log;
  v10 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT);
  if (a5)
  {
    if (!v10)
    {
      return;
    }

    v11 = *a5;
    v12 = a5[1];
    v14 = *(a5 + 4);
    v13 = *(a5 + 5);
    v18 = 136448002;
    v19 = "srp_mdns_stale_record_callback";
    v20 = 2048;
    v21 = v11;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = a2;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = a4;
    v30 = 2082;
    v31 = v12;
    v32 = 1024;
    v33 = v14;
    v15 = "%{public}s: stale record callback %lf seconds later for sdref %p rref %p error %d (now %d) at %{public}s:%d";
    v16 = v9;
    v17 = 70;
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v18 = 136446978;
    v19 = "srp_mdns_stale_record_callback";
    v20 = 2048;
    v21 = a1;
    v22 = 2048;
    v23 = a2;
    v24 = 1024;
    LODWORD(v25) = a4;
    v15 = "%{public}s: stale record callback for sdref %p rref %p with null context pointer, error %d.";
    v16 = v9;
    v17 = 38;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v15, &v18, v17);
}

void adv_instance_context_release(int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "adv_instance_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "instance";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 278;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "adv_instance_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "instance";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 278;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "adv_instance_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "instance";
    *&v9[24] = 2080;
    *&v9[26] = "srp-mdns-proxy.c";
    v10 = 1024;
    v11 = 278;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "adv_instance_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "instance";
      *&v9[18] = 2080;
      *&v9[20] = "srp-mdns-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 278;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++adv_instance_finalized;
    adv_instance_finalize(a1);
  }
}

uint64_t srp_mdns_shared_registration_txn_setup(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  sdRef = 0;
  v10 = 0;
  v3 = ConnectToServer(&sdRef, 0, 1, ConnectionResponse, 0, 0);
  if (!v3)
  {
    *buf = 0;
    v4 = create_hdr(1, &v10, buf, 0, sdRef);
    v5 = deliver_request(v4, sdRef);
    if (!v5)
    {
      v7 = ioloop_dnssd_txn_add_(sdRef, a1, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 796);
      *(a1 + 16) = v7;
      dns_service_op_not_to_be_freed = v7[1];
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "srp_mdns_shared_registration_txn_setup";
        v12 = 2048;
        v13 = v7;
        v14 = 2048;
        v15 = sdRef;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: server_state->shared_registration_txn = %p  sdref = %p", buf, 0x20u);
      }

      return 1;
    }

    v3 = v5;
    DNSServiceRefDeallocate(sdRef);
    sdRef = 0;
  }

  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "srp_mdns_shared_registration_txn_setup";
    v12 = 1024;
    LODWORD(v13) = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: unable to create shared connection for registration: %d", buf, 0x12u);
  }

  return 0;
}

void srp_mdns_update_finished(void *a1)
{
  v1 = a1;
  v3 = a1[1];
  v2 = a1[2];
  v296 = v2;
  if (v2)
  {
    v301 = *(v2 + 32);
  }

  else
  {
    v301 = 0;
  }

  v4 = *(v3 + 88);
  if (v4 && (v5 = *(v4 + 4), v5 >= 1))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = 8 * v5;
    do
    {
      if (*(v8 + v6))
      {
        v10 = a1[4];
        if (!v10 || !*(*(v10 + 8) + v6))
        {
          ++v7;
        }
      }

      v6 += 8;
    }

    while (v9 != v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = a1[5];
  if (v11 && (v12 = *(v11 + 4), v12 >= 1))
  {
    v13 = 0;
    v14 = *(v11 + 8);
    do
    {
      if (*v14++)
      {
        ++v13;
      }

      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v295 = *(v3 + 8);
  if (v13 + v7 < 1)
  {
    v298 = 0;
  }

  else
  {
    v298 = adv_record_vec_create(v13 + v7);
    v16 = *(v3 + 88);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *(*(v16 + 8) + 8 * v17);
        if (v19)
        {
          v20 = *(v1 + 32);
          if (!v20 || !*(*(v20 + 8) + 8 * v17))
          {
            break;
          }
        }

LABEL_60:
        ++v17;
        v16 = *(v3 + 88);
        if (v17 >= *(v16 + 4))
        {
          goto LABEL_63;
        }
      }

      v21 = *(v19 + 64);
      v22 = *(v19 + 72);
      v23 = global_os_log;
      v24 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      if (v22 == 28)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = "ULA: ";
          if ((v25 & 0xFE) != 0xFC)
          {
            if (v25 != 254 || (v26 = "LUA: ", (v21[1] & 0xC0) != 0x80))
            {
              v26 = "GUA: ";
              if ((v25 & 0xE0) != 0x20)
              {
                v26 = "";
              }
            }
          }

          v27 = *(v3 + 56);
          *buf = 136449283;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          *&buf[22] = 2160;
          *&buf[24] = 1752392040;
          *&buf[32] = 1041;
          *&buf[34] = 6;
          *&buf[38] = 2097;
          *&buf[40] = v21;
          *&buf[48] = 2160;
          *&buf[50] = 1752392040;
          *&buf[58] = 1042;
          *&buf[60] = 2;
          *&buf[64] = 2098;
          *&buf[66] = v21 + 6;
          *&buf[74] = 2160;
          *&buf[76] = 1752392040;
          v303 = 1041;
          v304 = 8;
          v305 = 2097;
          v306 = v21 + 8;
          v307 = 2160;
          v308 = 1752392040;
          v309 = 2081;
          v310 = v27;
          v28 = v23;
          v29 = "%{public}s: retaining {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}on host %{private, mask.hash}s";
          v30 = 120;
          goto LABEL_39;
        }
      }

      else if (v24)
      {
        v31 = *(v3 + 56);
        *buf = 136447491;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 1041;
        *&buf[24] = 4;
        *&buf[28] = 2097;
        *&buf[30] = v21;
        *&buf[38] = 2160;
        *&buf[40] = 1752392040;
        *&buf[48] = 2081;
        *&buf[50] = v31;
        v28 = v23;
        v29 = "%{public}s: retaining %{private, mask.hash, network:in_addr}.4Pon host %{private, mask.hash}s";
        v30 = 58;
LABEL_39:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
      }

      if (*(v19 + 48))
      {
        v32 = *(*(*(v3 + 88) + 8) + 8 * v17);
        v33 = *(v32 + 48);
        if (v33)
        {
          v34 = *v33;
          if (!*v33)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = 0;
            *&buf[18] = 2048;
            *&buf[20] = v33;
            *&buf[28] = 2080;
            *&buf[30] = "host->addresses->vec[i]->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1572;
            v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }

          v35 = global_os_log;
          if (v34 >= 10001)
          {
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v34;
            *&buf[18] = 2048;
            *&buf[20] = v33;
            *&buf[28] = 2080;
            *&buf[30] = "host->addresses->vec[i]->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1572;
            v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            goto LABEL_456;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v34;
            *&buf[18] = 2048;
            *&buf[20] = v33;
            *&buf[28] = 2080;
            *&buf[30] = "host->addresses->vec[i]->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1572;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v32 = *(*(*(v3 + 88) + 8) + 8 * v17);
            v33 = *(v32 + 48);
            v34 = *v33;
          }

          *v33 = v34 - 1;
          if (v34 == 1)
          {
            v36 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2048;
              *&buf[14] = v33;
              *&buf[22] = 2080;
              *&buf[24] = "host->addresses->vec[i]->update";
              *&buf[32] = 2080;
              *&buf[34] = "srp-mdns-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 1572;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v33 = *(*(*(*(v3 + 88) + 8) + 8 * v17) + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v33);
            v32 = *(*(*(v3 + 88) + 8) + 8 * v17);
          }
        }

        *(v32 + 48) = 0;
      }

      *(v298[1] + 8 * v18) = v19;
      v37 = *(v298[1] + 8 * v18);
      if (v37)
      {
        v38 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *v37;
          *buf = 136447490;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 1024;
          *&buf[14] = v39;
          *&buf[18] = 2048;
          *&buf[20] = v37;
          *&buf[28] = 2080;
          *&buf[30] = "addresses->vec[j]";
          *&buf[38] = 2080;
          *&buf[40] = "srp-mdns-proxy.c";
          *&buf[48] = 1024;
          *&buf[50] = 1576;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v37 = *(v298[1] + 8 * v18);
        }

        v40 = *v37;
        if (*v37)
        {
          v41 = v40 + 1;
          *v37 = v40 + 1;
          if (v40 + 1 >= 10001)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 2048;
            *&buf[20] = v37;
            *&buf[28] = 2080;
            *&buf[30] = "addresses->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1576;
            v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }
        }

        else
        {
          ++adv_record_created;
          v41 = 1;
          *v37 = 1;
        }

        srp_log_ref_final(v37, v41, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1576);
      }

      ++v18;
      goto LABEL_60;
    }

    v18 = 0;
LABEL_63:
    v42 = *(v1 + 40);
    if (v42 && *(v42 + 4) >= 1)
    {
      v43 = 0;
      v44 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c";
      do
      {
        v45 = *(*(v42 + 8) + 8 * v43);
        if (!v45)
        {
          goto LABEL_111;
        }

        v46 = *(v45 + 64);
        v47 = *(v45 + 72);
        v48 = global_os_log;
        v49 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if (v47 == 28)
        {
          if (v49)
          {
            v50 = *v46;
            v51 = "ULA: ";
            if ((v50 & 0xFE) != 0xFC)
            {
              if (v50 != 254 || (v51 = "LUA: ", (v46[1] & 0xC0) != 0x80))
              {
                v51 = "GUA: ";
                if ((v50 & 0xE0) != 0x20)
                {
                  v51 = "";
                }
              }
            }

            v52 = *(v3 + 56);
            *buf = 136449283;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 2082;
            *&buf[14] = v51;
            *&buf[22] = 2160;
            *&buf[24] = 1752392040;
            *&buf[32] = 1041;
            *&buf[34] = 6;
            *&buf[38] = 2097;
            *&buf[40] = v46;
            *&buf[48] = 2160;
            *&buf[50] = 1752392040;
            *&buf[58] = 1042;
            *&buf[60] = 2;
            *&buf[64] = 2098;
            *&buf[66] = v46 + 6;
            *&buf[74] = 2160;
            *&buf[76] = 1752392040;
            v303 = 1041;
            v304 = 8;
            v305 = 2097;
            v306 = v46 + 8;
            v307 = 2160;
            v308 = 1752392040;
            v309 = 2081;
            v310 = v52;
            v53 = v48;
            v54 = "%{public}s: adding {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}to host %{private, mask.hash}s";
            v55 = 120;
            goto LABEL_77;
          }
        }

        else if (v49)
        {
          v56 = *(v3 + 56);
          *buf = 136447491;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 1041;
          *&buf[24] = 4;
          *&buf[28] = 2097;
          *&buf[30] = v46;
          *&buf[38] = 2160;
          *&buf[40] = 1752392040;
          *&buf[48] = 2081;
          *&buf[50] = v56;
          v53 = v48;
          v54 = "%{public}s: adding %{private, mask.hash, network:in_addr}.4Pto host %{private, mask.hash}s";
          v55 = 58;
LABEL_77:
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, v55);
        }

        *(v298[1] + 8 * v18) = v45;
        v57 = *(v298[1] + 8 * v18);
        if (v57)
        {
          v58 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v59 = *v57;
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v59;
            *&buf[18] = 2048;
            *&buf[20] = v57;
            *&buf[28] = 2080;
            *&buf[30] = "addresses->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1598;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v57 = *(v298[1] + 8 * v18);
          }

          v60 = *v57;
          if (*v57)
          {
            v61 = v60 + 1;
            *v57 = v60 + 1;
            if (v60 + 1 >= 10001)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v61;
              *&buf[18] = 2048;
              *&buf[20] = v57;
              *&buf[28] = 2080;
              *&buf[30] = "addresses->vec[j]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1598;
              v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }
          }

          else
          {
            ++adv_record_created;
            v61 = 1;
            *v57 = 1;
          }

          srp_log_ref_final(v57, v61, v44, 1598);
        }

        v62 = *(v45 + 48);
        v63 = *(v1 + 40);
        v64 = *(v63 + 8);
        if (v62)
        {
          v65 = v44;
          v66 = *(v64 + 8 * v43);
          v67 = *(v66 + 48);
          if (v67)
          {
            v68 = *v67;
            if (!*v67)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = 0;
              *&buf[18] = 2048;
              *&buf[20] = v67;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1601;
              v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }

            v35 = global_os_log;
            if (v68 >= 10001)
            {
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v68;
              *&buf[18] = 2048;
              *&buf[20] = v67;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1601;
              v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_456:
              v287 = v35;
              goto LABEL_491;
            }

            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v68;
              *&buf[18] = 2048;
              *&buf[20] = v67;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1601;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v63 = a1[5];
              v64 = *(v63 + 8);
              v66 = *(v64 + 8 * v43);
              v67 = *(v66 + 48);
              v68 = *v67;
            }

            *v67 = v68 - 1;
            if (v68 == 1)
            {
              v69 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                *&buf[4] = "srp_mdns_update_finished";
                *&buf[12] = 2048;
                *&buf[14] = v67;
                *&buf[22] = 2080;
                *&buf[24] = "update->add_addresses->vec[i]->update";
                *&buf[32] = 2080;
                *&buf[34] = "srp-mdns-proxy.c";
                *&buf[42] = 1024;
                *&buf[44] = 1601;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                v70 = a1;
                v67 = *(*(*(a1[5] + 8) + 8 * v43) + 48);
              }

              else
              {
                v70 = a1;
              }

              ++adv_update_finalized;
              adv_update_finalize(v67);
              v63 = v70[5];
              v64 = *(v63 + 8);
              v66 = *(v64 + 8 * v43);
            }
          }

          *(v66 + 48) = 0;
          v44 = v65;
          v1 = a1;
        }

        v71 = *(v64 + 8 * v43);
        if (v71)
        {
          v72 = srp_log_ref_check(v71, "adv_record", v44, 1604);
          v63 = *(v1 + 40);
          if (v72)
          {
            v73 = *(*(v63 + 8) + 8 * v43);
            v74 = *v73;
            if (!*v73)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = 0;
              *&buf[18] = 2048;
              *&buf[20] = v73;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1604;
              v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }

            v35 = global_os_log;
            if (v74 >= 10001)
            {
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v74;
              *&buf[18] = 2048;
              *&buf[20] = v73;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1604;
              v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              goto LABEL_456;
            }

            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v74;
              *&buf[18] = 2048;
              *&buf[20] = v73;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_addresses->vec[i]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1604;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v73 = *(*(*(v1 + 40) + 8) + 8 * v43);
              v75 = *v73;
            }

            else
            {
              v75 = v74;
            }

            v76 = v75 - 1;
            *v73 = v76;
            if (!v76)
            {
              v77 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                *&buf[4] = "srp_mdns_update_finished";
                *&buf[12] = 2048;
                *&buf[14] = v73;
                *&buf[22] = 2080;
                *&buf[24] = "update->add_addresses->vec[i]";
                *&buf[32] = 2080;
                *&buf[34] = "srp-mdns-proxy.c";
                *&buf[42] = 1024;
                *&buf[44] = 1604;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                v73 = *(*(*(v1 + 40) + 8) + 8 * v43);
              }

              ++adv_record_finalized;
              adv_record_finalize(v73);
              v73 = *(*(*(v1 + 40) + 8) + 8 * v43);
            }

            srp_log_ref_final(v73, v74 - 1, v44, 1604);
            v63 = *(v1 + 40);
          }
        }

        ++v18;
        *(*(v63 + 8) + 8 * v43) = 0;
LABEL_111:
        ++v43;
        v42 = *(v1 + 40);
      }

      while (v43 < *(v42 + 4));
    }

    *(v298 + 1) = v18;
  }

  v78 = *(v3 + 104);
  if (v78 && (v79 = *(v78 + 4), v79 >= 1))
  {
    v80 = 0;
    v81 = *(v78 + 8);
    do
    {
      if (*v81++)
      {
        ++v80;
      }

      --v79;
    }

    while (v79);
  }

  else
  {
    v80 = 0;
  }

  v83 = *(v1 + 80);
  if (v83 && (v84 = *(v83 + 4), v84 >= 1))
  {
    v85 = 0;
    v86 = *(v83 + 8);
    do
    {
      if (*v86++)
      {
        ++v85;
      }

      --v84;
    }

    while (v84);
  }

  else
  {
    v85 = 0;
  }

  v88 = v85 + v80;
  v300 = adv_instance_vec_create(v85 + v80);
  v89 = *(v3 + 104);
  if (!v89 || *(v89 + 4) < 1)
  {
    v91 = 0;
    goto LABEL_209;
  }

  v90 = 0;
  v91 = 0;
  while (v91 != v88)
  {
    v92 = *(v1 + 56);
    if (v92)
    {
      v93 = *(*(v92 + 8) + 8 * v90);
      v94 = *(v1 + 64);
      if (v93)
      {
        if (v94)
        {
          v95 = *(*(v94 + 8) + 8 * v90);
          v96 = global_os_log;
          if (v95)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v97 = *(v95 + 64);
              v98 = *(v95 + 72);
              v99 = *(v95 + 80);
              *buf = 136447491;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2081;
              *&buf[24] = v97;
              *&buf[32] = 2160;
              *&buf[34] = 1752392040;
              *&buf[42] = 2081;
              *&buf[44] = v98;
              *&buf[52] = 1024;
              *&buf[54] = v99;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s: removed instance %{private, mask.hash}s %{private, mask.hash}s %d", buf, 0x3Au);
              v96 = global_os_log;
            }

            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v100 = *(v93 + 64);
              v101 = *(v93 + 72);
              v102 = *(v93 + 80);
              *buf = 136447491;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2081;
              *&buf[24] = v100;
              *&buf[32] = 2160;
              *&buf[34] = 1752392040;
              *&buf[42] = 2081;
              *&buf[44] = v101;
              *&buf[52] = 1024;
              *&buf[54] = v102;
              v103 = v96;
              v104 = "%{public}s: added instance %{private, mask.hash}s %{private, mask.hash}s %d";
              goto LABEL_165;
            }

            goto LABEL_166;
          }
        }

        else
        {
          v96 = global_os_log;
        }

        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v125 = *(v93 + 64);
          v126 = *(v93 + 72);
          v127 = *(v93 + 80);
          *buf = 136447491;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v125;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 2081;
          *&buf[44] = v126;
          *&buf[52] = 1024;
          *&buf[54] = v127;
          v103 = v96;
          v104 = "%{public}s: updated instance %{private, mask.hash}s %{private, mask.hash}s %d";
LABEL_165:
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, v104, buf, 0x3Au);
        }

LABEL_166:
        *(v300[1] + 8 * v91) = v93;
        v128 = *(v300[1] + 8 * v91);
        if (v128)
        {
          v129 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v130 = *v128;
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v130;
            *&buf[18] = 2048;
            *&buf[20] = v128;
            *&buf[28] = 2080;
            *&buf[30] = "instances->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1662;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v128 = *(v300[1] + 8 * v91);
          }

          v131 = *v128;
          if (*v128)
          {
            v132 = v131 + 1;
            *v128 = v131 + 1;
            if (v131 + 1 >= 10001)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v132;
              *&buf[18] = 2048;
              *&buf[20] = v128;
              *&buf[28] = 2080;
              *&buf[30] = "instances->vec[j]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1662;
              v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }
          }

          else
          {
            ++adv_instance_created;
            *v128 = 1;
          }
        }

        v133 = *(*(v1 + 56) + 8);
        v134 = *(v133 + 8 * v90);
        if (v134)
        {
          v135 = *v134;
          if (!*v134)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = 0;
            *&buf[18] = 2048;
            *&buf[20] = v134;
            *&buf[28] = 2080;
            *&buf[30] = "update->update_instances->vec[i]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1664;
            v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }

          v136 = global_os_log;
          if (v135 >= 10001)
          {
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v135;
            *&buf[18] = 2048;
            *&buf[20] = v134;
            *&buf[28] = 2080;
            *&buf[30] = "update->update_instances->vec[i]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1664;
            v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            goto LABEL_451;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v135;
            *&buf[18] = 2048;
            *&buf[20] = v134;
            *&buf[28] = 2080;
            *&buf[30] = "update->update_instances->vec[i]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1664;
            _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v133 = *(*(v1 + 56) + 8);
            v134 = *(v133 + 8 * v90);
            v135 = *v134;
          }

          *v134 = v135 - 1;
          if (v135 == 1)
          {
            v137 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2048;
              *&buf[14] = v134;
              *&buf[22] = 2080;
              *&buf[24] = "update->update_instances->vec[i]";
              *&buf[32] = 2080;
              *&buf[34] = "srp-mdns-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 1664;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v134 = *(*(*(v1 + 56) + 8) + 8 * v90);
            }

            ++adv_instance_finalized;
            adv_instance_finalize(v134);
            v133 = *(*(v1 + 56) + 8);
          }
        }

        *(v133 + 8 * v90) = 0;
        v138 = *(v93 + 48);
        if (v138)
        {
          v139 = *v138;
          if (!*v138)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = 0;
            *&buf[18] = 2048;
            *&buf[20] = v138;
            *&buf[28] = 2080;
            *&buf[30] = "instance->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1667;
            v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }

          v136 = global_os_log;
          if (v139 >= 10001)
          {
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v139;
            *&buf[18] = 2048;
            *&buf[20] = v138;
            *&buf[28] = 2080;
            *&buf[30] = "instance->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1667;
            v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_451:
            v287 = v136;
LABEL_491:
            _os_log_impl(&_mh_execute_header, v287, OS_LOG_TYPE_FAULT, v208, buf, 0x36u);
            goto LABEL_492;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v139;
            *&buf[18] = 2048;
            *&buf[20] = v138;
            *&buf[28] = 2080;
            *&buf[30] = "instance->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1667;
            _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v138 = *(v93 + 48);
            v139 = *v138;
          }

          *v138 = v139 - 1;
          if (v139 == 1)
          {
            v140 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2048;
              *&buf[14] = v138;
              *&buf[22] = 2080;
              *&buf[24] = "instance->update";
              *&buf[32] = 2080;
              *&buf[34] = "srp-mdns-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 1667;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v138 = *(v93 + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v138);
          }

          *(v93 + 48) = 0;
        }

LABEL_192:
        ++v91;
        set_instance_message(v93, v301);
        goto LABEL_193;
      }
    }

    else
    {
      v94 = *(v1 + 64);
    }

    if (v94 && (v105 = *(*(v94 + 8) + 8 * v90)) != 0)
    {
      v106 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v107 = *(v105 + 64);
        v108 = *(v105 + 72);
        v109 = *(v105 + 80);
        *buf = 136447491;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2081;
        *&buf[24] = v107;
        *&buf[32] = 2160;
        *&buf[34] = 1752392040;
        *&buf[42] = 2081;
        *&buf[44] = v108;
        *&buf[52] = 1024;
        *&buf[54] = v109;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "%{public}s: removed instance %{private, mask.hash}s %{private, mask.hash}s %d", buf, 0x3Au);
      }

      *(v300[1] + 8 * v91) = v105;
      v110 = *(v300[1] + 8 * v91);
      if (v110)
      {
        v111 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v112 = *v110;
          *buf = 136447490;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 1024;
          *&buf[14] = v112;
          *&buf[18] = 2048;
          *&buf[20] = v110;
          *&buf[28] = 2080;
          *&buf[30] = "instances->vec[j]";
          *&buf[38] = 2080;
          *&buf[40] = "srp-mdns-proxy.c";
          *&buf[48] = 1024;
          *&buf[50] = 1677;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v110 = *(v300[1] + 8 * v91);
        }

        v113 = *v110;
        if (*v110)
        {
          v114 = v113 + 1;
          *v110 = v113 + 1;
          if (v113 + 1 >= 10001)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v114;
            *&buf[18] = 2048;
            *&buf[20] = v110;
            *&buf[28] = 2080;
            *&buf[30] = "instances->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1677;
            v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_490:
            v287 = v290;
            goto LABEL_491;
          }
        }

        else
        {
          ++adv_instance_created;
          *v110 = 1;
        }
      }

      *(v105 + 132) = 1;
      if (v301)
      {
        v141 = *(v105 + 104);
        if (v141)
        {
          ioloop_message_release_(v141, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1682);
        }

        *(v105 + 104) = v301;
        ioloop_message_retain_(v301, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1685);
      }

      ++v91;
      v142 = *(v105 + 8);
      if (v142)
      {
        ioloop_dnssd_txn_cancel(v142);
        ioloop_dnssd_txn_release_(*(v105 + 8), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1692);
        *(v105 + 8) = 0;
      }

      else
      {
        v143 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v144 = *(v105 + 64);
          v145 = *(v105 + 72);
          v146 = *(v3 + 48);
          *buf = 136447747;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v144;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 2081;
          *&buf[44] = v145;
          *&buf[52] = 2160;
          *&buf[54] = 1752392040;
          *&buf[62] = 2081;
          *&buf[64] = v146;
          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%{public}s: instance %{private, mask.hash}s.%{private, mask.hash}s for host %{private, mask.hash}s has no connection.", buf, 0x48u);
        }
      }
    }

    else
    {
      v93 = *(*(v89 + 8) + 8 * v90);
      if (v93)
      {
        v115 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v116 = *(v93 + 64);
          v117 = *(v93 + 72);
          v118 = *(v93 + 80);
          v119 = *(v93 + 104);
          *buf = 136447747;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v116;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 2081;
          *&buf[44] = v117;
          *&buf[52] = 1024;
          *&buf[54] = v118;
          *&buf[58] = 2048;
          *&buf[60] = v119;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%{public}s: kept instance %{private, mask.hash}s %{private, mask.hash}s %d, instance->message = %p", buf, 0x44u);
        }

        *(v300[1] + 8 * v91) = v93;
        v120 = *(v300[1] + 8 * v91);
        if (v120)
        {
          v121 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v122 = *v120;
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v122;
            *&buf[18] = 2048;
            *&buf[20] = v120;
            *&buf[28] = 2080;
            *&buf[30] = "instances->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1701;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v120 = *(v300[1] + 8 * v91);
          }

          v123 = *v120;
          if (*v120)
          {
            v124 = v123 + 1;
            *v120 = v123 + 1;
            if (v123 + 1 >= 10001)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v124;
              *&buf[18] = 2048;
              *&buf[20] = v120;
              *&buf[28] = 2080;
              *&buf[30] = "instances->vec[j]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1701;
              v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }
          }

          else
          {
            ++adv_instance_created;
            *v120 = 1;
          }
        }

        goto LABEL_192;
      }
    }

LABEL_193:
    ++v90;
    v89 = *(v3 + 104);
    if (v90 >= *(v89 + 4))
    {
      goto LABEL_209;
    }
  }

  v147 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446722;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v88;
    *&buf[18] = 1024;
    *&buf[20] = v88;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_FAULT, "%{public}s: j (%d) == num_instances (%d)", buf, 0x18u);
  }

  v91 = v88;
LABEL_209:
  v148 = *(v1 + 72);
  if (v148 && *(v148 + 4) >= 1)
  {
    v149 = 0;
    do
    {
      v150 = *(*(v148 + 8) + 8 * v149);
      if (v150)
      {
        if (v301)
        {
          v151 = *(v150 + 104);
          if (v151)
          {
            ioloop_message_release_(v151, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1717);
          }

          *(v150 + 104) = v301;
          ioloop_message_retain_(v301, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1720);
        }

        *(v150 + 112) = 0;
        v152 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v153 = *(v150 + 64);
          v154 = *(v150 + 72);
          v155 = *(v150 + 80);
          *buf = 136447491;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v153;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 2081;
          *&buf[44] = v154;
          *&buf[52] = 1024;
          *&buf[54] = v155;
          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "%{public}s: renewed instance %{private, mask.hash}s %{private, mask.hash}s %d", buf, 0x3Au);
        }
      }

      ++v149;
      v148 = *(v1 + 72);
    }

    while (v149 < *(v148 + 4));
  }

  v156 = *(v1 + 80);
  if (v156 && *(v156 + 4) >= 1)
  {
    for (i = 0; i < *(v156 + 4); ++i)
    {
      v158 = *(*(v156 + 8) + 8 * i);
      if (v158)
      {
        v159 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v160 = *(v158 + 64);
          v161 = *(v158 + 72);
          v162 = *(v158 + 80);
          *buf = 136447491;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2081;
          *&buf[24] = v160;
          *&buf[32] = 2160;
          *&buf[34] = 1752392040;
          *&buf[42] = 2081;
          *&buf[44] = v161;
          *&buf[52] = 1024;
          *&buf[54] = v162;
          _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "%{public}s: added instance %{private, mask.hash}s %{private, mask.hash}s %d", buf, 0x3Au);
        }

        *(v300[1] + 8 * v91) = v158;
        v163 = *(v300[1] + 8 * v91);
        if (v163)
        {
          v164 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v165 = *v163;
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v165;
            *&buf[18] = 2048;
            *&buf[20] = v163;
            *&buf[28] = 2080;
            *&buf[30] = "instances->vec[j]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1736;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v163 = *(v300[1] + 8 * v91);
          }

          v166 = *v163;
          if (*v163)
          {
            v167 = v166 + 1;
            *v163 = v166 + 1;
            if (v166 + 1 >= 10001)
            {
              v290 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_492;
              }

              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v167;
              *&buf[18] = 2048;
              *&buf[20] = v163;
              *&buf[28] = 2080;
              *&buf[30] = "instances->vec[j]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1736;
              v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_490;
            }
          }

          else
          {
            ++adv_instance_created;
            *v163 = 1;
          }
        }

        v168 = *(*(v1 + 80) + 8);
        v169 = *(v168 + 8 * i);
        if (v169)
        {
          v170 = *v169;
          if (!*v169)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = 0;
            *&buf[18] = 2048;
            *&buf[20] = v169;
            *&buf[28] = 2080;
            *&buf[30] = "update->add_instances->vec[i]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1738;
            v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }

          v171 = global_os_log;
          if (v170 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v170;
              *&buf[18] = 2048;
              *&buf[20] = v169;
              *&buf[28] = 2080;
              *&buf[30] = "update->add_instances->vec[i]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1738;
              v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              goto LABEL_432;
            }

            goto LABEL_492;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v170;
            *&buf[18] = 2048;
            *&buf[20] = v169;
            *&buf[28] = 2080;
            *&buf[30] = "update->add_instances->vec[i]";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1738;
            _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v168 = *(*(v1 + 80) + 8);
            v169 = *(v168 + 8 * i);
            v170 = *v169;
          }

          *v169 = v170 - 1;
          if (v170 == 1)
          {
            v172 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2048;
              *&buf[14] = v169;
              *&buf[22] = 2080;
              *&buf[24] = "update->add_instances->vec[i]";
              *&buf[32] = 2080;
              *&buf[34] = "srp-mdns-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 1738;
              _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v169 = *(*(*(v1 + 80) + 8) + 8 * i);
            }

            ++adv_instance_finalized;
            adv_instance_finalize(v169);
            v168 = *(*(v1 + 80) + 8);
          }
        }

        *(v168 + 8 * i) = 0;
        v173 = *(v158 + 48);
        if (v173)
        {
          v174 = *v173;
          if (!*v173)
          {
            v290 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_492;
            }

            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = 0;
            *&buf[18] = 2048;
            *&buf[20] = v173;
            *&buf[28] = 2080;
            *&buf[30] = "instance->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1741;
            v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
            goto LABEL_490;
          }

          v171 = global_os_log;
          if (v174 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 1024;
              *&buf[14] = v174;
              *&buf[18] = 2048;
              *&buf[20] = v173;
              *&buf[28] = 2080;
              *&buf[30] = "instance->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 1741;
              v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              goto LABEL_432;
            }

LABEL_492:
            abort();
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = v174;
            *&buf[18] = 2048;
            *&buf[20] = v173;
            *&buf[28] = 2080;
            *&buf[30] = "instance->update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 1741;
            _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v173 = *(v158 + 48);
            v174 = *v173;
          }

          *v173 = v174 - 1;
          if (v174 == 1)
          {
            v175 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2048;
              *&buf[14] = v173;
              *&buf[22] = 2080;
              *&buf[24] = "instance->update";
              *&buf[32] = 2080;
              *&buf[34] = "srp-mdns-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 1741;
              _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              v173 = *(v158 + 48);
            }

            ++adv_update_finalized;
            adv_update_finalize(v173);
          }

          *(v158 + 48) = 0;
        }

        ++v91;
        set_instance_message(v158, v301);
        v156 = *(v1 + 80);
      }
    }
  }

  *(v300 + 1) = v91;
  if (v91 >= 1)
  {
    v176 = v300[1];
    v177 = v91;
    do
    {
      if (*v176)
      {
        *(*v176 + 135) = 0;
      }

      v176 += 8;
      --v177;
    }

    while (v177);
  }

  v178 = *(v3 + 88);
  if (v178)
  {
    v179 = *v178;
    if (!*v178)
    {
      v290 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v178;
      *&buf[28] = 2080;
      *&buf[30] = "host->addresses";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1759;
      v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_490;
    }

    v171 = global_os_log;
    if (v179 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v179;
        *&buf[18] = 2048;
        *&buf[20] = v178;
        *&buf[28] = 2080;
        *&buf[30] = "host->addresses";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1759;
        _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v178 = *(v3 + 88);
        v179 = *v178;
      }

      *v178 = v179 - 1;
      if (v179 == 1)
      {
        v180 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2048;
          *&buf[14] = v178;
          *&buf[22] = 2080;
          *&buf[24] = "host->addresses";
          *&buf[32] = 2080;
          *&buf[34] = "srp-mdns-proxy.c";
          *&buf[42] = 1024;
          *&buf[44] = 1759;
          _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v178 = *(v3 + 88);
        }

        ++adv_record_vec_finalized;
        adv_record_vec_finalize(v178);
      }

      goto LABEL_268;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_492;
    }

    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v179;
    *&buf[18] = 2048;
    *&buf[20] = v178;
    *&buf[28] = 2080;
    *&buf[30] = "host->addresses";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1759;
    v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_432:
    v287 = v171;
    goto LABEL_491;
  }

LABEL_268:
  *(v3 + 88) = v298;
  v181 = *(v3 + 104);
  if (v181)
  {
    if (*(v181 + 4) >= 1)
    {
      for (j = 0; j < *(v181 + 4); ++j)
      {
        v183 = *(*(v181 + 8) + 8 * j);
        v184 = global_os_log;
        v185 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if (v183)
        {
          if (v185)
          {
            v186 = *(v183 + 8);
            v187 = *(v183 + 9);
            v188 = *(v3 + 48);
            v189 = *v183;
            *buf = 136448259;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 1024;
            *&buf[14] = j;
            *&buf[18] = 2160;
            *&buf[20] = 1752392040;
            *&buf[28] = 2081;
            *&buf[30] = v186;
            *&buf[38] = 2160;
            *&buf[40] = 1752392040;
            *&buf[48] = 2081;
            *&buf[50] = v187;
            *&buf[58] = 2160;
            *&buf[60] = 1752392040;
            *&buf[68] = 2081;
            *&buf[70] = v188;
            *&buf[78] = 1024;
            *&buf[80] = v189;
            v190 = v184;
            v191 = "%{public}s: old host instance %d %{private, mask.hash}s.%{private, mask.hash}s for host %{private, mask.hash}s has ref_count %d";
            v192 = 84;
LABEL_276:
            _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, v191, buf, v192);
          }
        }

        else if (v185)
        {
          *buf = 136446466;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 1024;
          *&buf[14] = j;
          v190 = v184;
          v191 = "%{public}s: old host instance %d is NULL";
          v192 = 18;
          goto LABEL_276;
        }

        v181 = *(v3 + 104);
      }
    }

    v193 = *v181;
    if (!*v181)
    {
      v290 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v181;
      *&buf[28] = 2080;
      *&buf[30] = "host->instances";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1773;
      v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_490;
    }

    v171 = global_os_log;
    if (v193 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v193;
      *&buf[18] = 2048;
      *&buf[20] = v181;
      *&buf[28] = 2080;
      *&buf[30] = "host->instances";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1773;
      v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_432;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v193;
      *&buf[18] = 2048;
      *&buf[20] = v181;
      *&buf[28] = 2080;
      *&buf[30] = "host->instances";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1773;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v181 = *(v3 + 104);
      v193 = *v181;
    }

    *v181 = v193 - 1;
    if (v193 == 1)
    {
      v194 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2048;
        *&buf[14] = v181;
        *&buf[22] = 2080;
        *&buf[24] = "host->instances";
        *&buf[32] = 2080;
        *&buf[34] = "srp-mdns-proxy.c";
        *&buf[42] = 1024;
        *&buf[44] = 1773;
        _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v181 = *(v3 + 104);
      }

      ++adv_instance_vec_finalized;
      adv_instance_vec_finalize(v181);
    }
  }

  *(v3 + 104) = v300;
  v195 = *(v3 + 96);
  if (v195)
  {
    v196 = *(v1 + 48);
    if (!v196 || v195 == v196)
    {
      goto LABEL_319;
    }

    srp_mdns_shared_record_remove_(*(v3 + 8), v195, 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1778);
    srp_mdns_shared_record_remove_(*(v3 + 8), *(v3 + 96), 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1779);
    v197 = *(v3 + 96);
    if (v197 && srp_log_ref_check(v197, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1780))
    {
      v198 = *(v3 + 96);
      v199 = *v198;
      if (!*v198)
      {
        v290 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_492;
        }

        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        *&buf[18] = 2048;
        *&buf[20] = v198;
        *&buf[28] = 2080;
        *&buf[30] = "host->key_record";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1780;
        v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_490;
      }

      v200 = global_os_log;
      if (v199 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_492;
        }

        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v199;
        *&buf[18] = 2048;
        *&buf[20] = v198;
        *&buf[28] = 2080;
        *&buf[30] = "host->key_record";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1780;
        v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v287 = v200;
        goto LABEL_491;
      }

      v201 = v199 - 1;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v199;
        *&buf[18] = 2048;
        *&buf[20] = v198;
        *&buf[28] = 2080;
        *&buf[30] = "host->key_record";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1780;
        _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v198 = *(v3 + 96);
        v199 = *v198;
      }

      *v198 = v199 - 1;
      if (v199 == 1)
      {
        v202 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2048;
          *&buf[14] = v198;
          *&buf[22] = 2080;
          *&buf[24] = "host->key_record";
          *&buf[32] = 2080;
          *&buf[34] = "srp-mdns-proxy.c";
          *&buf[42] = 1024;
          *&buf[44] = 1780;
          _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v198 = *(v3 + 96);
        }

        ++adv_record_finalized;
        adv_record_finalize(v198);
        v198 = *(v3 + 96);
      }

      srp_log_ref_final(v198, v201, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1780);
    }

    *(v3 + 96) = 0;
  }

  v203 = *(v1 + 48);
  if (v203)
  {
    *(v3 + 96) = v203;
    v204 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v205 = *v203;
      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v205;
      *&buf[18] = 2048;
      *&buf[20] = v203;
      *&buf[28] = 2080;
      *&buf[30] = "host->key_record";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1785;
      _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v203 = *(v3 + 96);
    }

    v206 = *v203;
    if (*v203)
    {
      v207 = v206 + 1;
      *v203 = v206 + 1;
      if (v206 + 1 >= 10001)
      {
        v290 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_492;
        }

        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v207;
        *&buf[18] = 2048;
        *&buf[20] = v203;
        *&buf[28] = 2080;
        *&buf[30] = "host->key_record";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1785;
        v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_490;
      }
    }

    else
    {
      ++adv_record_created;
      v207 = 1;
      *v203 = 1;
    }

    srp_log_ref_final(v203, v207, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1785);
    v209 = *(v1 + 48);
    v210 = *(v209 + 48);
    if (v210)
    {
      v211 = *v210;
      if (!*v210)
      {
        v290 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_492;
        }

        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        *&buf[18] = 2048;
        *&buf[20] = v210;
        *&buf[28] = 2080;
        *&buf[30] = "update->key->update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1787;
        v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_490;
      }

      v171 = global_os_log;
      if (v211 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_492;
        }

        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v211;
        *&buf[18] = 2048;
        *&buf[20] = v210;
        *&buf[28] = 2080;
        *&buf[30] = "update->key->update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1787;
        v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_432;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 1024;
        *&buf[14] = v211;
        *&buf[18] = 2048;
        *&buf[20] = v210;
        *&buf[28] = 2080;
        *&buf[30] = "update->key->update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 1787;
        _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v209 = *(v1 + 48);
        v210 = *(v209 + 48);
        v211 = *v210;
      }

      *v210 = v211 - 1;
      if (v211 == 1)
      {
        v212 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          *&buf[4] = "srp_mdns_update_finished";
          *&buf[12] = 2048;
          *&buf[14] = v210;
          *&buf[22] = 2080;
          *&buf[24] = "update->key->update";
          *&buf[32] = 2080;
          *&buf[34] = "srp-mdns-proxy.c";
          *&buf[42] = 1024;
          *&buf[44] = 1787;
          _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          v210 = *(*(v1 + 48) + 48);
        }

        ++adv_update_finalized;
        adv_update_finalize(v210);
        v209 = *(v1 + 48);
      }

      *(v209 + 48) = 0;
    }
  }

LABEL_319:
  v213 = *(v1 + 32);
  if (v213 && *(v213 + 4) >= 1)
  {
    v214 = 0;
    do
    {
      v215 = *(v213 + 8);
      v216 = *(v215 + 8 * v214);
      if (v216)
      {
        srp_mdns_shared_record_remove_(*(v3 + 8), *(v215 + 8 * v214), 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1797);
        srp_mdns_shared_record_remove_(*(v3 + 8), v216, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1798);
        v213 = *(v1 + 32);
      }

      ++v214;
    }

    while (v214 < *(v213 + 4));
  }

  if (v296)
  {
    v217 = *(v3 + 64);
    if (v217)
    {
      ioloop_message_release_(v217, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1807);
    }

    v218 = v296[4];
    *(v3 + 64) = v218;
    ioloop_message_retain_(v218, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1810);
    advertise_finished(*(v3 + 48), v296[1], v296[4], 0, v296, 1);
    v299 = *v296;
    *v296 = 0;
    srp_parse_client_updates_free_(v296, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1816);
    *(v1 + 16) = 0;
    v219 = *(*(v3 + 64) + 72);
    if (v219)
    {
      *(v3 + 192) = v219;
      *buf = 0;
      *&buf[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
      v220 = *(v3 + 192);
      v221 = *buf - v220;
      v222 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2048;
        *&buf[14] = v220;
        *&buf[22] = 2048;
        *&buf[24] = v221;
        _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "%{public}s: setting host update time based on message received time: %ld, lease offset = %ld", buf, 0x20u);
      }
    }

    else
    {
      v224 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2048;
        *&buf[14] = 0;
        _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "%{public}s: setting host update time based on current time: %ld", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
      v221 = 0;
      *(v3 + 192) = *buf;
    }
  }

  else
  {
    v223 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "%{public}s: lease offset = %ld", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
    v299 = 0;
    v221 = *buf - *(v3 + 192);
  }

  v225 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v226 = *v1;
    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v226;
    *&buf[18] = 2048;
    *&buf[20] = v1;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1831;
    _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v227 = *v1;
  if (*v1)
  {
    v228 = v227 + 1;
    *v1 = v227 + 1;
    if (v227 + 1 >= 10001)
    {
      v229 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v228;
      *&buf[18] = 2048;
      *&buf[20] = a1;
      *&buf[28] = 2080;
      *&buf[30] = "update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1831;
      v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_465:
      v287 = v229;
      goto LABEL_491;
    }
  }

  else
  {
    ++adv_update_created;
    *v1 = 1;
  }

  v230 = *(v3 + 40);
  if (v230)
  {
    v231 = *v230;
    if (!*v230)
    {
      v290 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v230;
      *&buf[28] = 2080;
      *&buf[30] = "host->update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1837;
      v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_490;
    }

    v171 = global_os_log;
    if (v231 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v231;
      *&buf[18] = 2048;
      *&buf[20] = v230;
      *&buf[28] = 2080;
      *&buf[30] = "host->update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1837;
      v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_432;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v231;
      *&buf[18] = 2048;
      *&buf[20] = v230;
      *&buf[28] = 2080;
      *&buf[30] = "host->update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1837;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v230 = *(v3 + 40);
      v231 = *v230;
    }

    *v230 = v231 - 1;
    if (v231 == 1)
    {
      v232 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "srp_mdns_update_finished";
        *&buf[12] = 2048;
        *&buf[14] = v230;
        *&buf[22] = 2080;
        *&buf[24] = "host->update";
        *&buf[32] = 2080;
        *&buf[34] = "srp-mdns-proxy.c";
        *&buf[42] = 1024;
        *&buf[44] = 1837;
        _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        v230 = *(v3 + 40);
      }

      ++adv_update_finalized;
      adv_update_finalize(v230);
    }

    *(v3 + 40) = 0;
  }

  else
  {
    v233 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "srp_mdns_update_finished";
      _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_ERROR, "%{public}s: p_update is null.", buf, 0xCu);
    }
  }

  *(v3 + 184) = 0;
  v234 = *(v1 + 108);
  *(v3 + 240) = v234;
  *(v3 + 244) = v234;
  v235 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v236 = *(*(v3 + 64) + 80);
    *buf = 136446978;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v236;
    *&buf[18] = 1024;
    *&buf[20] = v234;
    *&buf[24] = 1024;
    *&buf[26] = v234;
    _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "%{public}s: host->message->lease = %d, host->lease_interval = %d, host->key_lease = %d", buf, 0x1Eu);
  }

  v237 = *(v3 + 64);
  if (!*(v237 + 80))
  {
    *(v237 + 80) = *(v3 + 240);
  }

  *buf = 0;
  *&buf[8] = 0;
  gettimeofday(buf, 0);
  v238 = 1000 * *buf + *&buf[8] / 1000;
  v239 = *(v1 + 112);
  if (!v239)
  {
    v243 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v244 = *(v3 + 48);
      v245 = 1000 * (*(v3 + 240) - v221);
      *buf = 136446979;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2081;
      *&buf[24] = v244;
      *&buf[32] = 2048;
      *&buf[34] = v245;
      _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "%{public}s: lease_expiry (2) for host %{private, mask.hash}s set to %ld", buf, 0x2Au);
    }

    if (v238 + 1000 * (*(v3 + 240) - v221) <= v238)
    {
      v239 = v238;
    }

    else
    {
      v239 = v238 + 1000 * (*(v3 + 240) - v221);
    }

LABEL_371:
    v241 = v239;
    goto LABEL_372;
  }

  v240 = global_os_log;
  if (v239 >= v238)
  {
    v241 = *(v1 + 112);
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_372;
    }

    v246 = *(v3 + 48);
    *buf = 136446979;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    *&buf[22] = 2081;
    *&buf[24] = v246;
    *&buf[32] = 2048;
    *&buf[34] = v239 - v238;
    _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "%{public}s: lease_expiry (1) for host %{private, mask.hash}s set to %lld", buf, 0x2Au);
    v239 = *(v1 + 112);
    goto LABEL_371;
  }

  v241 = 1000 * *buf + *&buf[8] / 1000;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v242 = *(v3 + 56);
    *buf = 136446979;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    *&buf[22] = 2081;
    *&buf[24] = v242;
    *&buf[32] = 2048;
    *&buf[34] = v238 - v239;
    _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_ERROR, "%{public}s: lease expiry for host %{private, mask.hash}s happened %llu milliseconds ago.", buf, 0x2Au);
    v239 = *(v1 + 112);
    v241 = v238;
  }

LABEL_372:
  *(v3 + 248) = v239;
  v247 = *(v3 + 104);
  if (*(v247 + 4) >= 1)
  {
    for (k = 0; k < *(v247 + 4); ++k)
    {
      v249 = *(*(v247 + 8) + 8 * k);
      if (v249)
      {
        if (*(v249 + 104) == v301)
        {
          v259 = *(v249 + 132);
          v260 = global_os_log;
          v261 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
          if (v259 != 1)
          {
            v269 = *(v3 + 248);
            if (v261)
            {
              v270 = *(v3 + 48);
              v271 = *(v249 + 64);
              v272 = *(v249 + 72);
              *buf = 136448003;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2081;
              *&buf[24] = v270;
              *&buf[32] = 2160;
              *&buf[34] = 1752392040;
              *&buf[42] = 2081;
              *&buf[44] = v271;
              *&buf[52] = 2160;
              *&buf[54] = 1752392040;
              *&buf[62] = 2081;
              *&buf[64] = v272;
              *&buf[72] = 2048;
              *&buf[74] = v269 - v238;
              _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEFAULT, "%{public}s: lease_expiry (4) for host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s set to %lld", buf, 0x52u);
              v269 = *(v3 + 248);
            }

            *(v249 + 120) = v269;
            goto LABEL_395;
          }

          if (v261)
          {
            v262 = *(v3 + 48);
            v263 = *(v249 + 64);
            v264 = *(v249 + 72);
            v265 = *(v249 + 120) - v238;
            *buf = 136448003;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2081;
            *&buf[24] = v262;
            *&buf[32] = 2160;
            *&buf[34] = 1752392040;
            *&buf[42] = 2081;
            *&buf[44] = v263;
            *&buf[52] = 2160;
            *&buf[54] = 1752392040;
            *&buf[62] = 2081;
            *&buf[64] = v264;
            *&buf[72] = 2048;
            *&buf[74] = v265;
            v257 = v260;
            v258 = "%{public}s: lease_expiry (7) for host %{private, mask.hash}s removed instance %{private, mask.hash}s.%{private, mask.hash}s left at %lld";
            goto LABEL_387;
          }
        }

        else
        {
          v250 = *(v249 + 120);
          v251 = global_os_log;
          v252 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
          if (v250 > v238 && v241 > v250)
          {
            v241 = v250;
            if (v252)
            {
              v266 = *(v3 + 48);
              v267 = *(v249 + 64);
              v268 = *(v249 + 72);
              *buf = 136448003;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2081;
              *&buf[24] = v266;
              *&buf[32] = 2160;
              *&buf[34] = 1752392040;
              *&buf[42] = 2081;
              *&buf[44] = v267;
              *&buf[52] = 2160;
              *&buf[54] = 1752392040;
              *&buf[62] = 2081;
              *&buf[64] = v268;
              *&buf[72] = 2048;
              *&buf[74] = v250 - v238;
              _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "%{public}s: lease_expiry (3) for host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s set to %lld", buf, 0x52u);
              v241 = *(v249 + 120);
            }

            goto LABEL_395;
          }

          if (v250 <= v238)
          {
            v241 = v238;
            if (v252)
            {
              v273 = *(v3 + 48);
              v274 = *(v249 + 64);
              v275 = *(v249 + 72);
              *buf = 136448003;
              *&buf[4] = "srp_mdns_update_finished";
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2081;
              *&buf[24] = v273;
              *&buf[32] = 2160;
              *&buf[34] = 1752392040;
              *&buf[42] = 2081;
              *&buf[44] = v274;
              *&buf[52] = 2160;
              *&buf[54] = 1752392040;
              *&buf[62] = 2081;
              *&buf[64] = v275;
              *&buf[72] = 2048;
              *&buf[74] = v238 - v250;
              _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "%{public}s: lease_expiry (5) for host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s in the past at %lld", buf, 0x52u);
              v241 = v238;
            }

            goto LABEL_395;
          }

          if (v252)
          {
            v254 = *(v3 + 48);
            v255 = *(v249 + 64);
            v256 = *(v249 + 72);
            *buf = 136448003;
            *&buf[4] = "srp_mdns_update_finished";
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2081;
            *&buf[24] = v254;
            *&buf[32] = 2160;
            *&buf[34] = 1752392040;
            *&buf[42] = 2081;
            *&buf[44] = v255;
            *&buf[52] = 2160;
            *&buf[54] = 1752392040;
            *&buf[62] = 2081;
            *&buf[64] = v256;
            *&buf[72] = 2048;
            *&buf[74] = v241 - v250;
            v257 = v251;
            v258 = "%{public}s: lease_expiry (6) for host %{private, mask.hash}s instance %{private, mask.hash}s.%{private, mask.hash}s is later than next_lease_expiry by %lld";
LABEL_387:
            _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, v258, buf, 0x52u);
          }
        }
      }

LABEL_395:
      v247 = *(v3 + 104);
    }
  }

  if ((v241 - v238) >= 0x7FFFFFFF)
  {
    v276 = 0x7FFFFFFF;
  }

  else
  {
    v276 = v241 - v238;
  }

  v277 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v278 = *v3;
    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v278;
    *&buf[18] = 2048;
    *&buf[20] = v3;
    *&buf[28] = 2080;
    *&buf[30] = "host";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1974;
    _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v279 = *v3;
  if (*v3)
  {
    v280 = v279 + 1;
    *v3 = v279 + 1;
    if (v279 + 1 >= 10001)
    {
      v290 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_492;
      }

      *buf = 136447490;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 1024;
      *&buf[14] = v280;
      *&buf[18] = 2048;
      *&buf[20] = v3;
      *&buf[28] = 2080;
      *&buf[30] = "host";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 1974;
      v208 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_490;
    }
  }

  else
  {
    ++adv_host_created;
    *v3 = 1;
  }

  v281 = global_os_log;
  v282 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v241 == v238)
  {
    if (v282)
    {
      v283 = *(v3 + 48);
      *buf = 136446723;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2081;
      *&buf[24] = v283;
      _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "%{public}s: scheduling immediate call to lease_callback in the run loop for %{private, mask.hash}s", buf, 0x20u);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = __ioloop_run_async_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_41;
    *&buf[32] = lease_callback;
    *&buf[40] = v3;
    *&buf[48] = srp_adv_host_context_release;
    dispatch_async(ioloop_main_queue, buf);
  }

  else
  {
    if (v282)
    {
      v284 = *(v3 + 48);
      *buf = 136446979;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 2048;
      *&buf[14] = v276 / 0x3E8uLL;
      *&buf[22] = 2160;
      *&buf[24] = 1752392040;
      *&buf[32] = 2081;
      *&buf[34] = v284;
      _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "%{public}s: scheduling wakeup to lease_callback in %llu for host %{private, mask.hash}s", buf, 0x2Au);
    }

    ioloop_add_wake_event(*(v3 + 24), v3, lease_callback, srp_adv_host_context_release, v276);
  }

  adv_update_free_instance_vectors(v1);
  v285 = *v1;
  if (!*v1)
  {
    v229 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_492;
    }

    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1990;
    v208 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_465;
  }

  v229 = global_os_log;
  if (v285 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_492;
    }

    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v285;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1990;
    v208 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_465;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "srp_mdns_update_finished";
    *&buf[12] = 1024;
    *&buf[14] = v285;
    *&buf[18] = 2048;
    *&buf[20] = v1;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 1990;
    _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v285 = *v1;
  }

  *v1 = v285 - 1;
  if (v285 == 1)
  {
    v286 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "srp_mdns_update_finished";
      *&buf[12] = 2048;
      *&buf[14] = v1;
      *&buf[22] = 2080;
      *&buf[24] = "update";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 1990;
      _os_log_impl(&_mh_execute_header, v286, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_update_finalized;
    adv_update_finalize(v1);
  }

  if (v299)
  {
    srp_update_start();
  }

  else
  {
    srp_dump_server_stats(v295, 0, 0);
  }
}

void *adv_record_vec_create(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x9E2FCB29uLL);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  if (v3 < 0)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v19 = "adv_record_vec_create";
    i = "%{public}s: strict_calloc count * size would overflow";
    v14 = v12;
    v15 = 12;
    goto LABEL_18;
  }

  v4 = v2;
  v5 = v3;
  v6 = malloc_type_calloc(v3, 8uLL, 0x9E2FCB29uLL);
  if (!v6)
  {
    v16 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    v19 = "adv_record_vec_create";
    v20 = 2048;
    *v21 = v5;
    *&v21[8] = 2048;
    *&v21[10] = 8;
    for (i = "%{public}s: strict_calloc(%zu, %zu) failed"; ; i = "%{public}s: strict_calloc(%zu, %zu) failed")
    {
      v14 = v16;
      v15 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, i, buf, v15);
      do
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v16 = global_os_log;
      }

      while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
      *buf = 136446722;
      v19 = "adv_record_vec_create";
      v20 = 2048;
      *v21 = 1;
      *&v21[8] = 2048;
      *&v21[10] = 16;
    }
  }

  v4[1] = v6;
  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v4;
    *buf = 136447490;
    v19 = "adv_record_vec_create";
    v20 = 1024;
    *v21 = v8;
    *&v21[4] = 2048;
    *&v21[6] = v4;
    *&v21[14] = 2080;
    *&v21[16] = "vec";
    v22 = 2080;
    v23 = "srp-mdns-proxy.c";
    v24 = 1024;
    v25 = 366;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v4)
  {
    v9 = *v4 + 1;
    *v4 = v9;
    if (v9 >= 10001)
    {
      v17 = v9;
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v19 = "adv_record_vec_create";
        v20 = 1024;
        *v21 = v17;
        *&v21[4] = 2048;
        *&v21[6] = v4;
        *&v21[14] = 2080;
        *&v21[16] = "vec";
        v22 = 2080;
        v23 = "srp-mdns-proxy.c";
        v24 = 1024;
        v25 = 366;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++adv_record_vec_created;
    *v4 = 1;
  }

  return v4;
}

void *adv_instance_vec_create(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x43E0F0uLL);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  if (v3 < 0)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v19 = "adv_instance_vec_create";
    i = "%{public}s: strict_calloc count * size would overflow";
    v14 = v12;
    v15 = 12;
    goto LABEL_18;
  }

  v4 = v2;
  v5 = v3;
  v6 = malloc_type_calloc(v3, 8uLL, 0x43E0F0uLL);
  if (!v6)
  {
    v16 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    v19 = "adv_instance_vec_create";
    v20 = 2048;
    *v21 = v5;
    *&v21[8] = 2048;
    *&v21[10] = 8;
    for (i = "%{public}s: strict_calloc(%zu, %zu) failed"; ; i = "%{public}s: strict_calloc(%zu, %zu) failed")
    {
      v14 = v16;
      v15 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, i, buf, v15);
      do
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v16 = global_os_log;
      }

      while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
      *buf = 136446722;
      v19 = "adv_instance_vec_create";
      v20 = 2048;
      *v21 = 1;
      *&v21[8] = 2048;
      *&v21[10] = 16;
    }
  }

  v4[1] = v6;
  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v4;
    *buf = 136447490;
    v19 = "adv_instance_vec_create";
    v20 = 1024;
    *v21 = v8;
    *&v21[4] = 2048;
    *&v21[6] = v4;
    *&v21[14] = 2080;
    *&v21[16] = "vec";
    v22 = 2080;
    v23 = "srp-mdns-proxy.c";
    v24 = 1024;
    v25 = 362;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v4)
  {
    v9 = *v4 + 1;
    *v4 = v9;
    if (v9 >= 10001)
    {
      v17 = v9;
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v19 = "adv_instance_vec_create";
        v20 = 1024;
        *v21 = v17;
        *&v21[4] = 2048;
        *&v21[6] = v4;
        *&v21[14] = 2080;
        *&v21[16] = "vec";
        v22 = 2080;
        v23 = "srp-mdns-proxy.c";
        v24 = 1024;
        v25 = 362;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++adv_instance_vec_created;
    *v4 = 1;
  }

  return v4;
}

void set_instance_message(uint64_t a1, int *a2)
{
  if (a2 && *(a1 + 112) == a2)
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      ioloop_message_release_(v4, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1486);
    }

    *(a1 + 104) = a2;
    ioloop_message_retain_(a2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 1489);
    *(a1 + 112) = 0;
  }
}

void advertise_finished(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, char a6)
{
  v29.iov_len = 0;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v12 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 0x17)
    {
      v13 = "Unknown rcode.";
      if (a5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = off_1000A5370[a4];
      if (a5)
      {
LABEL_4:
        v14 = *(a5 + 96);
        v15 = *(a5 + 100);
LABEL_7:
        *buf = 136447747;
        *&buf[4] = "advertise_finished";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2081;
        *&buf[24] = a1;
        *&buf[32] = 2082;
        *&buf[34] = v13;
        *&buf[42] = 1024;
        *&buf[44] = v14;
        *&buf[48] = 1024;
        *&buf[50] = v15;
        *&buf[54] = 2048;
        v33 = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{private, mask.hash}s: rcode = %{public}s, lease = %d, key_lease = %d  connection = %p", buf, 0x40u);
        goto LABEL_8;
      }
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:
  if (!a2)
  {
    return;
  }

  if (a6)
  {
    v35 = 0;
    v34[0] = *(a3 + 88);
    v34[1] = bswap32(a4 | (bswap32(*(a3 + 90) & 0xF0FF) >> 16) | 0x8000) >> 16;
    v29.iov_base = v34;
    if (!a5)
    {
      v29.iov_len = 12;
LABEL_37:
      ioloop_send_message(a2, a3, &v29);
      return;
    }

    v33 = 0;
    memset(&buf[24], 0, 32);
    *&buf[8] = v36;
    *&buf[16] = &v38;
    *buf = v34;
    v35 = 0x100000000000000;
    dns_edns0_header_to_wire_(buf, 709);
    v16 = v33;
    if (v33 > 1)
    {
      goto LABEL_33;
    }

    v17 = (*&buf[8] + 2);
    if ((*&buf[8] + 2) < *&buf[16])
    {
      if (*&buf[24])
      {
LABEL_14:
        v18 = v16 | 0x2C;
        goto LABEL_32;
      }

      *&buf[24] = *&buf[8];
      *&buf[8] += 2;
      if ((v17 + 1) < *&buf[16])
      {
        *v17 = 512;
        *&buf[8] = v17 + 1;
        v16 = v33;
        if (v33 > 1)
        {
          goto LABEL_33;
        }

        v20 = (*&buf[8] + 2);
        if ((*&buf[8] + 2) < *&buf[16])
        {
          if (*&buf[32])
          {
            goto LABEL_14;
          }

          *&buf[32] = *&buf[8];
          *&buf[8] += 2;
          if ((v20 + 4) < *&buf[16])
          {
            v21 = *(a5 + 96);
            *v20 = HIBYTE(v21);
            v20[1] = BYTE2(v21);
            v20[2] = BYTE1(v21);
            *&buf[8] = v20 + 4;
            v20[3] = v21;
            if (v33 > 1)
            {
              goto LABEL_33;
            }

            v22 = *&buf[8];
            v23 = *&buf[8] + 4;
            if ((*&buf[8] + 4) < *&buf[16])
            {
              v24 = *(a5 + 100);
              **&buf[8] = HIBYTE(v24);
              v22[1] = BYTE2(v24);
              v22[2] = BYTE1(v24);
              *&buf[8] = v23;
              v22[3] = v24;
              if (v33 > 1)
              {
                goto LABEL_33;
              }

              if (*&buf[32])
              {
                v25 = *&buf[8] - *&buf[32] - 2;
                **&buf[32] = HIBYTE(v25);
                *(*&buf[32] + 1) = v25;
                if (v33 <= 1)
                {
                  if (*&buf[24])
                  {
                    v26 = *&buf[8] - *&buf[24] - 2;
                    **&buf[24] = HIBYTE(v26);
                    *(*&buf[24] + 1) = v26;
                    if (v33 < 2)
                    {
                      v27 = *&buf[8] - v34;
LABEL_36:
                      v29.iov_len = v27;
                      goto LABEL_37;
                    }
                  }
                }

LABEL_33:
                v28 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *v30 = 136446210;
                  v31 = "advertise_finished";
                  v27 = 12;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: unexpectedly failed to send EDNS0 lease option.", v30, 0xCu);
                }

                else
                {
                  v27 = 12;
                }

                goto LABEL_36;
              }

              v18 = v33 | 0x2C;
LABEL_32:
              LODWORD(v33) = v18;
              goto LABEL_33;
            }
          }
        }
      }
    }

    v18 = 111;
    goto LABEL_32;
  }

  v19 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "advertise_finished";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: not sending response.", buf, 0xCu);
  }
}

uint64_t srp_update_start()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  dns_name_print_to_limit(*v1, 0, __s2, 0x3F2uLL);
  v3 = 0;
  v4 = *(v0 + 32);
  v5 = v0;
  do
  {
    v6 = *(v5[5] + 16);
    v7 = *(v6 + 20);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = *(v6 + 24);
      do
      {
        v9 += bswap32(*(v10 + v8));
        v8 += 4;
      }

      while (v8 < v7);
    }

    else
    {
      v9 = 0;
    }

    if (v5 == v0)
    {
      v3 = v9;
    }

    else if (v3 != v9)
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "srp_update_start";
        v169 = 1024;
        *v170 = v3;
        *&v170[4] = 1024;
        *&v170[6] = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: update contains multiple key ids %x and %x", buf, 0x18u);
      }

      v16 = __s2;
      v17 = 0;
      v18 = v4;
      v19 = 5;
      v20 = 0;
      goto LABEL_137;
    }

    v5 = *v5;
  }

  while (v5);
  v157 = *(v0 + 16);
  v153 = *(v0 + 8);
  if (!v157)
  {
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v13 = "";
LABEL_24:
    *buf = 136447235;
    *&buf[4] = "srp_update_start";
    v169 = 2160;
    *v170 = 1752392040;
    *&v170[8] = 2081;
    *&v170[10] = __s2;
    *&v170[18] = 1024;
    *&v170[20] = v3;
    *&v170[24] = 2082;
    *&v170[26] = v13;
    v21 = "%{public}s: host update for %{private, mask.hash}s, key id %x %{public}s";
    v22 = v12;
    v23 = 48;
    goto LABEL_25;
  }

  v11 = *(v2 + 8);
  if (!v11)
  {
    goto LABEL_17;
  }

  while (*(v11 + 176) != v3 || strcmp(*(v11 + 48), __s2))
  {
    v11 = *(v11 + 32);
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v82 = v1;
  v83 = "";
  v84 = __str;
  while (1)
  {
    v85 = *(v11 + 64);
    if (!v85 || (v86 = *(v85 + 88), v86 != *(*(v0 + 32) + 88)))
    {
      v88 = *(v11 + 104);
      if (!v88 || (v89 = *(v88 + 4), v89 < 1))
      {
LABEL_155:
        v1 = v82;
        goto LABEL_156;
      }

      v90 = *(v88 + 8);
      while (1)
      {
        if (*v90)
        {
          v91 = *(*v90 + 104);
          if (v91)
          {
            v86 = *(v91 + 88);
            if (v86 == *(*(v0 + 32) + 88))
            {
              break;
            }
          }
        }

        v90 += 8;
        if (!--v89)
        {
          goto LABEL_155;
        }
      }
    }

    v87 = v0;
    v0 = *v0;
    if (v84 != __str)
    {
      v83 = "s";
    }

    if (v84 + 6 < __s2)
    {
      snprintf(v84, 6uLL, " %04x", v86);
      v84 += 5;
    }

    *v87 = 0;
    srp_parse_client_updates_free_(v87, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3672);
    if (!v0)
    {
      break;
    }

    v82 = *(v0 + 40);
  }

  v1 = 0;
LABEL_156:
  if (v84 == __str)
  {
LABEL_17:
    v12 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v13 = *(v157 + 16);
    goto LABEL_24;
  }

  v92 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v93 = *(v157 + 16);
    *buf = 136447747;
    *&buf[4] = "srp_update_start";
    v169 = 2160;
    *v170 = 1752392040;
    *&v170[8] = 2081;
    *&v170[10] = __s2;
    *&v170[18] = 1024;
    *&v170[20] = v3;
    *&v170[24] = 2082;
    *&v170[26] = v93;
    *&v170[34] = 2082;
    *&v170[36] = v83;
    *&v170[44] = 2082;
    *&v170[46] = __str;
    v21 = "%{public}s: host update for %{private, mask.hash}s, key id %x %{public}s (skipped xid%{public}s%{public}s)";
    v22 = v92;
    v23 = 68;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
  }

LABEL_26:
  if (!v0)
  {
    advertise_finished(__s2, 0, v4, 0, 0, 0);
    return 1;
  }

  v149 = v4;
  v150 = v2;
  v154 = *(v0 + 48);
  v24 = *(v0 + 64);
  v151 = v1;
  v152 = v0;
  v147 = *(v0 + 96);
  v148 = v3;
  if (v147)
  {
    v25 = "update";
  }

  else
  {
    v25 = "remove";
  }

  for (i = *(v1 + 8); i; i = *i)
  {
    v27 = *(i + 8);
    v28 = global_os_log;
    v29 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (v27 == 1)
    {
      if (v29)
      {
        if (v157)
        {
          v30 = *(v157 + 16);
        }

        else
        {
          v30 = "";
        }

        *buf = 136448003;
        *&buf[4] = "srp_update_start";
        v169 = 2082;
        *v170 = v25;
        *&v170[8] = 2160;
        *&v170[10] = 1752392040;
        *&v170[18] = 2081;
        *&v170[20] = __s2;
        *&v170[28] = 2160;
        *&v170[30] = 1752392040;
        *&v170[38] = 1041;
        *&v170[40] = 4;
        *&v170[44] = 2097;
        *&v170[46] = i + 3;
        *&v170[54] = 2082;
        *&v170[56] = v30;
        v34 = v28;
        v35 = "%{public}s: host %{public}s for %{private, mask.hash}s, address %{private, mask.hash, network:in_addr}.4P %{public}s";
        v36 = 78;
LABEL_47:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
      }
    }

    else if (v29)
    {
      v31 = *(i + 24);
      v32 = "ULA: ";
      if ((v31 & 0xFE) != 0xFC)
      {
        if (v31 != 254 || (v32 = "LUA: ", (*(i + 25) & 0xC0) != 0x80))
        {
          v32 = "GUA: ";
          if ((v31 & 0xE0) != 0x20)
          {
            v32 = "";
          }
        }
      }

      if (v157)
      {
        v33 = *(v157 + 16);
      }

      else
      {
        v33 = "";
      }

      *buf = 136449795;
      *&buf[4] = "srp_update_start";
      v169 = 2082;
      *v170 = v25;
      *&v170[8] = 2160;
      *&v170[10] = 1752392040;
      *&v170[18] = 2081;
      *&v170[20] = __s2;
      *&v170[28] = 2082;
      *&v170[30] = v32;
      *&v170[38] = 2160;
      *&v170[40] = 1752392040;
      *&v170[48] = 1041;
      *&v170[50] = 6;
      *&v170[54] = 2097;
      *&v170[56] = i + 3;
      *&v170[64] = 2160;
      *&v170[66] = 1752392040;
      *&v170[74] = 1042;
      *&v170[76] = 2;
      *&v170[80] = 2098;
      *&v170[82] = i + 30;
      v171 = 2160;
      v172 = 1752392040;
      v173 = 1041;
      v174 = 8;
      v175 = 2097;
      v176 = i + 4;
      v177 = 2082;
      v178 = v33;
      v34 = v28;
      v35 = "%{public}s: host %{public}s for %{private, mask.hash}s, address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} %{public}s";
      v36 = 140;
      goto LABEL_47;
    }
  }

  if (v154)
  {
    v37 = v154;
    do
    {
      extract_instance_name(__s1, 0xFDuLL, v179, v37);
      v38 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37[6];
        if (v39)
        {
          v40 = *(v39 + 28);
        }

        else
        {
          v40 = -1;
        }

        if (v157)
        {
          v41 = *(v157 + 16);
        }

        else
        {
          v41 = "";
        }

        *buf = 136448515;
        *&buf[4] = "srp_update_start";
        v169 = 2082;
        *v170 = v25;
        *&v170[8] = 2160;
        *&v170[10] = 1752392040;
        *&v170[18] = 2081;
        *&v170[20] = __s2;
        *&v170[28] = 2160;
        *&v170[30] = 1752392040;
        *&v170[38] = 2081;
        *&v170[40] = __s1;
        *&v170[48] = 2160;
        *&v170[50] = 1752392040;
        *&v170[58] = 2081;
        *&v170[60] = v179;
        *&v170[68] = 1024;
        *&v170[70] = v40;
        *&v170[74] = 2082;
        *&v170[76] = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: host %{public}s for %{private, mask.hash}s, instance name %{private, mask.hash}s, type %{private, mask.hash}s, port %d %{public}s", buf, 0x62u);
      }

      v42 = v37[7];
      if (v42)
      {
        dns_txt_data_print(buf, *(v42 + 16), *(v42 + 24));
        v43 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 136447235;
          v159 = "srp_update_start";
          v160 = 2160;
          v161 = 1752392040;
          v162 = 2081;
          v163 = __s1;
          v164 = 2160;
          v165 = 1752392040;
          v166 = 2081;
          v167 = buf;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: text data for instance %{private, mask.hash}s: %{private, mask.hash}s", v158, 0x34u);
        }
      }

      v37 = *v37;
    }

    while (v37);
  }

  v44 = (v2 + 8);
  v45 = *(v150 + 8);
  if (!v45)
  {
    v155 = (v150 + 8);
    v156 = 0;
    goto LABEL_118;
  }

  v0 = v152;
  while (!v154 || (*(v45 + 256) & 1) != 0)
  {
LABEL_79:
    v45 = *(v45 + 32);
    if (!v45)
    {
      v156 = 0;
      goto LABEL_89;
    }
  }

  v46 = v154;
  while (1)
  {
    extract_instance_name(__s1, 0xFDuLL, v179, v46);
    v47 = *(v45 + 104);
    if (*(v47 + 4) >= 1)
    {
      break;
    }

LABEL_72:
    v50 = *(v45 + 40);
    if (v50)
    {
      v51 = *(v50 + 80);
      if (v51)
      {
        if (*(v51 + 4) >= 1)
        {
          v52 = 0;
          do
          {
            v49 = compare_instance(*(*(v51 + 8) + 8 * v52), v151, v45, __s1, v179);
            if (v49)
            {
              goto LABEL_81;
            }

            ++v52;
            v51 = *(*(v45 + 40) + 80);
          }

          while (v52 < *(v51 + 4));
        }
      }
    }

    v46 = *v46;
    if (!v46)
    {
      goto LABEL_79;
    }
  }

  v48 = 0;
  while (1)
  {
    v49 = compare_instance(*(*(v47 + 8) + 8 * v48), v151, v45, __s1, v179);
    if (v49)
    {
      break;
    }

    ++v48;
    v47 = *(v45 + 104);
    if (v48 >= *(v47 + 4))
    {
      goto LABEL_72;
    }
  }

LABEL_81:
  if (v49 == 2)
  {
    v53 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v54 = *(v45 + 48);
      *buf = 136448259;
      *&buf[4] = "srp_update_start";
      v169 = 2160;
      *v170 = 1752392040;
      *&v170[8] = 2081;
      *&v170[10] = __s1;
      *&v170[18] = 2160;
      *&v170[20] = 1752392040;
      *&v170[28] = 2081;
      *&v170[30] = v179;
      *&v170[38] = 2160;
      *&v170[40] = 1752392040;
      *&v170[48] = 2081;
      *&v170[50] = v54;
      *&v170[58] = 2160;
      *&v170[60] = 1752392040;
      *&v170[68] = 2081;
      *&v170[70] = __s2;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%{public}s: service instance name %{private, mask.hash}s/%{private, mask.hash}s already pointing to host %{private, mask.hash}s, not host %{private, mask.hash}s", buf, 0x5Cu);
    }

    v16 = *(v45 + 48);
    v17 = v153;
    v18 = v149;
    goto LABEL_135;
  }

  v156 = 1;
LABEL_89:
  v155 = v44;
  v56 = *v44;
  if (!*v44)
  {
LABEL_118:
    while (v24)
    {
      if ((v24[3] & 1) == 0)
      {
        v74 = v24[1];
        if (v74)
        {
          dns_name_print_to_limit(v74, 0, buf, 0x3F2uLL);
        }

        else
        {
          strcpy(buf, "<null>");
        }

        v75 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 136446723;
          v159 = "srp_update_start";
          v160 = 2160;
          v161 = 1752392040;
          v162 = 2081;
          v163 = buf;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}s: remove for %{private, mask.hash}s doesn't match any instance on any host.", v158, 0x20u);
        }
      }

      v24 = *v24;
    }

    if (v156)
    {
      v76 = *(v45 + 176);
      v77 = v148;
      v0 = v152;
      v78 = v149;
      if (v148 == v76 && dns_keys_rdata_equal(*(v151 + 16), v45 + 112))
      {
        goto LABEL_129;
      }

      v80 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v81 = *(v45 + 48);
        *buf = 136447747;
        *&buf[4] = "srp_update_start";
        v169 = 2160;
        *v170 = 1752392040;
        *&v170[8] = 2081;
        *&v170[10] = __s2;
        *&v170[18] = 1024;
        *&v170[20] = v148;
        *&v170[24] = 2160;
        *&v170[26] = 1752392040;
        *&v170[34] = 2081;
        *&v170[36] = v81;
        *&v170[44] = 1024;
        *&v170[46] = v76;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}s: new host with name %{private, mask.hash}s and key id %x conflicts with existing host %{private, mask.hash}s with key id %x", buf, 0x40u);
      }

      v16 = *(v45 + 48);
      goto LABEL_134;
    }

    v94 = v155;
    v45 = *v155;
    v0 = v152;
    v78 = v149;
    if (*v155)
    {
      while (1)
      {
        v95 = *(v45 + 48);
        v96 = strcasecmp(__s2, v95);
        if (!v96)
        {
          break;
        }

        if ((v96 & 0x80000000) == 0)
        {
          v94 = (v45 + 32);
          v45 = *(v45 + 32);
          if (v45)
          {
            continue;
          }
        }

        goto LABEL_163;
      }

      if (*(v45 + 256) != 1)
      {
        v134 = *(v45 + 176);
        if (v148 == v134 && dns_keys_rdata_equal(*(v151 + 16), v45 + 112))
        {
          v77 = v148;
LABEL_129:
          if (*(v45 + 40))
          {
            v79 = global_os_log;
            goto LABEL_196;
          }

          if (v147)
          {
            v124 = *(v45 + 48);
            v123 = *(v45 + 56);
            v79 = global_os_log;
            v125 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
            if (v123 != v124)
            {
              if (!v125)
              {
                goto LABEL_206;
              }

              *buf = 136447491;
              *&buf[4] = "srp_update_start";
              v169 = 2160;
              *v170 = 1752392040;
              *&v170[8] = 2081;
              *&v170[10] = v124;
              *&v170[18] = 2160;
              *&v170[20] = 1752392040;
              *&v170[28] = 2081;
              *&v170[30] = v123;
              *&v170[38] = 1024;
              *&v170[40] = v77;
              v120 = "%{public}s: Renewing host %{private, mask.hash}s, alias %{private, mask.hash}s, key id %x";
              v121 = v79;
              v122 = 58;
              goto LABEL_205;
            }

            if (v125)
            {
              *buf = 136446979;
              *&buf[4] = "srp_update_start";
              v169 = 2160;
              *v170 = 1752392040;
              *&v170[8] = 2081;
              *&v170[10] = v123;
              *&v170[18] = 1024;
              *&v170[20] = v77;
              v120 = "%{public}s: Renewing host %{private, mask.hash}s, key id %x";
              goto LABEL_200;
            }

            goto LABEL_206;
          }

          host_invalidate(v45);
          v136 = *(v45 + 64);
          if (v136)
          {
            ioloop_message_release_(v136, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 4090);
          }

          *(v45 + 64) = v78;
          *(v45 + 200) = *(v78 + 72);
          ioloop_message_retain_(v78, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 4095);
          v16 = __s2;
          v17 = v153;
          v18 = v78;
LABEL_190:
          v19 = 0;
          goto LABEL_136;
        }

        v135 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447235;
          *&buf[4] = "srp_update_start";
          v169 = 2160;
          *v170 = 1752392040;
          *&v170[8] = 2081;
          *&v170[10] = v95;
          *&v170[18] = 1024;
          *&v170[20] = v148;
          *&v170[24] = 1024;
          *&v170[26] = v134;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%{public}s: update for host %{private, mask.hash}s has key id %x which doesn't match host key id %x.", buf, 0x2Cu);
          v95 = *(v45 + 48);
        }

        v16 = v95;
LABEL_134:
        v17 = v153;
        v18 = v78;
LABEL_135:
        v19 = 6;
LABEL_136:
        v20 = 1;
LABEL_137:
        advertise_finished(v16, v17, v18, v19, 0, v20);
        goto LABEL_138;
      }

      if (v147)
      {
        if (*(v45 + 200) > *(*(v152 + 32) + 72))
        {
          v109 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446723;
            *&buf[4] = "srp_update_start";
            v169 = 2160;
            *v170 = 1752392040;
            *&v170[8] = 2081;
            *&v170[10] = v95;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "%{public}s: update for host %{private, mask.hash}s which has been deleted.", buf, 0x20u);
            v95 = *(v45 + 48);
          }

          v16 = v95;
          v17 = v153;
          v18 = v149;
          v19 = 2;
          goto LABEL_136;
        }

        *v94 = *(v45 + 32);
        host_invalidate(v45);
        v138 = *v45;
        if (*v45)
        {
          v139 = global_os_log;
          if (v138 < 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "srp_update_start";
              v169 = 1024;
              *v170 = v138;
              *&v170[4] = 2048;
              *&v170[6] = v45;
              *&v170[14] = 2080;
              *&v170[16] = "host";
              *&v170[24] = 2080;
              *&v170[26] = "srp-mdns-proxy.c";
              *&v170[34] = 1024;
              *&v170[36] = 3903;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v138 = *v45;
            }

            *v45 = v138 - 1;
            if (v138 == 1)
            {
              v140 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                *&buf[4] = "srp_update_start";
                v169 = 2048;
                *v170 = v45;
                *&v170[8] = 2080;
                *&v170[10] = "host";
                *&v170[18] = 2080;
                *&v170[20] = "srp-mdns-proxy.c";
                *&v170[28] = 1024;
                *&v170[30] = 3903;
                _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
              }

              ++adv_host_finalized;
              adv_host_finalize(v45);
            }

LABEL_164:
            v97 = malloc_type_calloc(1uLL, 0x108uLL, 0x2BE5F8F6uLL);
            v98 = global_os_log;
            if (v97)
            {
              v45 = v97;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v99 = *v45;
                *buf = 136447490;
                *&buf[4] = "srp_update_start";
                v169 = 1024;
                *v170 = v99;
                *&v170[4] = 2048;
                *&v170[6] = v45;
                *&v170[14] = 2080;
                *&v170[16] = "host";
                *&v170[24] = 2080;
                *&v170[26] = "srp-mdns-proxy.c";
                *&v170[34] = 1024;
                *&v170[36] = 3961;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              }

              v100 = *v45;
              if (*v45)
              {
                v101 = v100 + 1;
                *v45 = v100 + 1;
                if (v100 + 1 >= 10001)
                {
                  v102 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_173;
                  }

                  *buf = 136447490;
                  *&buf[4] = "srp_update_start";
                  v169 = 1024;
                  *v170 = v101;
                  *&v170[4] = 2048;
                  *&v170[6] = v45;
                  *&v170[14] = 2080;
                  *&v170[16] = "host";
                  *&v170[24] = 2080;
                  *&v170[26] = "srp-mdns-proxy.c";
                  *&v170[34] = 1024;
                  *&v170[36] = 3961;
                  v103 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                  goto LABEL_171;
                }
              }

              else
              {
                ++adv_host_created;
                *v45 = 1;
              }

              *(v45 + 8) = v150;
              *(v45 + 104) = adv_instance_vec_create(0);
              *(v45 + 88) = adv_record_vec_create(0);
              *(v45 + 16) = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3982);
              *(v45 + 24) = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3984);
              dns_name_print_to_limit(*v151, 0, v181, 0x3F2uLL);
              v111 = strdup(v181);
              if (!v111)
              {
                v143 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_252;
                }

                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                v144 = "%{public}s: strdup() failed";
                goto LABEL_250;
              }

              *(v45 + 48) = v111;
              v112 = *(v151 + 16);
              v113 = v112[3];
              v115 = *v112;
              v114 = v112[1];
              *(v45 + 144) = v112[2];
              *(v45 + 160) = v113;
              *(v45 + 112) = v115;
              *(v45 + 128) = v114;
              *(v45 + 112) = 0;
              v116 = *(*(v151 + 16) + 20) + 4;
              *(v45 + 224) = v116;
              if (!v116)
              {
                v143 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_252;
                }

                *buf = 136446210;
                *&buf[4] = "srp_update_start";
                v144 = "%{public}s: strict_malloc called with size 0";
                goto LABEL_250;
              }

              v117 = malloc_type_malloc(v116, 0xD45872CDuLL);
              if (v117)
              {
                *(v45 + 232) = v117;
                *v117 = *(*(v151 + 16) + 16);
                *(*(v45 + 232) + 2) = *(*(v151 + 16) + 18);
                *(*(v45 + 232) + 3) = *(*(v151 + 16) + 19);
                memcpy((*(v45 + 232) + 4), *(*(v151 + 16) + 24), *(*(v151 + 16) + 20));
                *(v45 + 136) = *(v45 + 232) + 4;
                *(v45 + 176) = v148;
                *(v45 + 32) = *v94;
                *v94 = v45;
                v79 = global_os_log;
                if (*(v45 + 40))
                {
LABEL_196:
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    v118 = *(v45 + 48);
                    *buf = 136446723;
                    *&buf[4] = "srp_update_start";
                    v169 = 2160;
                    *v170 = 1752392040;
                    *&v170[8] = 2081;
                    *&v170[10] = v118;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}s: dropping retransmission of in-progress update for host %{private, mask.hash}s", buf, 0x20u);
                  }

                  goto LABEL_138;
                }

                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v119 = *(v45 + 48);
                  *buf = 136446979;
                  *&buf[4] = "srp_update_start";
                  v169 = 2160;
                  *v170 = 1752392040;
                  *&v170[8] = 2081;
                  *&v170[10] = v119;
                  *&v170[18] = 1024;
                  *&v170[20] = v148;
                  v120 = "%{public}s: New host %{private, mask.hash}s, key id %x";
LABEL_200:
                  v121 = v79;
                  v122 = 38;
LABEL_205:
                  _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, v120, buf, v122);
                }

LABEL_206:
                if (!*(v45 + 56))
                {
                  *(v45 + 56) = *(v45 + 48);
                }

                v126 = *(v78 + 80);
                if (v126)
                {
                  v127 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    v128 = *(v78 + 84);
                    *buf = 136446722;
                    *&buf[4] = "srp_update_start";
                    v169 = 1024;
                    *v170 = v126;
                    *&v170[4] = 1024;
                    *&v170[6] = v128;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%{public}s: basing lease time on message: raw_message->lease = %d, raw_message->key_lease = %d", buf, 0x18u);
                    v126 = *(v78 + 80);
                  }

                  *(v0 + 96) = v126;
                  *(v0 + 100) = *(v78 + 84);
LABEL_245:
                  prepare_update(v45, v0);
                  return 1;
                }

                v129 = *(v0 + 96);
                v130 = *(v150 + 384);
                if (v129 >= v130)
                {
                  *(v0 + 96) = v130;
                  v132 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446466;
                    *&buf[4] = "srp_update_start";
                    v169 = 1024;
                    *v170 = v130;
                    v137 = "%{public}s: basing lease time on server_state->max_lease_time: %d";
LABEL_241:
                    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, v137, buf, 0x12u);
                  }
                }

                else
                {
                  v131 = *(v150 + 388);
                  v132 = global_os_log;
                  v133 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
                  if (v129 < v131)
                  {
                    if (v133)
                    {
                      *buf = 136446466;
                      *&buf[4] = "srp_update_start";
                      v169 = 1024;
                      *v170 = v131;
                      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "%{public}s: basing lease time on server_state->min_lease_time: %d", buf, 0x12u);
                      v131 = *(v150 + 388);
                    }

                    *(v0 + 96) = v131;
                    goto LABEL_242;
                  }

                  if (v133)
                  {
                    *buf = 136446466;
                    *&buf[4] = "srp_update_start";
                    v169 = 1024;
                    *v170 = v129;
                    v137 = "%{public}s: basing lease time on client_update->host_lease: %d";
                    goto LABEL_241;
                  }
                }

LABEL_242:
                v141 = *(v0 + 100);
                v142 = *(v150 + 392);
                if (v141 >= v142 || (v142 = *(v150 + 396), v141 < v142))
                {
                  *(v0 + 100) = v142;
                }

                goto LABEL_245;
              }

              v143 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                *&buf[4] = "srp_update_start";
                v144 = "%{public}s: strict allocator failed";
LABEL_250:
                v145 = v143;
                v146 = 12;
LABEL_251:
                _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, v144, buf, v146);
              }
            }

            else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "srp_update_start";
              v169 = 2048;
              *v170 = 1;
              *&v170[8] = 2048;
              *&v170[10] = 264;
              v144 = "%{public}s: strict_calloc(%zu, %zu) failed";
              v145 = v98;
              v146 = 32;
              goto LABEL_251;
            }

LABEL_252:
            __break(1u);
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_update_start";
            v169 = 1024;
            *v170 = v138;
            *&v170[4] = 2048;
            *&v170[6] = v45;
            *&v170[14] = 2080;
            *&v170[16] = "host";
            *&v170[24] = 2080;
            *&v170[26] = "srp-mdns-proxy.c";
            *&v170[34] = 1024;
            *&v170[36] = 3903;
            v103 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v104 = v139;
            goto LABEL_172;
          }
        }

        else
        {
          v102 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "srp_update_start";
            v169 = 1024;
            *v170 = 0;
            *&v170[4] = 2048;
            *&v170[6] = v45;
            *&v170[14] = 2080;
            *&v170[16] = "host";
            *&v170[24] = 2080;
            *&v170[26] = "srp-mdns-proxy.c";
            *&v170[34] = 1024;
            *&v170[36] = 3903;
            v103 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_171:
            v104 = v102;
LABEL_172:
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_FAULT, v103, buf, 0x36u);
          }
        }

LABEL_173:
        abort();
      }
    }

    else
    {
LABEL_163:
      if (v147)
      {
        goto LABEL_164;
      }
    }

    v110 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      *&buf[4] = "srp_update_start";
      v169 = 2160;
      *v170 = 1752392040;
      *&v170[8] = 2081;
      *&v170[10] = __s2;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%{public}s: Remove for host %{private, mask.hash}s which doesn't exist.", buf, 0x20u);
    }

    v16 = __s2;
    v17 = v153;
    v18 = v149;
    goto LABEL_190;
  }

  while ((*(v56 + 256) & 1) != 0 || !v24)
  {
LABEL_117:
    v56 = *(v56 + 32);
    if (!v56)
    {
      goto LABEL_118;
    }
  }

  v57 = v24;
  while (1)
  {
    v58 = v57[1];
    if (v58)
    {
      v59 = *v58;
      if (*v58)
      {
        if (*v59)
        {
          break;
        }
      }
    }

LABEL_116:
    v57 = *v57;
    if (!v57)
    {
      goto LABEL_117;
    }
  }

  dns_name_print_to_limit(v58, v59, __s1, 0xFDuLL);
  dns_name_print_to_limit(*v57[1], ***v57[1], v179, 0x1FAuLL);
  v60 = *(v56 + 104);
  if (*(v60 + 4) < 1)
  {
LABEL_106:
    v67 = *(v56 + 40);
    if (v67)
    {
      v68 = *(v67 + 80);
      if (v68)
      {
        v69 = *(v68 + 4);
        if (v69 >= 1)
        {
          v70 = *(v68 + 8);
          while (1)
          {
            v71 = *v70;
            if (*v70)
            {
              v72 = *(v71 + 64);
              if (!strcmp(__s1, v72) && service_types_equal(v179, *(v71 + 72)))
              {
                v73 = *(v56 + 48);
                if (strcmp(__s2, v73))
                {
                  v108 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136447235;
                    *&buf[4] = "srp_update_start";
                    v169 = 2160;
                    *v170 = 1752392040;
                    *&v170[8] = 2081;
                    *&v170[10] = v72;
                    *&v170[18] = 2160;
                    *&v170[20] = 1752392040;
                    *&v170[28] = 2081;
                    *&v170[30] = v73;
                    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%{public}s: remove for %{private, mask.hash}s conflicts with instance on update to host %{private, mask.hash}s", buf, 0x34u);
                    v73 = *(v56 + 48);
                  }

                  v106 = v153;
                  v107 = v73;
                  v105 = v149;
                  goto LABEL_180;
                }

                *(v57 + 24) = 1;
              }
            }

            ++v70;
            if (!--v69)
            {
              goto LABEL_116;
            }
          }
        }
      }
    }

    goto LABEL_116;
  }

  v61 = 0;
  while (1)
  {
    v62 = *(*(v60 + 8) + 8 * v61);
    if (v62)
    {
      if (!strcmp(__s1, *(v62 + 64)) && service_types_equal(v179, *(v62 + 72)))
      {
        break;
      }
    }

LABEL_105:
    if (++v61 >= *(v60 + 4))
    {
      goto LABEL_106;
    }
  }

  v63 = *(v56 + 48);
  v64 = strcmp(__s2, v63);
  v65 = global_os_log;
  v66 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (!v64)
  {
    if (v66)
    {
      *buf = 136447747;
      *&buf[4] = "srp_update_start";
      v169 = 2160;
      *v170 = 1752392040;
      *&v170[8] = 2081;
      *&v170[10] = __s1;
      *&v170[18] = 2160;
      *&v170[20] = 1752392040;
      *&v170[28] = 2081;
      *&v170[30] = v179;
      *&v170[38] = 2160;
      *&v170[40] = 1752392040;
      *&v170[48] = 2081;
      *&v170[50] = v63;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%{public}s: remove for %{private, mask.hash}s.%{private, mask.hash}s matches instance on host %{private, mask.hash}s", buf, 0x48u);
      v60 = *(v56 + 104);
    }

    *(v57 + 24) = 1;
    goto LABEL_105;
  }

  if (v66)
  {
    *buf = 136447747;
    *&buf[4] = "srp_update_start";
    v169 = 2160;
    *v170 = 1752392040;
    *&v170[8] = 2081;
    *&v170[10] = __s1;
    *&v170[18] = 2160;
    *&v170[20] = 1752392040;
    *&v170[28] = 2081;
    *&v170[30] = v179;
    *&v170[38] = 2160;
    *&v170[40] = 1752392040;
    *&v170[48] = 2081;
    *&v170[50] = v63;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%{public}s: remove for %{private, mask.hash}s.%{private, mask.hash}s conflicts with instance on host %{private, mask.hash}s", buf, 0x48u);
    v63 = *(v56 + 48);
  }

  v105 = v149;
  v106 = v153;
  v107 = v63;
LABEL_180:
  advertise_finished(v107, v106, v105, 1u, 0, 1);
  v0 = v152;
LABEL_138:
  srp_parse_client_updates_free_(v0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 4068);
  return 0;
}

BOOL extract_instance_name(_BYTE *a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v8 = **(*(a4 + 32) + 16);
  v9 = *v8;
  if (*v8)
  {
    if (*v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = *v8;
    }
  }

  else
  {
    v10 = 0;
  }

  dns_name_print_to_limit(v8, v10, a3, 0x1FAuLL);
  v11 = *(a4 + 32);
  v12 = *v11;
  if (*v11)
  {
    v13 = v11[1];
    v14 = strlen(a3);
    while (v12[1] == v13)
    {
      v15 = *v12[2];
      if (v14 + *(v15 + 8) - 505 <= 0xFFFFFFFFFFFFFE04)
      {
        v19 = global_os_log;
        result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v20 = 136447235;
          v21 = "extract_instance_name";
          v22 = 2160;
          v23 = 1752392040;
          v24 = 2081;
          v25 = a3;
          v26 = 2160;
          v27 = 1752392040;
          v28 = 2081;
          v29 = v15 + 9;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: service name: %{private, mask.hash}s is too long for additional subtype %{private, mask.hash}s", &v20, 0x34u);
          return 0;
        }

        return result;
      }

      v16 = v14 + 1;
      a3[v14] = 44;
      memcpy(&a3[v14 + 1], (*v12[2] + 9), *(*v12[2] + 8) + 1);
      v14 = v16 + *(*v12[2] + 8);
      v12 = *v12;
      if (!v12)
      {
        break;
      }
    }
  }

  v17 = *(a4 + 16);
  if (v17)
  {
    dns_name_print_to_limit(v17, *v17, a1, a2);
  }

  else
  {
    *a1 = 0;
  }

  return 1;
}

uint64_t compare_instance(uint64_t result, uint64_t **a2, uint64_t a3, char *__s1, char *a5)
{
  if (result)
  {
    if ((*(a3 + 256) & 1) == 0 && (v8 = result, !strcmp(__s1, *(result + 64))))
    {
      result = service_types_equal(a5, *(v8 + 72));
      if (result)
      {
        if (dns_names_equal_text(*a2, *(a3 + 48)))
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL service_types_equal(char *a1, char *a2)
{
  v4 = strchr(a1, 44);
  if (v4)
  {
    v5 = v4 - a1;
  }

  else
  {
    v5 = strlen(a1);
  }

  v6 = strchr(a2, 44);
  if (v6)
  {
    v7 = v6 - a2;
  }

  else
  {
    v7 = strlen(a2);
  }

  return v5 == v7 && memcmp(a2, a1, v5) == 0;
}

void prepare_update(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x17DFEE93uLL);
  v5 = &unk_1000A9000;
  v6 = global_os_log;
  if (!v4)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_480;
    }

    *buf = 136446722;
    *&buf[4] = "prepare_update";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&buf[24] = 136;
    v276 = "%{public}s: strict_calloc(%zu, %zu) failed";
    v277 = buf;
    v278 = v6;
    goto LABEL_485;
  }

  v7 = v4;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v7;
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3164;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v9 = *v7;
  v300 = v7;
  if (*v7)
  {
    v10 = v9 + 1;
    *v7 = v9 + 1;
    if (v9 + 1 >= 10001)
    {
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = v10;
        *&buf[18] = 2048;
        *&buf[20] = v300;
        *&buf[28] = 2080;
        *&buf[30] = "update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3164;
        v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_561;
      }

      goto LABEL_564;
    }
  }

  else
  {
    ++adv_update_created;
    *v7 = 1;
  }

  *buf = 0;
  *&buf[8] = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
  v7[15] = *buf;
  v13 = *(a1 + 88);
  if (!v13)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = *(v13 + 4);
  if (!v14)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v15 = adv_record_vec_create(*(v13 + 4));
  *(v15 + 1) = v14;
LABEL_14:
  v16 = (a2[5] + 8);
  v17 = -1;
  do
  {
    v16 = *v16;
    ++v17;
  }

  while (v16);
  v18 = adv_record_vec_create(v17);
  v19 = v18;
  v297 = v18;
  v298 = a2;
  v20 = *(a2[5] + 8);
  v301 = a1;
  v294 = v15;
  v296 = v14;
  v21 = 0;
  if (v20)
  {
    do
    {
      if (v21 < 1)
      {
        goto LABEL_28;
      }

      v22 = *(v19 + 1);
      v23 = v21;
      v24 = 1;
      do
      {
        v25 = *v22;
        if (*v22)
        {
          v26 = *(v25 + 72);
          if (v26 == *(v20 + 8))
          {
            v27 = *(v25 + 74);
            v28 = v26 == 1 ? 4 : 16;
            if (v28 == v27)
            {
              v24 &= memcmp(*(v25 + 64), v20 + 3, v27) != 0;
            }
          }
        }

        ++v22;
        --v23;
      }

      while (v23);
      if (v24)
      {
LABEL_28:
        v29 = *(v20 + 8);
        if (v29 == 1)
        {
          v30 = 4;
        }

        else
        {
          v30 = 16;
        }

        adv_record_create_(v29, v30, v20 + 3, a1, 3211);
        *(*(v19 + 1) + 8 * v21++) = v31;
      }

      v20 = *v20;
    }

    while (v20);
    v19[1] = v21;
    v295 = v19 + 1;
    if (v21 < 1)
    {
      LODWORD(v20) = 0;
    }

    else
    {
      v32 = 0;
      v33 = *(v19 + 1);
      v34 = v21;
      do
      {
        v35 = *(v33 + 8 * v32);
        if (v35)
        {
          *(v35 + 48) = v300;
          v36 = *(*(v33 + 8 * v32) + 48);
          if (v36)
          {
            v37 = *(v5 + 22);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = *v36;
              *buf = 136447490;
              *&buf[4] = "prepare_update";
              *&buf[12] = 1024;
              *&buf[14] = v38;
              *&buf[18] = 2048;
              *&buf[20] = v36;
              *&buf[28] = 2080;
              *&buf[30] = "add_addrs->vec[i]->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3223;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v33 = *(v297 + 1);
            }

            v39 = *(*(v33 + 8 * v32) + 48);
            v40 = *v39;
            if (!*v39)
            {
              ++adv_update_created;
              v40 = *v39;
            }

            v41 = v40 + 1;
            *v39 = v40 + 1;
            if (v40 + 1 > 10000)
            {
              v75 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_564;
              }

              *buf = 136447490;
              *&buf[4] = "prepare_update";
              *&buf[12] = 1024;
              *&buf[14] = v41;
              *&buf[18] = 2048;
              *&buf[20] = v39;
              *&buf[28] = 2080;
              *&buf[30] = "add_addrs->vec[i]->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3223;
              v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_488;
            }

            v34 = *v295;
            v5 = &unk_1000A9000;
          }

          v19 = v297;
        }

        ++v32;
      }

      while (v32 < v34);
      LODWORD(v20) = 1;
    }

    v14 = v296;
    if (!v296)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v18[1] = 0;
    v295 = v18 + 1;
    if (!v14)
    {
      goto LABEL_98;
    }
  }

  if (v14 >= 1)
  {
    v42 = 0;
    do
    {
      v43 = *(a1 + 88);
      if (v43)
      {
        v44 = *(*(v43 + 8) + 8 * v42);
        if (v44)
        {
          *(v15[1] + 8 * v42) = v44;
          v45 = *(v15[1] + 8 * v42);
          if (v45)
          {
            v46 = *(v5 + 22);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = *v45;
              *buf = 136447490;
              *&buf[4] = "prepare_update";
              *&buf[12] = 1024;
              *&buf[14] = v47;
              *&buf[18] = 2048;
              *&buf[20] = v45;
              *&buf[28] = 2080;
              *&buf[30] = "remove_addrs->vec[i]";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3253;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v45 = *(v15[1] + 8 * v42);
            }

            v48 = *v45;
            if (!*v45)
            {
              ++adv_record_created;
              v48 = *v45;
            }

            v49 = v48 + 1;
            *v45 = v48 + 1;
            if (v48 + 1 >= 10001)
            {
              v11 = *(v5 + 22);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
              {
                *buf = 136447490;
                *&buf[4] = "prepare_update";
                *&buf[12] = 1024;
                *&buf[14] = v49;
                *&buf[18] = 2048;
                *&buf[20] = v45;
                *&buf[28] = 2080;
                *&buf[30] = "remove_addrs->vec[i]";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3253;
                v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                goto LABEL_561;
              }

              goto LABEL_564;
            }

            srp_log_ref_final(v45, v49, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3253);
            a1 = v301;
          }
        }
      }

      if (v20)
      {
        for (i = 0; v21 != i; ++i)
        {
          v51 = *(v15[1] + 8 * v42);
          if (v51)
          {
            v52 = *(*(v19 + 1) + 8 * i);
            if (v52)
            {
              if (*(v51 + 8))
              {
                v53 = *(a1 + 8);
                if (v53)
                {
                  if (*(v51 + 24) == *(v53 + 16) && *(v52 + 72) == *(v51 + 72))
                  {
                    v54 = *(v52 + 74);
                    if (v54 == *(v51 + 74) && !memcmp(*(v52 + 64), *(v51 + 64), v54))
                    {
                      if (srp_log_ref_check(v51, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3266))
                      {
                        v55 = *(v15[1] + 8 * v42);
                        v56 = *v55;
                        if (!*v55)
                        {
                          v11 = *(v5 + 22);
                          if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_564;
                          }

                          *buf = 136447490;
                          *&buf[4] = "prepare_update";
                          *&buf[12] = 1024;
                          *&buf[14] = 0;
                          *&buf[18] = 2048;
                          *&buf[20] = v55;
                          *&buf[28] = 2080;
                          *&buf[30] = "remove_addrs->vec[i]";
                          *&buf[38] = 2080;
                          *&buf[40] = "srp-mdns-proxy.c";
                          *&buf[48] = 1024;
                          *&buf[50] = 3266;
                          v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
                          goto LABEL_561;
                        }

                        v57 = *(v5 + 22);
                        if (v56 >= 10001)
                        {
                          if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_564;
                          }

                          *buf = 136447490;
                          *&buf[4] = "prepare_update";
                          *&buf[12] = 1024;
                          *&buf[14] = v56;
                          *&buf[18] = 2048;
                          *&buf[20] = v55;
                          *&buf[28] = 2080;
                          *&buf[30] = "remove_addrs->vec[i]";
                          *&buf[38] = 2080;
                          *&buf[40] = "srp-mdns-proxy.c";
                          *&buf[48] = 1024;
                          *&buf[50] = 3266;
                          v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_522:
                          v281 = buf;
                          v284 = v57;
                          goto LABEL_563;
                        }

                        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136447490;
                          *&buf[4] = "prepare_update";
                          *&buf[12] = 1024;
                          *&buf[14] = v56;
                          *&buf[18] = 2048;
                          *&buf[20] = v55;
                          *&buf[28] = 2080;
                          *&buf[30] = "remove_addrs->vec[i]";
                          *&buf[38] = 2080;
                          *&buf[40] = "srp-mdns-proxy.c";
                          *&buf[48] = 1024;
                          *&buf[50] = 3266;
                          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                          v55 = *(v294[1] + 8 * v42);
                          v58 = *v55;
                        }

                        else
                        {
                          v58 = v56;
                        }

                        a1 = v301;
                        v59 = v58 - 1;
                        *v55 = v59;
                        if (!v59)
                        {
                          v60 = *(v5 + 22);
                          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 136447234;
                            *&buf[4] = "prepare_update";
                            *&buf[12] = 2048;
                            *&buf[14] = v55;
                            *&buf[22] = 2080;
                            *&buf[24] = "remove_addrs->vec[i]";
                            *&buf[32] = 2080;
                            *&buf[34] = "srp-mdns-proxy.c";
                            *&buf[42] = 1024;
                            *&buf[44] = 3266;
                            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                            v55 = *(v294[1] + 8 * v42);
                          }

                          a1 = v301;
                          ++adv_record_finalized;
                          adv_record_finalize(v55);
                          v55 = *(v294[1] + 8 * v42);
                        }

                        srp_log_ref_final(v55, v56 - 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3266);
                        v15 = v294;
                      }

                      *(v15[1] + 8 * v42) = 0;
                      v61 = *(v19 + 1);
                      v62 = *(v61 + 8 * i);
                      if (v62)
                      {
                        v63 = srp_log_ref_check(v62, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3268);
                        v61 = *(v19 + 1);
                        if (v63)
                        {
                          v64 = *(v61 + 8 * i);
                          v65 = *v64;
                          if (!*v64)
                          {
                            v11 = *(v5 + 22);
                            if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_564;
                            }

                            *buf = 136447490;
                            *&buf[4] = "prepare_update";
                            *&buf[12] = 1024;
                            *&buf[14] = 0;
                            *&buf[18] = 2048;
                            *&buf[20] = v64;
                            *&buf[28] = 2080;
                            *&buf[30] = "add_addrs->vec[j]";
                            *&buf[38] = 2080;
                            *&buf[40] = "srp-mdns-proxy.c";
                            *&buf[48] = 1024;
                            *&buf[50] = 3268;
                            v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
                            goto LABEL_561;
                          }

                          v57 = *(v5 + 22);
                          if (v65 >= 10001)
                          {
                            if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_564;
                            }

                            *buf = 136447490;
                            *&buf[4] = "prepare_update";
                            *&buf[12] = 1024;
                            *&buf[14] = v65;
                            *&buf[18] = 2048;
                            *&buf[20] = v64;
                            *&buf[28] = 2080;
                            *&buf[30] = "add_addrs->vec[j]";
                            *&buf[38] = 2080;
                            *&buf[40] = "srp-mdns-proxy.c";
                            *&buf[48] = 1024;
                            *&buf[50] = 3268;
                            v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
                            goto LABEL_522;
                          }

                          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 136447490;
                            *&buf[4] = "prepare_update";
                            *&buf[12] = 1024;
                            *&buf[14] = v65;
                            *&buf[18] = 2048;
                            *&buf[20] = v64;
                            *&buf[28] = 2080;
                            *&buf[30] = "add_addrs->vec[j]";
                            *&buf[38] = 2080;
                            *&buf[40] = "srp-mdns-proxy.c";
                            *&buf[48] = 1024;
                            *&buf[50] = 3268;
                            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                            v64 = *(*(v19 + 1) + 8 * i);
                            v66 = *v64;
                          }

                          else
                          {
                            v66 = v65;
                          }

                          a1 = v301;
                          v67 = v66 - 1;
                          *v64 = v67;
                          if (!v67)
                          {
                            v68 = *(v5 + 22);
                            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136447234;
                              *&buf[4] = "prepare_update";
                              *&buf[12] = 2048;
                              *&buf[14] = v64;
                              *&buf[22] = 2080;
                              *&buf[24] = "add_addrs->vec[j]";
                              *&buf[32] = 2080;
                              *&buf[34] = "srp-mdns-proxy.c";
                              *&buf[42] = 1024;
                              *&buf[44] = 3268;
                              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                              v64 = *(*(v19 + 1) + 8 * i);
                            }

                            a1 = v301;
                            ++adv_record_finalized;
                            adv_record_finalize(v64);
                            v64 = *(*(v19 + 1) + 8 * i);
                          }

                          srp_log_ref_final(v64, v65 - 1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3268);
                          v61 = *(v19 + 1);
                          v15 = v294;
                        }
                      }

                      *(v61 + 8 * i) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v42;
    }

    while (v42 != v296);
  }

  *(v15 + 1) = v296;
LABEL_98:
  if (!*(a1 + 96))
  {
    adv_record_create_(25, *(a1 + 224), *(a1 + 232), a1, 3298);
    *(v300 + 48) = v69;
    *(v69 + 48) = v300;
    v70 = *(v5 + 22);
    v71 = v300;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *v300;
      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = v72;
      *&buf[18] = 2048;
      *&buf[20] = v300;
      *&buf[28] = 2080;
      *&buf[30] = "update->key->update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3304;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v71 = *(*(v300 + 48) + 48);
    }

    v73 = *v71;
    if (*v71)
    {
      v74 = v73 + 1;
      *v71 = v73 + 1;
      if (v73 + 1 >= 10001)
      {
        v75 = *(v5 + 22);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_564;
        }

        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = v74;
        *&buf[18] = 2048;
        *&buf[20] = v71;
        *&buf[28] = 2080;
        *&buf[30] = "update->key->update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3304;
        v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_488;
      }
    }

    else
    {
      ++adv_update_created;
      *v71 = 1;
    }
  }

  v76 = *(*(a1 + 104) + 4);
  v293 = adv_instance_vec_create(v76);
  *(v293 + 1) = v76;
  v292 = adv_instance_vec_create(v76);
  *(v292 + 1) = v76;
  v291 = adv_instance_vec_create(v76);
  *(v291 + 1) = v76;
  for (j = v298[8]; j; j = *j)
  {
    v78 = j[1];
    if (v78)
    {
      v79 = *v78;
      if (*v78)
      {
        if (*v79)
        {
          dns_name_print_to_limit(v78, v79, __s1, 0xFDuLL);
          dns_name_print_to_limit(*j[1], ***j[1], buf, 0xFEuLL);
          v80 = *(v301 + 104);
          v81 = *(v80 + 4);
          if (v81 >= 1)
          {
            v82 = 0;
            v83 = *(v80 + 8);
            while (1)
            {
              v84 = *(v83 + 8 * v82);
              if (v84)
              {
                if (!strcmp(__s1, *(v84 + 64)) && service_types_equal(buf, *(v84 + 72)))
                {
                  break;
                }
              }

              if (v81 == ++v82)
              {
                goto LABEL_116;
              }
            }

            *(v292[1] + 8 * v82) = v84;
            v85 = *(v292[1] + 8 * v82);
            if (v85)
            {
              v86 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v87 = *v85;
                *v302 = 136447490;
                v303 = "prepare_update";
                v304 = 1024;
                *v305 = v87;
                *&v305[4] = 2048;
                *&v305[6] = v85;
                *&v305[14] = 2080;
                *&v305[16] = "remove_instances->vec[i]";
                *&v305[24] = 2080;
                *&v305[26] = "srp-mdns-proxy.c";
                v306 = 1024;
                v307 = 3355;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v302, 0x36u);
                v85 = *(v292[1] + 8 * v82);
              }

              v88 = *v85;
              if (*v85)
              {
                v89 = v88 + 1;
                *v85 = v88 + 1;
                if (v88 + 1 >= 10001)
                {
                  v75 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_564;
                  }

                  *v302 = 136447490;
                  v303 = "prepare_update";
                  v304 = 1024;
                  *v305 = v89;
                  *&v305[4] = 2048;
                  *&v305[6] = v85;
                  *&v305[14] = 2080;
                  *&v305[16] = "remove_instances->vec[i]";
                  *&v305[24] = 2080;
                  *&v305[26] = "srp-mdns-proxy.c";
                  v306 = 1024;
                  v307 = 3355;
                  v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                  goto LABEL_494;
                }
              }

              else
              {
                ++adv_instance_created;
                *v85 = 1;
              }
            }
          }

LABEL_116:
          v5 = &unk_1000A9000;
        }
      }
    }
  }

  v90 = v298 + 6;
  LODWORD(v91) = -1;
  v92 = v298 + 6;
  do
  {
    v92 = *v92;
    v91 = (v91 + 1);
  }

  while (v92);
  v93 = adv_instance_vec_create(v91);
  v94 = *v90;
  v299 = v93;
  if (!*v90)
  {
    v125 = v93;
    LODWORD(v95) = 0;
LABEL_184:
    *(v125 + 1) = v95;
    if (v91 >= 1)
    {
      for (k = 0; k != v91; ++k)
      {
        v127 = v125[1];
        v128 = *(v127 + 8 * k);
        if (v128)
        {
          v129 = *(v301 + 104);
          v130 = *(v129 + 4);
          if (v130 >= 1)
          {
            v131 = 0;
            v132 = *(v129 + 8);
            while (1)
            {
              v133 = *(v132 + 8 * v131);
              if (v133)
              {
                if (!strcmp(*(v128 + 64), *(v133 + 8)))
                {
                  v134 = *(v128 + 72);
                  v135 = *(v133 + 9);
                  if (service_types_equal(v134, v135))
                  {
                    break;
                  }
                }
              }

              if (v130 == ++v131)
              {
                goto LABEL_193;
              }
            }

            if ((v133[33] & 1) == 0 && (v136 = *(v128 + 96), v136 == *(v133 + 48)) && *(v128 + 80) == v133[20] && !strcmp(v134, v135) && (!v136 || !memcmp(*(v128 + 88), *(v133 + 11), v136)))
            {
              v147 = *v128;
              if (!*v128)
              {
                v75 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_564;
                }

                *buf = 136447490;
                *&buf[4] = "prepare_update";
                *&buf[12] = 1024;
                *&buf[14] = 0;
                *&buf[18] = 2048;
                *&buf[20] = v128;
                *&buf[28] = 2080;
                *&buf[30] = "add_instances->vec[i]";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3435;
                v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
                goto LABEL_488;
              }

              v148 = global_os_log;
              if (v147 >= 10001)
              {
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_564;
                }

                *buf = 136447490;
                *&buf[4] = "prepare_update";
                *&buf[12] = 1024;
                *&buf[14] = v147;
                *&buf[18] = 2048;
                *&buf[20] = v128;
                *&buf[28] = 2080;
                *&buf[30] = "add_instances->vec[i]";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3435;
                v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
                v281 = buf;
                v284 = v148;
LABEL_563:
                _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_FAULT, v12, v281, 0x36u);
                goto LABEL_564;
              }

              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447490;
                *&buf[4] = "prepare_update";
                *&buf[12] = 1024;
                *&buf[14] = v147;
                *&buf[18] = 2048;
                *&buf[20] = v128;
                *&buf[28] = 2080;
                *&buf[30] = "add_instances->vec[i]";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3435;
                _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                v127 = v299[1];
                v128 = *(v127 + 8 * k);
                v147 = *v128;
              }

              *v128 = v147 - 1;
              if (v147 == 1)
              {
                v149 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447234;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 2048;
                  *&buf[14] = v128;
                  *&buf[22] = 2080;
                  *&buf[24] = "add_instances->vec[i]";
                  *&buf[32] = 2080;
                  *&buf[34] = "srp-mdns-proxy.c";
                  *&buf[42] = 1024;
                  *&buf[44] = 3435;
                  _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                  v128 = *(v299[1] + 8 * k);
                }

                ++adv_instance_finalized;
                adv_instance_finalize(v128);
                v127 = v299[1];
              }

              *(v127 + 8 * k) = 0;
              *(v291[1] + 8 * v131) = v133;
              v150 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v151 = *v133;
                *buf = 136447490;
                *&buf[4] = "prepare_update";
                *&buf[12] = 1024;
                *&buf[14] = v151;
                *&buf[18] = 2048;
                *&buf[20] = v133;
                *&buf[28] = 2080;
                *&buf[30] = "host_instance";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3438;
                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              }

              v152 = *v133;
              if (*v133)
              {
                v153 = v152 + 1;
                *v133 = v152 + 1;
                v154 = v300;
                if (v152 + 1 >= 10001)
                {
                  v75 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_564;
                  }

                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v153;
                  *&buf[18] = 2048;
                  *&buf[20] = v133;
                  *&buf[28] = 2080;
                  *&buf[30] = "host_instance";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3438;
                  v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_488:
                  v281 = buf;
LABEL_495:
                  v284 = v75;
                  goto LABEL_563;
                }
              }

              else
              {
                ++adv_instance_created;
                *v133 = 1;
                v154 = v300;
              }

              v155 = v291[1];
              *(*(v155 + 8 * v131) + 48) = v154;
              v156 = *(*(v155 + 8 * v131) + 48);
              v145 = global_os_log;
              if (v156)
              {
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v157 = *v156;
                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v157;
                  *&buf[18] = 2048;
                  *&buf[20] = v156;
                  *&buf[28] = 2080;
                  *&buf[30] = "renew_instances->vec[j]->update";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3440;
                  _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                  v156 = *(*(v291[1] + 8 * v131) + 48);
                }

                v158 = *v156;
                if (*v156)
                {
                  v159 = v158 + 1;
                  *v156 = v158 + 1;
                  v145 = global_os_log;
                  if (v158 + 1 >= 10001)
                  {
                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_564;
                    }

                    *buf = 136447490;
                    *&buf[4] = "prepare_update";
                    *&buf[12] = 1024;
                    *&buf[14] = v159;
                    *&buf[18] = 2048;
                    *&buf[20] = v156;
                    *&buf[28] = 2080;
                    *&buf[30] = "renew_instances->vec[j]->update";
                    *&buf[38] = 2080;
                    *&buf[40] = "srp-mdns-proxy.c";
                    *&buf[48] = 1024;
                    *&buf[50] = 3440;
                    v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                    goto LABEL_517;
                  }
                }

                else
                {
                  ++adv_update_created;
                  *v156 = 1;
                  v145 = global_os_log;
                }
              }

              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
              {
                v160 = *(v133 + 8);
                v161 = *(v133 + 9);
                v162 = *(v301 + 48);
                *buf = 136447747;
                *&buf[4] = "prepare_update";
                *&buf[12] = 2160;
                *&buf[14] = 1752392040;
                *&buf[22] = 2081;
                *&buf[24] = v160;
                *&buf[32] = 2160;
                *&buf[34] = 1752392040;
                *&buf[42] = 2081;
                *&buf[44] = v161;
                *&buf[52] = 2160;
                *&buf[54] = 1752392040;
                *&buf[62] = 2081;
                *&buf[64] = v162;
                _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private, mask.hash}s.%{private, mask.hash}s renewed for host %{private, mask.hash}s", buf, 0x48u);
              }
            }

            else
            {
              *(v293[1] + 8 * v131) = v128;
              v137 = *(v293[1] + 8 * v131);
              if (v137)
              {
                v138 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v139 = *v137;
                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v139;
                  *&buf[18] = 2048;
                  *&buf[20] = v137;
                  *&buf[28] = 2080;
                  *&buf[30] = "update_instances->vec[j]";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3445;
                  _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                  v137 = *(v293[1] + 8 * v131);
                }

                v140 = *v137;
                if (*v137)
                {
                  v141 = v140 + 1;
                  *v137 = v140 + 1;
                  if (v140 + 1 >= 10001)
                  {
                    v75 = global_os_log;
                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_564;
                    }

                    *buf = 136447490;
                    *&buf[4] = "prepare_update";
                    *&buf[12] = 1024;
                    *&buf[14] = v141;
                    *&buf[18] = 2048;
                    *&buf[20] = v137;
                    *&buf[28] = 2080;
                    *&buf[30] = "update_instances->vec[j]";
                    *&buf[38] = 2080;
                    *&buf[40] = "srp-mdns-proxy.c";
                    *&buf[48] = 1024;
                    *&buf[50] = 3445;
                    v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                    goto LABEL_488;
                  }
                }

                else
                {
                  ++adv_instance_created;
                  *v137 = 1;
                }
              }

              v142 = v299[1];
              v143 = *(v142 + 8 * k);
              if (v143)
              {
                v144 = *v143;
                if (!*v143)
                {
                  v75 = global_os_log;
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_564;
                  }

                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = 0;
                  *&buf[18] = 2048;
                  *&buf[20] = v143;
                  *&buf[28] = 2080;
                  *&buf[30] = "add_instances->vec[i]";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3446;
                  v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
                  goto LABEL_488;
                }

                v145 = global_os_log;
                if (v144 >= 10001)
                {
                  if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_564;
                  }

                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v144;
                  *&buf[18] = 2048;
                  *&buf[20] = v143;
                  *&buf[28] = 2080;
                  *&buf[30] = "add_instances->vec[i]";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3446;
                  v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_517:
                  v281 = buf;
                  v284 = v145;
                  goto LABEL_563;
                }

                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v144;
                  *&buf[18] = 2048;
                  *&buf[20] = v143;
                  *&buf[28] = 2080;
                  *&buf[30] = "add_instances->vec[i]";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3446;
                  _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                  v142 = v299[1];
                  v143 = *(v142 + 8 * k);
                  v144 = *v143;
                }

                *v143 = v144 - 1;
                if (v144 == 1)
                {
                  v146 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136447234;
                    *&buf[4] = "prepare_update";
                    *&buf[12] = 2048;
                    *&buf[14] = v143;
                    *&buf[22] = 2080;
                    *&buf[24] = "add_instances->vec[i]";
                    *&buf[32] = 2080;
                    *&buf[34] = "srp-mdns-proxy.c";
                    *&buf[42] = 1024;
                    *&buf[44] = 3446;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                    v143 = *(v299[1] + 8 * k);
                  }

                  ++adv_instance_finalized;
                  adv_instance_finalize(v143);
                  v142 = v299[1];
                }
              }

              *(v142 + 8 * k) = 0;
            }
          }
        }

LABEL_193:
        v125 = v299;
      }
    }

    *(v300 + 8) = v301;
    if (v301)
    {
      v163 = global_os_log;
      v164 = v301;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v165 = *v301;
        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = v165;
        *&buf[18] = 2048;
        *&buf[20] = v301;
        *&buf[28] = 2080;
        *&buf[30] = "update->host";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3478;
        _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v164 = *(v300 + 8);
      }

      v166 = *v164;
      if (*v164)
      {
        v167 = v166 + 1;
        *v164 = v166 + 1;
        if (v166 + 1 >= 10001)
        {
          v75 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_564;
          }

          *buf = 136447490;
          *&buf[4] = "prepare_update";
          *&buf[12] = 1024;
          *&buf[14] = v167;
          *&buf[18] = 2048;
          *&buf[20] = v164;
          *&buf[28] = 2080;
          *&buf[30] = "update->host";
          *&buf[38] = 2080;
          *&buf[40] = "srp-mdns-proxy.c";
          *&buf[48] = 1024;
          *&buf[50] = 3478;
          v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_488;
        }
      }

      else
      {
        ++adv_host_created;
        *v164 = 1;
      }
    }

    *(v300 + 16) = v298;
    *(v300 + 32) = v294;
    *(v300 + 40) = v297;
    *(v300 + 56) = v293;
    *(v300 + 64) = v292;
    *(v300 + 72) = v291;
    *(v300 + 80) = v125;
    *(v300 + 104) = v298[12];
    v179 = *(v301 + 8);
    if (*(v179 + 418) == 1)
    {
      v180 = v298[4];
      v181 = (v180 + 12);
      if (*(v179 + 328) == *(v180 + 12) && *(v301 + 88) && *v295 >= 1)
      {
        for (m = 0; m < *v295; ++m)
        {
          v225 = *(*(v297 + 1) + 8 * m);
          if (v225 && *(v225 + 74) == 16)
          {
            v226 = *(v225 + 64);
            if (*v181 != *v226 || *(v180 + 20) != v226[1])
            {
              v228 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v229 = *v226;
                v230 = "ULA: ";
                if ((v229 & 0xFE) != 0xFC)
                {
                  if (v229 != 254 || (v230 = "LUA: ", (*(v226 + 1) & 0xC0) != 0x80))
                  {
                    v230 = "";
                    if ((v229 & 0xE0) == 0x20)
                    {
                      v230 = "GUA: ";
                    }
                  }
                }

                v231 = *v181;
                v232 = "ULA: ";
                if ((v231 & 0xFE) != 0xFC)
                {
                  if (v231 != 254 || (v232 = "LUA: ", (*(v180 + 13) & 0xC0) != 0x80))
                  {
                    v232 = "";
                    if ((v231 & 0xE0) == 0x20)
                    {
                      v232 = "GUA: ";
                    }
                  }
                }

                v233 = v301;
                v234 = *(v301 + 48);
                *buf = 136451843;
                *&buf[4] = "prepare_update";
                *&buf[12] = 2160;
                *&buf[14] = 1752392040;
                *&buf[22] = 2081;
                *&buf[24] = v234;
                *&buf[32] = 2082;
                *&buf[34] = v230;
                *&buf[42] = 2160;
                *&buf[44] = 1752392040;
                *&buf[52] = 1041;
                *&buf[54] = 6;
                *&buf[58] = 2097;
                *&buf[60] = v226;
                *&buf[68] = 2160;
                *&buf[70] = 1752392040;
                *&buf[78] = 1042;
                *&buf[80] = 2;
                v309 = 2098;
                *v310 = v226 + 6;
                *&v310[8] = 2160;
                *&v310[10] = 1752392040;
                *&v310[18] = 1041;
                v311 = 8;
                v312 = 2097;
                v313 = v226 + 1;
                v314 = 2082;
                v315 = v232;
                v316 = 2160;
                v317 = 1752392040;
                v318 = 1041;
                v319 = 6;
                v320 = 2097;
                v321 = v180 + 12;
                v322 = 2160;
                v323 = 1752392040;
                v324 = 1042;
                v325 = 2;
                v326 = 2098;
                v327 = v180 + 18;
                v328 = 2160;
                v329 = 1752392040;
                v330 = 1041;
                v331 = 8;
                v332 = 2097;
                v333 = v180 + 20;
                _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "%{public}s: mapping host %{private, mask.hash}s address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} to {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0xD0u);
                v226 = *(v225 + 64);
              }

              else
              {
                v233 = v301;
              }

              v235 = *(v233 + 48);
              v236 = xpc_dictionary_create(0, 0, 0);
              xpc_dictionary_set_string(v236, "interface", "org.wpantund.v1");
              xpc_dictionary_set_string(v236, "path", "/org/wpantund/utun2");
              xpc_dictionary_set_string(v236, "method", "UpdateAccessoryData");
              inet_ntop(30, v226, buf, 0x2Eu);
              xpc_dictionary_set_string(v236, "ipaddr_add", buf);
              inet_ntop(30, v181, buf, 0x2Eu);
              xpc_dictionary_set_string(v236, "ipaddr_lookup", buf);
              xpc_dictionary_set_string(v236, "host_info", v235);
              v237 = setup_for_command(0, "add_mle_mapping", 0, 0, v236, v225, srp_ml_eid_mapping_callback, cti_internal_reply_callback, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3512);
              if (v236)
              {
                xpc_release(v236);
              }

              if (!v237)
              {
                v238 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                {
                  v239 = *v225;
                  *buf = 136447490;
                  *&buf[4] = "prepare_update";
                  *&buf[12] = 1024;
                  *&buf[14] = v239;
                  *&buf[18] = 2048;
                  *&buf[20] = v225;
                  *&buf[28] = 2080;
                  *&buf[30] = "arec";
                  *&buf[38] = 2080;
                  *&buf[40] = "srp-mdns-proxy.c";
                  *&buf[48] = 1024;
                  *&buf[50] = 3514;
                  _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                }

                v240 = *v225;
                if (*v225)
                {
                  v241 = v240 + 1;
                  *v225 = v240 + 1;
                  if (v240 + 1 >= 10001)
                  {
                    v75 = global_os_log;
                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_564;
                    }

                    *buf = 136447490;
                    *&buf[4] = "prepare_update";
                    *&buf[12] = 1024;
                    *&buf[14] = v241;
                    *&buf[18] = 2048;
                    *&buf[20] = v225;
                    *&buf[28] = 2080;
                    *&buf[30] = "arec";
                    *&buf[38] = 2080;
                    *&buf[40] = "srp-mdns-proxy.c";
                    *&buf[48] = 1024;
                    *&buf[50] = 3514;
                    v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                    goto LABEL_488;
                  }
                }

                else
                {
                  ++adv_record_created;
                  v241 = 1;
                  *v225 = 1;
                }

                srp_log_ref_final(v225, v241, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3514);
              }
            }
          }
        }
      }
    }

    *(v301 + 40) = v300;
    v182 = global_os_log;
    v183 = v300;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v184 = *v300;
      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = v184;
      *&buf[18] = 2048;
      *&buf[20] = v300;
      *&buf[28] = 2080;
      *&buf[30] = "host->update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3522;
      _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v183 = *(v301 + 40);
    }

    v185 = *v183;
    if (*v183)
    {
      v186 = v185 + 1;
      *v183 = v185 + 1;
      if (v185 + 1 >= 10001)
      {
        v75 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_564;
        }

        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = v186;
        *&buf[18] = 2048;
        *&buf[20] = v183;
        *&buf[28] = 2080;
        *&buf[30] = "host->update";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3522;
        v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_488;
      }
    }

    else
    {
      ++adv_update_created;
      *v183 = 1;
    }

    v187 = *v300;
    if (!*v300)
    {
      v11 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_564;
      }

      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v300;
      *&buf[28] = 2080;
      *&buf[30] = "update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3523;
      v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_561;
    }

    v188 = global_os_log;
    if (v187 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_564;
      }

      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = v187;
      *&buf[18] = 2048;
      *&buf[20] = v300;
      *&buf[28] = 2080;
      *&buf[30] = "update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3523;
      v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v281 = buf;
      v284 = v188;
      goto LABEL_563;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = v187;
      *&buf[18] = 2048;
      *&buf[20] = v300;
      *&buf[28] = 2080;
      *&buf[30] = "update";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3523;
      _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v187 = *v300;
    }

    *v300 = v187 - 1;
    if (v187 == 1)
    {
      v189 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "prepare_update";
        *&buf[12] = 2048;
        *&buf[14] = v300;
        *&buf[22] = 2080;
        *&buf[24] = "update";
        *&buf[32] = 2080;
        *&buf[34] = "srp-mdns-proxy.c";
        *&buf[42] = 1024;
        *&buf[44] = 3523;
        _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      }

      ++adv_update_finalized;
      adv_update_finalize(v300);
    }

    v5 = *(v301 + 40);
    if (!v5)
    {
      v192 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v193 = *(v301 + 56);
        *buf = 136446723;
        *&buf[4] = "start_host_update";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2081;
        *&buf[24] = v193;
        _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_ERROR, "%{public}s: start_host_update: no work to do for host %{private, mask.hash}s", buf, 0x20u);
      }

      return;
    }

    v190 = *(v5 + 2);
    if (v190)
    {
      v191 = *(v190 + 111);
    }

    else
    {
      v191 = 0;
    }

    v5[24] = 0;
    *(v301 + 257) = 1;
    v194 = *(v5 + 5);
    if (v194 && *(v194 + 4) >= 1)
    {
      v195 = 0;
      do
      {
        v196 = *(*(v194 + 8) + 8 * v195);
        if (v196)
        {
          if ((register_host_record(v301, v196, v191 & 1) & 1) == 0)
          {
            goto LABEL_458;
          }

          if ((v191 & 1) == 0)
          {
            ++v5[24];
          }
        }

        ++v195;
        v194 = *(v5 + 5);
      }

      while (v195 < *(v194 + 4));
    }

    v197 = *(v301 + 88);
    if (v197 && *(v197 + 4) >= 1)
    {
      for (n = 0; n < *(v197 + 4); ++n)
      {
        v199 = *(v5 + 4);
        if (!v199 || !*(*(v199 + 8) + 8 * n))
        {
          v200 = *(*(v197 + 8) + 8 * n);
          if (v200)
          {
            *(v200 + 48) = v5;
            v201 = global_os_log;
            v202 = v5;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v203 = *v5;
              *buf = 136447490;
              *&buf[4] = "start_host_update";
              *&buf[12] = 1024;
              *&buf[14] = v203;
              *&buf[18] = 2048;
              *&buf[20] = v5;
              *&buf[28] = 2080;
              *&buf[30] = "record->update";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 2988;
              _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v202 = *(v200 + 48);
            }

            v204 = *v202;
            if (!*v202)
            {
              ++adv_update_created;
              v204 = *v202;
            }

            v205 = v204 + 1;
            *v202 = v204 + 1;
            if (v204 + 1 >= 10001)
            {
              v11 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136447490;
                *&buf[4] = "start_host_update";
                *&buf[12] = 1024;
                *&buf[14] = v205;
                *&buf[18] = 2048;
                *&buf[20] = v202;
                *&buf[28] = 2080;
                *&buf[30] = "record->update";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 2988;
                v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                goto LABEL_561;
              }

LABEL_564:
              abort();
            }

            if ((register_host_record(v301, v200, v191 & 1) & 1) == 0)
            {
              goto LABEL_458;
            }

            if ((v191 & 1) == 0)
            {
              ++v5[24];
            }
          }
        }

        v197 = *(v301 + 88);
      }
    }

    v206 = *(v5 + 6);
    if (!v206)
    {
      goto LABEL_581;
    }

    if ((register_host_record(v301, v206, v191 & 1) & 1) == 0)
    {
      goto LABEL_458;
    }

    if ((v191 & 1) == 0)
    {
      ++v5[24];
    }

    if (!*(v5 + 6))
    {
LABEL_581:
      v207 = *(v301 + 96);
      if (v207)
      {
        if (*(v207 + 24) != *(*(v301 + 8) + 16) || !*(v207 + 8))
        {
          *(v5 + 6) = v207;
          v208 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v209 = *v207;
            *buf = 136447490;
            *&buf[4] = "start_host_update";
            *&buf[12] = 1024;
            *&buf[14] = v209;
            *&buf[18] = 2048;
            *&buf[20] = v207;
            *&buf[28] = 2080;
            *&buf[30] = "update->key";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 3014;
            _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v207 = *(v5 + 6);
          }

          v210 = *v207;
          if (*v207)
          {
            v211 = v210 + 1;
            *v207 = v210 + 1;
            if (v210 + 1 >= 10001)
            {
              v75 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_564;
              }

              *buf = 136447490;
              *&buf[4] = "start_host_update";
              *&buf[12] = 1024;
              *&buf[14] = v211;
              *&buf[18] = 2048;
              *&buf[20] = v207;
              *&buf[28] = 2080;
              *&buf[30] = "update->key";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3014;
              v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
              goto LABEL_488;
            }
          }

          else
          {
            ++adv_record_created;
            v211 = 1;
            *v207 = 1;
          }

          srp_log_ref_final(v207, v211, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3014);
          v242 = *(v301 + 96);
          if (v242 && srp_log_ref_check(v242, "adv_record", "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3015))
          {
            v243 = *(v301 + 96);
            v244 = *v243;
            if (!*v243)
            {
              v75 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_564;
              }

              *buf = 136447490;
              *&buf[4] = "start_host_update";
              *&buf[12] = 1024;
              *&buf[14] = 0;
              *&buf[18] = 2048;
              *&buf[20] = v243;
              *&buf[28] = 2080;
              *&buf[30] = "host->key_record";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3015;
              v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              goto LABEL_488;
            }

            v104 = global_os_log;
            if (v244 >= 10001)
            {
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_564;
              }

              *buf = 136447490;
              *&buf[4] = "start_host_update";
              *&buf[12] = 1024;
              *&buf[14] = v244;
              *&buf[18] = 2048;
              *&buf[20] = v243;
              *&buf[28] = 2080;
              *&buf[30] = "host->key_record";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3015;
              v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v281 = buf;
LABEL_500:
              v284 = v104;
              goto LABEL_563;
            }

            v245 = v244 - 1;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "start_host_update";
              *&buf[12] = 1024;
              *&buf[14] = v244;
              *&buf[18] = 2048;
              *&buf[20] = v243;
              *&buf[28] = 2080;
              *&buf[30] = "host->key_record";
              *&buf[38] = 2080;
              *&buf[40] = "srp-mdns-proxy.c";
              *&buf[48] = 1024;
              *&buf[50] = 3015;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              v243 = *(v301 + 96);
              v244 = *v243;
            }

            *v243 = v244 - 1;
            if (v244 == 1)
            {
              v246 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                *&buf[4] = "start_host_update";
                *&buf[12] = 2048;
                *&buf[14] = v243;
                *&buf[22] = 2080;
                *&buf[24] = "host->key_record";
                *&buf[32] = 2080;
                *&buf[34] = "srp-mdns-proxy.c";
                *&buf[42] = 1024;
                *&buf[44] = 3015;
                _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
                v243 = *(v301 + 96);
              }

              ++adv_record_finalized;
              adv_record_finalize(v243);
              v243 = *(v301 + 96);
            }

            srp_log_ref_final(v243, v245, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3015);
          }

          *(v301 + 96) = 0;
          v247 = *(v5 + 6);
          *(v247 + 8) = 0;
          *(v247 + 48) = v5;
          v248 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v249 = *v5;
            *buf = 136447490;
            *&buf[4] = "start_host_update";
            *&buf[12] = 1024;
            *&buf[14] = v249;
            *&buf[18] = 2048;
            *&buf[20] = v5;
            *&buf[28] = 2080;
            *&buf[30] = "update";
            *&buf[38] = 2080;
            *&buf[40] = "srp-mdns-proxy.c";
            *&buf[48] = 1024;
            *&buf[50] = 3019;
            _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          v250 = *v5;
          if (*v5)
          {
            v251 = v250 + 1;
            *v5 = v250 + 1;
            if (v250 + 1 >= 10001)
            {
              v11 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
              {
                *buf = 136447490;
                *&buf[4] = "start_host_update";
                *&buf[12] = 1024;
                *&buf[14] = v251;
                *&buf[18] = 2048;
                *&buf[20] = v5;
                *&buf[28] = 2080;
                *&buf[30] = "update";
                *&buf[38] = 2080;
                *&buf[40] = "srp-mdns-proxy.c";
                *&buf[48] = 1024;
                *&buf[50] = 3019;
                v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
                goto LABEL_561;
              }

              goto LABEL_564;
            }
          }

          else
          {
            ++adv_update_created;
            *v5 = 1;
          }

          if ((register_host_record(v301, *(v5 + 6), 0) & 1) == 0)
          {
            goto LABEL_458;
          }

          ++v5[24];
        }
      }
    }

    if (*(v301 + 104))
    {
      v252 = *(v5 + 10);
      if (v252 && *(v252 + 4) >= 1)
      {
        v253 = 0;
        do
        {
          v254 = *(*(v252 + 8) + 8 * v253);
          if (v254)
          {
            if (!register_instance(v254))
            {
              goto LABEL_458;
            }

            v252 = *(v5 + 10);
          }

          ++v253;
        }

        while (v253 < *(v252 + 4));
      }

      v255 = *(v5 + 9);
      if (v255 && *(v255 + 4) >= 1)
      {
        v256 = 0;
        do
        {
          v257 = *(*(v255 + 8) + 8 * v256);
          if (v257)
          {
            if (!register_instance(v257))
            {
              goto LABEL_458;
            }

            v255 = *(v5 + 9);
          }

          ++v256;
        }

        while (v256 < *(v255 + 4));
      }

      v258 = *(v5 + 7);
      v259 = *(v301 + 104);
      if (v258)
      {
        v260 = *(v258 + 4);
        v261 = *(v259 + 4);
        if (v260 != v261)
        {
          v265 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_458;
          }

          *buf = 136446722;
          *&buf[4] = "start_host_update";
          *&buf[12] = 1024;
          *&buf[14] = v260;
          *&buf[18] = 1024;
          *&buf[20] = v261;
          v266 = "%{public}s: update instance count %d differs from host instance count %d";
          goto LABEL_456;
        }
      }

      v262 = *(v5 + 8);
      if (v262)
      {
        v263 = *(v262 + 4);
        v264 = *(v259 + 4);
        if (v263 != v264)
        {
          v265 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_458;
          }

          *buf = 136446722;
          *&buf[4] = "start_host_update";
          *&buf[12] = 1024;
          *&buf[14] = v263;
          *&buf[18] = 1024;
          *&buf[20] = v264;
          v266 = "%{public}s: delete instance count %d differs from host instance count %d";
LABEL_456:
          v267 = v265;
          v268 = OS_LOG_TYPE_FAULT;
          v269 = 24;
          goto LABEL_457;
        }
      }

      else
      {
        v263 = *(v259 + 4);
      }

      if (v263 >= 1)
      {
        for (ii = 0; ii < *(v259 + 4); ++ii)
        {
          v271 = *(v5 + 7);
          if (v271)
          {
            v272 = *(*(v271 + 8) + 8 * ii);
            if (v272)
            {
              if ((*(v272 + 132) & 1) == 0)
              {
                v273 = *(*(*(v259 + 8) + 8 * ii) + 8);
                if (v273)
                {
                  *(v272 + 24) = v273;
                  ioloop_dnssd_txn_retain_(v273, 3079);
                  ioloop_dnssd_txn_release_(*(*(*(*(v301 + 104) + 8) + 8 * ii) + 8), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3080);
                  *(*(*(*(v301 + 104) + 8) + 8 * ii) + 8) = 0;
                  v272 = *(*(*(v5 + 7) + 8) + 8 * ii);
                }

                if (!register_instance(v272))
                {
                  goto LABEL_481;
                }

                v259 = *(v301 + 104);
              }
            }
          }
        }
      }
    }

    if (!v5[22] && !v5[24])
    {
      v274 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "start_host_update";
        _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_DEFAULT, "%{public}s: no service or record updates, so we're finished.", buf, 0xCu);
      }

      srp_mdns_update_finished(v5);
    }

    return;
  }

  v95 = 0;
  while (1)
  {
    v96 = v95;
    v97 = malloc_type_calloc(1uLL, 0x88uLL, 0x9B9C393uLL);
    v98 = *(v5 + 22);
    if (!v97)
    {
      if (!os_log_type_enabled(*(v5 + 22), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_480;
      }

      *v302 = 136446722;
      v303 = "adv_instance_create";
      v304 = 2048;
      *v305 = 1;
      *&v305[8] = 2048;
      *&v305[10] = 136;
      v276 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v277 = v302;
      v278 = v98;
LABEL_485:
      v279 = 32;
      goto LABEL_479;
    }

    v99 = v97;
    if (os_log_type_enabled(*(v5 + 22), OS_LOG_TYPE_DEFAULT))
    {
      v100 = *v99;
      *v302 = 136447490;
      v303 = "adv_instance_create";
      v304 = 1024;
      *v305 = v100;
      *&v305[4] = 2048;
      *&v305[6] = v99;
      *&v305[14] = 2080;
      *&v305[16] = "instance";
      *&v305[24] = 2080;
      *&v305[26] = "srp-mdns-proxy.c";
      v306 = 1024;
      v307 = 2701;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v302, 0x36u);
    }

    v101 = *v99;
    if (*v99)
    {
      v102 = v101 + 1;
      *v99 = v101 + 1;
      if (v101 + 1 >= 10001)
      {
        v11 = *(v5 + 22);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_564;
        }

        *v302 = 136447490;
        v303 = "adv_instance_create";
        v304 = 1024;
        *v305 = v102;
        *&v305[4] = 2048;
        *&v305[6] = v99;
        *&v305[14] = 2080;
        *&v305[16] = "instance";
        *&v305[24] = 2080;
        *&v305[26] = "srp-mdns-proxy.c";
        v306 = 1024;
        v307 = 2701;
        v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_491;
      }
    }

    else
    {
      ++adv_instance_created;
      *v99 = 1;
    }

    v103 = v301;
    v99[5] = v301;
    v104 = *(v5 + 22);
    if (v301)
    {
      if (os_log_type_enabled(*(v5 + 22), OS_LOG_TYPE_DEFAULT))
      {
        v105 = *v301;
        *v302 = 136447490;
        v303 = "adv_instance_create";
        v304 = 1024;
        *v305 = v105;
        *&v305[4] = 2048;
        *&v305[6] = v301;
        *&v305[14] = 2080;
        *&v305[16] = "instance->host";
        *&v305[24] = 2080;
        *&v305[26] = "srp-mdns-proxy.c";
        v306 = 1024;
        v307 = 2703;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v302, 0x36u);
        v103 = v99[5];
      }

      v106 = *v103;
      if (*v103)
      {
        v107 = v106 + 1;
        *v103 = v106 + 1;
        v104 = *(v5 + 22);
        if (v106 + 1 >= 10001)
        {
          if (!os_log_type_enabled(*(v5 + 22), OS_LOG_TYPE_FAULT))
          {
            goto LABEL_564;
          }

          *v302 = 136447490;
          v303 = "adv_instance_create";
          v304 = 1024;
          *v305 = v107;
          *&v305[4] = 2048;
          *&v305[6] = v103;
          *&v305[14] = 2080;
          *&v305[16] = "instance->host";
          *&v305[24] = 2080;
          *&v305[26] = "srp-mdns-proxy.c";
          v306 = 1024;
          v307 = 2703;
          v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          v281 = v302;
          goto LABEL_500;
        }
      }

      else
      {
        ++adv_host_created;
        *v103 = 1;
        v104 = *(v5 + 22);
      }
    }

    v108 = v300;
    v99[6] = v300;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v109 = *v300;
      *v302 = 136447490;
      v303 = "adv_instance_create";
      v304 = 1024;
      *v305 = v109;
      *&v305[4] = 2048;
      *&v305[6] = v300;
      *&v305[14] = 2080;
      *&v305[16] = "instance->update";
      *&v305[24] = 2080;
      *&v305[26] = "srp-mdns-proxy.c";
      v306 = 1024;
      v307 = 2705;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v302, 0x36u);
      v108 = v99[6];
    }

    v110 = *v108;
    if (*v108)
    {
      v111 = v110 + 1;
      *v108 = v110 + 1;
      if (v110 + 1 >= 10001)
      {
        v75 = *(v5 + 22);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_564;
        }

        *v302 = 136447490;
        v303 = "adv_instance_create";
        v304 = 1024;
        *v305 = v111;
        *&v305[4] = 2048;
        *&v305[6] = v108;
        *&v305[14] = 2080;
        *&v305[16] = "instance->update";
        *&v305[24] = 2080;
        *&v305[26] = "srp-mdns-proxy.c";
        v306 = 1024;
        v307 = 2705;
        v12 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_494:
        v281 = v302;
        goto LABEL_495;
      }
    }

    else
    {
      ++adv_update_created;
      *v108 = 1;
    }

    v112 = *(v94 + 48);
    if (v112)
    {
      LODWORD(v112) = *(v112 + 28);
    }

    *(v99 + 20) = v112;
    if (!extract_instance_name(buf, 0x3F2uLL, __s1, v94))
    {
      break;
    }

    v113 = strdup(buf);
    if (!v113 || (v99[8] = v113, (v114 = strdup(__s1)) == 0))
    {
      v275 = *(v5 + 22);
      if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
      {
        *v302 = 136446210;
        v303 = "strict_strdup";
        v276 = "%{public}s: strdup() failed";
        goto LABEL_478;
      }

      goto LABEL_480;
    }

    v99[9] = v114;
    v115 = *(v94 + 56);
    if (v115)
    {
      if (!*(v115 + 16))
      {
        LOWORD(v115) = 0;
        goto LABEL_161;
      }

      v116 = malloc_type_malloc(*(v115 + 16), 0xA45E20E7uLL);
      if (!v116)
      {
        v275 = *(v5 + 22);
        if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
        {
          *v302 = 136446210;
          v303 = "adv_instance_create";
          v276 = "%{public}s: strict allocator failed";
LABEL_478:
          v277 = v302;
          v278 = v275;
          v279 = 12;
LABEL_479:
          _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_ERROR, v276, v277, v279);
        }

LABEL_480:
        __break(1u);
LABEL_481:
        v280 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = "start_host_update";
          v266 = "%{public}s: register instance failed.";
          v267 = v280;
          v268 = OS_LOG_TYPE_DEFAULT;
          v269 = 12;
LABEL_457:
          _os_log_impl(&_mh_execute_header, v267, v268, v266, buf, v269);
        }

LABEL_458:
        update_failed(v5, 2u, 1);
        return;
      }

      v117 = v116;
      memcpy(v116, *(*(v94 + 56) + 24), *(*(v94 + 56) + 16));
      v99[11] = v117;
      LOWORD(v115) = *(*(v94 + 56) + 16);
    }

    else
    {
      v99[11] = 0;
    }

LABEL_161:
    *(v99 + 48) = v115;
    *(v99 + 135) = *(v94 + 64);
    if ((v91 & ~(v91 >> 31)) == v96)
    {
      v174 = *(v5 + 22);
      if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "prepare_update";
        _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_FAULT, "%{public}s: while preparing client update instances, i >= num_add_instances", buf, 0xCu);
      }

      v175 = *v99;
      v169 = v300;
      v170 = v298;
      if (!*v99)
      {
        v75 = *(v5 + 22);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_564;
        }

        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        *&buf[18] = 2048;
        *&buf[20] = v99;
        *&buf[28] = 2080;
        *&buf[30] = "prepared_instance";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3385;
        v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_488;
      }

      v11 = *(v5 + 22);
      if (v175 < 10001)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "prepare_update";
          *&buf[12] = 1024;
          *&buf[14] = v175;
          *&buf[18] = 2048;
          *&buf[20] = v99;
          *&buf[28] = 2080;
          *&buf[30] = "prepared_instance";
          *&buf[38] = 2080;
          *&buf[40] = "srp-mdns-proxy.c";
          *&buf[48] = 1024;
          *&buf[50] = 3385;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v175 = *v99;
        }

        v171 = v294;
        *v99 = v175 - 1;
        if (v175 == 1)
        {
          v172 = *(v5 + 22);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            *&buf[4] = "prepare_update";
            *&buf[12] = 2048;
            *&buf[14] = v99;
            *&buf[22] = 2080;
            *&buf[24] = "prepared_instance";
            *&buf[32] = 2080;
            *&buf[34] = "srp-mdns-proxy.c";
            *&buf[42] = 1024;
            *&buf[44] = 3385;
            v173 = buf;
LABEL_264:
            _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v173, 0x30u);
          }

          goto LABEL_265;
        }

        goto LABEL_266;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_564;
      }

      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = v175;
      *&buf[18] = 2048;
      *&buf[20] = v99;
      *&buf[28] = 2080;
      *&buf[30] = "prepared_instance";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3385;
      v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      goto LABEL_561;
    }

    *(v99 + 134) = 0;
    if (v298[1])
    {
      v118 = v298[4];
      if (v118)
      {
        if (*(v118 + 33) == 30)
        {
          v119 = *(v118 + 34);
          v120 = *(v5 + 22);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v121 = *(v118 + 40);
            v122 = "ULA: ";
            if ((v121 & 0xFE) != 0xFC)
            {
              if (v121 != 254 || (v122 = "LUA: ", (*(v118 + 41) & 0xC0) != 0x80))
              {
                v122 = "";
                if ((v121 & 0xE0) == 0x20)
                {
                  v122 = "GUA: ";
                }
              }
            }

            *buf = 136449027;
            *&buf[4] = "prepare_update";
            *&buf[12] = 2082;
            *&buf[14] = v122;
            *&buf[22] = 2160;
            *&buf[24] = 1752392040;
            *&buf[32] = 1041;
            *&buf[34] = 6;
            *&buf[38] = 2097;
            *&buf[40] = v118 + 40;
            *&buf[48] = 2160;
            *&buf[50] = 1752392040;
            *&buf[58] = 1042;
            *&buf[60] = 2;
            *&buf[64] = 2098;
            *&buf[66] = v118 + 46;
            *&buf[74] = 2160;
            *&buf[76] = 1752392040;
            v309 = 1041;
            *v310 = 8;
            *&v310[4] = 2097;
            *&v310[6] = v118 + 48;
            *&v310[14] = 1024;
            *&v310[16] = __rev16(v119);
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "%{public}s: server address {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}; server port %d", buf, 0x6Au);
          }

          v123 = *(v118 + 48) == -16777216 && *(v118 + 51) == -67043585;
          if (v123 && v119 == 13568)
          {
            *(v99 + 134) = 1;
          }
        }
      }

      else
      {
        v124 = *(v5 + 22);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "connection_get_local_address";
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%{public}s: message is NULL.", buf, 0xCu);
        }
      }
    }

    v95 = v96 + 1;
    *(v299[1] + 8 * v96) = v99;
    v94 = *v94;
    if (!v94)
    {
      v125 = v299;
      goto LABEL_184;
    }
  }

  v168 = *v99;
  if (!*v99)
  {
    v11 = *(v5 + 22);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *v302 = 136447490;
    v303 = "adv_instance_create";
    v304 = 1024;
    *v305 = 0;
    *&v305[4] = 2048;
    *&v305[6] = v99;
    *&v305[14] = 2080;
    *&v305[16] = "instance";
    *&v305[24] = 2080;
    *&v305[26] = "srp-mdns-proxy.c";
    v306 = 1024;
    v307 = 2712;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_491:
    v281 = v302;
    goto LABEL_562;
  }

  v11 = *(v5 + 22);
  v169 = v300;
  v170 = v298;
  if (v168 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *v302 = 136447490;
    v303 = "adv_instance_create";
    v304 = 1024;
    *v305 = v168;
    *&v305[4] = 2048;
    *&v305[6] = v99;
    *&v305[14] = 2080;
    *&v305[16] = "instance";
    *&v305[24] = 2080;
    *&v305[26] = "srp-mdns-proxy.c";
    v306 = 1024;
    v307 = 2712;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_491;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v302 = 136447490;
    v303 = "adv_instance_create";
    v304 = 1024;
    *v305 = v168;
    *&v305[4] = 2048;
    *&v305[6] = v99;
    *&v305[14] = 2080;
    *&v305[16] = "instance";
    *&v305[24] = 2080;
    *&v305[26] = "srp-mdns-proxy.c";
    v306 = 1024;
    v307 = 2712;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v302, 0x36u);
    v168 = *v99;
  }

  v171 = v294;
  *v99 = v168 - 1;
  if (v168 == 1)
  {
    v172 = *(v5 + 22);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
    {
      *v302 = 136447234;
      v303 = "adv_instance_create";
      v304 = 2048;
      *v305 = v99;
      *&v305[8] = 2080;
      *&v305[10] = "instance";
      *&v305[18] = 2080;
      *&v305[20] = "srp-mdns-proxy.c";
      *&v305[28] = 1024;
      *&v305[30] = 2712;
      v173 = v302;
      goto LABEL_264;
    }

LABEL_265:
    ++adv_instance_finalized;
    adv_instance_finalize(v99);
    v171 = v294;
  }

LABEL_266:
  srp_parse_client_updates_free_(v170, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", 3542);
  if (v171)
  {
    v176 = *v171;
    if (!*v171)
    {
      v75 = *(v5 + 22);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_564;
      }

      *buf = 136447490;
      *&buf[4] = "prepare_update";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v294;
      *&buf[28] = 2080;
      *&buf[30] = "remove_addrs";
      *&buf[38] = 2080;
      *&buf[40] = "srp-mdns-proxy.c";
      *&buf[48] = 1024;
      *&buf[50] = 3547;
      v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_488;
    }

    v11 = *(v5 + 22);
    if (v176 < 10001)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "prepare_update";
        *&buf[12] = 1024;
        *&buf[14] = v176;
        *&buf[18] = 2048;
        *&buf[20] = v294;
        *&buf[28] = 2080;
        *&buf[30] = "remove_addrs";
        *&buf[38] = 2080;
        *&buf[40] = "srp-mdns-proxy.c";
        *&buf[48] = 1024;
        *&buf[50] = 3547;
        v177 = v11;
        v178 = v294;
        _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v176 = *v294;
      }

      else
      {
        v178 = v294;
      }

      *v178 = v176 - 1;
      if (v176 == 1)
      {
        v212 = *(v5 + 22);
        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          *&buf[4] = "prepare_update";
          *&buf[12] = 2048;
          *&buf[14] = v294;
          *&buf[22] = 2080;
          *&buf[24] = "remove_addrs";
          *&buf[32] = 2080;
          *&buf[34] = "srp-mdns-proxy.c";
          *&buf[42] = 1024;
          *&buf[44] = 3547;
          _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++adv_record_vec_finalized;
        adv_record_vec_finalize(v294);
      }

      goto LABEL_337;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v176;
    *&buf[18] = 2048;
    *&buf[20] = v294;
    *&buf[28] = 2080;
    *&buf[30] = "remove_addrs";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3547;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_561:
    v281 = buf;
LABEL_562:
    v284 = v11;
    goto LABEL_563;
  }

LABEL_337:
  v213 = *v297;
  if (!*v297)
  {
    v75 = *(v5 + 22);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = v297;
    *&buf[28] = 2080;
    *&buf[30] = "add_addrs";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3551;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_488;
  }

  v11 = *(v5 + 22);
  if (v213 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v213;
    *&buf[18] = 2048;
    *&buf[20] = v297;
    *&buf[28] = 2080;
    *&buf[30] = "add_addrs";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3551;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v213;
    *&buf[18] = 2048;
    v214 = v297;
    *&buf[20] = v297;
    *&buf[28] = 2080;
    *&buf[30] = "add_addrs";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3551;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v213 = *v297;
  }

  else
  {
    v214 = v297;
  }

  *v214 = v213 - 1;
  if (v213 == 1)
  {
    v215 = *(v5 + 22);
    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "prepare_update";
      *&buf[12] = 2048;
      *&buf[14] = v297;
      *&buf[22] = 2080;
      *&buf[24] = "add_addrs";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 3551;
      _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_record_vec_finalized;
    adv_record_vec_finalize(v297);
  }

  v216 = *v299;
  if (!*v299)
  {
    v75 = *(v5 + 22);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = v299;
    *&buf[28] = 2080;
    *&buf[30] = "add_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3555;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_488;
  }

  v11 = *(v5 + 22);
  if (v216 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v216;
    *&buf[18] = 2048;
    *&buf[20] = v299;
    *&buf[28] = 2080;
    *&buf[30] = "add_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3555;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v216;
    *&buf[18] = 2048;
    *&buf[20] = v299;
    *&buf[28] = 2080;
    *&buf[30] = "add_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3555;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v216 = *v299;
  }

  *v299 = v216 - 1;
  if (v216 == 1)
  {
    v217 = *(v5 + 22);
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "prepare_update";
      *&buf[12] = 2048;
      *&buf[14] = v299;
      *&buf[22] = 2080;
      *&buf[24] = "add_instances";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 3555;
      _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_instance_vec_finalized;
    adv_instance_vec_finalize(v299);
  }

  v218 = *v292;
  if (!*v292)
  {
    v75 = *(v5 + 22);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = v292;
    *&buf[28] = 2080;
    *&buf[30] = "remove_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3559;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_488;
  }

  v11 = *(v5 + 22);
  if (v218 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v218;
    *&buf[18] = 2048;
    *&buf[20] = v292;
    *&buf[28] = 2080;
    *&buf[30] = "remove_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3559;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v218;
    *&buf[18] = 2048;
    *&buf[20] = v292;
    *&buf[28] = 2080;
    *&buf[30] = "remove_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3559;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v218 = *v292;
  }

  *v292 = v218 - 1;
  if (v218 == 1)
  {
    v219 = *(v5 + 22);
    if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "prepare_update";
      *&buf[12] = 2048;
      *&buf[14] = v292;
      *&buf[22] = 2080;
      *&buf[24] = "remove_instances";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 3559;
      _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_instance_vec_finalized;
    adv_instance_vec_finalize(v292);
  }

  v220 = *v293;
  if (!*v293)
  {
    v75 = *(v5 + 22);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = v293;
    *&buf[28] = 2080;
    *&buf[30] = "update_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3563;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_488;
  }

  v11 = *(v5 + 22);
  if (v220 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v220;
    *&buf[18] = 2048;
    *&buf[20] = v293;
    *&buf[28] = 2080;
    *&buf[30] = "update_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3563;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v220;
    *&buf[18] = 2048;
    *&buf[20] = v293;
    *&buf[28] = 2080;
    *&buf[30] = "update_instances";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3563;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v220 = *v293;
  }

  *v293 = v220 - 1;
  if (v220 == 1)
  {
    v221 = *(v5 + 22);
    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "prepare_update";
      *&buf[12] = 2048;
      *&buf[14] = v293;
      *&buf[22] = 2080;
      *&buf[24] = "update_instances";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 3563;
      _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_instance_vec_finalized;
    adv_instance_vec_finalize(v293);
  }

  v222 = *v169;
  if (!*v169)
  {
    v11 = *(v5 + 22);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 2048;
    *&buf[20] = v300;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3567;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  v11 = *(v5 + 22);
  if (v222 >= 10001)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_564;
    }

    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v222;
    *&buf[18] = 2048;
    *&buf[20] = v300;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3567;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_561;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "prepare_update";
    *&buf[12] = 1024;
    *&buf[14] = v222;
    *&buf[18] = 2048;
    *&buf[20] = v169;
    *&buf[28] = 2080;
    *&buf[30] = "update";
    *&buf[38] = 2080;
    *&buf[40] = "srp-mdns-proxy.c";
    *&buf[48] = 1024;
    *&buf[50] = 3567;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    v222 = *v169;
  }

  *v169 = v222 - 1;
  if (v222 == 1)
  {
    v223 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      *&buf[4] = "prepare_update";
      *&buf[12] = 2048;
      *&buf[14] = v169;
      *&buf[22] = 2080;
      *&buf[24] = "update";
      *&buf[32] = 2080;
      *&buf[34] = "srp-mdns-proxy.c";
      *&buf[42] = 1024;
      *&buf[44] = 3567;
      _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
    }

    ++adv_update_finalized;
    adv_update_finalize(v169);
  }
}

void adv_record_create_(__int16 a1, unsigned int a2, const void *a3, int *a4, int a5)
{
  v10 = a2;
  v11 = a2 + 79;
  v12 = malloc_type_calloc(1uLL, v11, 0xC8D28F7FuLL);
  if (!v12)
  {
    v22 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446722;
      v28 = "adv_record_create_";
      v29 = 2048;
      *v30 = 1;
      *&v30[8] = 2048;
      *&v30[10] = v11;
      v23 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v24 = v22;
      v25 = 32;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, &v27, v25);
    }

LABEL_28:
    __break(1u);
    return;
  }

  v13 = v12;
  if (a2)
  {
    v14 = malloc_type_malloc(v10, 0xEFB008DBuLL);
    if (v14)
    {
      *(v13 + 64) = v14;
      memcpy(v14, a3, v10);
      goto LABEL_5;
    }

    v26 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446210;
      v28 = "adv_record_create_";
      v23 = "%{public}s: strict allocator failed";
      v24 = v26;
      v25 = 12;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_5:
  *(v13 + 16) = a4;
  v15 = global_os_log;
  if (a4)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a4;
      v27 = 136447490;
      v28 = "adv_record_create_";
      v29 = 1024;
      *v30 = v16;
      *&v30[4] = 2048;
      *&v30[6] = a4;
      *&v30[14] = 2080;
      *&v30[16] = "host";
      v31 = 2080;
      v32 = "srp-mdns-proxy.c";
      v33 = 1024;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v27, 0x36u);
    }

    v17 = *a4;
    if (*a4)
    {
      v18 = v17 + 1;
      *a4 = v17 + 1;
      v15 = global_os_log;
      if (v17 + 1 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_20;
        }

        v27 = 136447490;
        v28 = "adv_record_create_";
        v29 = 1024;
        *v30 = v18;
        *&v30[4] = 2048;
        *&v30[6] = a4;
        *&v30[14] = 2080;
        *&v30[16] = "host";
        v31 = 2080;
        v32 = "srp-mdns-proxy.c";
        v33 = 1024;
        v34 = a5;
        goto LABEL_19;
      }
    }

    else
    {
      ++adv_host_created;
      *a4 = 1;
      v15 = global_os_log;
    }
  }

  *(v13 + 72) = a1;
  *(v13 + 74) = a2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *v13;
    v27 = 136447490;
    v28 = "adv_record_create_";
    v29 = 1024;
    *v30 = v19;
    *&v30[4] = 2048;
    *&v30[6] = v13;
    *&v30[14] = 2080;
    *&v30[16] = "new_record";
    v31 = 2080;
    v32 = "srp-mdns-proxy.c";
    v33 = 1024;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v27, 0x36u);
  }

  v20 = *v13;
  if (*v13)
  {
    v21 = v20 + 1;
    *v13 = v20 + 1;
    if (v20 + 1 >= 10001)
    {
      v15 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }

      v27 = 136447490;
      v28 = "adv_record_create_";
      v29 = 1024;
      *v30 = v21;
      *&v30[4] = 2048;
      *&v30[6] = v13;
      *&v30[14] = 2080;
      *&v30[16] = "new_record";
      v31 = 2080;
      v32 = "srp-mdns-proxy.c";
      v33 = 1024;
      v34 = a5;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v27, 0x36u);
LABEL_20:
      abort();
    }
  }

  else
  {
    ++adv_record_created;
    v21 = 1;
    *v13 = 1;
  }

  srp_log_ref_final(v13, v21, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/srp-mdns-proxy.c", a5);
}