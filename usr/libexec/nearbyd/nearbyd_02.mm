void sub_100025F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000263C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_100026440(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didLoseDevice:v3];
}

void sub_1000264B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDiscoverDevice:v3];
}

void sub_100026528(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A540();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothServiceInterrupted];
}

void sub_100026594(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFailWithError:v3];
}

void sub_100026608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothStateChanged];
}

void sub_100026664(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothAdvertisingAddressChanged];
}

void sub_1000266C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained systemOverrideNotification];
}

void sub_100026750(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1009EC6C8 = [v1 BOOLForKey:@"EnableMarconiBypass"];
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1009EC6C8)
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ble,Marconi bypass enabled: %@", &v4, 0xCu);
  }
}

void sub_100026C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = v4 - v5;
    v9 = WeakRetained + 16;
    if (*(WeakRetained + 4) == 1)
    {
      v10 = objc_loadWeakRetained(WeakRetained + 3);
      if (v3)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A7A0();
        }

        *v9 = 3;
        [v10 didFinishActivatingWithDiscoveryTokenData:0 error:v3];
      }

      else
      {
        v11 = [*(v7 + 1) tokenData];

        v12 = qword_1009F9820;
        if (v11)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 134217984;
            v18 = v8;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ble,Activation succeeded [%0.6f s]", &v17, 0xCu);
          }

          *v9 = 2;
          v13 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
          [v13 addPayloadChangeObserver:*(a1 + 32)];

          [v7 _executeActivationPendingOperations];
          v14 = [*(v7 + 1) tokenData];
          [v10 didFinishActivatingWithDiscoveryTokenData:v14 error:0];

          [v7 bluetoothStateChanged];
          [v7 bluetoothAdvertisingAddressChanged];
        }

        else
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049A820();
          }

          *v9 = 3;
          v19 = NSLocalizedFailureReasonErrorKey;
          v20 = @"Activated session had no token";
          v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10017 userInfo:v15];
          [v10 didFinishActivatingWithDiscoveryTokenData:0 error:v16];
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A704(v7 + 4);
    }
  }
}

void sub_1000277C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    v9 = v8;
    if (v3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = CUPrintNSObjectMasked();
        v14 = 138478339;
        v15 = v13;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = v3;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#ble,addPeerToken %{private}@ failed [%0.6f s]. Error: %@", &v14, 0x20u);
      }

      [WeakRetained[6] removeObject:*(a1 + 32)];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = CUPrintNSObjectMasked();
        v14 = 138478083;
        v15 = v11;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ble,addPeerToken %{private}@ succeeded [%0.6f s]", &v14, 0x16u);
      }
    }
  }
}

void sub_100027C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_100027D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    v9 = v8;
    if (v3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = CUPrintNSObjectMasked();
        v14 = 138478339;
        v15 = v11;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = v3;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#ble,removePeerToken %{private}@ failed [%0.6f s]. Error: %@", &v14, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = CUPrintNSObjectMasked();
      v14 = 138478083;
      v15 = v13;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ble,removePeerToken %{private}@ succeeded [%0.6f s]", &v14, 0x16u);
    }
  }
}

void sub_100028BB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setScanRate:30];
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [v3[1] scanRate];
      v7 = 134218240;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ble,startScanningWithBurstPeriod burst expired [%0.1f s]. Setting BT scan rate to %d.", &v7, 0x12u);
    }

    [v3 _cancelScanRateAdjustmentTimer];
  }
}

void sub_10002964C(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1000298A8(void *a1)
{
  v1 = a1;
  if ([v1 length] != 6)
  {
    __assert_rtn("PRBluetoothAdvertisingAddressToU64Identifier", "PRBLEDiscoverySession.mm", 1079, "[bluetoothAddress length] == kPRBluetoothAdvertisingAddressLengthBytes");
  }

  v6 = 0;
  v2 = [v1 copy];
  v3 = [v2 _reverse];
  [v3 getBytes:&v6 length:{objc_msgSend(v1, "length")}];

  v4 = v6;
  return v4;
}

void sub_10002A2C4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a6 = a1;
  *(a6 + 4) = v7;
  *(a6 + 12) = 2080;
  *(a6 + 14) = v6;
}

void sub_10002A2DC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_10002A358(void *a1, unsigned __int8 *a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:PRP2PArgsRangingRole];
    v134 = [v6 objectForKey:PRP2PArgsRangingInterval];
    v8 = [v6 objectForKey:PRP2PArgsTxAntennaMask];
    v133 = [v6 objectForKey:PRP2PArgsRxAntennaMask];
    v124 = [v6 objectForKey:PRP2PArgsRxSyncSearchAntennaMask];
    v129 = [v6 objectForKey:PRDebugConfigArgTxAntennaMask2];
    v123 = [v6 objectForKey:PRDebugConfigArgRxAntennaMask2];
    v116 = [v6 objectForKey:PRDebugConfigArgRxSyncSearchAntennaMask2];
    v128 = [v6 objectForKey:PRDebugConfigArgSOIRSSIThreshold2];
    v132 = [v6 objectForKey:PRP2PArgsTxPreamble];
    v131 = [v6 objectForKey:PRP2PArgsRxPreamble];
    v130 = [v6 objectForKey:PRP2PArgsTxPacketType];
    v126 = [v6 objectForKey:PRP2PArgsRxPacketType];
    v127 = [v6 objectForKey:PRP2PArgsRoseDebugFlags];
    v125 = [v6 objectForKey:PRP2PArgsDualRangingMode];
    v122 = [v6 objectForKey:PRDebugConfigArgNAccessSlotsMin];
    v118 = [v6 objectForKey:PRDebugConfigArgNAccessSlotsMax];
    v121 = [v6 objectForKey:PRDebugConfigArgRangingIntervalMin];
    v117 = [v6 objectForKey:PRDebugConfigArgRangingIntervalMax];
    v119 = [v6 objectForKey:PRDebugConfigArgRxMiniSlotSize];
    v120 = [v6 objectForKey:PRDebugConfigArgTxMiniSlotSize];
    v9 = *(sub_1000054A8() + 187);
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v7 intValue];
        sub_1004277B8(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = [v7 integerValue];
        if ((a2[1] & 1) == 0)
        {
          a2[1] = 1;
        }

        *a2 = v18;
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2[1] & 1) == 0)
          {
            sub_1000195BC();
          }

          v20 = *a2;
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Range Params] got role: %d", buf, 8u);
        }
      }
    }

    if (v134)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v134 integerValue];
        if ((a2[78] & 1) == 0)
        {
          a2[78] = 1;
        }

        *(a2 + 38) = v21;
        v22 = qword_1009F9820;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2[78] & 1) == 0)
          {
            sub_1000195BC();
          }

          v23 = *(a2 + 38);
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Range Params] got interval_ms: %d", buf, 8u);
        }
      }
    }

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!sub_10002C97C(v8))
        {
          v43 = qword_1009F9820;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10049B1C0(buf, [v8 intValue]);
          }

          if (!a3)
          {
            goto LABEL_314;
          }

          v177 = NSLocalizedDescriptionKey;
          v178 = @"got invalid tx_ant_mask.";
          v44 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v45 = PRErrorWithCodeAndUserInfo(100, v44);
          goto LABEL_236;
        }

        v24 = [v8 integerValue];
        if ((a2[3] & 1) == 0)
        {
          a2[3] = 1;
        }

        a2[2] = v24;
        v25 = qword_1009F9820;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2[3] & 1) == 0)
          {
            sub_1000195BC();
          }

          v26 = a2[2];
          *buf = 67109120;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_ant_mask: 0x%x", buf, 8u);
        }
      }
    }

    if (v133)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v124 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!sub_10002CA00(v133))
          {
            v46 = qword_1009F9820;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_10049B1F8(buf, [v133 intValue]);
            }

            if (!a3)
            {
              goto LABEL_314;
            }

            v175 = NSLocalizedDescriptionKey;
            v176 = @"got invalid rx_ant_mask.";
            v44 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
            v45 = PRErrorWithCodeAndUserInfo(100, v44);
            goto LABEL_236;
          }

          v27 = [v133 integerValue];
          if ((a2[5] & 1) == 0)
          {
            a2[5] = 1;
          }

          a2[4] = v27;
          v28 = qword_1009F9820;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[5] & 1) == 0)
            {
              sub_1000195BC();
            }

            v29 = a2[4];
            *buf = 67109120;
            *&buf[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_ant_mask: 0x%x", buf, 8u);
          }

          if ((sub_10002CA5C(v124, v133) & 1) == 0)
          {
            v47 = qword_1009F9820;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_10049B230(buf, [v124 intValue]);
            }

            if (!a3)
            {
              goto LABEL_314;
            }

            v173 = NSLocalizedDescriptionKey;
            v174 = @"got invalid rx_sync_search_ant_mask.";
            v44 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
            v45 = PRErrorWithCodeAndUserInfo(100, v44);
            goto LABEL_236;
          }

          v30 = [v124 integerValue];
          if ((a2[7] & 1) == 0)
          {
            a2[7] = 1;
          }

          a2[6] = v30;
          v31 = qword_1009F9820;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[7] & 1) == 0)
            {
              sub_1000195BC();
            }

            v32 = a2[6];
            *buf = 67109120;
            *&buf[4] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_sync_search_ant_mask: 0x%x", buf, 8u);
          }
        }
      }
    }

    if (!v129 || (objc_opt_class(), (objc_opt_isKindOfClass() & (v123 != 0)) != 1) || (objc_opt_class(), (objc_opt_isKindOfClass() & (v116 != 0)) != 1) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_114:
      if (v128)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = [v128 integerValue];
          if ((a2[74] & 1) == 0)
          {
            a2[74] = 1;
          }

          *(a2 + 36) = v59;
          v60 = qword_1009F9820;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[74] & 1) == 0)
            {
              sub_1000195BC();
            }

            v61 = *(a2 + 36);
            *buf = 67109120;
            *&buf[4] = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[Range Params] got soi_rssi_thd2: 0x%x", buf, 8u);
          }
        }
      }

      if (v132)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_1004272E8([v132 intValue], v9);
          *(a2 + 4) = sub_1004272E8([v132 integerValue], v9) | 0x100;
          v62 = qword_1009F9820;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[9] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_10042749C(a2[8]);
            if (v164 >= 0)
            {
              v63 = buf;
            }

            else
            {
              v63 = *buf;
            }

            *v165 = 136315138;
            v166 = v63;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_preamble: %s", v165, 0xCu);
            if (v164 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      if (v131)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_1004272E8([v131 intValue], v9);
          *(a2 + 5) = sub_1004272E8([v131 integerValue], v9) | 0x100;
          v64 = qword_1009F9820;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[11] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_10042749C(a2[10]);
            if (v164 >= 0)
            {
              v65 = buf;
            }

            else
            {
              v65 = *buf;
            }

            *v165 = 136315138;
            v166 = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_preamble: %s", v165, 0xCu);
            if (v164 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      if (v130)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = sub_100428610([v130 intValue]);
          if ((v66 & 0x10000) == 0)
          {
            v67 = qword_1009F9820;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_10049B380(buf, [v130 intValue]);
            }

            if (a3)
            {
              v161 = NSLocalizedDescriptionKey;
              v162 = @"got invalid tx_pkt_type.";
              v44 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              v45 = PRErrorWithCodeAndUserInfo(100, v44);
              goto LABEL_236;
            }

LABEL_314:
            v42 = 0;
            goto LABEL_315;
          }

          if ((a2[14] & 1) == 0)
          {
            a2[14] = 1;
          }

          *(a2 + 6) = v66;
          v68 = qword_1009F9820;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[14] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_1004286CC(a2 + 12);
            if (v164 >= 0)
            {
              v69 = buf;
            }

            else
            {
              v69 = *buf;
            }

            *v165 = 136315138;
            v166 = v69;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_pkt_type: %s", v165, 0xCu);
            if (v164 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      if (v126)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v70 = sub_100428610([v126 intValue]);
          if ((v70 & 0x10000) == 0)
          {
            v71 = qword_1009F9820;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              sub_10049B3B8(buf, [v130 intValue]);
            }

            if (a3)
            {
              v159 = NSLocalizedDescriptionKey;
              v160 = @"got invalid tx_pkt_type.";
              v44 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
              v45 = PRErrorWithCodeAndUserInfo(100, v44);
              goto LABEL_236;
            }

            goto LABEL_314;
          }

          if ((a2[17] & 1) == 0)
          {
            a2[17] = 1;
          }

          *(a2 + 15) = v70;
          v72 = qword_1009F9820;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[17] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_1004286CC(a2 + 15);
            if (v164 >= 0)
            {
              v73 = buf;
            }

            else
            {
              v73 = *buf;
            }

            *v165 = 136315138;
            v166 = v73;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_pkt_type: %s", v165, 0xCu);
            if (v164 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      if (v127)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v127 intValue] & 0x80000000) != 0 || objc_msgSend(v127, "intValue") >= 0x10000)
          {
            v74 = qword_1009F9820;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_10049B3F0(buf, [v127 intValue]);
            }

            if (a3)
            {
              v157 = NSLocalizedDescriptionKey;
              v158 = @"got invalid debug_flags.";
              v44 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
              v45 = PRErrorWithCodeAndUserInfo(100, v44);
              goto LABEL_236;
            }

            goto LABEL_314;
          }

          v75 = [v127 integerValue];
          if ((a2[24] & 1) == 0)
          {
            a2[24] = 1;
          }

          *(a2 + 11) = v75;
          v76 = qword_1009F9820;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[24] & 1) == 0)
            {
              sub_1000195BC();
            }

            v77 = *(a2 + 11);
            *buf = 67109120;
            *&buf[4] = v77;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[Range Params] got debug_flags: %d", buf, 8u);
          }
        }
      }

      if (v125)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v125 intValue] && objc_msgSend(v125, "intValue") != 1)
          {
            v95 = qword_1009F9820;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              sub_10049B428(buf, [v125 intValue]);
            }

            if (a3)
            {
              v155 = NSLocalizedDescriptionKey;
              v156 = @"got invalid dual_ranging_enable.";
              v44 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];
              v45 = PRErrorWithCodeAndUserInfo(100, v44);
              goto LABEL_236;
            }

            goto LABEL_314;
          }

          v78 = [v125 integerValue];
          if ((a2[65] & 1) == 0)
          {
            a2[65] = 1;
          }

          a2[64] = v78;
          v79 = qword_1009F9820;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[65] & 1) == 0)
            {
              sub_1000195BC();
            }

            v80 = a2[64];
            *buf = 67109120;
            *&buf[4] = v80;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[Range Params] got dual_ranging_enable: %d", buf, 8u);
          }
        }
      }

      if (v122)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v118 != 0)) == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v122 intValue] <= 0)
            {
              v81 = qword_1009F9820;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                sub_10049B460(buf, [v122 intValue]);
              }

              if (a3)
              {
                v153 = NSLocalizedDescriptionKey;
                v154 = @"got invalid naccess_slots_min.";
                v82 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
                *a3 = PRErrorWithCodeAndUserInfo(100, v82);
              }
            }

            v83 = [v122 integerValue];
            if ((a2[105] & 1) == 0)
            {
              a2[105] = 1;
            }

            a2[104] = v83;
            v84 = qword_1009F9820;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              if ((a2[105] & 1) == 0)
              {
                sub_1000195BC();
              }

              v85 = a2[104];
              *v165 = 67109120;
              LODWORD(v166) = v85;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[Range Params] got naccess_slots_min: %d", v165, 8u);
            }

            if ([v118 intValue] <= 0)
            {
              v86 = qword_1009F9820;
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                sub_10049B460(v165, [v118 intValue]);
              }

              if (a3)
              {
                v151 = NSLocalizedDescriptionKey;
                v152 = @"got invalid naccess_slots_max.";
                v87 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
                *a3 = PRErrorWithCodeAndUserInfo(100, v87);
              }
            }

            v88 = [v118 integerValue];
            if ((a2[107] & 1) == 0)
            {
              a2[107] = 1;
            }

            a2[106] = v88;
            v89 = qword_1009F9820;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              if ((a2[107] & 1) == 0)
              {
                sub_1000195BC();
              }

              v90 = a2[106];
              *v149 = 67109120;
              v150 = v90;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[Range Params] got naccess_slots_max: %d", v149, 8u);
            }

            if (v7)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v7 intValue])
                {
                  if ([v7 intValue] == 1)
                  {
                    v91 = [v122 intValue];
                    if (v91 > [v118 intValue])
                    {
                      v92 = qword_1009F9820;
                      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                      {
                        sub_10049B498();
                      }

                      if (a3)
                      {
                        v145 = NSLocalizedDescriptionKey;
                        v146 = @"naccess_slots_min must be less than or equal to naccess_slots_max for responder.";
                        v93 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                        v94 = PRErrorWithCodeAndUserInfo(100, v93);
LABEL_242:
                        *a3 = v94;
                      }
                    }
                  }
                }

                else
                {
                  v96 = [v122 intValue];
                  if (v96 != [v118 intValue])
                  {
                    v97 = qword_1009F9820;
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                    {
                      sub_10049B4CC();
                    }

                    if (a3)
                    {
                      v147 = NSLocalizedDescriptionKey;
                      v148 = @"naccess_slots_min must equal naccess_slots_max for initiator.";
                      v93 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                      v94 = PRErrorWithCodeAndUserInfo(100, v93);
                      goto LABEL_242;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v121)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v117 != 0)) == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v98 = [v121 intValue];
            if ([v117 integerValue] >= v98)
            {
              if ([v121 intValue] >= 0x10000)
              {
                v101 = qword_1009F9820;
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  sub_10049B500(v149, [v121 intValue]);
                }

                if (a3)
                {
                  v141 = NSLocalizedDescriptionKey;
                  v142 = @"got invalid interval_min_ms.";
                  v102 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                  *a3 = PRErrorWithCodeAndUserInfo(100, v102);
                }
              }

              v103 = [v121 integerValue];
              if ((a2[98] & 1) == 0)
              {
                a2[98] = 1;
              }

              *(a2 + 48) = v103;
              v104 = qword_1009F9820;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                if ((a2[98] & 1) == 0)
                {
                  sub_1000195BC();
                }

                v105 = *(a2 + 48);
                *v139 = 67109120;
                v140 = v105;
                _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[Range Params] got interval_min_ms: %d", v139, 8u);
              }

              if ([v117 intValue] >= 0x10000)
              {
                v106 = qword_1009F9820;
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  sub_10049B538(v139, [v117 intValue]);
                }

                if (a3)
                {
                  v137 = NSLocalizedDescriptionKey;
                  v138 = @"got invalid interval_max_ms.";
                  v107 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                  *a3 = PRErrorWithCodeAndUserInfo(100, v107);
                }
              }

              v108 = [v117 integerValue];
              if ((a2[102] & 1) == 0)
              {
                a2[102] = 1;
              }

              *(a2 + 50) = v108;
              v100 = qword_1009F9820;
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                if ((a2[102] & 1) == 0)
                {
                  sub_1000195BC();
                }

                v109 = *(a2 + 50);
                *v135 = 67109120;
                v136 = v109;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "[Range Params] got interval_max_ms: %d", v135, 8u);
              }
            }

            else
            {
              v99 = qword_1009F9820;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                sub_10049B570();
              }

              if (!a3)
              {
                goto LABEL_272;
              }

              v143 = NSLocalizedDescriptionKey;
              v144 = @"interval_min_ms must be less than or equal to interval_max_ms.";
              v100 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
              *a3 = PRErrorWithCodeAndUserInfo(100, v100);
            }
          }
        }
      }

