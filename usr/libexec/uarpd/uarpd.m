_BYTE *sub_100002384(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100002394(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000023B4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_10000375C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000049D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100004D2C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v26 = 67109634;
    *v27 = a2;
    *&v27[4] = 2048;
    *&v27[6] = a3;
    *&v27[14] = 2112;
    *&v27[16] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UARP Personalization Event: action = %u token = %llu descriptor = %@", &v26, 0x1Cu);
  }

  switch(a2)
  {
    case 2:
      v16 = *(*(a1 + 32) + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        break;
      }

      LOWORD(v26) = 0;
      v17 = "UARP Personalization Event: Received initial barrier";
      v18 = v16;
      v19 = 2;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v17, &v26, v19);
      break;
    case 1:
      v13 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v26 = 134217984;
        *v27 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "UARP Personalization Event: Remove Subscriber: token = %llu", &v26, 0xCu);
      }

      v14 = *(*(a1 + 32) + 32);
      v15 = [NSNumber numberWithUnsignedLongLong:a3];
      [v14 removeObject:v15];

      break;
    case 0:
      v9 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v26 = 134218242;
        *v27 = a3;
        *&v27[8] = 2112;
        *&v27[10] = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "UARP Personalization Event: Add Subscriber: token = %llu descriptor = %@", &v26, 0x16u);
      }

      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithUnsignedLongLong:a3];
      [v10 addObject:v11];

      if (v7)
      {
        if (xpc_get_type(v7) != &_xpc_type_dictionary)
        {
          v12 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10007AC50(v12);
          }

          break;
        }

        v20 = xpc_dictionary_get_BOOL(v7, [@"handleAppleConnect" UTF8String]);
        v21 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          if (v20)
          {
            v22 = "can";
          }

          else
          {
            v22 = "cannot";
          }

          v26 = 134218242;
          *v27 = a3;
          *&v27[8] = 2080;
          *&v27[10] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "UARP Personalization Event: Subscriber token = %llu, %s handle auth listed personalization", &v26, 0x16u);
        }

        v23 = xpc_dictionary_get_BOOL(v7, [@"handleAuthListed" UTF8String]);
        v24 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          if (v23)
          {
            v25 = "can";
          }

          else
          {
            v25 = "cannot";
          }

          v26 = 134218242;
          *v27 = a3;
          *&v27[8] = 2080;
          *&v27[10] = v25;
          v17 = "UARP Personalization Event: Subscriber token = %llu, %s handle apple connect personalization";
          v18 = v24;
          v19 = 22;
          goto LABEL_17;
        }
      }

      break;
  }
}

void sub_1000050B8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10007ACD4(v1);
  }
}

void sub_1000055FC(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    v7 = &_mh_execute_header;
    *&v4 = 138543874;
    v22 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 40);
          v12 = v10;
          v13 = [v9 unsignedLongLongValue];
          *buf = 138543618;
          v28 = v11;
          v29 = 2050;
          v30 = v13;
          _os_log_impl(v7, v12, OS_LOG_TYPE_INFO, "Sending notification %{public}@ to %{public}llu", buf, 0x16u);
        }

        v14 = *(*(a1 + 32) + 24);
        [v9 unsignedLongLongValue];
        v15 = *(a1 + 40);
        if (xpc_event_publisher_fire())
        {
          v16 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v7;
            v18 = *(a1 + 40);
            v19 = v16;
            v20 = [v9 unsignedLongLongValue];
            v21 = xpc_strerror();
            *buf = v22;
            v28 = v18;
            v7 = v17;
            v29 = 2050;
            v30 = v20;
            v31 = 2082;
            v32 = v21;
            _os_log_error_impl(v17, v19, OS_LOG_TYPE_ERROR, "Sending %{public}@ to %{public}llu failed with error: %{public}s", buf, 0x20u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v5);
  }
}

uint64_t sub_1000062B4(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007AE6C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10007ADEC();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_1000063D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1000066A0(uint64_t a1)
{
  v3 = [*(a1 + 32) valueForEntitlement:*(*(a1 + 40) + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v3 BOOLValue];
    if (v2)
    {
      LOBYTE(v2) = [*(*(a1 + 40) + 40) addControllerConnection:*(a1 + 32)];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_1000087B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 152);
    v6 = 136315394;
    v7 = "[UARPHostManager endpointDisconnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Entries pre removal %@", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 152) removeObject:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 152);
    v6 = 136315394;
    v7 = "[UARPHostManager endpointDisconnection:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Entries post removal %@", &v6, 0x16u);
  }
}

void sub_100008A0C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 168);
    v6 = 136315394;
    v7 = "[UARPHostManager controllerDisconnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Entries pre removal %@", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 168) removeObject:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 168);
    v6 = 136315394;
    v7 = "[UARPHostManager controllerDisconnection:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Entries post removal %@", &v6, 0x16u);
  }
}

void sub_100008BE0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 152);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) xpcConnection];
        v9 = [v8 remoteObjectProxy];
        v10 = [v7 layer3Endpoint];
        v11 = [v10 uuid];
        [v9 endpointControllerDelegateEndpointAvailable:v11];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_100008E80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 72))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v4 path];
    v7 = [*(a1 + 48) description];
    v8 = [*(a1 + 56) uuid];
    v9 = [v8 description];
    v50 = 136316162;
    v51 = "[UARPHostManager stageAndApplyFirmwareAssetInternal:assetUUID:hostEndpoint:tssServerURL:needsStaging:autoApply:]_block_invoke";
    v52 = 2080;
    v53 = v3;
    v54 = 2112;
    v55 = v6;
    v56 = 2112;
    v57 = v7;
    v58 = 2112;
    v59 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Stage and Apply (%s) Asset %@, UUID of %@, for endpoint %@", &v50, 0x34u);
  }

  v10 = [[UARPSuperBinaryLayer3 alloc] initWithURL:*(a1 + 40) assetUUID:*(a1 + 48) tmpFolderPath:*(*(a1 + 32) + 40)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  if (v10)
  {
    if (os_log_type_enabled(*(v11 + 8), OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [(UARPSuperBinaryLayer3 *)v10 uuid];
      v15 = [v14 UUIDString];
      v16 = [*(a1 + 40) path];
      v17 = [*(a1 + 56) uuid];
      v50 = 138412802;
      v51 = v15;
      v52 = 2112;
      v53 = v16;
      v54 = 2112;
      v55 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Asset %@ for %@ to endpoint %@\n", &v50, 0x20u);
    }

    [(UARPSuperBinaryLayer3 *)v10 expandSuperBinaryHeadersAndMetaData];
    [*(a1 + 32) ingestTMAPPayloads:v10];
    v18 = [*(a1 + 32) preflightOfferRestrictions:v10 hostEndpoint:*(a1 + 56)];
    v19 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = "";
      if (v18)
      {
        v20 = "NOT ";
      }

      v50 = 136315394;
      v51 = "[UARPHostManager stageAndApplyFirmwareAssetInternal:assetUUID:hostEndpoint:tssServerURL:needsStaging:autoApply:]_block_invoke";
      v52 = 2080;
      v53 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: Asset is %sOK offer via OTA", &v50, 0x16u);
    }

    if (v18)
    {
      [*(a1 + 56) hostEntryDeviceTransportTeardown];
      goto LABEL_40;
    }

    v21 = [*(a1 + 32) preflightAvailableGreaterThanStaged:v10 hostEndpoint:*(a1 + 56)];
    v22 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = "";
      if (v21)
      {
        v23 = "NOT ";
      }

      v50 = 136315394;
      v51 = "[UARPHostManager stageAndApplyFirmwareAssetInternal:assetUUID:hostEndpoint:tssServerURL:needsStaging:autoApply:]_block_invoke";
      v52 = 2080;
      v53 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: Asset is %salready staged", &v50, 0x16u);
    }

    v24 = *(a1 + 32);
    if ((v21 & 1) == 0)
    {
      [v24 applyStagedAssets:*(a1 + 56)];
      goto LABEL_40;
    }

    v25 = v24[1];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [(UARPSuperBinaryLayer3 *)v10 uuid];
      v28 = [v27 UUIDString];
      v29 = [*(a1 + 56) uuid];
      v50 = 138412546;
      v51 = v28;
      v52 = 2112;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Stage and Apply Asset %@ to endpoint %@\n", &v50, 0x16u);
    }

    [(UARPSuperBinaryLayer3 *)v10 setNeedsStaging:*(a1 + 73)];
    [(UARPSuperBinaryLayer3 *)v10 setAutoApply:*(a1 + 72)];
    if ([(UARPSuperBinaryLayer3 *)v10 needsHostPersonalization])
    {
      v30 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        v32 = [(UARPSuperBinaryLayer3 *)v10 uuid];
        v33 = [v32 UUIDString];
        v34 = [*(a1 + 56) uuid];
        v35 = [v34 UUIDString];
        v50 = 138412546;
        v51 = v33;
        v52 = 2112;
        v53 = v35;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Need to Personalize Asset %@ for endpoint %@\n", &v50, 0x16u);
      }

      v36 = [*(a1 + 56) layer3Endpoint];
      v37 = [v36 personalizationInProgress];

      if (v37)
      {
        v38 = *(*(a1 + 32) + 8);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v39 = *(a1 + 56);
        v40 = v38;
        v41 = [v39 uuid];
        v42 = [v41 description];
        v50 = 136315394;
        v51 = "[UARPHostManager stageAndApplyFirmwareAssetInternal:assetUUID:hostEndpoint:tssServerURL:needsStaging:autoApply:]_block_invoke";
        v52 = 2112;
        v53 = v42;
        v43 = "%s: Firmware Personalization already in progress for endpoint %@ skipping";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, v43, &v50, 0x16u);

        goto LABEL_40;
      }

      v47 = [*(a1 + 56) layer3Endpoint];
      v48 = [v47 stagingInProgress];

      if (!v48)
      {
        [*(a1 + 56) personalizeFirmware:v10 tssServerURL:*(a1 + 64)];
        goto LABEL_40;
      }

      v46 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
LABEL_36:
        v49 = *(a1 + 56);
        v40 = v46;
        v41 = [v49 uuid];
        v42 = [v41 description];
        v50 = 136315394;
        v51 = "[UARPHostManager stageAndApplyFirmwareAssetInternal:assetUUID:hostEndpoint:tssServerURL:needsStaging:autoApply:]_block_invoke";
        v52 = 2112;
        v53 = v42;
        v43 = "%s: Firmware Staging already in progress for endpoint %@ skipping";
        goto LABEL_37;
      }
    }

    else
    {
      v44 = [*(a1 + 56) layer3Endpoint];
      v45 = [v44 stagingInProgress];

      if (!v45)
      {
        [*(a1 + 56) stageFirmware:v10 tssServerURL:*(a1 + 64)];
        goto LABEL_40;
      }

      v46 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }
    }
  }

  else if (os_log_type_enabled(*(v11 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10007B0A4((a1 + 40), v12, a1);
  }

LABEL_40:
}

void sub_10000963C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = [v5 description];
    v8 = 136315394;
    v9 = "[UARPHostManager applyStagedAssets:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Apply Staged Assets for endpoint %@", &v8, 0x16u);
  }

  v7 = [*(a1 + 40) layer3Endpoint];
  [v7 applyStagedAssets];
}

void sub_1000097DC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = [v5 description];
    v8 = 136315394;
    v9 = "[UARPHostManager rescindStagedAssets:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Rescind Assets for endpoint %@", &v8, 0x16u);
  }

  v7 = [*(a1 + 40) layer3Endpoint];
  [v7 rescindAssets];
}

void sub_1000099F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = v2;
    v6 = [v3 path];
    v7 = [*(a1 + 56) description];
    v20 = 136315906;
    v21 = "[UARPHostManager solicitAssetByAssetTag:hostEndpoint:assetURL:assetUUID:]_block_invoke";
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Solicit Asset By Component Tag %@ to %@. UUID of %@", &v20, 0x2Au);
  }

  v8 = [[UARPSuperBinaryLayer3 alloc] initWithURL:*(a1 + 48) assetUUID:*(a1 + 56) assetTag:*(a1 + 40) tmpFolderPath:*(*(a1 + 32) + 40)];
  v9 = *(a1 + 32);
  if (v8)
  {
    [*(v9 + 208) addObject:v8];
    v10 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [(UARPSuperBinaryLayer3 *)v8 uuid];
      v13 = [v12 UUIDString];
      v20 = 136315394;
      v21 = "[UARPHostManager solicitAssetByAssetTag:hostEndpoint:assetURL:assetUUID:]_block_invoke";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Added Dynamic Asset - %@", &v20, 0x16u);
    }

    v14 = [*(a1 + 64) layer3Endpoint];
    [v14 solicitDynamicAsset:v8 assetTag:*(a1 + 40)];
    goto LABEL_9;
  }

  v15 = *(v9 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v14 = v15;
    v18 = [v16 path];
    v19 = [*(a1 + 56) description];
    v20 = 136315906;
    v21 = "[UARPHostManager solicitAssetByAssetTag:hostEndpoint:assetURL:assetUUID:]_block_invoke";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Could not allocate UARPSuperBinaryLayer3 for Component Tag %@ to %@. UUID of %@", &v20, 0x2Au);

LABEL_9:
  }
}

void sub_100009D28(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 168);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) xpcConnection];
        v8 = [v7 remoteObjectProxy];
        [v8 endpointControllerDelegateEndpointUnavailable:*(a1 + 40)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100009EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  v4 = *(v2 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignore Asset Manager Notification, Paused", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Process Asset Manager Notification", buf, 2u);
    }

    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 40), [kUARPAssetAvailabilityXPCEventPersonalityKey UTF8String], &length);
    if (data)
    {
      v7 = [NSData dataWithBytes:data length:length];
      v22 = 0;
      v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v22];
      v9 = v22;
      if (v8)
      {
        v21 = 0;
        v10 = xpc_dictionary_get_data(*(a1 + 40), [kUARPAssetAvailabilityXPCEventAssetVersionKey UTF8String], &v21);
        if (v10)
        {
          v11 = [NSData dataWithBytes:v10 length:v21];
          v20 = 0;
          v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v20];
          v13 = v20;
          v14 = *(*(a1 + 32) + 8);
          if (v12)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v25 = "[UARPHostManager handleAssetAvailabilityEvent:]_block_invoke";
              v26 = 2112;
              v27 = v8;
              v28 = 2112;
              v29 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Asset Availability Event for %@, version %@", buf, 0x20u);
            }

            v15 = [UARPComponentVersion alloc];
            v16 = [v12 assetVersion];
            v17 = [(UARPComponentVersion *)v15 initWithVersionString:v16];

            v18 = objc_opt_new();
            v19 = *(a1 + 32);
            if (v18)
            {
              [(os_log_t *)v19 updateDatabaseEntryForPersonality:v8 assetManager:v18 availableFirmwareVersion:v17];
              [*(a1 + 32) offerAssetToMatchingEndpoints:v18 personality:v8 availableFirmwareVersion:v17];
            }

            else if (os_log_type_enabled(v19[1], OS_LOG_TYPE_ERROR))
            {
              sub_10007B164();
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10007B1E4();
          }
        }

        else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10007B254();
        }
      }

      else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10007B290();
      }
    }

    else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007B300();
    }
  }
}

