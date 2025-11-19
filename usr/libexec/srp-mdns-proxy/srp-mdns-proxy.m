uint64_t wakeup_event(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  ioloop_cancel_wake_event(a1);
  result = (*(a1 + 24))(v2);
  if (v2)
  {
    v4 = v5 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {

    return v5(v2);
  }

  return result;
}

uint64_t ioloop_cancel_wake_event(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = v1[5];
      if (v3)
      {
        dispatch_release(v3);
        v1[5] = 0;
      }
    }

    result = v1[2];
    if (result)
    {
      v4 = v1[4];
      v1[2] = 0;
      v1[4] = 0;
      if (v4)
      {

        return v4();
      }
    }
  }

  return result;
}

BOOL object_allocation_stats_dump_callback(uint64_t a1)
{
  ioloop_dump_object_allocation_stats();
  if (*(a1 + 400))
  {
    srp_dump_server_stats(a1, 0, 1);
    v2 = *(a1 + 400) - 1;
  }

  else
  {
    srp_dump_server_stats(a1, 1, 1);
    v2 = 11;
  }

  *(a1 + 400) = v2;
  v3 = *(a1 + 248);

  return ioloop_add_wake_event(v3, a1, object_allocation_stats_dump_callback, 0, 0x493E0u);
}

void ioloop_dump_object_allocation_stats()
{
  if (adv_host_created != old_adv_host_created || adv_host_finalized != old_adv_host_finalized || adv_instance_created != old_adv_instance_created || adv_instance_finalized != old_adv_instance_finalized || adv_instance_vec_created != old_adv_instance_vec_created || adv_instance_vec_finalized != old_adv_instance_vec_finalized || adv_record_created != old_adv_record_created || adv_record_finalized != old_adv_record_finalized || adv_record_vec_created != old_adv_record_vec_created || adv_record_vec_finalized != old_adv_record_vec_finalized || adv_update_created != old_adv_update_created || adv_update_finalized != old_adv_update_finalized || comm_created != old_comm_created || comm_finalized != old_comm_finalized || cti_connection_created != old_cti_connection_created || cti_connection_finalized != old_cti_connection_finalized || cti_prefix_created != old_cti_prefix_created || cti_prefix_finalized != old_cti_prefix_finalized || cti_prefix_vec_created != old_cti_prefix_vec_created || cti_prefix_vec_finalized != old_cti_prefix_vec_finalized || cti_route_created != old_cti_route_created || cti_route_finalized != old_cti_route_finalized || cti_route_vec_created != old_cti_route_vec_created || cti_route_vec_finalized != old_cti_route_vec_finalized || cti_service_created != old_cti_service_created || cti_service_finalized != old_cti_service_finalized || cti_service_vec_created != old_cti_service_vec_created || cti_service_vec_finalized != old_cti_service_vec_finalized || dnssd_client_created != old_dnssd_client_created || dnssd_client_finalized != old_dnssd_client_finalized || dnssd_query_created != old_dnssd_query_created || dnssd_query_finalized != old_dnssd_query_finalized || dnssd_txn_created != old_dnssd_txn_created || dnssd_txn_finalized != old_dnssd_txn_finalized || dp_tracker_created != old_dp_tracker_created || dp_tracker_finalized != old_dp_tracker_finalized || file_descriptor_created != old_file_descriptor_created || file_descriptor_finalized != old_file_descriptor_finalized || ifpermit_list_created != old_ifpermit_list_created || ifpermit_list_finalized != old_ifpermit_list_finalized || listener_created != old_listener_created || listener_finalized != old_listener_finalized || message_created != old_message_created || message_finalized != old_message_finalized || node_type_tracker_created != old_node_type_tracker_created || node_type_tracker_finalized != old_node_type_tracker_finalized || nw_connection_created != old_nw_connection_created || nw_connection_finalized != old_nw_connection_finalized || nw_listener_created != old_nw_listener_created || nw_listener_finalized != old_nw_listener_finalized || omr_prefix_created != old_omr_prefix_created || omr_prefix_finalized != old_omr_prefix_finalized || omr_watcher_created != old_omr_watcher_created || omr_watcher_finalized != old_omr_watcher_finalized || probe_state_created != old_probe_state_created || probe_state_finalized != old_probe_state_finalized || question_created != old_question_created || question_finalized != old_question_finalized || rref_created != old_rref_created || rref_finalized != old_rref_finalized || sdref_created != old_sdref_created || sdref_finalized != old_sdref_finalized || saref_created != old_saref_created || saref_finalized != old_saref_finalized || service_publisher_created != old_service_publisher_created || service_publisher_finalized != old_service_publisher_finalized || service_tracker_created != old_service_tracker_created || service_tracker_finalized != old_service_tracker_finalized || srp_xpc_client_created != old_srp_xpc_client_created || srp_xpc_client_finalized != old_srp_xpc_client_finalized || state_machine_event_created != old_state_machine_event_created || state_machine_event_finalized != old_state_machine_event_finalized || thread_service_created != old_thread_service_created || thread_service_finalized != old_thread_service_finalized || thread_tracker_created != old_thread_tracker_created || thread_tracker_finalized != old_thread_tracker_finalized || wakeup_created != old_wakeup_created || wakeup_finalized != old_wakeup_finalized)
  {
    v0 = snprintf(__str, 0x3E8uLL, "address_query %d %d %d %d|", 0, 0, 0, 0);
    if (v0 <= 900)
    {
      v1 = &__str[v0];
      v3 = &unk_1000A9000;
    }

    else
    {
      v1 = __str;
      v2 = global_os_log;
      v3 = &unk_1000A9000;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v4 = &v1[snprintf(v1, &v157 - v1, "adv_host %d %d %d %d|", old_adv_host_created, v3[17], old_adv_host_finalized, adv_host_finalized)];
    old_adv_host_created = v3[17];
    old_adv_host_finalized = adv_host_finalized;
    if (v4 - __str >= 901)
    {
      v4 = __str;
      v5 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v6 = &v4[snprintf(v4, &v157 - v4, "adv_instance %d %d %d %d|", old_adv_instance_created, adv_instance_created, old_adv_instance_finalized, adv_instance_finalized)];
    old_adv_instance_created = adv_instance_created;
    old_adv_instance_finalized = adv_instance_finalized;
    if (v6 - __str >= 901)
    {
      v6 = __str;
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v8 = &v6[snprintf(v6, &v157 - v6, "adv_instance_vec %d %d %d %d|", old_adv_instance_vec_created, adv_instance_vec_created, old_adv_instance_vec_finalized, adv_instance_vec_finalized)];
    old_adv_instance_vec_created = adv_instance_vec_created;
    old_adv_instance_vec_finalized = adv_instance_vec_finalized;
    if (v8 - __str >= 901)
    {
      v8 = __str;
      v9 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v10 = &v8[snprintf(v8, &v157 - v8, "adv_record %d %d %d %d|", old_adv_record_created, adv_record_created, old_adv_record_finalized, adv_record_finalized)];
    old_adv_record_created = adv_record_created;
    old_adv_record_finalized = adv_record_finalized;
    if (v10 - __str >= 901)
    {
      v10 = __str;
      v11 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v12 = &v10[snprintf(v10, &v157 - v10, "adv_record_vec %d %d %d %d|", old_adv_record_vec_created, adv_record_vec_created, old_adv_record_vec_finalized, adv_record_vec_finalized)];
    old_adv_record_vec_created = adv_record_vec_created;
    old_adv_record_vec_finalized = adv_record_vec_finalized;
    if (v12 - __str >= 901)
    {
      v12 = __str;
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v14 = &v12[snprintf(v12, &v157 - v12, "adv_update %d %d %d %d|", old_adv_update_created, adv_update_created, old_adv_update_finalized, adv_update_finalized)];
    old_adv_update_created = adv_update_created;
    old_adv_update_finalized = adv_update_finalized;
    if (v14 - __str >= 901)
    {
      v14 = __str;
      v15 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v16 = &v14[snprintf(v14, &v157 - v14, "adv_service_state %d %d %d %d|", 0, 0, 0, 0)];
    if (v16 - __str >= 901)
    {
      v16 = __str;
      v17 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v18 = &v16[snprintf(v16, &v157 - v16, "adv_instance_state %d %d %d %d|", 0, 0, 0, 0)];
    if (v18 - __str >= 901)
    {
      v18 = __str;
      v19 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v20 = &v18[snprintf(v18, &v157 - v18, "advertising_proxy_conn_ref %d %d %d %d|", 0, 0, 0, 0)];
    if (v20 - __str >= 901)
    {
      v20 = __str;
      v21 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v22 = &v20[snprintf(v20, &v157 - v20, "advertising_proxy_subscription %d %d %d %d|", 0, 0, 0, 0)];
    if (v22 - __str >= 901)
    {
      v22 = __str;
      v23 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v24 = &v22[snprintf(v22, &v157 - v22, "comm %d %d %d %d|", old_comm_created, comm_created, old_comm_finalized, comm_finalized)];
    old_comm_created = comm_created;
    old_comm_finalized = comm_finalized;
    if (v24 - __str >= 901)
    {
      v24 = __str;
      v25 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v26 = &v24[snprintf(v24, &v157 - v24, "cti_connection %d %d %d %d|", old_cti_connection_created, cti_connection_created, old_cti_connection_finalized, cti_connection_finalized)];
    old_cti_connection_created = cti_connection_created;
    old_cti_connection_finalized = cti_connection_finalized;
    if (v26 - __str >= 901)
    {
      v26 = __str;
      v27 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v28 = &v26[snprintf(v26, &v157 - v26, "cti_prefix %d %d %d %d|", old_cti_prefix_created, cti_prefix_created, old_cti_prefix_finalized, cti_prefix_finalized)];
    old_cti_prefix_created = cti_prefix_created;
    old_cti_prefix_finalized = cti_prefix_finalized;
    if (v28 - __str >= 901)
    {
      v28 = __str;
      v29 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v30 = &v28[snprintf(v28, &v157 - v28, "cti_prefix_vec %d %d %d %d|", old_cti_prefix_vec_created, cti_prefix_vec_created, old_cti_prefix_vec_finalized, cti_prefix_vec_finalized)];
    old_cti_prefix_vec_created = cti_prefix_vec_created;
    old_cti_prefix_vec_finalized = cti_prefix_vec_finalized;
    if (v30 - __str >= 901)
    {
      v30 = __str;
      v31 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v32 = &v30[snprintf(v30, &v157 - v30, "cti_route %d %d %d %d|", old_cti_route_created, cti_route_created, old_cti_route_finalized, cti_route_finalized)];
    old_cti_route_created = cti_route_created;
    old_cti_route_finalized = cti_route_finalized;
    if (v32 - __str >= 901)
    {
      v32 = __str;
      v33 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v34 = &v32[snprintf(v32, &v157 - v32, "cti_route_vec %d %d %d %d|", old_cti_route_vec_created, cti_route_vec_created, old_cti_route_vec_finalized, cti_route_vec_finalized)];
    old_cti_route_vec_created = cti_route_vec_created;
    old_cti_route_vec_finalized = cti_route_vec_finalized;
    if (v34 - __str >= 901)
    {
      v34 = __str;
      v35 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v36 = &v34[snprintf(v34, &v157 - v34, "cti_service %d %d %d %d|", old_cti_service_created, cti_service_created, old_cti_service_finalized, cti_service_finalized)];
    old_cti_service_created = cti_service_created;
    old_cti_service_finalized = cti_service_finalized;
    if (v36 - __str >= 901)
    {
      v36 = __str;
      v37 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v38 = &v36[snprintf(v36, &v157 - v36, "cti_service_vec %d %d %d %d|", old_cti_service_vec_created, cti_service_vec_created, old_cti_service_vec_finalized, cti_service_vec_finalized)];
    old_cti_service_vec_created = cti_service_vec_created;
    old_cti_service_vec_finalized = cti_service_vec_finalized;
    if (v38 - __str >= 901)
    {
      v38 = __str;
      v39 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v40 = &v38[snprintf(v38, &v157 - v38, "dnssd_client %d %d %d %d|", old_dnssd_client_created, dnssd_client_created, old_dnssd_client_finalized, dnssd_client_finalized)];
    old_dnssd_client_created = dnssd_client_created;
    old_dnssd_client_finalized = dnssd_client_finalized;
    if (v40 - __str >= 901)
    {
      v40 = __str;
      v41 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v42 = &v40[snprintf(v40, &v157 - v40, "dnssd_query %d %d %d %d|", old_dnssd_query_created, dnssd_query_created, old_dnssd_query_finalized, dnssd_query_finalized)];
    old_dnssd_query_created = dnssd_query_created;
    old_dnssd_query_finalized = dnssd_query_finalized;
    if (v42 - __str >= 901)
    {
      v42 = __str;
      v43 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v44 = &v42[snprintf(v42, &v157 - v42, "dnssd_txn %d %d %d %d|", old_dnssd_txn_created, dnssd_txn_created, old_dnssd_txn_finalized, dnssd_txn_finalized)];
    old_dnssd_txn_created = dnssd_txn_created;
    old_dnssd_txn_finalized = dnssd_txn_finalized;
    if (v44 - __str >= 901)
    {
      v44 = __str;
      v45 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v46 = &v44[snprintf(v44, &v157 - v44, "dp_tracker %d %d %d %d|", old_dp_tracker_created, dp_tracker_created, old_dp_tracker_finalized, dp_tracker_finalized)];
    old_dp_tracker_created = dp_tracker_created;
    old_dp_tracker_finalized = dp_tracker_finalized;
    if (v46 - __str >= 901)
    {
      v46 = __str;
      v47 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v48 = &v46[snprintf(v46, &v157 - v46, "file_descriptor %d %d %d %d|", old_file_descriptor_created, file_descriptor_created, old_file_descriptor_finalized, file_descriptor_finalized)];
    old_file_descriptor_created = file_descriptor_created;
    old_file_descriptor_finalized = file_descriptor_finalized;
    if (v48 - __str >= 901)
    {
      v48 = __str;
      v49 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v50 = &v48[snprintf(v48, &v157 - v48, "interface %d %d %d %d|", 0, 0, 0, 0)];
    if (v50 - __str >= 901)
    {
      v50 = __str;
      v51 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v52 = &v50[snprintf(v50, &v157 - v50, "ifpermit_list %d %d %d %d|", old_ifpermit_list_created, ifpermit_list_created, old_ifpermit_list_finalized, ifpermit_list_finalized)];
    old_ifpermit_list_created = ifpermit_list_created;
    old_ifpermit_list_finalized = ifpermit_list_finalized;
    if (v52 - __str >= 901)
    {
      v52 = __str;
      v53 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v54 = &v52[snprintf(v52, &v157 - v52, "io %d %d %d %d|", 0, 0, 0, 0)];
    if (v54 - __str >= 901)
    {
      v54 = __str;
      v55 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v56 = &v54[snprintf(v54, &v157 - v54, "listener %d %d %d %d|", old_listener_created, listener_created, old_listener_finalized, listener_finalized)];
    old_listener_created = listener_created;
    old_listener_finalized = listener_finalized;
    if (v56 - __str >= 901)
    {
      v56 = __str;
      v57 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v58 = &v56[snprintf(v56, &v157 - v56, "message %d %d %d %d|", old_message_created, message_created, old_message_finalized, message_finalized)];
    old_message_created = message_created;
    old_message_finalized = message_finalized;
    if (v58 - __str >= 901)
    {
      v58 = __str;
      v59 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v60 = &v58[snprintf(v58, &v157 - v58, "nat64 %d %d %d %d|", 0, 0, 0, 0)];
    if (v60 - __str >= 901)
    {
      v60 = __str;
      v61 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v62 = &v60[snprintf(v60, &v157 - v60, "nat64_prefix %d %d %d %d|", 0, 0, 0, 0)];
    if (v62 - __str >= 901)
    {
      v62 = __str;
      v63 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v64 = &v62[snprintf(v62, &v157 - v62, "nat64_ipv4_default_route_monitor %d %d %d %d|", 0, 0, 0, 0)];
    if (v64 - __str >= 901)
    {
      v64 = __str;
      v65 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v66 = &v64[snprintf(v64, &v157 - v64, "nat64_infra_prefix_monitor %d %d %d %d|", 0, 0, 0, 0)];
    if (v66 - __str >= 901)
    {
      v66 = __str;
      v67 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v68 = &v66[snprintf(v66, &v157 - v66, "nat64_thread_prefix_monitor %d %d %d %d|", 0, 0, 0, 0)];
    if (v68 - __str >= 901)
    {
      v68 = __str;
      v69 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v70 = &v68[snprintf(v68, &v157 - v68, "nat64_infra_prefix_publisher %d %d %d %d|", 0, 0, 0, 0)];
    if (v70 - __str >= 901)
    {
      v70 = __str;
      v71 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v72 = &v70[snprintf(v70, &v157 - v70, "nat64_br_prefix_publisher %d %d %d %d|", 0, 0, 0, 0)];
    if (v72 - __str >= 901)
    {
      v72 = __str;
      v73 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v74 = &v72[snprintf(v72, &v157 - v72, "node_type_tracker %d %d %d %d|", old_node_type_tracker_created, node_type_tracker_created, old_node_type_tracker_finalized, node_type_tracker_finalized)];
    old_node_type_tracker_created = node_type_tracker_created;
    old_node_type_tracker_finalized = node_type_tracker_finalized;
    if (v74 - __str >= 901)
    {
      v74 = __str;
      v75 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v76 = &v74[snprintf(v74, &v157 - v74, "nw_connection %d %d %d %d|", old_nw_connection_created, nw_connection_created, old_nw_connection_finalized, nw_connection_finalized)];
    old_nw_connection_created = nw_connection_created;
    old_nw_connection_finalized = nw_connection_finalized;
    if (v76 - __str >= 901)
    {
      v76 = __str;
      v77 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v78 = &v76[snprintf(v76, &v157 - v76, "nw_listener %d %d %d %d|", old_nw_listener_created, nw_listener_created, old_nw_listener_finalized, nw_listener_finalized)];
    old_nw_listener_created = nw_listener_created;
    old_nw_listener_finalized = nw_listener_finalized;
    if (v78 - __str >= 901)
    {
      v78 = __str;
      v79 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v80 = &v78[snprintf(v78, &v157 - v78, "nw_path_evaluator %d %d %d %d|", 0, 0, 0, 0)];
    if (v80 - __str >= 901)
    {
      v80 = __str;
      v81 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v82 = &v80[snprintf(v80, &v157 - v80, "omr_prefix %d %d %d %d|", old_omr_prefix_created, omr_prefix_created, old_omr_prefix_finalized, omr_prefix_finalized)];
    old_omr_prefix_created = omr_prefix_created;
    old_omr_prefix_finalized = omr_prefix_finalized;
    if (v82 - __str >= 901)
    {
      v82 = __str;
      v83 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v84 = &v82[snprintf(v82, &v157 - v82, "omr_publisher %d %d %d %d|", 0, 0, 0, 0)];
    if (v84 - __str >= 901)
    {
      v84 = __str;
      v85 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v86 = &v84[snprintf(v84, &v157 - v84, "omr_watcher %d %d %d %d|", old_omr_watcher_created, omr_watcher_created, old_omr_watcher_finalized, omr_watcher_finalized)];
    old_omr_watcher_created = omr_watcher_created;
    old_omr_watcher_finalized = omr_watcher_finalized;
    if (v86 - __str >= 901)
    {
      v86 = __str;
      v87 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v88 = &v86[snprintf(v86, &v157 - v86, "prefix_tracker %d %d %d %d|", 0, 0, 0, 0)];
    if (v88 - __str >= 901)
    {
      v88 = __str;
      v89 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v90 = &v88[snprintf(v88, &v157 - v88, "probe_state %d %d %d %d|", old_probe_state_created, probe_state_created, old_probe_state_finalized, probe_state_finalized)];
    old_probe_state_created = probe_state_created;
    old_probe_state_finalized = probe_state_finalized;
    if (v90 - __str >= 901)
    {
      v90 = __str;
      v91 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v92 = &v90[snprintf(v90, &v157 - v90, "question %d %d %d %d|", old_question_created, question_created, old_question_finalized, question_finalized)];
    old_question_created = question_created;
    old_question_finalized = question_finalized;
    if (v92 - __str >= 901)
    {
      v92 = __str;
      v93 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v94 = &v92[snprintf(v92, &v157 - v92, "route_tracker %d %d %d %d|", 0, 0, 0, 0)];
    if (v94 - __str >= 901)
    {
      v94 = __str;
      v95 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v96 = &v94[snprintf(v94, &v157 - v94, "rref %d %d %d %d|", old_rref_created, rref_created, old_rref_finalized, rref_finalized)];
    old_rref_created = rref_created;
    old_rref_finalized = rref_finalized;
    if (v96 - __str >= 901)
    {
      v96 = __str;
      v97 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v98 = &v96[snprintf(v96, &v157 - v96, "sdref %d %d %d %d|", old_sdref_created, sdref_created, old_sdref_finalized, sdref_finalized)];
    old_sdref_created = sdref_created;
    old_sdref_finalized = sdref_finalized;
    if (v98 - __str < 901)
    {
      v100 = &NSObject__properties;
      v101 = &NSObject__properties;
    }

    else
    {
      v98 = __str;
      v99 = global_os_log;
      v100 = &NSObject__properties;
      v101 = &NSObject__properties;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v102 = &v98[snprintf(v98, &v157 - v98, "saref %d %d %d %d|", old_saref_created, v101[285].entrysize, old_saref_finalized, saref_finalized)];
    old_saref_created = v101[285].entrysize;
    old_saref_finalized = saref_finalized;
    if (v102 - __str >= 901)
    {
      v102 = __str;
      v103 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v104 = &v102[snprintf(v102, &v157 - v102, "service_publisher %d %d %d %d|", old_service_publisher_created, service_publisher_created, old_service_publisher_finalized, service_publisher_finalized)];
    old_service_publisher_created = service_publisher_created;
    old_service_publisher_finalized = service_publisher_finalized;
    if (v104 - __str >= 901)
    {
      v104 = __str;
      v105 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v106 = &v104[snprintf(v104, &v157 - v104, "service_tracker %d %d %d %d|", old_service_tracker_created, v100[353].entrysize, old_service_tracker_finalized, service_tracker_finalized)];
    old_service_tracker_created = v100[353].entrysize;
    old_service_tracker_finalized = service_tracker_finalized;
    if (v106 - __str >= 901 && (v106 = __str, v107 = global_os_log, os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT)))
    {
      v108 = &NSObject__properties;
      *buf = 136446466;
      v148 = "ioloop_dump_object_allocation_stats";
      v149 = 2082;
      v150 = __str;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
    }

    else
    {
      v108 = &NSObject__properties;
    }

    v109 = &v106[snprintf(v106, &v157 - v106, "srp_xpc_client %d %d %d %d|", old_srp_xpc_client_created, srp_xpc_client_created, old_srp_xpc_client_finalized, srp_xpc_client_finalized)];
    old_srp_xpc_client_created = srp_xpc_client_created;
    old_srp_xpc_client_finalized = srp_xpc_client_finalized;
    if (v109 - __str < 901)
    {
      v111 = v108;
    }

    else
    {
      v109 = __str;
      v110 = global_os_log;
      v111 = v108;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v112 = &v109[snprintf(v109, &v157 - v109, "srpl_connection %d %d %d %d|", 0, 0, 0, 0)];
    if (v112 - __str >= 901)
    {
      v112 = __str;
      v113 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v114 = &v112[snprintf(v112, &v157 - v112, "srpl_domain %d %d %d %d|", 0, 0, 0, 0)];
    if (v114 - __str >= 901)
    {
      v114 = __str;
      v115 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v116 = &v114[snprintf(v114, &v157 - v114, "srpl_instance %d %d %d %d|", 0, 0, 0, 0)];
    if (v116 - __str >= 901)
    {
      v116 = __str;
      v117 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v118 = &v116[snprintf(v116, &v157 - v116, "srpl_instance_service %d %d %d %d|", 0, 0, 0, 0)];
    if (v118 - __str < 901)
    {
      v120 = &NSObject__properties;
    }

    else
    {
      v118 = __str;
      v119 = global_os_log;
      v120 = &NSObject__properties;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v121 = &v118[snprintf(v118, &v157 - v118, "state_machine_event %d %d %d %d|", old_state_machine_event_created, v120[290].entrysize, old_state_machine_event_finalized, state_machine_event_finalized)];
    old_state_machine_event_created = v120[290].entrysize;
    old_state_machine_event_finalized = state_machine_event_finalized;
    if (v121 - __str >= 901)
    {
      v121 = __str;
      v122 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v123 = &v121[snprintf(v121, &v157 - v121, "subproc %d %d %d %d|", 0, 0, 0, 0)];
    if (v123 - __str < 901)
    {
      v125 = &NSObject__properties;
    }

    else
    {
      v123 = __str;
      v124 = global_os_log;
      v125 = &NSObject__properties;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v126 = &v123[snprintf(v123, &v157 - v123, "thread_service %d %d %d %d|", old_thread_service_created, v125[291].count, old_thread_service_finalized, thread_service_finalized)];
    old_thread_service_created = v125[291].count;
    old_thread_service_finalized = thread_service_finalized;
    if (v126 - __str >= 901)
    {
      v126 = __str;
      v127 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v128 = &v126[snprintf(v126, &v157 - v126, "thread_tracker %d %d %d %d|", old_thread_tracker_created, thread_tracker_created, old_thread_tracker_finalized, thread_tracker_finalized)];
    old_thread_tracker_created = thread_tracker_created;
    old_thread_tracker_finalized = thread_tracker_finalized;
    if (v128 - __str < 901)
    {
      v130 = &NSObject__properties;
    }

    else
    {
      v128 = __str;
      v129 = global_os_log;
      v130 = &NSObject__properties;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v131 = &v128[snprintf(v128, &v157 - v128, "threadsim_network_state %d %d %d %d|", 0, 0, 0, 0)];
    if (v131 - __str >= 901)
    {
      v131 = __str;
      v132 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v133 = &v131[snprintf(v131, &v157 - v131, "threadsim_node_state %d %d %d %d|", 0, 0, 0, 0)];
    if (v133 - __str < 901)
    {
      v135 = &NSObject__properties;
    }

    else
    {
      v133 = __str;
      v134 = global_os_log;
      v135 = &NSObject__properties;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }

    v136 = snprintf(v133, &v157 - v133, "wakeup %d %d %d %d|", v111[294].count, v130[343].count, v135[295].entrysize, wakeup_finalized);
    v111[294].count = v130[343].count;
    v135[295].entrysize = wakeup_finalized;
    if (&v133[v136] - __str >= 901)
    {
      v137 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_282;
      }

      goto LABEL_281;
    }

    if (v136)
    {
      v137 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_281:
        *buf = 136446466;
        v148 = "ioloop_dump_object_allocation_stats";
        v149 = 2082;
        v150 = __str;
        _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }
    }
  }

LABEL_282:
  v138 = opendir("/dev/fd");
  if (!v138)
  {
    if (*__error() == 24)
    {
      v141 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *__str = 136446210;
        v152 = "get_num_fds";
        v146 = "%{public}s: per-process open file limit reached.";
LABEL_299:
        _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_FAULT, v146, __str, 0xCu);
      }
    }

    else
    {
      v142 = *__error();
      v141 = global_os_log;
      if (v142 != 23)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          v143 = *__error();
          v144 = __error();
          v145 = strerror(*v144);
          *__str = 136446722;
          v152 = "get_num_fds";
          v153 = 1024;
          v154 = v143;
          v155 = 2082;
          v156 = v145;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "%{public}s: errno %d %{public}s", __str, 0x1Cu);
          v140 = 0;
          v141 = global_os_log;
        }

        else
        {
          v140 = 0;
        }

        goto LABEL_292;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *__str = 136446210;
        v152 = "get_num_fds";
        v146 = "%{public}s: per-system open file limit reached.";
        goto LABEL_299;
      }
    }

    v141 = global_os_log;
LABEL_301:
    if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
    {
      *__str = 136446210;
      v152 = "ioloop_dump_object_allocation_stats";
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_FAULT, "%{public}s: out of file descriptors!!", __str, 0xCu);
    }

    abort();
  }

  v139 = v138;
  v140 = -1;
  do
  {
    ++v140;
  }

  while (readdir(v139));
  closedir(v139);
  v141 = global_os_log;
  if (v140 < 0)
  {
    goto LABEL_301;
  }

LABEL_292:
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    *__str = 136446466;
    v152 = "ioloop_dump_object_allocation_stats";
    v153 = 1024;
    v154 = v140;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "%{public}s: %d file descriptors in use", __str, 0x12u);
  }
}

void srp_dump_server_stats(uint64_t a1, int a2, int a3)
{
  *v78 = 0;
  *&v78[8] = 0;
  gettimeofday(v78, 0);
  v58 = a1;
  v5 = *(a1 + 8);
  if (!v5)
  {
    v52 = 0;
    v54 = 0;
    v7 = 0;
    v6 = 0;
    v59 = 0;
    v57 = 0;
    goto LABEL_73;
  }

  v57 = 0;
  v59 = 0;
  v6 = 0;
  v7 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 1000 * *v78 + *&v78[8] / 1000;
  do
  {
    if (*(v5 + 256))
    {
      goto LABEL_69;
    }

    v8 = *(v5 + 248);
    v9 = v8 < v55;
    v10 = v8 - v55;
    if (v9)
    {
      v11 = -1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = v10 / 1000;
      if (a2)
      {
LABEL_9:
        v12 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v5 + 48);
          v14 = *(v5 + 176);
          v15 = *(v5 + 216);
          v16 = *(v5 + 240);
          v17 = *(v5 + 244);
          v18 = " update-pending";
          if (!*(v5 + 258))
          {
            v18 = "";
          }

          *v78 = 136448771;
          *&v78[4] = "srp_dump_server_stats";
          *&v78[12] = 2048;
          *&v78[14] = v5;
          *&v78[22] = 2160;
          *v79 = 1752392040;
          *&v79[8] = 2081;
          *&v79[10] = v13;
          *&v79[18] = 1024;
          *&v79[20] = v14;
          *v80 = 2048;
          *&v80[2] = v15;
          v81 = 1024;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v17;
          LOWORD(v83) = 1024;
          *(&v83 + 2) = v11;
          HIWORD(v83) = 2082;
          v84 = "";
          v85 = 2082;
          v86 = v18;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: host %p %{private, mask.hash}s key_id %xu stable %llx lease %d key_lease %d expiry %d%{public}s%{public}s", v78, 0x60u);
        }
      }
    }

    v19 = *(v5 + 88);
    if (v19 && *(v19 + 4) >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *(*(v19 + 8) + 8 * v20);
        if (v21)
        {
          v22 = *(v21 + 72);
          if (v22 == 28)
          {
            if (a2)
            {
              v26 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(v21 + 64);
                v28 = *v27;
                v29 = "ULA: ";
                if ((v28 & 0xFE) != 0xFC)
                {
                  if (v28 != 254 || (v29 = "LUA: ", (v27[1] & 0xC0) != 0x80))
                  {
                    v29 = "";
                    if ((v28 & 0xE0) == 0x20)
                    {
                      v29 = "GUA: ";
                    }
                  }
                }

                v30 = "";
                if (*(v21 + 24) == *(v58 + 16))
                {
                  v30 = " live";
                }

                *v78 = 136448003;
                *&v78[4] = "srp_dump_server_stats";
                *&v78[12] = 2048;
                *&v78[14] = v21;
                *&v78[22] = 2082;
                *v79 = v29;
                *&v79[8] = 2160;
                *&v79[10] = 1752392040;
                *&v79[18] = 1041;
                *&v79[20] = 16;
                *v80 = 2097;
                *&v80[2] = v27;
                v81 = 2160;
                *v82 = 1752392040;
                *&v82[8] = 2081;
                v83 = v30;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: %p  IN AAAA %{public}s%{private, mask.hash, network:in6_addr}.16P%{private, mask.hash}s", v78, 0x4Eu);
              }
            }

            ++v6;
          }

          else if (v22 == 1)
          {
            if (a2)
            {
              v23 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(v21 + 64);
                v25 = "";
                if (*(v21 + 24) == *(v58 + 16))
                {
                  v25 = " live";
                }

                *v78 = 136447747;
                *&v78[4] = "srp_dump_server_stats";
                *&v78[12] = 2048;
                *&v78[14] = v21;
                *&v78[22] = 2160;
                *v79 = 1752392040;
                *&v79[8] = 1041;
                *&v79[10] = 4;
                *&v79[14] = 2097;
                *&v79[16] = v24;
                strcpy(v80, "p\bhash");
                v80[7] = 0;
                *&v80[8] = 0;
                v81 = 2081;
                *v82 = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: %p  IN    A %{private, mask.hash, network:in_addr}.4P%{private, mask.hash}s", v78, 0x44u);
              }
            }

            ++v59;
          }
        }

        ++v20;
        v19 = *(v5 + 88);
      }

      while (v20 < *(v19 + 4));
    }

    v31 = *(v5 + 96);
    if (v31)
    {
      v32 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v5 + 176);
        v34 = "";
        if (*(v31 + 24) == *(v58 + 16))
        {
          v34 = " live";
        }

        *v78 = 136446978;
        *&v78[4] = "srp_dump_server_stats";
        *&v78[12] = 2048;
        *&v78[14] = v31;
        *&v78[22] = 1024;
        *v79 = v33;
        *&v79[4] = 2082;
        *&v79[6] = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: %p  IN KEY %xu %{public}s", v78, 0x26u);
      }
    }

    ++v57;
    v35 = *(v5 + 104);
    if (!v35)
    {
      goto LABEL_69;
    }

    if (*(v35 + 4) < 1)
    {
      v46 = 0;
      goto LABEL_68;
    }

    v53 = v6;
    v36 = 0;
    v56 = 0;
    v37 = 0;
    do
    {
      while (1)
      {
        v38 = *(*(v35 + 8) + 8 * v36);
        if (!v38)
        {
          break;
        }

        if (a2)
        {
          v39 = *(v38 + 88);
          if (v39)
          {
            dns_txt_data_print(v78, *(v38 + 96), v39);
          }

          else
          {
            v78[0] = 0;
          }

          v40 = "removed";
          if ((*(v38 + 132) & 1) == 0)
          {
            if (*(v38 + 8))
            {
              if (*(v38 + 16) == *(v58 + 16))
              {
                v40 = "live";
              }

              else
              {
                v40 = "stale";
              }
            }

            else
            {
              v40 = "unregistered";
            }
          }

          v41 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(v38 + 64);
            v43 = *(v38 + 72);
            v44 = *(v38 + 80);
            *buf = 136448259;
            v61 = "srp_dump_server_stats";
            v62 = 2082;
            v63 = v40;
            v64 = 2160;
            v65 = 1752392040;
            v66 = 2081;
            v67 = v42;
            v68 = 2160;
            v69 = 1752392040;
            v70 = 2081;
            v71 = v43;
            v72 = 1024;
            v73 = v44;
            v74 = 2160;
            v75 = 1752392040;
            v76 = 2081;
            v77 = v78;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s:   %{public}s instance %{private, mask.hash}s %{private, mask.hash}s %d (%{private, mask.hash}s)", buf, 0x58u);
          }
        }

        if (*(v38 + 132))
        {
          break;
        }

        ++v7;
        v45 = *(v38 + 72);
        if (!v45)
        {
          break;
        }

        if (strncmp(*(v38 + 72), "_matter", 7uLL))
        {
          v56 |= strncmp(v45, "_hap._udp", 9uLL) == 0;
          break;
        }

        ++v36;
        v35 = *(v5 + 104);
        v37 = 1;
        if (v36 >= *(v35 + 4))
        {
          goto LABEL_66;
        }
      }

      ++v36;
      v35 = *(v5 + 104);
    }

    while (v36 < *(v35 + 4));
    if (v37)
    {
LABEL_66:
      v6 = v53;
      ++v54;
      goto LABEL_69;
    }

    v46 = v56 & 1;
    v6 = v53;
LABEL_68:
    v52 += v46;
LABEL_69:
    v5 = *(v5 + 32);
  }

  while (v5);
LABEL_73:
  v47 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v48 = "";
    }

    else
    {
      v48 = "after update, ";
    }

    *v78 = 0;
    *&v78[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, v78);
    v49 = *v78;
    v50 = *&v78[8];
    *v78 = 136448258;
    *&v78[4] = "srp_dump_server_stats";
    *&v78[12] = 2082;
    *&v78[14] = v48;
    *&v78[22] = 1024;
    *v79 = v57;
    *&v79[4] = 1024;
    *&v79[6] = v54;
    *&v79[10] = 1024;
    *&v79[12] = v52;
    *&v79[16] = 1024;
    *&v79[18] = v7;
    *&v79[22] = 1024;
    *v80 = v59;
    *&v80[4] = 1024;
    *&v80[6] = v6;
    v81 = 2048;
    *v82 = v50 / 1000000000.0 + v49;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s%d hosts (%d matter, %d hap), %d instances, %d a records, %d aaaa records at %.6lf", v78, 0x44u);
    v47 = global_os_log;
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *v78 = 136447234;
    *&v78[4] = "srp_dump_server_stats";
    *&v78[12] = 1024;
    *&v78[14] = num_push_sessions - srp_dump_server_stats_last_num_push_sessions;
    *&v78[18] = 1024;
    *&v78[20] = dp_num_outstanding_queries - srp_dump_server_stats_last_dp_num_outstanding_queries;
    *v79 = 1024;
    *&v79[2] = num_push_sessions_dropped_for_load - srp_dump_server_stats_last_num_push_sessions_dropped_for_load;
    *&v79[6] = 1024;
    *&v79[8] = num_queries_dropped_for_load - srp_dump_server_stats_last_num_queries_dropped_for_load;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: %d push sessions and %d queries added, %d push sessions and %d queries dropped for load", v78, 0x24u);
  }

  srp_dump_server_stats_last_num_push_sessions = num_push_sessions;
  srp_dump_server_stats_last_dp_num_outstanding_queries = dp_num_outstanding_queries;
  srp_dump_server_stats_last_num_push_sessions_dropped_for_load = num_push_sessions_dropped_for_load;
  srp_dump_server_stats_last_num_queries_dropped_for_load = num_queries_dropped_for_load;
}

BOOL ioloop_add_wake_event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (!a3)
  {
    v16 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v18 = 136446210;
    v19 = "ioloop_add_wake_event";
    v17 = "%{public}s: ioloop_add_wake_event called with null callback";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, &v18, 0xCu);
    return 0;
  }

  v5 = a5;
  if ((a5 & 0x80000000) != 0)
  {
    v16 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v18 = 136446210;
    v19 = "ioloop_add_wake_event";
    v17 = "%{public}s: ioloop_add_wake_event called with negative timeout";
    goto LABEL_17;
  }

  if (*(a1 + 40))
  {
    ioloop_cancel_wake_event(a1);
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, ioloop_main_queue);
  *(a1 + 40) = v10;
  if (!v10)
  {
    v16 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v18 = 136446210;
    v19 = "ioloop_add_wake_event";
    v17 = "%{public}s: dispatch_source_create failed in ioloop_add_wake_event().";
    goto LABEL_17;
  }

  dispatch_source_set_event_handler_f(v10, wakeup_event);
  dispatch_set_context(*(a1 + 40), a1);
  if (!v5)
  {
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446466;
      v19 = "ioloop_add_wake_event";
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: ioloop_add_wake_event: milliseconds = %d", &v18, 0x12u);
    }

    v5 = 10;
  }

  v12 = *(a1 + 40);
  v13 = 1000000 * v5;
  v14 = dispatch_time(0, v13);
  dispatch_source_set_timer(v12, v14, v13, 0x989680uLL);
  dispatch_resume(*(a1 + 40));
  return 1;
}

uint64_t ConnectToServer(uint64_t **a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v48 = 0;
  v49 = 0u;
  if (!a1)
  {
    v19 = 4294901756;
    syslog(4, "dnssd_clientstub DNSService operation with NULL DNSServiceRef");
    return v19;
  }

  if ((a2 & 0x4000) != 0)
  {
    v20 = *a1;
    if (!*a1)
    {
      v19 = 4294901756;
      syslog(4, "dnssd_clientstub kDNSServiceFlagsShareConnection used with NULL DNSServiceRef");
      return v19;
    }

    if ((v21 = *(v20 + 4), v22 = *(v20 + 8), v21 < 0) || (*(v20 + 5) ^ v21) != 0x12345678 || (v22 != 19 ? (v23 = v22 == 1) : (v23 = 1), !v23 || v20[1]))
    {
      syslog(4, "dnssd_clientstub kDNSServiceFlagsShareConnection used with invalid DNSServiceRef %p %08X %08X op %u", v20, v21, *(v20 + 5), v22);
      *a1 = 0;
      return 4294901755;
    }
  }

  result = malloc_type_malloc(0x90uLL, 0xA57F437uLL);
  if (result)
  {
    v13 = result;
    *result = 0;
    *(result + 8) = 0;
    *(result + 36) = 0;
    *(result + 40) = 0;
    *(result + 32) = a3;
    *(result + 16) = xmmword_100085EC0;
    *(result + 48) = 0;
    *(result + 56) = a4;
    *(result + 64) = a5;
    *(result + 72) = a6;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    ++sdref_created;
    if ((a2 & 0x4000) != 0)
    {
      v24 = *a1;
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
      *v25 = result;
      v26 = *(*a1 + 6);
      *(*a1 + 6) = v26 + 1;
      if (v26 == -1)
      {
        ++*(*a1 + 7);
      }

      v27 = *a1;
      *(result + 8) = *a1;
      *(result + 16) = v27[2];
      *(result + 24) = v27[3];
LABEL_30:
      v19 = 0;
      *a1 = v13;
      return v19;
    }

    v47 = 1;
    if (issetugid())
    {
      v14 = getenv("DNSSD_UDS_PATH");
      if (v14)
      {
        v15 = v14;
        if (strlen(v14) < 0x68)
        {
          goto LABEL_10;
        }

        syslog(4, "dnssd_clientstub ConnectToServer: using default path since env len is invalid");
      }
    }

    v15 = "/var/run/mDNSResponder";
LABEL_10:
    *a1 = 0;
    v16 = socket(1, 1, 0);
    *(v13 + 4) = v16;
    *(v13 + 5) = v16 ^ 0x12345678;
    if (v16 < 0)
    {
      v28 = *__error();
      v29 = __error();
      v30 = strerror(*v29);
      syslog(4, "dnssd_clientstub ConnectToServer: socket failed %d %s", v28, v30);
      FreeDNSServiceOp(v13);
      return 4294901757;
    }

    v17 = fcntl(v16, 1);
    if (v17 == -1)
    {
      v18 = "dnssd_clientstub ConnectToServer: Failed to get the file descriptor flags of socket %d %s";
    }

    else
    {
      if (fcntl(*(v13 + 4), 2, v17 | 1u) != -1)
      {
        goto LABEL_36;
      }

      v18 = "dnssd_clientstub ConnectToServer: Failed to set FD_CLOEXEC on socket %d %s";
    }

    v31 = *__error();
    v32 = __error();
    v33 = strerror(*v32);
    syslog(4, v18, v31, v33);
LABEL_36:
    if (setsockopt(*(v13 + 4), 0xFFFF, 4130, &v47, 8u) < 0)
    {
      v34 = *__error();
      v35 = __error();
      v36 = strerror(*v35);
      syslog(4, "dnssd_clientstub ConnectToServer: SO_NOSIGPIPE failed %d %s", v34, v36);
    }

    v48.sa_family = 1;
    if (strlen(v15) > 0x67)
    {
      v48.sa_data[0] = 0;
    }

    else
    {
      __memcpy_chk();
    }

    v46 = 1;
    if (setsockopt(*(v13 + 4), 0xFFFF, 4352, &v46, 4u) < 0)
    {
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      syslog(4, "dnssd_clientstub ConnectToServer: SO_DEFUNCTOK failed %d %s", v37, v39);
    }

    v40 = connect(*(v13 + 4), &v48, 0x6Au);
    if (v40)
    {
      v41 = v40;
      v42 = *(v13 + 4);
      v43 = *__error();
      v44 = __error();
      v45 = strerror(*v44);
      syslog(4, "dnssd_clientstub ConnectToServer: connect() failed path:%s Socket:%d Err:%d Errno:%d %s", v15, v42, v41, v43, v45);
      close(*(v13 + 4));
      FreeDNSServiceOp(v13);
      return 4294901733;
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t put_attribute_tlvs(uint64_t a1, uint64_t a2, _DWORD **a3, unint64_t a4)
{
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a4 - v4;
      if (a4 < v4 || v5 < 8)
      {
LABEL_10:
        if (v4 <= a4 && v5 >= 8)
        {
          v9 = *(a1 + 16);
          *v4 = 67109888;
          v4[1] = bswap32(v9);
          v4 += 2;
        }

        goto LABEL_16;
      }

      v7 = *a1;
      *v4 = 67109632;
      v4[1] = bswap32(v7);
      v4 += 2;
      if (v4)
      {
        v5 = a4 - v4;
        goto LABEL_10;
      }
    }

LABEL_16:
    *a3 = v4;
    v10 = *(a1 + 40);
    if (v10)
    {
      if (v4 && a4 >= v4 && a4 - v4 >= 0x14)
      {
        *v4 = 268438016;
        *(v4 + 1) = *v10;
        v4 += 5;
      }

      *a3 = v4;
      v11 = 36;
    }

    else
    {
      v11 = 16;
    }

    if ((*(a1 + 13) & 1) == 0)
    {
      goto LABEL_35;
    }

    v12 = *a3;
    if (*a3 && a4 >= v12 && a4 - v12 >= 8)
    {
      v13 = *(a1 + 8);
      *v12 = 67110144;
      v12[1] = bswap32(v13);
      v12 += 2;
    }

    *a3 = v12;
LABEL_34:
    v11 |= 8uLL;
LABEL_35:
    if ((*(a1 + 12) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (a3)
    {
      v14 = *a3;
      if (*a3 && a4 >= v14 && a4 - v14 >= 8)
      {
        v15 = *(a1 + 4);
        *v14 = 67111680;
        v14[1] = bswap32(v15);
        v14 += 2;
      }

      *a3 = v14;
    }

    goto LABEL_42;
  }

  v11 = 36;
  if (!*(a1 + 40))
  {
    v11 = 16;
  }

  if (*(a1 + 13))
  {
    goto LABEL_34;
  }

  if (*(a1 + 12))
  {
LABEL_42:
    v11 += 8;
  }

LABEL_43:
  if (a2)
  {
    *(a2 + 8) |= 2u;
  }

  return v11;
}

_DWORD *create_hdr(int a1, size_t *a2, void *a3, int a4, uint64_t a5)
{
  memset(v15, 0, sizeof(v15));
  if (a4)
  {
    v6 = *a2 + 1;
  }

  else
  {
    v6 = *a2;
  }

  *a2 = v6 + 28;
  if (v6 == -28 || (v11 = malloc_type_malloc(v6 + 28, 0x55F974DFuLL)) == 0)
  {
    __break(1u);
  }

  v12 = v11;
  bzero(v11, *a2);
  *v12 = 1;
  v12[1] = v6;
  v12[2] = 0;
  v12[3] = a1;
  *(v12 + 2) = *(a5 + 24);
  v12[6] = 0;
  *a3 = v12 + 7;
  if (a4)
  {
    v13 = strlen(v15) + 1;
    memcpy(v12 + 7, v15, v13);
    *a3 += v13;
  }

  return v12;
}

uint64_t deliver_request(int8x16_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = ((a1->i32[3] - 2) & 0xFFFFFFF6) == 0;
  }

  v5 = *(a2 + 16);
  if (v5 < 0 || (*(a2 + 20) ^ v5) != 0x12345678)
  {
    free(a1);
    syslog(4, "dnssd_clientstub deliver_request: invalid DNSServiceRef %p %08X %08X", a2, *(a2 + 16), *(a2 + 20));
    return 4294901755;
  }

  v6 = a1->i32[1];
  if (v4)
  {
    if (socketpair(1, 1, 0, v30.fds_bits) < 0)
    {
      v19 = *__error();
      if (-v19 > 0xFFFEFFFF)
      {
        v20 = -v19;
      }

      else
      {
        v20 = -65537;
      }

      v28 = v20;
      v21 = *__error();
      v22 = __error();
      v23 = strerror(*v22);
      syslog(3, "dnssd_clientstub deliver_request: %s failed %d (%s)", "socketpair", v21, v23);
      goto LABEL_37;
    }

    v7 = v30.fds_bits[0];
    v8 = v30.fds_bits[1];
    LODWORD(v29.tv_sec) = 1;
    if (setsockopt(v30.fds_bits[0], 0xFFFF, 4352, &v29, 4u) < 0)
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      syslog(4, "dnssd_clientstub deliver_request: SO_DEFUNCTOK failed %d %s", v9, v11);
    }
  }

  else
  {
    v8 = -1;
    v7 = -1;
  }

  v13 = (v6 - v4);
  *a1 = vrev32q_s8(*a1);
  a1[1].i32[2] = bswap32(a1[1].u32[2]);
  v14 = write_all(*(a2 + 16), a1->i8, v13 + 28);
  if (v14 < 0)
  {
    v15 = v14;
    syslog(6, "dnssd_clientstub deliver_request ERROR: write_all(%d, %lu bytes) failed", *(a2 + 16), v13 + 28);
    v16 = v15 == -2;
  }

  else
  {
    if (v4)
    {
      v27[0] = a1 + v13 + 28;
      v27[1] = 1;
      *v30.fds_bits = 0u;
      v30.fds_bits[7] = 0;
      v30.fds_bits[2] = 0;
      *&v30.fds_bits[4] = v27;
      v30.fds_bits[6] = 1;
      *&v30.fds_bits[8] = &v29;
      *&v30.fds_bits[10] = 16;
      v29.tv_sec = 0xFFFF00000010;
      v29.tv_usec = 1;
      *(&v29.tv_usec + 1) = v8;
      if (sendmsg(*(a2 + 16), &v30, 0) < 0)
      {
        v24 = *__error();
        v25 = __error();
        v26 = strerror(*v25);
        syslog(4, "dnssd_clientstub deliver_request ERROR: sendmsg failed read sd=%d write sd=%d errno %d (%s)", v7, v8, v24, v26);
        v28 = -65551;
        if (v8 < 0)
        {
LABEL_35:
          if ((v7 & 0x80000000) == 0)
          {
            close(v7);
          }

          goto LABEL_37;
        }

LABEL_34:
        close(v8);
        goto LABEL_35;
      }

      close(v8);
      v8 = -1;
    }

    else
    {
      v7 = *(a2 + 16);
    }

    if (v7 <= 1023)
    {
      *&v29.tv_usec = 0;
      memset(&v30, 0, sizeof(v30));
      if (__darwin_check_fd_set_overflow(v7, &v30, 0))
      {
        *(v30.fds_bits + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
      }

      v29.tv_sec = 60;
      if (!select(v7 + 1, &v30, 0, 0, &v29))
      {
        syslog(4, "dnssd_clientstub set_waitlimit:_daemon timed out (%d secs) without any response: Socket %d", 60, v7);
        v18 = -65568;
        goto LABEL_32;
      }
    }

    v28 = 0;
    all = read_all(v7, &v28, 4uLL);
    if ((all & 0x80000000) == 0)
    {
      v18 = bswap32(v28);
      goto LABEL_32;
    }

    v16 = all == -3;
  }

  if (v16)
  {
    v18 = -65569;
  }

  else
  {
    v18 = -65563;
  }

LABEL_32:
  v28 = v18;
  if (v4)
  {
    if (v8 < 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_37:
  free(a1);
  return v28;
}

void DNSServiceRefDeallocate(DNSServiceRef sdRef)
{
  if (sdRef)
  {
    v1 = sdRef;
    v2 = *(sdRef + 4);
    if (v2 < 0 || (*(sdRef + 5) ^ v2) != 0x12345678)
    {
      v11 = *(sdRef + 4);
      syslog(4, "dnssd_clientstub DNSServiceRefDeallocate called with invalid DNSServiceRef %p %08X %08X");
    }

    else
    {
      v3 = *(sdRef + 6);
      if (v3)
      {
        *v3 = 0;
      }

      v4 = *(sdRef + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
          if (v4)
          {
            v6 = v4 == sdRef;
          }

          else
          {
            v6 = 1;
          }
        }

        while (!v6);
        if (v4)
        {
          v12 = 0;
          v13 = 0;
          v7 = create_hdr(63, &v12, &v13, 0, sdRef);
          *v7 = vrev32q_s8(*v7);
          v7[1].i32[2] = bswap32(v7[1].u32[2]);
          write_all(*(v1 + 4), v7->i8, v12);
          free(v7);
          *v5 = *v1;
          FreeDNSServiceOp(v1);
        }
      }

      else
      {
        if (*(sdRef + 11))
        {
          *(sdRef + 7) = 0;
          shutdown(*(sdRef + 4), 1);
          dispatch_source_cancel(*(v1 + 11));
          v8 = *(v1 + 11);
          if (v8)
          {
            dispatch_release(v8);
            *(v1 + 11) = 0;
          }
        }

        else if (!*(sdRef + 12))
        {
          close(*(sdRef + 4));
        }

        do
        {
          v9 = *v1;
          v10 = *(v1 + 6);
          if (v10)
          {
            *v10 = 0;
          }

          FreeDNSServiceOp(v1);
          v1 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    syslog(4, "dnssd_clientstub DNSServiceRefDeallocate called with NULL DNSServiceRef");
  }
}

uint64_t write_all(int a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = send(a1, a2, v3, 0);
    v7 = v6;
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = v3 == v6;
    if (v3 < v6)
    {
      break;
    }

    a2 += v6;
    v3 -= v6;
    if (v8)
    {
      return 0;
    }
  }

  v16 = 0;
  v15 = 4;
  if (getsockopt(a1, 0xFFFF, 4353, &v16, &v15) < 0)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    syslog(4, "dnssd_clientstub write_all: SO_ISDEFUNCT failed %d %s", v10, v12);
  }

  if (v16)
  {
    syslog(6, "dnssd_clientstub write_all(%d) DEFUNCT");
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      v13 = *__error();
      v14 = __error();
      strerror(*v14);
    }

    syslog(4, "dnssd_clientstub write_all(%d) failed %ld/%ld %d %s");
  }

  if (v16)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void FreeDNSServiceOp(_DWORD *a1)
{
  if (dns_service_op_not_to_be_freed == a1)
  {
    syslog(3, "dnssd_clientstub attempt to dispose protected DNSServiceRef %p", a1);
    abort();
  }

  v2 = a1[5];
  if ((v2 ^ a1[4]) == 0x12345678)
  {
    *a1 = 0u;
    *(a1 + 2) = 0xDDDDDDDDFFFFFFFFLL;
    *(a1 + 4) = 0;
    a1[10] = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    v3 = *(a1 + 11);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 11) = 0;
    }

    *(a1 + 12) = 0;
    v4 = *(a1 + 15);
    if (v4)
    {
      free(v4);
      *(a1 + 15) = 0;
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 10);
    if (v5)
    {
      do
      {
        v6 = *v5;
        ++rref_finalized;
        v7 = v5[7];
        if (v7)
        {
          free(v7);
        }

        free(v5);
        v5 = v6;
      }

      while (v6);
    }

    v8 = *(a1 + 17);
    if (v8)
    {
      free(v8);
    }

    free(a1);
    ++sdref_finalized;
  }

  else
  {
    syslog(4, "dnssd_clientstub attempt to dispose invalid DNSServiceRef %p %08X %08X", a1, a1[4], v2);
    FreeDNSServiceOp_op_were_not_going_to_free_but_we_need_to_fool_the_analyzer = a1;
  }
}

uint64_t read_all(int a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    while (1)
    {
      v6 = recv(a1, a2, v3, 0);
      v7 = v6;
      if (v6 < 0)
      {
        break;
      }

      if (v6 - 1 >= v3)
      {
        goto LABEL_10;
      }

      a2 += v6;
      v3 -= v6;
      if (!v3)
      {
        return 0;
      }
    }

    if (*__error() != 4)
    {
      break;
    }

    syslog(6, "dnssd_clientstub read_all: EINTR continue");
  }

LABEL_10:
  v14 = 4;
  v15 = 0;
  if (getsockopt(a1, 0xFFFF, 4353, &v15, &v14) < 0)
  {
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    syslog(4, "dnssd_clientstub read_all: SO_ISDEFUNCT failed %d %s", v9, v11);
  }

  if (v15)
  {
    syslog(6, "dnssd_clientstub read_all(%d) DEFUNCT");
  }

  else
  {
    if (v7 < 0)
    {
      v12 = *__error();
      v13 = __error();
      strerror(*v13);
    }

    syslog(4, "dnssd_clientstub read_all(%d) failed %ld/%ld %d %s");
  }

  if (v7 < 0 && *__error() == 35)
  {
    return 4294967294;
  }

  if (v15)
  {
    return 4294967293;
  }

  return 0xFFFFFFFFLL;
}

void handle_query_response(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unint64_t a4)
{
  if (a2[9] != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (!a3)
    {
      v11 = 0;
      v12 = 0;
      v10 = 0;
      v13 = 0;
      v37[0] = 0;
      goto LABEL_21;
    }

    v8 = v37;
    do
    {
      if (a3 >= a4 || v8 >= v38)
      {
        v11 = 0;
        v12 = 0;
        v10 = 0;
        v13 = 0;
        v8[-(v8 == v38)] = 0;
        goto LABEL_21;
      }

      v9 = *a3;
      a3 = (a3 + 1);
      *v8++ = v9;
    }

    while (v9);
    v10 = 0;
    v11 = 0;
    if (a3)
    {
      v12 = 0;
      v13 = 0;
      if ((a3 + 1) > a4)
      {
        goto LABEL_21;
      }

      v10 = 0;
      v11 = 0;
      v12 = bswap32(*a3) >> 16;
      if (a3 != -2 && (a3 + 2) <= a4)
      {
        v13 = 0;
        v10 = 0;
        v11 = bswap32(a3[1]) >> 16;
        if (a3 != -4 && (a3 + 3) <= a4)
        {
          v13 = bswap32(a3[2]) >> 16;
          v10 = a3 + 3;
        }

LABEL_21:
        v14 = 0;
        v15 = 0;
        v16 = v10 + v13;
        if (v16 <= a4)
        {
          v17 = v10;
        }

        else
        {
          v17 = 0;
        }

        if (v16 > a4 || v10 == 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = (v10 + v13);
        }

        if (v19 && (v19 + 1) <= a4)
        {
          v14 = bswap32(*v19);
          v15 = v19 + 1;
        }

        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        v20 = a2[2];
        if ((v20 & 2) != 0)
        {
          v21 = v15;
          while (1)
          {
            if ((a4 - v21) < 4)
            {
              v22 = 0;
              v25 = 0;
              goto LABEL_42;
            }

            v22 = 0;
            v23 = v21 + 2;
            if (v21 == -4)
            {
              break;
            }

            v24 = __rev16(v21[1]);
            v25 = 0;
            if ((a4 - v23) < v24)
            {
              goto LABEL_42;
            }

            v26 = __rev16(*v21);
            v21 = (v23 + v24);
            if (v26 == 7)
            {
              v22 = v24;
              v25 = v23;
              goto LABEL_42;
            }
          }

          v25 = 0;
LABEL_42:
          *(a1 + 104) = v25;
          *(a1 + 112) = v22;
        }

        if (!&_ne_tracker_check_is_hostname_blocked)
        {
          goto LABEL_67;
        }

        if (v12 != 28 && v12 != 1)
        {
          goto LABEL_67;
        }

        if (v11 != 1)
        {
          goto LABEL_67;
        }

        v28 = *(a1 + 120);
        if (!v28)
        {
          goto LABEL_67;
        }

        if ((v20 & 2) != 0)
        {
          v30 = v15;
          while (1)
          {
            if ((a4 - v30) < 4)
            {
              v31 = 0;
              v34 = 0;
              goto LABEL_61;
            }

            v31 = 0;
            v32 = (v30 + 2);
            if (v30 == -4)
            {
              break;
            }

            v33 = __rev16(v30[1]);
            v34 = 0;
            if ((a4 - v32) < v33)
            {
              goto LABEL_61;
            }

            v35 = __rev16(*v30);
            v30 = &v32[v33];
            if (v35 == 9)
            {
              v31 = v33;
              v34 = v32;
              goto LABEL_61;
            }
          }

          v34 = 0;
LABEL_61:
          v29 = v17;
          if (strnlen(v34, v31) == v31 - 1)
          {
            v11 = 1;
            if (v34)
            {
              v36 = *(a1 + 128);
              ne_tracker_create_xcode_issue();
              v28 = *(a1 + 120);
            }

            if (!v28)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v11 = 1;
          }
        }

        else
        {
          v29 = v17;
        }

        free(v28);
        *(a1 + 120) = 0;
LABEL_66:
        *(a1 + 128) = 0;
        v17 = v29;
LABEL_67:
        if (v15)
        {
          (*(a1 + 64))(a1, a2[7], a2[8], a2[9], v37, v12, v11, v13, v17, v14, *(a1 + 72));
        }

        else
        {
          syslog(4, "dnssd_clientstub handle_query_response: error reading result from daemon");
        }

        return;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_21;
  }
}

void DNSServiceAttributeDeallocate(DNSServiceAttributeRef attr)
{
  ++saref_finalized;
  v2 = *(attr + 4);
  if (v2)
  {
    free(v2);
    *(attr + 4) = 0;
  }

  v3 = *(attr + 5);
  if (v3)
  {
    free(v3);
  }

  free(attr);
}

void CallbackWithError(uint64_t *a1, uint64_t a2)
{
  while (1)
  {
    v4 = *a1;
    v18 = 1;
    a1[6] = &v18;
    v5 = *(a1 + 8);
    if (v5 <= 6)
    {
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          v7 = a1[8];
          if (!v7)
          {
            goto LABEL_34;
          }

LABEL_14:
          v7(a1, 0, 0, a2, 0, 0, 0, a1[9]);
          goto LABEL_34;
        }

        v13 = a1[8];
        if (v13)
        {
          v13(a1, 0, a2, 0, 0, 0, a1[9]);
        }
      }

      else
      {
        if (v5 == 1)
        {
          goto LABEL_19;
        }

        if (v5 != 4)
        {
          goto LABEL_33;
        }

        v6 = a1[8];
        if (v6)
        {
          v6(a1, 0, 0, a2, 0, a1[9]);
        }
      }
    }

    else if (v5 <= 13)
    {
      if (v5 == 7)
      {
        v15 = a1[8];
        if (v15)
        {
          v15(a1, 0, 0, a2, 0, 0, 0, 0, 0, a1[9]);
        }
      }

      else
      {
        if (v5 != 8)
        {
LABEL_33:
          syslog(4, "dnssd_clientstub CallbackWithError called with bad op %u", *(a1 + 8));
          goto LABEL_34;
        }

        v8 = a1[8];
        if (v8)
        {
          LODWORD(v17) = 0;
          v8(a1, 0, 0, a2, 0, 0, 0, 0, 0, v17, a1[9]);
        }
      }
    }

    else
    {
      if (v5 == 14)
      {
        v14 = a1[8];
        if (v14)
        {
          LODWORD(v16) = 0;
          v14(a1, 0, 0, a2, 0, 0, 0, 0, v16, a1[9]);
        }

        goto LABEL_34;
      }

      if (v5 != 15)
      {
        if (v5 != 19)
        {
          goto LABEL_33;
        }

LABEL_19:
        v9 = a1[10];
        v10 = 1;
        while (v9)
        {
          v11 = *v9;
          v12 = v9[2];
          if (v12)
          {
            v12(a1, 0, 0, a2, v9[1]);
            v10 = v18;
          }

          v9 = v11;
          if (!v10)
          {
            syslog(4, "dnssd_clientstub:Record: CallbackwithError morebytes zero");
            return;
          }
        }

        goto LABEL_34;
      }

      v7 = a1[8];
      if (v7)
      {
        goto LABEL_14;
      }
    }

LABEL_34:
    if (!v18)
    {
      break;
    }

    a1[6] = 0;
    a1 = v4;
    if (!v4)
    {
      return;
    }
  }

  syslog(4, "dnssd_clientstub:sdRef: CallbackwithError morebytes zero sdr %p");
}

void handle_regservice_response(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (*(a2 + 36) != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (a3)
    {
      v8 = v18;
      do
      {
        if (a3 >= a4 || v8 >= &v19)
        {
          *(v8 - (v8 == &v19)) = 0;
          goto LABEL_24;
        }

        v9 = *a3++;
        *v8 = v9;
        v8 = (v8 + 1);
      }

      while (v9);
      if (!a3)
      {
        goto LABEL_24;
      }

      v10 = 0;
      do
      {
        v11 = &v17[v10];
        if (&a3[v10] >= a4 || v11 >= v18)
        {
          v11[-(v11 == v18)] = 0;
          goto LABEL_25;
        }

        v12 = a3[v10];
        v17[v10++] = v12;
      }

      while (v12);
      v13 = &a3[v10];
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v16;
      do
      {
        if (v13 >= a4 || v14 >= v17)
        {
          v14[-(v14 == v17)] = 0;
          goto LABEL_26;
        }

        v15 = *v13++;
        *v14++ = v15;
      }

      while (v15);
      if (!v13)
      {
        goto LABEL_26;
      }

      (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 36), v18, v17, v16, *(a1 + 72));
    }

    else
    {
      v18[0] = 0;
LABEL_24:
      v17[0] = 0;
LABEL_25:
      v16[0] = 0;
LABEL_26:
      syslog(4, "dnssd_clientstub handle_regservice_response: error reading result from daemon");
    }
  }
}

void ConnectionResponse(uint64_t **a1, _DWORD *a2)
{
  v4 = a2[3];
  if (v4 == 69 || v4 == 73)
  {
    if (a2[9] != -65570)
    {
      goto LABEL_7;
    }

    if (_should_return_noauth_error_s_once != -1)
    {
      dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
    }

    if (_should_return_noauth_error_s_should == 1)
    {
LABEL_7:
      v5 = a1[10];
      if (v5)
      {
        while (*(v5 + 9) != a2[4] || *(v5 + 10) != a2[5])
        {
          v5 = *v5;
          if (!v5)
          {
            goto LABEL_11;
          }
        }

        v7 = v5[6];
        if (v7 == a1)
        {
          v9 = *(a1 + 8);
          if (v9 == 19 || v9 == 1)
          {
            v14 = a2[7];
            v15 = a2[9];
            v11 = v5[1];
            v12 = v5[2];
            v13 = v5;
          }

          else
          {
            syslog(4, "dnssd_clientstub ConnectionResponse: sdr->op != connection_request");
            v7 = v5[6];
            v11 = v5[1];
            v12 = v5[2];
            v13 = v5;
            v14 = 0;
            v15 = 4294901759;
          }

          v12(v7, v13, v14, v15, v11);
        }

        else
        {
          v16 = v5[6];
          syslog(4, "dnssd_clientstub ConnectionResponse: Record sdr mismatch: rec %p sdr %p");
        }
      }

      else
      {
LABEL_11:
        syslog(6, "dnssd_clientstub ConnectionResponse: Record not found");
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      while (*(v6 + 6) != a2[4] || *(v6 + 7) != a2[5])
      {
        v6 = *v6;
        if (!v6)
        {
          return;
        }
      }

      v8 = v6[7];
      if (v8)
      {

        v8();
      }
    }
  }
}

void __DNSServiceSetDispatchQueue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v29 = 0;
  if (!v1)
  {
    syslog(4, "dnssd_clientstub DNSServiceProcessResult called with NULL DNSServiceRef");
    return;
  }

  v2 = *(v1 + 16);
  if (v2 < 0 || (*(v1 + 20) ^ v2) != 0x12345678)
  {
    v25 = *(v1 + 16);
    syslog(4, "dnssd_clientstub DNSServiceProcessResult called with invalid DNSServiceRef %p %08X %08X");
    return;
  }

  if (*(v1 + 8))
  {
    syslog(4, "dnssd_clientstub DNSServiceProcessResult undefined for kDNSServiceFlagsShareConnection subordinate DNSServiceRef %p");
    return;
  }

  if (*(v1 + 56))
  {
    while (1)
    {
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      all = read_all(*(v1 + 16), v26, 0x1CuLL);
      switch(all)
      {
        case -1:
LABEL_50:
          if (all == -3)
          {
            v18 = 4294901727;
          }

          else
          {
            v18 = 4294901733;
          }

          *(v1 + 56) = 0;
          v19 = *(v1 + 88);
          if (v19)
          {
            dispatch_source_cancel(v19);
            v20 = *(v1 + 88);
            if (v20)
            {
              dispatch_release(v20);
              *(v1 + 88) = 0;
            }

            CallbackWithError(v1, v18);
          }

          return;
        case -2:
          if (v29)
          {
            v21 = *(v1 + 40);
            if (v21 <= 0x63)
            {
              *(v1 + 40) = v21 + 1;
              syslog(4, "dnssd_clientstub DNSServiceProcessResult error: select indicated data was waiting but read_all returned EWOULDBLOCK");
            }
          }

          return;
        case -3:
          goto LABEL_50;
      }

      v4 = vrev32q_s8(*v26);
      *v26 = v4;
      DWORD2(v27) = bswap32(DWORD2(v27));
      if (v4.i32[0] != 1)
      {
        syslog(4, "dnssd_clientstub DNSServiceProcessResult daemon version %u does not match client version %d", v4.i32[0], 1);
        *(v1 + 56) = 0;
        return;
      }

      if (!v4.i32[1] || (v5 = malloc_type_malloc(v4.u32[1], 0x35E4DB18uLL)) == 0)
      {
LABEL_72:
        __break(1u);
        return;
      }

      v6 = v5;
      v7 = read_all(*(v1 + 16), v5, HIDWORD(v26[0]));
      if (v7 < 0)
      {
        if (v7 == -3)
        {
          v22 = 4294901727;
        }

        else
        {
          v22 = 4294901733;
        }

        *(v1 + 56) = 0;
        v23 = *(v1 + 88);
        if (v23)
        {
          dispatch_source_cancel(v23);
          v24 = *(v1 + 88);
          if (v24)
          {
            dispatch_release(v24);
            *(v1 + 88) = 0;
          }

          CallbackWithError(v1, v22);
        }

        free(v6);
        return;
      }

      v8 = v6 + HIDWORD(v26[0]);
      if ((v6 + 1) > v8)
      {
        break;
      }

      HIDWORD(v27) = bswap32(*v6);
      if (v6 == -4 || (v6 + 2) > v8)
      {
        goto LABEL_24;
      }

      LODWORD(v28) = bswap32(v6[1]);
      v10 = v6 + 3;
      if (v6 == -8 || v10 > v8)
      {
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v11 = bswap32(v6[2]);
      }

LABEL_25:
      HIDWORD(v28) = v11;
      v12 = *(v1 + 16);
      v31.tv_sec = 0;
      *&v31.tv_usec = 0;
      if (v12 >= 1024)
      {
        v13 = malloc_type_calloc((v12 >> 5) + 1, 4uLL, 0xA570E751uLL);
        if (!v13)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v13 = v30;
      }

      memset(v30, 0, sizeof(v30));
      if (__darwin_check_fd_set_overflow(v12, v13, 0))
      {
        *(v13->fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }

      v14 = select(v12 + 1, v13, 0, 0, &v31);
      if (v13 != v30)
      {
        free(v13);
      }

      v15 = v14 > 0;
      v29 = v15;
      if (v14 >= 1)
      {
        HIDWORD(v27) |= 1u;
        *(v1 + 48) = &v29;
      }

      if (v10)
      {
        (*(v1 + 56))(v1, v26, v10, v6 + HIDWORD(v26[0]));
        v15 = v29;
      }

      if (v15)
      {
        *(v1 + 48) = 0;
      }

      free(v6);
      if (!v29)
      {
        return;
      }
    }

    HIDWORD(v27) = 0;
LABEL_24:
    v10 = 0;
    v11 = 0;
    LODWORD(v28) = 0;
    goto LABEL_25;
  }

  v17 = DNSServiceProcessResult_num_logs;
  if (DNSServiceProcessResult_num_logs <= 9)
  {
    syslog(4, "dnssd_clientstub DNSServiceProcessResult called with DNSServiceRef with no ProcessReply function");
    v17 = DNSServiceProcessResult_num_logs;
  }

  if (v17 > 999)
  {

    sleep(1u);
  }

  else
  {
    DNSServiceProcessResult_num_logs = v17 + 1;
  }
}

uint64_t DNSServiceRecordValidate(_DWORD *a1, void *a2)
{
  if (a1)
  {
    if (a1[9])
    {
      v2 = a1[4];
      if (v2 < 0 || (a1[5] ^ v2) != 0x12345678)
      {
        v6 = a1[4];
        syslog(4, "dnssd_clientstub DNSServiceRecordValidate called with invalid DNSServiceRef %p %08X %08X");
      }

      else
      {
        v3 = a1 + 20;
        do
        {
          v3 = *v3;
          if (v3)
          {
            v4 = v3 == a2;
          }

          else
          {
            v4 = 1;
          }
        }

        while (!v4);
        if (v3)
        {
          return 1;
        }

        v7 = a1[4];
        syslog(4, "dnssd_clientstub DNSServiceRecordValidate called with invalid DNSRecordRef %p %08X %08X");
      }
    }

    else
    {
      syslog(4, "DNSServiceRecordValidate called with bad DNSServiceRef");
    }
  }

  else
  {
    syslog(4, "DNSServiceRecordValidate called with NULL DNSServiceRef");
  }

  return 0;
}

void node_type_tracker_callback(uint64_t a1, int a2, int a3)
{
  if (a3 == -65569)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if (a3 != -65563)
    {
      v13 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136446466;
        *&v18[4] = "node_type_tracker_callback";
        *&v18[12] = 1024;
        *&v18[14] = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: unexpected error %d", v18, 0x12u);
      }

LABEL_20:
      cti_events_discontinue(*(a1 + 40));
      *(a1 + 40) = 0;
      v14 = *a1;
      if (*a1)
      {
        v15 = global_os_log;
        if (v14 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 136447490;
            *&v18[4] = "node_type_tracker_callback";
            *&v18[12] = 1024;
            *&v18[14] = v14;
            *&v18[18] = 2048;
            *&v18[20] = a1;
            *&v18[28] = 2080;
            *&v18[30] = "tracker";
            *&v18[38] = 2080;
            *&v18[40] = "node-type-tracker.c";
            v19 = 1024;
            v20 = 117;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v18, 0x36u);
            v14 = *a1;
          }

          *a1 = v14 - 1;
          if (v14 == 1)
          {
            v16 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *v18 = 136447234;
              *&v18[4] = "node_type_tracker_callback";
              *&v18[12] = 2048;
              *&v18[14] = a1;
              *&v18[22] = 2080;
              *&v18[24] = "tracker";
              *&v18[32] = 2080;
              *&v18[34] = "node-type-tracker.c";
              *&v18[42] = 1024;
              *&v18[44] = 117;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v18, 0x30u);
            }

            ++node_type_tracker_finalized;
            free(a1);
          }

          return;
        }

        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
LABEL_34:
          abort();
        }

        *v18 = 136447490;
        *&v18[4] = "node_type_tracker_callback";
        *&v18[12] = 1024;
        *&v18[14] = v14;
        *&v18[18] = 2048;
        *&v18[20] = a1;
        *&v18[28] = 2080;
        *&v18[30] = "tracker";
        *&v18[38] = 2080;
        *&v18[40] = "node-type-tracker.c";
        v19 = 1024;
        v20 = 117;
        v17 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      }

      else
      {
        v15 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_34;
        }

        *v18 = 136447490;
        *&v18[4] = "node_type_tracker_callback";
        *&v18[12] = 1024;
        *&v18[14] = 0;
        *&v18[18] = 2048;
        *&v18[20] = a1;
        *&v18[28] = 2080;
        *&v18[30] = "tracker";
        *&v18[38] = 2080;
        *&v18[40] = "node-type-tracker.c";
        v19 = 1024;
        v20 = 117;
        v17 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      }

      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v17, v18, 0x36u);
      goto LABEL_34;
    }

LABEL_4:
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 136446210;
      *&v18[4] = "node_type_tracker_callback";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: disconnected", v18, 0xCu);
    }

    if (*(a1 + 24))
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v6();
      }
    }

    goto LABEL_20;
  }

  if ((a2 - 1) >= 8)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  *v18 = 0;
  *&v18[8] = 0;
  gettimeofday(v18, 0);
  *(a1 + 56) = 1000 * *v18 + *&v18[8] / 1000;
  v9 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = off_1000A4C48[v8];
    *v18 = 136446722;
    *&v18[4] = "node_type_tracker_callback";
    *&v18[12] = 2082;
    *&v18[14] = v10;
    *&v18[22] = 1024;
    *&v18[24] = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: node type is: %{public}s (%d)\n ", v18, 0x1Cu);
  }

  v11 = *(a1 + 64);
  if (v11 != v8)
  {
    *(a1 + 64) = v8;
    *(a1 + 68) = v11;
    for (i = *(a1 + 48); i; i = *i)
    {
      (i[2])(i[3]);
    }
  }
}

void node_type_tracker_callback_add(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 12;
  while (1)
  {
    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v8 = *v8;
    if (v9[3] == a4)
    {
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a1 + 1);
        v20 = 136446722;
        v21 = "node_type_tracker_callback_add";
        v22 = 2048;
        *v23 = v11;
        *&v23[8] = 2048;
        *&v23[10] = a4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: [TT%lld] duplicate context %p", &v20, 0x20u);
      }

      return;
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x29AB1A4BuLL);
  if (v12)
  {
    v13 = v12;
    v12[1] = a3;
    v12[2] = a2;
    v12[3] = a4;
    if (a1 && !*(a1 + 6))
    {
      v14 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a1;
        v20 = 136447490;
        v21 = "node_type_tracker_callback_add";
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 2048;
        *&v23[6] = a1;
        *&v23[14] = 2080;
        *&v23[16] = "tracker";
        v24 = 2080;
        v25 = "node-type-tracker.c";
        v26 = 1024;
        v27 = 226;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
      }

      v16 = *a1;
      if (*a1)
      {
        v17 = v16 + 1;
        *a1 = v16 + 1;
        if (v16 + 1 >= 10001)
        {
          v18 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            v20 = 136447490;
            v21 = "node_type_tracker_callback_add";
            v22 = 1024;
            *v23 = v17;
            *&v23[4] = 2048;
            *&v23[6] = a1;
            *&v23[14] = 2080;
            *&v23[16] = "tracker";
            v24 = 2080;
            v25 = "node-type-tracker.c";
            v26 = 1024;
            v27 = 226;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++node_type_tracker_created;
        *a1 = 1;
      }
    }

    *v8 = v13;
  }

  else
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "node_type_tracker_callback_add";
      v22 = 2048;
      *v23 = 1;
      *&v23[8] = 2048;
      *&v23[10] = 32;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", &v20, 0x20u);
    }

    __break(1u);
  }
}

void dnssd_client_release_(int *a1, char *a2, int a3)
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
    v12 = "dnssd_client_release_";
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
    v12 = "dnssd_client_release_";
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
    v12 = "dnssd_client_release_";
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
      v12 = "dnssd_client_release_";
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

    ++dnssd_client_finalized;
    dnssd_client_finalize(a1);
  }
}

void dnssd_client_finalize(uint64_t a1)
{
  thread_service_release_(*(a1 + 136), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 129);
  ioloop_wakeup_release_(*(a1 + 88), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 130);
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

void dnssd_client_cancel(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 48);
  if (v3)
  {
    service_tracker_cancel_probes(v3);
    service_tracker_callback_cancel(*(*(a1 + 80) + 48), a1);
    v2 = *(a1 + 80);
  }

  v4 = *(v2 + 80);
  if (v4)
  {
    thread_tracker_callback_cancel(v4, a1);
  }

  ioloop_cancel_wake_event(*(a1 + 88));
  v5 = *(a1 + 96);
  if (v5)
  {
    cti_events_discontinue(v5);
    v6 = *a1;
    if (*a1)
    {
      v7 = global_os_log;
      if (v6 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136447490;
          v11 = "dnssd_client_cancel";
          v12 = 1024;
          *v13 = v6;
          *&v13[4] = 2048;
          *&v13[6] = a1;
          *&v13[14] = 2080;
          *&v13[16] = "client";
          *&v13[24] = 2080;
          *&v13[26] = "dnssd-client.c";
          v14 = 1024;
          v15 = 619;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
          v6 = *a1;
        }

        *a1 = v6 - 1;
        if (v6 == 1)
        {
          v8 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136447234;
            v11 = "dnssd_client_cancel";
            v12 = 2048;
            *v13 = a1;
            *&v13[8] = 2080;
            *&v13[10] = "client";
            *&v13[18] = 2080;
            *&v13[20] = "dnssd-client.c";
            *&v13[28] = 1024;
            *&v13[30] = 619;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
          }

          ++dnssd_client_finalized;
          dnssd_client_finalize(a1);
        }

        *(a1 + 96) = 0;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_21:
        abort();
      }

      v10 = 136447490;
      v11 = "dnssd_client_cancel";
      v12 = 1024;
      *v13 = v6;
      *&v13[4] = 2048;
      *&v13[6] = a1;
      *&v13[14] = 2080;
      *&v13[16] = "client";
      *&v13[24] = 2080;
      *&v13[26] = "dnssd-client.c";
      v14 = 1024;
      v15 = 619;
      v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v7 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v10 = 136447490;
      v11 = "dnssd_client_cancel";
      v12 = 1024;
      *v13 = 0;
      *&v13[4] = 2048;
      *&v13[6] = a1;
      *&v13[14] = 2080;
      *&v13[16] = "client";
      *&v13[24] = 2080;
      *&v13[26] = "dnssd-client.c";
      v14 = 1024;
      v15 = 619;
      v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v9, &v10, 0x36u);
    goto LABEL_21;
  }

LABEL_15:
  dnssd_client_remove_published_service(a1);
  state_machine_cancel((a1 + 8));
}

uint64_t dnssd_client_remove_published_service(uint64_t a1)
{
  result = *(a1 + 152);
  if (result)
  {
    mrc_dns_service_registration_invalidate();
    v3 = *(a1 + 152);
    result = mrc_release();
    *(a1 + 152) = 0;
  }

  return result;
}

void dnssd_client_context_release(int *a1)
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
    v7 = "dnssd_client_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "client";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-client.c";
    v10 = 1024;
    v11 = 142;
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
    v7 = "dnssd_client_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "client";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-client.c";
    v10 = 1024;
    v11 = 142;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "dnssd_client_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "client";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-client.c";
    v10 = 1024;
    v11 = 142;
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
      v7 = "dnssd_client_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "client";
      *&v9[18] = 2080;
      *&v9[20] = "dnssd-client.c";
      *&v9[28] = 1024;
      *&v9[30] = 142;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++dnssd_client_finalized;
    dnssd_client_finalize(a1);
  }
}

void dnssd_client_service_tracker_callback(uint64_t a1)
{
  v2 = state_machine_event_create(4);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "dnssd_client_service_tracker_callback";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 169;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "dnssd_client_service_tracker_callback";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 169;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "dnssd_client_service_tracker_callback";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 169;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "dnssd_client_service_tracker_callback";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "dnssd-client.c";
      *&v11[28] = 1024;
      *&v11[30] = 169;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

uint64_t dnssd_client_action_client(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 3)
  {
    v13 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v68 = "dnssd_client_action_client";
    v69 = 1024;
    *v70 = v2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't omr_client: %d", buf, 0x12u);
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      v14 = *(v4 + 5);
      v15 = *(v4 + 1);
      v16 = *(v4 + 3);
      *buf = 136447235;
      v68 = "dnssd_client_action_client";
      v69 = 2082;
      *v70 = v14;
      *&v70[8] = 2160;
      *&v70[10] = 1752392040;
      *&v70[18] = 2081;
      *&v70[20] = v15;
      *&v70[28] = 2082;
      *&v70[30] = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", buf, 0x34u);
    }

    dnssd_client_service_unpublish(v4);
    v17 = mdns_domain_name_create();
    v18 = *(v4 + 17);
    if ((*(v18 + 20) & 0xFFFFFFFE) == 2)
    {
      v19 = (v18 + 64);
      v20 = *(v4 + 84);
      ipv6 = mdns_address_create_ipv6();
      if (ipv6)
      {
        v22 = ipv6;
        v23 = v4[40];
        if (v23 == 1)
        {
          v43 = mdns_dns_service_definition_create();
          if (v43)
          {
            v27 = v43;
            if (mdns_dns_service_definition_add_domain() || mdns_dns_service_definition_append_server_address())
            {
              v25 = 0;
LABEL_103:
              mdns_release();
LABEL_104:
              if (v25)
              {
                goto LABEL_105;
              }

LABEL_60:
              if (v17)
              {
                mdns_release();
              }

              if (v22)
              {
                mdns_release();
              }

              return 0;
            }

            v28 = mrc_dns_service_registration_create();
            v25 = 0;
            *(v4 + 19) = v28;
            goto LABEL_80;
          }

          v66 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          *buf = 136446210;
          v68 = "dnssd_client_service_publish";
          v45 = "%{public}s: unable to allocate mdns_dns_service_definition object";
        }

        else
        {
          if (v23 != 2)
          {
            v44 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            *buf = 136446466;
            v68 = "dnssd_client_service_publish";
            v69 = 1024;
            *v70 = v23;
            v45 = "%{public}s: Unknown DNS service registration type: %d";
            v46 = v44;
            v47 = 18;
LABEL_50:
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
            goto LABEL_60;
          }

          v24 = mdns_dns_push_service_definition_create();
          if (v24)
          {
            v25 = v24;
            if (mdns_dns_push_service_definition_add_domain())
            {
LABEL_105:
              mdns_release();
              goto LABEL_60;
            }

            mdns_dns_push_service_definition_append_server_address();
            push = mrc_dns_service_registration_create_push();
            *(v4 + 19) = push;
            if (!push)
            {
              v27 = 0;
              goto LABEL_77;
            }

            mrc_dns_service_registration_set_reports_connection_errors();
            v27 = 0;
            v28 = *(v4 + 19);
LABEL_80:
            if (v28)
            {
              mrc_dns_service_registration_set_queue();
              v55 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v56 = *v4;
                *buf = 136447490;
                v68 = "dnssd_client_service_publish";
                v69 = 1024;
                *v70 = v56;
                *&v70[4] = 2048;
                *&v70[6] = v4;
                *&v70[14] = 2080;
                *&v70[16] = "client";
                *&v70[24] = 2080;
                *&v70[26] = "dnssd-client.c";
                *&v70[34] = 1024;
                *&v70[36] = 364;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
              }

              v57 = *v4;
              if (*v4)
              {
                v58 = v57 + 1;
                *v4 = v57 + 1;
                if (v57 + 1 >= 10001)
                {
                  v59 = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136447490;
                    v68 = "dnssd_client_service_publish";
                    v69 = 1024;
                    *v70 = v58;
                    *&v70[4] = 2048;
                    *&v70[6] = v4;
                    *&v70[14] = 2080;
                    *&v70[16] = "client";
                    *&v70[24] = 2080;
                    *&v70[26] = "dnssd-client.c";
                    *&v70[34] = 1024;
                    *&v70[36] = 364;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
                  }

                  abort();
                }
              }

              else
              {
                ++dnssd_client_created;
                *v4 = 1;
              }

              v60 = *(v4 + 19);
              mrc_dns_service_registration_set_event_handler();
              v61 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                presentation = mdns_domain_name_get_presentation();
                v63 = *v19;
                if ((v63 & 0xFE) == 0xFC)
                {
                  v64 = "ULA: ";
                }

                else if (v63 == 254 && (*(v18 + 65) & 0xC0) == 0x80)
                {
                  v64 = "LUA: ";
                }

                else if ((v63 & 0xE0) == 0x20)
                {
                  v64 = "GUA: ";
                }

                else
                {
                  v64 = "";
                }

                *buf = 136449283;
                v68 = "dnssd_client_service_publish";
                v69 = 2160;
                *v70 = 1752392040;
                *&v70[8] = 2081;
                *&v70[10] = presentation;
                *&v70[18] = 2082;
                *&v70[20] = v64;
                *&v70[28] = 2160;
                *&v70[30] = 1752392040;
                *&v70[38] = 1041;
                *&v70[40] = 6;
                *&v70[44] = 2097;
                *&v70[46] = v18 + 64;
                *&v70[54] = 2160;
                *&v70[56] = 1752392040;
                *&v70[64] = 1042;
                *&v70[66] = 2;
                v71 = 2098;
                *v72 = v18 + 70;
                *&v72[8] = 2160;
                *&v72[10] = 1752392040;
                v73 = 1041;
                v74 = 8;
                v75 = 2097;
                v76 = v18 + 72;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: Publishing dnssd client service -- domain: %{private, mask.hash}s, address: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}", buf, 0x78u);
              }

              v65 = *(v4 + 19);
              mrc_dns_service_registration_activate();
              goto LABEL_102;
            }

LABEL_77:
            v54 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v68 = "dnssd_client_service_publish";
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s: failed to create DNS service registration", buf, 0xCu);
            }

LABEL_102:
            if (!v27)
            {
              goto LABEL_104;
            }

            goto LABEL_103;
          }

          v66 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          *buf = 136446210;
          v68 = "dnssd_client_service_publish";
          v45 = "%{public}s: unable to allocate mdns_dns_push_service_definition object";
        }

        v46 = v66;
        v47 = 12;
        goto LABEL_50;
      }

      v37 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v38 = *v19;
        if ((v38 & 0xFE) == 0xFC)
        {
          v39 = "ULA: ";
        }

        else if (v38 == 254 && (*(v18 + 65) & 0xC0) == 0x80)
        {
          v39 = "LUA: ";
        }

        else if ((v38 & 0xE0) == 0x20)
        {
          v39 = "GUA: ";
        }

        else
        {
          v39 = "";
        }

        *buf = 136448771;
        v68 = "dnssd_client_service_publish";
        v69 = 2082;
        *v70 = v39;
        *&v70[8] = 2160;
        *&v70[10] = 1752392040;
        *&v70[18] = 1041;
        *&v70[20] = 6;
        *&v70[24] = 2097;
        *&v70[26] = v18 + 64;
        *&v70[34] = 2160;
        *&v70[36] = 1752392040;
        *&v70[44] = 1042;
        *&v70[46] = 2;
        *&v70[50] = 2098;
        *&v70[52] = v18 + 70;
        *&v70[60] = 2160;
        *&v70[62] = 1752392040;
        v71 = 1041;
        *v72 = 8;
        *&v72[4] = 2097;
        *&v72[6] = v18 + 72;
        v30 = "%{public}s: failed to create address object -- address: {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P}";
        v31 = v37;
        v32 = 100;
        goto LABEL_58;
      }
    }

    else
    {
      v29 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v68 = "dnssd_client_service_publish";
        v30 = "%{public}s: failed to get service address";
        v31 = v29;
        v32 = 12;
LABEL_58:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
      }
    }

    v22 = 0;
    goto LABEL_60;
  }

  if (v6)
  {
    v7 = *(v4 + 5);
    v8 = *(v4 + 1);
    v9 = *(a2 + 8);
    v10 = *(v4 + 3);
    *buf = 136447491;
    v68 = "dnssd_client_action_client";
    v69 = 2082;
    *v70 = v7;
    *&v70[8] = 2160;
    *&v70[10] = 1752392040;
    *&v70[18] = 2081;
    *&v70[20] = v8;
    *&v70[28] = 2082;
    *&v70[30] = v9;
    *&v70[38] = 2082;
    *&v70[40] = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", buf, 0x3Eu);
  }

  if (*(a2 + 16) == 20)
  {
    v11 = *(v4 + 17);
    if (v11)
    {
      *(v11 + 27) = 1;
      *(v11 + 49) = 0;
      thread_service_release_(v11, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 581);
      *(v4 + 17) = 0;
      return 3;
    }

    v33 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v68 = "dnssd_client_action_client";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: bad service event received with no published service.", buf, 0xCu);
    }
  }

  if (!*(v4 + 17) || !dnssd_client_should_be_client(*(v4 + 10)))
  {
    return 2;
  }

  v34 = *(*(v4 + 10) + 48);
  v35 = *(v4 + 17);
  if (!v34 || v35 == 0)
  {
    return 2;
  }

  v40 = *(v34 + 48);
  if (v40)
  {
    while (1)
    {
      if ((*(v40 + 27) & 1) == 0 && *(v40 + 49) == 1)
      {
        v41 = *(v35 + 20);
        if (v41 == *(v40 + 20))
        {
          break;
        }
      }

      v40 = *(v40 + 8);
      if (!v40)
      {
        goto LABEL_40;
      }
    }

    if (v41 == 3)
    {
      if (*(v40 + 80) != *(v35 + 80))
      {
        goto LABEL_73;
      }
    }

    else if (v41 != 2 || v40 != v35 || ((v49 = *(v40 + 64), v48 = *(v40 + 72), v51 = *(v35 + 64), v50 = *(v35 + 72), v49 == v51) ? (v52 = v48 == v50) : (v52 = 0), !v52))
    {
LABEL_73:
      v53 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v68 = "service_tracker_verified_service_still_exists";
        v69 = 1024;
        *v70 = v41;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%{public}s: old_service type is bogus: %d", buf, 0x12u);
      }

      LODWORD(v40) = 0;
      v42 = 1;
      goto LABEL_41;
    }

    v42 = 1;
    LODWORD(v40) = 1;
  }

  else
  {
LABEL_40:
    v42 = 0;
  }

LABEL_41:
  if ((v42 & v40) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t dnssd_client_service_unpublish(uint64_t *a1)
{
  if (a1[19])
  {
    thread_service_note(a1[9], a1[17], "unpublishing service");
  }

  return dnssd_client_remove_published_service(a1);
}

void __dnssd_client_service_publish_block_invoke(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 32);
  if (a2 <= 1)
  {
    if (a2 != -1)
    {
      if (a2 == 1)
      {
        v5 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136446210;
          v28 = "dnssd_client_dns_service_event_handler";
          v6 = "%{public}s: DNS service registration started";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v27, 0xCu);
          return;
        }
      }

      return;
    }

    v10 = global_os_log;
    if (a3)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v27 = 136446466;
        v28 = "dnssd_client_dns_service_event_handler";
        v29 = 1024;
        *v30 = a3;
        v11 = "%{public}s: DNS service registration invalidated with error: %d";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 18;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, &v27, v14);
      }
    }

    else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446210;
      v28 = "dnssd_client_dns_service_event_handler";
      v11 = "%{public}s: DNS service registration gracefully invalidated";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
      goto LABEL_19;
    }

    v8 = 1;
    v9 = 15;
    goto LABEL_21;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return;
    }

    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446466;
      v28 = "dnssd_client_dns_service_event_handler";
      v29 = 1024;
      *v30 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: Registered DNS Push connection failed on server with error: %d", &v27, 0x12u);
    }

    v8 = 0;
    v9 = 20;
LABEL_21:
    v15 = state_machine_event_create(v9);
    state_machine_event_deliver((v4 + 2), v15);
    v16 = *v15;
    if (*v15)
    {
      v17 = global_os_log;
      if (v16 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_53;
        }

        v27 = 136447490;
        v28 = "dnssd_client_dns_service_event_handler";
        v29 = 1024;
        *v30 = v16;
        *&v30[4] = 2048;
        *&v30[6] = v15;
        *&v30[14] = 2080;
        *&v30[16] = "event";
        *&v30[24] = 2080;
        *&v30[26] = "dnssd-client.c";
        v31 = 1024;
        v32 = 289;
        v25 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v26 = v17;
      }

      else
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136447490;
          v28 = "dnssd_client_dns_service_event_handler";
          v29 = 1024;
          *v30 = v16;
          *&v30[4] = 2048;
          *&v30[6] = v15;
          *&v30[14] = 2080;
          *&v30[16] = "event";
          *&v30[24] = 2080;
          *&v30[26] = "dnssd-client.c";
          v31 = 1024;
          v32 = 289;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v27, 0x36u);
          v16 = *v15;
        }

        *v15 = v16 - 1;
        if (v16 == 1)
        {
          v18 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136447234;
            v28 = "dnssd_client_dns_service_event_handler";
            v29 = 2048;
            *v30 = v15;
            *&v30[8] = 2080;
            *&v30[10] = "event";
            *&v30[18] = 2080;
            *&v30[20] = "dnssd-client.c";
            *&v30[28] = 1024;
            *&v30[30] = 289;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v27, 0x30u);
          }

          ++state_machine_event_finalized;
          v19 = *(v15 + 4);
          if (v19)
          {
            v19(v15);
          }

          free(v15);
        }

        v20 = v8 ^ 1;
        if (!v4)
        {
          v20 = 1;
        }

        if (v20)
        {
          return;
        }

        v21 = *v4;
        if (*v4)
        {
          v22 = global_os_log;
          if (v21 < 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v27 = 136447490;
              v28 = "dnssd_client_dns_service_event_handler";
              v29 = 1024;
              *v30 = v21;
              *&v30[4] = 2048;
              *&v30[6] = v4;
              *&v30[14] = 2080;
              *&v30[16] = "client";
              *&v30[24] = 2080;
              *&v30[26] = "dnssd-client.c";
              v31 = 1024;
              v32 = 294;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v27, 0x36u);
              v21 = *v4;
            }

            *v4 = v21 - 1;
            if (v21 == 1)
            {
              v23 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v27 = 136447234;
                v28 = "dnssd_client_dns_service_event_handler";
                v29 = 2048;
                *v30 = v4;
                *&v30[8] = 2080;
                *&v30[10] = "client";
                *&v30[18] = 2080;
                *&v30[20] = "dnssd-client.c";
                *&v30[28] = 1024;
                *&v30[30] = 294;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v27, 0x30u);
              }

              ++dnssd_client_finalized;
              dnssd_client_finalize(v4);
            }

            return;
          }

          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