LABEL_272:
      if (v119)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v110 = [v119 integerValue];
          if ((a2[21] & 1) == 0)
          {
            a2[21] = 1;
          }

          a2[20] = v110;
          v111 = qword_1009F9820;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            if ((a2[21] & 1) == 0)
            {
              sub_1000195BC();
            }

            v112 = a2[20];
            *v135 = 67109120;
            v136 = v112;
            _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_mslot_sz_250us: %d", v135, 8u);
          }
        }
      }

      if (!v120 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v42 = 1;
        goto LABEL_315;
      }

      v113 = [v120 integerValue];
      if ((a2[19] & 1) == 0)
      {
        a2[19] = 1;
      }

      a2[18] = v113;
      v44 = qword_1009F9820;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2[19] & 1) == 0)
        {
          sub_1000195BC();
        }

        v114 = a2[18];
        *v135 = 67109120;
        v136 = v114;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_mslot_sz_250us: %d", v135, 8u);
      }

      v42 = 1;
LABEL_288:

LABEL_315:
      goto LABEL_316;
    }

    if (![v129 intValue] && !objc_msgSend(v123, "intValue") && !objc_msgSend(v116, "intValue"))
    {
      v51 = [v129 integerValue];
      if ((a2[67] & 1) == 0)
      {
        a2[67] = 1;
      }

      a2[66] = v51;
      v52 = [v123 integerValue];
      if ((a2[69] & 1) == 0)
      {
        a2[69] = 1;
      }

      a2[68] = v52;
      v53 = [v116 integerValue];
      if ((a2[71] & 1) == 0)
      {
        a2[71] = 1;
      }

      a2[70] = v53;
      v54 = qword_1009F9820;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2[67] & 1) == 0)
        {
          sub_1000195BC();
        }

        v55 = a2[66];
        *buf = 67109120;
        *&buf[4] = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_ant_mask2: 0x%x", buf, 8u);
      }

      v56 = qword_1009F9820;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2[69] & 1) == 0)
        {
          sub_1000195BC();
        }

        v57 = a2[68];
        *buf = 67109120;
        *&buf[4] = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_ant_mask2: 0x%x", buf, 8u);
      }

      v40 = qword_1009F9820;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_113;
      }

      if ((a2[71] & 1) == 0)
      {
        sub_1000195BC();
      }

      v58 = a2[70];
      *buf = 67109120;
      *&buf[4] = v58;
      goto LABEL_112;
    }

    if (sub_10002C97C(v129))
    {
      v33 = [v129 integerValue];
      if ((a2[67] & 1) == 0)
      {
        a2[67] = 1;
      }

      a2[66] = v33;
      v34 = qword_1009F9820;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2[67] & 1) == 0)
        {
          sub_1000195BC();
        }

        v35 = a2[66];
        *buf = 67109120;
        *&buf[4] = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[Range Params] got tx_ant_mask2: 0x%x", buf, 8u);
      }

      if (sub_10002CA00(v123))
      {
        v36 = [v123 integerValue];
        if ((a2[69] & 1) == 0)
        {
          a2[69] = 1;
        }

        a2[68] = v36;
        v37 = qword_1009F9820;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2[69] & 1) == 0)
          {
            sub_1000195BC();
          }

          v38 = a2[68];
          *buf = 67109120;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_ant_mask2: 0x%x", buf, 8u);
        }

        if (sub_10002CA5C(v116, v123))
        {
          v39 = [v116 integerValue];
          if ((a2[71] & 1) == 0)
          {
            a2[71] = 1;
          }

          a2[70] = v39;
          v40 = qword_1009F9820;
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_113;
          }

          if ((a2[71] & 1) == 0)
          {
            sub_1000195BC();
          }

          v41 = a2[70];
          *buf = 67109120;
          *&buf[4] = v41;
LABEL_112:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[Range Params] got rx_sync_search_ant_mask2: 0x%x", buf, 8u);
LABEL_113:

          goto LABEL_114;
        }

        v50 = qword_1009F9820;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_10049B2D8(buf, [v116 intValue]);
        }

        if (!a3)
        {
          goto LABEL_314;
        }

        v167 = NSLocalizedDescriptionKey;
        v168 = @"got invalid rx_sync_search_ant_mask2.";
        v44 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v45 = PRErrorWithCodeAndUserInfo(100, v44);
      }

      else
      {
        v49 = qword_1009F9820;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10049B2A0(buf, [v123 intValue]);
        }

        if (!a3)
        {
          goto LABEL_314;
        }

        v169 = NSLocalizedDescriptionKey;
        v170 = @"got invalid rx_ant_mask2.";
        v44 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
        v45 = PRErrorWithCodeAndUserInfo(100, v44);
      }
    }

    else
    {
      v48 = qword_1009F9820;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10049B268(buf, [v129 intValue]);
      }

      if (!a3)
      {
        goto LABEL_314;
      }

      v171 = NSLocalizedDescriptionKey;
      v172 = @"got invalid tx_ant_mask2.";
      v44 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
      v45 = PRErrorWithCodeAndUserInfo(100, v44);
    }

LABEL_236:
    v42 = 0;
    *a3 = v45;
    goto LABEL_288;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049B5A4();
  }

  if (a3)
  {
    v179 = NSLocalizedDescriptionKey;
    v180 = @"No user debug options provided.";
    v7 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
    PRErrorWithCodeAndUserInfo(100, v7);
    *a3 = v42 = 0;
LABEL_316:

    goto LABEL_317;
  }

  v42 = 0;
LABEL_317:

  return v42;
}

void sub_10002C7F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10002C97C(void *a1)
{
  v1 = a1;
  v2 = [v1 intValue] == 1 || objc_msgSend(v1, "intValue") == 2 || objc_msgSend(v1, "intValue") == 4 || objc_msgSend(v1, "intValue") == 8;

  return v2;
}

BOOL sub_10002CA00(void *a1)
{
  v1 = a1;
  if ([v1 intValue])
  {
    v2 = [v1 intValue] < 15;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10002CA5C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = [v3 intValue] != 0;
  do
  {
    v8 = [v3 intValue];
    if (v8 >> v6 >= 0)
    {
      v9 = (v8 >> v6) & 1;
    }

    else
    {
      v9 = -((v8 >> v6) & 1);
    }

    v5 += v9;
    v7 = (v5 < 3) & v7;
    ++v6;
  }

  while (v6 != 4);
  v10 = [v3 intValue];
  v11 = [v4 intValue];
  v12 = (v11 & v10) == [v3 intValue];

  return v12 & v7;
}

uint64_t sub_10002CB38(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = PRDebugConfigArgDebugLevel;
    v6 = [v3 objectForKey:PRDebugConfigArgDebugLevel];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Debug Options] got debugLevel: %@", buf, 0xCu);
        }

        if ([v6 intValue] < 1 || objc_msgSend(v6, "intValue") >= 4)
        {
          if (!a2)
          {
            v9 = 0;
            goto LABEL_21;
          }

          v15 = NSLocalizedDescriptionKey;
          v16 = @"Invalid debug level. Only 1-3 allowed.";
          v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          PRErrorWithCodeAndUserInfo(100, v8);
          *a2 = v9 = 0;
          goto LABEL_20;
        }

        v10 = +[PRGlobalDebugSettings sharedSettings];
        [v10 setObject:v6 forKey:v5];
      }
    }

    v11 = PRDebugConfigArgLeadingEdgeThresholds;
    v8 = [v4 objectForKey:PRDebugConfigArgLeadingEdgeThresholds];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Debug Options] got LE thresholds: %@", buf, 0xCu);
        }

        v13 = +[PRGlobalDebugSettings sharedSettings];
        [v13 setObject:v8 forKey:v11];
      }
    }

    v9 = 1;
LABEL_20:

    goto LABEL_21;
  }

  if (a2)
  {
    v19 = NSLocalizedDescriptionKey;
    v20 = @"No user global debug options provided.";
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    PRErrorWithCodeAndUserInfo(999, v6);
    *a2 = v9 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = 0;
LABEL_22:

  return v9;
}

uint64_t sub_10002CE74(uint64_t result, int a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void sub_10002CE80()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_10002CF30()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10002CFE0()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10002D090()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10002D140()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10002D1F0()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10002D2A0()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10002D350()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10002D400()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_1005494F8;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10002D4F4()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009EC6E0 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EC6D0 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC6D0, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009EC6F8 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EC6E8 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC6E8, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009EC710 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EC700 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC700, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009EC728 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EC718 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC718, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009EC740 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EC730 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC730, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009EC758 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EC748 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC748, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009EC770 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EC760 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC760, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009EC788 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EC778 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC778, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009EC7A0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EC790 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EC790, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10002DB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10002DBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 88));
  if (sub_100014C40())
  {
    v4 = [v3 length];
    v5 = qword_1009F9820;
    if (v4 == 6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,New self ID: %@", &v12, 0xCu);
      }

      v6 = [v3 copy];
      v7 = *(a1 + 192);
      *(a1 + 192) = v6;

      *(a1 + 54) = 1;
      sub_10002DD5C(a1, 0.0);
      v8 = 0;
      v9 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049B5D8();
      }

      v8 = &_mh_execute_header;
      v9 = 2;
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#wifi-service,ignoring self id on unsupported platform", &v12, 2u);
    }

    v9 = 0;
    v8 = &_mh_execute_header;
  }

  std::mutex::unlock((a1 + 88));

  return v9 | v8;
}

void sub_10002DD5C(uint64_t a1, double a2)
{
  if ((*(a1 + 49) & 1) == 0)
  {
    *(a1 + 49) = 1;
    if (a2 <= 0.0)
    {
      v5 = *(a1 + 80);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100030444;
      block[3] = &unk_10098AD98;
      block[4] = a1;
      dispatch_async(v5, block);
    }

    else
    {
      v3 = dispatch_time(0, (a2 * 1000000000.0));
      v4 = *(a1 + 80);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100030A60;
      v6[3] = &unk_10098AD98;
      v6[4] = a1;
      dispatch_after(v3, v4, v6);
    }
  }
}

uint64_t sub_10002DE64(uint64_t a1)
{
  std::mutex::lock((a1 + 88));
  if (sub_100014C40())
  {
    v2 = *(a1 + 416);
    if (!v2)
    {
      v2 = 1;
      *(a1 + 416) = 1;
    }

    *(a1 + 416) = v2 + 1;
  }

  else
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#wifi-service,ignoring ticket IDs on unsupported platform", v5, 2u);
    }

    v2 = 0;
  }

  std::mutex::unlock((a1 + 88));
  return v2;
}

void sub_10002DF20(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  std::mutex::lock((a1 + 88));
  sub_10003735C(v9, a3);
  v8 = v7;
  v10 = v8;
  sub_100035934(__p, a2, v9);
  sub_100036DAC(a1 + 424, __p);

  sub_1000197C8(v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000197C8(v9);
  std::mutex::unlock((a1 + 88));
}

void sub_10002E00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, char a14)
{
  sub_1000359BC(&a14);

  sub_1000197C8(&a9);
  std::mutex::unlock((v14 + 88));

  _Unwind_Resume(a1);
}

void sub_10002E05C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 88));
  sub_1000373F4((a1 + 424), a2);

  std::mutex::unlock((a1 + 88));
}

unint64_t sub_10002E0BC(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  if (sub_100014C40())
  {
    if (a2[1] == *a2)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049B78C();
      }

      goto LABEL_22;
    }

    v4 = sub_10005D78C(*a2);
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      while (1)
      {
        sub_100035A00(v19, v5);
        v7 = sub_10005D78C(v19) == v4;

        sub_100036D2C(v24);
        sub_100036CAC(&v23);
        sub_100036C2C(&v22);

        if (!v7)
        {
          break;
        }

        v5 += 168;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049B688();
      }

      goto LABEL_22;
    }

LABEL_6:
    if (!v4)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049B758();
      }

      goto LABEL_22;
    }

    v8 = sub_100005288();
    v9 = *(a1 + 448);
    switch(v9)
    {
      case 0:
        v14 = v8;
        if (v4 == 2)
        {
          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19[0]) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#wifi-service,setting self role to responder", v19, 2u);
          }

          if (sub_10002E5A4(a1) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049B724();
          }

          *(a1 + 448) = 2;
          sub_10002E61C(a1, a2);
          sub_10033B12C(*(a1 + 64), 1022611261 * ((a2[1] - *a2) >> 3), v14);
        }

        else if (v4 == 1)
        {
          v15 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#wifi-service,setting self role to initiator", v19, 2u);
          }

          if (sub_10002E5A4(a1) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049B724();
          }

          *(a1 + 448) = 1;
          sub_10002E61C(a1, a2);
          sub_10033B164(*(a1 + 64), 1022611261 * ((a2[1] - *a2) >> 3), v14);
        }

        goto LABEL_42;
      case 1:
        if (v4 != 1)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049B6F0();
          }

          goto LABEL_22;
        }

        break;
      case 2:
        if (v4 != 2)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049B6BC();
          }

