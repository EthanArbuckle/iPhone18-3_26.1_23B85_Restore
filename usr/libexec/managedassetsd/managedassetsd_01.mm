void sub_10004C504(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skip routine uploadOldAssetsWithOption as fetching signInUser failed: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 104);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C62C;
    block[3] = &unk_100115E70;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

id sub_10004C62C(uint64_t a1)
{
  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "uploadOldAssetsWithOption on startup", v4, 2u);
  }

  return [*(a1 + 32) uploadOldAssetsWithOption:1 includeKVStoreData:1 error:0];
}

void sub_10004CB48(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000518B0();
  }
}

void sub_10004CB9C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051920();
  }
}

void sub_10004D1A0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051920();
  }
}

void sub_10004D778(uint64_t a1)
{
  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "startCloudSyncManager: starting cloudSyncManager", buf, 2u);
  }

  v3 = [*(a1 + 32) cloudSyncManager];

  v4 = off_100127E38;
  if (v3)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startCloudSyncManager: cloudSyncManager is started", v5, 2u);
    }
  }

  else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051BB4();
  }
}

void sub_10004D8F0(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 deleteAllInCloudWithCompletionHandler:*(a1 + 40)];
}

void sub_10004DA1C(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 deleteAssetInCloudWithRecordName:*(a1 + 40) assetType:*(a1 + 56) profileType:*(a1 + 64) completionHandler:*(a1 + 48)];
}

void sub_10004DB98(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 deleteKVSDataInCloudWithRecordHandles:*(a1 + 40) assetType:*(a1 + 72) storeName:*(a1 + 48) storeGroup:*(a1 + 56) profileType:*(a1 + 80) completionHandler:*(a1 + 64)];
}

void sub_10004DDD0(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 saveAssetToCloud:*(a1 + 40) options:*(a1 + 56) completionHandler:*(a1 + 48)];
}

void sub_10004DF78(uint64_t a1)
{
  v3 = [*(a1 + 32) cloudSyncManager];
  v2 = *(a1 + 96);
  [v3 saveKVSDataToCloudWithRecordHandle:*(a1 + 40) assetType:*(a1 + 80) storeName:*(a1 + 48) storeGroup:*(a1 + 56) profileType:*(a1 + 88) data:*(a1 + 64) options:v2 completionHandler:*(a1 + 72)];
}

void sub_10004E08C(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  *(*(*(a1 + 40) + 8) + 24) = [v2 cloudSyncEnabledForAssetType:*(a1 + 48)];
}

void sub_10004E184(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 fetchSigninUserWithCompletionHandler:*(a1 + 40)];
}

void sub_10004E270(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 resetCloudSyncStateWithCompletionHandler:*(a1 + 40)];
}

void sub_10004E388(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 localAssetCleanupWithRecordName:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_10004E4A0(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 localKVSCleanupWithRecordName:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_10004E58C(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 queryCloudAssetsSizeWithCompletionHandler:*(a1 + 40)];
}

void sub_10004E6A4(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 queryCloudAssetWithRecordName:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_10004E790(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 queryCloudKVDataSizeWithCompletionHandler:*(a1 + 40)];
}

void sub_10004E8A8(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  [v2 queryCloudKVDataWithRecordName:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_10004E994(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004EA34;
  v3[3] = &unk_100116C60;
  v4 = *(a1 + 40);
  [v2 checkCloudRecordZoneExistWithCompletionHandler:v3];
}

void sub_10004EA34(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "checkCloudRecordZoneExistWithCompletionHandler returns %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10004EBD0(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EC7C;
  v4[3] = &unk_100116C88;
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 saveUserOptions:v3 completionHandler:v4];
}

void sub_10004EC7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "saveUserOptions returns error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10004EDDC(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004EE7C;
  v3[3] = &unk_100116CD8;
  v4 = *(a1 + 40);
  [v2 getUserOptionsWithCompletionHandler:v3];
}

void sub_10004EE7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getUserOptions returns error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10004F0D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

uint64_t sub_10004F0FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10004F108(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10004F138(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id sub_10004F158(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void sub_10004F170()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004F1E0(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_1000041C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004F250()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F28C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F2C8()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F304()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F340()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F37C()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004F3EC()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F428()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004F498()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004F574()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F5B0(uint64_t a1)
{
  sub_10004F0FC(a1, __stack_chk_guard);
  v2 = *(v1 + 144);
  sub_100006BEC();
  sub_1000041C0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10004F624(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 144);
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:v4];
  v7 = [a3 stringValue];
  sub_10004F0E8();
  sub_10004F138(&_mh_execute_header, v8, v9, "It has not been %@ seconds since lastUpdatedTime %@.", v10, v11, v12, v13, v14);
}

void sub_10004F6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 144);
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:v4];
  v7 = [a3 stringValue];
  sub_10004F0E8();
  sub_10004F138(&_mh_execute_header, v8, v9, "It has been %@ seconds since lastUpdatedTime %@.", v10, v11, v12, v13, v14);
}

void sub_10004F7AC(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to set class A for asset Handle=%@ error: %@");
}

void sub_10004F814()
{
  sub_10001812C();
  sub_1000041C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F8C4(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to get profile (UUID: %@), error = %@");
}

void sub_10004F92C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F968(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to delete profile (UUID: %@), error = %@");
}

void sub_10004F9D0(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to delete profile (UUID: %@) in key value store, error = %@");
}

void sub_10004FA38(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to delete profile (UUID: %@) in file store, error = %@");
}

void sub_10004FAA0()
{
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004FB20(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004FB90()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004FC00()
{
  sub_10000A16C();
  sub_1000041C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004FC70()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FCAC(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to retrieve profile (UUID: %@), error = %@");
}

void sub_10004FD14()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004FD84()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FDC0()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FDFC(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "asset type %lu adopts pt %@", buf, 0x16u);
}

void sub_10004FE54()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FE90()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FECC(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10004FF40()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004FF7C(uint64_t a1)
{
  sub_10004F0FC(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v1, v2, "Failed to save asset %@ to iCloud, error = %@");
}

void sub_10004FFE8(uint64_t a1, void *a2)
{
  sub_10004F158(a1, a2);
  v3 = [sub_1000180EC() assetHandle];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to upload encrypted asset to cloud, handle = %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_10005007C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050124()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050160(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  v3 = *(v2 + 40);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v4, v5, "failed to delete remote asset handle=%@ error: %@");
}

void sub_1000501CC(uint64_t a1)
{
  sub_10004F0D4(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005023C()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetMetadata];
  [v3 type];
  sub_10004F0A8();
  sub_10004F108(&_mh_execute_header, v4, v5, "asset type %lu adopts pt %@", v6, v7, v8, v9, v10);
}

void sub_1000502D8(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_1000041C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100050348(uint64_t a1, void *a2)
{
  sub_10004F158(a1, a2);
  v3 = [sub_1000180EC() assetHandle];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to upload asset deletion record, handle = %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_1000503DC()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050418(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100050488(uint64_t a1)
{
  v1 = sub_10004F0FC(a1, __stack_chk_guard);
  sub_10004F128(v1, v2);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v3, v4, "Failed to delete asset %@ in iCloud, error = %@");
}

void sub_1000504F8()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100050568()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000505D8(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005064C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000506BC()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005072C()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005079C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005080C()
{
  sub_10001812C();
  sub_1000041C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050848()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000508B8()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetOwner];
  v4 = [v3 profileName];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v5, v6, "Fail to retrieve profile (UUID: %@) so asset owner may have incorrect profileType, error = %@", v7, v8, v9, v10, v11);
}

void sub_100050960(void *a1, void *a2)
{
  v3 = a1;
  [a2 profileType];
  sub_10000A16C();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Does not have persistGuestPreflightEntitlement and asset belongs to %lu but currently in guest profile.", v4, 0xCu);
}

void sub_100050A64()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050AA0()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050ADC()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050B18()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100050B88()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050BC4(uint64_t a1)
{
  v1 = *(*(*(a1 + 72) + 8) + 40);
  v2 = *(*(*(a1 + 80) + 8) + 40);
  sub_10000DED0();
  sub_1000041C0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050C4C()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetMetadata];
  [v3 type];
  sub_10004F0A8();
  sub_10004F108(&_mh_execute_header, v4, v5, "asset type %lu adopted pt %@", v6, v7, v8, v9, v10);
}

void sub_100050CE8(uint64_t a1)
{
  sub_10004F0FC(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v1, v2, "Failed to save asset update %@ to iCloud, error = %@");
}

void sub_100050D54()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050E10(uint64_t a1)
{
  sub_10004F0D4(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_1000041C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100050E80(uint64_t a1)
{
  sub_10004F0D4(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100050EF0(uint64_t a1, uint64_t a2)
{
  sub_10004F128(a1, a2);
  *v2 = 138412290;
  *v3 = v4;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Fail to create temp asset file, error: %@", v5, 0xCu);
}

void sub_100050F40(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to query asset with label: %@, error %@");
}

void sub_100050FA8(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to get asset with handle: %@, error %@");
}

void sub_100051010(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to delete duplicated assets: %@, error %@");
}

void sub_100051078(uint64_t a1)
{
  sub_10004F0FC(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v1, v2, "Failed to delete asset %@ in iCloud, error = %@");
}

void sub_1000511BC()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetMetadata];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to de-dupe asset %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_100051254()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetHandle];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Failed to delete existing asset handle: %@, error %@", v6, v7, v8, v9, v10);
}

void sub_1000512EC(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005135C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to query assets with options: %@, error %@");
}

void sub_1000513C4(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100051434()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000514A4()
{
  sub_1000180F8();
  v2 = v1;
  v3 = [sub_1000180EC() assetHandle];
  sub_10004F0A8();
  sub_1000397F8(&_mh_execute_header, v4, v5, "fail to get local asset handle %@, error %@", v6, v7, v8, v9, v10);
}

void sub_10005153C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 assetHandle];
  v7 = [a2 assetMetadata];
  v8 = [v7 label];
  v9 = [a2 assetData];
  v10 = [v9 length];
  v11 = [a2 assetMetadata];
  v12 = [v11 ckrecordIdentifier];
  sub_10004F0E8();
  v16 = v8;
  v17 = 2048;
  v18 = v10;
  v19 = v13;
  v20 = v14;
  v21 = v13;
  v22 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to upload asset to cloud, handle: %@, label: %@, size:%lu, recordName %@, error: %@", v15, 0x34u);
}

void sub_100051760()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000517D0()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051840()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000518B0()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051920()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051990()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051A6C()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051BB4()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MASetMAServerAnchorPersistInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+AnchorPersist.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_1001282C0;
  off_1001282C0 = v3;
}

uint64_t sub_100051F1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100051F34(void *a1)
{
  v3 = (a1 + 9);
  v2 = a1[9];
  v4 = a1[5];
  v5 = *(a1[4] + 72);
  v6 = *(v3 - 24);
  v7 = *(v2 + 8);
  obj = *(v7 + 40);
  v8 = [v5 addAnchorGroupIdentifier:v4 client:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v9 = off_1001282C0;
    if (os_log_type_enabled(off_1001282C0, OS_LOG_TYPE_ERROR))
    {
      sub_100052B10(v3, v9);
    }
  }

  v10 = a1[8];
  if (v10)
  {
    (*(v10 + 16))(v10, *(*(*v3 + 8) + 40));
  }

  v11 = a1[7];
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  return [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) AddAnchorGroup:clientIdentifier:completion:]_block_invoke" client:v13 startTS:a1[10] error:*(*(a1[9] + 8) + 40)];
}

void sub_100052294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_1000522BC(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = *(a1[4] + 72);
  v5 = *(v3[4] + 8);
  obj = *(v5 + 40);
  v6 = [v4 getAllAnchorGroups:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(v3[3] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(v3[4] + 8) + 40) && os_log_type_enabled(off_1001282C0, OS_LOG_TYPE_ERROR))
  {
    sub_100052B94(v3, (v3 + 4));
  }

  v9 = a1[7];
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1[8] + 8) + 40), *(*(a1[9] + 8) + 40));
  }

  v10 = a1[6];
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  return [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) GetAllAnchorGroups:completion:]_block_invoke" client:v12 startTS:a1[10] error:*(*(a1[9] + 8) + 40)];
}