LABEL_53:
            abort();
          }

          v27 = 136447490;
          v28 = "dnssd_client_dns_service_event_handler";
          v29 = 1024;
          *v30 = v21;
          *&v30[4] = 2048;
          *&v30[6] = v4;
          *&v30[14] = 2080;
          *&v30[16] = "client";
          *&v30[24] = 2080;
          *&v30[26] = "dnssd-client.c";
          v31 = 1024;
          v32 = 294;
          v25 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        }

        else
        {
          v22 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_53;
          }

          v27 = 136447490;
          v28 = "dnssd_client_dns_service_event_handler";
          v29 = 1024;
          *v30 = 0;
          *&v30[4] = 2048;
          *&v30[6] = v4;
          *&v30[14] = 2080;
          *&v30[16] = "client";
          *&v30[24] = 2080;
          *&v30[26] = "dnssd-client.c";
          v31 = 1024;
          v32 = 294;
          v25 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        }

        v26 = v22;
      }
    }

    else
    {
      v24 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_53;
      }

      v27 = 136447490;
      v28 = "dnssd_client_dns_service_event_handler";
      v29 = 1024;
      *v30 = 0;
      *&v30[4] = 2048;
      *&v30[6] = v15;
      *&v30[14] = 2080;
      *&v30[16] = "event";
      *&v30[24] = 2080;
      *&v30[26] = "dnssd-client.c";
      v31 = 1024;
      v32 = 289;
      v25 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v26 = v24;
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, v25, &v27, 0x36u);
    goto LABEL_53;
  }

  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136446210;
    v28 = "dnssd_client_dns_service_event_handler";
    v6 = "%{public}s: DNS service registration interrupted";
    goto LABEL_16;
  }
}