void sub_10000A74C(void *a1)
{
  v2 = *(a1[4] + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = v2;
    v5 = [v3 path];
    v6 = a1[6];
    v10 = 136315650;
    v11 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Offer asset %@ to %@", &v10, 0x20u);
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = +[NSUUID UUID];
  [v7 stageAndApplyFirmwareAssetInternal:v8 assetUUID:v9 hostEndpoint:a1[6] tssServerURL:0 needsStaging:1 autoApply:1];
}

void sub_10000A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AA14(void *a1)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1 + 4;
  if (v4)
  {
    v6 = [v3 findHostEndpointByUUID:?];
    if (v6)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    else
    {
      v7 = *(a1[5] + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10007B388(v5, v7);
      }

      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  else
  {
    v3[248] = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_10000AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AC6C(void *a1)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1 + 4;
  if (v4)
  {
    v6 = [v3 findHostEndpointByUUID:?];
    if (v6)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    else
    {
      v7 = *(a1[5] + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10007B424(v5, v7);
      }

      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  else
  {
    v3[248] = 0;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_10000AE70(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = [*(a1 + 40) findHostEndpointByUUID:?];
  if (!v3)
  {
    v4 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007B4C0(v1, v4);
    }

    goto LABEL_5;
  }

LABEL_6:
}

void sub_10000CBD4(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [a1[6] uuid];
  [v2 notifyControllersPersonalizationStatus:v3 assetUUID:v4 status:1];

  v5 = a1[4];
  v6 = a1[5];
  v7 = [a1[6] uuid];
  [v5 notifyControllersPersonalizationStatus:v6 assetUUID:v7 status:8];

  v8 = *(a1[4] + 1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = a1[6];
    v10 = v8;
    v11 = [v9 uuid];
    v12 = [v11 UUIDString];
    v13 = [a1[5] layer3Endpoint];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];
    v54 = 136315650;
    v55 = "[UARPHostManager personalizeSuperBinary:hostEndpoint:]_block_invoke";
    v56 = 2112;
    v57 = v12;
    v58 = 2112;
    v59 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Authlist Personalizing %@ for Layer 3 Endpoint %@", &v54, 0x20u);
  }

  v16 = [a1[4] personalizeSuperBinaryAsAuthListed:a1[6] hostEndpoint:a1[5]];
  v17 = a1[4];
  if (!v16)
  {
    v26 = a1[5];
    v27 = [a1[6] uuid];
    [v17 notifyControllersPersonalizationStatus:v26 assetUUID:v27 status:9];

    v28 = MGCopyAnswer();
    v29 = [v28 BOOLValue];
    v30 = a1[4];
    if (v29)
    {
      v31 = a1[5];
      v32 = [a1[6] uuid];
      [v30 notifyControllersPersonalizationStatus:v31 assetUUID:v32 status:10];

      v33 = *(a1[4] + 1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = a1[6];
        v35 = v33;
        v36 = [v34 uuid];
        v37 = [v36 UUIDString];
        v38 = [a1[5] layer3Endpoint];
        v39 = [v38 uuid];
        v40 = [v39 UUIDString];
        v54 = 136315650;
        v55 = "[UARPHostManager personalizeSuperBinary:hostEndpoint:]_block_invoke";
        v56 = 2112;
        v57 = v37;
        v58 = 2112;
        v59 = v40;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s: (via Launch Agent) Apple Connect Personalizing %@ for Layer 3 Endpoint %@", &v54, 0x20u);
      }

      v41 = *(a1[4] + 22);
      v42 = a1[6];
      v43 = [a1[5] layer3Endpoint];
      v44 = [v43 uuid];
      v45 = [a1[6] tssServerURL];
      LOBYTE(v41) = [v41 personalizationNeeded:v42 endpointUUID:v44 tssServerURL:v45];

      if (v41)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v46 = v30[1];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = a1[6];
        v48 = v46;
        v49 = [v47 uuid];
        v50 = [v49 UUIDString];
        v51 = [a1[5] layer3Endpoint];
        v52 = [v51 uuid];
        v53 = [v52 UUIDString];
        v54 = 136315650;
        v55 = "[UARPHostManager personalizeSuperBinary:hostEndpoint:]_block_invoke";
        v56 = 2112;
        v57 = v50;
        v58 = 2112;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s: No Apple Connect top personalize %@ for Layer 3 Endpoint %@", &v54, 0x20u);
      }
    }

    [a1[4] assetPersonalizationComplete:a1[6] hostEndpoint:a1[5]];
LABEL_14:

    return;
  }

  v18 = v17[1];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = a1[6];
    v20 = v18;
    v21 = [v19 uuid];
    v22 = [v21 UUIDString];
    v23 = [a1[5] layer3Endpoint];
    v24 = [v23 uuid];
    v25 = [v24 UUIDString];
    v54 = 136315650;
    v55 = "[UARPHostManager personalizeSuperBinary:hostEndpoint:]_block_invoke";
    v56 = 2112;
    v57 = v22;
    v58 = 2112;
    v59 = v25;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: Authlist Personalized %@ for Layer 3 Endpoint %@", &v54, 0x20u);
  }
}

void sub_10000D490(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = [v5 UUIDString];
    *buf = 136315394;
    v35 = "[UARPHostManager layer3EndpointReachable:]_block_invoke";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: On queue for %@", buf, 0x16u);
  }

  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) uuid];
  v10 = [v8 findHostEndpointByUUID:v9];

  if (v10)
  {
    v11 = [*(a1 + 40) directConfiguration];
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    if (v11)
    {
      if (os_log_type_enabled(*(v12 + 8), OS_LOG_TYPE_INFO))
      {
        v14 = *v7;
        *buf = 136315394;
        v35 = "[UARPHostManager layer3EndpointReachable:]_block_invoke";
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Setup endpoint personality for %@", buf, 0x16u);
      }

      v28 = v10;
      [v10 subscribeToAssetManagerEvents];
      v15 = objc_opt_new();
      v16 = [v11 manufacturerName];
      [v15 setManufacturerName:v16];

      v17 = [v11 appleModelNumber];
      [v15 setModelName:v17];

      v18 = [v11 firmwareVersion];
      v19 = [v18 versionString];
      [v15 setActiveFirmwareVersion:v19];

      [v15 send];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = *(*(a1 + 32) + 168);
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v29 + 1) + 8 * i) xpcConnection];
            v26 = [v25 remoteObjectProxy];
            v27 = [*v7 uuid];
            [v26 endpointControllerDelegateEndpointAvailable:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v22);
      }

      v10 = v28;
    }

    else if (os_log_type_enabled(*(v12 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007BA00((a1 + 40));
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10007BA8C((a1 + 40));
  }
}

void sub_10000D8CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 40) uuid];
    [v5 endpointControllerEndpointUnavailable:v6];
  }

  else
  {
    v7 = v5[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[UARPHostManager layer3EndpointUnreachable:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", &v9, 0x16u);
    }
  }
}

void sub_10000DAEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v16 = v4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v18 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v19 + 1) + 8 * i) xpcConnection];
          v9 = [v8 remoteObjectProxy];
          v10 = [*(a1 + 40) uuid];
          v11 = [*(a1 + 48) uuid];
          v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
          v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
          [v9 endpointControllerDelegateAssetTransferProgress:v10 assetUUID:v11 bytesTransferred:v12 totalBytes:v13];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v4 = v16;
  }

  else
  {
    v14 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      *buf = 136315394;
      v25 = "[UARPHostManager layer3EndpointAssetStagingProgress:asset:bytesTransferred:assetLength:]_block_invoke";
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10000DE1C(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    [v4 stageFirmwareComplete:a1[6]];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(a1[4] + 21);
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[6] processingStatus]);
          v11 = [v9 xpcConnection];
          v12 = [v11 remoteObjectProxy];
          v13 = [a1[5] uuid];
          v14 = [a1[6] uuid];
          [v12 endpointControllerDelegateAssetTransferStatus:v13 assetUUID:v14 transferStatus:v10];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    if ([a1[6] processingStatus] == 1)
    {
      if ([v4 supportsChargingChimeDebounce])
      {
        [a1[4] postNotificationFirmwareUpdate];
      }

      if ([a1[6] autoApply])
      {
        [a1[4] applyStagedAssets:v4];
      }
    }

    else
    {
      [a1[4] layer3EndpointAppliedStagedAssets:a1[5] layer3Flags:3];
    }
  }

  else
  {
    v15 = *(a1[4] + 1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = a1[5];
      *buf = 136315394;
      v24 = "[UARPHostManager layer3EndpointAssetFullyStaged:txFirmwareAsset:]_block_invoke";
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10000E174(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v64 = v4;
    v5 = objc_opt_new();
    [v5 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
    v6 = +[NSDate date];
    v63 = v5;
    v7 = [v5 stringFromDate:v6];

    v8 = [a1[6] uuid];
    v9 = [v8 UUIDString];
    v10 = [a1[6] asset4cc];
    v11 = [v10 tagString];
    v62 = v7;
    v12 = [NSString stringWithFormat:@"%@-%@.%@", v7, v9, v11];

    v13 = objc_opt_new();
    v14 = [[UARPComponentTag alloc] initWithString:@"CRSH"];
    v15 = [[UARPComponentTag alloc] initWithString:@"HSML"];
    v66 = [[UARPComponentTag alloc] initWithString:@"LOGS"];
    v67 = [[UARPComponentTag alloc] initWithString:@"MTIC"];
    v65 = [[UARPComponentTag alloc] initWithString:@"TICS"];
    v16 = [[UARPComponentTag alloc] initWithString:@"TVAS"];
    v17 = [a1[6] asset4cc];
    LODWORD(v8) = [v17 isEqual:v14];

    v59 = v14;
    v57 = v16;
    if (v8)
    {
      v18 = a1[4] + 104;
    }

    else
    {
      v21 = [a1[6] asset4cc];
      v22 = [v21 isEqual:v15];

      if (v22)
      {
        v18 = a1[4] + 112;
      }

      else
      {
        v23 = [a1[6] asset4cc];
        v24 = [v23 isEqual:v66];

        if (v24)
        {
          v18 = a1[4] + 120;
        }

        else
        {
          v25 = [a1[6] asset4cc];
          v26 = [v25 isEqual:v67];

          if (v26)
          {
            v18 = a1[4] + 128;
          }

          else
          {
            v27 = [a1[6] asset4cc];
            v28 = [v27 isEqual:v65];

            if (v28)
            {
              v18 = a1[4] + 96;
            }

            else
            {
              v29 = [a1[6] asset4cc];
              v30 = [v29 isEqual:v16];

              v31 = a1[4];
              v32 = v31 + 56;
              v18 = v31 + 136;
              if (!v30)
              {
                v18 = v32;
              }
            }
          }
        }
      }
    }

    v58 = v15;
    [v13 addObject:*v18];
    [v13 addObject:v12];
    v56 = [NSString pathWithComponents:v13];
    v33 = [NSURL fileURLWithPath:?];
    v34 = +[NSFileManager defaultManager];
    v35 = [a1[6] superbinaryURL];
    v73 = 0;
    v36 = [v34 copyItemAtURL:v35 toURL:v33 error:&v73];
    v37 = v73;

    v38 = *(a1[4] + 1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      if (v36)
      {
        v51 = @"copied";
      }

      else
      {
        v51 = @"could not copy";
      }

      v52 = a1[6];
      v53 = v38;
      v54 = [v52 superbinaryURL];
      *buf = 136316162;
      v76 = "[UARPHostManager layer3EndpointAssetFullyStaged:rxDynamicAsset:]_block_invoke";
      v77 = 2112;
      v78 = v51;
      v79 = 2112;
      v80 = v54;
      v81 = 2112;
      v82 = v33;
      v83 = 2112;
      v84 = v37;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s: %@ solicited asset %@ to %@; error %@", buf, 0x34u);
    }

    v60 = v13;
    v61 = v12;
    v39 = [a1[6] asset4cc];
    v40 = [v39 isEqual:v67];

    if (v40)
    {
      [a1[4] asyncProcessMTIC:v33];
    }

    v55 = v33;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = *(a1[4] + 21);
    v41 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v70;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v70 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v69 + 1) + 8 * i);
          v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[6] processingStatus]);
          v47 = [v45 xpcConnection];
          v48 = [v47 remoteObjectProxy];
          v49 = [a1[5] uuid];
          v50 = [a1[6] uuid];
          [v48 endpointControllerDelegateAssetTransferStatus:v49 assetUUID:v50 transferStatus:v46];
        }

        v42 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v42);
    }

    v4 = v64;
  }

  else
  {
    v19 = *(a1[4] + 1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = a1[5];
      *buf = 136315394;
      v76 = "[UARPHostManager layer3EndpointAssetFullyStaged:rxDynamicAsset:]_block_invoke";
      v77 = 2112;
      v78 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10000E918(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v5 = [a1[6] uuid];
    v6 = [v4 findPersonalizingAssetByUUID:v5];

    if (!v6)
    {
      v7 = *(a1[4] + 1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10007BDDC(a1 + 6, v7, v4);
      }
    }

    [a1[4] personalizeSuperBinary:a1[6] hostEndpoint:v4];
  }

  else
  {
    v8 = *(a1[4] + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      v10 = 136315394;
      v11 = "[UARPHostManager layer3EndpointPersonalizationNeeded:asset:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", &v10, 0x16u);
    }
  }
}

void sub_10000EB7C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = [v3 findHostEndpointByUUID:v4];

  if (v5)
  {
    v6 = [*(a1 + 48) superbinaryURL];
    v7 = [v6 URLByDeletingLastPathComponent];

    v8 = [NSURL fileURLWithPath:@"personalizedSuperBinary.uarp" isDirectory:0 relativeToURL:v7];
    v51 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
    v66 = v51;
    v9 = [NSArray arrayWithObjects:&v66 count:1];
    v10 = *(a1 + 48);
    v59 = 0;
    [v10 writeToURL:v8 excludeTags:v9 error:&v59];
    v55 = v59;
    v11 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10007BF9C(v11);
    }

    v12 = [NSURL fileURLWithPath:@"originalSuperBinary.uarp" isDirectory:0 relativeToURL:v7];
    v13 = +[NSFileManager defaultManager];
    v14 = [*(a1 + 48) superbinaryURL];
    [v13 moveItemAtURL:v14 toURL:v12 error:0];

    v15 = +[NSDate now];
    v64 = NSFileModificationDate;
    v54 = v15;
    v65 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v17 = +[NSFileManager defaultManager];
    v56 = v12;
    v18 = [v12 path];
    v58 = 0;
    v53 = v16;
    v19 = [v17 setAttributes:v16 ofItemAtPath:v18 error:&v58];
    v20 = v58;

    if ((v19 & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007C038();
    }

    v50 = v20;
    [v5 personalizationComplete:*(a1 + 48)];
    v21 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10007C0EC(v21);
    }

    [*(a1 + 48) tssRequests];
    v22 = v8;
    v57 = v23 = v51;
    if (v57)
    {
      v24 = [*(a1 + 48) superbinaryURL];
      v25 = [v24 URLByDeletingLastPathComponent];

      v26 = [NSURL fileURLWithPath:@"tssRequest.plist" isDirectory:0 relativeToURL:v25];
      [v57 writeToURL:v26 error:0];
      v27 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = v27;
        [v26 path];
        v29 = v22;
        v31 = v30 = v7;
        *buf = 136315394;
        v61 = "[UARPHostManager layer3EndpointAssetPersonalizationComplete:asset:status:]_block_invoke";
        v62 = 2112;
        v63 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s: Tatsu Request saved to %@", buf, 0x16u);

        v7 = v30;
        v22 = v29;
        v23 = v51;
      }
    }

    v32 = [*(a1 + 48) tssResponses];
    if (v32)
    {
      v52 = v9;
      v33 = v23;
      v34 = v22;
      v35 = v7;
      v36 = [*(a1 + 48) superbinaryURL];
      v37 = [v36 URLByDeletingLastPathComponent];

      v38 = [NSURL fileURLWithPath:@"tssResponse.plist" isDirectory:0 relativeToURL:v37];
      [v32 writeToURL:v38 error:0];
      v39 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = v39;
        v41 = [v38 path];
        *buf = 136315394;
        v61 = "[UARPHostManager layer3EndpointAssetPersonalizationComplete:asset:status:]_block_invoke";
        v62 = 2112;
        v63 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s: Tatsu Response saved to %@", buf, 0x16u);
      }

      v7 = v35;
      v22 = v34;
      v23 = v33;
      v9 = v52;
    }

    v42 = *(a1 + 56);
    if (v42 <= 7 && ((1 << v42) & 0xB8) != 0)
    {
      v43 = *(a1 + 32);
      v44 = [*(a1 + 48) uuid];
      [v43 notifyControllersPersonalizationStatus:v5 assetUUID:v44 status:*(a1 + 56)];

      if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10007C188();
      }

      [v5 hostEntryDeviceTransportTeardown];
    }

    else
    {
      v45 = *(a1 + 32);
      v46 = [*(a1 + 48) uuid];
      [v45 notifyControllersPersonalizationStatus:v5 assetUUID:v46 status:*(a1 + 56)];

      if ([*(a1 + 48) needsStaging])
      {
        v47 = *(*(a1 + 32) + 8);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v61 = "[UARPHostManager layer3EndpointAssetPersonalizationComplete:asset:status:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s: stageAndApplyFirmwareAssetInternal personalized asset", buf, 0xCu);
        }

        v48 = *(a1 + 32);
        v49 = [*(a1 + 48) uuid];
        [v48 stageAndApplyFirmwareAssetInternal:v22 assetUUID:v49 hostEndpoint:v5 tssServerURL:0 needsStaging:objc_msgSend(*(a1 + 48) autoApply:{"needsStaging"), objc_msgSend(*(a1 + 48), "autoApply")}];
      }
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10007C208(v2);
  }
}

void sub_10000F4B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v5 = [UARPHostEndpoint alloc];
    v7 = *(a1 + 48);
    v6 = (a1 + 48);
    v8 = +[NSUUID UUID];
    v9 = [(UARPHostEndpoint *)v5 initWithUpstreamEndpoint:v4 downstreamID:v7 uuid:v8 hostManager:*(v6 - 2) tempFolderPath:*(*(v6 - 2) + 40)];

    v10 = [(UARPHostEndpoint *)v9 prepareEndpoint];
    v11 = *(v6 - 2);
    if (v10)
    {
      [*(v11 + 152) addObject:v9];
    }

    else if (os_log_type_enabled(*(v11 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007C33C(v6);
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[UARPHostManager layer3DownstreamEndpointReachable:downstreamID:]_block_invoke";
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", &v14, 0x16u);
    }
  }
}

void sub_10000F710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 findDownstreamEndpointByHostEndpoint:v4 downstreamID:*(a1 + 48)];
    v7 = *(*(a1 + 32) + 8);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 48);
        v14 = 136315650;
        v15 = "[UARPHostManager layer3DownstreamEndpointUnreachable:downstreamID:]_block_invoke";
        v16 = 1024;
        *v17 = v9;
        *&v17[4] = 2112;
        *&v17[6] = v6;
        v10 = "%s: Downstream Endpoint for %d is %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v10, &v14, 0x1Cu);
      }
    }

    else if (v8)
    {
      v13 = *(a1 + 48);
      v14 = 136315650;
      v15 = "[UARPHostManager layer3DownstreamEndpointUnreachable:downstreamID:]_block_invoke";
      v16 = 2112;
      *v17 = v4;
      *&v17[8] = 1024;
      *&v17[10] = v13;
      v10 = "%s: Host Endpoint %@, no matching Downstream Endpoint for %d";
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v11 = v5[1];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v14 = 136315394;
    v15 = "[UARPHostManager layer3DownstreamEndpointUnreachable:downstreamID:]_block_invoke";
    v16 = 2112;
    *v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", &v14, 0x16u);
  }

LABEL_11:
}