LABEL_22:
          v12 = &_mh_execute_header;
          v11 = 2;
          goto LABEL_23;
        }

        break;
      default:
LABEL_42:
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 232);
          LODWORD(v19[0]) = 134217984;
          *(v19 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#wifi-service,start ranging - peer map holds %lu peers", v19, 0xCu);
        }

        sub_10002DD5C(a1, 0.0);
        v12 = 0;
        v11 = 0;
        goto LABEL_23;
    }

    sub_10002E61C(a1, a2);
    goto LABEL_42;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#wifi-service,ignoring range request on unsupported platform", v19, 2u);
  }

  v11 = 0;
  v12 = &_mh_execute_header;
LABEL_23:
  std::mutex::unlock((a1 + 88));
  return v11 | v12;
}

id *sub_10002E540(id *a1)
{
  sub_100036D2C((a1 + 14));
  sub_100036CAC((a1 + 10));
  sub_100036C2C((a1 + 6));

  return a1;
}

BOOL sub_10002E5A4(uint64_t a1)
{
  if (*(a1 + 232))
  {
    return 1;
  }

  if (!*(a1 + 448))
  {
    return 0;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049B7C0();
  }

  return *(a1 + 232) != 0;
}

void sub_10002E61C(uint64_t a1, id **a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = qword_1009F9820;
    v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,Peers added while not ready", buf, 2u);
    }

    sub_1000320E8(v4, 1, a2);
  }

  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v33 = (a1 + 224);
    while (1)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_10005D774(v6);
        v9 = sub_10005D794(v6);
        v10 = sub_10005D7A4(v6);
        *buf = 138412802;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#wifi-service,Adding to map peer ID: %@; client queue: %@, peer mac: %@", buf, 0x20u);
      }

      v11 = sub_10005D7AC(v6);
      v12 = sub_10005D774(v6);
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = sub_10005D77C(v6);
      if (!v13)
      {
        break;
      }

      v14 = sub_10005D784(v6);
      v15 = v14 == 0;

      if (v15)
      {
        goto LABEL_22;
      }

      v16 = *v33;
      if (!*v33)
      {
        goto LABEL_20;
      }

      v17 = (a1 + 224);
      do
      {
        v18 = v16[4];
        v19 = v18 >= v11;
        v20 = v18 < v11;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 != v33 && v11 >= v17[4])
      {
        v23 = v17[5];
        v24 = v17[6];
        if (v23 != v24)
        {
          do
          {
            sub_100035A00(buf, v23);
            v25 = sub_10005D77C(buf);
            v26 = sub_10005D77C(v6);
            v27 = [v25 isEqualToData:v26];

            if ((v27 & 1) == 0)
            {
              v28 = qword_1009F9820;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10005D774(v6);
                objc_claimAutoreleasedReturnValue();
                sub_10049B7F4();
              }

              sub_100035A00(&v40, v6);
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v29 = sub_100037ED4(&v34, &v40, v49, 1uLL);
              sub_100031C78(v29, v30, &v34);
              v39 = &v34;
              sub_100037E2C(&v39);

              sub_100036D2C(v48);
              sub_100036CAC(&v47);
              sub_100036C2C(&v46);
            }

            sub_100036D2C(v57);
            sub_100036CAC(v56);
            sub_100036C2C(v55);

            v23 += 168;
          }

          while (v23 != v24);
          v24 = v17[6];
        }

        if (v24 >= v17[7])
        {
          v31 = sub_1000380E4((v17 + 5), v6);
        }

        else
        {
          sub_100035A00(v24, v6);
          v31 = v24 + 168;
          v17[6] = v24 + 168;
        }

        v17[6] = v31;
      }

      else
      {
LABEL_20:
        sub_100035A00(buf, v6);
        v34 = 0;
        v35 = 0;
        v36 = 0;
        sub_100037ED4(&v34, buf, v59, 1uLL);
        v40 = v11;
        v42 = 0;
        v43 = 0;
        v41 = 0;
        sub_100037B5C(&v41, v34, v35, 0xCF3CF3CF3CF3CF3DLL * ((v35 - v34) >> 3));
        sub_100038000(a1 + 216, &v40);
        v39 = &v41;
        sub_100037E2C(&v39);
        v39 = &v34;
        sub_100037E2C(&v39);

        sub_100036D2C(v57);
        sub_100036CAC(v56);
        sub_100036C2C(v55);
      }

LABEL_25:
      v6 += 21;
      if (v6 == v5)
      {
        return;
      }
    }

LABEL_22:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049B838(&v37, v38);
    }

    sub_100035A00(buf, v6);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v21 = sub_100037ED4(&v40, buf, v59, 1uLL);
    sub_100031C78(v21, v22, &v40);
    v34 = &v40;
    sub_100037E2C(&v34);

    sub_100036D2C(v57);
    sub_100036CAC(v56);
    sub_100036C2C(v55);

    goto LABEL_25;
  }
}

void sub_10002ECC0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 88));
  if (sub_100014C40())
  {
    if (sub_10002E5A4(a1))
    {
      if (*(a2 + 8) == *a2)
      {
        sub_100037A44(a1 + 216, *(a1 + 224));
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 216) = a1 + 224;
      }

      else
      {
        sub_10002EDE0(a1, a2);
        if (*(a1 + 232))
        {
LABEL_12:
          sub_10002DD5C(a1, 0.0);
          goto LABEL_13;
        }
      }

      *(a1 + 448) = 0;
      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049B86C();
    }
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#wifi-service,ignoring ranging stop on unsupported platform", v5, 2u);
    }
  }

LABEL_13:
  std::mutex::unlock((a1 + 88));
}

void sub_10002EDE0(uint64_t a1, id **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = (a1 + 224);
    do
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_10005D774(v2);
        v7 = sub_10005D794(v2);
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,Removing from map peer ID: %@; client queue: %@", buf, 0x16u);
      }

      v8 = sub_10005D7AC(v2);
      v9 = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v11 = v9[4];
        v12 = v11 >= v8;
        v13 = v11 < v8;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 != v4 && v8 >= v10[4])
      {
        v15 = v10[5];
        if (v15 == v10[6])
        {
          sub_100038940((a1 + 216), v10);
        }

        else
        {
          v16 = 0;
          do
          {
            if (sub_10005D634(v15, v2))
            {
              v17 = v10[6];
              if (v15 + 168 == v17)
              {
                v19 = v15;
              }

              else
              {
                v18 = v15;
                do
                {
                  v19 = (v18 + 168);
                  sub_100038554(v18, (v18 + 168));
                  v20 = v18 + 336;
                  v18 += 168;
                }

                while (v20 != v17);
              }

              sub_100037E80((v10 + 5), v19);
              v16 = 1;
            }

            else
            {
              v15 += 168;
            }
          }

          while (v15 != v10[6]);
          if (v10[5] == v15)
          {
            sub_100038940((a1 + 216), v10);
          }

          if (v16)
          {
            goto LABEL_16;
          }
        }

        v14 = qword_1009F9820;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005D774(v2);
          objc_claimAutoreleasedReturnValue();
          sub_10049B8A0();
        }
      }

      else
      {
LABEL_13:
        v14 = qword_1009F9820;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005D774(v2);
          objc_claimAutoreleasedReturnValue();
          sub_10049B8E4();
        }
      }

LABEL_16:
      v2 += 21;
    }

    while (v2 != v3);
  }
}

uint64_t sub_10002F0B4(uint64_t a1)
{
  *a1 = 1084227584;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 1;
  *(a1 + 88) = 850045863;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 424) = a1 + 432;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  if (sub_100014C40())
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v3 = dispatch_queue_create("com.apple.nearbyd.WiFiRanging", v2);
    v4 = *(a1 + 80);
    *(a1 + 80) = v3;

    sub_10002F250(a1);
    *(a1 + 460) = 0;
  }

  return a1;
}

void sub_10002F1D8(_Unwind_Exception *a1)
{
  v7 = v5;

  sub_100037AA4(v6, *(v1 + 432));
  sub_100035AE8(v4);
  sub_100037A44(v3, *(v1 + 224));

  std::mutex::~mutex(v2);
  v9 = *(v1 + 72);
  if (v9)
  {
    sub_10000AD84(v9);
  }

  _Unwind_Resume(a1);
}

const void *sub_10002F250(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (*(a1 + 55))
    {
      return result;
    }

    v3 = WiFiManagerClientCopyInterfaces();
    v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v4)
      {
        sub_10049B928();
      }

      CFRelease(v3);
      *(a1 + 55) = 1;
      return *(a1 + 16);
    }

    if (v4)
    {
      sub_10049B95C();
    }

    goto LABEL_29;
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__sig) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,calling WiFiManagerClientCreate", &buf, 2u);
  }

  v6 = WiFiManagerClientCreate();
  *(a1 + 16) = v6;
  if (v6)
  {
    CFRetain(v6);
    if (pthread_attr_init(&buf))
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049B990(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else if (pthread_attr_setdetachstate(&buf, 2))
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049BA08(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    else if (pthread_create((a1 + 8), &buf, sub_100032354, *(a1 + 16)))
    {
      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049BA80(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    else
    {
      if (!pthread_attr_destroy(&buf))
      {
        v39 = *(a1 + 16);
        v40 = WiFiManagerClientCopyInterfaces();
        if (v40)
        {
          CFRelease(v40);
          v41 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "#wifi-service,Interfaces found at manager creation.", v44, 2u);
          }

          *(a1 + 55) = 1;
        }

        else
        {
          v42 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#wifi-service,No interfaces when creating manager. Setting up attachment callback.", v44, 2u);
          }

          v43 = *(a1 + 16);
          WiFiManagerClientRegisterDeviceAttachmentCallback();
        }

        return *(a1 + 16);
      }

      v31 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049BAF8(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    sub_10002F810(a1, 1);
    sub_10002FA5C(a1);
LABEL_29:
    result = *(a1 + 16);
    if (result)
    {
      CFRelease(result);
      result = 0;
      *(a1 + 16) = 0;
    }

    return result;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049BB70();
  }

  sub_10002F810(a1, 1);
  sub_10002FA5C(a1);
  return 0;
}

uint64_t sub_10002F560(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#wifi-service,cancelling wifi ranging runloop thread", v5, 2u);
    }

    pthread_cancel(*(a1 + 8));
  }

  sub_100037AA4(a1 + 424, *(a1 + 432));
  if (*(a1 + 408) == 1)
  {

    sub_100036D2C(a1 + 352);
    sub_100036CAC(a1 + 320);
    sub_100036C2C(a1 + 288);
  }

  sub_100037A44(a1 + 216, *(a1 + 224));

  std::mutex::~mutex((a1 + 88));
  v3 = *(a1 + 72);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

void sub_10002F684(uint64_t a1)
{
  v2 = sub_100014C40();
  v3 = qword_1009F9820;
  if (v2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,creating awdl request", buf, 2u);
    }

    v4 = +[NSMutableDictionary dictionary];
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,starting awdl in follow mode", v8, 2u);
    }

    v6 = [NSNumber numberWithInt:1];
    [v4 setValue:v6 forKey:@"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"];

    v7 = [NSNumber numberWithInt:1];
    [v4 setValue:v7 forKey:@"AWDL_INFO_PEER_PREFERRED_BAND"];

    sub_10002FB48(a1, v4);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049BBA4();
    }

    sub_10002F810(a1, 0);
    sub_10002FA5C(a1);
  }
}

void sub_10002F810(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  v11 = (a1 + 224);
  if (v2 != (a1 + 224))
  {
    do
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_100037B5C(&v12, v2[5], v2[6], 0xCF3CF3CF3CF3CF3DLL * ((v2[6] - v2[5]) >> 3));
      v4 = v12;
      v5 = v13;
      while (v4 != v5)
      {
        sub_10005D7C0(v4, v17);
        if (v17[3])
        {
          v6 = sub_10005D794(v4);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3321888768;
          block[2] = sub_100031E1C;
          block[3] = &unk_10098ADB8;
          sub_100037914(v16, v17);
          v16[8] = a2;
          dispatch_async(v6, block);

          sub_100036CAC(v16);
        }

        else
        {
          v7 = qword_1009F9820;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_10005D774(v4);
            objc_claimAutoreleasedReturnValue();
            sub_10049BBD8();
          }
        }

        sub_100036CAC(v17);
        v4 += 21;
      }

      v17[0] = &v12;
      sub_100037E2C(v17);
      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v11);
  }
}

void sub_10002FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_100036CAC(&a25);
  a25 = &a10;
  sub_100037E2C(&a25);
  _Unwind_Resume(a1);
}

void sub_10002FA5C(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049BC1C();
  }

  sub_100037A44(a1 + 216, *(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 50) = 0;
  *(a1 + 52) = 0;
  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  *(a1 + 54) = 0;
  if (*(a1 + 40))
  {
    if (sub_10003020C(a1))
    {
      sub_10003020C(a1);
      v2 = *(a1 + 40);
      WiFiDeviceClientStopNetwork();
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }
}

void sub_10002FB48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_10003020C(a1))
  {
    if (sub_1000324C0(a1, 0))
    {
      if (*(a1 + 53) == 1)
      {
        v4 = sub_10003F5C8();
        if ((*(a1 + 168) & 1) == 0)
        {
          __assert_rtn("startNetwork", "PRWiFiRangingService_MW.mm", 1295, "fStartNetworkCallbackWaitStartTime.has_value()");
        }

        if (v4 - *(a1 + 160) <= 5.0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049BC84();
          }

          goto LABEL_37;
        }

        *(a1 + 52) = 0;
        if (*(a1 + 184) == 1)
        {
          *(a1 + 184) = 0;
        }
      }

      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,starting network", v12, 2u);
      }

      sub_10003020C(a1);
      started = WiFiDeviceClientStartNetwork();
      *(a1 + 456) = 1;
      *(a1 + 53) = 1;
      *(a1 + 160) = sub_10003F5C8();
      *(a1 + 168) = 1;
      if (!started)
      {
        v11 = 0.0;
        goto LABEL_36;
      }

      *(a1 + 456) = 0;
      *(a1 + 53) = 0;
      *(a1 + 168) = 0;
      v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
      if (started <= 36)
      {
        if (started != -3930)
        {
          if (started == 1)
          {
            if (v7)
            {
              sub_10049BD20();
            }

            v8 = -1;
            goto LABEL_32;
          }

          goto LABEL_29;
        }

        if (v7)
        {
          sub_10049BD54();
        }

        v11 = 1.0;
LABEL_36:
        sub_10002DD5C(a1, v11);
        goto LABEL_37;
      }

      if (started != 37)
      {
        if (started == 82)
        {
          if (v7)
          {
            sub_10049BCB8();
          }

          goto LABEL_31;
        }

LABEL_29:
        if (v7)
        {
          sub_10049BD88();
        }

LABEL_31:
        v8 = 1;
LABEL_32:
        sub_10002F810(a1, v8);
        sub_10002FA5C(a1);
        goto LABEL_37;
      }

      if (v7)
      {
        sub_10049BCEC();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049BC50();
      }

      v9 = dispatch_time(0, 1000000000);
      v10 = *(a1 + 80);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100032778;
      block[3] = &unk_10098AD98;
      block[4] = a1;
      dispatch_after(v9, v10, block);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049BDF8();
  }

LABEL_37:
}