void sub_100052644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100052660(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = *(a1[4] + 72);
  v5 = *(v3[3] + 8);
  obj = *(v5 + 40);
  v6 = [v4 removeAllAnchorGroups:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0 && os_log_type_enabled(off_1001282C0, OS_LOG_TYPE_ERROR))
  {
    sub_100052BFC(v3, (v3 + 3));
  }

  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(v3[3] + 8) + 40));
  }

  v8 = a1[6];
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) RemoveAllAnchorGroups:completion:]_block_invoke" client:v10 startTS:a1[9] error:*(*(a1[8] + 8) + 40)];
}

id sub_1000529F8(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = *(a1[4] + 72);
  v5 = v3[1];
  v6 = *(v3[4] + 8);
  obj = *(v6 + 40);
  v7 = [v4 removeAnchorGroupIdentifier:v2 client:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if ((v7 & 1) == 0 && os_log_type_enabled(off_1001282C0, OS_LOG_TYPE_ERROR))
  {
    sub_100052C64(v3, (v3 + 4));
  }

  v8 = a1[8];
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(v3[4] + 8) + 40));
  }

  v9 = a1[7];
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  return [CALogger logWithCoreAnalytics:"[MAServer(AnchorPersist) RemoveAnchorGroup:clientIdentifier:completion:]_block_invoke" client:v11 startTS:a1[10] error:*(*(a1[9] + 8) + 40)];
}

void sub_100052B10(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fail to add new anchor group, error: %@", &v3, 0xCu);
}

void sub_100052B94(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_10000DEB8();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to get all groups for client %@, error: %@");
}

void sub_100052BFC(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_10000DEB8();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to remove all anchor groups for client: %@, error: %@");
}

void sub_100052C64(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_10000DEB8();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to remove anchor group %@, error: %@");
}

void MASetMAServerNotificationInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+Notification.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_1001282C8;
  off_1001282C8 = v3;
}

void sub_100053364(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to check/validate name/group inputs, error: %@", &v2, 0xCu);
}

void MASetMAServerFileAssetInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+FileAsset.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_1001282D0;
  off_1001282D0 = v3;
}

void sub_10005446C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005449C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000544B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [NSMutableDictionary dictionaryWithCapacity:16];
  v8 = *(a1 + 96);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v34 = v6;
  v12 = [v9 checkFileAccessEntitlement:v6 mode:v8 attributes:v10 clientConn:v11 op:1 topGroup:&v38 profile:&v37 error:&v36];
  v13 = v38;
  v14 = v38;
  v15 = v37;
  v16 = v37;
  v17 = v36;
  v18 = v36;
  if (v12)
  {
    v19 = *(a1 + 40);
    v20 = *(*(a1 + 32) + 32);
    v21 = *(a1 + 96);
    v35 = v18;
    v22 = [v20 openFile:v12 topGroup:v14 profile:v16 mode:v21 attributes:v19 attributesOut:v7 error:&v35];
    v33 = v35;

    if (v22)
    {
      [*(a1 + 56) addObject:v22];
      v23 = v34;
      if ([v7 count])
      {
        [*(a1 + 64) setObject:v7 forKey:v34];
      }

      v24 = *(*(a1 + 80) + 8);
      v26 = *(v24 + 40);
      v25 = (v24 + 40);
      if (v26)
      {
        objc_storeStrong(v25, v13);
      }

      v27 = *(*(a1 + 88) + 8);
      v29 = *(v27 + 40);
      v28 = (v27 + 40);
      if (v29)
      {
        objc_storeStrong(v28, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(off_1001282D0, OS_LOG_TYPE_ERROR))
      {
        sub_1000550FC();
      }

      v30 = createManagedAssetError();
      v31 = *(*(a1 + 72) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      *a4 = 1;
      v23 = v34;
    }

    v18 = v33;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v17);
    *a4 = 1;
    v23 = v34;
  }
}

void sub_100055078()
{
  sub_10000A16C();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "realpath=%@ extension=%@", v2, 0x16u);
}

void MASetMAServerDebuggingInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+Debugging.m"];
  v11 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v11;
  v3 = os_log_create(v1, [v11 UTF8String]);
  v4 = off_1001282D8;
  off_1001282D8 = v3;

  v5 = [NSSet setWithObjects:@"createdDate", @"expiresDate", @"uploadedDate", @"fileSize", @"size", @"state", @"accessDay", @"createdDay", @"assetCacheVersion", @"participantCacheVersion", @"assetKeyFilter", @"assetCacheFilter", @"version", @"uploadPassedSec", @"withHandles", @"keyDropCount", @"a06ExpiryPeriodInSeconds", @"persistProfileExpiryPeriodInMin", @"inactivePGCheckPeriodInMin", @"assetType", @"requireServerAttest", @"getRecords", @"userOption", @"mode", 0];
  v6 = qword_100129480;
  qword_100129480 = v5;

  v7 = [NSSet setWithObjects:@"encAssetHash", @"encHash", @"signature", @"assetCacheAuth", @"auth", @"creatorAttest", @"serverAttest", 0];
  v8 = qword_100129488;
  qword_100129488 = v7;

  v9 = [NSSet setWithObjects:@"assetCache", @"predownloadCache", @"participantCache", @"localHandle", @"type", @"kvKeys", @"kvValuesArr", @"kvValues", @"attributes", 0];
  v10 = qword_100129490;
  qword_100129490 = v9;
}

uint64_t sub_100056B3C()
{
  v0 = os_variant_allows_internal_security_policies();
  v1 = off_1001282D8;
  if (v0)
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "debug SPIs are allowd for internal builds", v4, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_100058424();
    }

    v2 = +[NSXPCConnection currentConnection];
    [v2 invalidate];
  }

  return v0;
}

void sub_100056BF8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [NSNumber numberWithInt:v5 == 0];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32), v5);
  }
}

void sub_100056C88(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [NSNumber numberWithInt:v5 == 0];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32), v5);
  }
}

void sub_100056D18(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_100058460();
    }

    [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"getRecords"];
    if ([v12 intValue])
    {
      v29 = a3;
      v30 = v12;
      v31 = v10;
      v13 = a1;
      v32 = v9;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v10;
      v14 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        v17 = kMARecordName;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:v17];
            v21 = off_1001282D8;
            if (v20)
            {
              if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v43 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Query cloud asset with recordName: %@", buf, 0xCu);
              }

              v22 = *(v13 + 56);
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_1000570BC;
              v34[3] = &unk_100116D90;
              v35 = v20;
              [v22 queryCloudAssetWithRecordName:v35 completionHandler:v34];
            }

            else if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v19;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No recordName in %@", buf, 0xCu);
            }
          }

          v15 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v15);
      }

      v10 = v31;
      v9 = v32;
      a1 = v13;
      v12 = v30;
      v11 = 0;
      a3 = v29;
    }

    v40[0] = @"size";
    v23 = [NSNumber numberWithInteger:a3];
    v24 = v23;
    v25 = &stru_10011AC38;
    if (v9)
    {
      v25 = v9;
    }

    v41[0] = v23;
    v41[1] = v25;
    v40[1] = @"recordAccount";
    v40[2] = @"records";
    if (v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    v41[2] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    [*(a1 + 32) setObject:v27 forKeyedSubscript:*(a1 + 40)];
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    (*(v28 + 16))(v28, *(a1 + 32), v11);
  }
}

void sub_1000570BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = off_1001282D8;
  if (v6)
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000584D0(a1);
    }
  }

  else if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cloud Asset: %@", &v8, 0xCu);
  }
}

void sub_1000571A8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_10005853C();
    }

    [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"getRecords"];
    if ([v12 intValue])
    {
      v29 = a3;
      v30 = v12;
      v31 = v10;
      v13 = a1;
      v32 = v9;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v10;
      v14 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        v17 = kMARecordName;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:v17];
            v21 = off_1001282D8;
            if (v20)
            {
              if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v43 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Query cloud KVData with recordName: %@", buf, 0xCu);
              }

              v22 = *(v13 + 56);
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_10005754C;
              v34[3] = &unk_100116DE0;
              v35 = v20;
              [v22 queryCloudKVDataWithRecordName:v35 completionHandler:v34];
            }

            else if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v19;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No recordName in %@", buf, 0xCu);
            }
          }

          v15 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v15);
      }

      v10 = v31;
      v9 = v32;
      a1 = v13;
      v12 = v30;
      v11 = 0;
      a3 = v29;
    }

    v40[0] = @"size";
    v23 = [NSNumber numberWithInteger:a3];
    v24 = v23;
    v25 = &stru_10011AC38;
    if (v9)
    {
      v25 = v9;
    }

    v41[0] = v23;
    v41[1] = v25;
    v40[1] = @"recordAccount";
    v40[2] = @"records";
    if (v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    v41[2] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    [*(a1 + 32) setObject:v27 forKeyedSubscript:*(a1 + 40)];
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    (*(v28 + 16))(v28, *(a1 + 32), v11);
  }
}