void sub_10000F9AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    [v4 hostEntryDeviceTransportTeardown];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v16 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];
          v11 = [v4 uuid];
          v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
          [v10 endpointControllerDelegateAppliedStagedAssets:v11 layer3Flags:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v13 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      *buf = 136315394;
      v22 = "[UARPHostManager layer3EndpointAppliedStagedAssets:layer3Flags:]_block_invoke";
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10000FC7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(*(a1 + 32) + 168);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) xpcConnection];
          v11 = [v10 remoteObjectProxy];
          v12 = [v4 uuid];
          [v11 endpointControllerDelegateRescindedAssets:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v13 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      *buf = 136315394;
      v21 = "[UARPHostManager layer3EndpointRescindedAssets:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10000FF44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v19 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];

          v11 = [v4 uuid];
          v12 = [*(a1 + 48) uuid];
          v13 = [*(a1 + 48) asset4cc];
          v14 = [v13 tagString];
          [v10 endpointControllerDelegateAssetOffered:v11 assetUUID:v12 assetTag:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v15 = [v4 layer3Endpoint];
    [v15 acceptLayer3Asset:*(a1 + 48)];
  }

  else
  {
    v16 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      *buf = 136315394;
      v25 = "[UARPHostManager layer3EndpointAssetOffered:asset:]_block_invoke";
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_10001026C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v18 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];

          v11 = [v4 uuid];
          v12 = [*(a1 + 48) uuid];
          v13 = [*(a1 + 48) asset4cc];
          v14 = [v13 tagString];
          [v10 endpointControllerDelegateAssetMetaDataComplete:v11 assetUUID:v12 assetTag:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      *buf = 136315394;
      v24 = "[UARPHostManager layer3EndpointAssetMetaDataComplete:asset:]_block_invoke";
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_1000105A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v19 = v4;
  if (v4)
  {
    [*(a1 + 40) acceptLayer3Payload:*(a1 + 48)];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v20 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) index]);
          v12 = [v19 uuid];
          v13 = [*(a1 + 48) uuid];
          v14 = [*(a1 + 56) payload4cc];
          v15 = [v14 tagString];
          [v10 endpointControllerDelegateAssetPayloadReady:v12 assetUUID:v13 payloadTag:v15 payloadIndex:v11];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v16 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      *buf = 136315394;
      v26 = "[UARPHostManager layer3EndpointPayloadReady:asset:payload:]_block_invoke";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_100010910(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v19 = v4;
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v20 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) index]);
          v12 = [v19 uuid];
          v13 = [*(a1 + 56) uuid];
          v14 = [*(a1 + 48) payload4cc];
          v15 = [v14 tagString];
          [v10 endpointControllerDelegateAssetPayloadMetaDataComplete:v12 assetUUID:v13 payloadTag:v15 payloadIndex:v11];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v16 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      *buf = 136315394;
      v26 = "[UARPHostManager layer3EndpointPayloadMetaDataComplete:asset:payload:]_block_invoke";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_100010CA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v19 = v4;
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(*(a1 + 32) + 168);
    v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v20)
    {
      v18 = *v22;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(*(&v21 + 1) + 8 * i) xpcConnection];
          v7 = [v6 remoteObjectProxy];

          v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) index]);
          v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
          v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) length]);
          v11 = [v19 uuid];
          v12 = [*(a1 + 64) uuid];
          v13 = [*(a1 + 48) payload4cc];
          v14 = [v13 tagString];
          [v7 endpointControllerDelegateAssetPayloadData:v11 assetUUID:v12 payloadTag:v14 payloadIndex:v8 payloadOffset:v9 dataLength:v10];
        }

        v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      *buf = 136315394;
      v27 = "[UARPHostManager layer3EndpointPayloadData:asset:payload:offset:payloadData:]_block_invoke";
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_100011060(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 findHostEndpointByUUID:v3];

  v19 = v4;
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(*(a1 + 32) + 168);
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v20 + 1) + 8 * i) xpcConnection];
          v10 = [v9 remoteObjectProxy];

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) index]);
          v12 = [v19 uuid];
          v13 = [*(a1 + 56) uuid];
          v14 = [*(a1 + 48) payload4cc];
          v15 = [v14 tagString];
          [v10 endpointControllerDelegateAssetPayloadDataComplete:v12 assetUUID:v13 payloadTag:v15 payloadIndex:v11];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v16 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      *buf = 136315394;
      v26 = "[UARPHostManager layer3EndpointPayloadDataComplete:asset:payload:]_block_invoke";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Layer 3 Endpoint %@, no matching Host Endpoint", buf, 0x16u);
    }
  }
}

void sub_1000127F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012814(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001282C(void *a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1[4] + 240);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 uuid];
        v9 = UARPLayer3MatchingUUIDs(v8, a1[5]);

        if (v9)
        {
          v19 = *(a1[4] + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v7;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found entry in UUID Database; %@", buf, 0xCu);
          }

          objc_storeStrong((*(a1[6] + 8) + 40), v7);

          return;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = *(a1[4] + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 UUIDString];
    *buf = 136315394;
    v25 = "[UARPHostManager matchingDatabaseEntry:]_block_invoke";
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: uuid not found in database; %@", buf, 0x16u);
  }

  v14 = a1 + 5;
  v15 = [[UARPEndpointDatabaseEntry2 alloc] initWithUUID:a1[5]];
  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (!*(*(a1[6] + 8) + 40))
  {
    v18 = *(a1[4] + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10007CFD4(v14, v18);
    }
  }
}

id sub_100012B74(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 240);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isEqual:{*(a1 + 40), v9}] & 1) != 0 || objc_msgSend(v7, "isMatch:", *(a1 + 40)))
        {
          [v7 updateWithMatch:*(a1 + 40)];

          return [*(a1 + 32) flushDatabase];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 240) addObject:*(a1 + 40)];
  return [*(a1 + 32) flushDatabase];
}

void sub_100015B50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id sub_100015BB0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_100015D9C(void *a1)
{
  memset(v7, 0, sizeof(v7));
  v6 = 23;
  [*(a1[4] + 40) getUUIDBytes:v7];
  *&v7[16] = 0;
  v7[20] = a1[6];
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableData data];
  v4 = 3;
  [v3 appendBytes:&v4 length:4];
  [v3 appendBytes:&v6 length:23];
  [v3 appendData:a1[5]];
  memset(&v5, 0, sizeof(v5));
  gettimeofday(&v5.ts, 0);
  v5.caplen = [v3 length];
  v5.len = [v3 length];
  pcap_dump(*(a1[4] + 24), &v5, [v3 bytes]);
  pcap_dump_flush(*(a1[4] + 24));

  objc_autoreleasePoolPop(v2);
}

pcap_dumper_t *sub_100015FE8(id *a1)
{
  [a1[4] closeDumper];
  v2 = [a1[5] copy];
  v3 = a1[4];
  v4 = v3[5];
  v3[5] = v2;

  result = pcap_open_dead(157, 0x80000);
  *(a1[4] + 2) = result;
  if (*(a1[4] + 2))
  {
    v6 = [a1[6] stringByExpandingTildeInPath];
    v7 = a1[4];
    v8 = v7[4];
    v7[4] = v6;

    *(a1[4] + 3) = pcap_dump_open(*(a1[4] + 2), [*(a1[4] + 4) UTF8String]);
    result = *(a1[4] + 3);
    if (result)
    {

      return pcap_dump_flush(result);
    }
  }

  return result;
}

uint64_t start()
{
  v0 = os_log_create("com.apple.uarp", "daemon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = getprogname();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: Launched", buf, 0xCu);
  }

  v1 = sub_1000063D4(v0);
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10007E4D8();
    }
  }

  else
  {
    v3 = v0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = getprogname();
      *buf = 136315138;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Sandbox initialized", buf, 0xCu);
    }

    v5 = [NSString stringWithUTF8String:"/var/db/accessoryupdater/uarpd/"];
    v6 = [[UARPHostManager alloc] initWithTempFolder:v5 infoProperties:0 appleProperties:0];
    v7 = v6;
    if (v6)
    {
      v13 = 0;
      [(UARPHostManager *)v6 createTempFolders:&v13];
      v8 = v13;
      if ([(UARPHostManager *)v7 loadMappingDatabase])
      {
        if ([(UARPHostManager *)v7 loadTMAPDatabase])
        {
          if ([(UARPHostManager *)v7 activateDaemonMode])
          {
            v10 = dispatch_queue_create("com.apple.uarpd.assets", 0);
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_1000163EC;
            v12[3] = &unk_1000B8C40;
            v12[4] = v3;
            v12[5] = v7;
            v11 = objc_retainBlock(v12);
            xpc_set_event_stream_handler([kUARPAssetAvailabilityXPCEventName UTF8String], v10, v11);
            dispatch_main();
          }

          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_10007E574();
          }
        }

        else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10007E540();
        }
      }

      else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10007E50C();
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007E5A8();
    }

    v2 = 1;
  }

  return v2;
}

void sub_1000163EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "main_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Asset Availability Event", &v5, 0xCu);
  }

  [*(a1 + 40) handleAssetAvailabilityEvent:v3];
}

void sub_100016758(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForEntitlement:*(*(a1 + 40) + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 BOOLValue])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) acceptNewConnection:*(a1 + 32)];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000169B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000169FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007E5DC(a1, v4);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E684();
  }
}

void sub_100016A78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = objc_loadWeakRetained((a1 + 40));
      v7[0] = 67109120;
      v7[1] = [v6 processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v7, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E6CC();
  }
}

void sub_1000178A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000178D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (os_log_type_enabled(*(WeakRetained + 2), OS_LOG_TYPE_ERROR))
    {
      sub_10007E714(v2);
    }

    v3 = objc_loadWeakRetained(v2 + 7);
    [v3 endpointDisconnection:v2];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E78C();
  }
}

void sub_100017960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (os_log_type_enabled(*(WeakRetained + 2), OS_LOG_TYPE_ERROR))
    {
      sub_10007E7D0(v2);
    }

    v3 = objc_loadWeakRetained(v2 + 7);
    [v3 endpointDisconnection:v2];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E848();
  }
}

void sub_100017C14(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 144) directConfiguration];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 assetIdentifier];

    if (!v4)
    {
      v5 = *v1;
      v6 = [v3 appleModelNumber];
      v7 = [v5 assetIdentifierForAppleModelNumber:v6];
      [v3 setAssetIdentifier:v7];

      v8 = *(*v1 + 16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10007E88C(v8, v3);
      }
    }

    v9 = [v3 firmwareVersion];
    [*(*v1 + 80) setActiveFirmwareVersion:v9];

    v10 = [v3 appleModelNumber];
    [*(*v1 + 80) setAppleModelNumber:v10];

    v11 = [v3 assetIdentifier];
    [*(*v1 + 80) setAssetIdentifier:v11];

    v12 = [v3 firmwareVersion];
    [*(*v1 + 80) setActiveFirmwareVersion:v12];

    v13 = [v3 friendlyName];
    [*(*v1 + 80) setFriendlyName:v13];

    v14 = [v3 hwFusingType];
    [*(*v1 + 80) setHardwareFusing:v14];

    v15 = [v3 serialNumber];
    [*(*v1 + 80) setSerialNumber:v15];

    WeakRetained = objc_loadWeakRetained((*v1 + 56));
    [WeakRetained updateDatabaseEntry:*(*v1 + 80)];

    v17 = [v3 appleModelNumber];
    v18 = [v3 assetIdentifier];

    if (v18)
    {
      v19 = *(*v1 + 16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v3 appleModelNumber];
        v22 = [v3 assetIdentifier];
        v36 = 136315650;
        v37 = "[UARPHostEndpoint subscribeToAssetManagerEvents]_block_invoke";
        v38 = 2112;
        v39 = v21;
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: configuration specifies an AssetIdentifer of %@, which overrides AppleModelNumber of %@", &v36, 0x20u);
      }

      v23 = [v3 assetIdentifier];

      v17 = v23;
    }

    v24 = [v3 serialNumber];
    v25 = [v3 hwFusingType];
    v26 = [v25 lowercaseString];
    v27 = [v3 hardwareVersion];
    v28 = [v3 firmwareVersion];
    v29 = [v28 versionString];
    v30 = [v3 friendlyName];
    v31 = createEndpointPersonality();
    v32 = *(*v1 + 160);
    *(*v1 + 160) = v31;

    v33 = *(*v1 + 16);
    if (*(*v1 + 160))
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_10007E960(v1);
      }

      v34 = objc_opt_new();
      v35 = *v1;
      if (v34)
      {
        if (*(v35 + 64) == 1)
        {
          if (os_log_type_enabled(*(v35 + 16), OS_LOG_TYPE_DEBUG))
          {
            sub_10007E9D8(v1);
          }

          v35 = *v1;
        }

        [v34 subscribeForPersonality:*(v35 + 160)];
        if (*(*v1 + 64) == 1 && os_log_type_enabled(*(*v1 + 16), OS_LOG_TYPE_DEBUG))
        {
          sub_10007EA50(v1);
        }
      }

      else if (os_log_type_enabled(*(v35 + 16), OS_LOG_TYPE_ERROR))
      {
        sub_10007EAC8(v1);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10007EB44(v1);
    }
  }

  else if (os_log_type_enabled(*(*v1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_10007EBC0(v1);
  }
}

uint64_t sub_1000181F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001820C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 144) directConfiguration];
  v2 = [v5 firmwareVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100018368(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 144) directConfiguration];
  v2 = [v5 stagedFirmwareVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100019B60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[UARPHostEndpoint hostEntryDeviceTransportSetup]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v5, 0x16u);
  }

  v4 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v4 hostEndpointDelegateTransportSetup:*(*(a1 + 32) + 8)];
}

void sub_100019CB4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v5 = *(v3 + 72);
    v13 = 136315650;
    v14 = "[UARPHostEndpoint hostEntryDeviceTransportTeardown]_block_invoke";
    v15 = 2112;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, transport release policy is %ld", &v13, 0x20u);
  }

  v6 = [*(*(a1 + 32) + 144) transfersInProgress];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v7 + 16);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 8);
      v13 = 136315394;
      v14 = "[UARPHostEndpoint hostEntryDeviceTransportTeardown]_block_invoke";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, transfers still in progress", &v13, 0x16u);
    }
  }

  else if (*(v7 + 72) == 2)
  {
    v10 = *(v7 + 16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 8);
      v13 = 136315394;
      v14 = "[UARPHostEndpoint hostEntryDeviceTransportTeardown]_block_invoke";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, release transport immediately", &v13, 0x16u);
    }

    v12 = [*(*(a1 + 32) + 40) remoteObjectProxy];
    [v12 hostEndpointDelegateTransportTeardown:*(*(a1 + 32) + 8)];
  }
}

void sub_100019F04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[UARPHostEndpoint hostEntryDeviceTransportNotNeeded]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v5, 0x16u);
  }

  v4 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v4 hostEndpointDelegateTransportNotNeeded:*(*(a1 + 32) + 8)];
}

void sub_10001A058(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[UARPHostEndpoint hostEntryDeviceUnresponsive]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v5, 0x16u);
  }

  v4 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v4 hostEndpointDelegateUnresponsive:*(*(a1 + 32) + 8)];
}

void sub_10001A1D0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 66) == 1)
  {
    v4 = *(v2 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10007F5E8(a1, v4, v3);
    }

    v2 = *v3;
  }

  v5 = [*(v2 + 40) remoteObjectProxy];
  [v5 hostEndpointDelegateUARPMessageSend:*(*(a1 + 32) + 8) uarpMessage:*(a1 + 40)];
}

void sub_10001A2CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[UARPHostEndpoint hostEntryDevicePropertiesUpdated]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v5, 0x16u);
  }

  v4 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v4 hostEndpointDelegatePropertiesUpdated:*(*(a1 + 32) + 8)];
}

void sub_10001A490(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (*(v2 + 66) == 1)
  {
    if (os_log_type_enabled(*(v2 + 16), OS_LOG_TYPE_DEBUG))
    {
      sub_10007F6A4(v3);
    }

    v2 = *v3;
  }

  v4 = [*(v2 + 40) remoteObjectProxy];
  [v4 hostEndpointDelegateAssetTransferProgress:*(a1[4] + 8) assetUUID:a1[5] bytesTransferred:a1[6] totalBytes:a1[7]];
}

void sub_10001A5E0(void *a1)
{
  v2 = *(a1[4] + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v5 = a1[6];
    v7 = 136315906;
    v8 = "[UARPHostEndpoint hostEntryDeviceAssetTransferStatus:transferStatus:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, assetUUID is %@, transferStatus is %@", &v7, 0x2Au);
  }

  v6 = [*(a1[4] + 40) remoteObjectProxy];
  [v6 hostEndpointDelegateAssetTransferStatus:*(a1[4] + 8) assetUUID:a1[5] transferStatus:a1[6]];
}

void sub_10001BD64(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t *sub_10001BD98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10001BDA4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id sub_10001BDC4(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_10001BDDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id sub_10001BEC4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"manufacturerName"];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"modelName"];
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 32);
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"activeFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 40))
  {
    v8 = UARPDeviceTransportToString();
    [v3 setObject:v8 forKeyedSubscript:@"transportType"];

    v4 = *(a1 + 32);
  }

  v9 = *(v4 + 48);
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"countryCode"];
    v4 = *(a1 + 32);
  }

  v10 = *(v4 + 56);
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:@"postedFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  v11 = *(v4 + 64);
  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"downloadURL"];
    v4 = *(a1 + 32);
  }

  v12 = *(v4 + 80);
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"downloadUserInitiated"];
    v4 = *(a1 + 32);
  }

  v13 = *(v4 + 88);
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"stagingUserInitiated"];
    v4 = *(a1 + 32);
  }

  v14 = *(v4 + 112);
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"stagingVendorError"];
    v4 = *(a1 + 32);
  }

  v15 = *(v4 + 120);
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"applyUserInitiated"];
    v4 = *(a1 + 32);
  }

  v16 = *(v4 + 136);
  if (v16)
  {
    [v3 setObject:v16 forKeyedSubscript:@"applyVendorError"];
    v4 = *(a1 + 32);
  }

  v17 = [NSNumber numberWithBool:*(v4 + 8)];
  [v3 setObject:v17 forKeyedSubscript:@"share3rdParty"];

  v18 = [NSDictionary dictionaryWithDictionary:v3];

  return v18;
}