uint64_t dnssd_client_should_be_client(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && ((v3 = *(v2 + 56), v3 > 5) || ((0x36u >> v3) & 1) == 0))
  {
    if (service_publisher_have_competing_unicast_service(*(a1 + 56)))
    {
      v4 = 1;
    }

    else
    {
      v4 = service_publisher_anycast_service_present(v2);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "can't be client";
    if ((v6 & v4) != 0)
    {
      v8 = "could be client";
    }

    v9 = " might publish";
    if (!v4)
    {
      v9 = " won't publish";
    }

    v12 = 136446978;
    v13 = "dnssd_client_should_be_client";
    v15 = v8;
    v14 = 2082;
    v16 = 2082;
    v17 = v9;
    if (v6)
    {
      v10 = "";
    }

    else
    {
      v10 = " not associated ";
    }

    v18 = 2082;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s%{public}s%{public}s", &v12, 0x2Au);
  }

  return v6 & v4;
}

uint64_t dnssd_client_action_probing(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 3)
  {
    v15 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    *&buf[4] = "dnssd_client_action_probing";
    *&buf[12] = 1024;
    *&buf[14] = v2;
    v17 = "%{public}s: state header type isn't omr_client: %d";
    v18 = v15;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 18;
    goto LABEL_51;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v7 = *(v4 + 40);
      v8 = *(v4 + 8);
      v9 = *(a2 + 8);
      v10 = *(v4 + 24);
      *buf = 136447491;
      *&buf[4] = "dnssd_client_action_probing";
      *&buf[12] = 2082;
      *&buf[14] = v7;
      *&buf[22] = 2160;
      *&buf[24] = 1752392040;
      *&buf[32] = 2081;
      *&buf[34] = v8;
      *&buf[42] = 2082;
      *&buf[44] = v9;
      *&buf[52] = 2082;
      *&buf[54] = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", buf, 0x3Eu);
    }

    v12 = v4 + 80;
    v11 = *(v4 + 80);
    if (*(a2 + 16) == 1)
    {
      v13 = *(v11 + 56);
      if (v13)
      {
        v14 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = "dnssd_client_action_probing";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: server probe startup timeout expired--publishing cached data.", buf, 0xCu);
          v13 = *(v11 + 56);
        }

        service_publisher_re_advertise_matching(v13);
      }

      return 0;
    }

    if ((dnssd_client_should_be_client(*(v4 + 80)) & 1) == 0)
    {
      ioloop_cancel_wake_event(*(v4 + 88));
      return 2;
    }
  }

  else
  {
    if (v6)
    {
      v21 = *(v4 + 40);
      v22 = *(v4 + 8);
      v23 = *(v4 + 24);
      *buf = 136447235;
      *&buf[4] = "dnssd_client_action_probing";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      *&buf[22] = 2160;
      *&buf[24] = 1752392040;
      *&buf[32] = 2081;
      *&buf[34] = v22;
      *&buf[42] = 2082;
      *&buf[44] = v23;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", buf, 0x34u);
    }

    v12 = v4 + 80;
    v11 = *(v4 + 80);
    ioloop_add_wake_event(*(v4 + 88), v4, dnssd_client_wait_expired, dnssd_client_context_release, 0x1388u);
    v24 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *v4;
      *buf = 136447490;
      *&buf[4] = "dnssd_client_action_probing";
      *&buf[12] = 1024;
      *&buf[14] = v25;
      *&buf[18] = 2048;
      *&buf[20] = v4;
      *&buf[28] = 2080;
      *&buf[30] = "client";
      *&buf[38] = 2080;
      *&buf[40] = "dnssd-client.c";
      *&buf[48] = 1024;
      *&buf[50] = 495;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v26 = *v4;
    if (*v4)
    {
      v27 = v26 + 1;
      *v4 = v26 + 1;
      if (v26 + 1 >= 10001)
      {
        v28 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_21;
        }

        *buf = 136447490;
        *&buf[4] = "dnssd_client_action_probing";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        *&buf[18] = 2048;
        *&buf[20] = v4;
        *&buf[28] = 2080;
        *&buf[30] = "client";
        *&buf[38] = 2080;
        *&buf[40] = "dnssd-client.c";
        *&buf[48] = 1024;
        *&buf[50] = 495;
        v29 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_20;
      }
    }

    else
    {
      ++dnssd_client_created;
      *v4 = 1;
    }
  }

  v30 = *(*v12 + 48);
  if (!v30)
  {
    goto LABEL_49;
  }

  v31 = *(v30 + 48);
  if (!v31)
  {
    goto LABEL_49;
  }

  do
  {
    if (*(v31 + 27) & 1) == 0 && *(v31 + 48) == 1 && (*(v31 + 49))
    {
      v35 = *(v4 + 136);
      if (v35)
      {
        thread_service_release_(v35, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 520);
      }

      *(v4 + 136) = v31;
      thread_service_retain_(v31, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 523);
      v36 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "dnssd_client_action_probing";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: server probe succeeded--unpublishing cached data.", buf, 0xCu);
      }

      service_publisher_unadvertise_all(*(v11 + 56));
      ioloop_cancel_wake_event(*(v4 + 88));
      return 4;
    }

    v31 = *(v31 + 8);
  }

  while (v31);
  v32 = *(v30 + 48);
  if (!v32)
  {
    goto LABEL_49;
  }

  v33 = 0;
  do
  {
    if (*(v32 + 20) == 2 && (*(v32 + 27) & 1) == 0)
    {
      if (*(v32 + 28))
      {
        goto LABEL_48;
      }

      if (!v33)
      {
        if ((*(v32 + 48) & 1) != 0 || *(v32 + 56))
        {
          v33 = 0;
        }

        else if (*(v32 + 24))
        {
          v33 = 0;
        }

        else
        {
          v33 = v32;
        }
      }
    }

    v32 = *(v32 + 8);
  }

  while (v32);
  if (!v33)
  {
LABEL_49:
    v34 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *&buf[4] = "dnssd_client_action_probing";
    v17 = "%{public}s: no service to publish";
    v18 = v34;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 12;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    return 0;
  }

  snprintf(buf, 0x80uLL, "service_tracker_unverified_service_get returning %p", v33);
  snprintf(__str, 0x14uLL, "[ST%lld]", *(v30 + 8));
  thread_service_note(__str, v33, buf);
  if ((*(v33 + 28) & 1) == 0)
  {
    if (*(v33 + 20) == 3)
    {
      *(v33 + 64) = *(v4 + 104);
      *(v33 + 72) = -16777216;
      *(v33 + 76) = 254;
      *(v33 + 78) = bswap32(*(v33 + 16)) >> 16;
    }

    v37 = global_os_log;
    v38 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    v39 = *v4;
    if (v38)
    {
      *buf = 136447490;
      *&buf[4] = "dnssd_client_action_probing";
      *&buf[12] = 1024;
      *&buf[14] = v39;
      *&buf[18] = 2048;
      *&buf[20] = v4;
      *&buf[28] = 2080;
      *&buf[30] = "client";
      *&buf[38] = 2080;
      *&buf[40] = "dnssd-client.c";
      *&buf[48] = 1024;
      *&buf[50] = 551;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v39 = *v4;
    }

    if (v39)
    {
      v40 = v39 + 1;
      *v4 = v39 + 1;
      if (v39 + 1 >= 10001)
      {
        v28 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          *&buf[4] = "dnssd_client_action_probing";
          *&buf[12] = 1024;
          *&buf[14] = v40;
          *&buf[18] = 2048;
          *&buf[20] = v4;
          *&buf[28] = 2080;
          *&buf[30] = "client";
          *&buf[38] = 2080;
          *&buf[40] = "dnssd-client.c";
          *&buf[48] = 1024;
          *&buf[50] = 551;
          v29 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, v29, buf, 0x36u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else
    {
      ++dnssd_client_created;
      *v4 = 1;
    }

    v41 = *(v33 + 20);
    if (v41 == 3)
    {
      memset(&buf[8], 0, 20);
      *buf = 0;
      *&buf[8] = *(v33 + 64);
      *&buf[2] = 13568;
      buf[1] = 30;
    }

    else
    {
      if (v41 != 2)
      {
        v46 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          *&buf[4] = "probe_srp_service";
          *&buf[12] = 1024;
          *&buf[14] = v41;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "%{public}s: bogus service type in probe_srp_service: %d", buf, 0x12u);
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = __probe_srp_service_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_165;
        *&buf[32] = dnssd_client_probe_callback;
        *&buf[40] = v33;
        *&buf[48] = v4;
        *&buf[56] = dnssd_client_context_release;
        dispatch_async(&_dispatch_main_q, buf);
        return 0;
      }

      if (*(v33 + 28) & 1) != 0 || (*(v33 + 24))
      {
        return 0;
      }

      memset(&buf[8], 0, 20);
      *buf = 7680;
      *&buf[8] = *(v33 + 64);
      *&buf[2] = *(v33 + 80);
    }

    v42 = probe_srp_create(buf, v33, v4);
    v43 = v42;
    if (!v42)
    {
      return 0;
    }

    v44 = *v42;
    if (*v42)
    {
      v28 = global_os_log;
      if (v44 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "probe_srp_service";
          *&buf[12] = 1024;
          *&buf[14] = v44;
          *&buf[18] = 2048;
          *&buf[20] = v43;
          *&buf[28] = 2080;
          *&buf[30] = "probe_state";
          *&buf[38] = 2080;
          *&buf[40] = "probe-srp.c";
          *&buf[48] = 1024;
          *&buf[50] = 450;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v44 = *v43;
        }

        *v43 = v44 - 1;
        if (v44 == 1)
        {
          v45 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            *&buf[4] = "probe_srp_service";
            *&buf[12] = 2048;
            *&buf[14] = v43;
            *&buf[22] = 2080;
            *&buf[24] = "probe_state";
            *&buf[32] = 2080;
            *&buf[34] = "probe-srp.c";
            *&buf[42] = 1024;
            *&buf[44] = 450;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++probe_state_finalized;
          probe_state_finalize(v43);
        }

        return 0;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "probe_srp_service";
        *&buf[12] = 1024;
        *&buf[14] = v44;
        *&buf[18] = 2048;
        *&buf[20] = v43;
        *&buf[28] = 2080;
        *&buf[30] = "probe_state";
        *&buf[38] = 2080;
        *&buf[40] = "probe-srp.c";
        *&buf[48] = 1024;
        *&buf[50] = 450;
        v29 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_20;
      }
    }

    else
    {
      v28 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        *&buf[4] = "probe_srp_service";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        *&buf[18] = 2048;
        *&buf[20] = v43;
        *&buf[28] = 2080;
        *&buf[30] = "probe_state";
        *&buf[38] = 2080;
        *&buf[40] = "probe-srp.c";
        *&buf[48] = 1024;
        *&buf[50] = 450;
        v29 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_20;
      }
    }