void sub_10005754C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = off_1001282D8;
  if (v19)
  {
    if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000585AC(a1);
    }
  }

  else if (os_log_type_enabled(off_1001282D8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413570;
    v22 = v15;
    v23 = 2048;
    v24 = a3;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = a6;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "KVSRecord: recordName: %@ assetType: %lu storeName: %@ groupName: %@ profileType: %lu data: %@", &v21, 0x3Eu);
  }
}

void sub_1000576B8(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (v9)
  {
    [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:*(a1 + 40)];
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = [NSNumber numberWithInteger:a2];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100057768(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9 = v3;
  if (v3)
  {
    [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:v5];
    v6 = a1[4];
  }

  else
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:v5];
    v7 = a1[4];
    v8 = a1[6];
  }

  (*(a1[7] + 16))();
}

void sub_10005827C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000582B8()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000582F4()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058330()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005836C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000583A8()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058424()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058460()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000584D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000581FC();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to queryCloudAssetWithRecordName %@ error: %@");
}

void sub_10005853C()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000585AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000581FC();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to queryCloudKVDataWithRecordName %@ error: %@");
}

void sub_100058618(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_100005D18(&_mh_execute_header, v3, v4, "error query data in %@ error=%@");
}

void sub_100058760(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 UUIDString];
  sub_10000A16C();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get lastSwitchTime for uuid=%@, error = %{public}@", v7, 0x16u);
}

void sub_10005881C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MASetMAServerKVStoreInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+KVStore.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_1001282E0;
  off_1001282E0 = v3;
}

uint64_t sub_100059720(void *a1, void *a2)
{
  v3 = [a1 objectForKeyedSubscript:kMAEventMaskKey];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 unsignedIntValue];
      v5 = 0;
      v6 = v4;
    }

    else
    {
      v5 = createManagedAssetError();
      v6 = 0;
    }

    v7 = v5;
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        v9 = v7;
        *a2 = v8;
      }

      if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
      {
        sub_10005C8D4();
      }
    }
  }

  else
  {
    v6 = 122880;
  }

  return v6;
}

void sub_100059EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_1001282E0;
  if (v3)
  {
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
    {
      sub_10005CAB4();
    }
  }

  else if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "scheduled record (storename: %@) upload to cloud", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) config];
  v9 = [v8 isCoreRXDataSharingStore];

  if (v9)
  {
    v10 = off_1001282E0;
    if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = MACoreRxDataSharingRecordDescription(v11);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "the record: %@", &v14, 0xCu);
    }
  }
}

void sub_10005A260(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    sub_10005CB74();
  }
}

uint64_t sub_10005B9B4(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = kMAKVStoreOptionsKey;
  v10 = [v7 objectForKeyedSubscript:kMAKVStoreOptionsKey];
  if (!v10)
  {
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = createManagedAssetError();
    v13 = v11;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = [v10 unsignedIntValue];
LABEL_7:

  v14 = v11;
  if (!v14)
  {
    goto LABEL_11;
  }

  if (a4)
  {
    v15 = v14;
    *a4 = v14;
  }

  v16 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    v19 = v16;
    v20 = [v7 objectForKeyedSubscript:v9];
    *buf = 138412546;
    v26 = v20;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);

    if (!a3)
    {
LABEL_19:
      if ((v12 & 0x12) == 0)
      {
        v17 = [v8 cloudSync];
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
LABEL_11:
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  if ((v12 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v17 = 1;
  *a3 = 1;
  if ([v8 cloudSync])
  {
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_20:
    v17 = 0;
    goto LABEL_22;
  }

  v18 = off_1001282E0;
  if (os_log_type_enabled(off_1001282E0, OS_LOG_TYPE_ERROR))
  {
    v22 = v18;
    v23 = [v8 name];
    v24 = [v7 objectForKeyedSubscript:v9];
    *buf = 138412546;
    v26 = v23;
    v27 = 2112;
    v28 = v24;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "request to delete in cloud only for a store %@ not cloudSync enabled, options: %@", buf, 0x16u);
  }

  createManagedAssetError();
  *a4 = v17 = 0;
LABEL_22:

  return v17;
}

id sub_10005BC9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
    v6 = kMAKVStoreOptionsKey;
    v7 = [v4 objectForKeyedSubscript:kMAKVStoreOptionsKey];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      createManagedAssetError();
      *a2 = v9 = 0;
    }

    else
    {
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 unsignedLongLongValue] | 8);
      [v5 setObject:v8 forKeyedSubscript:v6];

      v9 = v5;
    }
  }

  else
  {
    v11 = kMAKVStoreOptionsKey;
    v5 = [NSNumber numberWithUnsignedInteger:8];
    v12 = v5;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  return v9;
}

id sub_10005BE3C(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_10005C7F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10005C81C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_10005C83C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10005C85C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid attributes dataType, expecting NSDisctionary: %@", &v2, 0xCu);
}

void sub_10005C93C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 profile];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "store.profile: %@", &v5, 0xCu);
}

void sub_10005C9E4(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [a2 name];
  v13 = [a2 group];
  v14 = *a3;
  sub_10005C7F0(&_mh_execute_header, v7, v8, "error save the record, store name=%@ group=%@, error=%@", v9, v10, v11, v12, 2u);
}

void sub_10005CAB4()
{
  sub_10005C810();
  v2 = *(v1 + 32);
  v4 = v3;
  v5 = [v2 name];
  v6 = [*(v0 + 32) group];
  sub_10005C7DC();
  sub_10005C83C(&_mh_execute_header, v7, v8, "error saving record to cloud, store name=%@ group=%@, error=%@", v9, v10, v11, v12, v13);
}

void sub_10005CB74()
{
  sub_10005C810();
  v2 = *(v1 + 32);
  v4 = v3;
  v5 = [v2 name];
  v6 = [*(v0 + 32) group];
  sub_10005C7DC();
  sub_10005C83C(&_mh_execute_header, v7, v8, "Failed to schedule cloud delete for store name=%@ group=%@, error: %@", v9, v10, v11, v12, v13);
}

void sub_10005CD04()
{
  sub_10005C810();
  v2 = v1;
  v3 = [v0 name];
  v4 = [v0 group];
  sub_10005C7C4();
  sub_10005C7F0(&_mh_execute_header, v5, v6, "failed to query current recordNames before deletion for cloud sync, error: %@ store name=%@ group=%@", v7, v8, v9, v10, 2u);
}

void sub_10005CDBC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [a2 count];
  v6 = [a3 name];
  v7 = [a3 group];
  sub_10005C7C4();
  sub_10005C81C(&_mh_execute_header, v8, v9, "%lu recordNames: store name=%@ group=%@", v10, v11, v12, v13, 2u);
}

void sub_10005CE84(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [a2 count];
  v6 = [a3 name];
  v7 = [a3 group];
  sub_10005C7C4();
  sub_10005C81C(&_mh_execute_header, v8, v9, "%lu records to be deleted: store name=%@ group=%@", v10, v11, v12, v13, 2u);
}

Swift::Int MADigest.HashType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10005CFE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005D054()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t static MADigest.hash(fileAtPath:hashType:)(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v26 = type metadata accessor for SHA384();
      v27 = sub_10005F3AC(&qword_1001282F8, &type metadata accessor for SHA384);
      sub_10005D4D0(v25);
      SHA384.init()();
    }

    else
    {
      v26 = type metadata accessor for SHA512();
      v27 = sub_10005F3AC(&qword_1001282E8, &type metadata accessor for SHA512);
      sub_10005D4D0(v25);
      SHA512.init()();
    }
  }

  else
  {
    v26 = type metadata accessor for SHA256();
    v27 = sub_10005F3AC(&qword_100128300, &type metadata accessor for SHA256);
    sub_10005D4D0(v25);
    SHA256.init()();
  }

  v6 = objc_allocWithZone(NSInputStream);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithFileAtPath:v7];

  if (v8)
  {
    v28 = v3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = 0x4000;
    bzero((v9 + 32), 0x4000uLL);
    [v8 open];
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10005E24C(0, *(v9 + 16), 0, v9);
      }

      result = [v8 read:v9 + 32 maxLength:0x4000];
      if (result < 1)
      {
        [v8 close];
        sub_10005E340(v25, v26);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v12 = *(AssociatedTypeWitness - 8);
        v13 = *(v12 + 64);
        __chkstk_darwin(AssociatedTypeWitness);
        v15 = v25 - v14 + 8;
        dispatch thunk of HashFunction.finalize()();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v17 = sub_10005ED28(v15, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
        (*(v12 + 8))(v15, AssociatedTypeWitness);

        sub_10005D588(v25);
        return v17;
      }

      if (*(v9 + 16) < result)
      {
        break;
      }

      sub_10005F2B4(v25, v26);

      dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  else
  {
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v17 = nullsub_1(8, 0x3D656C6966, 0xE500000000000000);
    v20 = v19;
    v22 = v21;
    sub_10005D534();
    swift_allocError();
    *v23 = v17;
    *(v23 + 8) = v20;
    *(v23 + 16) = v22;
    swift_willThrow();
    sub_10005D588(v25);
    return v17;
  }

  return result;
}

uint64_t *sub_10005D4D0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10005D534()
{
  result = qword_1001282F0;
  if (!qword_1001282F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001282F0);
  }

  return result;
}