id sub_10001C3C4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"manufacturerName"];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"modelName"];
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 32);
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"countryCode"];
    v4 = *(a1 + 32);
  }

  v8 = *(v4 + 40);
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"downloadURL"];
    v4 = *(a1 + 32);
  }

  v9 = *(v4 + 48);
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"activeFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 56))
  {
    v10 = UARPDeviceTransportToString();
    [v3 setObject:v10 forKeyedSubscript:@"transportType"];

    v4 = *(a1 + 32);
  }

  v11 = [NSNumber numberWithBool:*(v4 + 8)];
  [v3 setObject:v11 forKeyedSubscript:@"share3rdParty"];

  v12 = [NSDictionary dictionaryWithDictionary:v3];

  return v12;
}

void sub_10001C7C0(uint64_t a1)
{
  length = 0;
  data = xpc_dictionary_get_data(*(a1 + 32), [@"tatsuRequests" UTF8String], &length);
  if (data)
  {
    v3 = [NSData dataWithBytes:data length:length];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v4, v5, v6, v7, v8, objc_opt_class(), 0];
    v27 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v3 error:&v27];
    v26 = v27;
    v11 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: TSS Request is %@", buf, 0x16u);
    }

    string = xpc_dictionary_get_string(*(a1 + 32), [@"endpointUUID" UTF8String]);
    v13 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2080;
      v32 = string;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: TSS Request for endpoint UUID %s", buf, 0x16u);
    }

    v14 = [NSString stringWithUTF8String:string];
    v15 = [[NSUUID alloc] initWithUUIDString:v14];
    v16 = xpc_dictionary_get_string(*(a1 + 32), [@"assetUUID" UTF8String]);
    v17 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2080;
      v32 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: TSS Request for asset UUID %s", buf, 0x16u);
    }

    v18 = [NSString stringWithUTF8String:v16];
    v19 = [[NSUUID alloc] initWithUUIDString:v18];
    v20 = xpc_dictionary_get_string(*(a1 + 32), [@"tatsuServerURL" UTF8String]);
    if (v20)
    {
      v21 = v20;
      v22 = *(*(a1 + 40) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
        v31 = 2080;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: TSS Request destined for %s", buf, 0x16u);
      }

      v23 = [NSString stringWithUTF8String:v21];
      v24 = [NSURL URLWithString:v23];
    }

    else
    {
      v24 = 0;
    }

    [*(a1 + 40) personalizeAssetWithSSO:v19 endpointUUID:v15 tssOptions:v10 tssServerURL:v24];
  }

  else
  {
    v25 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10007F948(v25);
    }
  }
}

void sub_10001D1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007FA04(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_10007FA3C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_10001D274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007FA78(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_10007FAB0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_10001D3D8(void *a1)
{
  v2 = [*(a1[4] + 40) remoteObjectProxy];
  [v2 assetPersonalizationComplete:a1[5] endpointUUID:a1[6] tssOptions:a1[7]];
}

void sub_10001D744(uint64_t a1)
{
  v3 = [*(a1 + 32) valueForEntitlement:*(*(a1 + 40) + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v3 BOOLValue];
    if (v2)
    {
      LOBYTE(v2) = [*(*(a1 + 40) + 40) addTransportConnection:*(a1 + 32)];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_10001DB6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_10001DB9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (os_log_type_enabled(*(WeakRetained + 2), OS_LOG_TYPE_ERROR))
    {
      sub_10007FAEC(v2);
    }

    v3 = objc_loadWeakRetained(v2 + 5);
    [v3 controllerDisconnection:v2];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E78C();
  }
}

void sub_10001DC28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 8);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v6, 8u);
    }

    v5 = objc_loadWeakRetained(v2 + 5);
    [v5 controllerDisconnection:v2];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E848();
  }
}

void sub_100025314(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t uarpPlatformEndpointStreamingRecvInit(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    UARPLayer2RequestBuffer(a1, &v7, 0x18uLL, 0xFFFF, 37);
    if (v7)
    {
      v5 = *(a2 + 4) + 36;
      UARPLayer2RequestBuffer(a1, v7, v5, 0xFFFF, 49);
      v6 = v7;
      if (*v7)
      {
        result = 0;
        *(v7 + 2) = v5;
        *(a2 + 96) = v6;
        return result;
      }

      UARPLayer2ReturnBuffer(a1, v7, 0xFFFF, 56);
    }

    return 11;
  }

  return result;
}

void uarpPlatformEndpointStreamingRecvDeinit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 96);
      if (v3)
      {
        if (*v3)
        {
          UARPLayer2ReturnBuffer(a1, *v3, 0xFFFF, 86);
          v3 = *(a2 + 96);
          *v3 = 0;
        }

        UARPLayer2ReturnBuffer(a1, v3, 0xFFFF, 94);
        *(a2 + 96) = 0;
      }
    }
  }
}

uint64_t uarpPlatformEndpointStreamingRecvBytes(uint64_t a1, void *a2, char *a3, int a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        LODWORD(v8) = a4;
        if (a4)
        {
          v9 = a2[12];
          if (v9)
          {
            goto LABEL_6;
          }

          result = uarpPlatformEndpointStreamingRecvInit(a1, a2);
          if (result)
          {
            return result;
          }

          v9 = a2[12];
          if (v9)
          {
LABEL_6:
            if (v9[2] >= v8)
            {
              v8 = v8;
              v10 = v9[4];
              do
              {
                v11 = *v7++;
                *(*v9 + v10) = v11;
                v10 = v9[4] + 1;
                v9[4] = v10;
                if (v10 == 6)
                {
                  v12 = uarpNtohs(*(*v9 + 2)) + 6;
                  v9[3] = v12;
                  v10 = v9[4];
                }

                else
                {
                  v12 = v9[3];
                }

                if (v10 == v12)
                {
                  result = uarpPlatformEndpointRecvMessage(a1, a2, *v9, v12);
                  if (result)
                  {
                    return result;
                  }

                  bzero(*v9, v9[2]);
                  v10 = 0;
                  v9[3] = 0;
                  v9[4] = 0;
                }

                --v8;
              }

              while (v8);
              return 0;
            }

            else
            {
              return 30;
            }
          }

          else
          {
            return 27;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetProcessingCompleteInternal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 30;
  if (a1 && a3)
  {
    if (uarpPlatformAssetIsKnown(a1, a2, a3))
    {
      *(a3 + 72) = 1;
      *(a3 + 696) = 0;
      if (!a2 || (result = uarpAssetProcessingComplete(a1, a2, a3, a5 | a4), !result))
      {
        result = 0;
        if (a4 == 4 && !a6)
        {
          UARPLayer2AssetCorrupt(a1, a3);
          return 0;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetRequestData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 30;
  }

  v3 = *(a2 + 696);
  if (!v3)
  {
    return 30;
  }

  if (*(a2 + 73) == 1 || !*(v3 + 60))
  {
    return 31;
  }

  v4 = a3[2];
  v5 = a3[20];
  v6 = v5 + v4 + *a3;
  v7 = a3[1] - (v5 + v4);
  if (v7 >= a3[6] - v5)
  {
    v7 = a3[6] - v5;
  }

  a3[22] = v6;
  a3[23] = v7;
  if (v7 >= *(*(a2 + 696) + 4))
  {
    v8 = *(*(a2 + 696) + 4);
  }

  else
  {
    v8 = v7;
  }

  a3[23] = v8;
  return uarpSendAssetRequestData(a1, *(a2 + 696), *(a2 + 44), v6, v8);
}

uint64_t uarpPlatformAssetResponseData(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, int a5, int a6, size_t __n)
{
  if (a3)
  {
    v9 = a3;
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
    return v9;
  }

  if (*(a2 + 400) != a5)
  {
    return 29;
  }

  v10 = *(a2 + 404);
  if (v10 != a6 || v10 < __n)
  {
    return 29;
  }

  v12 = *(a2 + 392);
  if ((v12 + __n) > *(a2 + 336))
  {
    return 29;
  }

  *(a2 + 408) = __n;
  memcpy((*(a2 + 328) + v12), __src, __n);
  v14 = *(a2 + 392) + *(a2 + 408);
  *(a2 + 392) = v14;
  v15 = *(a2 + 320) + v14;
  v16 = *(a2 + 316);
  if (v15 > v16)
  {
    return 65;
  }

  if (v15 == v16 || v14 == *(a2 + 336))
  {
    v9 = (*(a2 + 376))(a1, a2, a2 + 312);
    if (v9)
    {
      return v9;
    }

    v17 = *(a2 + 392);
    v18 = *(a2 + 396);
    v19 = v17 - v18;
    if (v17 != v18)
    {
      if (v17 > *(a2 + 336))
      {
        return 65;
      }

      memcpy(*(a2 + 328), (*(a2 + 328) + v18), v17 - v18);
      v17 = *(a2 + 396);
    }

    *(a2 + 392) = v19;
    *(a2 + 320) += v17;
    *(a2 + 396) = 0;
  }

  if (v15 == v16)
  {
    v20 = *(a2 + 384);

    return v20(a1, a2, a2 + 312);
  }

  else
  {

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }
}

uint64_t uarpPlatformAssetUpdateMetaData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, unsigned int *))
{
  v4 = *(a3 + 80);
  if (v4 < 8)
  {
    return 0;
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = uarpNtohl(*v9);
    v11 = uarpNtohl(v9[1]);
    if (v11 > *(a3 + 24) - 8)
    {
      break;
    }

    v12 = v11;
    v13 = v4 - 8;
    v4 = v4 - 8 - v11;
    if (v13 >= v11)
    {
      v14 = v9 + 2;
      v15 = *(a3 + 84) + 8;
      *(a3 + 84) = v15;
      if (a4)
      {
        a4(a1, a2, v10, v11, v14);
        v15 = *(a3 + 84);
      }

      v9 = (v14 + v12);
      *(a3 + 84) = v15 + v12;
      if (v4 > 7)
      {
        continue;
      }
    }

    return 0;
  }

  return 53;
}

uint64_t uarpPlatformAssetSuperBinaryPullHeader(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0x2C00000000;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = sub_100025990;
  *(a2 + 384) = sub_100025AE0;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100025990(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = *(a3 + 2);
  *a2 = uarpNtohl(*v9);
  *(a2 + 4) = uarpNtohl(v9[1]);
  *(a2 + 8) = uarpNtohl(v9[2]);
  uarpVersionEndianSwap(v9 + 3, (a2 + 12));
  *(a2 + 28) = uarpNtohl(v9[7]);
  *(a2 + 32) = uarpNtohl(v9[8]);
  *(a2 + 36) = uarpNtohl(v9[9]);
  v10 = uarpNtohl(v9[10]);
  *(a2 + 40) = v10;
  a3[21] = a3[20];
  v12 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (__CFADD__(v11, v12))
  {
    return 8;
  }

  v15 = *(a2 + 68);
  v13 = 8;
  if (v15 >= v11 && v15 >= v12)
  {
    v16 = *(a2 + 36);
    if (!__CFADD__(v10, v16) && v15 >= v10 && v15 >= v16)
    {
      if (v12 + v11 <= v15 && v16 + v10 <= v15 && *(a2 + 4) == 44 && *a2 < 5u)
      {
        return 0;
      }

      else
      {
        uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
        return 47;
      }
    }
  }

  return v13;
}

uint64_t uarpPlatformAssetSuperBinaryPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      *(a2 + 688) = 0;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 440) = 0;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 312) = *(a2 + 28);
      *(a2 + 316) = v3;
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = sub_100025B7C;
      *(a2 + 384) = sub_100025C0C;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    return 40;
  }

  return v2;
}

uint64_t sub_100025B7C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2AssetMetaDataTLV);
  if (updated)
  {
    UARPLayer2AssetMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 688) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  v2 = *(a2 + 456);
  if (v2 > *(a2 + 448))
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 40 * v2 + 44;
  *(a2 + 316) = 40;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = sub_100025CAC;
  *(a2 + 384) = sub_100025D30;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100025CAC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = uarpPlatformAssetPayloadHeaderProcess(*(a3 + 2), a2 + 464, *(a2 + 68));
  if (v9)
  {
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    a3[21] = a3[20];
  }

  return v9;
}

uint64_t sub_100025D30(uint64_t a1, uint64_t a2)
{
  *(a2 + 452) = *(a2 + 456);
  UARPLayer2PayloadReady(a1, a2);
  return 0;
}

uint64_t uarpPlatformAssetPayloadHeaderProcess(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  *a2 = uarpNtohl(*a1);
  *(a2 + 4) = a1[1];
  uarpVersionEndianSwap(a1 + 2, (a2 + 8));
  *(a2 + 24) = uarpNtohl(a1[6]);
  *(a2 + 28) = uarpNtohl(a1[7]);
  *(a2 + 32) = uarpNtohl(a1[8]);
  v6 = uarpNtohl(a1[9]);
  *(a2 + 36) = v6;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0;
  *(a2 + 76) = 0;
  *(a2 + 128) = v6;
  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  v9 = __CFADD__(v7, v8);
  result = 8;
  if (v8 <= a3 && v7 <= a3 && !v9)
  {
    if (v8 + v7 <= a3)
    {
      v11 = *(a2 + 32);
      v12 = __CFADD__(v6, v11);
      if (v11 <= a3 && v6 <= a3)
      {
        if (v11 + v6 <= a3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 48;
        }

        if (v12)
        {
          return 8;
        }

        else
        {
          return v13;
        }
      }
    }

    else
    {
      return 48;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    else
    {
      v3 = *(a2 + 492);
      if (v3)
      {
        *(a2 + 512) = 0;
        *(a2 + 312) = 0u;
        *(a2 + 328) = 0u;
        *(a2 + 440) = 0;
        *(a2 + 344) = 0u;
        *(a2 + 360) = 0u;
        *(a2 + 376) = 0u;
        *(a2 + 392) = 0u;
        *(a2 + 408) = 0u;
        *(a2 + 424) = 0u;
        *(a2 + 312) = *(a2 + 488);
        *(a2 + 316) = v3;
        *(a2 + 328) = *(a2 + 640);
        *(a2 + 336) = *(a2 + 648);
        *(a2 + 376) = sub_100025EE8;
        *(a2 + 384) = sub_100025F78;
        return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
      }

      return 40;
    }
  }

  return v2;
}

uint64_t sub_100025EE8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2PayloadMetaDataTLV);
  if (updated)
  {
    UARPLayer2PayloadMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 512) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetPayloadPullData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    v5 = *(a2 + 508);
    v6 = *(a2 + 500);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      return 43;
    }

    v9 = *(a2 + 496) + v5;
    if (v9 > *(a2 + 8))
    {
      return 43;
    }

    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 440) = 0;
    *(a2 + 408) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 312) = v9;
    *(a2 + 316) = v8;
    *(a2 + 328) = *(a2 + 640);
    v10 = *(a2 + 648);
    *(a2 + 336) = v10;
    *(a2 + 368) = v10;
    *(a2 + 376) = sub_100026148;
    *(a2 + 384) = sub_1000261D4;
    if (*(a2 + 516) == 1)
    {
      *(a2 + 356) = 1;
      *(a2 + 336) = 10;
      *(a2 + 344) = *(a2 + 656);
      *(a2 + 352) = *(a2 + 664);
      *(a2 + 376) = sub_1000262AC;
    }

    v11 = *(a2 + 520);
    *(a2 + 412) = v11;
    UARPLayer2HashInfo(a1, v11, (a2 + 416), (a2 + 432));
    v12 = *(a2 + 416);
    if (v12)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 424), v12, 48059, 900);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 424))
      {
        return 11;
      }
    }

    v13 = *(a2 + 432);
    if (v13)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 440), v13, 48059, 917);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 440))
      {
        return 11;
      }
    }

    UARPLayer2HashInit(a1, *(a2 + 412), *(a2 + 424));

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  return result;
}

uint64_t sub_100026148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 16), *(a3 + 80));
  v6 = (*(a3 + 8) + *a3);
  v7 = *(a2 + 496);
  v8 = *(a3 + 16);
  v9 = *(a3 + 80);
  UARPLayer2PayloadData(a1, a2);
  v10 = *(a3 + 80);
  *(a3 + 84) = v10;
  *(a2 + 508) += v10;
  return 0;
}

uint64_t sub_1000261D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 520);
  if (!v5)
  {
    goto LABEL_7;
  }

  UARPLayer2HashFinal(a1, v5, *(a3 + 112), *(a3 + 128), *(a3 + 120));
  v7 = uarpPlatformCompareHash(a1, *(a3 + 128), *(a3 + 120), *(a2 + 528), *(a2 + 536));
  v8 = *(a3 + 112);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 48059, 1073);
    *(a3 + 112) = 0;
    *(a3 + 104) = 0;
  }

  v9 = *(a3 + 128);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 48059, 1084);
    *(a3 + 128) = 0;
    *(a3 + 120) = 0;
  }

  *(a3 + 100) = 0;
  if (!v7)
  {
    UARPLayer2AssetCorrupt(a1, a2);
  }

  else
  {
LABEL_7:
    UARPLayer2PayloadDataComplete2(a1, a2);
  }

  return 0;
}

uint64_t sub_1000262AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  uarpCompressionHeaderEndianSwap(*(a3 + 16), a3 + 45);
  v5 = *(a3 + 80);
  *(a3 + 84) = v5;
  *(a2 + 508) += v5;
  *(a3 + 44) = 0;
  v6 = *(a3 + 51);
  *(a3 + 24) = v6;
  if (*(a3 + 56) < v6 || *(a3 + 40) < *(a3 + 53))
  {
    return 51;
  }

  result = 0;
  *(a3 + 64) = sub_10002688C;
  return result;
}