void sub_10002FE5C(uint64_t a1)
{
  if (*(a1 + 52) == 1)
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#wifi-service,Not stopping AWDL due to lingering results callback", &v14, 2u);
    }

    if ((*(a1 + 184) & 1) == 0)
    {
      sub_10049BF50();
    }

    v3 = sub_10003F5C8();
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 184) & 1) == 0)
      {
        sub_1000195BC();
      }

      v5 = *(a1 + 176);
      v14 = 134218240;
      v15 = v3;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#wifi-service,time: %f, time of results callback: %f", &v14, 0x16u);
    }

    if ((*(a1 + 184) & 1) == 0)
    {
      sub_1000195BC();
    }

    if (v3 - *(a1 + 176) > 5.0)
    {
      *(a1 + 52) = 0;
      *(a1 + 184) = 0;
    }

    v6 = 0.5;
LABEL_23:
    sub_10002DD5C(a1, v6);
    return;
  }

  if (*(a1 + 53) == 1)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#wifi-service,not stopping AWDL due to lingering start network callback", &v14, 2u);
    }

    v8 = sub_10003F5C8();
    if ((*(a1 + 168) & 1) == 0)
    {
      sub_10049BF24();
    }

    v9 = v8;
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 168) & 1) == 0)
      {
        sub_1000195BC();
      }

      v11 = *(a1 + 160);
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#wifi-service,time: %f, time of start network callback: %f", &v14, 0x16u);
    }

    if ((*(a1 + 168) & 1) == 0)
    {
      sub_1000195BC();
    }

    if (v9 - *(a1 + 160) > 5.0)
    {
      *(a1 + 53) = 0;
      *(a1 + 168) = 0;
    }

    v6 = 1.0;
    goto LABEL_23;
  }

  *(a1 + 50) = 0;
  v12 = sub_10003020C(a1);
  if (!v12 || !*(a1 + 40))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049BE9C(v12, a1);
    }

    goto LABEL_29;
  }

  v13 = WiFiDeviceClientStopNetwork();
  *(a1 + 456) = 4;
  if (v13)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049BE2C();
    }

LABEL_29:
    sub_10002F810(a1, 1);
    sub_10002FA5C(a1);
    return;
  }

  sub_10002DD5C(a1, 0.0);
}

uint64_t sub_10003020C(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    result = sub_10002F250(a1);
    if (result)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#wifi-service,Calling WiFiManagerClientCopyInterfaces for AWDL interface", &v13, 2u);
      }

      v4 = WiFiManagerClientCopyInterfaces();
      if (v4)
      {
        v5 = v4;
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v7 = Count;
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
            if (ValueAtIndex)
            {
              v10 = ValueAtIndex;
              v11 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
              {
                LOWORD(v13) = 0;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#wifi-service,Calling WiFiDeviceClientIsInterfaceAWDL", &v13, 2u);
              }

              if (WiFiDeviceClientIsInterfaceAWDL())
              {
                break;
              }
            }

            if (v7 == ++v8)
            {
              goto LABEL_21;
            }
          }

          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412290;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientIsInterfaceAWDL returned true for %@", &v13, 0xCu);
          }

          *(a1 + 32) = v10;
          CFRetain(v10);
          sub_100032404(a1);
        }

LABEL_21:
        CFRelease(v5);
        result = *(a1 + 32);
        if (!result)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049BF7C();
          }

          sub_10002F810(a1, 1);
          sub_10002FA5C(a1);
          return *(a1 + 32);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049BFB0();
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_10003044C(uint64_t a1)
{
  std::mutex::lock((a1 + 88));
  *(a1 + 49) = 0;
  if ((*(a1 + 55) & 1) == 0)
  {
    v5 = sub_10002F250(a1);
    v6 = qword_1009F9820;
    if (v5)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#wifi-service,State machine cannot continue until wifi device is attached.", v23, 2u);
      }

      sub_10002DD5C(a1, 0.5);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049BFE4();
    }

    goto LABEL_61;
  }

  v2 = *(a1 + 456);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is ready for ranging", v23, 2u);
      }

      v12 = sub_10002E5A4(a1);
      v13 = *(a1 + 448);
      if (v12)
      {
        switch(v13)
        {
          case 2:
            if ((*(a1 + 54) & 1) == 0)
            {
              v20 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *v23 = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is ready for ranging - requesting responder ranging", v23, 2u);
              }

              sub_100030FE0(a1);
              goto LABEL_61;
            }

            break;
          case 1:
            if ((*(a1 + 54) & 1) == 0)
            {
              v19 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *v23 = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is ready for ranging - requesting initiator ranging", v23, 2u);
              }

              sub_100030C68(a1);
              goto LABEL_61;
            }

            break;
          case 0:
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_10049C018();
            }

            goto LABEL_60;
          default:
            goto LABEL_61;
        }

        goto LABEL_78;
      }

      if (v13 == 2)
      {
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is ready for ranging - stopping responder ranging", v23, 2u);
        }

        sub_100030FE0(a1);
      }

      v7 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *v23 = 0;
      v8 = "#wifi-service,Current AWDL state is ready for ranging - stopping awdl";
      goto LABEL_59;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_61;
      }

      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v8 = "#wifi-service,Current AWDL state is unavailable";
LABEL_59:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v23, 2u);
      }

LABEL_60:
      sub_10002FE5C(a1);
      goto LABEL_61;
    }

    v7 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    *v23 = 0;
    v16 = "#wifi-service,Current AWDL state is stopping";
LABEL_44:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v16, v23, 2u);
    goto LABEL_61;
  }

  if (!v2)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is down", v23, 2u);
    }

    if (sub_10002E5A4(a1))
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is down - starting awdl", v23, 2u);
      }

      sub_10002F684(a1);
    }

    else if (*(a1 + 448))
    {
      v17 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#wifi-service,Setting ranging role to unspecified", v23, 2u);
      }

      *(a1 + 448) = 0;
    }

    goto LABEL_61;
  }

  if (v2 == 1)
  {
    v14 = sub_10002E5A4(a1);
    v7 = qword_1009F9820;
    v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (v15)
      {
        *v23 = 0;
        v8 = "#wifi-service,Current AWDL state is starting but we don't have a range request active!";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!v15)
    {
      goto LABEL_61;
    }

    *v23 = 0;
    v16 = "#wifi-service,Current AWDL state is starting";
    goto LABEL_44;
  }

  if (v2 != 2)
  {
    goto LABEL_61;
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is up", v23, 2u);
  }

  if (!sub_10002E5A4(a1))
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v8 = "#wifi-service,Current AWDL state is up - stopping awdl";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v4 = *(a1 + 448);
  switch(v4)
  {
    case 2:
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is up - waiting to respond", v23, 2u);
      }

      if (!*(a1 + 192))
      {
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          break;
        }

        goto LABEL_74;
      }

LABEL_78:
      sub_100030A68(a1);
      break;
    case 1:
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#wifi-service,Current AWDL state is up - waiting to initiate", v23, 2u);
      }

      if (!*(a1 + 192))
      {
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_74:
        sub_10049C04C();
        break;
      }

      goto LABEL_78;
    case 0:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C080();
      }

      goto LABEL_60;
  }

LABEL_61:
  std::mutex::unlock((a1 + 88));
}

void sub_100030A68(uint64_t a1)
{
  if (*(a1 + 192))
  {
    if ((*(a1 + 456) & 0xFFFFFFFE) == 2)
    {
      v2 = +[NSMutableDictionary dictionary];
      [v2 setValue:*(a1 + 192) forKey:@"RANGING_TOKEN_ID"];
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 192);
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,setting self ranging ID to %@", &v5, 0xCu);
      }

      if (sub_100031804(a1))
      {
        if (WiFiDeviceClientSetRangingIdentifier())
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049C0E8();
          }

          sub_10002F810(a1, 1);
          sub_10002FA5C(a1);
        }

        else
        {
          *(a1 + 456) = 3;
          *(a1 + 54) = 0;
          sub_10002DD5C(a1, 0.0);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C158();
        }

        sub_10002F810(a1, -1);
        sub_10002FA5C(a1);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049C0B4();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C18C();
  }
}

void sub_100030C68(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 52) == 1)
    {
      v2 = sub_10003F5C8();
      if ((*(a1 + 184) & 1) == 0)
      {
        sub_10049C314();
      }

      if (v2 - *(a1 + 176) > 5.0)
      {
        *(a1 + 52) = 0;
        *(a1 + 184) = 0;
      }

      sub_10002DD5C(a1, 0.5);
      return;
    }

    v3 = sub_1000311E8(a1);
    if (CFArrayGetCount(v3) < 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C1F4();
      }

      goto LABEL_24;
    }

    Count = CFArrayGetCount(v3);
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      v11 = CFArrayGetCount(v3);
      v12 = 2050;
      v13 = Count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingStartAsync, num peers, %{public}ld, timeout, %{public}lf", buf, 0x16u);
    }

    if (!sub_100031804(a1))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C158();
      }

      goto LABEL_25;
    }

    WiFiDeviceClientRegisterRangingReportCallback();
    *(a1 + 52) = 1;
    *(a1 + 176) = sub_10003F5C8();
    *(a1 + 184) = 1;
    started = WiFiDeviceClientRangingStartAsync();
    if (started != -3930)
    {
      if (!started)
      {
LABEL_25:
        CFRelease(v3);
        return;
      }

      *(a1 + 52) = 0;
      if (*(a1 + 184) == 1)
      {
        *(a1 + 184) = 0;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C2A4();
      }

      *(a1 + 456) = 5;
LABEL_24:
      sub_10002DD5C(a1, 0.0);
      goto LABEL_25;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049C228();
    }

    *(a1 + 52) = 0;
    if (*(a1 + 184) == 1)
    {
      *(a1 + 184) = 0;
    }

    v7 = dispatch_time(0, 1000000000);
    v8 = *(a1 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031A34;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_after(v7, v8, block);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C1C0();
  }
}

void sub_100030FE0(uint64_t a1)
{
  v2 = sub_1000311E8(a1);
  v3 = sub_100031804(a1);
  Count = CFArrayGetCount(v2);
  v5 = qword_1009F9820;
  if (Count < 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientSetRangeable FALSE", &v7, 2u);
    }

    if (!WiFiDeviceClientSetRangeable())
    {
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = CFArrayGetCount(v2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientSetRangeable TRUE, num peers, %{public}ld", &v7, 0xCu);
  }

  if (!v3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049C158();
    }

    goto LABEL_15;
  }

  WiFiDeviceClientRegisterRangingReportCallback();
  if (WiFiDeviceClientSetRangeable())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      sub_10049C340();
    }

LABEL_15:
    *(a1 + 456) = 5;
LABEL_16:
    sub_10002DD5C(a1, 0.0);
  }

  CFRelease(v2);
}

id sub_1000311E8(uint64_t a1)
{
  v1 = [[NSMutableArray alloc] initWithCapacity:4];
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v32 = [NSNumber numberWithInt:4];
  v33 = sub_100015080();
  v3 = *(a1 + 216);
  if (v3 != (a1 + 224))
  {
    *&v2 = 67109120;
    v30 = v2;
    do
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v4 = v3[4];
      sub_100037B5C(&v36, v3[5], v3[6], 0xCF3CF3CF3CF3CF3DLL * ((v3[6] - v3[5]) >> 3));
      if (v37 == v36)
      {
        v5 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C42C(v49, v4, &v50, v5);
        }
      }

      else if ([v1 count] == 4)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C3E4(&v47, v48);
        }
      }

      else
      {
        sub_100035A00(v43, v36);
        v7 = v36;
        v6 = v37;
        while (v7 != v6)
        {
          v8 = sub_10005D784(v7);
          v9 = sub_10005D784(v43);
          v10 = v8 > v9;

          if (v10)
          {
            sub_100032780(v43, v7);
          }

          v7 += 168;
        }

        v11 = sub_10005D774(v43);
        v12 = [v11 copy];

        v13 = sub_10005D77C(v43);
        v14 = [v13 copy];

        v15 = sub_10005D784(v43);
        v16 = [v15 copy];

        v17 = sub_10005D7A4(v43);
        v18 = [v17 copy];

        v19 = qword_1009F9820;
        if (v12 && v14 && v16)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#wifi-service,peer mac addr: %@", buf, 0xCu);
          }

          v20 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v12;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#wifi-service,array of peers ranging ID %@", buf, 0xCu);
          }

          v21 = objc_alloc_init(NSMutableDictionary);
          [v21 setValue:v18 forKey:@"STATION_MAC"];
          [v21 setValue:v12 forKey:@"RANGING_TOKEN_ID"];
          [v21 setValue:v14 forKey:@"RANGING_PMK"];
          [v21 setValue:v16 forKey:@"RANGING_NUM_MEASUREMENTS"];
          v22 = [NSNumber numberWithInt:1];
          [v21 setValue:v22 forKey:@"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"];

          if (([v33 hasPrefix:@"iPhone"] & 1) != 0 || objc_msgSend(v33, "hasPrefix:", @"RealityDevice"))
          {
            [v21 setValue:v32 forKey:{@"RANGING_CORE_MASK", v30}];
          }

          v23 = [v21 copy];
          [v1 addObject:v23];

          v24 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 48);
            *buf = v30;
            LODWORD(v42) = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#wifi-service,follow mode for peer dict: %i", buf, 8u);
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C3B0(&v34, v35);
        }

        sub_100036D2C(v46);
        sub_100036CAC(&v45);
        sub_100036C2C(&v44);
      }

      v43[0] = &v36;
      sub_100037E2C(v43);
      v26 = v3[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v3[2];
          v28 = *v27 == v3;
          v3 = v27;
        }

        while (!v28);
      }

      v3 = v27;
    }

    while (v27 != (a1 + 224));
  }

  sub_100037A44(&v39, v40[0]);
  return v1;
}

void sub_100031700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char *a23)
{
  sub_100037A44(&a22, a23);

  _Unwind_Resume(a1);
}

uint64_t sub_100031804(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    result = sub_10002F250(a1);
    if (result)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#wifi-service,Calling WiFiManagerClientCopyInterfaces for device interface", &v13, 2u);
      }

      v4 = WiFiManagerClientCopyInterfaces();
      if (v4)
      {
        v5 = v4;
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v7 = Count;
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
            if (ValueAtIndex)
            {
              v10 = ValueAtIndex;
              v11 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
              {
                LOWORD(v13) = 0;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#wifi-service,Calling WiFiDeviceClientGetInterfaceRoleIndex", &v13, 2u);
              }

              if (!WiFiDeviceClientGetInterfaceRoleIndex())
              {
                break;
              }
            }

            if (v7 == ++v8)
            {
              goto LABEL_21;
            }
          }

          v12 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            v13 = 138412290;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#wifi-service,WiFiDeviceClientGetInterfaceRoleIndex is main interface, device, %@", &v13, 0xCu);
          }

          *(a1 + 24) = v10;
          CFRetain(v10);
        }

LABEL_21:
        CFRelease(v5);
        result = *(a1 + 24);
        if (!result)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049C4D8();
          }

          sub_10002F810(a1, 1);
          sub_10002FA5C(a1);
          return *(a1 + 24);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049BFB0();
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_100031A3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_100031A68(uint64_t a1, int a2)
{
  if (*(a1 + 408))
  {
    sub_10005D7C0(a1 + 240, v18);
    if (v19)
    {
      v4 = sub_10005D794(a1 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_100031C04;
      block[3] = &unk_10098ADB8;
      sub_100037914(v17, v18);
      v17[8] = a2;
      dispatch_async(v4, block);

      sub_100036CAC(v17);
    }

    else
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10005D774((a1 + 240));
        sub_10049C584(v14, &v15);
      }
    }

    sub_100036CAC(v18);
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049C50C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

uint64_t sub_100031C10(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100031C78(uint64_t a1, uint64_t a2, id **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      sub_10005D7C0(v3, v9);
      if (v10)
      {
        v5 = sub_10005D794(v3);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_100031E10;
        block[3] = &unk_10098ADE8;
        sub_100037914(v8, v9);
        dispatch_async(v5, block);

        sub_100036CAC(v8);
      }

      else
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10005D774(v3);
          objc_claimAutoreleasedReturnValue();
          sub_10049BBD8();
        }
      }

      sub_100036CAC(v9);
      v3 += 21;
    }

    while (v3 != v4);
  }
}