LABEL_21:
    abort();
  }

  v32 = v33;
LABEL_48:
  snprintf(buf, 0x14uLL, "[ST%lld]", *(*(*v12 + 48) + 8));
  thread_service_note(buf, v32, " is still being probed");
  return 0;
}

void dnssd_client_probe_callback(uint64_t a1, uint64_t a2)
{
  v3 = state_machine_event_create(11);
  state_machine_event_deliver(a2 + 8, v3);
  v4 = *v3;
  if (!*v3)
  {
    v5 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v9 = 136447490;
    v10 = "dnssd_client_probe_callback";
    v11 = 1024;
    *v12 = 0;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "dnssd-client.c";
    v13 = 1024;
    v14 = 182;
    v8 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v9 = 136447490;
    v10 = "dnssd_client_probe_callback";
    v11 = 1024;
    *v12 = v4;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "dnssd-client.c";
    v13 = 1024;
    v14 = 182;
    v8 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v8, &v9, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136447490;
    v10 = "dnssd_client_probe_callback";
    v11 = 1024;
    *v12 = v4;
    *&v12[4] = 2048;
    *&v12[6] = v3;
    *&v12[14] = 2080;
    *&v12[16] = "event";
    *&v12[24] = 2080;
    *&v12[26] = "dnssd-client.c";
    v13 = 1024;
    v14 = 182;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v9, 0x36u);
    v4 = *v3;
  }

  *v3 = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136447234;
      v10 = "dnssd_client_probe_callback";
      v11 = 2048;
      *v12 = v3;
      *&v12[8] = 2080;
      *&v12[10] = "event";
      *&v12[18] = 2080;
      *&v12[20] = "dnssd-client.c";
      *&v12[28] = 1024;
      *&v12[30] = 182;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v9, 0x30u);
    }

    ++state_machine_event_finalized;
    v7 = *(v3 + 4);
    if (v7)
    {
      v7(v3);
    }

    free(v3);
  }
}

