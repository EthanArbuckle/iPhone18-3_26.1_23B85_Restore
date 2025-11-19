@interface BaseWifiScannerBackend
- (BaseWifiScannerBackend)init;
- (WifiScannerBackendDelegateProtocol)delegate;
- (void)dealloc;
@end

@implementation BaseWifiScannerBackend

- (BaseWifiScannerBackend)init
{
  v9.receiver = self;
  v9.super_class = BaseWifiScannerBackend;
  v2 = [(BaseWifiScannerBackend *)&v9 init];
  if (byte_10045B0A0 == 1)
  {
    if (atomic_load(&unk_10045D4B8))
    {
      if (qword_10045B050 != -1)
      {
        sub_1003872A8();
      }

      v4 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
      {
        v5 = atomic_load(&unk_10045D4B8);
        *buf = 134217984;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "@BaseWifiScannerBackend, init, abort_if_wifi_backend_live, gHasScannerBackend, %lu, possible leak?", buf, 0xCu);
      }
    }
  }

  atomic_store(v2, &unk_10045D4B8);
  if (qword_10045B050 != -1)
  {
    sub_1003872A8();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
  {
    v7 = atomic_load(&unk_10045D4B8);
    *buf = 134217984;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "@BaseWifiScannerBackend, init, gHasScannerBackend, %lu", buf, 0xCu);
  }

  return v2;
}

- (void)dealloc
{
  [(BaseWifiScannerBackend *)self invalidate];
  if (qword_10045B050 != -1)
  {
    sub_1003872D0();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v4 = atomic_load(&unk_10045D4B8);
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "@BaseWifiScannerBackend, dealloc, releasing backend, gHasScannerBackend, %lu", buf, 0xCu);
  }

  atomic_store(0, &unk_10045D4B8);
  if (atomic_load(&unk_10045D4B8))
  {
    if (qword_10045B050 != -1)
    {
      sub_1003872A8();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v7 = atomic_load(&unk_10045D4B8);
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "@BaseWifiScannerBackend, dealloc, failed to release backend, gHasScannerBackend, %lu", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = BaseWifiScannerBackend;
  [(BaseWifiScannerBackend *)&v8 dealloc];
}

- (WifiScannerBackendDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end