void sub_100031DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  sub_100036CAC(va);
  _Unwind_Resume(a1);
}

void sub_100031E28(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  v11 = (a1 + 224);
  if (v2 != (a1 + 224))
  {
    do
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_100037B5C(&v12, v2[5], v2[6], 0xCF3CF3CF3CF3CF3DLL * ((v2[6] - v2[5]) >> 3));
      v4 = v12;
      v5 = v13;
      while (v4 != v5)
      {
        sub_10005D7CC(v4, v17);
        if (v17[3])
        {
          v6 = sub_10005D794(v4);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3321888768;
          block[2] = sub_100032074;
          block[3] = &unk_10098AE18;
          sub_1000379AC(v16, v17);
          v16[8] = a2;
          dispatch_async(v6, block);

          sub_100036D2C(v16);
        }

        else
        {
          v7 = qword_1009F9820;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_10005D774(v4);
            objc_claimAutoreleasedReturnValue();
            sub_10049C5D8();
          }
        }

        sub_100036D2C(v17);
        v4 += 21;
      }

      v17[0] = &v12;
      sub_100037E2C(v17);
      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v11);
  }
}

void sub_100032028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_100036D2C(&a25);
  a25 = &a10;
  sub_100037E2C(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_100032080(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1000320E8(uint64_t a1, int a2, id **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      sub_10005D7CC(v3, v10);
      if (v11)
      {
        v6 = sub_10005D794(v3);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_100032290;
        block[3] = &unk_10098AE18;
        sub_1000379AC(v9, v10);
        v9[8] = a2;
        dispatch_async(v6, block);

        sub_100036D2C(v9);
      }

      else
      {
        v7 = qword_1009F9820;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10005D774(v3);
          objc_claimAutoreleasedReturnValue();
          sub_10049C5D8();
        }
      }

      sub_100036D2C(v10);
      v3 += 21;
    }

    while (v3 != v4);
  }
}

void sub_10003225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  sub_100036D2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003229C(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000322F0(uint64_t a1)
{
  std::mutex::lock((a1 + 88));
  if (*(a1 + 460) == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_100014C40();
  }

  std::mutex::unlock((a1 + 88));
  return v2;
}

uint64_t sub_100032354(uint64_t a1)
{
  if (a1)
  {
    v1 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiManagerClientScheduleWithRunLoop", buf, 2u);
    }

    CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    while (1)
    {
      CFRunLoopRun();
    }
  }

  printf("%s: managerClient is NULL!", "__wifiManagerEventsThread");
  return 0;
}

void sub_100032404(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#wifi-service,registerfForStateChanges", v3, 2u);
  }

  if (sub_10003020C(a1))
  {
    WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C61C();
  }
}

uint64_t sub_1000324C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#wifi-service,checkRangingReady - copying interface state info", buf, 2u);
    }

    *buf = 0;
    sub_10003020C(a1);
    WiFiDeviceClientCopyInterfaceStateInfo();
    v3 = *buf;
  }

  v5 = [v3 objectForKeyedSubscript:@"RANGING_ALLOWED"];
  v6 = v5;
  if (v5)
  {
    if ([v5 BOOLValue])
    {
      if ((*(a1 + 56) & 1) == 0)
      {
        v7 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#wifi-service,checkRangingReady - true - report to clients", buf, 2u);
        }

        sub_100031E28(a1, 0);
        if (sub_10002E5A4(a1))
        {
          v8 = *(a1 + 80);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100032770;
          block[3] = &unk_10098AD98;
          block[4] = a1;
          dispatch_async(v8, block);
        }
      }

      v9 = 1;
      *(a1 + 56) = 1;
    }

    else
    {
      if (*(a1 + 56))
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#wifi-service,checkRangingReady - false - report to clients", buf, 2u);
        }

        sub_100031E28(a1, 1);
      }

      v9 = 0;
      *(a1 + 56) = 0;
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 56))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#wifi-service,checkRangingReady - no info - currently %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
  }

  return v9 & 1;
}

uint64_t sub_100032780(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  sub_10003603C((a1 + 48), a2 + 48);
  sub_1000360B0((a1 + 80), a2 + 80);
  sub_100036124((a1 + 112), a2 + 112);
  *(a1 + 144) = *(a2 + 144);
  objc_storeStrong((a1 + 152), *(a2 + 152));
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

id sub_10003281C(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:4];
  if (*(a1 + 408))
  {
    v3 = sub_10005D774((a1 + 240));
    v4 = [v3 copy];

    v5 = sub_10005D77C(a1 + 240);
    v6 = [v5 copy];

    v7 = sub_10005D784(a1 + 240);
    v8 = [v7 copy];

    v9 = sub_10005D7A4(a1 + 240);
    v10 = [v9 copy];

    v11 = [NSNumber numberWithInt:4];
    v12 = sub_100015080();
    if (v4 && v6 && v8)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      [v13 setValue:v10 forKey:@"STATION_MAC"];
      [v13 setValue:v4 forKey:@"RANGING_TOKEN_ID"];
      [v13 setValue:v6 forKey:@"RANGING_PMK"];
      [v13 setValue:v8 forKey:@"RANGING_NUM_MEASUREMENTS"];
      if (([v12 hasPrefix:@"iPhone"] & 1) != 0 || objc_msgSend(v12, "hasPrefix:", @"RealityDevice"))
      {
        [v13 setValue:v11 forKey:@"RANGING_CORE_MASK"];
      }

      v14 = [v13 copy];
      [v2 addObject:v14];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049C6C8();
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049C650(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return v2;
}

void sub_100032A44(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_100032AE8(uint64_t a1@<X0>, const __CFArray *a2@<X1>, __int128 *a3@<X8>)
{
  v137 = 0uLL;
  v138 = 0;
  sub_100004A08(v135, "Dictionary error,");
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = Count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#wifi-service,parsing wifi callback data, nPeers %{public}ld", buf, 0xCu);
  }

  if (*(a1 + 48) & 1) != 0 || (*(a1 + 408))
  {
    if (Count >= 1)
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
          {
            break;
          }
        }

        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v16 = v135;
          if (v136 < 0)
          {
            v16 = v135[0];
          }

          *buf = 136446210;
          *&buf[4] = v16;
          v17 = v15;
          v18 = "#wifi-service,%{public}s dictionary type";
          goto LABEL_20;
        }

LABEL_151:
        if (++v7 == Count)
        {
          goto LABEL_159;
        }
      }

      if (*(a1 + 48) == 1)
      {
        Value = CFDictionaryGetValue(v9, @"RANGING_TOKEN_ID");
        v12 = Value;
        if (Value)
        {
          v13 = CFGetTypeID(Value);
          if (v13 == CFDataGetTypeID())
          {
            v14 = v12;
            goto LABEL_22;
          }
        }

        v30 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v31 = v135;
          if (v136 < 0)
          {
            v31 = v135[0];
          }

          *buf = 136446210;
          *&buf[4] = v31;
          v17 = v30;
          v18 = "#wifi-service,%{public}s ranging token id type";
LABEL_20:
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
          goto LABEL_151;
        }

        goto LABEL_151;
      }

      v14 = sub_10005D7A4(a1 + 240);
LABEL_22:
      v19 = v14;
      v145 = 0;
      [v14 getBytes:&v145 length:6];
      v134 = v145;
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#wifi-service,macAddress %@", buf, 0xCu);
      }

      valuePtr = 0;
      v21 = CFDictionaryGetValue(v9, @"RANGING_STATUS");
      v22 = v21;
      if (v21 && (v23 = CFGetTypeID(v21), v23 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
      }

      else
      {
        v24 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v63 = v135;
          if (v136 < 0)
          {
            v63 = v135[0];
          }

          *buf = 136446210;
          *&buf[4] = v63;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#wifi-service,%{public}s status type", buf, 0xCu);
        }
      }

      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 1024;
        *&buf[14] = valuePtr;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "#wifi-service,Ranging result from %@ resulted in status value of: %d", buf, 0x12u);
      }

      if (*(a1 + 448) == 2 || *(a1 + 452) == 2)
      {
        v26 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#wifi-service,received responder indicator of ranging to %@", buf, 0xCu);
        }

        v27 = v134;
        v139 = 0xFFFFFF9CFFFEFB67;
        LOWORD(v140) = 0;
        v141 = 0;
        v131 = 0;
        v132 = 0;
        __p = 0;
        sub_100038A30(&__p, &v139, buf, 1uLL);
        *buf = v27;
        *&buf[8] = 0;
        *&buf[16] = -998637568;
        memset(v143, 0, sizeof(v143));
        sub_1000368C4(v143, __p, v131, 0xAAAAAAAAAAAAAAABLL * ((v131 - __p) >> 3));
        v144 = 0;
        if (__p)
        {
          v131 = __p;
          operator delete(__p);
        }

        v28 = *(&v137 + 1);
        if (*(&v137 + 1) < v138)
        {
          v29 = *buf;
          *(*(&v137 + 1) + 16) = *&buf[16];
          *v28 = v29;
          *(v28 + 32) = 0;
          *(v28 + 40) = 0;
          *(v28 + 24) = 0;
          *(v28 + 24) = *v143;
          *(v28 + 40) = *&v143[16];
          memset(v143, 0, sizeof(v143));
          *(v28 + 48) = v144;
          *(&v137 + 1) = v28 + 56;
LABEL_150:

          goto LABEL_151;
        }

        v32 = sub_100038AB0(&v137, buf);
        v33 = *v143;
        *(&v137 + 1) = v32;
        if (!*v143)
        {
          goto LABEL_150;
        }

        *&v143[8] = *v143;
LABEL_44:
        operator delete(v33);
        goto LABEL_150;
      }

      v129 = 0;
      v34 = CFDictionaryGetValue(v9, @"RANGING_DISTANCE");
      v35 = v34;
      if (!v34 || (v36 = CFGetTypeID(v34), v36 != CFNumberGetTypeID()))
      {
        v40 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }

        v41 = v135;
        if (v136 < 0)
        {
          v41 = v135[0];
        }

        *buf = 136446210;
        *&buf[4] = v41;
        v42 = v40;
        v43 = "#wifi-service,%{public}s distance type";
LABEL_84:
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, buf, 0xCu);
        goto LABEL_150;
      }

      CFNumberGetValue(v35, kCFNumberDoubleType, &v129);
      v128 = 0;
      v37 = CFDictionaryGetValue(v9, @"RANGING_FLAGS");
      v38 = v37;
      if (v37 && (v39 = CFGetTypeID(v37), v39 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v38, kCFNumberSInt16Type, &v128);
      }

      else
      {
        v44 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v135;
          if (v136 < 0)
          {
            v45 = v135[0];
          }

          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#wifi-service,#Warning %s flags", buf, 0xCu);
        }
      }

      v127 = 0;
      v46 = CFDictionaryGetValue(v9, @"RANGING_FEATURES");
      v47 = v46;
      if (v46 && (v48 = CFGetTypeID(v46), v48 == CFNumberGetTypeID()))
      {
        *buf = 0;
        CFNumberGetValue(v47, kCFNumberSInt16Type, buf);
        if ((buf[0] & 4) != 0)
        {
          v127 = 2;
        }
      }

      else
      {
        v49 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v135;
          if (v136 < 0)
          {
            v50 = v135[0];
          }

          *buf = 136315138;
          *&buf[4] = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#wifi-service,#Warning %s features", buf, 0xCu);
        }
      }

      v126 = 0;
      v51 = CFDictionaryGetValue(v9, @"RANGING_SD");
      v52 = v51;
      if (v51 && (v53 = CFGetTypeID(v51), v53 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v52, kCFNumberDoubleType, &v126);
      }

      else
      {
        v54 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v135;
          if (v136 < 0)
          {
            v55 = v135[0];
          }

          *buf = 136315138;
          *&buf[4] = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#wifi-service,#Warning %s stdDev", buf, 0xCu);
        }
      }

      v125 = 0;
      v56 = CFDictionaryGetValue(v9, @"RANGING_VALID_COUNT");
      v57 = v56;
      if (!v56 || (v58 = CFGetTypeID(v56), v58 != CFNumberGetTypeID()))
      {
        v61 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }

        v62 = v135;
        if (v136 < 0)
        {
          v62 = v135[0];
        }

        *buf = 136446210;
        *&buf[4] = v62;
        v42 = v61;
        v43 = "#wifi-service,%{public}s count type";
        goto LABEL_84;
      }

      CFNumberGetValue(v57, kCFNumberLongType, &v125);
      if (v125 >= 9)
      {
        v59 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }

        v60 = v135;
        if (v136 < 0)
        {
          v60 = v135[0];
        }

        *buf = 136446210;
        *&buf[4] = v60;
        v42 = v59;
        v43 = "#wifi-service,%{public}s too many measurements in burst";
        goto LABEL_84;
      }

      v139 = 0;
      v140 = 0;
      v141 = 0;
      v64 = CFDictionaryGetValue(v9, @"RANGING_RESULTS");
      v65 = v64;
      if (v64 && (v66 = CFGetTypeID(v64), v66 == CFArrayGetTypeID()))
      {
        v67 = CFArrayGetCount(v65);
        if (v67 != v125)
        {
          v109 = v67;
          v110 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            v112 = v135;
            if (v136 < 0)
            {
              v112 = v135[0];
            }

            *buf = 136446722;
            *&buf[4] = v112;
            *&buf[12] = 2050;
            *&buf[14] = v109;
            *&buf[22] = 2050;
            *v143 = v125;
            _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "#wifi-service,%{public}s array length %{public}lu not equal to valid measurements %{public}lu", buf, 0x20u);
          }

          goto LABEL_148;
        }

        v115 = v67;
        if (v67 >= 1)
        {
          v69 = 0;
          v114 = v65;
          do
          {
            v116 = v69;
            v70 = CFArrayGetValueAtIndex(v65, v69);
            v71 = v70;
            if (v70 && (v72 = CFGetTypeID(v70), v72 == CFDictionaryGetTypeID()))
            {
              v124 = 0;
              v73 = CFDictionaryGetValue(v71, @"RANGING_RSSI");
              v74 = v73;
              if (v73 && (v75 = CFGetTypeID(v73), v75 == CFNumberGetTypeID()))
              {
                CFNumberGetValue(v74, kCFNumberSInt32Type, &v124);
                v123 = 0;
                v76 = CFDictionaryGetValue(v71, @"RANGING_RTT");
                v77 = v76;
                if (v76 && (v78 = CFGetTypeID(v76), v78 == CFNumberGetTypeID()))
                {
                  CFNumberGetValue(v77, kCFNumberSInt32Type, &v123);
                  v122 = 0;
                  v79 = CFDictionaryGetValue(v71, @"RANGING_CORE_ID");
                  v80 = v79;
                  if (v79 && (v81 = CFGetTypeID(v79), v81 == CFNumberGetTypeID()))
                  {
                    CFNumberGetValue(v80, kCFNumberSInt8Type, &v122);
                    v121 = 0;
                    v82 = CFDictionaryGetValue(v71, @"RANGING_PEER_CORE_ID");
                    v83 = v82;
                    if (v82 && (v84 = CFGetTypeID(v82), v84 == CFNumberGetTypeID()))
                    {
                      CFNumberGetValue(v83, kCFNumberSInt8Type, &v121);
                      v120 = 0;
                      v85 = CFDictionaryGetValue(v71, @"RANGING_RESULT_TIMESTAMP");
                      v86 = v85;
                      if (v85)
                      {
                        v87 = CFGetTypeID(v85);
                        if (v87 == CFNumberGetTypeID())
                        {
                          CFNumberGetValue(v86, kCFNumberSInt64Type, &v120);
                          v88 = qword_1009F9820;
                          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138413570;
                            *&buf[4] = v19;
                            *&buf[12] = 1024;
                            *&buf[14] = v124;
                            *&buf[18] = 1024;
                            *&buf[20] = v123;
                            *v143 = 1024;
                            *&v143[2] = v122;
                            *&v143[6] = 1024;
                            *&v143[8] = v121;
                            *&v143[12] = 2048;
                            *&v143[14] = v120;
                            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#wifi-service,WRTT: id: %@, rssi: %i, rtt: %i, coreID: %u, peerCoreID: %u, timestamp: 0x%llx", buf, 0x2Eu);
                          }

                          sub_100033C88(&v139, &v123, &v124, &v122, &v121, &v120);
                          goto LABEL_133;
                        }
                      }

                      v101 = qword_1009F9820;
                      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                      {
                        v102 = v135;
                        if (v136 < 0)
                        {
                          v102 = v135[0];
                        }

                        *buf = 136446466;
                        *&buf[4] = v102;
                        *&buf[12] = 2050;
                        *&buf[14] = v116;
                        v91 = v101;
                        v92 = "#wifi-service,%{public}s timestamp %{public}ld type";
LABEL_132:
                        _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, v92, buf, 0x16u);
                      }
                    }

                    else
                    {
                      v99 = qword_1009F9820;
                      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                      {
                        v100 = v135;
                        if (v136 < 0)
                        {
                          v100 = v135[0];
                        }

                        *buf = 136446466;
                        *&buf[4] = v100;
                        *&buf[12] = 2050;
                        *&buf[14] = v116;
                        v91 = v99;
                        v92 = "#wifi-service,%{public}s peerCoreID %{public}ld type";
                        goto LABEL_132;
                      }
                    }
                  }

                  else
                  {
                    v97 = qword_1009F9820;
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                    {
                      v98 = v135;
                      if (v136 < 0)
                      {
                        v98 = v135[0];
                      }

                      *buf = 136446466;
                      *&buf[4] = v98;
                      *&buf[12] = 2050;
                      *&buf[14] = v116;
                      v91 = v97;
                      v92 = "#wifi-service,%{public}s selfCoreID %{public}ld type";
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
                  v95 = qword_1009F9820;
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                  {
                    v96 = v135;
                    if (v136 < 0)
                    {
                      v96 = v135[0];
                    }

                    *buf = 136446466;
                    *&buf[4] = v96;
                    *&buf[12] = 2050;
                    *&buf[14] = v116;
                    v91 = v95;
                    v92 = "#wifi-service,%{public}s oneRtt %{public}ld type";
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v93 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  v94 = v135;
                  if (v136 < 0)
                  {
                    v94 = v135[0];
                  }

                  *buf = 136446466;
                  *&buf[4] = v94;
                  *&buf[12] = 2050;
                  *&buf[14] = v116;
                  v91 = v93;
                  v92 = "#wifi-service,%{public}s oneRssi %{public}ld type";
                  goto LABEL_132;
                }
              }
            }

            else
            {
              v89 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                v90 = v135;
                if (v136 < 0)
                {
                  v90 = v135[0];
                }

                *buf = 136446466;
                *&buf[4] = v90;
                *&buf[12] = 2050;
                *&buf[14] = v116;
                v91 = v89;
                v92 = "#wifi-service,%{public}s oneMeas %{public}ld type";
                goto LABEL_132;
              }
            }

LABEL_133:
            v69 = v116 + 1;
            v65 = v114;
          }

          while (v115 != v116 + 1);
        }
      }

      else
      {
        v103 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v111 = v135;
          if (v136 < 0)
          {
            v111 = v135[0];
          }

          *buf = 136446210;
          *&buf[4] = v111;
          _os_log_error_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "#wifi-service,%{public}s results array type", buf, 0xCu);
        }
      }

      v104 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v140 - v139) >> 3));
      if (v140 == v139)
      {
        v105 = 0;
      }

      else
      {
        v105 = v104;
      }

      sub_100038E68(v139, v140, v105, 1, v68);
      if (v140 == v139)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C73C(&v118, v119);
        }
      }

      else
      {
        v106 = *(&v137 + 1);
        if (*(&v137 + 1) >= v138)
        {
          v107 = sub_10003A540(&v137, &v134, &v129, &v139, &v127);
        }

        else
        {
          sub_10003A6AC(&v137, *(&v137 + 1), &v134, &v129, &v139, &v127);
          v107 = v106 + 56;
        }

        *(&v137 + 1) = v107;
        v108 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110144;
          *&buf[4] = v7;
          *&buf[8] = 1024;
          *&buf[10] = valuePtr;
          *&buf[14] = 2048;
          *&buf[16] = v129;
          *v143 = 2048;
          *&v143[2] = v126;
          *&v143[10] = 2048;
          *&v143[12] = v125;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#wifi-service,WRTT, peer # %i, status %d, distance %f, uncertainty %f, num meas %li", buf, 0x2Cu);
        }
      }