uint64_t sub_10005D588(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t static MADigest.hash(data:hashType:)(uint64_t a1, unint64_t a2, char a3)
{
  v54 = a1;
  v5 = type metadata accessor for SHA512();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA512Digest();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA384();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SHA384Digest();
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  __chkstk_darwin(v16);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SHA256();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SHA256Digest();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      sub_10005F3AC(&qword_1001282F8, &type metadata accessor for SHA384);
      dispatch thunk of HashFunction.init()();
      v29 = v54;
      sub_10005F304(v54, a2);
      sub_10005E5A8(v29, a2, v15);
      sub_10005F358(v29, a2);
      v30 = v46;
      dispatch thunk of HashFunction.finalize()();
      (*(v45 + 8))(v15, v12);
      v31 = v48;
      v57 = v48;
      v58 = sub_10005F3AC(&qword_100128310, &type metadata accessor for SHA384Digest);
      v32 = sub_10005D4D0(v56);
      v33 = v47;
      (*(v47 + 16))(v32, v30, v31);
      sub_10005E340(v56, v57);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v33 + 8))(v30, v31);
    }

    else
    {
      sub_10005F3AC(&qword_1001282E8, &type metadata accessor for SHA512);
      v37 = v50;
      dispatch thunk of HashFunction.init()();
      v38 = v54;
      sub_10005F304(v54, a2);
      sub_10005E7CC(v38, a2, v8);
      sub_10005F358(v38, a2);
      v39 = v51;
      dispatch thunk of HashFunction.finalize()();
      (*(v49 + 8))(v8, v37);
      v40 = v53;
      v57 = v53;
      v58 = sub_10005F3AC(&qword_100128308, &type metadata accessor for SHA512Digest);
      v41 = sub_10005D4D0(v56);
      v42 = v52;
      (*(v52 + 16))(v41, v39, v40);
      sub_10005E340(v56, v57);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v42 + 8))(v39, v40);
    }
  }

  else
  {
    v34 = v26;
    sub_10005F3AC(&qword_100128300, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    v35 = v54;
    sub_10005F304(v54, a2);
    sub_10005E384(v35, a2, v23);
    sub_10005F358(v35, a2);
    dispatch thunk of HashFunction.finalize()();
    (*(v20 + 8))(v23, v19);
    v57 = v24;
    v58 = sub_10005F3AC(&qword_100128318, &type metadata accessor for SHA256Digest);
    v36 = sub_10005D4D0(v56);
    (*(v34 + 16))(v36, v28, v24);
    sub_10005E340(v56, v57);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v34 + 8))(v28, v24);
  }

  v43 = v55;
  sub_10005D588(v56);
  return v43;
}

