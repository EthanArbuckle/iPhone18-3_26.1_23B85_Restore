uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(SCRSSyncDaemon);
  v2 = qword_100008820;
  qword_100008820 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_1000012CC(uint64_t a1)
{
  v3 = [PHAssetCreationRequest creationRequestForAssetFromScreenshotImage:*(a1 + 32)];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"c"];
  [v3 setCreationDate:v2];
}

void sub_100001348(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished with success: %d and error: %@", v7, 0x12u);
  }
}

void sub_100001714(uint64_t a1)
{
  v4 = +[PHAssetCreationRequest creationRequestForAsset];
  v2 = [*(a1 + 32) URL];
  [v4 addResourceWithType:2 fileURL:v2 options:0];

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"c"];
  [v4 setCreationDate:v3];
}

void sub_1000017B4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished with success: %d and error: %@", v7, 0x12u);
  }

  [*(a1 + 40) unlinkURL];
}

void sub_100001BB0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive screenshot data with error: %@", &v2, 0xCu);
}

void sub_100001C28(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unexpected message for CSLSSnapshotTypeWatchFace from %@. %@", &v3, 0x16u);
}