uint64_t uarpPlatformAssetPullAllPayloadHeaders(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    if (*(a2 + 448) < 1)
    {
LABEL_7:
      *(a2 + 440) = 0;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 312) = *(a2 + 36);
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = sub_100026424;
      *(a2 + 384) = j__uarpPlatformAssetPullAllMetaData;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    else
    {
      v5 = 0;
      while (1)
      {
        result = UARPLayer2RequestBuffer(a1, &v7, 0xB8uLL, 48059, 1138);
        if (result)
        {
          break;
        }

        v6 = v7;
        v7[22] = *(a2 + 632);
        *(a2 + 632) = v6;
        if (++v5 >= *(a2 + 448))
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100026424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 448) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 16);
  v9 = *(a2 + 632);
  while (1)
  {
    if (!v9)
    {
      return 11;
    }

    if (v6 > *(a3 + 24))
    {
      return 48;
    }

    v10 = uarpPlatformAssetPayloadHeaderProcess(v8, v9, *(a2 + 68));
    if (v10)
    {
      break;
    }

    *(v9 + 124) = v7;
    v9 = *(v9 + 176);
    *(a3 + 84) += 40;
    ++v7;
    v6 += 40;
    v8 += 10;
    if (v7 >= *(a2 + 448))
    {
      return 0;
    }
  }

  v11 = v10;
  uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  return v11;
}

_DWORD *uarpProcessTLV(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a3 < 8)
  {
    return 0;
  }

  v5 = a3;
  v6 = uarpNtohl(*a2);
  v7 = uarpNtohl(a2[1]);
  v8 = v7;
  if (v7 > 0xFFFFFFE7 || v7 + 8 > v5)
  {
    return 0;
  }

  v12 = v7;
  v14 = 0;
  v13 = UARPLayer2RequestBuffer(a1, &v14, v7 + 24, 48059, 1252);
  v10 = 0;
  if (!v13)
  {
    v10 = v14;
    *v14 = v6;
    v10[1] = v12;
    memcpy(v10 + 6, a2 + 2, v8);
    *(v10 + 1) = v10 + 6;
  }

  return v10;
}

uint64_t uarpPlatformAssetPullAllMetaData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (!a1 || !a2)
  {
    return result;
  }

  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  v6 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(a2 + 312) = v6;
  *(a2 + 316) = v5;
  for (i = *(a2 + 632); i; i = *(i + 176))
  {
    v8 = *(i + 24);
    if (v8)
    {
      if (v8 != v5 + v6)
      {
        return 43;
      }

      v5 = (*(i + 28) + v5);
      *(a2 + 316) = v5;
    }
  }

  *(a2 + 680) = v5;
  *(a2 + 672) = 0;
  if (!v5)
  {
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 376) = sub_100026730;
    *(a2 + 384) = sub_100026868;
LABEL_15:
    UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
    return 0;
  }

  result = UARPLayer2RequestBuffer(a1, (a2 + 672), v5, 48059, 1328);
  if (result)
  {
    return result;
  }

  v9 = *(a2 + 680);
  v10 = *(a2 + 316);
  *(a2 + 328) = *(a2 + 672);
  *(a2 + 336) = v9;
  *(a2 + 376) = sub_100026730;
  *(a2 + 384) = sub_100026868;
  if (!v10)
  {
    goto LABEL_15;
  }

  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100026730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = *(a3 + 84);
  if (*(a3 + 80) - v4 < v3)
  {
    return 18;
  }

  if (v3)
  {
    v9 = *(a3 + 16);
    while (1)
    {
      v10 = uarpProcessTLV(a1, v9, v3);
      if (!v10)
      {
        return 10;
      }

      v11 = (v10[1] + 8);
      v9 = (v9 + v11);
      *(v10 + 2) = *(a2 + 720);
      *(a2 + 720) = v10;
      v3 -= v11;
      if (!v3)
      {
        v12 = *(a2 + 32);
        v4 = *(a3 + 84);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_9:
    v13 = v4 + v12;
    *(a3 + 84) = v13;
    v14 = *(a2 + 632);
    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 28);
        if (*(a3 + 80) - v13 < v15)
        {
          return 18;
        }

        if (v15)
        {
          v16 = (*(a3 + 16) + v13);
          while (1)
          {
            v17 = uarpProcessTLV(a1, v16, v15);
            if (!v17)
            {
              return 10;
            }

            v18 = (v17[1] + 8);
            v16 = (v16 + v18);
            *(v17 + 2) = *(v14 + 168);
            *(v14 + 168) = v17;
            v15 -= v18;
            if (!v15)
            {
              v19 = *(v14 + 28);
              v13 = *(a3 + 84);
              goto LABEL_17;
            }
          }
        }

        v19 = 0;
LABEL_17:
        result = 0;
        v13 += v19;
        *(a3 + 84) = v13;
        v14 = *(v14 + 176);
        if (!v14)
        {
          return result;
        }
      }
    }

    return 0;
  }
}

uint64_t sub_10002688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = UARPLayer2DecompressBuffer(a1, *(a3 + 45), *(a3 + 16), *(a3 + 51), *(a3 + 32), *(a3 + 53));
  if (v6)
  {
    v7 = *(a1 + 440);
    if (v7)
    {
      v7(*(a1 + 608), 2, "Error decompressing buffer for payload");
    }

    else
    {
      uarpLogError(2u, "Error decompressing buffer for payload");
    }

    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 32), *(a3 + 53));
    v8 = *(a3 + 32);
    v9 = *(a3 + 53);
    v10 = *(a3 + 47);
    UARPLayer2PayloadData(a1, a2);
    v11 = *(a3 + 24);
    *(a3 + 84) = v11;
    *(a2 + 508) += v11;
    *(a3 + 44) = 1;
    *(a3 + 24) = 10;
    *(a3 + 64) = sub_1000262AC;
  }

  return v6;
}

uint64_t UARPLayer2RequestBuffer(uint64_t a1, void **a2, size_t __size, __int16 a4, int a5)
{
  v7 = __size;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10(*(a1 + 608), a2, __size);
    if (v11)
    {
      return v11;
    }

    v12 = *a2;
    if (!*a2)
    {
      return 11;
    }
  }

  else
  {
    v12 = calloc(1uLL, __size);
    *a2 = v12;
    if (!v12)
    {
      return 11;
    }
  }

  v11 = *(a1 + 696);
  if (v11)
  {
    for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
    {
      if (!--v11)
      {
        return v11;
      }
    }

    v11 = 0;
    *(i - 2) = v12;
    *(i - 2) = v7;
    *(i - 2) = a4;
    *i = a5;
  }

  return v11;
}

void UARPLayer2ReturnBuffer(uint64_t a1, void *a2, __int16 a3, int a4)
{
  if (a2)
  {
    v4 = *(a1 + 696);
    if (v4)
    {
      v5 = (*(a1 + 704) + 24);
      while (*(v5 - 3) != a2 || *v5)
      {
        v5 += 8;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      *(v5 - 2) = a3;
      *v5 = a4;
    }

LABEL_10:
    v6 = *(a1 + 56);
    if (v6)
    {
      v6(*(a1 + 608));
    }

    else
    {
      free(a2);
    }
  }
}

uint64_t UARPLayer2RequestTransmitMsgBuffer(uint64_t a1, uint64_t a2, void **a3, int *a4, __int16 a5, int a6)
{
  v11 = *(a1 + 64);
  if (v11)
  {
    result = v11(*(a1 + 608), *(a2 + 40), a3, a4);
    if (!result)
    {
      if (*a3)
      {
        v13 = *(a1 + 696);
        if (v13)
        {
          for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
          {
            if (!--v13)
            {
              return 0;
            }
          }

          result = 0;
          *(i - 2) = *a3;
          *(i - 2) = *a4;
          *(i - 2) = a5;
          *i = a6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 11;
      }
    }
  }

  else
  {
    v15 = *a4;

    return UARPLayer2RequestBuffer(a1, a3, v15, a5, a6);
  }

  return result;
}

void UARPLayer2ReturnTransmitMsgBuffer(uint64_t a1, uint64_t a2, void *a3, __int16 a4, int a5)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 696);
    if (v6)
    {
      v7 = (*(a1 + 704) + 24);
      while (*(v7 - 3) != a3 || *v7)
      {
        v7 += 8;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      *(v7 - 2) = a4;
      *v7 = a5;
    }

LABEL_10:
    v5(*(a1 + 608), *(a2 + 40), a3);
  }

  else
  {
    UARPLayer2ReturnBuffer(a1, a3, a4, a5);
  }
}

uint64_t UARPLayer2SendMessage(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (!v5)
  {
    return 14;
  }

  if (*(a2 + 120))
  {
    uarpPlatformDownstreamEndpointSendMessageInternal(a1, *(a2 + 160), a2, a3, a4);
    return 0;
  }

  else
  {
    v7 = *(a1 + 608);
    v8 = *(a2 + 40);

    return v5(v7, v8, a3, a4);
  }
}

uint64_t UARPLayer2DataTransferPause(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferPauseAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResume(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResumeAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2SuperBinaryOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DynamicAssetOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ApplyStagedAssetsResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ManufacturerName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ManufacturerNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ModelName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ModelNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 176);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2SerialNumber(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2SerialNumberResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2HardwareVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2HardwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ActiveFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[69];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[69];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2ActiveFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 224);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StagedFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[29];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[70];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[70];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2StagedFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 240);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2LastError(uint64_t a1, void *a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    return v2(*(a1 + 608));
  }

  *a2 = -1;
  return 0;
}

uint64_t UARPLayer2LastErrorResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StatisticsResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetSolicitation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2RescindAllAssets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 280);
  if (v3)
  {
    if (a2)
    {
      a2 = *(a2 + 40);
    }

    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), a2, a3);
  }

  return result;
}

uint64_t UARPLayer2RescindAllAssetsAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 288);
  if (v3)
  {
    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), *(a2 + 40), a3);
  }

  return result;
}

uint64_t UARPLayer2WatchdogSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 296);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 1;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2WatchdogCancel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 0;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2MonotonicClockTime(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 312);
  if (!v2)
  {
    return 14;
  }

  v4 = v2(*(a1 + 608));
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t UARPLayer2ProtocolVersion(uint64_t result, uint64_t a2)
{
  v2 = *(result + 320);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2FriendlyName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 328);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2FriendlyNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointUnreachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReleased(uint64_t result, uint64_t a2)
{
  v2 = *(result + 496);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointRecvMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 16));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3NoFirmwareUpdateAvailable(uint64_t result, uint64_t a2)
{
  v2 = *(result + 512);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDComponents(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationQuery(uint64_t result, uint64_t a2)
{
  v2 = *(result + 360);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 368);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DecompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 376);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2CompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 384);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2HashInfo(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(result + 392);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t UARPLayer2HashInit(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 400);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2HashUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 408);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashFinal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 416);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashLog(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 424);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2LogPacket(uint64_t result, uint64_t a2)
{
  v2 = *(result + 432);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2VendorSpecificRecvMessage(void *a1, uint64_t a2)
{
  v2 = a1[65];
  if (v2)
  {
    return v2(a1[76], *(a2 + 40));
  }

  v4 = a1[82];
  if (v4)
  {
    return v4();
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2VendorSpecificCheckExpectedResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificCheckValidToSend(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificExceededRetries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 544);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataTLV(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

void *UARPLayer2PayloadMetaDataTLV(void *a1, uint64_t a2, uint64_t a3, size_t __size, unsigned int *a5)
{
  result = uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, a3, __size, a5);
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = a1[76];
    v13 = *(a2 + 704);

    return v11(v12, v13, a3, __size, a5);
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataComplete(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 540);
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = *(a2 + 568);
    v7 = *(a2 + 560);
    v8 = *(a2 + 544);
    v5();
  }

  result = uarpPlatformCompareHash(a1, *(a2 + 560), *(a2 + 568), *(a2 + 576), *(a2 + 584));
  if (!result)
  {
    v9 = *(a2 + 200);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
LABEL_5:
    v9 = *(a2 + 128);
    if (!v9)
    {
      return result;
    }
  }

  v10 = *(a1 + 608);
  v11 = *(a2 + 704);

  return v9(v10, v11);
}

uint64_t UARPLayer2AssetCorrupt(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadData(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete2(uint64_t result, void *a2)
{
  v2 = a2[20];
  if (v2)
  {
    return v2(*(result + 608), a2[88]);
  }

  v3 = a2[19];
  if (v3)
  {
    return v3(*(result + 608), a2[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetGetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v7 = a3[21];
  if (v7)
  {
    return v7(*(a1 + 608), a2, a3[88]);
  }

  v9 = a3[34];
  if (v9)
  {
    return v9(*(a1 + 608), a3[88], a4, a5, a6, a7);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetSetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v6 = a3[22];
  if (v6)
  {
    return v6(*(a1 + 608), a2, a3[88]);
  }

  v8 = a3[35];
  if (v8)
  {
    return v8(*(a1 + 608), a3[88], a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetRescinded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 184);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetRescindedAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 192);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetOrphaned(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetReleased2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = a3[27];
  if (v3)
  {
    return v3(*(result + 608), a2, a3[88]);
  }

  v4 = a3[36];
  if (v4)
  {
    return v4(*(result + 608), a3[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetProcessingNotification2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[28];
  if (v4)
  {
    return v4(*(a1 + 608), *(a2 + 40), a3[88]);
  }

  v6 = a3[37];
  if (v6)
  {
    return v6(*(a1 + 608), a3[88], a4);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 232);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetAllHeadersAndMetaDataComplete(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 256);
  if (v3)
  {
    return v3(*(result + 608), *(a2 + 40), *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetStore(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t uarpPlatformEndpointQueryActiveFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2ActiveFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformEndpointQueryStagedFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2StagedFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformAssetFindFirmware(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 46) == 1)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetID(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 44) == a4)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByTag(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  for (i = *(a1 + 632); i; i = *(i + 712))
  {
    if (*(i + 304) == a3 && *(i + 696) == a2 && uarpAssetTagCompare((i + 48), a4))
    {
      break;
    }
  }

  return i;
}

void uarpPlatformCleanupAssetsForRemoteEndpoint(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 644) != 1)
  {
    v4 = *(a1 + 632);
    for (*(a1 + 632) = 0; v4; *(a1 + 632) = v7)
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 712);
        *(v7 + 712) = 0;
        v8 = *(v7 + 696);
        v9 = v8 == a2 || a2 == 0;
        if (!v9 && v8 != 0)
        {
          break;
        }

        if (a3 == 1)
        {
          if (*(v7 + 46))
          {
            UARPLayer2AssetOrphaned(a1, v7);
            *(v7 + 696) = 0;
            *(v7 + 704) = 0;
          }

          else
          {
            *(v7 + 72) = 1;
          }
        }

        if (*(v7 + 72) != 1)
        {
          break;
        }

        UARPLayer2AssetReleased2(a1, a2, v7);
        *(v7 + 704) = 0;
        uarpPlatformAssetCleanup(a1, v7);
        if (!v4)
        {
          return;
        }
      }

      *(v7 + 712) = *(a1 + 632);
    }
  }
}

double uarpPlatformAssetOrphan(uint64_t a1, uint64_t a2)
{
  UARPLayer2AssetOrphaned(a1, a2);
  result = 0.0;
  *(a2 + 696) = 0u;
  return result;
}

uint64_t uarpPlatformAssetRelease(uint64_t a1, uint64_t a2, void *a3)
{
  result = UARPLayer2AssetReleased2(a1, a2, a3);
  a3[88] = 0;
  return result;
}

void uarpPlatformAssetCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 640);
  if (v4 && !*(a2 + 652))
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 412);
  }

  *(a2 + 640) = 0;
  *(a2 + 648) = 0;
  v5 = *(a2 + 656);
  if (v5 && !*(a2 + 668))
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 432);
  }

  *(a2 + 656) = 0;
  *(a2 + 664) = 0;
  v6 = *(a2 + 672);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 451);
    *(a2 + 672) = 0;
  }

  *(a2 + 680) = 0;
  v7 = *(a2 + 720);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      v7[2] = 0;
      UARPLayer2ReturnBuffer(a1, v7, 52428, 388);
      v7 = v8;
    }

    while (v8);
  }

  *(a2 + 720) = 0;
  v9 = *(a2 + 632);
  if (v9)
  {
    do
    {
      v10 = v9[21];
      v11 = v9[22];
      if (v10)
      {
        do
        {
          v12 = v10[2];
          v10[2] = 0;
          UARPLayer2ReturnBuffer(a1, v10, 52428, 388);
          v10 = v12;
        }

        while (v12);
      }

      v9[21] = 0;
      uarpPlatformPayloadCleanup(a1, v9);
      UARPLayer2ReturnBuffer(a1, v9, 52428, 487);
      v9 = v11;
    }

    while (v11);
  }

  uarpPlatformPayloadCleanup(a1, a2 + 464);

  UARPLayer2ReturnBuffer(a1, a2, 52428, 511);
}