uint64_t sub_10005DD70@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10005EB70(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_10005DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_10005E0EC(&type metadata for UInt8, sub_10005F6C8, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

_BYTE *sub_10005DF10@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10005EB70(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10005EC28(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10005ECA4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10005DFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a4 + v11) = result;
  return result;
}

uint64_t sub_10005E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

char *sub_10005E24C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&unk_100128C50, &qword_1000E7390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10005E340(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10005E384(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_10005F3AC(&qword_100128300, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100128300, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100128300, &type metadata accessor for SHA256);
  }

  type metadata accessor for SHA256();
  sub_10005F3AC(&qword_100128300, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10005E5A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA384();
      sub_10005F3AC(&qword_1001282F8, &type metadata accessor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA384, &qword_1001282F8, &type metadata accessor for SHA384);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA384, &qword_1001282F8, &type metadata accessor for SHA384);
  }

  type metadata accessor for SHA384();
  sub_10005F3AC(&qword_1001282F8, &type metadata accessor for SHA384);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10005E7CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA512();
      sub_10005F3AC(&qword_1001282E8, &type metadata accessor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_1001282E8, &type metadata accessor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10005E9F0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_1001282E8, &type metadata accessor for SHA512);
  }

  type metadata accessor for SHA512();
  sub_10005F3AC(&qword_1001282E8, &type metadata accessor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10005E9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      a5(0);
      sub_10005F3AC(a6, a7);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005EAD0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10005EB70(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10005EC28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10005ECA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10005ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v32 - v15;
  v17 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v14);
  (*(v19 + 16))(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_10005F5CC(&qword_100128328, &qword_1000E6078);
  if (swift_dynamicCast())
  {
    sub_10005F6B0(v35, &v37);
    sub_10005E340(&v37, v38);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v35[0] = v34;
    sub_10005D588(&v37);
    goto LABEL_34;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_10005F614(v35);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v37 + 1) >> 60 != 15)
  {
    v35[0] = v37;
    goto LABEL_34;
  }

  v33 = v37;
  v20 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v35[0] = sub_10005EAD0(v20);
  *(&v35[0] + 1) = v21;
  __chkstk_darwin(*&v35[0]);
  *(&v32 - 4) = a2;
  *(&v32 - 3) = a3;
  *(&v32 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v35[0] + 1) >> 62;
  if ((*(&v35[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v35[0]) - LODWORD(v35[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v35[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v35[0] + 16);
    v24 = *(*&v35[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v35[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v35[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v35[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v37 = 0;
  *(&v37 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v34) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v37 + v29) = v34;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v34 = v37;
      *(&v34 + 6) = *(&v37 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v29) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v34) & 1) == 0);
  if (v29)
  {
    *&v34 = v37;
    *(&v34 + 6) = *(&v37 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10005F69C(v33, *(&v33 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_10005F69C(v33, *(&v33 + 1));
LABEL_34:
  v30 = v35[0];
  sub_10005F304(*&v35[0], *(&v35[0] + 1));
  sub_10005F358(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_10005F2B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10005F304(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005F358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005F3AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005F3F8()
{
  result = qword_100128320;
  if (!qword_100128320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MADigest.HashType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MADigest.HashType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10005F5CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005F614(uint64_t a1)
{
  v2 = sub_10005F5CC(&qword_100128330, &qword_1000E6080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F69C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005F358(a1, a2);
  }

  return a1;
}

uint64_t sub_10005F6B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10005F6F0(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)(0xD000000000000017, 0x80000001000F0720, a1, a2);
}

Swift::Int sub_10005F794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 22999);
  return Hasher._finalize()();
}

Swift::Int sub_10005F814()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 22999);
  return Hasher._finalize()();
}

uint64_t sub_10005F85C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s6server13MACryptoErrorV0C4CodeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t MACryptoError.description.getter(char a1, uint64_t a2, void *a3)
{
  result = 0x6C616E7265746E49;
  switch(a1)
  {
    case 1:
      goto LABEL_41;
    case 2:
      result = 0x742064656C696146;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 3:
    case 26:
      result = 0xD00000000000001BLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 5:
      result = 0xD00000000000001FLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 6:
    case 23:
      result = 0xD000000000000023;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 7:
      result = 0xD000000000000021;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 8:
      result = 0xD000000000000014;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 9:
      result = 0xD00000000000002ALL;
      goto LABEL_38;
    case 10:
      result = 0xD00000000000002ALL;
      goto LABEL_38;
    case 11:
      result = 0xD00000000000001CLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 12:
      result = 0xD000000000000034;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 13:
      result = 0xD000000000000019;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 14:
      result = 0xD000000000000026;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 15:
      result = 0xD000000000000028;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 16:
      result = 0xD000000000000029;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 17:
    case 18:
    case 29:
      result = 0xD00000000000002DLL;
LABEL_41:
      if (a3)
      {
        goto LABEL_42;
      }

      return result;
    case 19:
    case 24:
      result = 0xD00000000000002BLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 20:
      result = 0xD000000000000030;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 21:
      result = 0xD000000000000024;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 22:
      result = 0xD00000000000003BLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    case 25:
      result = 0xD00000000000002ALL;
      goto LABEL_38;
    case 28:
      result = 0xD00000000000002ALL;
LABEL_38:
      if (!a3)
      {
        return result;
      }

      goto LABEL_42;
    default:
      result = 0xD00000000000001ELL;
      if (!a3)
      {
        return result;
      }

LABEL_42:
      v9 = result;
      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = a2;
      v8._object = a3;
      String.append(_:)(v8);
      return v9;
  }
}

uint64_t _s6server13MACryptoErrorV0C4CodeO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 + 22999) >= 0x1E)
  {
    return 30;
  }

  else
  {
    return a1 + 22999;
  }
}

unint64_t sub_10005FD60()
{
  result = qword_100128338;
  if (!qword_100128338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128338);
  }

  return result;
}

__n128 sub_10005FDD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005FDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005FE48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MACryptoError.ErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MACryptoError.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10005FFFC(uint64_t a1, unint64_t a2)
{
  sub_1000600B0(a1, a2);
  sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  sub_1000615E8(&qword_1001283D8, &qword_100128860, &qword_1000E61F0);
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

void *sub_1000600B0(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000608A0(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_10005F5CC(&qword_100128400, qword_1000E6290);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000E61E0;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000608A0((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_100060420(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100060490()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000604D4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100060514(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 30768;
  v4._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v4))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100061494(v5, a1, a2);
  v8 = v7;

  if (Substring.distance(from:to:)())
  {

    return 0;
  }

  v9 = Substring.distance(from:to:)();
  v31 = sub_100061544(v9 / 2);
  v32 = v10;
  v11 = v8 >> 14;
  v12 = v6 >> 14;
  if (v6 >> 14 == v8 >> 14)
  {
LABEL_26:

    return v31;
  }

  v13 = 1;
  while (1)
  {
    v15 = Substring.index(after:)();
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v12 > Substring.index(after:)() >> 14)
    {
      break;
    }

    Substring.index(after:)();
    v16 = Substring.subscript.getter();
    v20 = v19;
    if (!((v16 ^ v17) >> 14))
    {
      goto LABEL_28;
    }

    v21 = v16;
    v22 = v17;
    v23 = v18;
    if ((v19 & 0x1000000000000000) != 0)
    {
      LOWORD(v23) = sub_1000609CC(v16, v17, v18, v19, 16);

      if ((v23 & 0x100) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v30[0] = v18;
        v30[1] = v19 & 0xFFFFFFFFFFFFFFLL;
        v24 = v30;
      }

      else if ((v18 & 0x1000000000000000) != 0)
      {
        v24 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v24 = _StringObject.sharedUTF8.getter();
      }

      v25 = sub_100061630(v24, v21, v22, v23, v20, 16);
      LOBYTE(v23) = v25;
      v26 = (v25 >> 8) & 1;

      if (v26)
      {
        goto LABEL_29;
      }
    }

    if (v32 >> 62 == 2)
    {
      v27 = *(v31 + 24);
    }

    v14 = sub_10005F5CC(&qword_1001283E0, &qword_1000E61F8);
    v30[3] = v14;
    v30[4] = sub_1000615E8(&qword_1001283E8, &qword_1001283E0, &qword_1000E61F8);
    LOBYTE(v30[0]) = v23;
    v29 = *sub_10005E340(v30, v14);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10005D588(v30);
    v11 = v8 >> 14;
LABEL_8:
    v13 ^= 1u;
    v12 = v15 >> 14;
    if (v15 >> 14 == v11)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:

LABEL_29:
  swift_bridgeObjectRelease_n();
  sub_10005F358(v31, v32);
  return 0;
}

char *sub_1000608A0(char *a1, int64_t a2, char a3)
{
  result = sub_1000608C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000608C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&unk_100129340, &unk_1000E8020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_1000609CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_100061C04();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100060FAC();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100060FAC()
{
  v0 = String.subscript.getter();
  v4 = sub_10006102C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10006102C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100061184(v9, 0);
  v12 = sub_1000611F8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_100061184(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10005F5CC(&unk_100128C50, &qword_1000E7390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1000611F8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100061418(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100061418(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100061418(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100061494(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100061544(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000615E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100060420(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100061630(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100061418(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100061418(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100061418(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_100061AC8()
{
  result = qword_1001283F0;
  if (!qword_1001283F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001283F0);
  }

  return result;
}

uint64_t _s16ExtendedEncodingOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s16ExtendedEncodingOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100061C04()
{
  result = qword_1001283F8;
  if (!qword_1001283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001283F8);
  }

  return result;
}

uint64_t sub_100061C58()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_100129928);
  sub_100066000(v0, qword_100129928);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0x556567727550414DLL, 0xEE007974696C6974);
}

id sub_100061CD4()
{
  result = [objc_allocWithZone(type metadata accessor for MAPurgeUtility()) init];
  qword_10012BB80 = result;
  return result;
}

uint64_t *sub_100061D04()
{
  if (qword_100129940 != -1)
  {
    swift_once();
  }

  return &qword_10012BB80;
}

id sub_100061D54()
{
  if (qword_100129940 != -1)
  {
    swift_once();
  }

  v0 = qword_10012BB80;

  return v0;
}

uint64_t sub_100061E14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_100061E44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100061E74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_100061EA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void *static MAPurgeUtility.setup(storage:syncManager:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 marootPath];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v7;
  v16 = v6;

  v8 = [a1 malocalAssetPath];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = qword_100129948;
  qword_100129948 = a1;
  qword_100129950 = a2;
  qword_100129958 = a3;
  qword_100129960 = v16;
  qword_100129968 = v15;
  qword_100129970 = v9;
  qword_100129978 = v11;
  v13 = a1;

  return sub_10006205C(v12);
}

void *sub_10006205C(void *result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall MAPurgeUtility.registerCacheDeleteCallback()()
{
  v1 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_100062364;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000624B0;
  v6[3] = &unk_1001171C0;
  v4 = _Block_copy(v6);
  v5 = v0;

  CacheDeleteRegisterPurgeNotification();
  _Block_release(v4);

  sub_100062D8C();
}

uint64_t sub_10006232C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100062364()
{
  v1 = *(v0 + 16);
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129928);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100065658(0xD000000000000013, 0x80000001000F0C40, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "CacheDeleteRegisterPurgeNotification fires on path %s", v5, 0xCu);
    sub_10005D588(v6);
  }

  sub_100062D8C();
}

uint64_t sub_1000624B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000624F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MAPurgeUtility.checkPurgedMark(_:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return sub_100065BC8(a1);
}

uint64_t sub_1000625FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100062874(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100062928;

  return sub_100065BC8(a1);
}

uint64_t sub_100062928()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

Swift::Void __swiftcall MAPurgeUtility.registerPostInstallBGTask()()
{
  v1 = v0;
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129928);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100065658(0xD000000000000023, 0x80000001000F0C80, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "registerPostInstallBGTask identifier:%s for XPC_ACTIVITY_POST_INSTALL event", v5, 0xCu);
    sub_10005D588(v6);
  }

  else
  {
  }

  v7 = [objc_opt_self() sharedScheduler];
  v8 = String._bridgeToObjectiveC()();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v12[4] = sub_100066038;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100062CDC;
  v12[3] = &unk_100117210;
  v10 = _Block_copy(v12);
  v11 = v1;

  [v7 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v10];
  _Block_release(v10);
}

void sub_100062CDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100062D8C()
{
  v1 = v0;
  sub_10005F5CC(&qword_100128448, &unk_1000E6390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000E61E0;
  if (qword_100129948)
  {
    v3 = qword_100129960;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_10005F5CC(&qword_100128890, &qword_1000E6D60);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129928);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    if (qword_100129948)
    {
      v12 = qword_100129960;
      v11 = qword_100129968;
    }

    else
    {
      v12 = 0;
      v11 = 0xE000000000000000;
    }

    v13 = sub_100065658(v12, v11, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "CacheDeleteEnumerateRemovedFilesInDirectories checks on path %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v18[4] = sub_100067220;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100063050;
  v18[3] = &unk_1001174C8;
  v16 = _Block_copy(v18);
  v17 = v1;

  CacheDeleteEnumerateRemovedFilesInDirectories();
  _Block_release(v16);
}

void sub_100063050(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1000630BC(void *a1)
{
  v3 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = aBlock - v5;
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100066000(v7, qword_100129928);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "handling postInstall bgTask", v10, 2u);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = (v11 + 16);
  aBlock[4] = sub_100066A3C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000624B0;
  aBlock[3] = &unk_100117310;
  v13 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v13];
  _Block_release(v13);
  swift_beginAccess();
  if ((*v12 & 1) == 0)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;
    v16 = v1;
    sub_10006350C(0, 0, v6, &unk_1000E6330, v15);
  }

  [a1 setTaskCompleted];
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "postInstall bgTask complete", v19, 2u);
  }
}

uint64_t sub_1000633E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((swift_isaMask & *a4) + 0x58);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100067294;

  return v9(0);
}

uint64_t sub_10006350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100066C10(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100066C80(v11, &qword_100128408, &qword_1000E7640);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100066C80(a3, &qword_100128408, &qword_1000E7640);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100066C80(a3, &qword_100128408, &qword_1000E7640);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000637A8(char *a1)
{
  v2 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  if (qword_100129920 != -1)
  {
LABEL_40:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100066000(v6, qword_100129928);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = a1;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "processPurgedEvents: %@", v11, 0xCu);
    sub_100066C80(v12, &qword_1001287F0, &qword_1000E6C40);
  }

  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v57 = 0;
      sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      v15 = v57;
      if (v57)
      {
        v16 = *(v57 + 16);
        if (v16)
        {
          v51 = v5;
          v52 = v7;
          v17 = 0;
          a1 = _swiftEmptyArrayStorage;
          v18 = &type metadata for String;
          *&v14 = 136315394;
          v50 = v14;
          while (1)
          {
            if (v17 >= *(v15 + 16))
            {
              __break(1u);
              goto LABEL_40;
            }

            v19 = *(v15 + 8 * v17 + 32);
            if (!*(v19 + 16))
            {
              goto LABEL_10;
            }

            v20 = *(v15 + 8 * v17 + 32);

            v21 = sub_100065A98(1752457584, 0xE400000000000000);
            if (v22 & 1) != 0 && (sub_100066130(*(v19 + 56) + 32 * v21, &v57), result = swift_dynamicCast(), (result))
            {
              if (!qword_100129948)
              {
                __break(1u);
                return result;
              }

              v5 = v18;
              v25 = v55;
              v24 = v56;
              v26 = qword_100129970;
              v27 = qword_100129978;

              v28._countAndFlagsBits = v26;
              v28._object = v27;
              if (String.hasPrefix(_:)(v28))
              {
                v57 = v25;
                v58 = v24;
                v55 = v26;
                v56 = v27;
                sub_10006618C();
                v18 = v5;
                RangeReplaceableCollection<>.trimPrefix<A>(_:)();

                v55 = v57;
                v56 = v58;
                v54[0] = 46;
                v54[1] = 0xE100000000000000;
                sub_1000661E0();
                v29 = StringProtocol.components<A>(separatedBy:)();

                if (v29[2])
                {
                  v30 = v29[4];
                  v31 = v29[5];

                  v32 = Logger.logObject.getter();
                  v33 = static os_log_type_t.debug.getter();

                  v34 = os_log_type_enabled(v32, v33);
                  v53 = v30;
                  if (v34)
                  {
                    v48 = v33;
                    v49 = v32;
                    v35 = swift_slowAlloc();
                    v47 = swift_slowAlloc();
                    v54[0] = v47;
                    *v35 = v50;
                    *(v35 + 4) = sub_100065658(v30, v31, v54);
                    *(v35 + 12) = 2080;
                    if (*(v19 + 16) && (v36 = sub_100065A98(0x6D617473656D6974, 0xE900000000000070), (v37 & 1) != 0))
                    {
                      sub_100066130(*(v19 + 56) + 32 * v36, &v57);

                      if (swift_dynamicCast())
                      {
                        v38 = v55;
                        v39 = v56;
                        goto LABEL_28;
                      }
                    }

                    else
                    {
                    }

                    v39 = 0xE400000000000000;
                    v38 = 1819047278;
LABEL_28:
                    v40 = sub_100065658(v38, v39, v54);

                    *(v35 + 14) = v40;
                    v32 = v49;
                    _os_log_impl(&_mh_execute_header, v49, v48, "asset handle %s file purged @ %s", v35, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {
                  }

                  v18 = v5;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    a1 = sub_10006554C(0, *(a1 + 2) + 1, 1, a1);
                  }

                  v5 = v53;
                  v42 = *(a1 + 2);
                  v41 = *(a1 + 3);
                  if (v42 >= v41 >> 1)
                  {
                    a1 = sub_10006554C((v41 > 1), v42 + 1, 1, a1);
                  }

                  *(a1 + 2) = v42 + 1;
                  v43 = &a1[16 * v42];
                  *(v43 + 4) = v5;
                  *(v43 + 5) = v31;
                  goto LABEL_10;
                }
              }

              else
              {

                v18 = v5;
              }
            }

            else
            {
            }

LABEL_10:
            if (v16 == ++v17)
            {

              v5 = v51;
              if (*(a1 + 2))
              {
                goto LABEL_38;
              }
            }
          }
        }
      }
    }
  }

  a1 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
  }

LABEL_38:
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v5, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = a1;
  sub_1000648E0(0, 0, v5, &unk_1000E62C8, v45);
}

uint64_t sub_100063E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;

  return _swift_task_switch(sub_100063EF4, 0, 0);
}

uint64_t sub_100063EF4()
{
  if (qword_100129948)
  {
    v1 = v0[3];
    v2 = qword_100129948;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[2] = 0;
    v4 = [v2 deleteAssets:isa error:v0 + 2];

    v5 = v0[2];
    if (v4)
    {
      v6 = qword_100129948;
      v7 = v5;
      if (v6)
      {
        v8 = qword_100129950;

        v10 = v8(v9);

        if (v10)
        {
          v11 = *&v10[OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore];
          v0[4] = v11;

          v12 = *v11 + 296;
          v0[5] = *v12;
          v0[6] = v12 & 0xFFFFFFFFFFFFLL | 0xF886000000000000;

          return _swift_task_switch(sub_100064210, v11, 0);
        }
      }
    }

    else
    {
      v13 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100129920 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100066000(v14, qword_100129928);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "fail to handle purge events: %@", v17, 0xCu);
        sub_100066C80(v18, &qword_1001287F0, &qword_1000E6C40);
      }

      else
      {
      }
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100064210()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 96) = (*(v0 + 40))(*(v0 + 24)) & 1;
  *(v0 + 56) = 0;
  v3 = *(v0 + 32);

  return _swift_task_switch(sub_1000644B0, 0, 0);
}

uint64_t sub_1000642DC()
{
  v1 = v0[4];

  v2 = v0[7];
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129928);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "fail to handle purge events: %@", v6, 0xCu);
    sub_100066C80(v7, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000644B0()
{
  v1 = *(v0 + 96) != 1 || qword_100129948 == 0;
  if (v1 || (v2 = qword_100129950, v3 = , v4 = v2(v3), , !v4))
  {
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v5 = *&v4[OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore];
    *(v0 + 64) = v5;

    v6 = (*v5 + 184) & 0xFFFFFFFFFFFFLL | 0xB781000000000000;
    *(v0 + 72) = *(*v5 + 184);
    *(v0 + 80) = v6;

    return _swift_task_switch(sub_100064610, v5, 0);
  }
}

uint64_t sub_100064610()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  (*(v0 + 72))();
  *(v0 + 88) = v3;
  if (v3)
  {

    return _swift_task_switch(sub_10006470C, 0, 0);
  }

  else
  {
    v4 = *(v0 + 64);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10006470C()
{
  v1 = v0[8];

  v2 = v0[11];
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129928);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "fail to handle purge events: %@", v6, 0xCu);
    sub_100066C80(v7, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000648E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100066C10(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100066C80(v12, &qword_100128408, &qword_1000E7640);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100066C80(a3, &qword_100128408, &qword_1000E7640);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100066C80(a3, &qword_100128408, &qword_1000E7640);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id MAPurgeUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAPurgeUtility();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void static MAPurgeUtility.initPurgeMarker()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  CacheDeleteInitPurgeMarker();
}

uint64_t sub_100064D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v5);
}

uint64_t sub_100064DA8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100067294;

  return v7();
}

uint64_t sub_100064E90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000625FC;

  return v8();
}

uint64_t sub_100064F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100066C10(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100066C80(v12, &qword_100128408, &qword_1000E7640);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100066C80(a3, &qword_100128408, &qword_1000E7640);

    return v23;
  }

LABEL_8:
  sub_100066C80(a3, &qword_100128408, &qword_1000E7640);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100065264(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000672B0;

  return v7(a1);
}

uint64_t sub_10006535C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100065454;

  return v7(a1);
}

uint64_t sub_100065454()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10006554C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&unk_100129340, &unk_1000E8020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100065658(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100065724(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100066130(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10005D588(v11);
  return v7;
}

unint64_t sub_100065724(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100065830(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100065830(uint64_t a1, unint64_t a2)
{
  v4 = sub_10006587C(a1, a2);
  sub_1000659AC(&off_100117140);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10006587C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100061184(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100061184(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000659AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10005E24C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_100065A98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100065B10(a1, a2, v6);
}

unint64_t sub_100065B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100065BE8()
{
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129928);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "checkPurgedMark (checkTimeStamp: %{BOOL}d and reinitiate sync engine if necessary", v5, 8u);
  }

  if (qword_100129948 && (v6 = qword_100129950, v7 = , v8 = v6(v7), *(v0 + 16) = v8, , v8))
  {
    v9 = *((swift_isaMask & *v8) + 0xA8);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 24) = v11;
    *v11 = v0;
    v11[1] = sub_100065E60;
    v12 = *(v0 + 40);

    return v15(v12);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100065E60()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100065F9C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100065F9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t sub_100066000(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10006605C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006609C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_100063E64(v3, v4, v5, v2);
}

uint64_t sub_100066130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10006618C()
{
  result = qword_100128410;
  if (!qword_100128410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128410);
  }

  return result;
}

unint64_t sub_1000661E0()
{
  result = qword_100128418;
  if (!qword_100128418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128418);
  }

  return result;
}

void sub_100066258(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v4 = String.utf8CString.getter();
  v5 = fsctl((v4 + 32), 0x80084A02uLL, &v18, 0);

  if (!v5)
  {
    if (qword_100129920 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100066000(v14, qword_100129928);

    v7 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v7, v15))
    {
      goto LABEL_12;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100065658(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v7, v15, "Enabled APFSIOC_DIR_STATS_OP for %s", v16, 0xCu);
    sub_10005D588(v17);

    goto LABEL_11;
  }

  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129928);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_12;
  }

  v9 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v9 = 136315394;
  *(v9 + 4) = sub_100065658(a1, a2, &v19);
  *(v9 + 12) = 2080;
  v10 = errno.getter();
  if (strerror(v10))
  {
    v11 = String.init(cString:)();
    v13 = sub_100065658(v11, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "APFSIOC_DIR_STATS_OP failed for %s: %s", v9, 0x16u);
    swift_arrayDestroy();

LABEL_11:

LABEL_12:

    return;
  }

  __break(1u);
}

void sub_10006653C(uint64_t a1, unint64_t a2)
{
  String.utf8CString.getter();
  v4 = open(_:_:)();

  if ((v4 & 0x80000000) == 0)
  {
    v25 = 98309;
    v24 = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v24];

    if (v7 && v24 == 1)
    {
      v25 = 106501;
    }

    if (!ffsctl(v4, 0xC0084A44uLL, &v25, 0))
    {
      goto LABEL_12;
    }

    if (qword_100129920 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_100129928);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {
LABEL_11:

LABEL_12:
      close(v4);
      return;
    }

    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100065658(a1, a2, &v26);
    *(v11 + 12) = 2080;
    v12 = errno.getter();
    if (strerror(v12))
    {
      v13 = String.init(cString:)();
      v15 = sub_100065658(v13, v14, &v26);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "fail to mark %s purgeable, error: %s", v11, 0x16u);
      swift_arrayDestroy();

      goto LABEL_11;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100066000(v16, qword_100129928);

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100065658(a1, a2, &v26);
    *(v18 + 12) = 2080;
    v19 = errno.getter();
    if (strerror(v19))
    {
      v20 = String.init(cString:)();
      v22 = sub_100065658(v20, v21, &v26);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v17, "cannot open: %s, error: %s", v18, 0x16u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_22;
  }
}

__n128 sub_10006696C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100066988(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000669D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066A3C()
{
  v1 = v0;
  if (qword_100129920 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129928);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "expirationHandler fires", v5, 2u);
  }

  result = swift_beginAccess();
  *(v1 + 16) = 1;
  return result;
}

uint64_t sub_100066B3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066B7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return sub_1000633E4(v3, v4, v5, v2);
}

uint64_t sub_100066C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066C80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10005F5CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100066CE0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066D20()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000625FC;

  return sub_100062874(v2, v4);
}

uint64_t sub_100066DD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100067294;

  return sub_100064DA8(v2, v3, v5);
}

uint64_t sub_100066E98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100066ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100067294;

  return sub_100064E90(a1, v4, v5, v7);
}