void dnssd_client_wait_expired(uint64_t a1)
{
  v2 = state_machine_event_create(1);
  state_machine_event_deliver(a1 + 8, v2);
  v3 = *v2;
  if (!*v2)
  {
    v4 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "dnssd_client_wait_expired";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 155;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_16;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = 136447490;
    v9 = "dnssd_client_wait_expired";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 155;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_17:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "dnssd_client_wait_expired";
    v10 = 1024;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v2;
    *&v11[14] = 2080;
    *&v11[16] = "event";
    *&v11[24] = 2080;
    *&v11[26] = "dnssd-client.c";
    v12 = 1024;
    v13 = 155;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v3 = *v2;
  }

  *v2 = v3 - 1;
  if (v3 == 1)
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "dnssd_client_wait_expired";
      v10 = 2048;
      *v11 = v2;
      *&v11[8] = 2080;
      *&v11[10] = "event";
      *&v11[18] = 2080;
      *&v11[20] = "dnssd-client.c";
      *&v11[28] = 1024;
      *&v11[30] = 155;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++state_machine_event_finalized;
    v6 = *(v2 + 4);
    if (v6)
    {
      v6(v2);
    }

    free(v2);
  }
}

uint64_t dnssd_client_action_not_client(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 != 3)
  {
    v12 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 136446466;
    v17 = "dnssd_client_action_not_client";
    v18 = 1024;
    LODWORD(v19) = v2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't omr_client: %d", &v16, 0x12u);
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = global_os_log;
  v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      v13 = v4[5];
      v14 = v4[1];
      v15 = v4[3];
      v16 = 136447235;
      v17 = "dnssd_client_action_not_client";
      v18 = 2082;
      v19 = v13;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2081;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s", &v16, 0x34u);
    }

    if (v4[17])
    {
      dnssd_client_service_unpublish(v4);
    }

    return 0;
  }

  if (v6)
  {
    v7 = v4[5];
    v8 = v4[1];
    v9 = *(a2 + 8);
    v10 = v4[3];
    v16 = 136447491;
    v17 = "dnssd_client_action_not_client";
    v18 = 2082;
    v19 = v7;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2081;
    v23 = v8;
    v24 = 2082;
    v25 = v9;
    v26 = 2082;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s", &v16, 0x3Eu);
  }

  if (dnssd_client_should_be_client(v4[10]))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t dnssd_client_action_startup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 == 3)
  {
    v4 = *(a1 + 8);
    v5 = global_os_log;
    v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = *(v4 + 40);
      v8 = *(v4 + 8);
      v9 = *(a2 + 8);
      v10 = *(v4 + 24);
      v19 = 136447491;
      v20 = "dnssd_client_action_startup";
      v21 = 2082;
      v22 = v7;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2081;
      v26 = v8;
      v27 = 2082;
      v28 = v9;
      v29 = 2082;
      v30 = v10;
      v11 = "%{public}s: %{public}s/%{private, mask.hash}s: event %{public}s received in state %{public}s";
      v12 = v5;
      v13 = 62;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      v16 = *(v4 + 40);
      v17 = *(v4 + 8);
      v18 = *(v4 + 24);
      v19 = 136447235;
      v20 = "dnssd_client_action_startup";
      v21 = 2082;
      v22 = v16;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2081;
      v26 = v17;
      v27 = 2082;
      v28 = v18;
      v11 = "%{public}s: %{public}s/%{private, mask.hash}s: entering state %{public}s";
      v12 = v5;
      v13 = 52;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v19, v13);
LABEL_10:
    if (*(v4 + 120))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  v14 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v19 = 136446466;
    v20 = "dnssd_client_action_startup";
    v21 = 1024;
    LODWORD(v22) = v2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: state header type isn't omr_client: %d", &v19, 0x12u);
    return 0;
  }

  return result;
}

void dnssd_client_active_data_set_changed_callback(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: error %d", buf, 0x12u);
    }

    if (!a1)
    {
      goto LABEL_13;
    }

    v5 = *a1;
    if (*a1)
    {
      v6 = global_os_log;
      if (v5 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          v22 = "dnssd_client_active_data_set_changed_callback";
          v23 = 1024;
          *v24 = v5;
          *&v24[4] = 2048;
          *&v24[6] = a1;
          *&v24[14] = 2080;
          *&v24[16] = "client";
          *&v24[24] = 2080;
          *&v24[26] = "dnssd-client.c";
          v25 = 1024;
          v26 = 697;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          v5 = *a1;
        }

        *a1 = v5 - 1;
        if (v5 == 1)
        {
          v7 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v22 = "dnssd_client_active_data_set_changed_callback";
            v23 = 2048;
            *v24 = a1;
            *&v24[8] = 2080;
            *&v24[10] = "client";
            *&v24[18] = 2080;
            *&v24[20] = "dnssd-client.c";
            *&v24[28] = 1024;
            *&v24[30] = 697;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
          }

          ++dnssd_client_finalized;
          dnssd_client_finalize(a1);
        }