LABEL_148:
      v33 = v139;
      if (!v139)
      {
        goto LABEL_150;
      }

      v140 = v139;
      goto LABEL_44;
    }

LABEL_159:
    *a3 = v137;
    *(a3 + 2) = v138;
    v113 = &v137;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049C6FC();
    }

    v113 = a3;
  }

  *v113 = 0;
  *(v113 + 1) = 0;
  *(v113 + 2) = 0;
  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  *buf = &v137;
  sub_10003898C(buf);
}

void sub_100033BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  v52 = *(v50 - 216);
  if (v52)
  {
    *(v50 - 208) = v52;
    operator delete(v52);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  *(v50 - 192) = v50 - 240;
  sub_10003898C((v50 - 192));
  _Unwind_Resume(a1);
}

uint64_t sub_100033C88(const void **a1, _DWORD *a2, int *a3, char *a4, char *a5, uint64_t *a6)
{
  v9 = a1[1];
  v10 = a1[2];
  if (v9 >= v10)
  {
    v16 = *a1;
    v17 = v9 - *a1;
    v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
    if (v18 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v18)
    {
      sub_10003698C(a1, v18);
    }

    v20 = 8 * (v17 >> 3);
    v21 = *a3;
    v22 = *a4;
    v23 = *a5;
    v24 = *a6;
    *v20 = *a2;
    *(v20 + 4) = v21;
    *(v20 + 8) = v22;
    *(v20 + 9) = v23;
    *(v20 + 16) = v24;
    v15 = v20 + 24;
    v25 = v20 - v17;
    memcpy((v20 - v17), v16, v17);
    v26 = *a1;
    *a1 = v25;
    a1[1] = v15;
    a1[2] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v11 = *a3;
    v12 = *a4;
    v13 = *a5;
    v14 = *a6;
    *v9 = *a2;
    *(v9 + 1) = v11;
    v9[8] = v12;
    v9[9] = v13;
    *(v9 + 2) = v14;
    v15 = (v9 + 24);
  }

  a1[1] = v15;
  return v15 - 24;
}

void sub_100033DE4(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, int a5)
{
  std::mutex::lock((a1 + 88));
  if (a5)
  {
    *(a1 + 52) = 0;
    if (*(a1 + 184) == 1)
    {
      *(a1 + 184) = 0;
    }
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#wifi-service,onWiFiDeviceClientRangingCallback", buf, 2u);
  }

  sub_100032AE8(a1, a3, &v33);
  v23 = *(&v33 + 1);
  v9 = v33;
  if (v33 != *(&v33 + 1))
  {
    v10 = (a1 + 224);
    do
    {
      v11 = *v9;
      v28 = *(v9 + 4);
      *buf = v11;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_1000368C4(&v29, *(v9 + 3), *(v9 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 4) - *(v9 + 3)) >> 3));
      v32 = *(v9 + 12);
      v12 = *buf;
      v13 = *v10;
      if (!*v10)
      {
        goto LABEL_16;
      }

      v14 = (a1 + 224);
      do
      {
        v15 = v13[4];
        v16 = v15 >= *buf;
        v17 = v15 < *buf;
        if (v16)
        {
          v14 = v13;
        }

        v13 = v13[v17];
      }

      while (v13);
      if (v14 != v10 && *buf >= v14[4])
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_100037B5C(&v24, v14[5], v14[6], 0xCF3CF3CF3CF3CF3DLL * ((v14[6] - v14[5]) >> 3));
        v19 = v24;
        v20 = v25;
        while (v19 != v20)
        {
          sub_10005D7B4(v19, v41);
          *&buf[8] = sub_10005D79C(v19);
          if (v42)
          {
            v21 = sub_10005D794(v19);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3321888768;
            block[2] = sub_10003425C;
            block[3] = &unk_10098AE48;
            sub_10003787C(v35, v41);
            v35[2] = *buf;
            v36 = v28;
            v38 = 0;
            v39 = 0;
            __p = 0;
            sub_1000368C4(&__p, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
            v40 = v32;
            dispatch_async(v21, block);

            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            sub_100036C2C(v35);
          }

          else
          {
            v22 = qword_1009F9820;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_10005D774(v19);
              objc_claimAutoreleasedReturnValue();
              sub_10049C770();
            }
          }

          sub_100036C2C(v41);
          v19 += 21;
        }

        *v41 = &v24;
        sub_100037E2C(v41);
      }

      else
      {
LABEL_16:
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          *v41 = 134217984;
          *&v41[4] = v12;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#wifi-service,Received results for unmatched peer ID %llu", v41, 0xCu);
        }
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      v9 = (v9 + 56);
    }

    while (v9 != v23);
  }

  if (a5)
  {
    sub_10002DD5C(a1, 0.0);
  }

  *buf = &v33;
  sub_10003898C(buf);
  std::mutex::unlock((a1 + 88));
}

void sub_10003425C(uint64_t a1)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1000368C4(&__p, *(a1 + 88), *(a1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
  v10 = *(a1 + 112);
  memset(v3, 0, sizeof(v3));
  sub_10003A778(v3, &v5, &v11, 1uLL);
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100037B10();
  }

  (*(*v2 + 48))(v2, v3);
  v4 = v3;
  sub_10003898C(&v4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_100034368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000343A4(uint64_t a1, uint64_t a2)
{
  sub_10003787C(a1 + 32, a2 + 32);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 80) = v5;
  *(a1 + 64) = v4;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = sub_1000368C4(a1 + 88, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  *(a1 + 112) = *(a2 + 112);
  return result;
}

uint64_t sub_100034428(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  return sub_100036C2C(a1 + 32);
}

void sub_10003446C(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  std::mutex::lock((a1 + 88));
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#wifi-service,onWiFiDeviceClientRangingCallback2p4GHz", &v13, 2u);
  }

  sub_100032AE8(a1, a3, &v19);
  v7 = *(&v19 + 1);
  v6 = v19;
  if (v19 == *(&v19 + 1))
  {
    goto LABEL_20;
  }

  do
  {
    v8 = *v6;
    v14 = *(v6 + 4);
    v13 = v8;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_1000368C4(&v15, *(v6 + 3), *(v6 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 4) - *(v6 + 3)) >> 3));
    v18 = *(v6 + 12);
    v9 = *(a1 + 408);
    if (v9)
    {
      sub_10005D7B4(a1 + 240, v27);
      *(&v13 + 1) = sub_10005D79C(a1 + 240);
      if (v28)
      {
        v10 = sub_10005D794(a1 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1000347F4;
        block[3] = &unk_10098AE48;
        sub_10003787C(v21, v27);
        v21[2] = v13;
        v22 = v14;
        v24 = 0;
        v25 = 0;
        __p = 0;
        sub_1000368C4(&__p, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
        v26 = v18;
        dispatch_async(v10, block);

        if (__p)
        {
          v24 = __p;
          operator delete(__p);
        }

        sub_100036C2C(v21);
      }

      else
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10005D774((a1 + 240));
          objc_claimAutoreleasedReturnValue();
          sub_10049C770();
        }
      }

      sub_100036C2C(v27);
    }

    else
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049C7B4(buf, &v30, v11);
      }
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (!v9)
    {
      break;
    }

    v6 = (v6 + 56);
  }

  while (v6 != v7);
  if (v19 == *(&v19 + 1))
  {
LABEL_20:
    if (*(a1 + 408) == 1)
    {
      sub_100031A68(a1, 4);
    }
  }

  *(a1 + 452) = 0;
  *(a1 + 48) = 1;
  *&v13 = &v19;
  sub_10003898C(&v13);
  std::mutex::unlock((a1 + 88));
}

void sub_10003476C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a9 = &a16;
  sub_10003898C(&a9);
  std::mutex::unlock((v16 + 88));
  _Unwind_Resume(a1);
}

void sub_1000347F4(uint64_t a1)
{
  *buf = *(a1 + 64);
  v7 = *(a1 + 80);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_1000368C4(&__p, *(a1 + 88), *(a1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
  v11 = *(a1 + 112);
  memset(v4, 0, sizeof(v4));
  sub_10003A778(v4, buf, &v12, 1uLL);
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100037B10();
  }

  (*(*v2 + 48))(v2, v4);
  v5 = v4;
  sub_10003898C(&v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wifi-service,peer callback", buf, 2u);
  }
}

void sub_100034944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100034980(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  std::mutex::lock((a1 + 88));
  *(a1 + 53) = 0;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 168) = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#wifi-service,onWiFiDeviceClientStartNetworkCallback", v10, 2u);
  }

  v8 = a3 == 37 || a3 == 0;
  if (v8 && a4)
  {
    if (a3 == 37 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049C8B4();
    }

    if (!*(a1 + 464))
    {
      *(a1 + 50) = 1;
    }

    if (*(a1 + 40))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C8E8();
      }

      CFRelease(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    *(a1 + 40) = a4;
    CFRetain(a4);
  }

  else
  {
    v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (a3 == 37)
    {
      if (v9)
      {
        sub_10049C880();
      }

      sub_10002F810(a1, 1);
      sub_10002FA5C(a1);
    }

    else if (v9)
    {
      sub_10049C804();
    }
  }

  sub_100034B24(a1);
  std::mutex::unlock((a1 + 88));
}

void sub_100034B24(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 51);
    v4 = *(a1 + 50);
    sub_10003518C(*(a1 + 456), __p);
    v5 = v12 >= 0 ? __p : __p[0];
    *buf = 67109634;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 2080;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#wifi-service,handling AWDL state update; awdlLinkIsUp: %d, followModeIsUp %d, AWDLActivityState: %s", buf, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 51) != 1)
  {
    if (*(a1 + 456) < 2u)
    {
      return;
    }

    v6 = (a1 + 456);
LABEL_14:
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#wifi-service,AWDL link is down", buf, 2u);
    }

    v9 = 5;
LABEL_17:
    *v6 = v9;
    sub_10002DD5C(a1, 0.0);
    return;
  }

  v6 = (a1 + 456);
  v7 = *(a1 + 456);
  if ((*(a1 + 50) & 1) == 0 && !*(a1 + 464))
  {
    if (v7 < 2)
    {
      return;
    }

    goto LABEL_14;
  }

  if ((v7 & 0xFFFFFFFE) != 2 && sub_10002E5A4(a1))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#wifi-service,AWDL link is available", buf, 2u);
    }

    v9 = 2;
    goto LABEL_17;
  }
}

void sub_100034D38(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a1 + 88));
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientStopNetwork callback with error: %d", v7, 8u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  *(a1 + 456) = 0;
  sub_10002DD5C(a1, 0.0);
  std::mutex::unlock((a1 + 88));
}

void sub_100034E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 88));
  if (a3)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#wifi-service,Device attachment callback - success", buf, 2u);
    }

    *(a1 + 55) = 1;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = WiFiManagerClientCopyInterfaces();
    v8 = qword_1009F9820;
    if (v7)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#wifi-service,Device attachment callback - success via interfaces copy", v10, 2u);
      }

      *(a1 + 55) = 1;
      CFRelease(v7);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C91C();
      }

      sub_10002F810(a1, 1);
      sub_10002FA5C(a1);
      v9 = *(a1 + 16);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 16) = 0;
      }
    }
  }

  std::mutex::unlock((a1 + 88));
}