uint64_t sub_100066FA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066FDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100067294;

  return sub_100065264(a1, v5);
}

uint64_t sub_100067094()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000670CC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_100067104(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100067294;

  return sub_10006535C(a1, v5);
}

uint64_t *sub_1000671BC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000672C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_100129988);
  sub_100066000(v0, qword_100129988);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000015, 0x80000001000E6610);
}

uint64_t sub_100067354()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_10006738C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_100067434()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_100067480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t sub_100067524(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_100092854(a1, a2);

  return v4;
}

uint64_t sub_100067580(uint64_t a1, uint64_t a2)
{
  v2 = sub_100092854(a1, a2);

  return v2;
}

uint64_t sub_1000675D4()
{
  v1 = v0[2];
  v2 = *(*v1 + 136);
  v3 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xCD33000000000000;
  v0[3] = v2;
  v0[4] = v3;
  if (v2())
  {

    v5 = v0[4];
    v6 = v0[2];
    if ((v0[3])(v4))
    {
      v7 = v0[1];

      return v7();
    }

    else
    {
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100066000(v21, qword_100129988);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to initialize Sync Engine", v24, 2u);
      }

      sub_1000B9568();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      sub_100092A98();
      swift_allocError();
      *v31 = v26;
      *(v31 + 8) = v28;
      *(v31 + 16) = v30;
      swift_willThrow();
      v32 = v0[1];

      return v32();
    }
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[5] = sub_100066000(v9, qword_100129988);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "sync engine is not set, starts to initialize", v12, 2u);
    }

    v13 = v0[2];

    v14 = (*(*v13 + 160))();
    v16 = v15;
    v0[6] = v15;
    v17 = *(*v13 + 240);
    v33 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[7] = v19;
    *v19 = v0;
    v19[1] = sub_1000679A8;
    v20 = v0[2];

    return v33(v14, v16);
  }
}