LABEL_13:
        cti_events_discontinue(*(a1 + 96));
        *(a1 + 96) = 0;
        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_42:
        abort();
      }

      *buf = 136447490;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v5;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "client";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-client.c";
      v25 = 1024;
      v26 = 697;
      v14 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v6 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_42;
      }

      *buf = 136447490;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = 0;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "client";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-client.c";
      v25 = 1024;
      v26 = 697;
      v14 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

LABEL_41:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v14, buf, 0x36u);
    goto LABEL_42;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "interface", "org.wpantund.v1");
  xpc_dictionary_set_string(v8, "path", "/org/wpantund/utun2");
  xpc_dictionary_set_string(v8, "method", "PropGet");
  xpc_dictionary_set_string(v8, "property_name", "IPv6:MeshLocalPrefix");
  v9 = setup_for_command(0, "get_mesh_local_prefix", 0, "IPv6:MeshLocalPrefix", v8, a1, dnssd_client_get_mesh_local_prefix_callback, cti_internal_string_property_reply, 0, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 703);
  if (v8)
  {
    xpc_release(v8);
  }

  v10 = global_os_log;
  if (v9)
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: cti_get_mesh_local_prefix failed with status %d", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a1;
      *buf = 136447490;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v11;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "client";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-client.c";
      v25 = 1024;
      v26 = 707;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v12 = *a1;
    if (*a1)
    {
      v13 = v12 + 1;
      *a1 = v12 + 1;
      if (v12 + 1 >= 10001)
      {
        v6 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_42;
        }

        *buf = 136447490;
        v22 = "dnssd_client_active_data_set_changed_callback";
        v23 = 1024;
        *v24 = v13;
        *&v24[4] = 2048;
        *&v24[6] = a1;
        *&v24[14] = 2080;
        *&v24[16] = "client";
        *&v24[24] = 2080;
        *&v24[26] = "dnssd-client.c";
        v25 = 1024;
        v26 = 707;
        v14 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_41;
      }
    }

    else
    {
      ++dnssd_client_created;
      *a1 = 1;
    }
  }

  tunnel_name = cti_get_tunnel_name_(a1, dnssd_client_get_tunnel_name_callback, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-client.c", 709);
  v16 = global_os_log;
  if (tunnel_name)
  {
    v17 = tunnel_name;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: cti_get_tunnel_name failed with status %d", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a1;
      *buf = 136447490;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v18;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "client";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-client.c";
      v25 = 1024;
      v26 = 713;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v19 = *a1;
    if (!*a1)
    {
      ++dnssd_client_created;
      *a1 = 1;
      return;
    }

    v20 = v19 + 1;
    *a1 = v19 + 1;
    if (v19 + 1 >= 10001)
    {
      v6 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_42;
      }

      *buf = 136447490;
      v22 = "dnssd_client_active_data_set_changed_callback";
      v23 = 1024;
      *v24 = v20;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "client";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-client.c";
      v25 = 1024;
      v26 = 713;
      v14 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_41;
    }
  }
}

void dnssd_client_get_tunnel_name_callback(int *a1, char *a2, int a3)
{
  if (!a3)
  {
    a1[41] = if_nametoindex(a2);
    goto LABEL_7;
  }

  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "dnssd_client_get_tunnel_name_callback";
    v12 = 1024;
    *v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: didn't get tunnel name, error code %d", &v10, 0x12u);
  }

  if (a1)
  {
LABEL_7:
    v6 = *a1;
    if (*a1)
    {
      v7 = global_os_log;
      if (v6 < 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136447490;
          v11 = "dnssd_client_get_tunnel_name_callback";
          v12 = 1024;
          *v13 = v6;
          *&v13[4] = 2048;
          *&v13[6] = a1;
          *&v13[14] = 2080;
          *&v13[16] = "client";
          *&v13[24] = 2080;
          *&v13[26] = "dnssd-client.c";
          v14 = 1024;
          v15 = 687;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v10, 0x36u);
          v6 = *a1;
        }

        *a1 = v6 - 1;
        if (v6 == 1)
        {
          v8 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136447234;
            v11 = "dnssd_client_get_tunnel_name_callback";
            v12 = 2048;
            *v13 = a1;
            *&v13[8] = 2080;
            *&v13[10] = "client";
            *&v13[18] = 2080;
            *&v13[20] = "dnssd-client.c";
            *&v13[28] = 1024;
            *&v13[30] = 687;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v10, 0x30u);
          }

          ++dnssd_client_finalized;
          dnssd_client_finalize(a1);
        }

        return;
      }

      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
LABEL_21:
        abort();
      }

      v10 = 136447490;
      v11 = "dnssd_client_get_tunnel_name_callback";
      v12 = 1024;
      *v13 = v6;
      *&v13[4] = 2048;
      *&v13[6] = a1;
      *&v13[14] = 2080;
      *&v13[16] = "client";
      *&v13[24] = 2080;
      *&v13[26] = "dnssd-client.c";
      v14 = 1024;
      v15 = 687;
      v9 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    }

    else
    {
      v7 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v10 = 136447490;
      v11 = "dnssd_client_get_tunnel_name_callback";
      v12 = 1024;
      *v13 = 0;
      *&v13[4] = 2048;
      *&v13[6] = a1;
      *&v13[14] = 2080;
      *&v13[16] = "client";
      *&v13[24] = 2080;
      *&v13[26] = "dnssd-client.c";
      v14 = 1024;
      v15 = 687;
      v9 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v9, &v10, 0x36u);
    goto LABEL_21;
  }
}

void dnssd_client_get_mesh_local_prefix_callback(uint64_t a1, char *a2, int a3)
{
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "<null>";
    v23 = 136446722;
    v24 = "dnssd_client_get_mesh_local_prefix_callback";
    if (a2)
    {
      v7 = a2;
    }

    v25 = 2082;
    *v26 = v7;
    *&v26[8] = 1024;
    *&v26[10] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s %d", &v23, 0x1Cu);
  }

  if (a2 && !a3)
  {
    v8 = strchr(a2, 47);
    if (v8)
    {
      v9 = v8 - a2;
      if (v8 == a2)
      {
        v10 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v23 = 136446723;
        v24 = "dnssd_client_get_mesh_local_prefix_callback";
        v25 = 2160;
        *v26 = 1752392040;
        *&v26[8] = 2081;
        *&v26[10] = a2;
        v11 = "%{public}s: bogus prefix: %{private, mask.hash}s";
        goto LABEL_28;
      }

      if ((v9 - 48) <= 0xFFFFFFFFFFFFFFD0)
      {
        v10 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v23 = 136446723;
        v24 = "dnssd_client_get_mesh_local_prefix_callback";
        v25 = 2160;
        *v26 = 1752392040;
        *&v26[8] = 2081;
        *&v26[10] = a2;
        v11 = "%{public}s: prefix too long: %{private, mask.hash}s";
        goto LABEL_28;
      }

      __memcpy_chk();
      v29[v9] = 0;
      a2 = v29;
    }

    if (inet_pton(30, a2, (a1 + 104)))
    {
      *(a1 + 120) = 1;
      v12 = state_machine_event_create(12);
      state_machine_event_deliver(a1 + 8, v12);
      v13 = *v12;
      if (*v12)
      {
        v14 = global_os_log;
        if (v13 < 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136447490;
            v24 = "dnssd_client_get_mesh_local_prefix_callback";
            v25 = 1024;
            *v26 = v13;
            *&v26[4] = 2048;
            *&v26[6] = v12;
            *&v26[14] = 2080;
            *&v26[16] = "event";
            *&v26[24] = 2080;
            *&v26[26] = "dnssd-client.c";
            v27 = 1024;
            v28 = 225;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v23, 0x36u);
            v13 = *v12;
          }

          *v12 = v13 - 1;
          if (v13 == 1)
          {
            v15 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 136447234;
              v24 = "dnssd_client_get_mesh_local_prefix_callback";
              v25 = 2048;
              *v26 = v12;
              *&v26[8] = 2080;
              *&v26[10] = "event";
              *&v26[18] = 2080;
              *&v26[20] = "dnssd-client.c";
              *&v26[28] = 1024;
              *&v26[30] = 225;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v23, 0x30u);
            }

            ++state_machine_event_finalized;
            v16 = *(v12 + 4);
            if (v16)
            {
              v16(v12);
            }

            free(v12);
          }

          goto LABEL_30;
        }

        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v23 = 136447490;
          v24 = "dnssd_client_get_mesh_local_prefix_callback";
          v25 = 1024;
          *v26 = v13;
          *&v26[4] = 2048;
          *&v26[6] = v12;
          *&v26[14] = 2080;
          *&v26[16] = "event";
          *&v26[24] = 2080;
          *&v26[26] = "dnssd-client.c";
          v27 = 1024;
          v28 = 225;
          v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v21 = v14;
          goto LABEL_44;
        }
      }

      else
      {
        v22 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          v23 = 136447490;
          v24 = "dnssd_client_get_mesh_local_prefix_callback";
          v25 = 1024;
          *v26 = 0;
          *&v26[4] = 2048;
          *&v26[6] = v12;
          *&v26[14] = 2080;
          *&v26[16] = "event";
          *&v26[24] = 2080;
          *&v26[26] = "dnssd-client.c";
          v27 = 1024;
          v28 = 225;
          v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
          v21 = v22;
          goto LABEL_44;
        }
      }

LABEL_45:
      abort();
    }

    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446723;
      v24 = "dnssd_client_get_mesh_local_prefix_callback";
      v25 = 2160;
      *v26 = 1752392040;
      *&v26[8] = 2081;
      *&v26[10] = a2;
      v11 = "%{public}s: prefix syntax incorrect: %{private, mask.hash}s";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v23, 0x20u);
    }
  }

LABEL_29:
  if (!a1)
  {
    return;
  }

LABEL_30:
  v17 = *a1;
  if (!*a1)
  {
    v18 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    v23 = 136447490;
    v24 = "dnssd_client_get_mesh_local_prefix_callback";
    v25 = 1024;
    *v26 = 0;
    *&v26[4] = 2048;
    *&v26[6] = a1;
    *&v26[14] = 2080;
    *&v26[16] = "client";
    *&v26[24] = 2080;
    *&v26[26] = "dnssd-client.c";
    v27 = 1024;
    v28 = 227;
    v20 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_43:
    v21 = v18;
LABEL_44:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v20, &v23, 0x36u);
    goto LABEL_45;
  }

  v18 = global_os_log;
  if (v17 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    v23 = 136447490;
    v24 = "dnssd_client_get_mesh_local_prefix_callback";
    v25 = 1024;
    *v26 = v17;
    *&v26[4] = 2048;
    *&v26[6] = a1;
    *&v26[14] = 2080;
    *&v26[16] = "client";
    *&v26[24] = 2080;
    *&v26[26] = "dnssd-client.c";
    v27 = 1024;
    v28 = 227;
    v20 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_43;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136447490;
    v24 = "dnssd_client_get_mesh_local_prefix_callback";
    v25 = 1024;
    *v26 = v17;
    *&v26[4] = 2048;
    *&v26[6] = a1;
    *&v26[14] = 2080;
    *&v26[16] = "client";
    *&v26[24] = 2080;
    *&v26[26] = "dnssd-client.c";
    v27 = 1024;
    v28 = 227;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v23, 0x36u);
    v17 = *a1;
  }

  *a1 = v17 - 1;
  if (v17 == 1)
  {
    v19 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136447234;
      v24 = "dnssd_client_get_mesh_local_prefix_callback";
      v25 = 2048;
      *v26 = a1;
      *&v26[8] = 2080;
      *&v26[10] = "client";
      *&v26[18] = 2080;
      *&v26[20] = "dnssd-client.c";
      *&v26[28] = 1024;
      *&v26[30] = 227;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v23, 0x30u);
    }

    ++dnssd_client_finalized;
    dnssd_client_finalize(a1);
  }
}

uint64_t dso_simple_response(uint64_t a1, uint64_t a2, _WORD *a3, int a4)
{
  memset(&v10[2], 0, 508);
  v6 = (a3[1] << 8) & 0x7800 | a4;
  v10[0] = *a3;
  v10[1] = bswap32(v6 | 0x8000) >> 16;
  if (a2)
  {
    v7 = *(a2 + 64) - 12;
  }

  if (a3[2] == 256)
  {
    dns_rr_parse_();
  }

  v9.iov_base = v10;
  v9.iov_len = 12;
  return ioloop_send_message(a1, a2, &v9);
}

uint64_t dso_retry_delay_response(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v39 = 0;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v7 = 0;
  v6[0] = a3;
  v6[1] = __rev16((((a4 >> 3) & 0xF) << 11) | 0x8002);
  v8 = 0xE093040004000200;
  v5.iov_base = v6;
  v5.iov_len = 20;
  return ioloop_send_message(a1, a2, &v5);
}

void probe_state_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    ioloop_wakeup_release_(v2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 80);
  }

  v3 = a1[3];
  if (v3)
  {
    thread_service_release_(v3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 83);
    a1[3] = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    ioloop_comm_release_(v4, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 87);
    a1[1] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    v5(a1[4]);
  }

  free(a1);
}

int *probe_srp_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x5D0uLL, 0xC54294F5uLL);
  v7 = global_os_log;
  if (!v6)
  {
    goto LABEL_103;
  }

  v8 = v6;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *v8;
    *buf = 136447490;
    *&buf[4] = "probe_srp_create";
    *&buf[12] = 1024;
    *&buf[14] = v9;
    *&buf[18] = 2048;
    *&buf[20] = v8;
    *&buf[28] = 2080;
    *&buf[30] = "probe_state";
    *&buf[38] = 2080;
    *&buf[40] = "probe-srp.c";
    v65 = 1024;
    LODWORD(v66) = 355;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*v8)
  {
    v7 = (*v8 + 1);
    *v8 = v7;
    if (v7 >= 10001)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 355;
      v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_114:
      v45 = v10;
LABEL_127:
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, v11, buf, 0x36u);
LABEL_128:
      abort();
    }
  }

  else
  {
    ++probe_state_created;
    *v8 = 1;
  }

  v12 = *(a1 + 1);
  v13 = 8;
  if (v12 == 2)
  {
    v13 = 4;
  }

  inet_ntop(v12, (a1 + v13), hostname, 0x2Eu);
  snprintf(__str, 0xAuLL, "%d", bswap32(*(a1 + 2)) >> 16);
  v14 = malloc_type_calloc(1uLL, 0x1B0uLL, 0xA04D1BF4uLL);
  if (!v14)
  {
    v62 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 136446722;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&buf[24] = 432;
    v59 = "%{public}s: strict_calloc(%zu, %zu) failed";
    v60 = v62;
    goto LABEL_107;
  }

  v7 = v14;
  v14[45] = ++cur_connection_serial;
  v15 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v7 + 32);
    *buf = 136447490;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 1024;
    *&buf[14] = v16;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    *&buf[40] = "macos-ioloop.c";
    v65 = 1024;
    LODWORD(v66) = 1799;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v17 = *(v7 + 32);
  if (v17)
  {
    v18 = v17 + 1;
    *(v7 + 32) = v17 + 1;
    if (v17 + 1 >= 10001)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v65 = 1024;
      LODWORD(v66) = 1799;
      v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_123:
      v45 = v19;
      goto LABEL_127;
    }
  }

  else
  {
    ++comm_created;
    *(v7 + 32) = 1;
  }

  host = nw_endpoint_create_host(hostname, __str);
  if (!host)
  {
    v30 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_connection_create";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: No memory for connection endpoint.", buf, 0xCu);
    }

    v31 = *(v7 + 32);
    if (!v31)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v65 = 1024;
      LODWORD(v66) = 1803;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_123;
    }

    v32 = global_os_log;
    if (v31 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "ioloop_connection_create";
        *&buf[12] = 1024;
        *&buf[14] = v31;
        *&buf[18] = 2048;
        *&buf[20] = v7;
        *&buf[28] = 2080;
        *&buf[30] = "connection";
        *&buf[38] = 2080;
        *&buf[40] = "macos-ioloop.c";
        v65 = 1024;
        LODWORD(v66) = 1803;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v31 = *(v7 + 32);
      }

      *(v7 + 32) = v31 - 1;
      if (v31 != 1)
      {
        goto LABEL_58;
      }

      v33 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      *buf = 136447234;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      *&buf[24] = "connection";
      *&buf[32] = 2080;
      *&buf[34] = "macos-ioloop.c";
      *&buf[42] = 1024;
      *&buf[44] = 1803;
      goto LABEL_56;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_128;
    }

    *buf = 136447490;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 1024;
    *&buf[14] = v31;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    *&buf[40] = "macos-ioloop.c";
    v65 = 1024;
    LODWORD(v66) = 1803;
    v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_126;
  }

  v21 = host;
  secure_udp = nw_parameters_create_secure_udp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  if (!secure_udp)
  {
    v34 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_connection_create";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s: No memory for connection parameters.", buf, 0xCu);
    }

    nw_release(v21);
    v35 = *(v7 + 32);
    if (!v35)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v65 = 1024;
      LODWORD(v66) = 1847;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_123;
    }

    v32 = global_os_log;
    if (v35 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "ioloop_connection_create";
        *&buf[12] = 1024;
        *&buf[14] = v35;
        *&buf[18] = 2048;
        *&buf[20] = v7;
        *&buf[28] = 2080;
        *&buf[30] = "connection";
        *&buf[38] = 2080;
        *&buf[40] = "macos-ioloop.c";
        v65 = 1024;
        LODWORD(v66) = 1847;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v35 = *(v7 + 32);
      }

      *(v7 + 32) = v35 - 1;
      if (v35 != 1)
      {
        goto LABEL_58;
      }

      v33 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      *buf = 136447234;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      *&buf[24] = "connection";
      *&buf[32] = 2080;
      *&buf[34] = "macos-ioloop.c";
      *&buf[42] = 1024;
      *&buf[44] = 1847;
      goto LABEL_56;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_128;
    }

    *buf = 136447490;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 1024;
    *&buf[14] = v35;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    *&buf[40] = "macos-ioloop.c";
    v65 = 1024;
    LODWORD(v66) = 1847;
    v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_126:
    v45 = v32;
    goto LABEL_127;
  }

  v23 = secure_udp;
  v24 = nw_parameters_copy_default_protocol_stack(secure_udp);
  nw_release(v24);
  v25 = strdup(hostname);
  if (!v25)
  {
    v58 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_102;
    }

    *buf = 136446210;
    *&buf[4] = "strict_strdup";
    v59 = "%{public}s: strdup() failed";
    v60 = v58;
    for (i = 12; ; i = 32)
    {
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v59, buf, i);
      do
      {
LABEL_102:
        __break(1u);
LABEL_103:
        ;
      }

      while (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR));
      *buf = 136446722;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 1488;
      v59 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v60 = v7;
LABEL_107:
      ;
    }
  }

  *(v7 + 192) = v25;
  *v7 = nw_connection_create(v21, v23);
  ++nw_connection_created;
  nw_release(v21);
  nw_release(v23);
  if (!*v7)
  {
    v36 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "ioloop_connection_create";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s: no memory for nw_connection object", buf, 0xCu);
    }

    v37 = *(v7 + 32);
    if (!v37)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v65 = 1024;
      LODWORD(v66) = 1885;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_123;
    }

    v32 = global_os_log;
    if (v37 < 10001)
    {
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        *&buf[4] = "ioloop_connection_create";
        *&buf[12] = 1024;
        *&buf[14] = v37;
        *&buf[18] = 2048;
        *&buf[20] = v7;
        *&buf[28] = 2080;
        *&buf[30] = "connection";
        *&buf[38] = 2080;
        *&buf[40] = "macos-ioloop.c";
        v65 = 1024;
        LODWORD(v66) = 1885;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v37 = *(v7 + 32);
      }

      *(v7 + 32) = v37 - 1;
      if (v37 != 1)
      {
        goto LABEL_58;
      }

      v33 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_57:
        ++comm_finalized;
        comm_finalize(v7);
LABEL_58:
        v7 = 0;
        goto LABEL_61;
      }

      *buf = 136447234;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      *&buf[24] = "connection";
      *&buf[32] = 2080;
      *&buf[34] = "macos-ioloop.c";
      *&buf[42] = 1024;
      *&buf[44] = 1885;
LABEL_56:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      goto LABEL_57;
    }

    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_128;
    }

    *buf = 136447490;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 1024;
    *&buf[14] = v37;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    *&buf[40] = "macos-ioloop.c";
    v65 = 1024;
    LODWORD(v66) = 1885;
    v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_126;
  }

  *(v7 + 200) = v8;
  *(v7 + 208) = probe_srp_datagram;
  *(v7 + 224) = probe_srp_connected;
  *(v7 + 232) = probe_srp_disconnected;
  *(v7 + 240) = probe_srp_probe_state_context_release;
  *(v7 + 424) &= 0xFBDFu;
  v26 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v7 + 32);
    *buf = 136447490;
    *&buf[4] = "ioloop_connection_create";
    *&buf[12] = 1024;
    *&buf[14] = v27;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2080;
    *&buf[30] = "connection";
    *&buf[38] = 2080;
    *&buf[40] = "macos-ioloop.c";
    v65 = 1024;
    LODWORD(v66) = 1896;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v28 = *(v7 + 32);
  if (v28)
  {
    v29 = v28 + 1;
    *(v7 + 32) = v28 + 1;
    if (v28 + 1 >= 10001)
    {
      v19 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "ioloop_connection_create";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = "connection";
      *&buf[38] = 2080;
      *&buf[40] = "macos-ioloop.c";
      v65 = 1024;
      LODWORD(v66) = 1896;
      v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_123;
    }
  }

  else
  {
    ++comm_created;
    *(v7 + 32) = 1;
  }

  v38 = *v7;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = __ioloop_connection_create_block_invoke_28;
  *&buf[24] = &__block_descriptor_tmp_29;
  *&buf[32] = v7;
  nw_connection_set_state_changed_handler(v38, buf);
  nw_connection_set_queue(*v7, ioloop_main_queue);
  nw_connection_start(*v7);