void uarpPlatformCleanupAssets(uint64_t a1)
{
  v1 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1 + 712);
      *(v1 + 712) = 0;
      uarpPlatformAssetCleanup(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t uarpPlatformAssetIsKnown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 632);
  if (!v3)
  {
    return 0;
  }

  while (v3 != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t uarpPlatformPrepareAsset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v6 = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v18 = 0;
        v6 = UARPLayer2RequestBuffer(a1, &v18, 0x2D8uLL, 52428, 245);
        if (!v6)
        {
          v14 = v18;
          if (v18)
          {
            *(v18 + 88) = a3;
            v14[87] = a2;
            uarpPlatformEndpointAssetSetCallbacks(a1, v14, a5);
            if (v15)
            {
              v6 = v15;
              UARPLayer2ReturnBuffer(a1, v18, 52428, 265);
            }

            else
            {
              v16 = v18;
              if (a4)
              {
                *(v18 + 23) = 2;
                *(v16 + 12) = *a4;
              }

              else
              {
                *(v18 + 23) = 1;
              }

              if (a6 == 1)
              {
                *(v16 + 76) = 1;
                v17 = *(a1 + 640);
                if (v17 == 65534)
                {
                  v17 = 1;
                }

                *(a1 + 640) = v17 + 1;
              }

              else
              {
                LOWORD(v17) = 0;
                *(v16 + 76) = 0;
              }

              *(v16 + 22) = v17;
              if (a4 && a6 == 1)
              {
                uarpPlatformAssetFindByTag(a1, a2, 1, v16 + 48);
                v16 = v18;
              }

              v6 = 0;
              *(v16 + 89) = *(a1 + 632);
              *(a1 + 632) = v16;
            }
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }

  return v6;
}

void uarpPlatformPayloadCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 529);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 546);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 563);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    UARPLayer2ReturnBuffer(a1, v7, 52428, 580);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 52428, 592);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 52428, 602);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }
}

uint64_t uarpPlatformEndpointAssetStore(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4)
  {
    return UARPLayer2AssetStore(result, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescind(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      uarpTransmitQueueAssetRescinded(result, a2, a3);
      *(a3 + 72) = 1;

      return UARPLayer2AssetRescinded(v5, a2, a3);
    }

    else
    {

      return UARPLayer2RescindAllAssets(result, a2, 0);
    }
  }

  return result;
}

uint64_t uarpPlatformReOfferFirmware(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v4 = result;
    do
    {
      if (*(v2 + 304) == 1 && *(v2 + 696) == a2 && (*(v2 + 46) & 2) == 0)
      {
        result = uarpPlatformEndpointOfferAsset(v4, a2, *(v2 + 704));
      }

      v2 = *(v2 + 712);
    }

    while (v2);
  }

  return result;
}

uint64_t uarpCallbackUpdateInformationTLV(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v9 = v6;
  if (v5 != 7)
  {
    result = uarpPlatformQueryAccessoryInfo(a1, v5, a3 + 2, v6, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    goto LABEL_6;
  }

  if (v6 >= 0x10)
  {
    a3[2] = uarpHtonl(*(a2 + 66));
    a3[3] = uarpHtonl(*(a2 + 70));
    a3[4] = uarpHtonl(*(a2 + 74));
    a3[5] = uarpHtonl(*(a2 + 78));
    v7 = 16;
LABEL_6:
    result = 0;
    a3[1] = v7;
    return result;
  }

  return 39;
}

uint64_t uarpPlatformQueryAccessoryInfo(void *a1, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  *a5 = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {

      return UARPLayer2ManufacturerName(a1, a3, a5);
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return UARPLayer2ModelName(a1, a3, a5);
    }
  }

  else
  {
    switch(a2)
    {
      case 3:

        return UARPLayer2SerialNumber(a1, a3, a5);
      case 4:

        return UARPLayer2HardwareVersion(a1, a3, a5);
      case 9:

        return UARPLayer2FriendlyName(a1, a3, a5);
      default:
LABEL_22:
        if ((a2 - 5) > 1)
        {
          if (a2 != 8)
          {
            *a5 = 0;
            return 28;
          }

          *a5 = 8;
          if (a4 >= 8)
          {
            Error = UARPLayer2LastError(a1, a3);
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            return Error;
          }
        }

        else
        {
          *a5 = 16;
          if (a4 >= 0x10)
          {
            if (a2 == 5)
            {
              v9 = 0;
              active = UARPLayer2ActiveFirmwareVersion2(a1, &v9, a3);
            }

            else
            {
              v10 = 0;
              active = UARPLayer2StagedFirmwareVersion2(a1, &v10, a3);
            }

            Error = active;
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            a3[2] = uarpHtonl(a3[2]);
            a3[3] = uarpHtonl(a3[3]);
            return Error;
          }
        }

        return 39;
    }
  }
}

uint64_t uarpPlatformResponseAccessoryInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v8 = result;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {

        return UARPLayer2SerialNumberResponse(result, a2);
      }

      else
      {

        return UARPLayer2HardwareVersionResponse(result, a2);
      }
    }

    else if (a4 == 1)
    {

      return UARPLayer2ManufacturerNameResponse(result, a2);
    }

    else if (a4 == 2)
    {

      return UARPLayer2ModelNameResponse(result, a2);
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      if (a5 >= 0x10)
      {
        uarpVersionEndianSwap(a6, a6);
        result = UARPLayer2ActiveFirmwareVersionResponse(v8, a2);
        *(a2 + 122) = *a6;
      }
    }

    else if (a5 >= 0x10)
    {
      uarpVersionEndianSwap(a6, a6);
      result = UARPLayer2StagedFirmwareVersionResponse(v8, a2);
      *(a2 + 138) = *a6;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        if (a5 >= 0x10)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);
          a6[2] = uarpNtohl(a6[2]);
          a6[3] = uarpNtohl(a6[3]);

          return UARPLayer2StatisticsResponse(v8, a2);
        }

        break;
      case 8:
        if (a5 >= 8)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);

          return UARPLayer2LastErrorResponse(v8, a2);
        }

        break;
      case 9:

        return UARPLayer2FriendlyNameResponse(result, a2);
    }
  }

  return result;
}

uint64_t uarpPlatformAssetDataRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *__dst, unsigned __int16 *a7)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 17;
  }

  while (*(v8 + 304) != 1 || *(v8 + 696) != a2 || *(v8 + 44) != a3)
  {
    v8 = *(v8 + 712);
    if (!v8)
    {
      return 17;
    }
  }

  v10 = *(v8 + 68);
  if (v10 < a5)
  {
    return 17;
  }

  if (v10 >= a4 + a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10 - a5;
  }

  return uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v8, __dst, v11, a5, a7);
}

uint64_t uarpPlatformDataTransferResume(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 632);
  if (v4)
  {
    while (1)
    {
      if (!*(v4 + 304) && *(v4 + 696) == a2)
      {
        result = uarpPlatformAssetRequestData(a1, v4, (v4 + 312));
        if (result)
        {
          break;
        }
      }

      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return UARPLayer2DataTransferResume(a1, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescinded(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 632);
  if (a3 == 0xFFFF)
  {
    if (!v4)
    {
      return uarpPlatformAssetRescind(result, a2, v4);
    }

    v5 = *(result + 632);
    do
    {
      if (!*(v5 + 304) && *(v5 + 696) == a2)
      {
        *(v5 + 72) = 1;
      }

      v5 = *(v5 + 712);
    }

    while (v5);
  }

  if (v4)
  {
    while (*(v4 + 304) || *(v4 + 696) != a2 || *(v4 + 44) != a3)
    {
      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3 != 0xFFFF)
    {
      return result;
    }

    v4 = 0;
  }

  return uarpPlatformAssetRescind(result, a2, v4);
}

uint64_t uarpAssetProcessingComplete(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = uarpAllocPrepareTransmitBuffer2(a1, a2, 9u, 0xAu, 1);
    if (v8)
    {
      v9 = v8;
      v10 = v8[3];
      *(v10 + 6) = uarpHtons(*(a3 + 44));
      *(v10 + 8) = uarpHtons(a4);

      return uarpTransmitBuffer2(a1, a2, v9);
    }

    else
    {
      return 11;
    }
  }

  else if (a4 == 3)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t uarpOfferAssetToRemoteEP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 5u, 0x24u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpTagStructPack32((a3 + 48));
  *(v8 + 10) = uarpHtons(*(a3 + 46));
  *(v8 + 12) = uarpHtons(*(a3 + 44));
  uarpVersionEndianSwap((a3 + 52), (v8 + 14));
  *(v8 + 30) = uarpHtonl(*(a3 + 68));
  *(v8 + 34) = uarpHtons(*(a3 + 448));

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpAssetRescind(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xCu, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x11u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  *(v6[3] + 6) = *a3;

  return uarpTransmitBuffer2(a1, a2, v6);
}

uint64_t uarpPlatformFindPreparedAsset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 2) == 0)
  {
    return 0;
  }

  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (!*(result + 304) && *(result + 696) == a2 && !*(result + 44) && *(result + 48) == *a5 && *(result + 49) == a5[1] && *(result + 50) == a5[2] && *(result + 51) == a5[3])
    {
      break;
    }
  }

  return result;
}

void *uarpPlatformCreateRxAsset(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (UARPLayer2RequestBuffer(a1, &v5, 0x2D8uLL, 52428, 1213))
  {
    return 0;
  }

  result = v5;
  if (v5)
  {
    v5[87] = a2;
    *(result + 76) = 0;
    result[89] = *(a1 + 632);
    *(a1 + 632) = result;
  }

  return result;
}

BOOL uarpPlatformCompareHash(uint64_t a1, void *__s1, size_t __n, void *__s2, int a5)
{
  if (!*(a1 + 416))
  {
    return 1;
  }

  if (__n == a5)
  {
    return memcmp(__s1, __s2, __n) == 0;
  }

  return 0;
}

uint64_t UARPPlatformDownstreamEndpointByID(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*i)
        {
          if (*(result + 160) == a2 && *(result + 120) == a3)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 0;
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

uint64_t UARPPlatformDownstreamEndpointByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*(*i + 160) == a2 && *(result + 40) == a3)
        {
          break;
        }

        if (!--v5)
        {
          return 0;
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

uint64_t uarpPlatformRemoteEndpointAddEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 620);
  if (v4)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 620);
    while (*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *v5 = a2;
  }

  else
  {
LABEL_5:
    v7 = v4 + 1;
    v11 = 0;
    result = UARPLayer2RequestBuffer(a1, &v11, (8 * (v4 + 1)), 52428, 1360);
    if (!result)
    {
      v9 = *(a1 + 620);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11[i] = *(*(a1 + 624) + i * 8);
        }
      }

      else
      {
        v9 = 0;
      }

      v11[v9] = a2;
      UARPLayer2ReturnBuffer(a1, *(a1 + 624), 52428, 1377);
      result = 0;
      *(a1 + 620) = v7;
      *(a1 + 624) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointAddToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  v3 = *(result + 688);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (result + 688);
  }

  *v5 = a3;
  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnList(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 8) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 16) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointIDFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 16) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 8);
}

uint64_t uarpPlatformDownstreamEndpointDelegateFindOnListByID(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 8) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

uint64_t uarpPlatformDownstreamEndpointRemoveFromList(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 688);
  if (result)
  {
    if (*(result + 8) == a3)
    {
      v5 = (a1 + 688);
LABEL_7:
      *v5 = *(result + 24);
    }

    else
    {
      while (1)
      {
        v6 = result;
        result = *(result + 24);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == a3)
        {
          v5 = (v6 + 24);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformSendDownstreamMessageWithDownstreamID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    return 58;
  }

  while (*(v5 + 8) != a3)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 58;
    }
  }

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, a3, a4, a5);
}

void uarpPlatformReleaseEndpointIDs(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 672) + v2;
      UARPLayer2ReturnBuffer(a1, *(v4 + 8), 52428, 1605);
      *(v4 + 2) = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 664));
  }

  UARPLayer2ReturnBuffer(a1, *(a1 + 672), 52428, 1592);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
}

uint64_t uarpPlatformReleaseEndpointTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2ReturnBuffer(a1, *(a3 + 8), 52428, 1605);
  *(a3 + 2) = 0;
  *(a3 + 8) = 0;
  return 0;
}

uint64_t uarpPlatformEndpointSendSyncMsg(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 616))
    {
      v5 = 1;
    }

    else
    {
      uarpTransmitQueuePurge(a1, a2);
      v5 = 0;
    }

    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0, 6u, v5);
    if (v6)
    {

      return uarpTransmitBuffer2(a1, a2, v6);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 1u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (a3 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = a3;
      }

      *(a2 + 48) = v10;
      *(v9 + 6) = uarpHtons(v10);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 30;
  if (a1 && a2)
  {
    *(a2 + 48) = a3;
    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 2u, 0xCu, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[3];
      v8[3] = uarpHtons(0);
      v8[4] = uarpHtons(*(a2 + 48));
      v8[5] = *(a2 + 36);
      v9 = UARPProtocolVersionResponseAdjustByProtocolVersion(*(a2 + 48));
      v10 = uarpNtohs(v8[1]);
      v8[1] = v10 - v9;
      v8[1] = uarpHtons((v10 - v9));
      *(v7 + 18) -= v9;

      return uarpTransmitBuffer2(a1, a2, v7);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendInformationRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 3u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtonl(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t sub_1000291B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 8u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      *(v9 + 6) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendDynamicAssetPreProcessingStatus(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x13u, 0xCu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = *a3;
  *(v12 + 10) = uarpHtons(a5 | a4);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendAssetRequestData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 6u, 0xEu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = uarpHtons(a3);
  *(v12 + 8) = uarpHtonl(a4);
  if (a5 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 12) = uarpHtons(v13);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (!a2)
  {
    return 13;
  }

  v12 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, (a6 + 11), a4 == 32);
  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  v14 = v12[3];
  v15 = *a3;
  *(v14 + 8) = *(a3 + 2);
  *(v14 + 6) = v15;
  *(v14 + 9) = uarpHtons(a4);
  if (a5 && a6)
  {
    memcpy((v14 + 11), a5, a6);
  }

  return uarpTransmitBuffer2(a1, a2, v13);
}

uint64_t uarpSendDownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x15u, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpSendDownstreamEndpointReachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x17u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x19u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpTransmitMessageToDownstreamEndpointID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  v11 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Bu, (a5 + 8), v10);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  v13 = v11[3];
  *(v13 + 6) = uarpHtons(a3);
  memcpy((v13 + 8), a4, a5);

  return uarpTransmitBuffer2(a1, a2, v12);
}