uint64_t sub_1000679A8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_100067CF0;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 16);

    v5 = sub_100067AD0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100067AD0()
{
  v1 = *(v0 + 40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sync engine is initialized", v4, 2u);
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  if ((*(v0 + 24))())
  {
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100066000(v9, qword_100129988);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to initialize Sync Engine", v12, 2u);
    }

    sub_1000B9568();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_100092A98();
    swift_allocError();
    *v19 = v14;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100067CF0()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100067D54()
{
  v1[19] = v0;
  v2 = sub_10005F5CC(&qword_100128450, &unk_1000E63C0);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100067E20, v0, 0);
}

uint64_t sub_100067E20()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = *(v1[19] + 120);
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100067FF4;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10005D4D0(v1 + 14);
  sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
  sub_10005F5CC(&qword_100128460, &qword_1000E78A0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000687E4;
  v1[13] = &unk_100117518;
  [v11 fetchUserRecordIDWithCompletionHandler:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100067FF4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_100068700;
  }

  else
  {
    v5 = sub_100068114;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100068114()
{
  v34 = v0;
  v1 = v0[18];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[24] = v5;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = type metadata accessor for Logger();
  sub_100066000(v7, qword_100129988);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100065658(v3, v5, &v33);
    *(v11 + 12) = 2080;
    v12 = (*(*v10 + 160))();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = sub_100065658(v12, v14, &v33);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetched account identifier: %s, existing account identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = (*(*v0[19] + 160))();
  if (!v17)
  {
    goto LABEL_14;
  }

  if (v16 == v3 && v17 == v5)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_14:
      v20 = *(*v0[19] + 224);
      v32 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      v0[25] = v22;
      *v22 = v0;
      v22[1] = sub_1000685B8;
      v23 = v0[19];

      return v32(v3, v5);
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    v29 = sub_100065658(v3, v5, &v33);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "account identifier: %s is not changed", v27, 0xCu);
    sub_10005D588(v28);
  }

  else
  {
  }

  v30 = v0[22];

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_1000685B8()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[19];

    return _swift_task_switch(sub_100068774, v4, 0);
  }

  else
  {
    v5 = v3[24];

    v6 = v3[22];

    v7 = v3[1];

    return v7(1);
  }
}

uint64_t sub_100068700()
{
  v1 = v0[23];
  swift_willThrow();
  v2 = v0[22];
  v3 = v0[23];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100068774()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[22];

  v4 = v0[1];

  return v4(0);
}

void sub_1000687E4(uint64_t a1, void *a2, void *a3)
{
  sub_10005E340((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10005F5CC(&qword_100128450, &unk_1000E63C0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10005F5CC(&qword_100128450, &unk_1000E63C0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000688B4()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getAccountIdentifier()", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(*v5 + 160);
  v7 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x8BEF000000000000;
  v0[3] = v6;
  v0[4] = v7;
  v8 = v6();
  if (v9)
  {
    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "getAccountIdentifier: start to fetch accountIdentifier", v14, 2u);
    }

    v15 = v0[2];

    v16 = *(*v15 + 200);
    v20 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[5] = v18;
    *v18 = v0;
    v18[1] = sub_100068B78;
    v19 = v0[2];

    return v20();
  }
}

uint64_t sub_100068B78()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return _swift_task_switch(sub_100068CBC, v7, 0);
  }
}

uint64_t sub_100068CBC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = (*(v0 + 24))();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100068D44()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "tryFetchAccountIdentifierBeforeSyncEngine()", v4, 2u);
  }

  v5 = v0[2];

  v6 = (*(*v5 + 136))();
  v7 = v0[2];
  if (v6)
  {

    v9 = *(*v7 + 160);
    v10 = v0[2];
    v11 = v9(v8);
LABEL_8:
    v15 = v0[1];

    return v15(v11);
  }

  v12 = *(*v7 + 160);
  v13 = (*v7 + 160) & 0xFFFFFFFFFFFFLL | 0x8BEF000000000000;
  v0[3] = v12;
  v0[4] = v13;
  v11 = v12();
  if (v14)
  {
    goto LABEL_8;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Start to fetch account identifier before Sync Engine initialization", v19, 2u);
  }

  v20 = v0[2];

  v21 = *(*v20 + 200);
  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[5] = v23;
  *v23 = v0;
  v23[1] = sub_100069064;
  v24 = v0[2];

  return v25();
}

uint64_t sub_100069064()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return _swift_task_switch(sub_100093B0C, v7, 0);
  }
}

uint64_t sub_1000691A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000691CC, v2, 0);
}

uint64_t sub_1000691CC()
{
  v37 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_100065658(v10, v11, &v36);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting new account identifier: %s", v7, 0xCu);
    sub_10005D588(v8);
  }

  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = *(*v13 + 168);

  v16(v15, v14);
  v17 = v13[16];
  *(v0 + 40) = v17;
  v18 = *(v17 + 32);
  *(v0 + 80) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 64);

  if (v21)
  {
    v23 = 0;
LABEL_18:
    *(v0 + 48) = v21;
    *(v0 + 56) = v23;
    v25 = (*(v22 + 56) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
    *(v0 + 64) = *v25;
    v26 = v25[1];
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 184);
    swift_unknownObjectRetain();
    v35 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 72) = v30;
    *v30 = v0;
    v30[1] = sub_10006955C;
    v32 = *(v0 + 16);
    v31 = *(v0 + 24);

    return v35(v32, v31, ObjectType, v26);
  }

  else
  {
    v24 = 0;
    while (((63 - v20) >> 6) - 1 != v24)
    {
      v23 = v24 + 1;
      v21 = *(v22 + 8 * v24++ + 72);
      if (v21)
      {
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10006955C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10006966C, v2, 0);
}

uint64_t sub_10006966C()
{
  v1 = *(v0 + 64);
  result = swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  v4 = (*(v0 + 48) - 1) & *(v0 + 48);
  if (v4)
  {
    result = *(v0 + 40);
LABEL_7:
    *(v0 + 48) = v4;
    *(v0 + 56) = v3;
    v6 = (*(result + 56) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    *(v0 + 64) = *v6;
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 184);
    swift_unknownObjectRetain();
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_10006955C;
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);

    return v15(v13, v12, ObjectType, v7);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 40);
      if (v5 >= (((1 << *(v0 + 80)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100069868()
{
  v1 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = sub_100092BD4(&qword_100128468, v6, type metadata accessor for MACloudSyncedDatabase);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1000648E0(0, 0, v4, &unk_1000E63F8, v8);
}

uint64_t sub_1000699AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*a4 + 240);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100069ACC;

  return (v9)(0, 0);
}

uint64_t sub_100069ACC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100069C00, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100069C00()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to initializeSyncEngine when daemon started, error: %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100069DA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v4 = type metadata accessor for CKSyncEngine.Configuration();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_10005F5CC(&qword_100128470, &qword_1000E6408) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100069F1C, v2, 0);
}

uint64_t sub_100069F1C()
{
  v43 = v0;
  v1 = *(v0 + 32);
  v2 = *(*v1 + 136);
  v3 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xCD33000000000000;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  if (v2())
  {

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100066000(v4, qword_100129988);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sync engine is already initialized", v7, 2u);
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 136) = sub_100066000(v16, qword_100129988);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136315138;
      static Task<>.currentPriority.getter();
      sub_100092BD4(&qword_100128488, 255, &type metadata accessor for TaskPriority);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = sub_100065658(v24, v26, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Start to initialize syncEngine, priority: %s", v22, 0xCu);
      sub_10005D588(v23);
    }

    if (*(v0 + 24))
    {
      *(v0 + 201) = 0;
      v28 = *(v0 + 88);
      v29 = *(v0 + 32);
      v30 = type metadata accessor for CKSyncEngine.State.Serialization();
      (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
      v39 = (*v29 + 256);
      v40 = (*v39 + **v39);
      v31 = (*v39)[1];
      v32 = swift_task_alloc();
      *(v0 + 160) = v32;
      *v32 = v0;
      v32[1] = sub_10006A778;
      v33 = *(v0 + 80);
      v34 = *(v0 + 32);

      return v40(v33);
    }

    else
    {
      v35 = *(**(v0 + 32) + 200);
      v41 = (v35 + *v35);
      v36 = v35[1];
      v37 = swift_task_alloc();
      *(v0 + 144) = v37;
      *v37 = v0;
      v37[1] = sub_10006A4B0;
      v38 = *(v0 + 32);

      return v41();
    }
  }
}

uint64_t sub_10006A4B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_10006B018;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v8 = sub_10006A5F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006A5F0()
{
  *(v0 + 201) = *(v0 + 200);
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v9 = (*v2 + 256);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_10006A778;
  v6 = *(v0 + 80);
  v7 = *(v0 + 32);

  return v10(v6);
}

uint64_t sub_10006A778()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10006B29C;
  }

  else
  {
    v6 = sub_10006A8A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006A8A4()
{
  v55 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_100066C80(v2, &qword_100128470, &qword_1000E6408);
  v3 = sub_100092C1C(v1, v2);
  v4 = *(v0 + 128);
  v5 = *(v0 + 32);
  v6 = (*(v0 + 120))(v3);
  v7 = *(v0 + 136);
  if (v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 88);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sync engine is already initialized by another thread, skip this initialization", v12, 2u);
    }

    goto LABEL_15;
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  v20 = [v18[15] privateCloudDatabase];
  sub_1000939A8(v13, v15, &qword_100128470, &qword_1000E6408);
  sub_100092BD4(&qword_100128478, v21, type metadata accessor for MACloudSyncedDatabase);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v17 + 16))(v16, v14, v19);
  v22 = type metadata accessor for CKSyncEngine();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = CKSyncEngine.init(_:)();
  *(v0 + 176) = v25;
  v26 = *(*v18 + 18);

  v26(v27);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v54 = v31;
    *v30 = 136315138;
    *(v0 + 16) = v25;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_100065658(v32, v33, &v54);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Initialized sync engine: %s", v30, 0xCu);
    sub_10005D588(v31);
  }

  if (*(v0 + 201) != 1 || (v36 = (*(**(v0 + 32) + 160))(v35), (*(v0 + 184) = v37) == 0))
  {

    v11 = *(v0 + 88);
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_15:
    sub_100066C80(v11, &qword_100128470, &qword_1000E6408);
    v47 = *(v0 + 112);
    v48 = *(v0 + 80);
    v49 = *(v0 + 88);
    v51 = *(v0 + 64);
    v50 = *(v0 + 72);
    v52 = *(v0 + 56);

    v53 = *(v0 + 8);

    return v53();
  }

  v38 = v36;
  v39 = v37;
  v40 = *(v0 + 136);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Account identifier fetched, try to process any pending requests for upload and delete", v43, 2u);
  }

  v44 = swift_task_alloc();
  *(v0 + 192) = v44;
  *v44 = v0;
  v44[1] = sub_10006ADD8;
  v45 = *(v0 + 32);

  return sub_10006B8A0(v38, v39);
}