LABEL_61:
  *(v8 + 1) = v7;
  v39 = global_os_log;
  v40 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v40)
    {
      v41 = *v8;
      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = v41;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 364;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
    }

    v42 = *v8;
    if (*v8)
    {
      v43 = v42 + 1;
      *v8 = v42 + 1;
      v44 = global_os_log;
      if (v42 + 1 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_128;
        }

        *buf = 136447490;
        *&buf[4] = "probe_srp_create";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        *&buf[18] = 2048;
        *&buf[20] = v8;
        *&buf[28] = 2080;
        *&buf[30] = "probe_state";
        *&buf[38] = 2080;
        *&buf[40] = "probe-srp.c";
        v65 = 1024;
        LODWORD(v66) = 364;
        v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        v45 = v44;
        goto LABEL_127;
      }
    }

    else
    {
      ++probe_state_created;
      *v8 = 1;
      v44 = global_os_log;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 8);
      if ((v49 & 0xFE) == 0xFC)
      {
        v50 = "ULA: ";
      }

      else if (v49 == 254 && (*(a1 + 9) & 0xC0) == 0x80)
      {
        v50 = "LUA: ";
      }

      else if ((v49 & 0xE0) == 0x20)
      {
        v50 = "GUA: ";
      }

      else
      {
        v50 = "";
      }

      v51 = bswap32(*(a1 + 2));
      *buf = 136449027;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 2082;
      *&buf[14] = v50;
      *&buf[22] = 2160;
      *&buf[24] = 1752392040;
      *&buf[32] = 1041;
      *&buf[34] = 6;
      *&buf[38] = 2097;
      *&buf[40] = a1 + 8;
      v65 = 2160;
      v66 = 1752392040;
      v67 = 1042;
      v68 = 2;
      v69 = 2098;
      v70 = a1 + 14;
      v71 = 2160;
      v72 = 1752392040;
      v73 = 1041;
      v74 = 8;
      v75 = 2097;
      v76 = a1 + 16;
      v77 = 1024;
      v78 = HIWORD(v51);
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s: probing service {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} on port %d", buf, 0x6Au);
    }

    *(v8 + 4) = a3;
    *(v8 + 5) = dnssd_client_probe_callback;
    *(v8 + 6) = dnssd_client_context_release;
    *buf = 0;
    *&buf[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, buf);
    *(a2 + 40) = *buf;
    *(a2 + 56) = v8;
    v52 = global_os_log;
    v53 = v8;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *v8;
      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = v54;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "service->probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 374;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v53 = *(a2 + 56);
    }

    v55 = *v53;
    if (*v53)
    {
      v56 = v55 + 1;
      *v53 = v55 + 1;
      if (v55 + 1 >= 10001)
      {
        v19 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_128;
        }

        *buf = 136447490;
        *&buf[4] = "probe_srp_create";
        *&buf[12] = 1024;
        *&buf[14] = v56;
        *&buf[18] = 2048;
        *&buf[20] = v53;
        *&buf[28] = 2080;
        *&buf[30] = "service->probe_state";
        *&buf[38] = 2080;
        *&buf[40] = "probe-srp.c";
        v65 = 1024;
        LODWORD(v66) = 374;
        v11 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_123;
      }
    }

    else
    {
      ++probe_state_created;
      *v53 = 1;
    }

    *(v8 + 3) = a2;
    thread_service_retain_(a2, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 377);
  }

  else
  {
    if (v40)
    {
      *buf = 136446210;
      *&buf[4] = "probe_srp_create";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: failed to create connection", buf, 0xCu);
    }

    v46 = *v8;
    if (!*v8)
    {
      v10 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 384;
      v11 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_114;
    }

    v47 = global_os_log;
    if (v46 >= 10001)
    {
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_128;
      }

      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = v46;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 384;
      v11 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
      v45 = v47;
      goto LABEL_127;
    }

    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      *&buf[4] = "probe_srp_create";
      *&buf[12] = 1024;
      *&buf[14] = v46;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = "probe_state";
      *&buf[38] = 2080;
      *&buf[40] = "probe-srp.c";
      v65 = 1024;
      LODWORD(v66) = 384;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      v46 = *v8;
    }

    *v8 = v46 - 1;
    if (v46 == 1)
    {
      v48 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        *&buf[4] = "probe_srp_create";
        *&buf[12] = 2048;
        *&buf[14] = v8;
        *&buf[22] = 2080;
        *&buf[24] = "probe_state";
        *&buf[32] = 2080;
        *&buf[34] = "probe-srp.c";
        *&buf[42] = 1024;
        *&buf[44] = 384;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
      }

      ++probe_state_finalized;
      probe_state_finalize(v8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __probe_srp_create_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = dnssd_client_probe_callback;
    block[5] = a2;
    block[6] = a3;
    block[7] = dnssd_client_context_release;
    dispatch_async(&_dispatch_main_q, block);
    return 0;
  }

  return v8;
}

uint64_t __probe_srp_service_block_invoke(uint64_t a1)
{
  result = (*(a1 + 32))(*(a1 + 40), *(a1 + 48), 0);
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 48);

    return v3(v4);
  }

  return result;
}

uint64_t __probe_srp_create_block_invoke(uint64_t a1)
{
  result = (*(a1 + 32))(*(a1 + 40), *(a1 + 48), 1);
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 48);

    return v3(v4);
  }

  return result;
}

void probe_srp_probe_state_context_release(void *a1)
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
    v7 = "probe_srp_probe_state_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 225;
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
    v7 = "probe_srp_probe_state_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 225;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "probe_srp_probe_state_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 225;
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
      v7 = "probe_srp_probe_state_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "probe_state";
      *&v9[18] = 2080;
      *&v9[20] = "probe-srp.c";
      *&v9[28] = 1024;
      *&v9[30] = 225;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++probe_state_finalized;
    probe_state_finalize(a1);
  }
}

void probe_srp_disconnected(uint64_t a1, void *a2)
{
  if (a2[3])
  {
    probe_srp_done(a2, 0);
  }

  v3 = a2[2];
  if (v3)
  {
    ioloop_cancel_wake_event(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    ioloop_comm_release_(v4, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 246);
    a2[1] = 0;
  }
}

void probe_srp_done(void *a1, uint64_t a2)
{
  v4 = a1[3];
  a1[3] = 0;
  *(v4 + 56) = 0;
  if (*(v4 + 20) == 3 || (*(v4 + 82) & 1) != 0)
  {
    v5 = 53;
  }

  else
  {
    v5 = __rev16(*(v4 + 80));
  }

  v6 = (v4 + 64);
  v7 = global_os_log;
  v8 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *v6;
      if ((v9 & 0xFE) == 0xFC)
      {
        v10 = "ULA: ";
      }

      else if (v9 == 254 && (*(v4 + 65) & 0xC0) == 0x80)
      {
        v10 = "LUA: ";
      }

      else if ((v9 & 0xE0) == 0x20)
      {
        v10 = "GUA: ";
      }

      else
      {
        v10 = "";
      }

      v20 = 136449027;
      v21 = "probe_srp_done";
      v22 = 2082;
      *v23 = v10;
      *&v23[8] = 2160;
      *&v23[10] = 1752392040;
      *&v23[18] = 1041;
      *&v23[20] = 6;
      *&v23[24] = 2097;
      *&v23[26] = v4 + 64;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 1042;
      v27 = 2;
      v28 = 2098;
      v29 = v4 + 70;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 1041;
      v33 = 8;
      v34 = 2097;
      v35 = v4 + 72;
      v36 = 1024;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: service {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} responded on port %d", &v20, 0x6Au);
    }

    *(v4 + 27) = 0;
    *(v4 + 48) = 1;
  }

  else
  {
    if (v8)
    {
      v11 = *v6;
      if ((v11 & 0xFE) == 0xFC)
      {
        v12 = "ULA: ";
      }

      else if (v11 == 254 && (*(v4 + 65) & 0xC0) == 0x80)
      {
        v12 = "LUA: ";
      }

      else if ((v11 & 0xE0) == 0x20)
      {
        v12 = "GUA: ";
      }

      else
      {
        v12 = "";
      }

      v20 = 136449027;
      v21 = "probe_srp_done";
      v22 = 2082;
      *v23 = v12;
      *&v23[8] = 2160;
      *&v23[10] = 1752392040;
      *&v23[18] = 1041;
      *&v23[20] = 6;
      *&v23[24] = 2097;
      *&v23[26] = v4 + 64;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 1042;
      v27 = 2;
      v28 = 2098;
      v29 = v4 + 70;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 1041;
      v33 = 8;
      v34 = 2097;
      v35 = v4 + 72;
      v36 = 1024;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: service {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} not responding on port %d", &v20, 0x6Au);
    }

    *(v4 + 27) = 1;
  }

  *(v4 + 49) = 1;
  v13 = a1[5];
  if (v13)
  {
    v13(a1[3], a1[4], a2);
    a1[5] = 0;
  }

  v14 = a1[6];
  if (v14)
  {
    v14(a1[4]);
  }

  a1[4] = 0;
  thread_service_release_(v4, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 169);
  v15 = a1[2];
  if (v15)
  {
    ioloop_cancel_wake_event(v15);
  }

  v16 = *a1;
  if (!*a1)
  {
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    v20 = 136447490;
    v21 = "probe_srp_done";
    v22 = 1024;
    *v23 = 0;
    *&v23[4] = 2048;
    *&v23[6] = a1;
    *&v23[14] = 2080;
    *&v23[16] = "probe_state";
    *&v23[24] = 2080;
    *&v23[26] = "probe-srp.c";
    v24 = 1024;
    LODWORD(v25) = 173;
    v19 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_47;
  }

  v17 = global_os_log;
  if (v16 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    v20 = 136447490;
    v21 = "probe_srp_done";
    v22 = 1024;
    *v23 = v16;
    *&v23[4] = 2048;
    *&v23[6] = a1;
    *&v23[14] = 2080;
    *&v23[16] = "probe_state";
    *&v23[24] = 2080;
    *&v23[26] = "probe-srp.c";
    v24 = 1024;
    LODWORD(v25) = 173;
    v19 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_47:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v19, &v20, 0x36u);
LABEL_48:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136447490;
    v21 = "probe_srp_done";
    v22 = 1024;
    *v23 = v16;
    *&v23[4] = 2048;
    *&v23[6] = a1;
    *&v23[14] = 2080;
    *&v23[16] = "probe_state";
    *&v23[24] = 2080;
    *&v23[26] = "probe-srp.c";
    v24 = 1024;
    LODWORD(v25) = 173;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v20, 0x36u);
    v16 = *a1;
  }

  *a1 = v16 - 1;
  if (v16 == 1)
  {
    v18 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136447234;
      v21 = "probe_srp_done";
      v22 = 2048;
      *v23 = a1;
      *&v23[8] = 2080;
      *&v23[10] = "probe_state";
      *&v23[18] = 2080;
      *&v23[20] = "probe-srp.c";
      *&v23[28] = 1024;
      *&v23[30] = 173;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v20, 0x30u);
    }

    ++probe_state_finalized;
    probe_state_finalize(a1);
  }
}

void probe_srp_connected(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1486) == 1)
  {
    v2 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v7) = 136446210;
      *(&v7 + 4) = "probe_srp_connected";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: canceled before connection was ready", &v7, 0xCu);
    }
  }

  else
  {
    *(a2 + 64) = 0;
    v4 = a2 + 64;
    *(a2 + 72) = 0;
    v11 = 0;
    v10 = 0u;
    v9 = 0u;
    *(&v7 + 1) = a2 + 76;
    v8 = a2 + 1474;
    *&v7 = a2 + 64;
    *(a2 + 64) = arc4random_uniform(0x10000u);
    *(v4 + 2) = 0x1000000;
    dns_full_name_to_wire_(0, &v7, "default.service.arpa", 331);
    v5 = WORD4(v7);
    if (v11 <= 1)
    {
      v6 = (*(&v7 + 1) + 2);
      if (*(&v7 + 1) + 2 < v8)
      {
        **(&v7 + 1) = 1536;
        v5 += 4;
        if ((v6 + 1) >= v8)
        {
          v5 = v6;
        }

        else
        {
          *v6 = 256;
        }
      }
    }

    *(a2 + 1484) = v5 - v4;
    *(a2 + 1476) = 0x3E800000000;
    probe_srp_schedule_retransmission(a2);
  }
}

void probe_srp_schedule_retransmission(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    *(a1 + 16) = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/probe-srp.c", 288);
  }

  v2 = *(a1 + 1480);
  v3 = arc4random_uniform(0x10000u);
  v4 = *(a1 + 1480);
  *(a1 + 1480) = 2 * v4;
  ioloop_add_wake_event(*(a1 + 16), a1, probe_srp_retransmit, probe_srp_context_release, v3 % v4 + v2);
  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a1;
    *buf = 136447490;
    v11 = "probe_srp_schedule_retransmission";
    v12 = 1024;
    v13 = v6;
    v14 = 2048;
    v15 = a1;
    v16 = 2080;
    v17 = "probe_state";
    v18 = 2080;
    v19 = "probe-srp.c";
    v20 = 1024;
    v21 = 299;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  if (*a1)
  {
    v7 = *a1 + 1;
    *a1 = v7;
    if (v7 >= 10001)
    {
      v9 = v7;
      v8 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136447490;
        v11 = "probe_srp_schedule_retransmission";
        v12 = 1024;
        v13 = v9;
        v14 = 2048;
        v15 = a1;
        v16 = 2080;
        v17 = "probe_state";
        v18 = 2080;
        v19 = "probe-srp.c";
        v20 = 1024;
        v21 = 299;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      abort();
    }
  }

  else
  {
    ++probe_state_created;
    *a1 = 1;
  }
}

void probe_srp_context_release(void *a1)
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
    v7 = "probe_srp_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 281;
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
    v7 = "probe_srp_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 281;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "probe_srp_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "probe_state";
    *&v9[24] = 2080;
    *&v9[26] = "probe-srp.c";
    v10 = 1024;
    v11 = 281;
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
      v7 = "probe_srp_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "probe_state";
      *&v9[18] = 2080;
      *&v9[20] = "probe-srp.c";
      *&v9[28] = 1024;
      *&v9[30] = 281;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++probe_state_finalized;
    probe_state_finalize(a1);
  }
}

void probe_srp_retransmit(uint64_t a1)
{
  v2 = *(a1 + 1476) + 1;
  *(a1 + 1476) = v2;
  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1480);
    *v6 = 136446722;
    *&v6[4] = "probe_srp_retransmit";
    *&v6[12] = 1024;
    *&v6[14] = v2;
    v7 = 2048;
    v8 = v4 / 1000.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: num_retransmissions = %d, time = %lg", v6, 0x1Cu);
    v2 = *(a1 + 1476);
  }

  if (v2 < 4)
  {
    probe_srp_schedule_retransmission(a1);
    v5 = *(a1 + 1484);
    *v6 = a1 + 64;
    *&v6[8] = v5;
    ioloop_send_message(*(a1 + 8), 0, v6);
  }

  else
  {
    probe_srp_done(a1, 0);
    ioloop_comm_cancel(*(a1 + 8));
  }
}

void probe_srp_datagram(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1486) == 1)
  {
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136446210;
      *&v26[4] = "probe_srp_datagram";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: datagram received after cancel--ignoring", v26, 0xCu);
    }

    return;
  }

  v7 = *(a2 + 91) & 0xF;
  v8 = *a1;
  v9 = global_os_log;
  v10 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = a1[24];
      v12 = bswap32(*(*(a3 + 8) + 290));
      v13 = *(a2 + 88);
      v14 = *(a3 + 64);
      *v26 = 136447747;
      *&v26[4] = "probe_srp_datagram";
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2081;
      v30 = v11;
      v31 = 1024;
      v32 = HIWORD(v12);
      v33 = 1024;
      *v34 = v13;
      *&v34[4] = 1024;
      *&v34[6] = v14;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v7;
      v15 = "%{public}s: datagram from %{private, mask.hash}s on port %d xid %x (question xid %x) rcode %d";
      v16 = v9;
      v17 = 56;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, v26, v17);
    }
  }

  else if (v10)
  {
    v18 = *(a3 + 8);
    v19 = *(v18 + 296);
    if ((v19 & 0xFE) == 0xFC)
    {
      v20 = "ULA: ";
    }

    else if (v19 == 254 && (*(v18 + 297) & 0xC0) == 0x80)
    {
      v20 = "LUA: ";
    }

    else if ((v19 & 0xE0) == 0x20)
    {
      v20 = "GUA: ";
    }

    else
    {
      v20 = "";
    }

    v21 = bswap32(*(v18 + 290));
    v22 = *(a2 + 88);
    v23 = *(a3 + 64);
    *v26 = 136449795;
    *&v26[4] = "probe_srp_datagram";
    v27 = 2082;
    v28 = v20;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 1041;
    v32 = 6;
    v33 = 2097;
    *v34 = v18 + 296;
    *&v34[8] = 2160;
    v35 = 1752392040;
    v36 = 1042;
    v37 = 2;
    v38 = 2098;
    v39 = v18 + 302;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 1041;
    v43 = 8;
    v44 = 2097;
    v45 = v18 + 304;
    v46 = 1024;
    v47 = HIWORD(v21);
    v48 = 1024;
    v49 = v22;
    v50 = 1024;
    v51 = v23;
    v52 = 1024;
    v53 = v7;
    v15 = "%{public}s: datagram from {%{public}s%{private, mask.hash, srp:in6_addr_segment}.6P:%{public, mask.hash, srp:in6_addr_segment}.2P:%{private, mask.hash, srp:in6_addr_segment}.8P} on port %d xid %x (question xid %x) rcode %d";
    v16 = v9;
    v17 = 124;
    goto LABEL_17;
  }

  if (*(a2 + 88) == *(a3 + 64))
  {
    *v26 = 0;
    dns_wire_parse_(v26, a2 + 88, *(a2 + 64));
    if (v24)
    {
      dns_message_free(*v26);
      if (v7 != 2)
      {
        probe_srp_done(a3, v7 == 0);
        ioloop_comm_cancel(*(a3 + 8));
        v25 = *(a3 + 16);
        if (v25)
        {
          ioloop_cancel_wake_event(v25);
        }
      }
    }
  }
}

uint64_t setup_for_command(uint64_t *a1, uint64_t a2, const char *a3, void *a4, xpc_object_t xdict, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char *a10, int a11)
{
  if (!a7 || !a8)
  {
    v21 = global_os_log;
    v22 = 4294901756;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return v22;
    }

    *buf = 136446466;
    v66 = "setup_for_command";
    v67 = 2082;
    *v68 = a2;
    v23 = "%{public}s: %{public}s: NULL cti_connection_t OR Callback OR Client_Queue parameter";
    v24 = v21;
    v25 = 22;
    goto LABEL_38;
  }

  if (a9)
  {
    xpc_dictionary_set_string(xdict, "command", "eventsOn");
    v19 = xpc_array_create(0, 0);
    if (!v19)
    {
      return 4294901757;
    }

    v20 = v19;
    xpc_array_set_string(v19, 0xFFFFFFFFFFFFFFFFLL, a3);
    xpc_dictionary_set_value(xdict, "eventList", v20);
    xpc_release(v20);
    a3 = 0;
  }

  else
  {
    xpc_dictionary_set_string(xdict, "command", "WpanctlCmd");
  }

  v55 = a1;
  v26 = malloc_type_calloc(1uLL, 0x58uLL, 0x4E82D03AuLL);
  if (!v26)
  {
    v27 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v66 = "init_connection";
      v67 = 2048;
      *v68 = 1;
      *&v68[8] = 2048;
      *&v68[10] = 88;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
    }

    __break(1u);
    goto LABEL_52;
  }

  v27 = v26;
  v28 = a11;
  v29 = client_serial_number;
  v26[20] = client_serial_number;
  client_serial_number = v29 + 1;
  v30 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *v27;
    *buf = 136447490;
    v66 = "init_connection";
    v67 = 1024;
    *v68 = v31;
    v28 = a11;
    *&v68[4] = 2048;
    *&v68[6] = v27;
    *&v68[14] = 2080;
    *&v68[16] = "conn_ref";
    *&v68[24] = 2080;
    *&v68[26] = strrchr(a10, 47) + 1;
    v69 = 1024;
    v70 = a11;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v32 = *v27;
  if (*v27)
  {
    v33 = v32 + 1;
    *v27 = v32 + 1;
    if (v32 + 1 >= 10001)
    {
      v34 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_58;
      }

      v35 = strrchr(a10, 47);
      *buf = 136447490;
      v66 = "init_connection";
      v67 = 1024;
      *v68 = v33;
      *&v68[4] = 2048;
      *&v68[6] = v27;
      *&v68[14] = 2080;
      *&v68[16] = "conn_ref";
      *&v68[24] = 2080;
      *&v68[26] = v35 + 1;
      v69 = 1024;
      v70 = v28;
      v36 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      v37 = v34;
      goto LABEL_57;
    }
  }

  else
  {
    ++cti_connection_created;
    *v27 = 1;
  }

  dispatch_retain(&_dispatch_main_q);
  *(v27 + 64) = a6;
  *(v27 + 72) = a2;
  *(v27 + 32) = &_dispatch_main_q;
  *(v27 + 40) = a3;
  *(v27 + 8) = a7;
  *(v27 + 48) = a4;
  *(v27 + 56) = a8;
  mach_service = xpc_connection_create_mach_service("com.apple.wpantund.xpc", &_dispatch_main_q, 2uLL);
  *(v27 + 16) = mach_service;
  a4 = &unk_1000A9000;
  v39 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(v27 + 80);
    *buf = 136446722;
    v66 = "init_connection";
    v67 = 1024;
    *v68 = v40;
    *&v68[4] = 2048;
    *&v68[6] = mach_service;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] xpc connection: %p", buf, 0x1Cu);
  }

  *(v27 + 24) = xdict;
  xpc_retain(xdict);
  cti_log_object("init_connection/command", *(v27 + 80), *(v27 + 72), "", "", xdict, "");
  v41 = global_os_log;
  if (!*(v27 + 16))
  {
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v66 = "init_connection";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s: conn_ref/lib_q is NULL", buf, 0xCu);
    }

    v46 = *v27;
    if (*v27)
    {
      v45 = global_os_log;
      if (v46 >= 10001)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_58;
        }

        *buf = 136447490;
        v66 = "init_connection";
        v67 = 1024;
        *v68 = v46;
        *&v68[4] = 2048;
        *&v68[6] = v27;
        *&v68[14] = 2080;
        *&v68[16] = "conn_ref";
        *&v68[24] = 2080;
        *&v68[26] = "cti-services.c";
        v69 = 1024;
        v70 = 578;
        v36 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        goto LABEL_56;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v66 = "init_connection";
        v67 = 1024;
        *v68 = v46;
        *&v68[4] = 2048;
        *&v68[6] = v27;
        *&v68[14] = 2080;
        *&v68[16] = "conn_ref";
        *&v68[24] = 2080;
        *&v68[26] = "cti-services.c";
        v69 = 1024;
        v70 = 578;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v46 = *v27;
        v45 = global_os_log;
      }

      *v27 = v46 - 1;
      if (v46 == 1)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v66 = "init_connection";
          v67 = 2048;
          *v68 = v27;
          *&v68[8] = 2080;
          *&v68[10] = "conn_ref";
          *&v68[18] = 2080;
          *&v68[20] = "cti-services.c";
          *&v68[28] = 1024;
          *&v68[30] = 578;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++cti_connection_finalized;
        cti_connection_finalize(v27);
        v45 = global_os_log;
      }

      v22 = 4294901757;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        return v22;
      }

      *buf = 136446722;
      v66 = "setup_for_command";
      v67 = 2082;
      *v68 = a2;
      *&v68[8] = 1024;
      *&v68[10] = -65539;
      v23 = "%{public}s: %{public}s: Since init_connection() returned %d error returning w/o sending msg";
      v24 = v45;
      v25 = 28;
LABEL_38:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      return v22;
    }