uint64_t uarpPlatformEndpointRecvMessage(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a1 && a2 && a3)
  {
    UARPLayer2LogPacket(a1, a2);
    if (a4 <= 5)
    {
      v9 = *(a1 + 440);
      if (v9)
      {
        v10 = *(a1 + 608);
        v11 = uarpEndpointRoleToString(*(a1 + 616));
        v9(v10, 0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>", v11, a4);
      }

      else
      {
        uarpEndpointRoleToString(*(a1 + 616));
        uarpLogError(0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>");
      }

      return 8;
    }

    v12 = uarpNtohs(*a3);
    v13 = uarpNtohs(a3[1]);
    v14 = uarpNtohs(a3[2]);
    *(a2 + 32) = v14;
    v15 = v13 + 6;
    if (a4 < v15)
    {
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>";
LABEL_10:
      v16(v17, 0, v18);
      return 8;
    }

    if (a4 > v15)
    {
      v19 = *(a1 + 440);
      if (v19)
      {
        v19(*(a1 + 608), 0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      else
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      if (a4 - v15 < 6)
      {
        return 8;
      }

      v22 = (a3 + v15);
      uarpNtohs(*v22);
      uarpNtohs(v22[1]);
      uarpNtohs(v22[2]);
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>";
      goto LABEL_10;
    }

    v4 = 1;
    *(a1 + 644) = 1;
    switch(v12)
    {
      case 0:
        if (!*(a1 + 616))
        {
          uarpTransmitQueuePurge(a1, a2);
          uarpPlatformEndpointSendSyncMsg(a1, a2);
          goto LABEL_371;
        }

        v20 = a2[14];
        if (!v20)
        {
          goto LABEL_284;
        }

        while (!*(v20 + 40) || uarpNtohs(*v20[3]))
        {
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_284;
          }
        }

        *(v20 + 40) = 0;
        *(v20 + 39) = *(v20 + 38);
LABEL_284:
        *(a2 + 130) = 0;
        *(a2 + 122) = 0;
        *(a2 + 146) = 0;
        *(a2 + 138) = 0;
        *(a2 + 24) = 0;
        if ((*(a1 + 616) - 1) <= 1)
        {
          uarpSendVersionDiscoveryRequest(a1, a2, *(a2 + 6));
        }

        goto LABEL_371;
      case 1:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v90 = uarpNtohs(a3[3]);
        v91 = *(a1 + 12);
        if (v90 < v91)
        {
          v91 = v90;
        }

        if (v91 <= 1)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        *(a2 + 24) = v92;
        uarpSendVersionDiscoveryResponse(a1, a2, v92);
        v93 = *(a2 + 24);
        UARPLayer2ProtocolVersion(a1, a2);
        goto LABEL_371;
      case 2:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v77 = a2[14];
        if (!v77)
        {
          goto LABEL_213;
        }

        while (!*(v77 + 40) || uarpNtohs(*v77[3]) != 1)
        {
          v77 = *v77;
          v4 = 9;
          if (!v77)
          {
            goto LABEL_372;
          }
        }

        *(v77 + 40) = 0;
        *(v77 + 39) = *(v77 + 38);
        v4 = uarpNtohs(a3[3]);
        v161 = uarpHtons(a3[4]);
        v162 = 0;
        v163 = 0;
        if (a4 >= 0xC)
        {
          v162 = *(a3 + 10);
          v163 = *(a3 + 11);
        }

        *(a2 + 25) = v162;
        *(a2 + 26) = v163;
        if (v4)
        {
          v4 = 2;
        }

        else
        {
          if (v161 <= 1)
          {
            v181 = 1;
          }

          else
          {
            v181 = v161;
          }

          if (v181 >= 7)
          {
            v182 = 7;
          }

          else
          {
            v182 = v181;
          }

          *(a2 + 24) = v182;
          UARPLayer2ProtocolVersion(a1, a2);
        }

        goto LABEL_372;
      case 3:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v79 = uarpAllocPrepareTransmitBuffer2(a1, a2, 4u, 0x10u, 0);
        if (!v79)
        {
          goto LABEL_282;
        }

        v80 = v79;
        v81 = v79[3];
        *(v81 + 8) = uarpNtohl(*(a3 + 3));
        *(v81 + 12) = *(v80 + 8) - 16;
        updated = uarpCallbackUpdateInformationTLV(a1, a2, (v81 + 8));
        v83 = updated;
        if (updated)
        {
          v84 = 16;
        }

        else
        {
          v174 = *(v81 + 12);
          *(v81 + 2) = uarpHtons((v174 + 10));
          *(v81 + 8) = uarpHtonl(*(v81 + 8));
          *(v81 + 12) = uarpHtonl(*(v81 + 12));
          v84 = v174 + 16;
        }

        *(v81 + 6) = uarpHtons(v83);
        *(v80 + 18) = v84;
        goto LABEL_317;
      case 4:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v56 = uarpNtohs(a3[3]);
        if (a4 < 0x10)
        {
          goto LABEL_213;
        }

        v57 = v56;
        v58 = uarpNtohl(*(a3 + 2));
        v59 = uarpNtohl(*(a3 + 3));
        if (v59 > 0xFFFFFFEF)
        {
          goto LABEL_303;
        }

        if (v59 + 16 > a4)
        {
          goto LABEL_213;
        }

        v60 = v59;
        v61 = a2[14];
        if (!v61)
        {
          goto LABEL_370;
        }

        while (!*(v61 + 40) || uarpNtohs(*v61[3]) != 3 || v58 != uarpNtohl(*(v61[3] + 6)))
        {
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_370;
          }
        }

        *(v61 + 40) = 0;
        *(v61 + 39) = *(v61 + 38);
LABEL_370:
        uarpPlatformResponseAccessoryInfo(a1, a2, v57, v58, v60, a3 + 4);
        goto LABEL_371;
      case 5:
        if (a4 < 0x24)
        {
          goto LABEL_213;
        }

        v200 = 0;
        uarpTagStructUnpack32(*(a3 + 3), &v200);
        v104 = uarpNtohs(a3[5]);
        v105 = uarpNtohs(a3[6]);
        v199[0] = 0;
        v199[1] = 0;
        uarpVersionEndianSwap((a3 + 7), v199);
        v106 = uarpNtohl(*(a3 + 15));
        v107 = uarpNtohs(a3[17]);
        v108 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xDu, 0x24u, 0);
        if (!v108)
        {
          goto LABEL_282;
        }

        v109 = v108;
        v110 = v108[3];
        *(v110 + 6) = uarpTagStructPack32(&v200);
        *(v110 + 10) = uarpHtons(v104);
        *(v110 + 12) = uarpHtons(v105);
        uarpVersionEndianSwap(v199, (v110 + 14));
        *(v110 + 30) = uarpHtonl(v106);
        *(v110 + 34) = uarpHtons(v107);
        v4 = uarpTransmitBuffer2(a1, a2, v109);
        if (v4)
        {
          goto LABEL_372;
        }

        v111 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v105);
        if (v111 && !*(v111 + 8))
        {
          goto LABEL_371;
        }

        PreparedAsset = uarpPlatformFindPreparedAsset(a1, a2, v105, v104, &v200);
        if (!PreparedAsset)
        {
          PreparedAsset = uarpPlatformCreateRxAsset(a1, a2);
          if (!PreparedAsset)
          {
            goto LABEL_282;
          }
        }

        v113 = PreparedAsset;
        *(PreparedAsset + 452) = -1;
        *(PreparedAsset + 448) = uarpNtohs(a3[17]);
        *(v113 + 44) = v105;
        *(v113 + 46) = v104;
        *(v113 + 48) = v200;
        *(v113 + 52) = *v199;
        *(v113 + 68) = uarpNtohl(*(a3 + 15));
        v114 = *(v113 + 46);
        if (v114)
        {
          UARPLayer2SuperBinaryOffered(a1, a2);
        }

        else
        {
          if ((v114 & 2) == 0)
          {
            v4 = 22;
            goto LABEL_372;
          }

          UARPLayer2DynamicAssetOffered(a1, a2);
        }

        goto LABEL_371;
      case 6:
        if (a4 < 0xE)
        {
          goto LABEL_213;
        }

        v118 = uarpNtohs(a3[6]);
        if (*a2 >= v118)
        {
          v119 = v118;
        }

        else
        {
          v119 = *a2;
        }

        LOWORD(v199[0]) = v119;
        v120 = uarpNtohl(*(a3 + 2));
        v121 = uarpNtohs(a3[3]);
        v122 = uarpAllocPrepareTransmitBuffer2(a1, a2, 7u, (v119 + 18), 0);
        if (!v122)
        {
          goto LABEL_282;
        }

        v80 = v122;
        v123 = v122[3];
        v124 = uarpPlatformAssetDataRequest(a1, a2, v121, v119, v120, (v123 + 18), v199);
        *(v123 + 6) = uarpHtons(v124);
        *(v123 + 8) = a3[3];
        *(v123 + 10) = *(a3 + 2);
        *(v123 + 14) = a3[6];
        *(v123 + 16) = uarpHtons(LOWORD(v199[0]));
        v125 = LOWORD(v199[0]) + 18;
        *(v123 + 2) = uarpHtons((LOWORD(v199[0]) + 12));
        *(v80 + 18) = v125;
LABEL_317:
        v129 = a1;
        v130 = a2;
        v131 = v80;
        goto LABEL_318;
      case 7:
        if (a4 < 0x12)
        {
          goto LABEL_213;
        }

        v85 = uarpNtohs(a3[4]);
        v86 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v85);
        if (!v86)
        {
          goto LABEL_327;
        }

        v87 = a2[14];
        if (!v87)
        {
          goto LABEL_213;
        }

        v88 = v86;
        while (1)
        {
          if (*(v87 + 40))
          {
            if (uarpNtohs(*v87[3]) == 6)
            {
              v89 = v87[3];
              if (v85 == uarpNtohs(*(v89 + 6)) && *(a3 + 5) == *(v89 + 8) && a3[7] == *(v89 + 12))
              {
                break;
              }
            }
          }

          v87 = *v87;
          v4 = 9;
          if (!v87)
          {
            goto LABEL_372;
          }
        }

        *(v87 + 40) = 0;
        *(v87 + 39) = *(v87 + 38);
        v194 = uarpNtohs(a3[3]);
        v195 = uarpNtohl(*(a3 + 5));
        v196 = uarpNtohs(a3[7]);
        v197 = uarpNtohs(a3[8]);
        if (v197 + 18 > a4)
        {
LABEL_213:
          v4 = 9;
        }

        else
        {
          v198 = uarpPlatformAssetResponseData(a1, v88, v194, a3 + 9, v195, v196, v197);
          if (v198 == 29)
          {
            v4 = 0;
          }

          else
          {
            v4 = v198;
          }
        }

        goto LABEL_372;
      case 8:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v153 = uarpNtohs(a3[3]);
        v154 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xEu, 8u, 0);
        if (!v154)
        {
          goto LABEL_282;
        }

        *(v154[3] + 6) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v154);
        if (v26)
        {
          goto LABEL_319;
        }

        if ((v153 & 1) != 0 && *(a2 + 60) == 1)
        {
          *(a2 + 60) = 0;
          v26 = UARPLayer2DataTransferPause(a1, a2);
          goto LABEL_319;
        }

        if ((v153 & 2) == 0 || *(a2 + 60))
        {
          v4 = 33;
          goto LABEL_372;
        }

        *(a2 + 60) = 1;
        v26 = uarpPlatformDataTransferResume(a1, a2);
        goto LABEL_319;
      case 9:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v64 = uarpNtohs(a3[3]);
        v65 = uarpNtohs(a3[4]);
        v66 = uarpPlatformAssetFindByAssetID(a1, a2, 1, v64);
        if (!v66)
        {
          goto LABEL_371;
        }

        v67 = v66;
        v68 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFu, 0xAu, 0);
        if (!v68)
        {
          goto LABEL_282;
        }

        v69 = v68;
        v70 = v68[3];
        *(v70 + 6) = uarpHtons(v64);
        *(v70 + 8) = uarpHtons(v65);
        v26 = uarpTransmitBuffer2(a1, a2, v69);
        if (!v26)
        {
          v26 = UARPLayer2AssetProcessingNotification2(a1, a2, v67, v65);
        }

        goto LABEL_319;
      case 10:
        LOWORD(v199[0]) = 0;
        v126 = UARPLayer2ApplyStagedAssets(a1, a2);
        v4 = 11;
        v127 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xBu, 0xAu, 0);
        if (!v127)
        {
          goto LABEL_372;
        }

        v95 = v127;
        v128 = v127[3];
        *(v128 + 6) = uarpHtons(v126);
        *(v128 + 8) = uarpHtons(LOWORD(v199[0]));
        goto LABEL_211;
      case 11:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v55 = a2[14];
        if (!v55)
        {
          goto LABEL_296;
        }

        while (!*(v55 + 40) || uarpNtohs(*v55[3]) != 10)
        {
          v55 = *v55;
          if (!v55)
          {
            goto LABEL_296;
          }
        }

        *(v55 + 40) = 0;
        *(v55 + 39) = *(v55 + 38);
LABEL_296:
        uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v26 = UARPLayer2ApplyStagedAssetsResponse(a1, a2);
        goto LABEL_319;
      case 12:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v62 = uarpNtohs(a3[3]);
        v63 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x10u, 8u, 0);
        if (!v63)
        {
          goto LABEL_282;
        }

        *(v63[3] + 6) = a3[3];
        v4 = uarpTransmitBuffer2(a1, a2, v63);
        if (!v4)
        {
          uarpPlatformAssetRescinded(a1, a2, v62);
        }

        goto LABEL_372;
      case 13:
        if (a4 < 0x24)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 5 || a3[6] != *(v39[3] + 12))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 14:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v48 = a2[14];
        if (!v48)
        {
          goto LABEL_290;
        }

        while (!*(v48 + 40) || uarpNtohs(*v48[3]) != 8)
        {
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_290;
          }
        }

        *(v48 + 40) = 0;
        *(v48 + 39) = *(v48 + 38);
LABEL_290:
        v160 = uarpNtohs(a3[3]);
        if (v160)
        {
          v26 = UARPLayer2DataTransferPauseAck(a1, a2);
        }

        else
        {
          if ((v160 & 2) == 0)
          {
            v4 = 26;
            goto LABEL_372;
          }

          v26 = UARPLayer2DataTransferResumeAck(a1, a2);
        }

        goto LABEL_319;
      case 15:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v78 = a2[14];
        if (!v78)
        {
          goto LABEL_330;
        }

        while (!*(v78 + 40) || uarpNtohs(*v78[3]) != 9 || a3[3] != *(v78[3] + 6))
        {
          v78 = *v78;
          if (!v78)
          {
            goto LABEL_330;
          }
        }

        *(v78 + 40) = 0;
        *(v78 + 39) = *(v78 + 38);
LABEL_330:
        v177 = uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v178 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v177);
        if (!v178)
        {
          goto LABEL_371;
        }

        v179 = v178;
        v4 = UARPLayer2AssetProcessingNotificationAck(a1, a2, v178);
        *(v179 + 72) = 1;
        goto LABEL_372;
      case 16:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v47 = a2[14];
        if (!v47)
        {
          goto LABEL_324;
        }

        while (!*(v47 + 40) || uarpNtohs(*v47[3]) != 12 || a3[3] != *(v47[3] + 6))
        {
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_324;
          }
        }

        *(v47 + 40) = 0;
        *(v47 + 39) = *(v47 + 38);
LABEL_324:
        v175 = uarpNtohs(a3[3]);
        if (v175 == 0xFFFF)
        {
          UARPLayer2RescindAllAssetsAck(a1, a2, 0);
          goto LABEL_371;
        }

        v176 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v175);
        if (v176)
        {
          UARPLayer2AssetRescindedAck(a1, a2, v176);
          goto LABEL_371;
        }

LABEL_327:
        v4 = 17;
        goto LABEL_372;
      case 17:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v100 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x12u, 0xEu, 0);
        if (!v100)
        {
          goto LABEL_282;
        }

        v101 = v100;
        v102 = v100[3];
        *(v102 + 6) = uarpHtonl(0);
        *(v102 + 10) = *(a3 + 3);
        v26 = uarpTransmitBuffer2(a1, a2, v101);
        if (!v26)
        {
          v26 = UARPLayer2AssetSolicitation(a1, a2);
        }

        goto LABEL_319;
      case 18:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 17 || !uarpAssetTagCompare(a3 + 10, (v39[3] + 6)))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 19:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v134 = uarpNtohs(a3[5]);
        v135 = *(a3 + 3);
        LODWORD(v199[0]) = v135;
        v136 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x14u, 0xCu, 0);
        if (!v136)
        {
          goto LABEL_282;
        }

        v137 = v136;
        v138 = v136[3];
        *(v138 + 6) = v135;
        *(v138 + 10) = uarpHtons(v134);
        v4 = uarpTransmitBuffer2(a1, a2, v137);
        if (v4)
        {
          goto LABEL_372;
        }

        v139 = uarpPlatformAssetFindByTag(a1, a2, 0, v199);
        if (v139)
        {
          *(v139 + 72) = 1;
          v26 = UARPLayer2AssetPreProcessingNotification(a1, a2, v139);
          goto LABEL_319;
        }

        v4 = 3;
        goto LABEL_372;
      case 20:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v103 = a2[14];
        if (!v103)
        {
          goto LABEL_333;
        }

        while (!*(v103 + 40) || uarpNtohs(*v103[3]) != 19 || !uarpAssetTagCompare(a3 + 6, (v103[3] + 6)))
        {
          v103 = *v103;
          if (!v103)
          {
            goto LABEL_333;
          }
        }

        *(v103 + 40) = 0;
        *(v103 + 39) = *(v103 + 38);
LABEL_333:
        uarpNtohs(a3[5]);
        LODWORD(v199[0]) = *(a3 + 3);
        v180 = uarpPlatformAssetFindByTag(a1, a2, 1, v199);
        if (!v180)
        {
          goto LABEL_371;
        }

        *(v180 + 72) = 1;
        v26 = UARPLayer2AssetPreProcessingNotificationAck(a1, a2, v180);
        if (v26 == 3)
        {
          goto LABEL_371;
        }

        goto LABEL_319;
      case 21:
        v115 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x16u, 8u, 0);
        if (!v115)
        {
          goto LABEL_282;
        }

        v116 = v115;
        v117 = v115[3];
        *(v117 + 6) = uarpHtons(0);
        v26 = uarpTransmitBuffer2(a1, a2, v116);
        if (!v26)
        {
          v26 = fUarpLayer3DownstreamEndpointDiscovery(a1, a2);
        }

        goto LABEL_319;
      case 22:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 21)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 23:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v140 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x18u, 0xAu, 0);
        if (!v140)
        {
          goto LABEL_282;
        }

        v141 = v140;
        v142 = v140[3];
        *(v142 + 6) = uarpHtons(0);
        *(v142 + 8) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v141);
        if (v26)
        {
          goto LABEL_319;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, 0x20uLL, 56797, 1483);
        if (!v4)
        {
          v143 = uarpNtohs(a3[3]);
          v144 = v199[0];
          *(v199[0] + 4) = v143;
          v144[2] = 0;
          v144[3] = 0;
          uarpPlatformDownstreamEndpointAddToList(a1, a2, v144);
          v145 = *(a1 + 448);
          if (v145)
          {
            v146 = *(a1 + 608);
            v147 = uarpEndpointRoleToString(*(a1 + 616));
            v145(v146, 6, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v147, a1, a2, *(v199[0] + 4));
          }

          else
          {
            v192 = uarpEndpointRoleToString(*(a1 + 616));
            uarpLogInfo(6u, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v192, a1, a2, *(v199[0] + 4));
          }

          v193 = *(v199[0] + 4);
          v4 = fUarpLayer3DownstreamEndpointReachable(a1, a2);
          if (v4)
          {
            UARPLayer2ReturnBuffer(a1, v199[0], 56797, 1512);
          }
        }

        goto LABEL_372;
      case 24:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 23)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 25:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v71 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Au, 0xAu, 0);
        if (!v71)
        {
          goto LABEL_282;
        }

        v72 = v71;
        v73 = uarpNtohs(a3[3]);
        v74 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v73);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v173 = *(a1 + 440);
          if (v173)
          {
            v173(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          else
          {
            uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          v75 = 58;
        }

        v183 = v72[3];
        *(v183 + 6) = uarpHtons(v75);
        *(v183 + 8) = a3[3];
        v184 = uarpTransmitBuffer2(a1, a2, v72);
        v4 = v184;
        if (!v74 || v184)
        {
          goto LABEL_372;
        }

        v185 = *(a1 + 448);
        if (v185)
        {
          v186 = *(a1 + 608);
          v187 = uarpEndpointRoleToString(*(a1 + 616));
          v185(v186, 6, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v187, a1, a2, v73);
        }

        else
        {
          v188 = uarpEndpointRoleToString(*(a1 + 616));
          uarpLogInfo(6u, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v188, a1, a2, v73);
        }

        if (fUarpLayer3DownstreamEndpointUnreachable(a1, a2))
        {
          goto LABEL_371;
        }

        v189 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v74 + 8));
        v190 = a1;
        v191 = 1655;
        goto LABEL_357;
      case 26:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v152 = a2[14];
        if (!v152)
        {
          goto LABEL_309;
        }

        while (!*(v152 + 40) || uarpNtohs(*v152[3]) != 25)
        {
          v152 = *v152;
          if (!v152)
          {
            goto LABEL_309;
          }
        }

        *(v152 + 40) = 0;
        *(v152 + 39) = *(v152 + 38);
