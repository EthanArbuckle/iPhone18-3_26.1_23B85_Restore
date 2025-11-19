id sub_10002F8B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_10002FE90(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = [v2 object];
  v5 = *(a1 + 48);
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 _sendOriginUpdatesToClient:v6];
}

void sub_100030060(uint64_t a1)
{
  v2 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v8 = FBSOpenApplicationOptionKeyActivateSuspended;
  v9 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v4 = [FBSOpenApplicationOptions optionsWithDictionary:v3];

  v5 = *(*(a1 + 32) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000301A4;
  v6[3] = &unk_100049760;
  v7 = *(a1 + 40);
  [v5 openApplication:v2 withOptions:v4 completion:v6];
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1000301A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = sub_10002C180(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000315B4(v4, v6);
    }
  }
}

uint64_t sub_100030404(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR____NMRPlaybackQueueRequestProtobuf__playerPath;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR____NMRPlaybackQueueRequestProtobuf__request;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100030980(uint64_t a1)
{
  sub_10000DC44(a1, __stack_chk_guard);
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v1, v2, "[%@] executeUpdateBlock", v3, v4, v5, v6, v7);
}

void sub_1000309E8(uint64_t *a1)
{
  v1 = *a1;
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v2, v3, "[%@] setting state to pending and bailing", v4, v5, v6, v7, v8);
}

void sub_100030A54(uint64_t *a1)
{
  v1 = *a1;
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v2, v3, "[%@] setting state to updating", v4, v5, v6, v7, v8);
}

void sub_100030AC0(uint64_t *a1)
{
  v1 = *a1;
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v2, v3, "[%@] calling block", v4, v5, v6, v7, v8);
}

void sub_100030B2C(uint64_t a1)
{
  sub_10000DC44(a1, __stack_chk_guard);
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v1, v2, "[%@] finished block", v3, v4, v5, v6, v7);
}

void sub_100030B94(uint64_t a1)
{
  sub_10000DC44(a1, __stack_chk_guard);
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v1, v2, "[%@] state is pending, will retry", v3, v4, v5, v6, v7);
}

void sub_100030BFC(uint64_t a1)
{
  sub_10000DC44(a1, __stack_chk_guard);
  sub_10000DC38();
  sub_10000DC1C(&_mh_execute_header, v1, v2, "[%@] setting state to idle, ", v3, v4, v5, v6, v7);
}

void sub_100030DC4()
{
  sub_10000F480();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Skipping invalid JSON object for key: %@ (%@)", v2, 0x16u);
}

void sub_100030F18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Created queue: %@", &v2, 0xCu);
}

void sub_100030F90()
{
  sub_100018774();
  [sub_100018784(v1) displayName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100018764() uniqueIdentifier];
  sub_100018724();
  sub_100018744(&_mh_execute_header, v3, v4, "[LinkAgent] (%@-%@) Failed to fetch now playing playback queue with error: %@", v5, v6, v7, v8, v9);
}

void sub_10003102C()
{
  sub_100018774();
  [sub_100018784(v1) displayName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100018764() uniqueIdentifier];
  sub_100018724();
  sub_100018744(&_mh_execute_header, v3, v4, "[LinkAgent] (%@-%@) Failed to fetch now playing client with error: %@", v5, v6, v7, v8, v9);
}

void sub_1000310C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  sub_10001CD94();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Origin] Trying to set invalid activeOrigin identifier: %@, falling back to: %@", v4, 0x16u);
}

void sub_1000311CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) name];
  v7 = *(a1 + 40);
  sub_10001CD94();
  v10 = v8;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%@] Failed to connect to route %@ with error: %@", v9, 0x20u);
}

void sub_100031280(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to archive error: %@ with error: %@", &v3, 0x16u);
}

void sub_100031308(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive error with error: %@", &v2, 0xCu);
}

void sub_100031380(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered unknown protobuf key (%@) while converting to a dictionary; skipping.", &v3, 0xCu);
}

void sub_1000313FC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to send message (ID: %@) with error %@.", &v3, 0x16u);
}

void sub_1000314AC(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[LinkAgent] Failed to connect to endpoint %@ with error: %@", &v5, 0x16u);
}

void sub_10003153C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[LinkAgent] Ignoring origin info due to missing device info for origin: %@", &v2, 0xCu);
}

void sub_1000315B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[LinkAgent] Error prewarming system music app: %@", &v2, 0xCu);
}