LABEL_52:
    v45 = *(a4 + 22);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_58;
    }

    *buf = 136447490;
    v66 = "init_connection";
    v67 = 1024;
    *v68 = 0;
    *&v68[4] = 2048;
    *&v68[6] = v27;
    *&v68[14] = 2080;
    *&v68[16] = "conn_ref";
    *&v68[24] = 2080;
    *&v68[26] = "cti-services.c";
    v69 = 1024;
    v70 = 578;
    v36 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_56;
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *v27;
    *buf = 136447490;
    v66 = "init_connection";
    v67 = 1024;
    *v68 = v42;
    *&v68[4] = 2048;
    *&v68[6] = v27;
    *&v68[14] = 2080;
    *&v68[16] = "conn_ref";
    *&v68[24] = 2080;
    *&v68[26] = "cti-services.c";
    v69 = 1024;
    v70 = 583;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
  }

  v43 = *v27;
  if (*v27)
  {
    v44 = v43 + 1;
    *v27 = v43 + 1;
    if (v43 + 1 >= 10001)
    {
      v45 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_58;
      }

      *buf = 136447490;
      v66 = "init_connection";
      v67 = 1024;
      *v68 = v44;
      *&v68[4] = 2048;
      *&v68[6] = v27;
      *&v68[14] = 2080;
      *&v68[16] = "conn_ref";
      *&v68[24] = 2080;
      *&v68[26] = "cti-services.c";
      v69 = 1024;
      v70 = 583;
      v36 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
LABEL_56:
      v37 = v45;
LABEL_57:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, v36, buf, 0x36u);
LABEL_58:
      abort();
    }
  }

  else
  {
    ++cti_connection_created;
    *v27 = 1;
  }

  v47 = *(v27 + 16);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = __init_connection_block_invoke;
  handler[3] = &__block_descriptor_tmp_243;
  handler[4] = v27;
  xpc_connection_set_event_handler(v47, handler);
  xpc_connection_set_finalizer_f(*(v27 + 16), cti_xpc_connection_finalize);
  xpc_connection_set_context(*(v27 + 16), v27);
  xpc_connection_resume(*(v27 + 16));
  strcpy(v64, "srp-mdns-proxy");
  snprintf(buf, 0x23uLL, "%s-%d", v64, *(v27 + 80));
  v48 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v48, "command", "checkIn");
  xpc_dictionary_set_string(v48, "clientName", buf);
  cti_log_object("init_connection/checkin", *(v27 + 80), *(v27 + 72), "", "", v48, "");
  v49 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(v27 + 80);
    v51 = *(v27 + 16);
    *v58 = 136446722;
    v59 = "init_connection";
    v60 = 1024;
    v61 = v50;
    v62 = 2048;
    v63 = v51;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] sending message on connection %p", v58, 0x1Cu);
  }

  v52 = *(v27 + 16);
  v53 = *(v27 + 32);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 0x40000000;
  v56[2] = __init_connection_block_invoke_84;
  v56[3] = &__block_descriptor_tmp_85;
  v56[4] = v27;
  xpc_connection_send_message_with_reply(v52, v48, v53, v56);
  if (v48)
  {
    xpc_release(v48);
  }

  if (v55)
  {
    *v55 = v27;
  }

  return 0;
}

void cti_log_object(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, xpc_object_t object, const char *a7)
{
  type = xpc_get_type(object);
  if (a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = &cti_log_object_no_indent;
  }

  if (type != &_xpc_type_dictionary && type != &_xpc_type_array)
  {
    v16 = cti_xpc_copy_description(object);
    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448002;
      v103 = "cti_log_object";
      v104 = 1024;
      v105 = a2;
      v106 = 2082;
      v107 = a1;
      v108 = 2082;
      v109 = a3;
      v110 = 2082;
      v111 = v11;
      v112 = 2082;
      v113 = a4;
      v114 = 2082;
      v115 = a5;
      v116 = 2082;
      v117 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s %{public}s", buf, 0x4Eu);
    }

    if (!v16)
    {
      return;
    }

    goto LABEL_29;
  }

  v13 = type;
  v79 = 1;
  if (type != &_xpc_type_dictionary)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = __cti_log_object_block_invoke_3;
    applier[3] = &__block_descriptor_tmp_94;
    applier[4] = &v79;
    xpc_array_apply(object, applier);
    if (v79)
    {
      count = xpc_array_get_count(object);
      v61 = "[";
      v15 = "]";
      goto LABEL_18;
    }

LABEL_23:
    v22 = strlen(v11);
    if (v22 == -3)
    {
      v58 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v103 = "cti_log_object";
      v59 = "%{public}s: strict_malloc called with size 0";
    }

    else
    {
      v23 = malloc_type_malloc(v22 + 3, 0xE8B260C1uLL);
      if (v23)
      {
        v16 = v23;
        v24 = v22 + 2;
        memset(v23, 32, v24);
        v16[v24] = 0;
        if (v13 == &_xpc_type_dictionary)
        {
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 0x40000000;
          v72[2] = __cti_log_object_block_invoke_104;
          v72[3] = &__block_descriptor_tmp_106;
          v73 = a2;
          v72[4] = a1;
          v72[5] = a3;
          v72[6] = v16;
          xpc_dictionary_apply(object, v72);
        }

        else
        {
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 0x40000000;
          v70[2] = __cti_log_object_block_invoke_2_107;
          v70[3] = &__block_descriptor_tmp_109;
          v71 = a2;
          v70[4] = a1;
          v70[5] = a3;
          v70[6] = v16;
          xpc_array_apply(object, v70);
        }

        if (v16 == v11)
        {
          return;
        }

LABEL_29:
        v25 = v16;
        goto LABEL_30;
      }

      v58 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v103 = "cti_log_object";
      v59 = "%{public}s: strict allocator failed";
    }

    v60 = buf;
LABEL_96:
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v59, v60, 0xCu);
    goto LABEL_97;
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 0x40000000;
  v78[2] = __cti_log_object_block_invoke;
  v78[3] = &__block_descriptor_tmp_91;
  v78[4] = &v79;
  xpc_dictionary_apply(object, v78);
  if ((v79 & 1) == 0)
  {
    goto LABEL_23;
  }

  count = xpc_dictionary_get_count(object);
  v61 = "{";
  v15 = "}";
LABEL_18:
  v66 = v15;
  if (!count)
  {
    return;
  }

  v62 = a3;
  v63 = v11;
  if (!(8 * count))
  {
    v58 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *v80 = 136446210;
    v81 = "cti_log_object";
    v59 = "%{public}s: strict_malloc called with size 0";
    goto LABEL_95;
  }

  v19 = malloc_type_malloc(8 * count, 0x4AD4519EuLL);
  if (!v19)
  {
    v58 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *v80 = 136446210;
      v81 = "cti_log_object";
      v59 = "%{public}s: strict allocator failed";
LABEL_95:
      v60 = v80;
      goto LABEL_96;
    }

LABEL_97:
    __break(1u);
  }

  v20 = v19;
  if (v13 == &_xpc_type_dictionary)
  {
    v76 = 0;
    v26 = malloc_type_malloc(8 * count, 0x8D563CDDuLL);
    if (v26)
    {
      v21 = v26;
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 0x40000000;
      v75[2] = __cti_log_object_block_invoke_95;
      v75[3] = &__block_descriptor_tmp_96;
      v75[4] = v20;
      v75[5] = &v76;
      v75[6] = v26;
      xpc_dictionary_apply(object, v75);
      goto LABEL_34;
    }

    v58 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *v80 = 136446210;
      v81 = "cti_log_object";
      v59 = "%{public}s: strict allocator failed";
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 0x40000000;
  v74[2] = __cti_log_object_block_invoke_2_97;
  v74[3] = &__block_descriptor_tmp_98;
  v74[4] = v19;
  xpc_array_apply(object, v74);
  v21 = 0;
LABEL_34:
  v27 = 0;
  v69 = v21;
  v29 = v13 == &_xpc_type_dictionary && v21 != 0;
  v30 = 1;
  v31 = 1 - count;
  v32 = buf;
  v33 = 160;
  do
  {
    v34 = v20[v27];
    if (v34)
    {
      v35 = strlen(v20[v27]) + 2;
      if (!v29)
      {
        goto LABEL_44;
      }

LABEL_43:
      v35 += strlen(v69[v27]) + 2;
      goto LABEL_44;
    }

    v35 = 6;
    v34 = "NULL";
    if (v29)
    {
      goto LABEL_43;
    }

LABEL_44:
    v36 = v35 + 1;
    if (v35 + 1 <= v33)
    {
      goto LABEL_64;
    }

    if (v31)
    {
      v37 = "";
    }

    else
    {
      v37 = v66;
    }

    if (v33 != 160)
    {
      v38 = global_os_log;
      v39 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      v32 = buf;
      if (v30)
      {
        if (v39)
        {
          *v80 = 136448514;
          v81 = "cti_log_object";
          v82 = 1024;
          v83 = a2;
          v84 = 2082;
          v85 = a1;
          v86 = 2082;
          v87 = v62;
          v88 = 2082;
          v89 = v63;
          v90 = 2082;
          v91 = a4;
          v92 = 2082;
          v93 = a5;
          v94 = 2082;
          v95 = v61;
          v96 = 2082;
          v97 = buf;
          v98 = 2082;
          v99 = v37;
          v40 = v38;
          v41 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s %{public}s%{public}s%{public}s";
          v42 = 98;
LABEL_56:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, v80, v42);
        }
      }

      else if (v39)
      {
        *v80 = 136448258;
        v81 = "cti_log_object";
        v82 = 1024;
        v83 = a2;
        v84 = 2082;
        v85 = a1;
        v86 = 2082;
        v87 = v62;
        v88 = 2082;
        v89 = v63;
        v90 = 2082;
        v91 = a4;
        v92 = 2082;
        v93 = a5;
        v94 = 2082;
        v95 = buf;
        v96 = 2082;
        v97 = v37;
        v40 = v38;
        v41 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s +%{public}s%{public}s";
        v42 = 88;
        goto LABEL_56;
      }

      v30 = 0;
    }

    if (v36 < 0xA1)
    {
      v33 = 160;
LABEL_64:
      if (v29)
      {
        v49 = v69[v27];
        snprintf(v32, v33, "%s%s: %s%s");
      }

      else
      {
        snprintf(v32, v33, "%s%s%s");
      }

      v50 = strlen(v32);
      v32 += v50;
      v33 -= v50;
      goto LABEL_78;
    }

    v43 = global_os_log;
    v44 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (!v29)
    {
      if ((v30 & 1) == 0)
      {
        if (v44)
        {
          *v80 = 136448258;
          v81 = "cti_log_object";
          v82 = 1024;
          v83 = a2;
          v84 = 2082;
          v85 = a1;
          v86 = 2082;
          v87 = v62;
          v88 = 2082;
          v89 = v63;
          v90 = 2082;
          v91 = a4;
          v92 = 2082;
          v93 = a5;
          v94 = 2082;
          v95 = v34;
          v96 = 2082;
          v97 = v37;
          v46 = v43;
          v47 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s +%{public}s%{public}s";
          v48 = 88;
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v44)
      {
        goto LABEL_77;
      }

      *v80 = 136448514;
      v81 = "cti_log_object";
      v82 = 1024;
      v83 = a2;
      v84 = 2082;
      v85 = a1;
      v86 = 2082;
      v87 = v62;
      v88 = 2082;
      v89 = v63;
      v90 = 2082;
      v91 = a4;
      v92 = 2082;
      v93 = a5;
      v94 = 2082;
      v95 = v61;
      v96 = 2082;
      v97 = v34;
      v98 = 2082;
      v99 = v37;
      v46 = v43;
      v47 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s %{public}s%{public}s%{public}s";
LABEL_73:
      v48 = 98;
      goto LABEL_76;
    }

    if ((v30 & 1) == 0)
    {
      if (!v44)
      {
        goto LABEL_77;
      }

      v51 = v69[v27];
      *v80 = 136448514;
      v81 = "cti_log_object";
      v82 = 1024;
      v83 = a2;
      v84 = 2082;
      v85 = a1;
      v86 = 2082;
      v87 = v62;
      v88 = 2082;
      v89 = v63;
      v90 = 2082;
      v91 = a4;
      v92 = 2082;
      v93 = a5;
      v94 = 2082;
      v95 = v51;
      v96 = 2082;
      v97 = v34;
      v98 = 2082;
      v99 = v37;
      v46 = v43;
      v47 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s +%{public}s: %{public}s%{public}s";
      goto LABEL_73;
    }

    if (v44)
    {
      v45 = v69[v27];
      *v80 = 136448770;
      v81 = "cti_log_object";
      v82 = 1024;
      v83 = a2;
      v84 = 2082;
      v85 = a1;
      v86 = 2082;
      v87 = v62;
      v88 = 2082;
      v89 = v63;
      v90 = 2082;
      v91 = a4;
      v92 = 2082;
      v93 = a5;
      v94 = 2082;
      v95 = v61;
      v96 = 2082;
      v97 = v45;
      v98 = 2082;
      v99 = v34;
      v100 = 2082;
      v101 = v37;
      v46 = v43;
      v47 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s %{public}s%{public}s: %{public}s%{public}s";
      v48 = 108;
LABEL_76:
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, v80, v48);
    }

LABEL_77:
    v30 = 0;
    v33 = 160;
LABEL_78:
    v52 = v20[v27];
    if (v52)
    {
      free(v52);
      v20[v27] = 0;
    }

    ++v27;
    ++v31;
  }

  while (v31 != 1);
  if (buf != v32)
  {
    v53 = global_os_log;
    v54 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v54)
      {
        *v80 = 136448514;
        v81 = "cti_log_object";
        v82 = 1024;
        v83 = a2;
        v84 = 2082;
        v85 = a1;
        v86 = 2082;
        v87 = v62;
        v88 = 2082;
        v89 = v63;
        v90 = 2082;
        v91 = a4;
        v92 = 2082;
        v93 = a5;
        v94 = 2082;
        v95 = v61;
        v96 = 2082;
        v97 = buf;
        v98 = 2082;
        v99 = v66;
        v55 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s %{public}s%{public}s%{public}s";
        v56 = v53;
        v57 = 98;
        goto LABEL_87;
      }
    }

    else if (v54)
    {
      *v80 = 136448258;
      v81 = "cti_log_object";
      v82 = 1024;
      v83 = a2;
      v84 = 2082;
      v85 = a1;
      v86 = 2082;
      v87 = v62;
      v88 = 2082;
      v89 = v63;
      v90 = 2082;
      v91 = a4;
      v92 = 2082;
      v93 = a5;
      v94 = 2082;
      v95 = buf;
      v96 = 2082;
      v97 = v66;
      v55 = "%{public}s: [CX%d] %{public}s(%{public}s): %{public}s%{public}s%{public}s + %{public}s%{public}s";
      v56 = v53;
      v57 = 88;
LABEL_87:
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v55, v80, v57);
    }
  }

  free(v20);
  if (v69)
  {
    v25 = v69;
LABEL_30:
    free(v25);
  }
}

void cti_connection_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    xpc_release(v2);
  }

  free(a1);
}

void cti_event_handler(xpc_object_t object, uint64_t a2)
{
  if (object == &_xpc_error_connection_invalid)
  {
    v16 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 80);
      v18 = *(a2 + 72);
      *buf = 136446722;
      v59 = "cti_event_handler";
      v60 = 1024;
      v61 = v17;
      v62 = 2082;
      string = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] (%{public}s): cleanup", buf, 0x1Cu);
    }

    if (*(a2 + 8))
    {
      (*(a2 + 56))(a2, &_xpc_error_connection_invalid, 4294901727);
    }

    else
    {
      v22 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a2 + 80);
        *buf = 136446466;
        v59 = "cti_event_handler";
        v60 = 1024;
        v61 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] No callback", buf, 0x12u);
      }
    }

    v24 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a2 + 80);
      v26 = *(a2 + 16);
      *buf = 136446722;
      v59 = "cti_event_handler";
      v60 = 1024;
      v61 = v25;
      v62 = 2048;
      string = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] releasing connection %p", buf, 0x1Cu);
    }

    v27 = *(a2 + 16);
    if (v27)
    {
      xpc_release(v27);
      *(a2 + 16) = 0;
    }
  }

  else if (*(a2 + 16))
  {
    type = xpc_get_type(object);
    v5 = *(a2 + 80);
    v6 = *(a2 + 72);
    if (type == &_xpc_type_dictionary)
    {
      cti_log_object("cti_event_handler", v5, v6, "", "", object, "");
      if (*(a2 + 84))
      {
        v21 = *(a2 + 56);

        v21(a2, object, 0);
        return;
      }

      value = xpc_dictionary_get_value(object, "commandResult");
      if (value)
      {
        if (xpc_int64_get_value(value) || (v32 = xpc_dictionary_get_value(object, "commandData")) != 0 && (v33 = xpc_dictionary_get_value(v32, "ret")) != 0 && xpc_int64_get_value(v33))
        {
          (*(a2 + 56))(a2, object, 4294901759);
          v29 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          v30 = *(a2 + 80);
          v31 = *(a2 + 16);
          *buf = 136446722;
          v59 = "cti_event_handler";
          v60 = 1024;
          v61 = v30;
          v62 = 2048;
          string = v31;
          v12 = "%{public}s: [CX%d] canceling xpc connection %p";
          v13 = v29;
LABEL_9:
          v14 = OS_LOG_TYPE_DEFAULT;
          v15 = 28;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
          goto LABEL_11;
        }
      }

      if (*(a2 + 40))
      {
        v34 = xpc_dictionary_create(0, 0, 0);
        if (!v34)
        {
          v48 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v49 = *(a2 + 80);
          v50 = *(a2 + 72);
          v51 = *(a2 + 16);
          *buf = 136446978;
          v59 = "cti_event_handler";
          v60 = 1024;
          v61 = v49;
          v62 = 2082;
          string = v50;
          v64 = 2048;
          v65 = v51;
          v12 = "%{public}s: [CX%d] cti_event_handler(%{public}s): no memory, canceling %p.";
          v13 = v48;
          v14 = OS_LOG_TYPE_ERROR;
          v15 = 38;
          goto LABEL_10;
        }

        v35 = v34;
        v36 = xpc_array_create(0, 0);
        if (v36)
        {
          v37 = v36;
          xpc_dictionary_set_string(v35, "command", "eventsOn");
          xpc_dictionary_set_string(v35, "clientName", "srp-mdns-proxy");
          xpc_dictionary_set_value(v35, "eventList", v37);
          xpc_array_set_string(v37, 0xFFFFFFFFFFFFFFFFLL, *(a2 + 40));
          *(a2 + 40) = 0;
          cti_log_object("cti_event_handler/events on", *(a2 + 80), *(a2 + 72), "", "", v35, "");
          v38 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a2 + 80);
            v40 = *(a2 + 16);
            *buf = 136446722;
            v59 = "cti_event_handler";
            v60 = 1024;
            v61 = v39;
            v62 = 2048;
            string = v40;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] sending message on connection %p", buf, 0x1Cu);
          }

          v41 = *(a2 + 16);
          v42 = *(a2 + 32);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = __cti_event_handler_block_invoke;
          handler[3] = &__block_descriptor_tmp_122;
          handler[4] = a2;
          xpc_connection_send_message_with_reply(v41, v35, v42, handler);
          xpc_release(v37);
        }

        else
        {
          v52 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            v53 = *(a2 + 80);
            v54 = *(a2 + 72);
            v55 = *(a2 + 16);
            *buf = 136446978;
            v59 = "cti_event_handler";
            v60 = 1024;
            v61 = v53;
            v62 = 2082;
            string = v54;
            v64 = 2048;
            v65 = v55;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] cti_event_handler(%{public}s): no memory, canceling %p.", buf, 0x26u);
          }

          xpc_connection_cancel(*(a2 + 16));
        }
      }

      else
      {
        v35 = *(a2 + 24);
        *(a2 + 24) = 0;
        cti_log_object("cti_event_handler/command is", *(a2 + 80), *(a2 + 72), "", "", v35, "");
        *(a2 + 84) = 1;
        v43 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a2 + 80);
          v45 = *(a2 + 16);
          *buf = 136446722;
          v59 = "cti_event_handler";
          v60 = 1024;
          v61 = v44;
          v62 = 2048;
          string = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] sending message on connection %p", buf, 0x1Cu);
        }

        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 0x40000000;
        v56[2] = __cti_event_handler_block_invoke_124;
        v56[3] = &__block_descriptor_tmp_125;
        v56[4] = a2;
        xpc_connection_send_message_with_reply(v46, v35, v47, v56);
        if (!v35)
        {
          return;
        }
      }

      xpc_release(v35);
      return;
    }

    cti_log_object("cti_event_handler/other", v5, v6, "", "", object, "");
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a2 + 80);
      *buf = 136446722;
      v59 = "cti_event_handler";
      v60 = 1024;
      v61 = v8;
      v62 = 2082;
      string = xpc_dictionary_get_string(object, _xpc_error_key_description);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: [CX%d] cti_event_handler: Unexpected Connection Error [%{public}s]", buf, 0x1Cu);
    }

    (*(a2 + 56))(a2, 0, 4294901733);
    if (object != &_xpc_error_connection_interrupted)
    {
      v9 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        xpc_connection_cancel(*(a2 + 16));
        return;
      }

      v10 = *(a2 + 80);
      v11 = *(a2 + 16);
      *buf = 136446722;
      v59 = "cti_event_handler";
      v60 = 1024;
      v61 = v10;
      v62 = 2048;
      string = v11;
      v12 = "%{public}s: [CX%d] canceling xpc connection %p";
      v13 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = *(a2 + 80);
    v20 = *(a2 + 72);

    cti_log_object("cti_event_handler NULL connection", v19, v20, "", "", object, "");
  }
}

void cti_xpc_connection_finalize(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    v5 = 136446722;
    v6 = "cti_xpc_connection_finalize";
    v7 = 1024;
    v8 = v3;
    v9 = 2082;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [CX%d] %{public}s", &v5, 0x1Cu);
  }

  cti_connection_release_(a1, 114);
}

void cti_connection_release_(void *a1, int a2)
{
  a1[1] = 0;
  v4 = *a1;
  if (!*a1)
  {
    v5 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v8 = 136447490;
    v9 = "cti_connection_release_";
    v10 = 1024;
    *v11 = 0;
    *&v11[4] = 2048;
    *&v11[6] = a1;
    *&v11[14] = 2080;
    *&v11[16] = "ref";
    *&v11[24] = 2080;
    *&v11[26] = "cti-services.c";
    v12 = 1024;
    v13 = a2;
    v7 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_14;
  }

  v5 = global_os_log;
  if (v4 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v8 = 136447490;
    v9 = "cti_connection_release_";
    v10 = 1024;
    *v11 = v4;
    *&v11[4] = 2048;
    *&v11[6] = a1;
    *&v11[14] = 2080;
    *&v11[16] = "ref";
    *&v11[24] = 2080;
    *&v11[26] = "cti-services.c";
    v12 = 1024;
    v13 = a2;
    v7 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v7, &v8, 0x36u);
LABEL_15:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136447490;
    v9 = "cti_connection_release_";
    v10 = 1024;
    *v11 = v4;
    *&v11[4] = 2048;
    *&v11[6] = a1;
    *&v11[14] = 2080;
    *&v11[16] = "ref";
    *&v11[24] = 2080;
    *&v11[26] = "cti-services.c";
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v8, 0x36u);
    v4 = *a1;
  }

  *a1 = v4 - 1;
  if (v4 == 1)
  {
    v6 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136447234;
      v9 = "cti_connection_release_";
      v10 = 2048;
      *v11 = a1;
      *&v11[8] = 2080;
      *&v11[10] = "ref";
      *&v11[18] = 2080;
      *&v11[20] = "cti-services.c";
      *&v11[28] = 1024;
      *&v11[30] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v8, 0x30u);
    }

    ++cti_connection_finalized;
    cti_connection_finalize(a1);
  }
}