LABEL_309:
        v168 = uarpHtons(a3[4]);
        v169 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v168);
        if (v169)
        {
          v170 = v169;
          uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v169 + 8));
          v171 = *(v170 + 8);
          fUarpLayer3DownstreamEndpointReleased(a1, a2);
          goto LABEL_371;
        }

        v172 = *(a1 + 440);
        if (v172)
        {
          v172(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        v4 = 58;
        goto LABEL_372;
      case 27:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v41 = uarpNtohs(a3[3]);
        v42 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v41);
        if (v42)
        {
          v43 = v42;
          sub_10002B36C(a1, a2, v41, 0);
          v26 = fUarpLayer3DownstreamEndpointRecvMessage(a1, a2, v43);
          goto LABEL_319;
        }

        v155 = *(a1 + 440);
        if (v155)
        {
          v155(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        v4 = 58;
        sub_10002B36C(a1, a2, v41, 0x3Au);
        goto LABEL_372;
      case 28:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 27)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 29:
        v148 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Eu, 8u, 0);
        if (!v148)
        {
          goto LABEL_282;
        }

        v149 = v148;
        v150 = v148[3];
        *(v150 + 6) = uarpHtons(0);
        v4 = uarpTransmitBuffer2(a1, a2, v149);
        if (!v4)
        {
          fUarpLayer3NoFirmwareUpdateAvailable(a1, a2);
        }

        goto LABEL_372;
      case 30:
        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 29)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

LABEL_266:
        v4 = 0;
        *(v76 + 40) = 0;
        *(v76 + 39) = *(v76 + 38);
        goto LABEL_372;
      case 31:
        v94 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x20u, (2 * *(a1 + 664) + 10) & 0xFFFE, 0);
        if (!v94)
        {
          goto LABEL_282;
        }

        v95 = v94;
        v96 = v94[3];
        *(v96 + 6) = uarpHtons(0);
        *(v96 + 8) = uarpHtons(*(a1 + 664));
        if (*(a1 + 664))
        {
          v97 = 0;
          v98 = 0;
          v99 = v96 + 10;
          do
          {
            *(v99 + 2 * v98++) = uarpHtons(*(*(a1 + 672) + v97));
            v97 += 16;
          }

          while (v98 < *(a1 + 664));
        }

LABEL_211:
        v129 = a1;
        v130 = a2;
        v131 = v95;
        goto LABEL_318;
      case 32:
        v44 = a4 >= 0xA;
        v132 = a4 - 10;
        if (!v44)
        {
          goto LABEL_303;
        }

        v133 = a2[14];
        if (!v133)
        {
          goto LABEL_302;
        }

        while (!*(v133 + 40) || uarpNtohs(*v133[3]) != 31)
        {
          v133 = *v133;
          if (!v133)
          {
            goto LABEL_302;
          }
        }

        *(v133 + 40) = 0;
        *(v133 + 39) = *(v133 + 38);
LABEL_302:
        v164 = uarpNtohs(a3[4]);
        if (v132 < 2 * v164)
        {
          goto LABEL_303;
        }

        v165 = a3 + 5;
        if (v164)
        {
          v166 = v164;
          v167 = v165;
          do
          {
            *v167 = uarpHtons(*v167);
            ++v167;
            --v166;
          }

          while (v166);
        }

        UARPLayer2EndpointIDs(a1, a2);
        goto LABEL_371;
      case 33:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v49 = uarpHtons(a3[3]);
        v50 = v49;
        v51 = *(a1 + 672);
        v52 = *(a1 + 664);
        if (!*(a1 + 664))
        {
          goto LABEL_89;
        }

        v53 = *(a1 + 672);
        while (*v53 != v49)
        {
          v53 += 8;
          if (!--v52)
          {
LABEL_89:
            v54 = 0;
            goto LABEL_277;
          }
        }

        v54 = v53[1];
        v51 = v53;
LABEL_277:
        v156 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x22u, (4 * v54 + 12) & 0xFFFC, 0);
        if (!v156)
        {
LABEL_282:
          v4 = 11;
          goto LABEL_372;
        }

        v157 = v156;
        v158 = v156[3];
        v158[3] = uarpHtons(0);
        v158[4] = uarpHtons(v50);
        v158[5] = uarpHtons(v54);
        if (v54)
        {
          v159 = 0;
          do
          {
            *&v158[v159 + 6] = *(*(v51 + 1) + v159 * 2);
            v159 += 2;
          }

          while (2 * v54 != v159);
        }

        v129 = a1;
        v130 = a2;
        v131 = v157;
LABEL_318:
        v26 = uarpTransmitBuffer2(v129, v130, v131);
        goto LABEL_319;
      case 34:
        v44 = a4 >= 0xC;
        v45 = a4 - 12;
        if (!v44)
        {
          goto LABEL_303;
        }

        v46 = a2[14];
        if (!v46)
        {
          goto LABEL_287;
        }

        while (!*(v46 + 40) || uarpNtohs(*v46[3]) != 33)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_287;
          }
        }

        *(v46 + 40) = 0;
        *(v46 + 39) = *(v46 + 38);
LABEL_287:
        uarpNtohs(a3[4]);
        if (v45 < 2 * uarpNtohs(a3[5]))
        {
LABEL_303:
          v4 = 8;
        }

        else
        {
          UARPLayer2EndpointIDComponents(a1, a2);
LABEL_371:
          v4 = 0;
        }

        goto LABEL_372;
      case 35:
        if (a4 < 0x10)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        v30 = *(a3 + 3);
        v200 = *(a3 + 2);
        v31 = uarpHtonl(v30);
        if (v31 >> 30)
        {
          goto LABEL_303;
        }

        v32 = v31;
        v33 = 4 * v31;
        if (v33 > a4 - 16)
        {
          goto LABEL_303;
        }

        v34 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x24u, (4 * v31 + 18), 0);
        if (!v34)
        {
          goto LABEL_282;
        }

        v35 = v34;
        v36 = v34[3];
        *(v36 + 6) = uarpHtons(0);
        *(v36 + 8) = a3[3];
        *(v36 + 10) = *(a3 + 2);
        *(v36 + 14) = *(a3 + 3);
        memcpy((v36 + 18), a3 + 8, v33);
        v4 = uarpTransmitBuffer2(a1, a2, v35);
        if (v4)
        {
          goto LABEL_372;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, v33, 56797, 2292);
        if (v4)
        {
          goto LABEL_372;
        }

        if (v32)
        {
          v37 = 0;
          do
          {
            v38 = uarpNtohl(*&a3[v37 + 8]);
            *(v199[0] + v37 * 2) = v38;
            v37 += 2;
          }

          while (2 * v32 != v37);
        }

        UARPLayer2EndpointBulkInformationQuery(a1, a2);
        v189 = v199[0];
        v190 = a1;
        v191 = 2313;
LABEL_357:
        UARPLayer2ReturnBuffer(v190, v189, 56797, v191);
        goto LABEL_371;
      case 36:
        if (a4 < 0x12)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 35)
            {
              v40 = v39[3];
              if (*(v40 + 6) == a3[4] && uarp4ccCompare((v40 + 8), a3 + 10))
              {
                goto LABEL_273;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

      case 37:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        LODWORD(v199[0]) = *(a3 + 2);
        uarpNtohs(a3[1]);
        v27 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x26u, 0xEu, 0);
        if (!v27)
        {
          goto LABEL_282;
        }

        v28 = v27;
        v29 = v27[3];
        *(v29 + 6) = uarpHtons(0);
        *(v29 + 8) = a3[3];
        *(v29 + 10) = *(a3 + 2);
        v4 = uarpTransmitBuffer2(a1, a2, v28);
        if (!v4)
        {
          UARPLayer2EndpointBulkInformationResponse(a1, a2);
        }

        goto LABEL_372;
      case 38:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 37)
            {
              v151 = v39[3];
              if (*(v151 + 6) == a3[4] && uarp4ccCompare((v151 + 8), a3 + 10))
              {
                break;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

LABEL_273:
        v4 = 0;
        *(v39 + 40) = 0;
        *(v39 + 39) = *(v39 + 38);
        goto LABEL_372;
      default:
        if (v12 != 0xFFFF)
        {
          goto LABEL_372;
        }

        if (a4 < 0xB)
        {
          goto LABEL_303;
        }

        v23 = a2[14];
        if (!v23)
        {
          goto LABEL_38;
        }

        break;
    }

    while (1)
    {
      if (*(v23 + 40))
      {
        if (uarpNtohs(*v23[3]) == 0xFFFF)
        {
          v24 = v23[3];
          v25 = *(v23 + 18);
          if (UARPLayer2VendorSpecificCheckExpectedResponse(a1, a2))
          {
            break;
          }
        }
      }

      v23 = *v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    *(v23 + 40) = 0;
    *(v23 + 39) = *(v23 + 38);
LABEL_38:
    uarpNtohs(*(a3 + 9));
    v26 = UARPLayer2VendorSpecificRecvMessage(a1, a2);
LABEL_319:
    v4 = v26;
LABEL_372:
    *(a1 + 644) = 0;
    uarpTransmitQueueReclaimEntries(a1, a2);
    uarpTransmitQueueService(a1, a2);
    uarpPlatformGarbageCollection(a1, a2);
  }

  return v4;
}

uint64_t sub_10002B36C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  if (result)
  {
    result = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Cu, 0xAu, 0);
    if (result)
    {
      v9 = result;
      v10 = *(result + 24);
      *(v10 + 6) = uarpHtons(a4);
      *(v10 + 8) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v9);
    }
  }

  return result;
}

__int16 *uarpOuiAppleGenericFeatures()
{
  result = &word_1000D3740;
  word_1000D3740 = 2492;
  byte_1000D3742 = 99;
  return result;
}

uint64_t uarpApplePlatformEndpointRecvMessage(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  result = 30;
  if (!a1 || !a2 || !a3 || !a5)
  {
    return result;
  }

  word_1000D3740 = 2492;
  byte_1000D3742 = 99;
  if (!uarpOuiCompare(a3, &word_1000D3740))
  {
    return 9;
  }

  if (a4 != 33)
  {
    if (a4 == 32 && a6 >= 4)
    {
      v12 = *a2;
      v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, *a2, 0);
      if (!v13)
      {
        return 11;
      }

      v14 = v13;
      v15 = v13[3];
      word_1000D3740 = 2492;
      byte_1000D3742 = 99;
      *(v15 + 6) = 2492;
      *(v15 + 8) = 99;
      *(v15 + 9) = uarpHtons(0x21u);
      v16 = *(a1 + 40);
      v47 = 0;
      v17 = uarpNtohl(*a5);
      v18 = (v12 - 23);
      switch(v17)
      {
        case 1u:
          v19 = v16[1];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 1;
          goto LABEL_99;
        case 2u:
          v19 = v16[3];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 2;
          goto LABEL_99;
        case 3u:
          v19 = v16[5];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 3;
          goto LABEL_99;
        case 4u:
          v33 = v16[7];
          if (!v33)
          {
            goto LABEL_100;
          }

          v34 = v33(*(a1 + 608), 4, v15 + 23, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
          if (v47 != 8)
          {
            goto LABEL_89;
          }

LABEL_72:
          *(v15 + 23) = uarpHtonll(*(v15 + 23));
          break;
        case 5u:
          v29 = v16[9];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 5;
          goto LABEL_87;
        case 6u:
          v29 = v16[11];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 6;
          goto LABEL_87;
        case 7u:
          v36 = v16[13];
          if (!v36)
          {
            goto LABEL_100;
          }

          v34 = v36(*(a1 + 608), 7, v15 + 23, v18, &v47);
          if (*(a2 + 48) >= 4u && v47 == 8)
          {
            goto LABEL_72;
          }

          break;
        case 8u:
          v29 = v16[17];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 8;
          goto LABEL_87;
        case 9u:
          v29 = v16[19];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 9;
          goto LABEL_87;
        case 0xAu:
          v29 = v16[21];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 10;
          goto LABEL_87;
        case 0xBu:
          v29 = v16[23];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 11;
          goto LABEL_87;
        case 0xCu:
          v19 = v16[25];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 12;
          goto LABEL_99;
        case 0xDu:
          v19 = v16[27];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 13;
          goto LABEL_99;
        case 0xEu:
          v19 = v16[29];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 14;
          goto LABEL_99;
        case 0xFu:
          v19 = v16[31];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 15;
          goto LABEL_99;
        case 0x10u:
          v29 = v16[33];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 16;
          goto LABEL_87;
        case 0x11u:
          v19 = v16[35];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 17;
          goto LABEL_99;
        case 0x12u:
          v19 = v16[37];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 18;
          goto LABEL_99;
        case 0x13u:
          v29 = v16[39];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 19;
          goto LABEL_87;
        case 0x14u:
          v29 = v16[41];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 20;
          goto LABEL_87;
        case 0x15u:
          v29 = v16[43];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 21;
          goto LABEL_87;
        case 0x16u:
          v29 = v16[45];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 22;
          goto LABEL_87;
        case 0x17u:
          v19 = v16[47];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 23;
          goto LABEL_99;
        case 0x18u:
          v19 = v16[49];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 24;
          goto LABEL_99;
        case 0x19u:
          v19 = v16[51];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 25;
          goto LABEL_99;
        case 0x1Au:
          v19 = v16[53];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 26;
          goto LABEL_99;
        case 0x1Bu:
          v19 = v16[55];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 27;
          goto LABEL_99;
        case 0x1Cu:
          v19 = v16[57];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 28;
          goto LABEL_99;
        case 0x1Du:
          v19 = v16[15];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 29;
          goto LABEL_99;
        case 0x1Eu:
          v19 = v16[59];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 30;
          goto LABEL_99;
        case 0x1Fu:
          v19 = v16[61];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 31;
          goto LABEL_99;
        case 0x20u:
          v19 = v16[63];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 32;
LABEL_99:
          v34 = v19(v20, v22, v21, v18, &v47);
          break;
        case 0x21u:
          v29 = v16[65];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 33;
LABEL_87:
          v34 = v29(v30, v32, v31, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
LABEL_89:
          if (v35 == 4)
          {
            *(v15 + 23) = uarpHtonl(*(v15 + 23));
          }

          break;
        default:
LABEL_100:
          v34 = 26;
          break;
      }

      *(v15 + 11) = uarpHtonl(v34);
      *(v15 + 15) = uarpHtonl(v17);
      *(v15 + 19) = uarpHtonl(v47);
      v37 = v47 + 23;
      *(v15 + 2) = uarpHtons((v47 + 17));
      *(v14 + 18) = v37;
      return uarpTransmitBuffer2(a1, a2, v14);
    }

    return 9;
  }

  if (a6 < 4)
  {
    return 9;
  }

  if (a6 < 0xC)
  {
    return 8;
  }

  v23 = uarpNtohl(a5[1]);
  v24 = uarpNtohl(a5[2]);
  result = 8;
  if (v24 <= 0xFFFFFFF3 && v24 + 12 <= a6)
  {
    v25 = (a5 + 3);
    if (v24)
    {
      v26 = a5 + 3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 40);
    switch(v23)
    {
      case 1:
        v28 = v27[2];
        if (v28)
        {
          goto LABEL_159;
        }

        return 1;
      case 2:
        v28 = v27[4];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 3:
        v28 = v27[6];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 4:
        v41 = v27[8];
        v38 = (v27 + 8);
        if (!v41)
        {
          return 1;
        }

        if (v24 == 8)
        {
          goto LABEL_149;
        }

        if (v24 != 4)
        {
          goto LABEL_158;
        }

        break;
      case 5:
        v39 = v27[10];
        v38 = (v27 + 10);
        v28 = v39;
        if (!v39)
        {
          return 1;
        }

        goto LABEL_156;
      case 6:
        v43 = v27[12];
        v38 = (v27 + 12);
        v28 = v43;
        if (!v43)
        {
          return 1;
        }

        goto LABEL_156;
      case 7:
        v44 = v27[14];
        v38 = (v27 + 14);
        v28 = v44;
        if (!v44)
        {
          return 1;
        }

        if (v24 != 8)
        {
          goto LABEL_159;
        }

LABEL_149:
        *v25 = uarpNtohll(*v25);
        goto LABEL_158;
      case 8:
        v42 = v27[18];
        v38 = (v27 + 18);
        v28 = v42;
        if (!v42)
        {
          return 1;
        }

        goto LABEL_156;
      case 9:
        v46 = v27[20];
        v38 = (v27 + 20);
        v28 = v46;
        if (v46)
        {
          goto LABEL_156;
        }

        return 1;
      case 10:
        v40 = v27[22];
        v38 = (v27 + 22);
        v28 = v40;
        if (!v40)
        {
          return 1;
        }

        goto LABEL_156;
      case 11:
        v45 = v27[24];
        v38 = (v27 + 24);
        v28 = v45;
        if (!v45)
        {
          return 1;
        }

LABEL_156:
        if (v24 == 4)
        {
          break;
        }

        goto LABEL_159;
      case 12:
        v28 = v27[26];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 13:
        v28 = v27[28];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 14:
        v28 = v27[30];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 15:
        v28 = v27[32];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 16:
        v28 = v27[34];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 34);
        break;
      case 17:
        v28 = v27[36];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 18:
        v28 = v27[38];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 19:
        v28 = v27[40];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 40);
        break;
      case 20:
        v28 = v27[42];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 42);
        break;
      case 21:
        v28 = v27[44];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 44);
        break;
      case 22:
        v28 = v27[46];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 46);
        break;
      case 23:
        v28 = v27[48];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 24:
        v28 = v27[50];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 25:
        v28 = v27[52];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 26:
        v28 = v27[54];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 27:
        v28 = v27[56];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 28:
        v28 = v27[58];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 29:
        v28 = v27[16];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 30:
        v28 = v27[60];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 31:
        v28 = v27[62];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 32:
        v28 = v27[64];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 33:
        v28 = v27[66];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 66);
        break;
      default:
        return 1;
    }

    *v25 = uarpNtohl(*v25);
LABEL_158:
    v28 = *v38;
LABEL_159:
    v28(*(a1 + 608), *(a2 + 40), v26, v24);
    return 0;
  }

  return result;
}