uint64_t sub_10006ADD8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  v5 = *(v2 + 184);
  v6 = *(v2 + 32);
  if (v0)
  {

    v7 = sub_100093B28;
  }

  else
  {

    v7 = sub_10006AF34;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006AF34()
{
  v1 = v0[22];

  v2 = v0[11];
  (*(v0[6] + 8))(v0[8], v0[5]);
  sub_100066C80(v2, &qword_100128470, &qword_1000E6408);
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10006B018()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch account identifier: %@, intiate sync engine without account identifier", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  *(v0 + 201) = 0;
  v10 = *(v0 + 88);
  v11 = *(v0 + 32);
  v12 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v18 = (*v11 + 256);
  v19 = (*v18 + **v18);
  v13 = (*v18)[1];
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_10006A778;
  v15 = *(v0 + 80);
  v16 = *(v0 + 32);

  return v19(v15);
}

uint64_t sub_10006B29C()
{
  v62 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch stateSerialization, error: %@, intiate sync engine with nil state", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v11 = *(v0 + 128);
  v12 = *(v0 + 32);
  v13 = (*(v0 + 120))(v10);
  v14 = *(v0 + 136);
  if (v13)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 88);
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Sync engine is already initialized by another thread, skip this initialization", v19, 2u);
    }

    goto LABEL_18;
  }

  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  v27 = [v25[15] privateCloudDatabase];
  sub_1000939A8(v20, v22, &qword_100128470, &qword_1000E6408);
  sub_100092BD4(&qword_100128478, v28, type metadata accessor for MACloudSyncedDatabase);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v24 + 16))(v23, v21, v26);
  v29 = type metadata accessor for CKSyncEngine();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = CKSyncEngine.init(_:)();
  *(v0 + 176) = v32;
  v33 = *(*v25 + 18);

  v33(v34);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = v38;
    *v37 = 136315138;
    *(v0 + 16) = v32;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = sub_100065658(v39, v40, &v61);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Initialized sync engine: %s", v37, 0xCu);
    sub_10005D588(v38);
  }

  if (*(v0 + 201) != 1 || (v43 = (*(**(v0 + 32) + 160))(v42), (*(v0 + 184) = v44) == 0))
  {

    v18 = *(v0 + 88);
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_18:
    sub_100066C80(v18, &qword_100128470, &qword_1000E6408);
    v54 = *(v0 + 112);
    v55 = *(v0 + 80);
    v56 = *(v0 + 88);
    v58 = *(v0 + 64);
    v57 = *(v0 + 72);
    v59 = *(v0 + 56);

    v60 = *(v0 + 8);

    return v60();
  }

  v45 = v43;
  v46 = v44;
  v47 = *(v0 + 136);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Account identifier fetched, try to process any pending requests for upload and delete", v50, 2u);
  }

  v51 = swift_task_alloc();
  *(v0 + 192) = v51;
  *v51 = v0;
  v51[1] = sub_10006ADD8;
  v52 = *(v0 + 32);

  return sub_10006B8A0(v45, v46);
}

uint64_t sub_10006B8A0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B988, v2, 0);
}

uint64_t sub_10006B988()
{
  v1 = *(*(v0 + 48) + 128);
  *(v0 + 104) = v1;
  v2 = *(v1 + 32);
  *(v0 + 300) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  *(v0 + 288) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  *(v0 + 292) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 296) = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 112) = v5;
    *(v0 + 120) = v7;
    v9 = (v7 << 10) | (16 * __clz(__rbit64(v5)));
    v10 = (*(v6 + 48) + v9);
    *(v0 + 128) = *v10;
    *(v0 + 136) = v10[1];
    v11 = (*(v6 + 56) + v9);
    *(v0 + 144) = *v11;
    v12 = v11[1];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 160);

    swift_unknownObjectRetain();
    v25 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_10006BC18;
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);

    return v25(v18, v17, ObjectType, v12);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10006BC18(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v11 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v6 = v4[17];
    v7 = v4[6];

    v8 = sub_10006DC40;
    v9 = v7;
  }

  else
  {
    v9 = v4[6];
    v8 = sub_10006BD44;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10006BD44()
{
  v103 = v0;
  v2 = *(v0 + 160);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v18 = *(v0 + 160);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 136);
      v4 = type metadata accessor for Logger();
      sub_100066000(v4, qword_100129988);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v8 = *(v0 + 128);
        v7 = *(v0 + 136);
        v9 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v9 = 136315394;
        sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
        v10 = Array.description.getter();
        v12 = sub_100065658(v10, v11, &v102);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_100065658(v8, v7, &v102);
        _os_log_impl(&_mh_execute_header, v5, v6, "Uploading pending records %s for zone %s", v9, 0x16u);
        swift_arrayDestroy();
      }

      v13 = **(v0 + 48);
      v14 = *(v13 + 192);
      *(v0 + 184) = v14;
      *(v0 + 192) = (v13 + 192) & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v101 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 200) = v16;
      *v16 = v0;
      v17 = sub_10006C930;
      goto LABEL_44;
    }

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 136);
    v20 = type metadata accessor for Logger();
    sub_100066000(v20, qword_100129988);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 128);
      v23 = *(v0 + 136);
      v1 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v102 = v25;
      *v1 = 136315138;
      *(v1 + 4) = sub_100065658(v24, v23, &v102);
      _os_log_impl(&_mh_execute_header, v21, v22, "No pending records to upload for zone %s", v1, 0xCu);
      sub_10005D588(v25);
    }
  }

  v26 = *(v0 + 168);
  if (!v26)
  {
    v39 = *(v0 + 136);
    v40 = *(v0 + 144);

LABEL_53:
    swift_unknownObjectRelease();
    goto LABEL_54;
  }

  v1 = v26 >> 62;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_50:

    if (qword_100129980 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

  if (v26 < 0)
  {
    v71 = *(v0 + 168);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_50;
  }

LABEL_20:
  if (qword_100129980 != -1)
  {
LABEL_68:
    swift_once();
  }

  v27 = *(v0 + 136);
  v28 = type metadata accessor for Logger();
  sub_100066000(v28, qword_100129988);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 136);
  if (v31)
  {
    v33 = *(v0 + 128);
    v34 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v34 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v35 = Array.description.getter();
    v37 = sub_100065658(v35, v36, &v102);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_100065658(v33, v32, &v102);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Request to delete records %s for zone %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = *(v0 + 168) & 0xFFFFFFFFFFFFFF8;
  if (v1)
  {
    if (v26 >= 0)
    {
      v54 = *(v0 + 168) & 0xFFFFFFFFFFFFFF8;
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
      goto LABEL_27;
    }

LABEL_37:

    v43 = _swiftEmptyArrayStorage;
LABEL_43:
    *(v0 + 256) = v43;
    v67 = *(**(v0 + 48) + 192);
    v101 = (v67 + *v67);
    v68 = v67[1];
    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v17 = sub_10006D880;
LABEL_44:
    v16[1] = v17;
    v69 = *(v0 + 48);

    return v101();
  }

  v42 = *((*(v0 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_37;
  }

LABEL_27:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v43 = *(v0 + 16);
    if ((*(v0 + 168) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v42; ++i)
      {
        v45 = *(v0 + 296);
        v46 = *(v0 + 88);
        v47 = *(v0 + 56);
        v48 = *(v0 + 64);
        *v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v48 + 104))(v46, v45, v47);
        *(v0 + 16) = v43;
        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_10009265C(v49 > 1, v50 + 1, 1);
          v43 = *(v0 + 16);
        }

        v51 = *(v0 + 88);
        v52 = *(v0 + 56);
        v53 = *(v0 + 64);
        v43[2] = v50 + 1;
        (*(v53 + 32))(v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50, v51, v52);
      }
    }

    else
    {
      v55 = (v26 + 32);
      v56 = *(*(v0 + 64) + 104);
      do
      {
        v57 = *(v0 + 296);
        v58 = *(v0 + 56);
        v59 = *(v0 + 64) + 104;
        v60 = *v55;
        **(v0 + 80) = *v55;
        v56();
        *(v0 + 16) = v43;
        v62 = v43[2];
        v61 = v43[3];
        v63 = v60;
        if (v62 >= v61 >> 1)
        {
          sub_10009265C(v61 > 1, v62 + 1, 1);
          v43 = *(v0 + 16);
        }

        v64 = *(v0 + 80);
        v65 = *(v0 + 56);
        v66 = *(v0 + 64);
        v43[2] = v62 + 1;
        (*(v66 + 32))(v43 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v62, v64, v65);
        ++v55;
        --v42;
      }

      while (v42);
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_70:
  swift_once();
LABEL_51:
  v72 = *(v0 + 136);
  v73 = type metadata accessor for Logger();
  sub_100066000(v73, qword_100129988);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();

  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 136);
  v26 = *(v0 + 144);
  if (v76)
  {
    v78 = *(v0 + 128);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102 = v80;
    *v79 = 136315138;
    v1 = sub_100065658(v78, v77, &v102);

    *(v79 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v74, v75, "No pending record delete request for zone %s", v79, 0xCu);
    sub_10005D588(v80);

    goto LABEL_53;
  }

  swift_unknownObjectRelease();

LABEL_54:
  v81 = *(v0 + 120);
  v82 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v82)
  {
    v83 = *(v0 + 104);
LABEL_60:
    *(v0 + 112) = v82;
    *(v0 + 120) = v81;
    v85 = (v81 << 10) | (16 * __clz(__rbit64(v82)));
    v86 = (*(v83 + 48) + v85);
    *(v0 + 128) = *v86;
    *(v0 + 136) = v86[1];
    v87 = (*(v83 + 56) + v85);
    *(v0 + 144) = *v87;
    v88 = v87[1];
    ObjectType = swift_getObjectType();
    v90 = *(v88 + 160);

    swift_unknownObjectRetain();
    v100 = (v90 + *v90);
    v91 = v90[1];
    v92 = swift_task_alloc();
    *(v0 + 152) = v92;
    *v92 = v0;
    v92[1] = sub_10006BC18;
    v94 = *(v0 + 32);
    v93 = *(v0 + 40);

    return v100(v94, v93, ObjectType, v88);
  }

  else
  {
    while (1)
    {
      v84 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      v83 = *(v0 + 104);
      if (v84 >= (((1 << *(v0 + 300)) + 63) >> 6))
      {
        break;
      }

      v82 = *(v83 + 8 * v84 + 64);
      ++v81;
      if (v82)
      {
        v81 = v84;
        goto LABEL_60;
      }
    }

    v95 = *(v0 + 88);
    v96 = *(v0 + 96);
    v98 = *(v0 + 72);
    v97 = *(v0 + 80);

    v99 = *(v0 + 8);

    return v99();
  }
}