void sub_100034F80(uint64_t a1, uint64_t a2, void *a3)
{
  std::mutex::lock((a1 + 88));
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#wifi-service,onWifiDeviceClientVirtualInterfaceStateChangeCallback", &v12, 2u);
  }

  v6 = a3;
  objc_storeStrong((a1 + 208), a3);
  v7 = [v6 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
  v8 = v7;
  if (v7)
  {
    if ([v7 BOOLValue])
    {
      *(a1 + 51) = 0;
    }

    else
    {
      *(a1 + 51) = 1;
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C950();
  }

  v9 = [v6 objectForKeyedSubscript:@"AWDL_INFO"];
  v10 = [v9 objectForKeyedSubscript:@"AWDL_IF_MAC_ADDRESS"];
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#wifi-service,self mac address awdl: %@", &v12, 0xCu);
  }

  sub_1000324C0(a1, v6);
  sub_100034B24(a1);

  std::mutex::unlock((a1 + 88));
}

unint64_t sub_1000351AC(uint64_t a1, id **a2, int a3)
{
  std::mutex::lock((a1 + 88));
  if ((sub_100014C40() & 1) == 0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#wifi-service,startRangingWithAuthPeer, ignoring range request on unsupported platform", buf, 2u);
    }

    v10 = 0;
    v11 = &_mh_execute_header;
    goto LABEL_47;
  }

  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (a3 == 1)
  {
    if (v7)
    {
      *buf = 0;
      v8 = "#wifi-service,WRTT, startRangingWithAuthPeer as initiator";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "#wifi-service,WRTT, startRangingWithAuthPeer as responder";
    goto LABEL_10;
  }

  if (*(a1 + 408) == 1)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#wifi-service,Received a start ranging request while servicing a previous request", buf, 2u);
    }

    v11 = &_mh_execute_header;
    v10 = 5;
    goto LABEL_47;
  }

  v13 = sub_10005D774(*a2);
  if (v13)
  {
    v14 = sub_10005D77C(*a2);
    if (v14)
    {
      v15 = sub_10005D784(*a2);
      v16 = v15 == 0;

      if (!v16)
      {
        *(a1 + 452) = a3;
        *(a1 + 48) = 0;
        sub_100035728(a1 + 240, *a2);
        v17 = sub_10003281C(a1);
        v18 = sub_100031804(a1);
        if (CFArrayGetCount(v17) < 1)
        {
          v28 = qword_1009F9820;
          if (a3 == 1)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_10049C1F4();
            }

            goto LABEL_46;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientSetRangeable FALSE", buf, 2u);
          }

          if (!WiFiDeviceClientSetRangeable() || !os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v19 = CFArrayGetCount(v17) * 15.0;
        v20 = qword_1009F9820;
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (a3 == 1)
        {
          if (v21)
          {
            Count = CFArrayGetCount(v17);
            *buf = 134349312;
            *&buf[4] = Count;
            *&buf[12] = 2050;
            *&buf[14] = v19;
            v23 = "#wifi-service,WiFiDeviceClientRangingStartAsync, num peers, %{public}ld, timeout, %{public}lf";
            v24 = v20;
            v25 = 22;
LABEL_31:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
          }
        }

        else if (v21)
        {
          v29 = CFArrayGetCount(v17);
          *buf = 134349056;
          *&buf[4] = v29;
          v23 = "#wifi-service,WiFiDeviceClientSetRangeable TRUE, num peers, %{public}ld";
          v24 = v20;
          v25 = 12;
          goto LABEL_31;
        }

        if (!v18)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049C984();
          }

          goto LABEL_46;
        }

        WiFiDeviceClientRegisterRangingReportCallback();
        if (a3 == 1)
        {
          if (WiFiDeviceClientRangingStartAsync())
          {
            v11 = &_mh_execute_header;
            v10 = 4;
            goto LABEL_47;
          }

LABEL_46:
          CFRelease(v17);
          v11 = 0;
          v10 = 0;
          goto LABEL_47;
        }

        if (!WiFiDeviceClientSetRangeable() || !os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

LABEL_45:
        sub_10049C340();
        goto LABEL_46;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C9B8();
  }

  sub_100035A00(buf, *a2);
  memset(v31, 0, sizeof(v31));
  v26 = sub_100037ED4(v31, buf, &v39, 1uLL);
  sub_100031C78(v26, v27, v31);
  v32 = v31;
  sub_100037E2C(&v32);

  sub_100036D2C(v38);
  sub_100036CAC(&v37);
  sub_100036C2C(&v36);

  v11 = &_mh_execute_header;
  v10 = 2;
LABEL_47:
  std::mutex::unlock((a1 + 88));
  return v10 | v11;
}

uint64_t sub_100035728(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168) == 1)
  {
    sub_100032780(a1, a2);
  }

  else
  {
    sub_100035A00(a1, a2);
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_10003576C(uint64_t a1)
{
  std::mutex::lock((a1 + 88));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#wifi-service,stopRangingWithAuthPeer", buf, 2u);
  }

  if (sub_100014C40())
  {
    if (*(a1 + 408) == 1)
    {
      v3 = sub_10003281C(a1);
      if (sub_100031804(a1))
      {
        if (WiFiDeviceClientSetRangeable() && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049C340();
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049C984();
      }

      CFRelease(v3);
      if (*(a1 + 408))
      {

        sub_100036D2C(a1 + 352);
        sub_100036CAC(a1 + 320);
        sub_100036C2C(a1 + 288);

        *(a1 + 408) = 0;
      }
    }

    *(a1 + 452) = 0;
    *(a1 + 48) = 1;
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#wifi-service,ignoring ranging stop on unsupported platform", v5, 2u);
    }
  }

  std::mutex::unlock((a1 + 88));
}

void *sub_100035934(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_10003735C((__dst + 3), a3);
  __dst[7] = *(a3 + 32);
  return __dst;
}

void sub_1000359A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000359BC(uint64_t a1)
{
  sub_1000197C8(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100035A00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_10003787C(a1 + 48, a2 + 48);
  sub_100037914(a1 + 80, a2 + 80);
  sub_1000379AC(a1 + 112, a2 + 112);
  *(a1 + 144) = *(a2 + 144);
  v4 = *(a2 + 152);
  v5 = *(a2 + 160);
  *(a1 + 152) = v4;
  *(a1 + 160) = v5;
  return a1;
}

void sub_100035A9C(_Unwind_Exception *a1)
{
  sub_100036CAC((v1 + 10));
  sub_100036C2C((v1 + 6));

  _Unwind_Resume(a1);
}

uint64_t sub_100035AE8(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {

    sub_100036D2C(a1 + 112);
    sub_100036CAC(a1 + 80);
    sub_100036C2C(a1 + 48);
  }

  return a1;
}

void sub_100035B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_100034D38(a4, a2, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C9EC();
  }
}

void sub_100035BB8(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    v11[0] = 67109376;
    v11[1] = a3;
    v12 = 2050;
    v13 = Count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingCallback got called: error=%i results=%{public}ld", v11, 0x12u);
  }

  if (a4)
  {
    sub_100033DE4(a4, v9, a2, v10, 1);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA20();
  }
}

void sub_100035CE8(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    v9 = 134349056;
    v10 = Count;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingReportCallback got called: results=%{public}ld", &v9, 0xCu);
  }

  if (a3)
  {
    sub_100033DE4(a3, v7, a2, v8, 0);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA54();
  }
}

void sub_100035E00(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    v9 = 134349056;
    v10 = Count;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingReportCallback got called: results=%{public}ld", &v9, 0xCu);
  }

  if (a3)
  {
    sub_100033DE4(a3, v7, a2, v8, 0);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA54();
  }
}

void sub_100035F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_100034D38(a4, a2, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049C9EC();
  }
}

void sub_100035F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_100034E2C(a3, a2, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA88();
  }
}

void sub_100035FD8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {

    sub_100034980(a5, a2, a2, a3);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CABC();
  }
}

void *sub_10003603C(void *a1, uint64_t a2)
{
  sub_10003787C(v4, a2);
  sub_100036198(v4, a1);
  sub_100036C2C(v4);
  return a1;
}

void *sub_1000360B0(void *a1, uint64_t a2)
{
  sub_100037914(v4, a2);
  sub_1000363FC(v4, a1);
  sub_100036CAC(v4);
  return a1;
}

void *sub_100036124(void *a1, uint64_t a2)
{
  sub_1000379AC(v4, a2);
  sub_100036660(v4, a1);
  sub_100036D2C(v4);
  return a1;
}

void *sub_100036198(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1000363F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void *sub_1000363FC(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100036654(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void *sub_100036660(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1000368B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_1000368C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100036940(result, a4);
  }

  return result;
}

void sub_100036924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036940(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10003698C(a1, a2);
  }

  sub_100019B38();
}

void sub_10003698C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1000369E4(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    v10[0] = 67109376;
    v10[1] = a3;
    v11 = 2050;
    v12 = Count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingCallback got called: error=%i results=%{public}ld", v10, 0x12u);
  }

  if (a4)
  {
    sub_10003446C(a4, v9, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA20();
  }
}

void sub_100036B14(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    v8 = 134349056;
    v9 = Count;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#wifi-service,WiFiDeviceClientRangingReportCallback got called: results=%{public}ld", &v8, 0xCu);
  }

  if (a3)
  {
    sub_10003446C(a3, v7, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CA54();
  }
}

uint64_t sub_100036C2C(uint64_t a1)
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

uint64_t sub_100036CAC(uint64_t a1)
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

uint64_t sub_100036D2C(uint64_t a1)
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

uint64_t sub_100036DAC(uint64_t a1, const void **a2)
{
  result = *sub_100036E2C(a1, &v3, a2);
  if (!result)
  {
    sub_100036F34();
  }

  return result;
}

void *sub_100036E2C(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_100036FAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000372A4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100036FC8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_100037108(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_100037020(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100037088((__dst + 3), a2 + 24);
  v5 = *(a2 + 7);
  *(a2 + 7) = 0;
  __dst[7] = v5;
  return __dst;
}

uint64_t sub_100037088(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100037108(uint64_t *result, uint64_t *a2)
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

void sub_1000372A4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100037304(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_100037304(uint64_t a1, uint64_t a2)
{
  sub_1000197C8(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10003735C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000373F4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100003EDC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10003743C(a1, v3);
  return 1;
}

uint64_t *sub_10003743C(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_100037488(a1, a2);
  sub_100037304(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *sub_100037488(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000374FC(v6, a2);
  return v3;
}

uint64_t *sub_1000374FC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_10003787C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100037914(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000379AC(uint64_t a1, uint64_t a2)
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

void sub_100037A44(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100037A44(a1, *a2);
    sub_100037A44(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_100037E2C(&v4);
    operator delete(a2);
  }
}

void sub_100037AA4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100037AA4(a1, *a2);
    sub_100037AA4(a1, a2[1]);
    sub_100037304(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_100037B10()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100037B5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100037BE4(result, a4);
  }

  return result;
}

void sub_100037BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100037E2C(&a9);
  _Unwind_Resume(a1);
}

void sub_100037BE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    sub_100037C34(a1, a2);
  }

  sub_100019B38();
}

void sub_100037C34(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100037C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100035A00(v4, v6);
      v6 += 168;
      v4 = v11 + 168;
      v11 += 168;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100037D34(v8);
  return v4;
}

uint64_t sub_100037D34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100037D6C(a1);
  }

  return a1;
}

void sub_100037D6C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 21;
      sub_100037DC0(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_100037DC0(uint64_t a1, void **a2)
{
  sub_100036D2C((a2 + 14));
  sub_100036CAC((a2 + 10));
  sub_100036C2C((a2 + 6));

  v3 = *a2;
}

void sub_100037E2C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100037E80(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100037E80(uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; sub_100037DC0(a1, i))
  {
    i -= 21;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100037ED4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100037BE4(result, a4);
  }

  return result;
}

void sub_100037F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100037E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100037F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100035A00(v4, v6);
      v6 += 168;
      v4 = v11 + 168;
      v11 += 168;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100037D34(v8);
  return v4;
}

void *sub_100038000(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000380E4(uint64_t a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_100019B38();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100037C34(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100035A00(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = *(a1 + 8);
  v8 = 168 * v2 + *a1 - v7;
  sub_10003822C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000384D4(&v13);
  return v12;
}

void sub_100038218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000384D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003822C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = (a2 + 14);
    do
    {
      v9 = *(v8 - 112);
      *(v8 - 112) = 0u;
      *v4 = v9;
      *(v4 + 16) = *(v8 - 96);
      v10 = *(v8 - 80);
      *(v8 - 80) = 0u;
      *(v4 + 32) = v10;
      sub_100038354(v4 + 48, v8 - 64);
      sub_1000383D4(v4 + 80, v8 - 32);
      sub_100038454(v4 + 112, v8);
      *(v4 + 144) = *(v8 + 32);
      v11 = *(v8 + 40);
      v12 = *(v8 + 48);
      *(v8 + 40) = 0;
      *(v4 + 152) = v11;
      *(v4 + 160) = v12;
      v4 = v18 + 168;
      v18 += 168;
      v13 = v8 + 56;
      v8 += 168;
    }

    while (v13 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      sub_100037DC0(a1, v6);
      v6 += 21;
    }
  }

  return sub_100037D34(v15);
}

uint64_t sub_100038354(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1000383D4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100038454(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1000384D4(uint64_t a1)
{
  sub_10003850C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003850C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_100037DC0(v5, (v4 - 168));
  }
}

uint64_t sub_100038554(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 1);
  v8 = a2[4];
  a2[4] = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = v8;

  v10 = a2[5];
  a2[5] = 0;
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;

  sub_100038628(a1 + 48, (a2 + 6));
  sub_100038730(a1 + 80, (a2 + 10));
  sub_100038838(a1 + 112, (a2 + 14));
  *(a1 + 144) = *(a2 + 36);
  v12 = a2[19];
  a2[19] = 0;
  v13 = *(a1 + 152);
  *(a1 + 152) = v12;

  *(a1 + 160) = a2[20];
  return a1;
}

uint64_t sub_100038628(uint64_t a1, uint64_t a2)
{
  sub_1000386AC(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000386AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100038730(uint64_t a1, uint64_t a2)
{
  sub_1000387B4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000387B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100038838(uint64_t a1, uint64_t a2)
{
  sub_1000388BC(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000388BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t *sub_100038940(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100037488(a1, a2);
  v5 = (a2 + 40);
  sub_100037E2C(&v5);
  operator delete(a2);
  return v3;
}

void sub_10003898C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000389E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000389E0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100038A30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100036940(result, a4);
  }

  return result;
}

void sub_100038A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100038AB0(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100038C20(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v7 + 48) = *(a2 + 12);
  *&v17 = 56 * v2 + 56;
  v9 = *(a1 + 8);
  v10 = 56 * v2 + *a1 - v9;
  sub_100038C7C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100038DD0(&v15);
  return v14;
}

void sub_100038C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100038DD0(va);
  _Unwind_Resume(a1);
}

void sub_100038C20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100038C7C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(v6 + 3) = 0;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(a4 + 48) = *(v6 + 12);
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 3);
      if (v8)
      {
        *(v5 + 4) = v8;
        operator delete(v8);
      }

      v5 = (v5 + 56);
    }
  }

  return sub_100038D50(v10);
}

uint64_t sub_100038D50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100038D88(a1);
  }

  return a1;
}

void sub_100038D88(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_100038DD0(uint64_t a1)
{
  sub_100038E08(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100038E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

__n128 sub_100038E68(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 8) < *(v12 + 16))
        {
          v206 = *(v12 + 16);
          v176 = *v12;
          v91 = *(a2 - 24);
          *(v12 + 16) = *(a2 - 8);
          *v12 = v91;
          result = v176;
          *(a2 - 8) = v206;
          *(a2 - 24) = v176;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v96 = *(v12 + 40);
      v97 = *(v12 + 64);
      if (v96 >= *(v12 + 16))
      {
        if (v97 < v96)
        {
          v145 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v145;
          if (*(v12 + 40) < *(v12 + 16))
          {
            v210 = *(v12 + 16);
            v182 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 16) = *(v12 + 40);
            result = v182;
            *(v12 + 24) = v182;
            *(v12 + 40) = v210;
          }
        }
      }

      else
      {
        if (v97 < v96)
        {
          v208 = *(v12 + 16);
          v178 = *v12;
          *v12 = *(v12 + 48);
          *(v12 + 16) = *(v12 + 64);
          result = v178;
          *(v12 + 48) = v178;
          v98 = v208;
          goto LABEL_189;
        }

        v212 = *(v12 + 16);
        v185 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v185;
        *(v12 + 24) = v185;
        *(v12 + 40) = v212;
        if (v97 < *(v12 + 40))
        {
          v98 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
LABEL_189:
          *(v12 + 64) = v98;
        }
      }

      if (*(a2 - 8) >= *(v12 + 64))
      {
        return result;
      }

      result = *(v12 + 48);
      v151 = *(v12 + 64);
      v152 = *(a2 - 8);
      *(v12 + 48) = *v9;
      *(v12 + 64) = v152;
      *(a2 - 8) = v151;
      *v9 = result;
      if (*(v12 + 64) >= *(v12 + 40))
      {
        return result;
      }

      v153 = *(v12 + 40);
      result = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = result;
      *(v12 + 64) = v153;
LABEL_193:
      if (*(v12 + 40) < *(v12 + 16))
      {
        v213 = *(v12 + 16);
        v186 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v186;
        *(v12 + 24) = v186;
        *(v12 + 40) = v213;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_100039E5C(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = (v12 + 24);
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v103[2].n128_u64[1];
            v105 = v103[1].n128_u64[0];
            v103 = v99;
            if (v104 < v105)
            {
              v179 = *v99;
              v106 = v102;
              while (1)
              {
                v107 = v12 + v106;
                *(v107 + 24) = *(v12 + v106);
                *(v107 + 40) = *(v12 + v106 + 16);
                if (!v106)
                {
                  break;
                }

                v106 -= 24;
                if (v104 >= *(v107 - 8))
                {
                  v108 = v12 + v106 + 24;
                  goto LABEL_129;
                }
              }

              v108 = v12;
LABEL_129:
              result = v179;
              *v108 = v179;
              *(v108 + 16) = v104;
            }

            v99 = (v103 + 24);
            v102 += 24;
          }

          while (&v103[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v146 = *(a1 + 40);
          v147 = *(a1 + 16);
          a1 = v99;
          if (v146 < v147)
          {
            v183 = *v99;
            v148 = v99;
            do
            {
              *v148 = *(v148 - 24);
              v148[1].n128_u64[0] = v148[-1].n128_u64[1];
              v149 = v148[-2].n128_u64[0];
              v148 = (v148 - 24);
            }

            while (v146 < v149);
            result = v183;
            *v148 = v183;
            v148[1].n128_u64[0] = v146;
          }

          v99 = (a1 + 24);
        }

        while (a1 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v14 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v12 + 24 * v112;
            if (2 * v111 + 2 < v14)
            {
              v114 = *(v113 + 16);
              v115 = *(v113 + 40);
              v116 = v114 >= v115;
              v117 = v114 >= v115 ? 0 : 24;
              v113 += v117;
              if (!v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v12 + 24 * v111;
            v119 = *(v118 + 16);
            if (*(v113 + 16) >= v119)
            {
              v180 = *v118;
              do
              {
                v120 = v118;
                v118 = v113;
                v121 = *v113;
                *(v120 + 16) = *(v113 + 16);
                *v120 = v121;
                if (v109 < v112)
                {
                  break;
                }

                v122 = (2 * v112) | 1;
                v113 = v12 + 24 * v122;
                v123 = 2 * v112 + 2;
                if (v123 < v14)
                {
                  v124 = *(v113 + 16);
                  v125 = *(v113 + 40);
                  v126 = v124 >= v125;
                  v127 = v124 >= v125 ? 0 : 24;
                  v113 += v127;
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v112 = v122;
              }

              while (*(v113 + 16) >= v119);
              *v118 = v180;
              *(v118 + 16) = v119;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v128 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v129 = 0;
          v209 = *(v12 + 16);
          v181 = *v12;
          v130 = v12;
          do
          {
            v131 = v130 + 24 * v129;
            v132 = (v131 + 24);
            v133 = (2 * v129) | 1;
            v129 = 2 * v129 + 2;
            if (v129 >= v128)
            {
              v129 = v133;
            }

            else if (*(v131 + 40) >= *(v131 + 64))
            {
              v129 = v133;
            }

            else
            {
              v132 = (v131 + 48);
            }

            v134 = *v132;
            *(v130 + 16) = v132[1].n128_u64[0];
            *v130 = v134;
            v130 = v132;
          }

          while (v129 <= ((v128 - 2) >> 1));
          a2 -= 24;
          if (v132 == a2)
          {
            result = v181;
            v132[1].n128_u64[0] = v209;
            *v132 = v181;
          }

          else
          {
            v135 = *a2;
            v132[1].n128_u64[0] = *(a2 + 16);
            *v132 = v135;
            result = v181;
            *(a2 + 16) = v209;
            *a2 = v181;
            v136 = &v132[1].n128_i64[1] - v12;
            if (v136 >= 25)
            {
              v137 = (-2 - 0x5555555555555555 * (v136 >> 3)) >> 1;
              v138 = v12 + 24 * v137;
              v139 = v132[1].n128_u64[0];
              if (*(v138 + 16) < v139)
              {
                v156 = *v132;
                do
                {
                  v140 = v132;
                  v132 = v138;
                  v141 = *v138;
                  v140[1].n128_u64[0] = *(v138 + 16);
                  *v140 = v141;
                  if (!v137)
                  {
                    break;
                  }

                  v137 = (v137 - 1) >> 1;
                  v138 = v12 + 24 * v137;
                }

                while (*(v138 + 16) < v139);
                result = v156;
                *v132 = v156;
                v132[1].n128_u64[0] = v139;
              }
            }
          }
        }

        while (v128-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 8);
    if (v13 >= 0xC01)
    {
      v18 = v16[1].n128_u64[0];
      if (v18 >= *(v12 + 16))
      {
        if (v17 < v18)
        {
          v189 = v16[1].n128_u64[0];
          v159 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v189;
          *v9 = v159;
          if (v16[1].n128_u64[0] < *(v12 + 16))
          {
            v190 = *(v12 + 16);
            v160 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v190;
            *v16 = v160;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v187 = *(v12 + 16);
          v157 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v193 = *(v12 + 16);
        v163 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v193;
        *v16 = v163;
        if (*(a2 - 8) < v16[1].n128_u64[0])
        {
          v187 = v16[1].n128_u64[0];
          v157 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v187;
          *v9 = v157;
        }
      }

      v28 = v12 + 24 * v15;
      v29 = (v28 - 24);
      v30 = *(v28 - 8);
      v31 = *(a2 - 32);
      if (v30 >= *(v12 + 40))
      {
        if (v31 < v30)
        {
          v194 = v29[1].n128_i64[0];
          v164 = *v29;
          v35 = *v10;
          v29[1].n128_u64[0] = *(a2 - 32);
          *v29 = v35;
          *(a2 - 32) = v194;
          *v10 = v164;
          if (v29[1].n128_u64[0] < *(v12 + 40))
          {
            v36 = *(v12 + 24);
            v37 = *(v12 + 40);
            v38 = v29[1].n128_i64[0];
            *(v12 + 24) = *v29;
            *(v12 + 40) = v38;
            v29[1].n128_u64[0] = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 24);
          v33 = *(v12 + 40);
          v34 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v34;
          goto LABEL_38;
        }

        v41 = *(v12 + 24);
        v42 = *(v12 + 40);
        v43 = v29[1].n128_i64[0];
        *(v12 + 24) = *v29;
        *(v12 + 40) = v43;
        v29[1].n128_u64[0] = v42;
        *v29 = v41;
        if (*(a2 - 32) < v29[1].n128_u64[0])
        {
          v196 = v29[1].n128_i64[0];
          v166 = *v29;
          v44 = *v10;
          v29[1].n128_u64[0] = *(a2 - 32);
          *v29 = v44;
          v32 = v166;
          v33 = v196;
LABEL_38:
          *(a2 - 32) = v33;
          *v10 = v32;
        }
      }

      v45 = v12 + 24 * v15;
      v46 = *(v45 + 40);
      v47 = *(a2 - 56);
      if (v46 >= *(v12 + 64))
      {
        if (v47 < v46)
        {
          v197 = *(v45 + 40);
          v167 = *(v45 + 24);
          v51 = *v11;
          *(v45 + 40) = *(a2 - 56);
          *(v45 + 24) = v51;
          *(a2 - 56) = v197;
          *v11 = v167;
          if (*(v45 + 40) < *(v12 + 64))
          {
            v52 = *(v12 + 48);
            v53 = *(v12 + 64);
            v54 = *(v45 + 40);
            *(v12 + 48) = *(v45 + 24);
            *(v12 + 64) = v54;
            *(v45 + 40) = v53;
            *(v45 + 24) = v52;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = *(v12 + 48);
          v49 = *(v12 + 64);
          v50 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v50;
          goto LABEL_47;
        }

        v55 = *(v12 + 48);
        v56 = *(v12 + 64);
        v57 = *(v45 + 40);
        *(v12 + 48) = *(v45 + 24);
        *(v12 + 64) = v57;
        *(v45 + 40) = v56;
        *(v45 + 24) = v55;
        if (*(a2 - 56) < *(v45 + 40))
        {
          v198 = *(v45 + 40);
          v168 = *(v45 + 24);
          v58 = *v11;
          *(v45 + 40) = *(a2 - 56);
          *(v45 + 24) = v58;
          v48 = v168;
          v49 = v198;
LABEL_47:
          *(a2 - 56) = v49;
          *v11 = v48;
        }
      }

      v59 = v16[1].n128_u64[0];
      v60 = *(v45 + 40);
      if (v59 >= v29[1].n128_u64[0])
      {
        if (v60 < v59)
        {
          v200 = v16[1].n128_u64[0];
          v170 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 40);
          *(v45 + 40) = v200;
          *(v45 + 24) = v170;
          if (v16[1].n128_u64[0] < v29[1].n128_u64[0])
          {
            v201 = v29[1].n128_u64[0];
            v171 = *v29;
            *v29 = *v16;
            v29[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v201;
            *v16 = v171;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v199 = v29[1].n128_u64[0];
          v169 = *v29;
          *v29 = *(v45 + 24);
          v29[1].n128_u64[0] = *(v45 + 40);
          goto LABEL_56;
        }

        v202 = v29[1].n128_u64[0];
        v172 = *v29;
        *v29 = *v16;
        v29[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v202;
        *v16 = v172;
        if (*(v45 + 40) < v16[1].n128_u64[0])
        {
          v199 = v16[1].n128_u64[0];
          v169 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 40);
LABEL_56:
          *(v45 + 40) = v199;
          *(v45 + 24) = v169;
        }
      }

      v203 = *(v12 + 16);
      v173 = *v12;
      v61 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v61;
      v16[1].n128_u64[0] = v203;
      *v16 = v173;
      goto LABEL_58;
    }

    v20 = *(v12 + 16);
    if (v20 >= v16[1].n128_u64[0])
    {
      if (v17 < v20)
      {
        v191 = *(v12 + 16);
        v161 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v191;
        *v9 = v161;
        if (*(v12 + 16) < v16[1].n128_u64[0])
        {
          v192 = v16[1].n128_u64[0];
          v162 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v192;
          *v12 = v162;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v188 = v16[1].n128_u64[0];
      v158 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
LABEL_35:
      *(a2 - 8) = v188;
      *v9 = v158;
      goto LABEL_58;
    }

    v195 = v16[1].n128_u64[0];
    v165 = *v16;
    v39 = *v12;
    v16[1].n128_u64[0] = *(v12 + 16);
    *v16 = v39;
    *(v12 + 16) = v195;
    *v12 = v165;
    if (*(a2 - 8) < *(v12 + 16))
    {
      v188 = *(v12 + 16);
      v158 = *v12;
      v40 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v40;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v62 = *(v12 + 16);
LABEL_61:
      v63 = 0;
      v154 = *v12;
      do
      {
        v64 = *(v12 + v63 + 40);
        v63 += 24;
      }

      while (v64 < v62);
      v65 = v12 + v63;
      v66 = a2;
      if (v63 == 24)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 24;
          v70 = *(v69 - 8);
          v69 -= 24;
          if (v70 < v62)
          {
            goto LABEL_71;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 24;
          v68 = *(v66 - 8);
          v66 -= 24;
        }

        while (v68 >= v62);
      }

LABEL_71:
      v12 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v204 = *(v12 + 16);
          v174 = *v12;
          v72 = *v71;
          *(v12 + 16) = *(v71 + 16);
          *v12 = v72;
          *(v71 + 16) = v204;
          *v71 = v174;
          do
          {
            v73 = *(v12 + 40);
            v12 += 24;
          }

          while (v73 < v62);
          do
          {
            v74 = *(v71 - 8);
            v71 -= 24;
          }

          while (v74 >= v62);
        }

        while (v12 < v71);
      }

      v75 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v76 = *v75;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v76;
      }

      *v75 = v154;
      *(v12 - 8) = v62;
      if (v65 < v67)
      {
        goto LABEL_82;
      }

      v77 = sub_10003A0A4(a1, v12 - 24, v154);
      if (sub_10003A0A4(v12, a2, v78))
      {
        a2 = v12 - 24;
        if (!v77)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v77)
      {
LABEL_82:
        sub_100038E68(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v62 = *(v12 + 16);
      if (*(v12 - 8) < v62)
      {
        goto LABEL_61;
      }

      v155 = *v12;
      if (v62 >= *(a2 - 8))
      {
        v81 = v12 + 24;
        do
        {
          v12 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *(v81 + 16);
          v81 += 24;
        }

        while (v62 >= v82);
      }

      else
      {
        v79 = v12;
        do
        {
          v12 = v79 + 24;
          v80 = *(v79 + 40);
          v79 += 24;
        }

        while (v62 >= v80);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v84 = a2;
        do
        {
          v83 = v84 - 24;
          v85 = *(v84 - 8);
          v84 -= 24;
        }

        while (v62 < v85);
      }

      while (v12 < v83)
      {
        v205 = *(v12 + 16);
        v175 = *v12;
        v86 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v86;
        *(v83 + 16) = v205;
        *v83 = v175;
        do
        {
          v87 = *(v12 + 40);
          v12 += 24;
        }

        while (v62 >= v87);
        do
        {
          v88 = *(v83 - 8);
          v83 -= 24;
        }

        while (v62 < v88);
      }

      v89 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        v90 = *v89;
        *(a1 + 16) = *(v12 - 8);
        *a1 = v90;
      }

      a4 = 0;
      result = v155;
      *v89 = v155;
      *(v12 - 8) = v62;
    }
  }

  v92 = *(v12 + 40);
  v93 = *(a2 - 8);
  if (v92 >= *(v12 + 16))
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *(v12 + 24);
    v143 = *(v12 + 40);
    v144 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v144;
    *(a2 - 8) = v143;
    *v9 = result;
    goto LABEL_193;
  }

  if (v93 >= v92)
  {
    v211 = *(v12 + 16);
    v184 = *v12;
    *v12 = *(v12 + 24);
    *(v12 + 16) = *(v12 + 40);
    result = v184;
    *(v12 + 24) = v184;
    *(v12 + 40) = v211;
    if (*(a2 - 8) >= *(v12 + 40))
    {
      return result;
    }

    result = *(v12 + 24);
    v95 = *(v12 + 40);
    v150 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v150;
  }

  else
  {
    v207 = *(v12 + 16);
    v177 = *v12;
    v94 = *v9;
    *(v12 + 16) = *(a2 - 8);
    *v12 = v94;
    result = v177;
    v95 = v207;
  }

  *(a2 - 8) = v95;
  *v9 = result;
  return result;
}