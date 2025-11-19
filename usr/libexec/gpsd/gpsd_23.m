void sub_10011B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 - 72);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&a10, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHelper::deleteGnssData(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 4) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    HIDWORD(v6) = 5;
    v4 = *(a2 + 144);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 144);
    }

    if (*(v4 + 20))
    {
      *&v7 = *(v4 + 8);
    }

    v5 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    GnssDeviceManager::pushRequest(v5, &v6, v14);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setPvtmReport(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 8) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    HIDWORD(v8) = 6;
    v6 = *(a2 + 152);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 152);
    }

    ProtobufUtil::convert::cpbSetPvtmReport(v6, v9);
    v7 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    GnssDeviceManager::pushRequest(v7, &v8, v11);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setNmeaHandler(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 0x10) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    HIDWORD(v6) = 7;
    v4 = *(a2 + 160);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 160);
    }

    if (*(v4 + 20))
    {
      *&v7 = *(v4 + 8);
    }

    v5 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    GnssDeviceManager::pushRequest(v5, &v6, v14);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setConfigSimulatorMode(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 0x20) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 24;
    v4 = *(a2 + 168);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 168);
    }

    v5 = *(v4 + 20);
    if (v5)
    {
      LOBYTE(v8) = *(v4 + 8);
    }

    if ((v5 & 2) != 0)
    {
      DWORD1(v8) = *(v4 + 12);
    }

    v6 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    GnssDeviceManager::pushRequest(v6, &v7, v15);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setConfigEnableGnssConstellations(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 0x40) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 25;
    v4 = *(a2 + 176);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 176);
    }

    v5 = v4[5];
    if (v5)
    {
      LODWORD(v8) = v4[2];
    }

    if ((v5 & 2) != 0)
    {
      DWORD1(v8) = v4[3];
    }

    v6 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    GnssDeviceManager::pushRequest(v6, &v7, v15);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setConfigDutyCycling(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 398) & 0x80) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    HIDWORD(v6) = 26;
    v4 = *(a2 + 184);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    if (*(v4 + 16))
    {
      LOBYTE(v7) = *(v4 + 8);
    }

    v5 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    GnssDeviceManager::pushRequest(v5, &v6, v14);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setThermalRiskState(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 399) & 0x10) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 31;
    v4 = *(a2 + 224);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 224);
    }

    v5 = *(v4 + 24);
    if (v5)
    {
      *&v8 = *(v4 + 8);
    }

    if ((v5 & 2) != 0)
    {
      DWORD2(v8) = *(v4 + 16);
    }

    v6 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    GnssDeviceManager::pushRequest(v6, &v7, v15);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setConfigRfBandEnable(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 399) & 0x20) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 38;
    v4 = *(a2 + 232);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 232);
    }

    v5 = *(v4 + 16);
    if (v5)
    {
      LOBYTE(v8) = *(v4 + 8);
    }

    if ((v5 & 2) != 0)
    {
      BYTE1(v8) = *(v4 + 9);
    }

    v6 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    GnssDeviceManager::pushRequest(v6, &v7, v15);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::injectRavenOrbitFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 399) & 0x40) != 0)
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_10011C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 - 72);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&a10, v12);
  }

  _Unwind_Resume(a1);
}

GpsdAbmUtil *GpsdAbmUtil::GpsdAbmUtil(GpsdAbmUtil *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a1 + 24, a2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gpsdAbm,ctor begin", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "com.apple.gpsd.AbmQueue");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  if (!v4)
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v31;
      if (v32 < 0)
      {
        v6 = v31[0];
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpsdAbm,nullattr,%{public}s", buf, 0xCu);
    }
  }

  if (v32 >= 0)
  {
    v7 = v31;
  }

  else
  {
    v7 = v31[0];
  }

  v8 = dispatch_queue_create(v7, v4);
  *(a1 + 2) = v8;
  if (!v8)
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v15 = v31;
      if (v32 < 0)
      {
        v15 = v31[0];
      }

      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#gpsdAbm,queue,null,%{public}s", buf, 0xCu);
      v14 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdAbmUtil.cpp";
      v34 = 1026;
      v35 = 29;
      v36 = 2082;
      v37 = "GpsdAbmUtil";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v30, "assert");
    std::string::basic_string[abi:ne200100]<0>(v28, "GpsdAbmUtil");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gpsdAbm,queue,null,%{public}s");
    gpsd::util::triggerDiagnosticReport(v30, v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v16 = "false && #gpsdAbm,queue,null,%{public}s";
    v17 = 29;
    if ((v30[23] & 0x80000000) != 0)
    {
      v18 = v30;
LABEL_45:
      operator delete(*v18);
    }

LABEL_46:
    __assert_rtn("GpsdAbmUtil", "GpsdAbmUtil.cpp", v17, v16);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "com.apple.gpsd.Abm");
  v9 = *(a1 + 2);
  abm::client::CreateManager();
  v10 = v25;
  v25 = 0uLL;
  v11 = *(a1 + 1);
  *a1 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }
  }

  if (SBYTE3(v37) < 0)
  {
    operator delete(*buf);
  }

  if (!*a1)
  {
    v19 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#gpsdAbm,abmManager,null,com.apple.gpsd.Abm", buf, 2u);
      v19 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdAbmUtil.cpp";
      v34 = 1026;
      v35 = 33;
      v36 = 2082;
      v37 = "GpsdAbmUtil";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "assert");
    std::string::basic_string[abi:ne200100]<0>(v22, "GpsdAbmUtil");
    std::string::basic_string[abi:ne200100]<0>(v20, "#gpsdAbm,abmManager,null,com.apple.gpsd.Abm");
    gpsd::util::triggerDiagnosticReport(v24, v22, v20);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v16 = "false && #gpsdAbm,abmManager,null,com.apple.gpsd.Abm";
    v17 = 33;
    if ((v24[23] & 0x80000000) != 0)
    {
      v18 = v24;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  GpsdAbmUtil::registerForAbmNotifications(a1);
  v12 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#gpsdAbm, Abm Manager Created, Notifications registered", buf, 2u);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  return a1;
}

void sub_10011C6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 73) < 0)
  {
    operator delete(*(v48 - 96));
  }

  if (*(v48 - 97) < 0)
  {
    operator delete(*(v48 - 120));
  }

  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v47 + 24);
  v50 = *(v47 + 8);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  _Unwind_Resume(a1);
}

void GpsdAbmUtil::registerForAbmNotifications(GpsdAbmUtil *this)
{
  v2 = *(this + 1);
  v11 = *this;
  v12 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v9, abm::kEventTraceDumpStateBegin);
  abm::client::RegisterEventHandler();
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v3 = *(this + 1);
  v7 = *this;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v9, abm::kEventBasebandBootStateChange);
  abm::client::RegisterEventHandler();
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v4 = *(this + 1);
  v5 = *this;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_10011C8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11GpsdAbmUtil27registerForAbmNotificationsEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gpsdAbm, EventTraceDumpStateBegin received", buf, 2u);
  }

  if (!*(v3 + 48))
  {
    v20 = GpsdLogObjectWarning;
    if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v21 = "#gpsdAbm, dumpLogsCallback not registered";
    goto LABEL_28;
  }

  string = xpc_dictionary_get_string(a2, abm::kKeyTraceAction);
  if (string)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = string;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#gpsdAbm,EventTraceDumpStateBegin, traceAction,%{public}s", buf, 0xCu);
    }

    if (!strcasecmp(string, abm::kCollectTelephonyLogsWithCoredump))
    {
      v7 = xpc_dictionary_get_string(a2, abm::kKeyTimestampString);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = "no-timestamp";
      }

      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#gpsdAbm,EventTraceDumpStateBegin, timestamp,%{public}s", buf, 0xCu);
      }

      v10 = xpc_dictionary_get_string(a2, abm::kKeyTraceDumpStateMobileBasebandServicesPath);
      if (v10)
      {
        v11 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = v10;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#gpsdAbm,EventTraceDumpStateBegin, DumpStateMobileBasebandServicesPath,%{public}s", buf, 0xCu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v23, v10);
        v12 = std::string::append(&v23, "log-bb-");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = std::string::append(&v24, v8);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v25.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        v16 = std::string::append(&v25, "-gpsd");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v27 = v16->__r_.__value_.__r.__words[2];
        *buf = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v18 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          v22 = buf;
          if (v27 < 0)
          {
            v22 = *buf;
          }

          LODWORD(v25.__r_.__value_.__l.__data_) = 136446210;
          *(v25.__r_.__value_.__r.__words + 4) = v22;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#gpsdAbm, gpsdLogPath for coredump,%{public}s", &v25, 0xCu);
        }

        v19 = *(v3 + 48);
        if (!v19)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v19 + 48))(v19, buf);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(*buf);
        }

        return;
      }

      v20 = GpsdLogObjectWarning;
      if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v21 = "#gpsdAbm, DumpStateMobileBasebandServicesPath is null";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    }
  }
}

void sub_10011CD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11GpsdAbmUtil27registerForAbmNotificationsEv_block_invoke_13(id a1, void *a2, dispatch_group_s *a3)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#gpsdAbm, EventBasebandBootStateChange received", &v18, 2u);
  }

  string = xpc_dictionary_get_string(a2, abm::kKeyBasebandBootState);
  if (!string)
  {
    v6 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gpsdAbm,EventBasebandBootStateChange, BasebandBootState not provided", &v18, 2u);
    }

    string = "not-provided";
  }

  if (!strcmp(string, abm::kBasebandBootStateWillReset) || !strcmp(string, abm::kBasebandBootStateDidReset))
  {
    v11 = xpc_dictionary_get_string(a2, abm::kKeyBasebandResetType);
    v12 = xpc_dictionary_get_string(a2, abm::kKeyBasebandResetSubType);
    v13 = xpc_dictionary_get_string(a2, abm::kKeyBasebandResetReason);
    v14 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = "not-provided";
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = "not-provided";
    }

    v18 = 136446979;
    v19 = string;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = "not-provided";
    }

    v20 = 2082;
    if (v11)
    {
      v15 = v11;
    }

    v21 = v15;
    v22 = 2082;
    v23 = v17;
    v24 = 2081;
    v25 = v16;
    v8 = "#gpsdAbm,BBBootStateChange, BootState,%{public}s, ResetType,%{public}s, ResetSubType,%{public}s, ResetReason,%{private}s";
    v9 = v14;
    v10 = 42;
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = 136446210;
    v19 = string;
    v8 = "#gpsdAbm,BBBootStateChange, BootState,%{public}s";
    v9 = v7;
    v10 = 12;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v18, v10);
}

uint64_t LegacyEmergencyHandler::LegacyEmergencyHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  v8 = (a1 + 40);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 176), "");
  *a1 = a2;
  std::function<void ()(proto::gpsd::Indication &&)>::operator=((a1 + 8), a3);
  std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::__value_func[abi:ne200100](buf, a4);
  if (buf != v8)
  {
    v9 = *&v32[4];
    v10 = *(a1 + 64);
    if (*&v32[4] == buf)
    {
      if (v10 == v8)
      {
        (*(**&v32[4] + 24))(*&v32[4], v33);
        (*(**&v32[4] + 32))(*&v32[4]);
        *&v32[4] = 0;
        (*(**(a1 + 64) + 24))(*(a1 + 64), buf);
        (*(**(a1 + 64) + 32))(*(a1 + 64));
        *(a1 + 64) = 0;
        *&v32[4] = buf;
        (*(v33[0] + 24))(v33, v8);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(**&v32[4] + 24))(*&v32[4], v8);
        (*(**&v32[4] + 32))(*&v32[4]);
        *&v32[4] = *(a1 + 64);
      }

      *(a1 + 64) = v8;
    }

    else if (v10 == v8)
    {
      (*(*v10 + 24))(*(a1 + 64), buf);
      (*(**(a1 + 64) + 32))(*(a1 + 64));
      *(a1 + 64) = *&v32[4];
      *&v32[4] = buf;
    }

    else
    {
      *&v32[4] = *(a1 + 64);
      *(a1 + 64) = v9;
    }
  }

  std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::~__value_func[abi:ne200100](buf);
  if (!*(a1 + 32))
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "cannot have null send indication", buf, 2u);
      v12 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/LegacyEmergencyHandler.mm";
      v29 = 1026;
      v30 = 24;
      v31 = 2082;
      *v32 = "LegacyEmergencyHandler";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "assert");
    std::string::basic_string[abi:ne200100]<0>(v24, "LegacyEmergencyHandler");
    std::string::basic_string[abi:ne200100]<0>(__p, "cannot have null send indication");
    gpsd::util::triggerDiagnosticReport(v26, v24, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v13 = "false && cannot have null send indication";
    v14 = 24;
    if (v26[23] < 0)
    {
      v15 = v26;
LABEL_33:
      operator delete(*v15);
    }

LABEL_34:
    __assert_rtn("LegacyEmergencyHandler", "LegacyEmergencyHandler.mm", v14, v13);
  }

  if (!*(a1 + 64))
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "cannot have null send response", buf, 2u);
      v16 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/LegacyEmergencyHandler.mm";
      v29 = 1026;
      v30 = 25;
      v31 = 2082;
      *v32 = "LegacyEmergencyHandler";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "assert");
    std::string::basic_string[abi:ne200100]<0>(v19, "LegacyEmergencyHandler");
    std::string::basic_string[abi:ne200100]<0>(v17, "cannot have null send response");
    gpsd::util::triggerDiagnosticReport(v21, v19, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    v13 = "false && cannot have null send response";
    v14 = 25;
    if ((v21[23] & 0x80000000) != 0)
    {
      v15 = v21;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  return a1;
}

void sub_10011D59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LegacyEmergencyHandler::createSuplConnectionManager(uint64_t a1)
{
  v4[0] = off_10017C228;
  v4[1] = a1;
  v4[3] = v4;
  v3[0] = off_10017C2B8;
  v3[1] = a1;
  v3[3] = v3;
  v2[0] = off_10017C348;
  v2[1] = a1;
  v2[3] = v2;
  v1[0] = off_10017C3D8;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_10011D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a26);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::~__value_func[abi:ne200100](v26 - 136);
  std::__function::__value_func<void ()(std::vector<unsigned char> &)>::~__value_func[abi:ne200100](v26 - 104);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v26 - 72);
  operator delete();
}

void sub_10011E3EC(_Unwind_Exception *a1, uint64_t a2, atomic_ullong *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    if (!atomic_fetch_add(a3 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a3 + 16))(a3);
    }
  }

  std::promise<gnss::Result>::~promise(va);
  _Unwind_Resume(a1);
}

uint64_t std::future<gnss::Result>::get(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<gnss::Result>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_10011E5AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_10011EBD0(_Unwind_Exception *a1, uint64_t a2, atomic_ullong *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    if (!atomic_fetch_add(a3 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a3 + 16))(a3);
    }
  }

  std::promise<gnss::Result>::~promise(va);
  _Unwind_Resume(a1);
}

uint64_t LegacyEmergencyHandler::handleEmergencyRequest(void *a1, uint64_t a2, gnss::Emergency::Supl::LocationId *a3, uint64_t *a4)
{
  result = 0;
  v9 = *(a2 + 20);
  if (v9 > 68)
  {
    if (v9 > 72)
    {
      switch(v9)
      {
        case 'I':
          if ((*(a2 + 401) & 4) == 0)
          {
            v17 = GpsdLogObjectGeneral;
            if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v46) = 0;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#supl,SET_SUPL_LOCATIONID received without Payload", &v46, 2u);
            }

            LODWORD(v46) = 4;
            v12 = *(a3 + 3);
            if (!v12)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            goto LABEL_54;
          }

          LODWORD(v46) = 0;
          memset(v47, 0, sizeof(v47));
          *v48 = 0u;
          memset(__p, 0, sizeof(__p));
          v34 = *(a2 + 344);
          if (!v34)
          {
            v34 = *(proto::gpsd::Request::default_instance_ + 344);
          }

          ProtobufUtil::fromProtobuf(v34, &v46, a3);
          v35 = *a4;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v58, a3);
          (*(*v35 + 440))(v35, &v46, v58);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v58);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v47[3])
          {
            v48[0] = v47[3];
            operator delete(v47[3]);
          }

          break;
        case 'J':
          v19 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,ABORT_SUPL_SESSION", &v46, 2u);
          }

          v20 = *a4;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v56, a3);
          (*(*v20 + 448))(v20, v56);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
          if (*a1)
          {
            (*(**a1 + 40))(*a1);
          }

          return 1;
        case 'L':
          if ((*(a2 + 402) & 1) == 0)
          {
            v13 = GpsdLogObjectGeneral;
            if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v46) = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#supl,SET_SUPL_WLAN_MEAS received without Payload", &v46, 2u);
            }

            LODWORD(v46) = 4;
            v12 = *(a3 + 3);
            if (!v12)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            goto LABEL_54;
          }

          LODWORD(v46) = 0;
          memset(v47, 0, 24);
          v25 = *(a2 + 384);
          if (!v25)
          {
            v25 = *(proto::gpsd::Request::default_instance_ + 384);
          }

          ProtobufUtil::fromProtobuf(v25, &v46);
          v26 = *a4;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v57, a3);
          (*(*v26 + 472))(v26, &v46, v57);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v57);
          break;
        default:
          return result;
      }

      v36 = v47[0];
      if (!v47[0])
      {
        return 1;
      }

      v47[1] = v47[0];
LABEL_89:
      operator delete(v36);
      return 1;
    }

    if (v9 != 69)
    {
      if (v9 == 70)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v60, a3);
        LegacyEmergencyHandler::decodeSuplInit(a1, a2, v60, a4);
        v10 = v60;
      }

      else
      {
        if (v9 != 71)
        {
          return result;
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v59, a3);
        LegacyEmergencyHandler::setSuplInit(a1, a2, v59, a4);
        v10 = v59;
      }

      goto LABEL_95;
    }

    if ((*(a2 + 400) & 0x80) == 0)
    {
      v15 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v46) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,CellFTAssistance payload is missing", &v46, 2u);
      }

      LODWORD(v46) = 4;
      v12 = *(a3 + 3);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      goto LABEL_54;
    }

    v46 = 0;
    LOWORD(v47[0]) = -1;
    HIDWORD(v47[0]) = -1;
    LOWORD(v47[1]) = -1;
    *(&v47[1] + 4) = -1;
    WORD2(v47[2]) = -1;
    LODWORD(v47[3]) = -1;
    v27 = *(a2 + 312);
    if (!v27)
    {
      v27 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    ProtobufUtil::fromProtobuf(v27, &v46);
    v28 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v69 = HIDWORD(v46);
      v70 = 1024;
      *v71 = HIDWORD(v47[1]);
      *&v71[4] = 1024;
      *&v71[6] = v47[2];
      *v72 = 1024;
      *&v72[2] = WORD2(v47[2]);
      *v73 = 1024;
      *&v73[2] = v47[3];
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,CellFTAssistance,networkType,%d,cdmaTime.cdmaTow.intPart,%d,cdmaTime.cdmaTow.fracPart,%d,cdmaTime.weekNum,%d,cdmaTime.absoluteRmsAcc,%d", buf, 0x20u);
    }

    v29 = *a4;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v61, a3);
    (*(*v29 + 400))(v29, &v46, v61);
    v10 = v61;
LABEL_95:
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    return 1;
  }

  if (v9 > 64)
  {
    switch(v9)
    {
      case 'A':
        v16 = GpsdLogObjectGeneral;
        if ((*(a2 + 400) & 8) == 0)
        {
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v46) = 0;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,GpsReferenceTime payload is missing", &v46, 2u);
          }

          LODWORD(v46) = 4;
          v12 = *(a3 + 3);
          if (!v12)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          goto LABEL_54;
        }

        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v46) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsReferenceTime", &v46, 2u);
        }

        v30 = 0;
        v46 = -1;
        do
        {
          v31 = &v47[v30 - 1];
          *(v31 + 4) = -1;
          *(v31 + 10) = -1;
          *(v31 + 12) = -1;
          *(v31 + 20) = -1;
          v30 += 2;
        }

        while (v30 != 32);
        v50 = -1;
        v51 = -1;
        v52 = -1;
        v32 = *(a2 + 272);
        if (!v32)
        {
          v32 = *(proto::gpsd::Request::default_instance_ + 272);
        }

        ProtobufUtil::fromProtobuf(v32, &v46);
        v33 = *a4;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a3);
        (*(*v33 + 360))(v33, &v46, v64);
        v10 = v64;
        break;
      case 'B':
        v18 = GpsdLogObjectGeneral;
        if ((*(a2 + 400) & 0x10) == 0)
        {
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v46) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,ReferenceLocation payload is missing", &v46, 2u);
          }

          LODWORD(v46) = 4;
          v12 = *(a3 + 3);
          if (!v12)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          goto LABEL_54;
        }

        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v46) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsReferenceLocation", &v46, 2u);
        }

        v46 = -1;
        v47[0] = 0xFFFFFFFF7FFFFFFFLL;
        *(&v47[1] + 4) = -1;
        HIDWORD(v47[2]) = -1;
        LOWORD(v47[1]) = -1;
        v37 = *(a2 + 280);
        if (!v37)
        {
          v37 = *(proto::gpsd::Request::default_instance_ + 280);
        }

        ProtobufUtil::fromProtobuf(v37, &v46);
        v38 = *a4;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v63, a3);
        (*(*v38 + 368))(v38, &v46, v63);
        v10 = v63;
        break;
      case 'D':
        v11 = GpsdLogObjectGeneral;
        if ((*(a2 + 400) & 0x40) == 0)
        {
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v46) = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,GpsAcqAssistance payload is missing", &v46, 2u);
          }

          LODWORD(v46) = 4;
          v12 = *(a3 + 3);
          if (!v12)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          goto LABEL_54;
        }

        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v46) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsAcqAssistance", &v46, 2u);
        }

        v21 = 0;
        LODWORD(v46) = -1;
        BYTE4(v46) = -1;
        LODWORD(v47[0]) = 0;
        WORD2(v47[0]) = -1;
        LODWORD(v47[1]) = -1;
        WORD2(v47[1]) = -1;
        v47[2] = -1;
        LOWORD(v47[3]) = -1;
        HIDWORD(v47[3]) = -1;
        do
        {
          v22 = &v47[-1] + v21;
          *(v22 + 5) = 0xFFFFFFFF7FFFFFFFLL;
          v22[48] = -1;
          *(v22 + 50) = -1;
          *(v22 + 27) = -1;
          v21 += 20;
        }

        while (v21 != 320);
        v53 = -1;
        v54 = -1;
        v55 = -1;
        v23 = *(a2 + 296);
        if (!v23)
        {
          v23 = *(proto::gpsd::Request::default_instance_ + 296);
        }

        ProtobufUtil::fromProtobuf(v23, &v46);
        v24 = *a4;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v62, a3);
        (*(*v24 + 384))(v24, &v46, v62);
        v10 = v62;
        break;
      default:
        return result;
    }

    goto LABEL_95;
  }

  if (v9 != 53)
  {
    if (v9 == 60)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v66, a3);
      LegacyEmergencyHandler::startEmergencyPosition(a1, a2, v66, a4);
      v10 = v66;
    }

    else
    {
      if (v9 != 61)
      {
        return result;
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v65, a3);
      LegacyEmergencyHandler::stopEmergencyPosition(a1, a2, v65, a4);
      v10 = v65;
    }

    goto LABEL_95;
  }

  if ((*(a2 + 396) & 0x80000000) != 0)
  {
    LOBYTE(v46) = 1;
    memset(v47, 0, 24);
    LOBYTE(v47[3]) = 1;
    LOWORD(v48[0]) = -1;
    __p[0] = 0;
    __p[1] = 0;
    v48[1] = 0;
    *(&__p[1] + 7) = 0;
    BYTE3(__p[2]) = 1;
    v39 = *(a2 + 248);
    if (!v39)
    {
      v39 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    ProtobufUtil::fromProtobuf(v39, &v46);
    v40 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v47;
      v42 = &v48[1];
      if (SHIBYTE(v47[2]) < 0)
      {
        v41 = v47[0];
      }

      if (SHIBYTE(__p[1]) < 0)
      {
        v42 = v48[1];
      }

      *buf = 67110403;
      v69 = v46;
      v70 = 2081;
      *v71 = v41;
      *&v71[8] = 1024;
      *v72 = LOBYTE(__p[2]);
      *&v72[4] = 1024;
      *v73 = LOWORD(v48[0]);
      *&v73[4] = 2081;
      v74 = v42;
      v75 = 1024;
      v76 = LOBYTE(v47[3]);
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,emergConfig,heloEnabled,%d,imsi,%{private}s,supl_enable_msa,%d,suplPort,%d,suplServer,%{private}s,cplane_early_return,%d", buf, 0x2Eu);
    }

    v43 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v43 - 301) >= 2 && (v43 - 201) > 1)
    {
      v45 = *a4;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v67, a3);
      (*(*v45 + 288))(v45, &v46, v67);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v67);
    }

    else
    {
      *buf = 7;
      v44 = *(a3 + 3);
      if (!v44)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v44 + 48))(v44, buf);
    }

    if (SHIBYTE(__p[1]) < 0)
    {
      operator delete(v48[1]);
    }

    if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v36 = v47[0];
    goto LABEL_89;
  }

  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v46) = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#gdm,#nilr,EmergConfig payload is missing", &v46, 2u);
  }

  LODWORD(v46) = 4;
  v12 = *(a3 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_54:
  (*(*v12 + 48))(v12, &v46);
  return 1;
}

void sub_10011FA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9 - 144);
  gnss::Emergency::Config::~Config(&a9);
  _Unwind_Resume(a1);
}

uint64_t LegacyEmergencyHandler::startEmergencyPosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 73) = 1;
  if ((*(a2 + 400) & 2) != 0)
  {
    *v30 = -1;
    v31 = -1;
    v32 = -1;
    v33 = 0;
    v34 = -1;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    v38 = -16777216;
    v39 = -1;
    v40 = -1;
    v11 = *(a2 + 264);
    if (!v11)
    {
      v11 = *(proto::gpsd::Request::default_instance_ + 264);
    }

    v12 = ProtobufUtil::fromProtobuf(v11, v30);
    v13 = *(a2 + 8);
    v14 = gpsd::util::getMachContinuousTimeNs(v12) * 0.000000001 - v13 * 0.000000001;
    v15 = v32;
    if (v14 > 0.0 && v14 <= 10.0)
    {
      v17 = llround(v14);
      v15 = v32 - v17;
      if (v32 <= v17)
      {
        v18 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v15;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#cp,startEmergencyPosition timeout adjustment,out of range,%{public}d", buf, 8u);
        }

        v15 = 1;
      }
    }

    v19 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      *&buf[4] = v14;
      *&buf[12] = 1026;
      *v44 = v32;
      *&v44[4] = 1026;
      *v45 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#cp,startEmergencyPosition timeout adjustment,age,%{public}.4f,prev,%{public}hu,resolved,%{public}d", buf, 0x18u);
    }

    v32 = v15;
    v20 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v20 - 301) >= 2 && (v20 - 201) > 1)
    {
      v26 = *a4;
      v41[0] = off_10017CEC0;
      v41[1] = a1;
      v41[3] = v41;
      (*(*v26 + 336))(v26, v30, v41);
      v25 = v41;
    }

    else
    {
      v27 = 257;
      v28 = 0xBFF0000000000000;
      v29 = 0;
      if (*(a2 + 401))
      {
        v21 = *(a2 + 320);
        if (!v21)
        {
          v21 = *(proto::gpsd::Request::default_instance_ + 320);
        }

        v22 = proto::gnss::Emergency::CplaneContext::CplaneContext(buf, v21);
        ProtobufUtil::fromProtobuf(v22, &v27);
        *buf = off_1001769B8;
        proto::gnss::Emergency::CplaneContext::SharedDtor(buf);
        wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(buf);
      }

      v23 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67241472;
        *&buf[4] = v27;
        *&buf[8] = 1026;
        *&buf[10] = HIBYTE(v27);
        *v44 = 1026;
        *&v44[2] = v29;
        *v45 = 1026;
        *&v45[2] = HIBYTE(v29);
        v46 = 1026;
        v47 = BYTE1(v29);
        v48 = 1026;
        v49 = BYTE2(v29);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,cplaneContext,heloEnabled,%{public}d,cplane_early_return,%{public}d,include1xMsb,%{public}d,useCdmaTimeForMeas,%{public}d,optimizeGnssMeasWith1xMsb,%{public}d,optimizeAfltMeasWith1xMsb,%{public}d", buf, 0x26u);
      }

      v24 = *a4;
      v42[0] = off_10017CE40;
      v42[1] = a1;
      v42[3] = v42;
      (*(*v24 + 328))(v24, v30, &v27, v42);
      v25 = v42;
    }

    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,PositionRequest payload is missing", v30, 2u);
    }

    *v30 = 4;
    v6 = *(a3 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v6 + 48))(v6, v30);
  }
}

void sub_10011FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t LegacyEmergencyHandler::stopEmergencyPosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 73) = 0;
  if ((*(a2 + 400) & 4) != 0)
  {
    v8 = *a4;
    v9 = *(a2 + 304);
    v11[0] = off_10017CF40;
    v11[1] = a1;
    v11[3] = v11;
    (*(*v8 + 344))(v8, v9, v11);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,session_id is missing", &v10, 2u);
    }

    v10 = 4;
    v6 = *(a3 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v6 + 48))(v6, &v10);
  }
}

void sub_10012010C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void LegacyEmergencyHandler::decodeSuplInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 400);
  if ((v5 & 0x4000) == 0 || (v5 & 0x800) == 0 || (v9 = *(a2 + 336), v9 <= 0))
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "#gdm,#nilr,#supl,DECODE_SUPL_INIT malformed payload", buf, 2u);
    }

    *buf = 4;
    v7 = *(a3 + 24);
    if (v7)
    {
      (*(*v7 + 48))(v7, buf);
      return;
    }

LABEL_34:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  *buf = 1;
  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_34;
  }

  (*(*v11 + 48))(v11, buf);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v49 = 0;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v43[0] = 0;
  *(v43 + 3) = 0;
  v47 = 0u;
  memset(v48, 0, 38);
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<unsigned char>::reserve(&__p, v9);
  for (i = 0; i != v9; ++i)
  {
    if (i >= *(a2 + 336))
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
    }

    v39 = *(*(a2 + 328) + 4 * i);
    std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v39);
  }

  *buf = off_100179D00;
  v23 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v30 = 0;
  v31 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  LODWORD(v23) = 16;
  v14 = *(a2 + 372);
  v38 = 0x800000100000000;
  v37 = v14;
  v15 = (*(**a4 + 408))();
  v16 = GpsdLogObjectGeneral;
  if (v15)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,Supl Init Decode Success", v21, 2u);
    }

    HIDWORD(v38) |= 0x1000000u;
    if (!v35)
    {
      operator new();
    }

    ProtobufUtil::toProtobuf(v43, v35, v17);
    v18 = *(a2 + 308);
    HIDWORD(v38) |= 0x2000000u;
    DWORD2(v35) = v18;
    v19 = 1;
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    v19 = 2;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#supl,Supl Init Decode failure", v21, 2u);
  }

  else
  {
    v19 = 2;
  }

  HIDWORD(v38) |= 0x4000000u;
  HIDWORD(v35) = v19;
  v20 = *(a1 + 32);
  if (!v20)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v20 + 48))(v20, buf);
  *buf = off_100179D00;
  proto::gpsd::Indication::SharedDtor(buf);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(buf);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (*&v51[3])
  {
    *&v51[5] = *&v51[3];
    operator delete(*&v51[3]);
  }

  if (SHIBYTE(v51[2]) < 0)
  {
    operator delete(*(&v50 + 4));
  }

  if (*&v48[3])
  {
    *&v48[5] = *&v48[3];
    operator delete(*&v48[3]);
  }

  if (SHIBYTE(v48[2]) < 0)
  {
    operator delete(*(&v47 + 4));
  }
}

void sub_1001205A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  proto::gpsd::Indication::~Indication(&a11);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  gnss::Emergency::Supl::Init::~Init((v41 - 224));
  _Unwind_Resume(a1);
}

void LegacyEmergencyHandler::setSuplInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = -1;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  v36 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 0;
  v41 = 1;
  v42 = 257;
  v43 = 0xBFF0000000000000;
  if ((*(a2 + 401) & 0x80) != 0)
  {
    v8 = *(a2 + 376);
    if (!v8)
    {
      v8 = *(proto::gpsd::Request::default_instance_ + 376);
    }

    proto::gnss::Emergency::SuplContext::SuplContext(&buf, v8);
    ProtobufUtil::fromProtobuf(&buf, &v33);
    if ((v51[8] & 0x20) != 0)
    {
      std::string::operator=((a1 + 176), *&v51[5]);
    }

    buf = off_100174AC8;
    proto::gnss::Emergency::SuplContext::SharedDtor(&buf);
    wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(&buf);
  }

  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (v39 >= 0)
    {
      v10 = &v37;
    }

    else
    {
      v10 = v37;
    }

    v11 = v34[0];
    if (v35 >= 0)
    {
      v11 = v34;
    }

    v12 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf) = 67110659;
    HIDWORD(buf) = v42;
    v48 = 2081;
    v49 = v10;
    v50 = 1024;
    v51[0] = v36;
    LOWORD(v51[1]) = 1024;
    *(&v51[1] + 2) = v33;
    HIWORD(v51[2]) = 2081;
    *&v51[3] = v11;
    LOWORD(v51[5]) = 1024;
    *(&v51[5] + 2) = HIBYTE(v42);
    HIWORD(v51[6]) = 2080;
    *&v51[7] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,emergContext,heloEnabled,%d,imsi,%{private}s,supl_enable_msa,%d,suplPort,%d,suplServer,%{private}s,cplane_early_return,%d,nsuuid,%s", &buf, 0x38u);
    v9 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,SET_SUPL_INIT", &buf, 2u);
  }

  v13 = *(a2 + 336);
  if (v13 >= 1 && (*(a2 + 401) & 0x20) != 0)
  {
    v14 = *(a2 + 360);
    if (v14 >= 1)
    {
      v48 = 0;
      LOBYTE(v49) = 0;
      BYTE6(v49) = 0;
      v52 = 0;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0;
      LODWORD(buf) = 0;
      *(&buf + 3) = 0;
      memset(v51, 0, 54);
      __p = 0;
      v31 = 0;
      v32 = 0;
      std::vector<unsigned char>::reserve(&__p, v13);
      for (i = 0; i != v13; ++i)
      {
        if (i >= *(a2 + 336))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
        }

        v29 = *(*(a2 + 328) + 4 * i);
        std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v29);
      }

      SuplPduLog::traceSuplPdu(__p, (v31 - __p), 1);
      v16 = *(GpsdPlatformInfo::instance(0) + 8);
      if ((v16 - 301) >= 2 && (v16 - 201) > 1)
      {
        v25 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
        if (v25 > 4 || ((1 << v25) & 0x19) == 0)
        {
LABEL_50:
          if (__p)
          {
            v31 = __p;
            operator delete(__p);
          }

          goto LABEL_52;
        }

        v26 = *a4;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a3);
        (*(*v26 + 424))(v26, &__p, v45);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
        std::mutex::lock((a1 + 112));
        v27 = *(a1 + 88);
        *(a1 + 80) = *(a2 + 368);
        *(a1 + 96) = v27;
        std::vector<unsigned char>::reserve((a1 + 88), v14);
        for (j = 0; j != v14; ++j)
        {
          if (j >= *(a2 + 360))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
          }

          v29 = *(*(a2 + 352) + 4 * j);
          std::vector<unsigned char>::push_back[abi:ne200100](a1 + 88, &v29);
        }
      }

      else
      {
        v17 = HIBYTE(v39);
        if (v39 < 0)
        {
          v17 = v38;
        }

        if (!v17)
        {
          v23 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *v44 = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#supl,SET_SUPL_INIT received without valid IMSI", v44, 2u);
          }

          *v44 = 4;
          v24 = *(a3 + 24);
          if (!v24)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v24 + 48))(v24, v44);
          goto LABEL_50;
        }

        v18 = *a4;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, a3);
        (*(*v18 + 416))(v18, &__p, &v33, v46);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v46);
        std::mutex::lock((a1 + 112));
        v19 = *(a1 + 88);
        *(a1 + 80) = *(a2 + 368);
        *(a1 + 96) = v19;
        std::vector<unsigned char>::reserve((a1 + 88), v14);
        for (k = 0; k != v14; ++k)
        {
          if (k >= *(a2 + 360))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
          }

          v29 = *(*(a2 + 352) + 4 * k);
          std::vector<unsigned char>::push_back[abi:ne200100](a1 + 88, &v29);
        }
      }

      std::mutex::unlock((a1 + 112));
      goto LABEL_50;
    }
  }

  v21 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#supl,SET_SUPL_INIT received without Payload", &buf, 2u);
  }

  LODWORD(buf) = 4;
  v22 = *(a3 + 24);
  if (!v22)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v22 + 48))(v22, &buf);
LABEL_52:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_100120CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::mutex::unlock((v39 + 112));
  if (__p)
  {
    operator delete(__p);
  }

  gnss::Emergency::Supl::Init::~Init(&a39);
  gnss::Emergency::Supl::Context::~Context(&a13);
  _Unwind_Resume(a1);
}

void LegacyEmergencyHandler::handleEmergencySummaryReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,handleEmergencySummaryReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 10;
  v15 = 0x1000100000000;
  operator new();
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void gnss::Emergency::Supl::Init::~Init(gnss::Emergency::Supl::Init *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void LegacyEmergencyHandler::handleEmergencyPositionReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,handleEmergencyPositionReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 11;
  v15 = 0x4000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencyMeasurementReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,handleEmergencyMeasurementReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 12;
  v15 = 0x8000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencyMeasurementReportWithEstimate(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5 = *(a2 + 4);
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[119];
    v10 = a2[120];
    v11 = *(a2 + 484);
    v12 = *(a2 + 485);
    v13 = *(a2 + 486);
    v14 = *(a2 + 27);
    LODWORD(v15[0]) = 67242753;
    HIDWORD(v15[0]) = v4;
    LOWORD(v15[1]) = 1026;
    *(&v15[1] + 2) = v5;
    HIWORD(v15[1]) = 1026;
    LODWORD(v15[2]) = v6;
    WORD2(v15[2]) = 1026;
    *(&v15[2] + 6) = v7;
    WORD1(v15[3]) = 1026;
    HIDWORD(v15[3]) = v8;
    LOWORD(v15[4]) = 1029;
    *(&v15[4] + 2) = v9;
    HIWORD(v15[4]) = 1029;
    LODWORD(v16) = v10;
    WORD2(v16) = 1026;
    *(&v16 + 6) = v11;
    WORD5(v16) = 1024;
    HIDWORD(v16) = v12;
    LOWORD(v17) = 1026;
    *(&v17 + 2) = v13;
    WORD3(v17) = 1026;
    DWORD2(v17) = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,handleEmergencyMeasurementReportWithEstimate,result,%{public}d,responseType,%{public}d,sessionProtocol,%{public}d,posProtocol,%{public}d,sessionId,%{public}u,locationIndication,lat,%{sensitive}d,lon,%{sensitive}d,locUncAng,%{public}d,locUnc{public}A,%d,locUncP,%{public}d,gpsMeasurements,nrOfSats,%{public}d", v15, 0x44u);
  }

  v15[0] = off_100179D00;
  memset(&v15[1], 0, 32);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  LODWORD(v15[1]) = 26;
  v27 = 0x40000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencyAssistanceNeededReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,handleEmergencyAssistanceNeededReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 13;
  v15 = 0x10000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencySuplSessionStatusReport(void *a1, uint64_t a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,handleEmergencySuplSessionStatusReport", &v10, 2u);
  }

  v5 = *(a2 + 8);
  v6 = v5 > 0x1E;
  v7 = (1 << v5) & 0x607C1FF8;
  if (!v6 && v7 != 0)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl Supl End Flush VendorLogger", &v10, 2u);
    }

    if (*a1)
    {
      (*(**a1 + 40))(*a1);
    }
  }

  v10 = off_100179D00;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  LODWORD(v11) = 14;
  v24 = 0x80000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencySuplLocationdIdNeededReport(LegacyEmergencyHandler *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,handleEmergencySuplLocationdIdNeededReport", &v4, 2u);
  }

  v4 = off_100179D00;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v18 = &_mh_execute_header;
  LODWORD(v5) = 15;
  v3 = *(this + 4);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
  v4 = off_100179D00;
  proto::gpsd::Indication::SharedDtor(&v4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(&v4);
}

void LegacyEmergencyHandler::handleEmergencySuplWlanMeasNeededReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,handleEmergencySuplWlanMeasNeededReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, 28);
  LODWORD(v2) = 24;
  *(&v14[3] + 4) = 0x1000000100000000;
  operator new();
}

void LegacyEmergencyHandler::handleEmergencyFtAssistanceNeededReport()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,handleEmergencyFtAssistanceNeededReport", &v1, 2u);
  }

  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 17;
  v15 = 0x20000100000000;
  operator new();
}

void gnss::Emergency::Config::~Config(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void gnss::Emergency::Supl::LocationId::~LocationId(gnss::Emergency::Supl::LocationId *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void gnss::Emergency::Supl::Context::~Context(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C228;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 112));
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 80);
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,servingCellLteCb,fIsServingCellLte,%{public}d", v6, 8u);
  }

  v4 = *(v1 + 80);
  std::mutex::unlock((v1 + 112));
  return v4;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1>,void ()(std::vector<unsigned char> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C2B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1>,void ()(std::vector<unsigned char> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 112));
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,suplCertCb", v16, 2u);
  }

  if (v3 + 88 != a2)
  {
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = v6 - v5;
    v8 = *(a2 + 16);
    v9 = *a2;
    if (v8 - *a2 < v6 - v5)
    {
      if (v9)
      {
        *(a2 + 8) = v9;
        operator delete(v9);
        v8 = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v10 = 2 * v8;
        if (2 * v8 <= v7)
        {
          v10 = v6 - v5;
        }

        if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<unsigned char>::__vallocate[abi:ne200100](a2, v11);
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v12 = *(a2 + 8);
    v13 = v12 - v9;
    if (v12 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v6 - v5);
      }

      v15 = &v9[v7];
    }

    else
    {
      v14 = &v5[v13];
      if (v12 != v9)
      {
        memmove(*a2, *(v3 + 88), v13);
        v12 = *(a2 + 8);
      }

      if (v6 != v14)
      {
        memmove(v12, v14, v6 - v14);
      }

      v15 = &v12[v6 - v14];
    }

    *(a2 + 8) = v15;
  }

  std::mutex::unlock((v3 + 112));
}

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_1>,void ()(std::vector<unsigned char> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2>,void ()(gnss::Emergency::Supl::Status)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C348;
  a2[1] = v2;
  return result;
}

void std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2>,void ()(gnss::Emergency::Supl::Status)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 67240192;
    HIDWORD(v5) = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#supl,suplConnStatusCb,connStatus,%{public}d", &v5, 8u);
  }

  v5 = off_100179D00;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 14;
  v19 = 0x80000100000000;
  operator new();
}

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_2>,void ()(gnss::Emergency::Supl::Status)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3>,void ()(std::string &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C3D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3>,void ()(std::string &)>::operator()(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 112));
  std::string::operator=(a2, (v3 + 176));

  std::mutex::unlock((v3 + 112));
}

uint64_t std::__function::__func<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3,std::allocator<LegacyEmergencyHandler::createSuplConnectionManager(std::unique_ptr<gnss::Emergency::Supl::ConnectionManager> &)::$_3>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__assoc_state<gnss::Result>::~__assoc_state(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t *std::promise<gnss::Result>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v8.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v8);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v9.__cat_ = std::future_category();
        *&v9.__val_ = 4;
        std::future_error::future_error(&v6, v9);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(&v6);
        v4.__ptr_ = &v7;
        std::__assoc_sub_state::set_exception(v2, v4);
        std::exception_ptr::~exception_ptr(&v7);
        std::future_error::~future_error(&v6);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0>,gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C4B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0>,gnss::Result ()(gnss::Emergency::SummaryReport const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C540;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::promise<gnss::Result>::set_value(uint64_t *a1, int *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<gnss::Result>::set_value<gnss::Result const&>(v3, a2);
}

void std::__assoc_state<gnss::Result>::set_value<gnss::Result const&>(uint64_t a1, int *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v5 = *a2;
  *(a1 + 136) |= 5u;
  *(a1 + 140) = v5;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<gnss::Result>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001233B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2>,gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C5C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2>,gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C650;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4>,gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C6D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4>,gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C760;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_6,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_6>,void ()(gnss::Emergency::Supl::SessionStatus const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C7E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_6,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_6>,void ()(gnss::Emergency::Supl::SessionStatus const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_7,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_7>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C870;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_7,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_7>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_8,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_8>,gnss::Result ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C8F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_8,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_8>,gnss::Result ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_9,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_9>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C980;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_9,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_9>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_10,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_10>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CA00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_10,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_10>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_11,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_11>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CA90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_11,std::allocator<LegacyEmergencyHandler::configureDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_11>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0>,gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CB10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_0>,gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CBA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2>,gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CC20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_2>,gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CCB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4>,void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CD30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_4>,void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CDC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5,std::allocator<LegacyEmergencyHandler::configureLibolafDeviceEmergency(std::unique_ptr<gnss::Device> const&)::$_5>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CE40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (*a2 == 1)
  {
    *(v3 + 76) = 1;
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,Error: startEmergencyPositionRequest failed", v6, 2u);
    }
  }

  return std::function<void ()(proto::gpsd::Request_Type,gnss::Result)>::operator()(*(v3 + 64), 60, v2);
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(proto::gpsd::Request_Type,gnss::Result)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CEC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (*a2 == 1)
  {
    *(v3 + 76) = 1;
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,Error: startEmergencyPositionRequest failed", v6, 2u);
    }
  }

  return std::function<void ()(proto::gpsd::Request_Type,gnss::Result)>::operator()(*(v3 + 64), 60, v2);
}

uint64_t std::__function::__func<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1,std::allocator<LegacyEmergencyHandler::startEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CF40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (*a2 == 1)
  {
    *(v3 + 76) = 0;
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,stopEmergencyPositionRequest failed", v6, 2u);
    }
  }

  std::function<void ()(proto::gpsd::Request_Type,gnss::Result)>::operator()(*(v3 + 64), 61, v2);
  result = *v3;
  if (*v3)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t std::__function::__func<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0,std::allocator<LegacyEmergencyHandler::stopEmergencyPosition(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>,std::unique_ptr<gnss::Device> const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void GpsdInterfaceTelemeter::GpsdInterfaceTelemeter(GpsdInterfaceTelemeter *this)
{
  for (i = 0; i != 120; i += 40)
  {
    v2 = this + i;
    *v2 = 0uLL;
    *(v2 + 1) = 0uLL;
    *(v2 + 8) = 1065353216;
  }

  *(this + 15) = 850045863;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  v3 = *(GpsdRuntime::instance(this) + 16);
  operator new();
}

uint64_t std::__function::__func<GpsdInterfaceTelemeter::GpsdInterfaceTelemeter(void)::$_0,std::allocator<GpsdInterfaceTelemeter::GpsdInterfaceTelemeter(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017CFC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdInterfaceTelemeter::GpsdInterfaceTelemeter(void)::$_0,std::allocator<GpsdInterfaceTelemeter::GpsdInterfaceTelemeter(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t GpsdClientManager::GpsdClientManager(uint64_t a1, uint64_t a2, GpsdRuntime **a3)
{
  v5 = std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](a1, a2) + 32;
  v6 = a3[3];
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_4:
    *(a1 + 56) = v6;
    goto LABEL_6;
  }

  *(a1 + 56) = v5;
  v6 = (*(*a3[3] + 24))(a3[3], v5);
LABEL_6:
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *GpsdRuntime::instance(v6);
  *(a1 + 88) = 850045863;
  *(a1 + 80) = v7;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  if (!*(a1 + 24))
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "gpsdClientManager,fRequestCallback,nullptr", buf, 2u);
      v9 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdClientManager.mm";
      v27 = 1026;
      v28 = 28;
      v29 = 2082;
      v30 = "GpsdClientManager";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "assert");
    std::string::basic_string[abi:ne200100]<0>(v22, "GpsdClientManager");
    std::string::basic_string[abi:ne200100]<0>(__p, "gpsdClientManager,fRequestCallback,nullptr");
    gpsd::util::triggerDiagnosticReport(v24, v22, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v10 = "false && gpsdClientManager,fRequestCallback,nullptr";
    v11 = 28;
    if (v24[23] < 0)
    {
      v12 = v24;
LABEL_29:
      operator delete(*v12);
    }

LABEL_30:
    __assert_rtn("GpsdClientManager", "GpsdClientManager.mm", v11, v10);
  }

  if (!v7)
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "gpsdClientManager,fGpsdReceiveQ,nullptr", buf, 2u);
      v13 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdClientManager.mm";
      v27 = 1026;
      v28 = 29;
      v29 = 2082;
      v30 = "GpsdClientManager";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v19, "assert");
    std::string::basic_string[abi:ne200100]<0>(v17, "GpsdClientManager");
    std::string::basic_string[abi:ne200100]<0>(v15, "gpsdClientManager,fGpsdReceiveQ,nullptr");
    gpsd::util::triggerDiagnosticReport(v19, v17, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v10 = "false && gpsdClientManager,fGpsdReceiveQ,nullptr";
    v11 = 29;
    if ((v19[23] & 0x80000000) != 0)
    {
      v12 = v19;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZN17GpsdClientManagerC2ERKNSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEERKNS1_IFviEEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v7, block);
  return a1;
}

void GpsdClientManager::initXPCConnection(GpsdClientManager *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,initXPCConnection", buf, 2u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.gpsd", *(this + 10), 1uLL);
  v4 = *(this + 8);
  *(this + 8) = mach_service;

  v5 = *(this + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___ZN17GpsdClientManager17initXPCConnectionEv_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = this;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_resume(*(this + 8));
}

void GpsdClientManager::handleIndication(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 88));
  if (*(a1 + 72))
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v4, "gpsdIndication", *a2, *(a2 + 8) - *a2);
    xpc_connection_send_message(*(a1 + 72), v4);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,No remote connection to send indication", v6, 2u);
    }
  }

  std::mutex::unlock((a1 + 88));
}

void GpsdClientManager::handleResponse(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 88));
  if (*(a1 + 72))
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v4, "gpsdResponse", *a2, *(a2 + 8) - *a2);
    xpc_connection_send_message(*(a1 + 72), v4);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,No remote connection to send response", v6, 2u);
    }
  }

  std::mutex::unlock((a1 + 88));
}

void ___ZN17GpsdClientManager17initXPCConnectionEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = xpc_copy_description(v3);
  type = xpc_get_type(v3);
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67240962;
    *v12 = type == &_xpc_type_connection;
    *&v12[4] = 1026;
    *&v12[6] = type == &_xpc_type_error;
    v13 = 1026;
    v14 = type == &_xpc_type_dictionary;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,Connection,XPC_TYPE_CONNECTION,%{public}d,XPC_TYPE_ERROR,%{public}d,XPC_TYPE_DICTIONARY,%{public}d,desc,%s", &v11, 0x1Eu);
  }

  free(v5);
  if (type == &_xpc_type_error)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v11 = 67240962;
      *v12 = v3 == &_xpc_error_connection_interrupted;
      *&v12[4] = 1026;
      *&v12[6] = v3 == &_xpc_error_connection_invalid;
      v13 = 1026;
      v14 = v3 == &_xpc_error_termination_imminent;
      v15 = 2080;
      v16 = string;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#gpsdClientManager,ConnectionError,XPC_ERROR_CONNECTION_INTERRUPTED,%{public}d,XPC_ERROR_CONNECTION_INVALID,%{public}d,XPC_ERROR_TERMINATION_IMMINENT,%{public}d,ErrorDesc,%s", &v11, 0x1Eu);
    }
  }

  else if (type == &_xpc_type_connection)
  {
    GpsdClientManager::handleXPCConnection(v4, v3);
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      *v12 = type;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#gpsdClientManager,Connection,Unexpected type,%p", &v11, 0xCu);
    }
  }
}

void GpsdClientManager::handleXPCConnection(uint64_t a1, void *a2)
{
  v4 = a2;
  pid = xpc_connection_get_pid(v4);
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.val[0] = 67109376;
    buf.val[1] = pid;
    LOWORD(buf.val[2]) = 2048;
    *(&buf.val[2] + 2) = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,handleXPCConnection,pid,%d,incomingConnection,%p", &buf, 0x12u);
  }

  audit_token = xpc_connection_get_audit_token();
  buf = v16;
  v8 = GpsdClientManager::checkEntitlement(audit_token, @"com.apple.gpsd", &buf);
  v9 = GpsdLogObjectGeneral;
  if (v8)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf.val[0] = 67109120;
      buf.val[1] = pid;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,Entitlement check passed for client pid,%d", &buf, 8u);
    }

    std::mutex::lock((a1 + 88));
    v10 = (a1 + 72);
    if (*(a1 + 72))
    {
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf.val[0]) = 0;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "#gpsdClientManager,fRemoteConnection already exists", &buf, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, "XPC");
      std::string::basic_string[abi:ne200100]<0>(&buf.val[6], "duplicate_connection");
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v21 = 0;
      gpsd::util::triggerDiagnosticReport(&buf, v12);
      xpc_connection_suspend(*v10);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(*&buf.val[6]);
      }

      if (SHIBYTE(buf.val[5]) < 0)
      {
        operator delete(*buf.val);
      }
    }

    objc_storeStrong((a1 + 72), a2);
    xpc_connection_set_target_queue(*(a1 + 72), *(a1 + 80));
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf.val[0] = 67109632;
      buf.val[1] = v16.val[0];
      LOWORD(buf.val[2]) = 1024;
      *(&buf.val[2] + 2) = v16.val[7];
      HIWORD(buf.val[3]) = 1024;
      buf.val[4] = pid;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,handleXPCConnection,token,0x%08X-0x%08X,pid,%d", &buf, 0x14u);
    }

    v14 = *(a1 + 72);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = ___ZN17GpsdClientManager19handleXPCConnectionEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    handler[4] = a1;
    xpc_connection_set_event_handler(v14, handler);
    xpc_connection_resume(*v10);
    std::mutex::unlock((a1 + 88));
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    buf.val[0] = 67109120;
    buf.val[1] = pid;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#gpsdClientManager,Entitlement check failed for client pid,%d", &buf, 8u);
  }
}

void sub_100125F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::mutex::unlock((v31 + 88));

  _Unwind_Resume(a1);
}

uint64_t GpsdClientManager::checkEntitlement(GpsdClientManager *this, const __CFString *a2, audit_token_t *a3)
{
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17.val[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#gpsdClientManager,checkEntitlement", &v17, 2u);
  }

  error = 0;
  v6 = *&a3->val[4];
  *v17.val = *a3->val;
  *&v17.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v17);
  v8 = v7;
  if (v7)
  {
    v9 = SecTaskCopyValueForEntitlement(v7, a2, &error);
    v10 = v9;
    if (!error)
    {
      if (v9)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v10))
        {
          if (CFEqual(v10, kCFBooleanTrue))
          {
            v12 = 1;
          }

          else
          {
            v16 = GpsdLogObjectGeneral;
            if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v17.val[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#gpsdClientManager,SecTaskCopyValueForEntitlement check failed", &v17, 2u);
            }

            v12 = 0;
          }

LABEL_12:
          CFRelease(v10);
          goto LABEL_16;
        }
      }
    }

    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.val[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#gpsdClientManager,SecTaskCopyValueForEntitlement failed", &v17, 2u);
    }

    v12 = 0;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.val[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#gpsdClientManager,SecTaskCreateWithAuditToken failed", &v17, 2u);
    }

    v12 = 0;
  }

LABEL_16:
  if (error)
  {
    CFRelease(error);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void GpsdClientManager::handleXPCMessage(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67240962;
      DWORD1(__p) = v3 == &_xpc_error_connection_interrupted;
      WORD4(__p) = 1026;
      *(&__p + 10) = v3 == &_xpc_error_connection_invalid;
      HIWORD(__p) = 1026;
      LODWORD(v15[0]) = v3 == &_xpc_error_termination_imminent;
      WORD2(v15[0]) = 2080;
      *(v15 + 6) = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gpsdClientManager,handleXPCMessage,ErrorType,INTERRUPTED,%{public}d,INVALID,%{public}d,IMMINENT,%{public}d,ErrorDesc,%s", &__p, 0x1Eu);
    }

    if (v3 == &_xpc_error_connection_invalid)
    {
      GpsdClientManager::handleXPCConnectionInvalid(a1);
    }

    else if (v3 == &_xpc_error_termination_imminent)
    {
      GpsdClientManager::handleXPCConnectionTermination(v7);
    }

    std::mutex::lock((a1 + 88));
    xpc_connection_set_event_handler(*(a1 + 72), &__block_literal_global_7);
    xpc_connection_cancel(*(a1 + 72));
    v8 = *(a1 + 72);
    *(a1 + 72) = 0;

    std::mutex::unlock((a1 + 88));
  }

  else if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    length = 0;
    data = xpc_dictionary_get_data(v3, "gpsdRequest", &length);
    if (data)
    {
      v15[0] = 0;
      __p = 0uLL;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, data, data + length, length);
      v5 = *(a1 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v5 + 48))(v5, &__p);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v3, "connection_ns");
      v10 = uint64;
      if (uint64)
      {
        MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(uint64);
        v12 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p) = 134349056;
          *(&__p + 4) = (MachContinuousTimeNs - v10) * 0.000000001;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,incomingConnection,age_sec,%{public}.3f", &__p, 0xCu);
          v12 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,incomingConnection,processing", &__p, 2u);
        }

        std::function<void ()(int)>::operator()(*(a1 + 56), 1);
      }
    }
  }
}

uint64_t GpsdClientManager::handleXPCConnectionInvalid(GpsdClientManager *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,handleXPCConnectionInvalid", v4, 2u);
  }

  return std::function<void ()(int)>::operator()(*(this + 7), 0);
}

void GpsdClientManager::handleXPCConnectionTermination(GpsdClientManager *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#gpsdClientManager,handleXPCConnectionTermination", v2, 2u);
  }
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void GpsdClientManager::~GpsdClientManager(GpsdClientManager *this)
{
  xpc_connection_cancel(*(this + 8));
  std::mutex::~mutex((this + 88));

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](this);
}

uint64_t GpsdGnssDeviceManager::GpsdGnssDeviceManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &off_10017D0A0;
  *(a1 + 8) = off_10017D118;
  v8 = a1 + 288;
  *(a1 + 288) = off_10017D138;
  GnssDeviceCommon::GnssDeviceCommon(a1 + 8, a1 + 296);
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::__value_func[abi:ne200100](v15, a2);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100](v14, a3);
  GpsdProtobufHandler::GpsdProtobufHandler(v8, v15, v14, a4);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::~__value_func[abi:ne200100](v15);
  *a1 = &off_10017D0A0;
  *(a1 + 8) = off_10017D118;
  *(a1 + 288) = off_10017D138;
  *(a1 + 1312) = 0;
  *(a1 + 1319) = 0;
  *(a1 + 1324) = 5;
  *(a1 + 1328) = 0;
  *(a1 + 1332) = 7;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1352) = 0u;
  v9 = GpsdPreferences::instance(0);
  if ((GpsdPreferences::useInternalEmergencyStack(v9) & 1) == 0)
  {
    v13[0] = off_10017D208;
    v13[1] = a1;
    v13[3] = v13;
    v12[0] = off_10017D288;
    v12[1] = a1;
    v12[3] = v12;
    v10 = *(a1 + 352);
    operator new();
  }

  return a1;
}

void sub_100126968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::~__value_func[abi:ne200100](&a26);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v26 - 120);
  operator delete();
}

void GpsdProtobufHandler::~GpsdProtobufHandler(GpsdProtobufHandler *this)
{
  *this = off_100171BA8;
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::~__value_func[abi:ne200100](this + 992);
  std::mutex::~mutex((this + 928));
  v2 = *(this + 115);
  *(this + 115) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = off_100171AF0;
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    GpsdAbmUtil::~GpsdAbmUtil(v3);
    operator delete();
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](this + 32);
}

void GpsdGnssDeviceManager::~GpsdGnssDeviceManager(GpsdGnssDeviceManager *this)
{
  *this = &off_10017D0A0;
  *(this + 1) = off_10017D118;
  v2 = (this + 288);
  *(this + 36) = off_10017D138;
  GpsdGnssDeviceManager::destroyDevice(this);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](this + 1368);
  v3 = *(this + 170);
  *(this + 170) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 167);
  *(this + 167) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<LegacyEmergencyHandler>::reset[abi:ne200100](this + 164, 0);
  GpsdProtobufHandler::~GpsdProtobufHandler(v2);
  v5 = *(this + 2);
  *(this + 1) = off_100172870;
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }
}

{
  GpsdGnssDeviceManager::~GpsdGnssDeviceManager(this);

  operator delete();
}

void GpsdGnssDeviceManager::destroyDevice(GpsdGnssDeviceManager *this)
{
  *(this + 1322) = 1;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 2);
    v4 = *(this + 1321);
    gnss::stringify(*(this + 331), __p);
    v5 = __p[0];
    if (v14 >= 0)
    {
      v5 = __p;
    }

    v6 = *(this + 1328);
    v7 = *(this + 164);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 72);
    }

    *buf = 134350082;
    *v16 = v3;
    *&v16[8] = 1026;
    v17 = v4;
    v18 = 2082;
    v19 = v5;
    v20 = 1026;
    v21 = v6;
    v22 = 1026;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,destroyDevice,fDevice,%{public}p,fDeviceCtrAttempted,%{public}d,fDeviceCtrStatus,%{public}s,regSession,%{public}d,emergSession,%{public}d", buf, 0x28u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(this + 1328);
  if ((v8 & 1) != 0 || (v9 = *(this + 164)) != 0 && ((*(v9 + 72) & 1) != 0 || *(v9 + 73) == 1))
  {
    v10 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 164);
      if (v11)
      {
        LODWORD(v11) = *(v11 + 72);
      }

      *buf = 67240448;
      *v16 = v8;
      *&v16[4] = 1026;
      *&v16[6] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#gdm,destroyDevice,In session,regSession,%{public}d,emergSession,%{public}d", buf, 0xEu);
    }

    GpsdGnssDeviceManager::deviceStopBlocking(this);
  }

  *(this + 331) = 2;
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::operator=[abi:ne200100](this + 1368);
  v12 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#gdm,destroyDevice,Immediate exit", buf, 2u);
  }
}

void non-virtual thunk toGpsdGnssDeviceManager::~GpsdGnssDeviceManager(GpsdGnssDeviceManager *this)
{
  GpsdGnssDeviceManager::~GpsdGnssDeviceManager((this - 8));
}

{
  GpsdGnssDeviceManager::~GpsdGnssDeviceManager((this - 288));
}

{
  GpsdGnssDeviceManager::~GpsdGnssDeviceManager((this - 8));

  operator delete();
}

{
  GpsdGnssDeviceManager::~GpsdGnssDeviceManager((this - 288));

  operator delete();
}

void GpsdGnssDeviceManager::configureDevice(GpsdGnssDeviceManager *this)
{
  if (*(this + 2))
  {
    operator new();
  }

  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v5) = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "null fDevice", &v5, 2u);
    v1 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdGnssDeviceManager.cpp";
    v7 = 1026;
    v8 = 61;
    v9 = 2082;
    v10 = "configureDevice";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &v5, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "assert");
  std::string::basic_string[abi:ne200100]<0>(&v3, "configureDevice");
  std::string::basic_string[abi:ne200100]<0>(&v2, "null fDevice");
  gpsd::util::triggerDiagnosticReport(&v4, &v3, &v2);
  std::string::~string(&v2);
  std::string::~string(&v3);
  std::string::~string(&v4);
  __assert_rtn("configureDevice", "GpsdGnssDeviceManager.cpp", 61, "false && null fDevice");
}

void sub_1001278DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a30);
  if (!atomic_fetch_add(v44 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v44 + 16))(v44);
  }

  std::promise<gnss::Result>::~promise(&a34);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setPowerReport(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = off_10017D9B8;
  v5[1] = a1;
  v5[3] = v5;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a2);
  (*(*v2 + 216))(v2, v5, v4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v5);
}

void sub_100127B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_100127D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va1);
  if (!atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  std::promise<gnss::Result>::~promise(va);
  _Unwind_Resume(a1);
}

void sub_100128324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, atomic_ullong *a47, uint64_t a48, uint64_t a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a47)
  {
    if (!atomic_fetch_add(a47 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a47 + 16))(a47);
    }
  }

  std::promise<gnss::Result>::~promise(&a48);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::isInAnySession(GpsdGnssDeviceManager *this)
{
  if (*(this + 1328))
  {
LABEL_4:
    LOBYTE(v1) = 1;
    return v1 & 1;
  }

  v1 = *(this + 164);
  if (v1)
  {
    if ((*(v1 + 72) & 1) == 0)
    {
      LOBYTE(v1) = *(v1 + 73);
      return v1 & 1;
    }

    goto LABEL_4;
  }

  return v1 & 1;
}

void GpsdGnssDeviceManager::deviceStopBlocking(GpsdGnssDeviceManager *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,initiated", buf, 2u);
  }

  if (*(this + 2))
  {
    if (*(this + 1328) == 1)
    {
      *(this + 1328) = 0;
      GnssDeviceCommon::ActivityCheck::mute((this + 264));
      if (*(GpsdPlatformInfo::instance(0) + 8) != 107)
      {
        operator new();
      }

      v3 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,dylibRunningInDeviceQueue,convert to non blocking", buf, 2u);
      }

      v4 = *(this + 2);
      v8[0] = off_10017DEE0;
      v8[3] = v8;
      v7[0] = off_10017DF60;
      v7[3] = v7;
      (*(*v4 + 56))(v4, v8, v7);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
    }

    v5 = *(this + 164);
    if (v5)
    {
      if (*(v5 + 72) == 1)
      {
        *(v5 + 72) = 0;
        GnssDeviceCommon::ActivityCheck::mute((this + 264));
        operator new();
      }
    }
  }
}

void sub_1001289D0(_Unwind_Exception *a1, uint64_t a2, atomic_ullong *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    if (!atomic_fetch_add(a3 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a3 + 16))(a3);
    }
  }

  std::promise<gnss::Result>::~promise(va);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::prepareForTermination(GpsdGnssDeviceManager *a1, uint64_t *a2, int a3)
{
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136446466;
    v9 = v7;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,Preparing for termination,reason,%{public}s,stopDevice,%{public}d", &v8, 0x12u);
  }

  if (a3)
  {
    if (*(a1 + 1321) == 1)
    {
      GpsdGnssDeviceManager::destroyDevice(a1);
    }
  }
}

uint64_t GpsdGnssDeviceManager::exitCleanlyForReason(GpsdGnssDeviceManager *a1, uint64_t *a2, int a3)
{
  GpsdGnssDeviceManager::prepareForTermination(a1, a2, a3);
  v4 = usleep(0x186A0u);
  v5 = GpsdRuntime::instance(v4);

  return GpsdRuntime::bounceExit(v5, a2);
}

void GpsdGnssDeviceManager::sendStatusIndication(GpsdGnssDeviceManager *this)
{
  v1 = off_100179D00;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 2;
  v15 = 0x4100000000;
  operator new();
}

void GpsdGnssDeviceManager::sendStopCompletedIndication(uint64_t a1, unsigned int a2)
{
  v4 = off_100179D00;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v18 = &_mh_execute_header;
  LODWORD(v5) = 20;
  v3 = gnss::Convert::toProtobuf(a2);
  if (v3 < 0xA)
  {
    HIDWORD(v18) |= 0x2000u;
    HIDWORD(v10) = v3;
    GpsdIndicationHandler::sendIndication(a1 + 296, &v4);
  }

  __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8215, "::proto::gnss::Result_IsValid(value)");
}

void GpsdGnssDeviceManager::ltlRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1392))
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,#ltl,detected stacked LtlInfoRequests", &v9, 2u);
    }
  }

  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](&v9, a3);
  v6 = a1 + 1368;
  if (&v9 != (a1 + 1368))
  {
    v7 = v11;
    v8 = *(a1 + 1392);
    if (v11 == &v9)
    {
      if (v8 == v6)
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        *&v11 = 0;
        (*(**(a1 + 1392) + 24))(*(a1 + 1392), &v9);
        (*(**(a1 + 1392) + 32))(*(a1 + 1392));
        *(a1 + 1392) = 0;
        *&v11 = &v9;
        (*(v24[0] + 24))(v24, a1 + 1368);
        (*(v24[0] + 32))(v24);
      }

      else
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        *&v11 = *(a1 + 1392);
      }

      *(a1 + 1392) = v6;
    }

    else if (v8 == v6)
    {
      (*(*v8 + 24))(*(a1 + 1392), &v9);
      (*(**(a1 + 1392) + 32))(*(a1 + 1392));
      *(a1 + 1392) = v11;
      *&v11 = &v9;
    }

    else
    {
      *&v11 = *(a1 + 1392);
      *(a1 + 1392) = v7;
    }
  }

  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](&v9);
  v9 = off_100179D00;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  LODWORD(v10) = 5;
  v23 = 0x20100000000;
  operator new();
}

void sub_100129288(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdGnssDeviceManager::injectLtlInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1392))
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v11[0] = 0;
    v12 = xmmword_10014CEE0;
    *&v6 = 0x8000000080000000;
    *(&v6 + 1) = 0x8000000080000000;
    v13 = v6;
    v14 = 0;
    v15 = 0x7FFF;
    v16 = -1;
    v17 = -1;
    v18 = -1;
    bzero(v19, 0x32AuLL);
    *&v19[812] = 0u;
    v20 = -1;
    v21 = -1;
    ProtobufUtil::fromProtobuf(a2, v11);
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 67240704;
      v23 = v11[0];
      v24 = 1026;
      v25 = v12;
      v26 = 1026;
      v27 = DWORD1(v12);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#gdm,#ltl,success,%{public}d,code,%{public}d,type,%{public}d", buf, 0x14u);
    }

    v8 = *(a1 + 1392);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, v11);
    std::function<void ()(gnss::Result)>::operator()(a3, 1);
    return std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::operator=[abi:ne200100](a1 + 1368);
  }

  else
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#gdm,#ltl,null callback", v11, 2u);
    }

    return std::function<void ()(gnss::Result)>::operator()(a3, 0);
  }
}

uint64_t GpsdGnssDeviceManager::createStopCompletedTimer(uint64_t this)
{
  *(this + 1332) = 7;
  if (!*(this + 1336))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#gdm,createStopCompletedTimer", buf, 2u);
    }

    v2 = GpsdPreferences::instance(0);
    GpsdPreferences::bigPowerSwitch(v2);
    operator new();
  }

  return this;
}

void GpsdGnssDeviceManager::handleRegularStopRequest(GpsdGnssDeviceManager *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,stop,initiated", v7, 2u);
  }

  if (*(this + 1328))
  {
    *(this + 1328) = 0;
    GnssDeviceCommon::ActivityCheck::mute((this + 264));
    v3 = *(this + 170);
    *(this + 170) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    GpsdGnssDeviceManager::createStopCompletedTimer(this);
    v4 = *(this + 2);
    v9[0] = off_10017DCA0;
    v9[1] = this;
    v9[3] = v9;
    v8[0] = off_10017DD20;
    v8[1] = this;
    v8[3] = v8;
    (*(*v4 + 56))(v4, v9, v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,Device was already stopped", v7, 2u);
    }

    v6 = *(this + 47);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
    v7[3] = &__block_descriptor_tmp_46;
    v7[4] = this;
    v7[5] = 0x100000002;
    dispatch_async(v6, v7);
  }
}

void sub_1001299F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 - 72);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::getVendorDeleteGnssFlag(GpsdGnssDeviceManager *this, uint64_t a2)
{
  v3 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v3 - 303) < 0xFFFFFFFE && (v3 - 203) < 0xFFFFFFFE || (a2 & 1) == 0)
  {
    return a2;
  }

  else
  {
    return 1024;
  }
}

uint64_t GpsdGnssDeviceManager::setPvtmReport(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v14[0] = off_10017D890;
  v14[1] = a1;
  v14[3] = v14;
  v4 = *(a1 + 16);
  v5 = a2[8];
  v6 = a2[9];
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[12];
  v10 = a2[13];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v13, v14);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
  (*(*v4 + 64))(v4, v5, v6, v7, v8, v9, v10, v13, v12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v13);
  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v14);
}

void sub_100129B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 20))
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 8);
    v7[0] = off_10017D938;
    v7[1] = a1;
    v7[3] = v7;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    (*(*v4 + 112))(v4, v5, v7, v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    return std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v7);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

void sub_100129CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::injectRavenOrbitFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 399) & 0x40) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 240);
  if (!v5)
  {
    v5 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  if ((*(v5 + 20) & 1) == 0)
  {
LABEL_5:
    v6 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RAVEN_ORBIT_FILE, missing raven orbit file.", buf, 2u);
    }

    std::function<void ()(gnss::Result)>::operator()(a3, 4);
    return;
  }

  v7 = *(v5 + 8);
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v28.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&v28.__r_.__value_.__l.__data_ = v8;
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v28;
  }

  else
  {
    v9 = v28.__r_.__value_.__r.__words[0];
  }

  if (!gpsd::util::readFileIntoVector(v9, &__p))
  {
    v14 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v15 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v28.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = v15;
    v16 = "#gdm,INJECT_RAVEN_ORBIT_FILE,failed to read file,%{public}s";
LABEL_44:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_28;
  }

  if (__p != v26)
  {
    buf[0] = off_100173DB0;
    v38 = 0;
    v39 = 0;
    v41 = 0;
    v40 = 0;
    *&buf[1] = 0u;
    v36 = 0u;
    v37 = 0;
    if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, __p, v26 - __p))
    {
      if ((v41 & 0x200000000) != 0)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v20 = -1.0;
        v21 = 0;
        if (ProtobufUtil::fromProtobuf(buf, &v21, &v20, &v22))
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 134349568;
            *&v30[4] = 0x8E38E38E38E38E39 * ((v23 - v22) >> 3);
            v31 = 1026;
            v32 = v21;
            v33 = 2050;
            v34 = v20;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_SH_IONO_PARAMETERS,layerNum,%{public}zu,Week,%{public}u,ToW,%{public}.3f", v30, 0x1Cu);
          }

          v11 = *(a1 + 16);
          v12 = v21;
          v13 = v20;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a3);
          (*(*v11 + 88))(v11, v12, &v22, v29, v13);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
        }

        else
        {
          v18 = GpsdLogObjectWarning;
          if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RAVEN_ORBIT_FILE, protobuf conversion failed", v30, 2u);
          }

          std::function<void ()(gnss::Result)>::operator()(a3, 4);
        }

        *v30 = &v22;
        std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](v30);
      }
    }

    else
    {
      v17 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RAVEN_ORBIT_FILE, parsing rofContents from string failed.", v30, 2u);
      }

      std::function<void ()(gnss::Result)>::operator()(a3, 4);
    }

    CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(buf);
    goto LABEL_37;
  }

  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v19 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v28.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = v19;
    v16 = "#gdm,INJECT_RAVEN_ORBIT_FILE,file is empty,%{public}s";
    goto LABEL_44;
  }

LABEL_28:
  std::function<void ()(gnss::Result)>::operator()(a3, 4);
LABEL_37:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_10012A168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a24);
  a28 = &a11;
  std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](&a28);
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(&a32);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setAssistanceMapVector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 76);
  if ((~v4 & 0xFEF) != 0)
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    v5 = *(a2 + 64);
    if ((v4 & 0x10) != 0 || !*(a2 + 64))
    {
      v8 = *(a2 + 32);
      v9 = *(a2 + 40);
      if ((v4 & 0x10) != 0)
      {
        v10 = *(a2 + 32);
      }

      else
      {
        v10 = 0.0;
      }

      v11 = *(a1 + 16);
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(a2 + 65);
      v18 = *(a2 + 66);
      v19 = *(a2 + 67);
      v20 = *(a2 + 68);
      v21 = *(a2 + 69);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a3);
      (*(*v11 + 160))(v11, v12, v5, v17 & 1, v18 & 1, v19 & 1, v20 & 1, *&v21 & ((v4 & 0x1000) >> 12), v13, v14, v10, v9, v15, v16, v23);
      return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    }

    else
    {
      v6 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gdm,Missing segment_start_alt_wgs84", buf, 2u);
      }

      return std::function<void ()(gnss::Result)>::operator()(a3, 4);
    }
  }
}

void sub_10012A3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setAssistanceSpeedConstraint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 44) & 0xF) != 0)
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    (*(*v3 + 192))(v3, v4, v9, v5, v6, v7);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }
}

void sub_10012A514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setAssistanceAlongTrackVelocity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 36) & 7) != 0)
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    (*(*v3 + 200))(v3, v4, v8, v5, v6);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }
}

void sub_10012A634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::setThermalRiskState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,thermalRisk,%{public}d", buf, 8u);
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 8);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
  (*(*v8 + 208))(v8, v9, v6, v11);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
}

uint64_t GpsdGnssDeviceManager::setConfigSimulatorMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 20) & 3) == 0)
  {
    if (*(a2 + 8) == 1)
    {
      v6 = GpsdPreferences::instance(0);
      if (!GpsdPreferences::forceEnableXocalLearning(v6))
      {
        v8 = 1;
        goto LABEL_11;
      }

      v7 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,#xocal,force enable by preference", v13, 2u);
      }
    }

    v8 = 0;
LABEL_11:
    *(a1 + 1329) = *(a2 + 8);
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v10 = *(a1 + 16);
    v11 = *(a2 + 8);
    v12 = *(a2 + 12);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    (*(*v10 + 224))(v10, v11 & 1, v12, v8, v14);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_10012A918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(GpsdGnssDeviceManager *this, const proto::gpsd::Request *a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,startEmerg,initiated", v12, 2u);
  }

  v5 = *(this + 164);
  if (v5)
  {
    if (*(v5 + 72) == 1)
    {
      v6 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gdm,#nilr,Already in Emergency Mode", v12, 2u);
      }

      v7 = *(this + 47);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
      v12[3] = &__block_descriptor_tmp_46;
      v12[4] = this;
      v12[5] = 51;
      dispatch_async(v7, v12);
    }

    else
    {
      *(v5 + 72) = 1;
      if (*(this + 272) == 1)
      {
        *(this + 272) = 0;
      }

      if (*(this + 167))
      {
        v9 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr_start,Overlap with previous stop timer", v12, 2u);
        }

        GpsdGnssDeviceManager::handleStopCompletedTimer(this);
        *(this + 333) = 7;
      }

      v10 = *(this + 2);
      v11 = GpsdGnssDeviceManager::decodeCoexConfig(this, a2);
      v14[0] = off_10017DB80;
      v14[1] = this;
      v14[3] = v14;
      v13[0] = off_10017DC20;
      v13[3] = v13;
      (*(*v10 + 272))(v10, v11, v14, v13);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#gdm,startEmerg requires legacy", v12, 2u);
    }
  }
}

void sub_10012ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 - 72);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(GpsdGnssDeviceManager *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr_stop,initiated", v8, 2u);
  }

  v3 = *(this + 164);
  if (v3)
  {
    if (*(v3 + 72))
    {
      *(v3 + 72) = 0;
      GnssDeviceCommon::ActivityCheck::mute((this + 264));
      GpsdGnssDeviceManager::createStopCompletedTimer(this);
      v4 = *(this + 2);
      v10[0] = off_10017DDC0;
      v10[1] = this;
      v10[3] = v10;
      v9[0] = off_10017DE40;
      v9[1] = this;
      v9[3] = v9;
      (*(*v4 + 280))(v4, v10, v9);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    }

    else
    {
      v6 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr_stop,Device was already stopped", v8, 2u);
      }

      v7 = *(this + 47);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
      v8[3] = &__block_descriptor_tmp_46;
      v8[4] = this;
      v8[5] = 0x100000034;
      dispatch_async(v7, v8);
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gdm,stopEmerg requires legacy", v8, 2u);
    }
  }
}

void sub_10012AE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 - 72);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceManager::handleRequestWithLegacyEmergencyHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1312);
  if (v5)
  {
    v6 = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    LOBYTE(v6) = LegacyEmergencyHandler::handleEmergencyRequest(v5, a2, v14, (v6 + 16));
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (v6)
    {
      return result;
    }

    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 20);
      v12 = 67240192;
      v13 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Emergency handler did not process request %{public}d", &v12, 8u);
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 20);
      v12 = 67240192;
      v13 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received request %{public}d without emergency handler", &v12, 8u);
    }
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

void sub_10012AFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::handleStopCompletedTimer(GpsdGnssDeviceManager *this)
{
  v2 = *(this + 167);
  if (v2)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,cancel,stopCompletedTimer", buf, 2u);
      v2 = *(this + 167);
      *(this + 167) = 0;
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(this + 167) = 0;
    }

    (*(*v2 + 8))(v2);
  }

LABEL_7:
  if (*(this + 1328) == 1)
  {
    v4 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "#gdm,stopTimer,detected overlap with regular session";
  }

  else
  {
    v6 = *(this + 164);
    if (!v6)
    {
      goto LABEL_18;
    }

    if (*(v6 + 72) == 1)
    {
      v4 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v5 = "#gdm,stopTimer,detected overlap with emergency session";
      goto LABEL_17;
    }

    if (*(v6 + 73) != 1)
    {
LABEL_18:
      v7 = GpsdPreferences::instance(0);
      if (GpsdPreferences::bigPowerSwitch(v7))
      {
        v9 = 0;
        GnssHal::GpioEmbedded::GpioEmbedded(buf, v8);
        std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v8);
        GnssHal::GpioEmbedded::setResetLow(buf);
        GnssHal::GpioEmbedded::~GpioEmbedded(buf);
      }

      GpsdGnssDeviceManager::sendStopCompletedIndication(this, *(this + 333));
    }

    v4 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "#gdm,stopTimer,detected overlap with emergency pos report";
  }

LABEL_17:
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
}

void sub_10012B394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdGnssDeviceManager::destroyPvtmWatchdogTimer(GpsdGnssDeviceManager *this)
{
  result = *(this + 170);
  *(this + 170) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void GpsdGnssDeviceManager::handleHardwareUnresponsive(void *a1, int a2)
{
  if (*(a1 + 1344) == 1)
  {
    v3 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#hwReset,ignoring since unresponsive already registered,%{public}d,HardwareUnresponsive", buf, 8u);
    }
  }

  else
  {
    v4 = a1[164];
    if (!v4 || *(v4 + 72) != 1)
    {
      *(a1 + 1344) = 1;
      if ((a2 - 3) <= 1u)
      {
        v6 = GpsdPreferences::instance(0);
        a1 = GpsdPreferences::enableBasebandReset(v6);
        if (a1)
        {
          v7 = gnss::Exception::instance(a1);
          gnss::Exception::set(v7, a2);
        }
      }

      v8 = gnss::Exception::instance(a1);
      gnss::Exception::set(v8, a2);
    }

    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = a2;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "#hwReset,ignoring during emergency session,%{public}d,HardwareUnresponsive", buf, 8u);
    }
  }
}

void sub_10012B9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  proto::gpsd::Indication::~Indication(&a54);
  _Unwind_Resume(a1);
}

double gnss::Emergency::Cplane::GpsNavigationModel::GpsNavigationModel(gnss::Emergency::Cplane::GpsNavigationModel *this)
{
  v1 = 0;
  *this = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  do
  {
    v3 = this + v1;
    *(v3 + 4) = xmmword_10014CEF0;
    *(v3 + 20) = v2;
    *(v3 + 36) = xmmword_10014CF00;
    *(v3 + 52) = 0x8000800080008000;
    *(v3 + 15) = 0x80000000;
    *(v3 + 32) = -1;
    *(v3 + 17) = -1;
    v3[72] = 127;
    *(v3 + 19) = -1;
    v1 += 96;
    v3[80] = -1;
  }

  while (v1 != 1536);
  *(this + 385) = -1;
  result = NAN;
  *(this + 193) = -1;
  return result;
}

uint64_t *std::unique_ptr<LegacyEmergencyHandler>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 199) < 0)
    {
      operator delete(*(v2 + 176));
    }

    std::mutex::~mutex((v2 + 112));
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    std::__function::__value_func<void ()(proto::gpsd::Request_Type,gnss::Result)>::~__value_func[abi:ne200100](v2 + 40);
    std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v2 + 8);

    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::GpsdGnssDeviceManager(std::function<void ()(proto::gpsd::Response &&)>,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s>,proto::gpsd::Indication &>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D208;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::GpsdGnssDeviceManager(std::function<void ()(proto::gpsd::Response &&)>,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s>,proto::gpsd::Indication &>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::GpsdGnssDeviceManager(std::function<void ()(proto::gpsd::Response &&)>,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s>,void ()(proto::gpsd::Request_Type,gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D288;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::GpsdGnssDeviceManager(std::function<void ()(proto::gpsd::Response &&)>,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s>,void ()(proto::gpsd::Request_Type,gnss::Result)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = *(v5 + 376);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v7[3] = &__block_descriptor_tmp_46;
  v7[4] = v5;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, v7);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::GpsdGnssDeviceManager(std::function<void ()(proto::gpsd::Response &&)>,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s>,void ()(proto::gpsd::Request_Type,gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D318;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_1,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D398;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_1,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_2,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_2>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D418;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_2,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_2>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__87(uint64_t a1)
{
  v3 = *(a1 + 40);
  v1 = (a1 + 40);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](v1, v2);
  }
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__91(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_3,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_3>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D4C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_3,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_4,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_4>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D540;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_4,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_4>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureLibolafDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::configureLibolafDevice(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D5C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::configureLibolafDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::configureLibolafDevice(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::createDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::createDevice(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D640;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::createDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::createDevice(void)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v5 = *a2;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,newGnssDevice callback,%{public}d", buf, 8u);
  }

  std::promise<gnss::Result>::set_value(*(a1 + 8), &v5);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::createDevice(void)::$_0,std::allocator<GpsdGnssDeviceManager::createDevice(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 __Block_byref_object_copy__100(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 40) = result;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D7E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::operator()(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gdm,DecodedRti callback", buf, 2u);
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__110;
  v11 = __Block_byref_object_dispose__111;
  v12 = *a2;
  v5 = *(v3 + 376);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZZN21GpsdGnssDeviceManager13injectRtiFileERKN5proto4gpsd7RequestENSt3__18functionIFvN4gnss6ResultEEEEENK3__0clEONS7_10DecodedRtiE_block_invoke;
  v6[3] = &unk_10017D850;
  v6[4] = buf;
  v6[5] = v3;
  dispatch_async(v5, v6);
  _Block_object_dispose(buf, 8);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectRtiFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __Block_byref_object_copy__110(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D890;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *a2;
  *a2 = 0;
  v8 = *a3;
  *a3 = 0;
  v9 = *a6;
  *a6 = 0;
  v12 = v9;
  v10 = *a7;
  *a7 = 0;
  v11 = *(a1 + 8);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3002000000;
  v16[3] = __Block_byref_object_copy__4;
  v16[4] = __Block_byref_object_dispose__4;
  v16[5] = v7;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3002000000;
  v15[3] = __Block_byref_object_copy__82;
  v13 = 0;
  v15[4] = __Block_byref_object_dispose__83;
  v15[5] = v8;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3002000000;
  v14[3] = __Block_byref_object_copy__84;
  v14[4] = __Block_byref_object_dispose__85;
  operator new();
}

void sub_10012CF38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, uint64_t *);
  _Block_object_dispose((v5 - 224), 8);
  std::unique_ptr<std::vector<gnss::SvInfo>>::~unique_ptr[abi:ne200100]((v4 + 40));
  _Block_object_dispose((v5 - 176), 8);
  std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100]((v3 + 40));
  _Block_object_dispose((v5 - 128), 8);
  v7 = *(v5 - 88);
  *(v5 - 88) = 0;
  if (v7)
  {
    operator delete();
  }

  if (v2)
  {
    operator delete();
  }

  std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPvtmReport(proto::gpsd::SetPvtmReport const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZN21GpsdGnssDeviceManager13setPvtmReportERKN5proto4gpsd13SetPvtmReportENSt3__18functionIFvN4gnss6ResultEEEEENK3__0clENS5_10unique_ptrINS7_3FixENS5_14default_deleteISD_EEEENSC_INS7_17MeasurementReportENSE_ISH_EEEEONS5_6vectorINS7_6SvInfoENS5_9allocatorISL_EEEEONSK_INS7_23ReceiverBandCorrectionsENSM_ISQ_EEEENSC_INS7_18TimeConversionInfoENSE_ISU_EEEENSC_INS7_24KlobucharModelParametersENSE_ISX_EEEE_block_invoke(void *a1)
{
  v1 = a1[10];
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    *(v1 + 1345) = 1;
    v2 = *(a1[4] + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
  v22 = v3;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
  v20 = v7;
  v21 = v5;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
  v18 = v11;
  v19 = v9;
  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
  v17 = v13;
  GnssDeviceCommon::pvtmCallback((v1 + 8), &v22, &v21, &v20, &v19, &v18, &v17);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    operator delete();
  }

  std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](&v18);
  v15 = v19;
  v19 = 0;
  if (v15)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](&v19, v15);
  }

  std::unique_ptr<std::vector<gnss::SvInfo>>::~unique_ptr[abi:ne200100](&v20);
  std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](&v21);
  result = v22;
  v22 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10012D154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, uint64_t *);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void **);
  if (a2)
  {
    operator delete();
  }

  std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](va);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](va1, v4);
  }

  std::unique_ptr<std::vector<gnss::SvInfo>>::~unique_ptr[abi:ne200100](va2);
  std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](va3);
  v5 = *(v2 - 24);
  *(v2 - 24) = 0;
  if (v5)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setNmeaHandler(proto::gpsd::SetNmeaHandler const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setNmeaHandler(proto::gpsd::SetNmeaHandler const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::vector<std::string> &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D938;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setNmeaHandler(proto::gpsd::SetNmeaHandler const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setNmeaHandler(proto::gpsd::SetNmeaHandler const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(std::vector<std::string> &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D9B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __Block_byref_object_copy__128(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__129(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DA60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1>,void ()(gnss::Result)>::operator()(gnss::Exception *a1, _DWORD *a2)
{
  v2 = *(a1 + 1);
  if (*a2 == 1)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,start,onCompleted success", buf, 2u);
    }

    *buf = off_100179D00;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v20 = &_mh_execute_header;
    LODWORD(v7) = 22;
    v5 = gnss::Convert::toProtobuf(1u);
    if (v5 < 0xA)
    {
      HIDWORD(v20) |= 0x1000u;
      DWORD2(v12) = v5;
      GpsdIndicationHandler::sendIndication(v2 + 296, buf);
    }

    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 0x2000, "::proto::gnss::Result_IsValid(value)");
  }

  v4 = gnss::Exception::instance(a1);
  gnss::Exception::set(v4, 1);
}

void sub_10012D7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DB80;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (*a2 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,Enter Emergency Mode", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,Failed to Enter Emergency Mode,%{public}d", buf, 8u);
    }

    v5 = *(v3 + 376);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZZN21GpsdGnssDeviceManager37handleEmergencyPreemptiveStartRequestERKN5proto4gpsd7RequestEENK3__0clEN4gnss6ResultE_block_invoke;
    block[3] = &__block_descriptor_tmp_134;
    block[4] = v3;
    dispatch_async(v5, block);
  }

  v6 = *(v3 + 376);
  *buf = _NSConcreteStackBlock;
  v9 = 0x40000000;
  v10 = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v11 = &__block_descriptor_tmp_46;
  v12 = v3;
  v13 = 51;
  v14 = v2;
  dispatch_async(v6, buf);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = GpsdLogObjectGeneral;
  if (*a2 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr_start,onCompleted success", v4, 2u);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67240192;
    v4[1] = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gdm,#nilr_start,onCompleted failure,%{public}d", v4, 8u);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(proto::gpsd::Request const&)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DCA0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (*a2 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,stop,onAccepted success", v6, 2u);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v6[0]) = 67240192;
    HIDWORD(v6[0]) = v2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,stop,onAccepted failure,%{public}d", v6, 8u);
  }

  v5 = *(v3 + 376);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v6[3] = &__block_descriptor_tmp_46;
  v6[4] = v3;
  v7 = 2;
  v8 = v2;
  dispatch_async(v5, v6);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DD20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 376);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZZN21GpsdGnssDeviceManager24handleRegularStopRequestEvENK3__1clEN4gnss6ResultE_block_invoke;
  v5[3] = &__block_descriptor_tmp_135;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStopRequest(void)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZN21GpsdGnssDeviceManager24handleRegularStopRequestEvENK3__1clEN4gnss6ResultE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = GpsdLogObjectGeneral;
  if (v3 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,stop,onCompleted success", v5, 2u);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,stop,onCompleted failure,%{public}d", v5, 8u);
  }

  *(v2 + 1332) = *(a1 + 40);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DDC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (*a2 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,Exit Emergency Mode success", v6, 2u);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v6[0]) = 67240192;
    HIDWORD(v6[0]) = v2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,Exit Emergency Mode failure,%{public}d", v6, 8u);
  }

  v5 = *(v3 + 376);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v6[3] = &__block_descriptor_tmp_46;
  v6[4] = v3;
  v7 = 52;
  v8 = v2;
  dispatch_async(v5, v6);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DE40;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 376);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZZN21GpsdGnssDeviceManager36handleEmergencyPreemptiveStopRequestEvENK3__1clEN4gnss6ResultE_block_invoke;
  v5[3] = &__block_descriptor_tmp_136;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1,std::allocator<GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(void)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZN21GpsdGnssDeviceManager36handleEmergencyPreemptiveStopRequestEvENK3__1clEN4gnss6ResultE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = GpsdLogObjectGeneral;
  if (v3 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr_stop,onCompleted success", v5, 2u);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr_stop,onCompleted failure,%{public}d", v5, 8u);
  }

  *(v2 + 1332) = *(a1 + 40);
}

void std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_0,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,convertToNonBlocking,onAccepted,%{public}d", v5, 8u);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_0,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_1,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,convertToNonBlocking,onCompleted,%{public}d", v5, 8u);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_1,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_2,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_2>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,reg,onAccepted,%{public}d", v5, 8u);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_2,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_2>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_3,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_3>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E060;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_3,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_4,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_4>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,emerg,onAccepted,%{public}d", v5, 8u);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_4,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_4>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_5,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_5>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E160;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_5,std::allocator<GpsdGnssDeviceManager::deviceStopBlocking(void)::$_5>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void SuplPduLog::traceSuplPdu(SuplPduLog *this, const unsigned __int8 *a2, int a3)
{
  if (this && (v3 = a2) != 0)
  {
    v4 = this;
    memset(&__str, 0, sizeof(__str));
    do
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
      v7 = *&v29[2];
      *(&v30 + *(*&v29[2] - 24)) = *(&v30 + *(*&v29[2] - 24)) & 0xFFFFFFB5 | 8;
      *(v32 + *(v7 - 24) + 6) = 2;
      v8 = &v29[*(v7 - 24) + 2];
      if (*(v8 + 36) == -1)
      {
        std::ios_base::getloc(&v29[*(v7 - 24) + 2]);
        v9 = std::locale::use_facet(&v25, &std::ctype<char>::id);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(&v25);
      }

      *(v8 + 36) = 48;
      v10 = *v4;
      std::ostream::operator<<();
      std::stringbuf::str();
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v25;
      }

      else
      {
        v11 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v11, size);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      *buf = v24;
      *&buf[*(v24 - 24)] = v5;
      *&v29[2] = v6;
      if (v33 < 0)
      {
        operator delete(*(&v32[6] + 6));
      }

      std::locale::~locale(&v31);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v4 = (v4 + 1);
      --v3;
    }

    while (v3);
    v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = __str.__r_.__value_.__l.__size_ / 0x1F4;
      v15 = __str.__r_.__value_.__l.__size_ % 0x1F4;
    }

    else
    {
      v14 = 0;
      v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    v17 = 0;
    if (v15)
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = v14;
    }

    if (a3)
    {
      v19 = "In";
    }

    else
    {
      v19 = "Out";
    }

    v20 = 1;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_31;
    }

    while (v17 < v13)
    {
      while (1)
      {
        std::string::basic_string(&v25, &__str, v17, 0x1F4uLL, buf);
        v21 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v22 = &v25;
          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v25.__r_.__value_.__r.__words[0];
          }

          *buf = 134284291;
          *&buf[4] = v20;
          v28 = 2049;
          *v29 = v18;
          *&v29[8] = 2081;
          v30 = v22;
          v31 = 2081;
          v32[0] = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#supl,#pdu,%{private}zu,of,%{private}zu,%{private}s,%{private}s", buf, 0x2Au);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v17 += 500;
        ++v20;
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          break;
        }

LABEL_31:
        if (v17 >= __str.__r_.__value_.__l.__size_)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          return;
        }
      }
    }
  }

  else
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#supl,PDU is empty", buf, 2u);
    }
  }
}

void sub_10012F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::locale::~locale(&a13);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = a1 + 16;
  v3 = a1 + 24;
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  *(a1 + 8) = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 24));
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *(a1 + 16) = v8;
  *(v2 + *(v8 - 24)) = v7;
  *a1 = v9;
  std::locale::locale((a1 + 32));
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_10012F620(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v2;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t GpsdConnectionManager::GpsdConnectionManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10017E1E0;
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 32), "");
  *(a1 + 144) = 1018212795;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](a1 + 200, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &)>::__value_func[abi:ne200100](a1 + 232, a3);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::__value_func[abi:ne200100](a1 + 264, a4);
  std::__function::__value_func<void ()(std::string &)>::__value_func[abi:ne200100](a1 + 296, a5);
  v10 = GpsdPreferences::instance(0);
  v11 = GpsdPreferences::maxSchedulerQos(v10);
  v12 = dispatch_queue_attr_make_with_qos_class(0, v11, 0);
  if (!v12)
  {
    v13 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#supl,null queue attr", v17, 2u);
    }
  }

  v14 = dispatch_queue_create("com.apple.gpsd.suplConnMgr", v12);
  v15 = *(a1 + 64);
  *(a1 + 64) = v14;

  return a1;
}

void sub_10012F950(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v1 + 296);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::~__value_func[abi:ne200100](v1 + 264);
  std::__function::__value_func<void ()(std::vector<unsigned char> &)>::~__value_func[abi:ne200100](v1 + 232);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2[1].__cv_.__opaque);
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex(v3);

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void GpsdConnectionManager::~GpsdConnectionManager(GpsdConnectionManager *this)
{
  *this = off_10017E1E0;
  GpsdConnectionManager::closeAndCleanupStreams(this);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](this + 296);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::Status)>::~__value_func[abi:ne200100](this + 264);
  std::__function::__value_func<void ()(std::vector<unsigned char> &)>::~__value_func[abi:ne200100](this + 232);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](this + 200);
  std::condition_variable::~condition_variable(this + 3);
  std::mutex::~mutex((this + 80));

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  GpsdConnectionManager::~GpsdConnectionManager(this);

  operator delete();
}

std::string *GpsdConnectionManager::closeAndCleanupStreams(GpsdConnectionManager *this)
{
  atomic_store(0, this + 28);
  v3 = this + 8;
  v2 = *(this + 1);
  if (v2)
  {
    CFReadStreamClose(v2);
    CFRelease(*v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    CFWriteStreamClose(v4);
    CFRelease(*(this + 2));
  }

  *v3 = 0;
  *(v3 + 1) = 0;
  *(this + 6) = -1;
  result = std::string::assign((this + 32), "");
  *(this + 28) = 0;
  return result;
}

void GpsdConnectionManager::processReadSocketEvents(GpsdConnectionManager *this, __CFReadStream *a2, uint64_t a3)
{
  v4 = GpsdLogObjectGeneral;
  if (a3 == 8)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#supl,processREvent,read stream error", &v6, 2u);
    }

    *(this + 193) = 0;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#supl,processREvent,read stream opened", &v6, 2u);
    }

    *(this + 193) = 1;
    if (*(this + 195) == 1)
    {
      *(this + 192) = GpsdConnectionManager::verifySSL(this);
LABEL_10:
      GpsdConnectionManager::connProcessComplete(this);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#supl,processREvent,unsupported event,%lu", &v6, 0xCu);
  }
}

BOOL GpsdConnectionManager::verifySSL(GpsdConnectionManager *this)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v2 = *(this + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v43);
  v3 = CFDataCreate(0, v43, v44 - v43);
  if (!v3)
  {
    v21 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "suplCertData alloc", buf, 2u);
      v21 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssConnectionManager.mm";
      v49 = 1026;
      v50 = 309;
      v51 = 2082;
      v52 = "verifySSL";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v41, "assert");
    std::string::basic_string[abi:ne200100]<0>(v39, "verifySSL");
    std::string::basic_string[abi:ne200100]<0>(__p, "suplCertData alloc");
    gpsd::util::triggerDiagnosticReport(v41, v39, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    __assert_rtn("verifySSL", "GnssConnectionManager.mm", 309, "false && suplCertData alloc");
  }

  v4 = SecCertificateCreateWithData(0, v3);
  v5 = v4;
  if (v4)
  {
    values = v4;
    v6 = CFArrayCreate(0, &values, 1, 0);
    if (!v6)
    {
      v22 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "myCerts alloc", buf, 2u);
        v22 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v48 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssConnectionManager.mm";
        v49 = 1026;
        v50 = 318;
        v51 = 2082;
        v52 = "verifySSL";
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(v35, "assert");
      std::string::basic_string[abi:ne200100]<0>(v33, "verifySSL");
      std::string::basic_string[abi:ne200100]<0>(v31, "myCerts alloc");
      gpsd::util::triggerDiagnosticReport(v35, v33, v31);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 318, "false && myCerts alloc");
    }

    BasicX509 = SecPolicyCreateBasicX509();
    if (!BasicX509)
    {
      v23 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "myPolicy alloc", buf, 2u);
        v23 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v48 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssConnectionManager.mm";
        v49 = 1026;
        v50 = 321;
        v51 = 2082;
        v52 = "verifySSL";
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "assert");
      std::string::basic_string[abi:ne200100]<0>(v27, "verifySSL");
      std::string::basic_string[abi:ne200100]<0>(v25, "myPolicy alloc");
      gpsd::util::triggerDiagnosticReport(v29, v27, v25);
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 321, "false && myPolicy alloc");
    }

    v8 = CFWriteStreamCopyProperty(*(this + 2), kCFStreamPropertySSLPeerTrust);
    v9 = v8;
    if (!v8)
    {
      v15 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "#supl unable to obtain trust", buf, 2u);
      }

      v14 = 0;
      goto LABEL_20;
    }

    v10 = SecTrustSetPolicies(v8, BasicX509);
    if (v10)
    {
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v48) = v10;
        v12 = "#supl unable to set trust policy status,%{public}d";
LABEL_32:
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, buf, 8u);
      }
    }

    else
    {
      v16 = SecTrustSetAnchorCertificates(v9, v6);
      if (!v16)
      {
        v24 = 0;
        v18 = SecTrustEvaluateWithError(v9, &v24);
        v19 = v24;
        if (v24)
        {
          v14 = 0;
        }

        else
        {
          v14 = v18;
        }

        if (v14)
        {
          goto LABEL_19;
        }

        v20 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v48 = v19;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "#supl: Invalid trust (EV) error: %{public}@", buf, 0xCu);
          v19 = v24;
          if (!v24)
          {
            goto LABEL_19;
          }
        }

        else if (!v19)
        {
          goto LABEL_19;
        }

        CFRelease(v19);
        goto LABEL_19;
      }

      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v48) = v16;
        v12 = "#supl unable to set anchor certs status,%{public}d";
        goto LABEL_32;
      }
    }

    v14 = 0;
LABEL_19:
    CFRelease(v9);
LABEL_20:
    CFRelease(BasicX509);
    CFRelease(v6);
    CFRelease(v5);
    CFRelease(v3);
    goto LABEL_21;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "#supl unable to read SUPL certificate data", buf, 2u);
  }

  CFRelease(v3);
  v14 = 0;
LABEL_21:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v14;
}

void sub_1001303B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  v59 = *(v57 - 160);
  if (v59)
  {
    *(v57 - 152) = v59;
    operator delete(v59);
  }

  _Unwind_Resume(exception_object);
}

void GpsdConnectionManager::connProcessComplete(GpsdConnectionManager *this)
{
  std::mutex::lock((this + 80));
  *(this + 72) = 1;
  std::mutex::unlock((this + 80));

  std::condition_variable::notify_one(this + 3);
}

void GpsdConnectionManager::processWriteSocketEvents(GpsdConnectionManager *this, __CFWriteStream *a2, uint64_t a3)
{
  v4 = GpsdLogObjectGeneral;
  if (a3 == 8)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#supl write stream error", &v10, 2u);
    }

    *(this + 194) = 0;
    goto LABEL_14;
  }

  if (a3 == 4)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#supl write stream can accept bytes", &v10, 2u);
    }

    *(this + 195) = 1;
    if ((*(this + 193) & 1) == 0)
    {
      v9 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LOWORD(v10) = 0;
      v6 = "#supl read stream not opened yet";
      v7 = v9;
      v8 = 2;
LABEL_20:
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v6, &v10, v8);
      return;
    }

    *(this + 192) = GpsdConnectionManager::verifySSL(this);
LABEL_14:
    GpsdConnectionManager::connProcessComplete(this);
    return;
  }

  if (a3 != 1)
  {
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v10 = 134217984;
    v11 = a3;
    v6 = "#supl write event not supported event=%lu";
    v7 = v4;
    v8 = 12;
    goto LABEL_20;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#supl write stream opened", &v10, 2u);
  }

  *(this + 194) = 1;
}

void GpsdConnectionManager::connect(uint64_t a1, CFIndex a2, UInt32 a3)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *(a2 + 23);
  }

  v8 = GpsdLogObjectGeneral;
  if (!a3 || !v7)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      if ((v6 & 0x80000000) != 0)
      {
        if (*(a2 + 8))
        {
          v38 = *a2;
        }

        else
        {
          v38 = "(null)";
        }
      }

      else
      {
        v38 = "(null)";
        if (v6)
        {
          v38 = a2;
        }
      }

      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v38;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = a3;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "#supl,connect,bad inputs,serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v39 = a2;
    if ((v6 & 0x80000000) != 0)
    {
      v39 = *a2;
    }

    LODWORD(clientContext.version) = 136315394;
    *(&clientContext.version + 4) = v39;
    WORD2(clientContext.info) = 1024;
    *(&clientContext.info + 6) = a3;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#supl,connect,opening server,%s,port,%d", &clientContext, 0x12u);
  }

  v9 = atomic_load((a1 + 28));
  if (v9)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v43 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v43 = *v43;
      }

      v44 = *(a1 + 56);
      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v43;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = v44;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#supl,connect,connection still open to serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

LABEL_9:
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(a1 + 288), 4);
    return;
  }

  v11 = a2;
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
  if (!v12)
  {
    v48 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "hostNameCFStr alloc", &clientContext, 2u);
      v48 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 149;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v59, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v58, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v57, "hostNameCFStr alloc");
    gpsd::util::triggerDiagnosticReport(&v59, &v58, &v57);
    std::string::~string(&v57);
    std::string::~string(&v58);
    std::string::~string(&v59);
    __assert_rtn("connect", "GnssConnectionManager.mm", 149, "false && hostNameCFStr alloc");
  }

  CFStreamCreatePairWithSocketToHost(0, v12, a3, (a1 + 8), (a1 + 16));
  CFRelease(v12);
  keys = kCFStreamSSLValidatesCertificateChain;
  values = kCFBooleanFalse;
  v13 = CFDictionaryCreate(0, &keys, &values, 1, 0, 0);
  if (!v13)
  {
    v49 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "sslDictionary alloc", &clientContext, 2u);
      v49 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 159;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v56, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v55, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v54, "sslDictionary alloc");
    gpsd::util::triggerDiagnosticReport(&v56, &v55, &v54);
    std::string::~string(&v54);
    std::string::~string(&v55);
    std::string::~string(&v56);
    __assert_rtn("connect", "GnssConnectionManager.mm", 159, "false && sslDictionary alloc");
  }

  v14 = kCFStreamPropertyShouldCloseNativeSocket;
  CFReadStreamSetProperty(*(a1 + 8), kCFStreamPropertyShouldCloseNativeSocket, kCFBooleanTrue);
  CFWriteStreamSetProperty(*(a1 + 16), v14, kCFBooleanTrue);
  v15 = *(a1 + 224);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v16 = (*(*v15 + 48))(v15);
  v17 = GpsdLogObjectGeneral;
  v18 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#supl,connect,using LTE,service type set to Emergency", &clientContext, 2u);
    }

    v19 = &kCTDataConnectionServiceTypeEmergency;
  }

  else
  {
    if (v18)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#supl,connect,not using LTE,service type set to EmergencyLocation", &clientContext, 2u);
    }

    v19 = &kCTDataConnectionServiceTypeEmergencyLocation;
  }

  v20 = *v19;
  v21 = kCFStreamPropertyDataConnectionServiceType;
  CFReadStreamSetProperty(*(a1 + 8), kCFStreamPropertyDataConnectionServiceType, *v19);
  CFWriteStreamSetProperty(*(a1 + 16), v21, v20);
  __p[0] = 0;
  __p[1] = 0;
  v53 = 0;
  v22 = *(a1 + 320);
  if (!v22)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v22 + 48))(v22, __p);
  if (v53 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  v24 = [NSString stringWithFormat:@"%s", v23];
  v25 = kCFStreamPropertyAccountIdentifier;
  CFReadStreamSetProperty(*(a1 + 8), kCFStreamPropertyAccountIdentifier, v24);
  CFWriteStreamSetProperty(*(a1 + 16), v25, v24);
  CFReadStreamSetProperty(*(a1 + 8), kCFStreamPropertySSLSettings, v13);
  CFWriteStreamSetProperty(*(a1 + 16), kCFStreamPropertySSLSettings, v13);
  CFRelease(v13);
  clientContext.version = 0;
  clientContext.info = a1;
  memset(&clientContext.retain, 0, 24);
  *(a1 + 72) = 0;
  *(a1 + 192) = 0;
  if (!CFReadStreamSetClient(*(a1 + 8), 0xDuLL, readStreamClientCb, &clientContext))
  {
    v32 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v33 = "#supl,connect,unable to set read stream client";
LABEL_105:
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, &__lk, 2u);
LABEL_73:
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(a1 + 288), 3);
    goto LABEL_74;
  }

  if (!CFWriteStreamSetClient(*(a1 + 16), 0xDuLL, writeStreamClientCb, &clientContext))
  {
    v32 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v33 = "#supl,connect,unable to set write stream client";
    goto LABEL_105;
  }

  CFReadStreamSetDispatchQueue(*(a1 + 8), *(a1 + 64));
  CFWriteStreamSetDispatchQueue(*(a1 + 16), *(a1 + 64));
  if (!CFReadStreamOpen(*(a1 + 8)))
  {
    v34 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#supl,connect,read stream open failed", &__lk, 2u);
    }

    Status = CFReadStreamGetStatus(*(a1 + 8));
    v36 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = Status;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#supl,read stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v37 = CFReadStreamCopyError(*(a1 + 8));
    GpsdConnectionManager::logStreamErrorAndCleanup(a1, v37);
    goto LABEL_71;
  }

  if (!CFWriteStreamOpen(*(a1 + 16)))
  {
    v40 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#supl,connect,write stream open failed", &__lk, 2u);
    }

    v41 = CFWriteStreamGetStatus(*(a1 + 16));
    v42 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = v41;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#supl,write stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v37 = CFWriteStreamCopyError(*(a1 + 16));
    GpsdConnectionManager::logStreamErrorAndCleanup(a1, v37);
LABEL_71:
    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_73;
  }

  __lk.__m_ = (a1 + 80);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 80));
  v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
  do
  {
    if (*(a1 + 72))
    {
      goto LABEL_50;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v26.__d_.__rep_)
    {
      break;
    }

    v27.__d_.__rep_ = v26.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v27.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v28.__d_.__rep_)
      {
        v29 = 0;
        goto LABEL_46;
      }

      if (v28.__d_.__rep_ < 1)
      {
        if (v28.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v29 = 0x8000000000000000;
          goto LABEL_46;
        }
      }

      else if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      v29 = 1000 * v28.__d_.__rep_;
LABEL_44:
      if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_47:
        std::condition_variable::__do_timed_wait((a1 + 144), &__lk, v30);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_46:
      v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
      goto LABEL_47;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v26.__d_.__rep_);
  if (*(a1 + 72) == 1)
  {
LABEL_50:
    v31 = 0;
    goto LABEL_84;
  }

  v31 = 1;
LABEL_84:
  if (!__lk.__owns_)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
    return;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  v45 = *(a1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZN21GpsdConnectionManager7connectENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEt_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v45, block);
  if (v31)
  {
    v46 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#supl,connect,timeout waiting for connection", buf, 2u);
    }
  }

  if ((*(a1 + 193) & 1) == 0)
  {
    GpsdConnectionManager::connect(std::string,unsigned short)::$_0::operator()(a1);
LABEL_96:
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(a1 + 288), 3);
    goto LABEL_97;
  }

  if ((*(a1 + 194) & 1) == 0)
  {
    GpsdConnectionManager::connect(std::string,unsigned short)::$_1::operator()(a1);
    goto LABEL_96;
  }

  v47 = GpsdLogObjectGeneral;
  if (*(a1 + 192))
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#supl,connect,success", buf, 2u);
    }

    atomic_store(1u, (a1 + 28));
    std::string::operator=((a1 + 32), a2);
    *(a1 + 56) = a3;
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(a1 + 288), 2);
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#supl,connect,SSL failure", buf, 2u);
    }

    GpsdConnectionManager::closeAndCleanupStreams(a1);
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(a1 + 288), 3);
  }

LABEL_97:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

LABEL_74:

  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100131368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void GpsdConnectionManager::connect(std::string,unsigned short)::$_0::operator()(CFReadStreamRef *a1)
{
  Status = CFReadStreamGetStatus(a1[1]);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v5 = 134349056;
    v6 = Status;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#supl,read stream in bad state streamStatus,%{public}lu", &v5, 0xCu);
  }

  v4 = CFReadStreamCopyError(a1[1]);
  GpsdConnectionManager::logStreamErrorAndCleanup(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void GpsdConnectionManager::connect(std::string,unsigned short)::$_1::operator()(CFWriteStreamRef *a1)
{
  Status = CFWriteStreamGetStatus(a1[2]);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v5 = 134349056;
    v6 = Status;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#supl,write stream in bad state streamStatus,%{public}lu", &v5, 0xCu);
  }

  v4 = CFWriteStreamCopyError(a1[2]);
  GpsdConnectionManager::logStreamErrorAndCleanup(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void ___ZN21GpsdConnectionManager7connectENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEt_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CFReadStreamSetDispatchQueue(*(v1 + 8), 0);
  v2 = *(v1 + 16);

  CFWriteStreamSetDispatchQueue(v2, 0);
}

std::string *GpsdConnectionManager::logStreamErrorAndCleanup(GpsdConnectionManager *this, CFErrorRef err)
{
  if (err && CFErrorGetCode(err))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "domain,", 7);
    Domain = CFErrorGetDomain(err);
    CStringPtr = CFStringGetCStringPtr(Domain, 0x8000100u);
    v6 = CStringPtr;
    if (CStringPtr)
    {
      v7 = strlen(CStringPtr);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v6, v7);
      v9 = ",";
      v10 = 1;
    }

    else
    {
      v9 = "unkwn,";
      v10 = 6;
      v8 = &v20;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "streamErrCode,", 14);
    CFErrorGetCode(err);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ",streamErrDescription,", 22);
    v13 = CFErrorCopyDescription(err);
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str();
      v16 = v18 >= 0 ? &v17 : v17;
      *buf = 136446210;
      v25 = v16;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#supl,err,%{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(v17);
      }
    }

    CFRelease(v13);
    GpsdConnectionManager::closeAndCleanupStreams(this);
    v20 = v15;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    std::locale::~locale(v22);
    std::iostream::~basic_iostream();
    return std::ios::~ios();
  }

  else
  {

    return GpsdConnectionManager::closeAndCleanupStreams(this);
  }
}

void sub_100131A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t GpsdConnectionManager::getFd(GpsdConnectionManager *this)
{
  v2 = atomic_load(this + 28);
  if (v2)
  {
    v4 = (this + 24);
    result = *(this + 6);
    if (result != -1)
    {
      return result;
    }

    v5 = CFReadStreamCopyProperty(*(this + 1), kCFStreamPropertySocketNativeHandle);
    if (v5)
    {
      v6 = v5;
      v12.location = 0;
      v12.length = 4;
      CFDataGetBytes(v5, v12, this + 24);
      CFRelease(v6);
      return *v4;
    }

    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v10 = 0;
      v8 = "#supl couldn't obtain fd of fReadStream";
      v9 = &v10;
LABEL_11:
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v8 = "#supl connection not open";
      v9 = buf;
      goto LABEL_11;
    }
  }

  std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 12);
  return 4294967293;
}

CFIndex GpsdConnectionManager::read(GpsdConnectionManager *a1, uint64_t a2)
{
  std::vector<unsigned char>::vector[abi:ne200100](__p, 2048);
  Helper = GpsdConnectionManager::readHelper(a1, __p[0], __p[1] - __p[0]);
  v5 = Helper;
  if (Helper < 1)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    if (Helper <= (__p[1] - __p[0]))
    {
      if (Helper < (__p[1] - __p[0]))
      {
        __p[1] = __p[0] + Helper;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(__p, Helper - (__p[1] - __p[0]));
    }

    v6 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v6;
      operator delete(v6);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *__p;
    *(a2 + 16) = v9;
  }

  return v5;
}

void sub_100131C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFIndex GpsdConnectionManager::readHelper(GpsdConnectionManager *this, unsigned __int8 *a2, CFIndex a3)
{
  if (a2 && a3)
  {
    v6 = atomic_load(this + 28);
    if ((v6 & 1) == 0)
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v13) = 0;
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "#supl connection not open", &v13, 2u);
      }

      goto LABEL_14;
    }

    if (CFReadStreamHasBytesAvailable(*(this + 1)))
    {
      v7 = CFReadStreamRead(*(this + 1), a2, a3);
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67240192;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#supl Read retVal,%{public}d", &v13, 8u);
      }

      if ((v7 & 0x80000000) == 0)
      {
        SuplPduLog::traceSuplPdu(a2, (v7 & 0x7FFFFFFF), 1);
        return v7;
      }

LABEL_14:
      std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 6);
      return 4294967293;
    }

    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#supl CFReadStreamHasBytesAvailable failed", &v13, 2u);
    }

    return 0;
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v13 = 67240448;
      v14 = a2 == 0;
      v15 = 2050;
      v16 = a3;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "#supl bad inputs nullBuf,%{public}d,size,%{public}zu", &v13, 0x12u);
    }

    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 7);
    return 4294967292;
  }
}

CFIndex GpsdConnectionManager::writeHelper(GpsdConnectionManager *this, UInt8 *buffer, const unsigned __int8 *bufferLength)
{
  if (buffer && bufferLength)
  {
    v6 = atomic_load(this + 28);
    if (v6)
    {
      v7 = CFWriteStreamWrite(*(this + 2), buffer, bufferLength);
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#supl,writeHelper,retVal,%{public}d", &v12, 8u);
      }

      if ((v7 & 0x80000000) == 0)
      {
        SuplPduLog::traceSuplPdu(buffer, bufferLength, 0);
        return v7;
      }
    }

    else
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#supl,writeHelper,not open", &v12, 2u);
      }
    }

    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 8);
    return 4294967293;
  }

  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    v12 = 67240448;
    v13 = buffer == 0;
    v14 = 2050;
    v15 = bufferLength;
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "#supl,writeHelper,bad_inputs,nullBuf,%{public}d,size,%{public}zu", &v12, 0x12u);
  }

  std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 9);
  return 4294967292;
}

uint64_t GpsdConnectionManager::close(GpsdConnectionManager *this)
{
  v2 = atomic_load(this + 28);
  if (v2)
  {
    GpsdConnectionManager::closeAndCleanupStreams(this);
    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 10);
    return 4294967294;
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#supl,close,not_open", v5, 2u);
    }

    std::function<void ()(gnss::Emergency::Supl::Status)>::operator()(*(this + 36), 11);
    return 4294967293;
  }
}

void sub_1001321FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::vector<unsigned char> *,std::allocator<std::vector<unsigned char> *>>::emplace_back<std::vector<unsigned char> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char> *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__function::__func<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0,std::allocator<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::operator()(gnss::Exception *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 1);
  v4 = gnss::Exception::instance(a1);
  v5 = *(v3 + 16);
  gnss::Exception::set(v4, 10);
}

void sub_10013256C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0,std::allocator<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void GpsdProtobufRouter::GpsdProtobufRouter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 128) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a4;
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](a1 + 136, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](a1 + 168, a3);
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  if (*(a1 + 192))
  {
    v6 = GpsdPreferences::instance(0);
    v7 = GpsdPreferences::useNewGnssDeviceManager(v6);
    v8 = *(GpsdPlatformInfo::instance(0) + 8);
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 67240448;
      *buf_4 = v7;
      *&buf_4[4] = 1026;
      *&buf_4[6] = v8 == 107;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#router,useNewGnssDeviceManager,%{public}d,diq,%{public}d", &buf, 0xEu);
    }

    operator new();
  }

  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#router,fRemoteIndicationCallback,null", &buf, 2u);
    v10 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    buf = 136446722;
    *buf_4 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdProtobufRouter.cpp";
    *&buf_4[8] = 1026;
    v19 = 26;
    v20 = 2082;
    v21 = "GpsdProtobufRouter";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "assert");
  std::string::basic_string[abi:ne200100]<0>(v13, "GpsdProtobufRouter");
  std::string::basic_string[abi:ne200100]<0>(v11, "#router,fRemoteIndicationCallback,null");
  gpsd::util::triggerDiagnosticReport(v15, v13, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  __assert_rtn("GpsdProtobufRouter", "GpsdProtobufRouter.cpp", 26, "false && #router,fRemoteIndicationCallback,null");
}

void GpsdProtobufRouter::handleHelperRequest(uint64_t a1, proto::gpsd *a2)
{
  v4 = (a2 < 0x25) & (0x1500000004uLL >> a2);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT) && ((ProtobufUtil::stringify(a2, &__p), v10 >= 0) ? (p_p = &__p) : (p_p = __p), *buf = 136446466, *&buf[4] = p_p, *&buf[12] = 1026, *&buf[14] = v4, _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#router,handleHelperRequest,type,%{public}s,allowed,%{public}d", buf, 0x12u), SHIBYTE(v10) < 0))
  {
    operator delete(__p);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  GpsdSessionMonitor::update(*(a1 + 216));
  __p = off_100179C10;
  v31 = 0;
  v32 = 0;
  v35 = 0;
  v40 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v33 = 0;
  v34 = 0;
  v36 = 0;
  v41 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (!proto::gpsd::Request_Type_IsValid(a2))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  LODWORD(v41) = 4;
  HIDWORD(v10) = a2;
  v8 = proto::gpsd::Request::ByteSize(&__p, v7);
  std::vector<unsigned char>::vector[abi:ne200100](buf, v8);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(&__p, *buf);
  std::function<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::operator()(*(a1 + 24), buf, a2);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  proto::gpsd::Request::~Request(&__p);
}

void sub_100133E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  proto::gpsd::Request::~Request(va);
  _Unwind_Resume(a1);
}

void GpsdProtobufRouter::handleRequestEmergency(uint64_t a1, __n128 *a2, int a3)
{
  v4 = a3 - 8;
  if ((a3 - 8) > 0x3B)
  {
    goto LABEL_12;
  }

  if (((1 << v4) & 0x800000000000003) != 0)
  {
    v5 = *(a1 + 96);

    GpsdGnssDeviceRequestQueue::handleRequest(v5, a2);
    return;
  }

  if (((1 << v4) & 0x600000000000000) != 0)
  {
    v6 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    ProtobufUtil::stringify(a3, __p);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v13 = v7;
    v8 = "#router,requestFromEmergency,type,%{public}s,deprecated";
  }

  else
  {
LABEL_12:
    v6 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    ProtobufUtil::stringify(a3, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446210;
    v13 = v9;
    v8 = "#router,requestFromEmergency,type,%{public}s,unavailable";
  }

  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *std::unique_ptr<GpsdGnssDeviceRequestQueue>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<GnssWatchdog>::~unique_ptr[abi:ne200100]((v2 + 104));
    std::__function::__value_func<proto::gpsd::Request_Type ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v2 + 72);
    std::deque<std::vector<unsigned char>>::~deque[abi:ne200100]((v2 + 24));

    operator delete();
  }

  return result;
}

GnssWatchdog **std::unique_ptr<GnssWatchdog>::~unique_ptr[abi:ne200100](GnssWatchdog **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GnssWatchdog::~GnssWatchdog(v2);
    operator delete();
  }

  return a1;
}

uint64_t *std::unique_ptr<GnssEmergencyManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v2 + 32);
    std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v2);

    operator delete();
  }

  return result;
}

uint64_t std::unique_ptr<GpsdAssistanceSeeding>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__function::__value_func<void ()(proto::gpsd::Request &&)>::~__value_func[abi:ne200100](result);

    operator delete();
  }

  return result;
}

GpsdInterfaceTelemeter *std::unique_ptr<GpsdInterfaceTelemeter>::reset[abi:ne200100](GpsdInterfaceTelemeter **a1, GpsdInterfaceTelemeter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GpsdInterfaceTelemeter::~GpsdInterfaceTelemeter(result);

    operator delete();
  }

  return result;
}

uint64_t *std::unique_ptr<GpsdSessionMonitor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      v5 = *v4;
      *v4 = 0;

      operator delete();
    }

    operator delete();
  }

  return result;
}

GnssQueueWatchdog *std::unique_ptr<GnssQueueWatchdog>::reset[abi:ne200100](GnssQueueWatchdog **a1, GnssQueueWatchdog *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GnssQueueWatchdog::~GnssQueueWatchdog(result);

    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_3,std::allocator<dispatch_queue_s *>,proto::gpsd::Request_Type ()(std::vector<unsigned char> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_3,std::allocator<dispatch_queue_s *>,proto::gpsd::Request_Type ()(std::vector<unsigned char> &)>::operator()(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  v7 = off_100179C10;
  v29 = 0;
  v30 = 0;
  v33 = 0;
  v38 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v39 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (GpsdProtobufRouter::deserializeRequestProto(v3, a2, &v7))
  {
    v4 = *a2;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    (*(**(v3 + 13) + 16))(*(v3 + 13), &v7);
    v5 = HIDWORD(v8);
  }

  else
  {
    v5 = 0;
  }

  proto::gpsd::Request::~Request(&v7);
  return v5;
}

void sub_1001344E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  proto::gpsd::Request::~Request(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_3,std::allocator<dispatch_queue_s *>,proto::gpsd::Request_Type ()(std::vector<unsigned char> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_4,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Response &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E3A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_4,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Response &&)>::operator()(uint64_t a1, const proto::gpsd::Response *a2)
{
  v3 = *(a1 + 8);
  GpsdGnssDeviceRequestQueue::handleResponse(v3[12], a2);

  GpsdProtobufRouter::loggingResponse(v3, a2);
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_4,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Response &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_5,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Indication &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E430;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_5,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Indication &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E4B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_100134AB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_6,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E540;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_6,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::operator()(uint64_t a1, char **a2)
{
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::__value_func[abi:ne200100](v5, v3 + 32);
  GpsdProtobufRouter::handleRequestHelper(v3, a2, v5);
  return std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](v5);
}

void sub_100134BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_6,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_7,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E5C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_7,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 192);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_7,std::allocator<dispatch_queue_s *>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_2,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E6C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_2,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_8,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Request &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E740;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_8,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Request &&)>::operator()(uint64_t a1, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  v3 = *(a1 + 8);
  v4 = (*(*a2 + 72))(a2);
  std::vector<unsigned char>::vector[abi:ne200100](__p, v4);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(a2, __p[0]);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::__value_func[abi:ne200100](v6, v3 + 64);
  GpsdProtobufRouter::handleRequestHelper(v3, __p, v6);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10013509C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_8,std::allocator<dispatch_queue_s *>,void ()(proto::gpsd::Request &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void GpsdGnssDeviceHandler::GpsdGnssDeviceHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::__value_func[abi:ne200100](v8, a2);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100](v7, a3);
  GpsdProtobufHandler::GpsdProtobufHandler(a1, v8, v7, a4);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::~__value_func[abi:ne200100](v8);
  *a1 = off_10017E7D0;
  operator new();
}

void sub_10013524C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v17 = *(v14 + 129);
  *(v14 + 129) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *v15;
  *v15 = 0;
  if (v18)
  {
    (*(*v18 + 88))(v18);
  }

  GpsdProtobufHandler::~GpsdProtobufHandler(v14);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceHandler::handleResponseHelper(uint64_t a1, proto::gpsd *this, unsigned int a3)
{
  if ((this & 0xFFFFFFFE) != 0xE)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      ProtobufUtil::stringify(this, &v18);
      v11 = SHIBYTE(v20);
      v12 = v18;
      gnss::stringify(a3, __p);
      v13 = &v18;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136446466;
      v25 = v13;
      v26 = 2082;
      v27 = v14;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#gdm,sendResponse,%{public}s,%{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v18);
      }
    }
  }

  v18 = off_100179C88;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  IsValid = proto::gpsd::Request_Type_IsValid(this);
  if (!IsValid)
  {
    v15 = "::proto::gpsd::Request_Type_IsValid(value)";
    v16 = 7674;
    v17 = "set_request_type";
    goto LABEL_18;
  }

  HIDWORD(v21) = 1;
  LODWORD(v20) = this;
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(IsValid);
  HIDWORD(v21) |= 2u;
  v19 = MachContinuousTimeNs;
  v9 = gnss::Convert::toProtobuf(a3);
  if (v9 >= 0xA)
  {
    v15 = "::proto::gnss::Result_IsValid(value)";
    v16 = 7719;
    v17 = "set_result_code";
LABEL_18:
    __assert_rtn(v17, "GpsdProtocol.pb.h", v16, v15);
  }

  HIDWORD(v21) |= 4u;
  HIDWORD(v20) = v9;
  v10 = *(a1 + 1016);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10, &v18);
  GpsdPerformanceSummary::appendResponse(a1 + 96, this, a3);
  v18 = off_100179C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(&v18);
}

void sub_100135548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100135658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceHandler::handleRequest(GpsdGnssDeviceHandler *this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 396) & 4) == 0)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      v5 = "#gdm,Missing request type";
      v6 = v4;
      v7 = 2;
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v5, &block, v7);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v8 = *(a2 + 5);
  if (!v8 || !proto::gpsd::Request_Type_IsValid(*(a2 + 5)))
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a2 + 5);
      LODWORD(block) = 67240192;
      HIDWORD(block) = v17;
      v5 = "#gdm,Invalid request type,%{public}d";
      v6 = v12;
      v7 = 8;
      goto LABEL_17;
    }

LABEL_14:
    v13 = *(a2 + 5);
    v14 = *(this + 11);
    block = _NSConcreteStackBlock;
    v43 = 0x40000000;
    v44 = ___ZN21GpsdGnssDeviceHandler14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
    v45 = &__block_descriptor_tmp_14;
    v46 = this;
    v47 = v13;
    v48 = 4;
    dispatch_async(v14, &block);
    return;
  }

  if ((v8 & 0xFFFFFFFE) != 0xE && (v9 = GpsdLogObjectGeneral, os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG)))
  {
    ProtobufUtil::stringify(v8, &block);
    if (SHIBYTE(v44) >= 0)
    {
      p_block = &block;
    }

    else
    {
      p_block = block;
    }

    *buf = 136446210;
    v41 = p_block;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#gdm,receivedRequest,%{public}s", buf, 0xCu);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(block);
    }

    v10 = *(a2 + 5);
  }

  else
  {
    v10 = v8;
  }

  block = off_10017E8B0;
  v43 = this;
  v44 = v8;
  v45 = &block;
  switch(v10)
  {
    case 0:
    case 12:
    case 13:
    case 23:
    case 29:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v41) = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#gdm,Unexpected/deprecated request type,%{public}d", buf, 8u);
      }

      std::function<void ()(gnss::Result)>::operator()(&block, 7);
      goto LABEL_20;
    case 1:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, &block);
      v16 = v35;
      GpsdGnssDeviceHandler::handleRegularStartRequest(this, a2, v35);
      goto LABEL_19;
    case 2:
    case 3:
    case 4:
    case 27:
    case 28:
    case 32:
      v18 = *(this + 128);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, &block);
      v19 = ProtobufUtil::convert::cpbType(v10);
      v16 = v34;
      GnssDeviceManager::pushRequest(v18, v19, v34);
      goto LABEL_19;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
    case 26:
    case 31:
    case 38:
    case 39:
      v15 = *(this + 129);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, &block);
      v16 = v33;
      GpsdGnssDeviceHelper::handleRequest(v15, a2, v33);
      goto LABEL_19;
    case 34:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, &block);
      GpsdGnssDeviceHandler::createDevice(this, v38);
    case 35:
      std::function<void ()(gnss::Result)>::operator()(&block, 1);
      v21 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a2 + 24);
        if (!v22)
        {
          v22 = *(proto::gpsd::Request::default_instance_ + 192);
        }

        v23 = *(v22 + 8);
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        *buf = 136446210;
        v41 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#gdm,TERMINATION_IMMINENT,%{public}s", buf, 0xCu);
      }

      v24 = *(this + 128);
      v37[0] = off_10017E9B0;
      v37[3] = v37;
      GnssDeviceManager::prepareForTermination(v24, v37);
      v25 = v37;
      goto LABEL_48;
    case 36:
      std::function<void ()(gnss::Result)>::operator()(&block, 1);
      v28 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a2 + 24);
        if (!v29)
        {
          v29 = *(proto::gpsd::Request::default_instance_ + 192);
        }

        v30 = *(v29 + 8);
        if (*(v30 + 23) < 0)
        {
          v30 = *v30;
        }

        *buf = 136446210;
        v41 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#gdm,EXIT request via XPC,%{public}s", buf, 0xCu);
      }

      v31 = *(this + 128);
      v36[0] = off_10017EA30;
      v36[3] = v36;
      GnssDeviceManager::prepareForTermination(v31, v36);
      v25 = v36;
      goto LABEL_48;
    case 37:
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#gdm,hard clear start", buf, 2u);
      }

      GpsdPerformanceSummary::appendRequest((this + 96), a2);
      v27 = *(this + 128);
      v39[0] = off_10017E930;
      v39[3] = v39;
      GnssDeviceManager::prepareForTermination(v27, v39);
      v25 = v39;
LABEL_48:
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v25);
      goto LABEL_21;
    case 67:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, &block);
      v16 = v32;
      GpsdGnssDeviceHandler::setNwAssistanceGpsEphemeris(this, a2, v32);
LABEL_19:
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
      goto LABEL_20;
    default:
LABEL_20:
      GpsdPerformanceSummary::appendRequest((this + 96), a2);
LABEL_21:
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&block);
      break;
  }
}

void sub_100135C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17 - 128);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHandler::handleRegularStartRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  HIDWORD(v12) = 1;
  if ((*(a2 + 399) & 8) != 0)
  {
    v8 = *(a2 + 216);
    if (!v8)
    {
      v8 = *(proto::gpsd::Request::default_instance_ + 216);
    }

    ProtobufUtil::convert::cpbStartContext(v8, v13);
    *(&v13[0] + 1) = ProtobufUtil::decodeCoexConfig(a2, v9);
    v10 = *(a1 + 1024);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
    GnssDeviceManager::pushRequest(v10, &v12, v15);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,startContext,missing", v11, 2u);
    }

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHandler::setNwAssistanceGpsEphemeris(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = GpsdLogObjectGeneral;
  if ((*(a2 + 400) & 0x20) != 0)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsNavigationModel", v6, 2u);
    }

    operator new();
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,GpsNavigationModel payload is missing", v6, 2u);
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_100136034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHandler::injectLtlInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 399) & 4) != 0)
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void GpsdGnssDeviceHandler::~GpsdGnssDeviceHandler(GpsdGnssDeviceHandler *this)
{
  GpsdGnssDeviceHandler::~GpsdGnssDeviceHandler(this);

  operator delete();
}

{
  *this = off_10017E7D0;
  v2 = *(this + 129);
  *(this + 129) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(this + 128);
  *(this + 128) = 0;
  if (v3)
  {
    (*(*v3 + 88))(v3);
  }

  GpsdProtobufHandler::~GpsdProtobufHandler(this);
}

void *std::__function::__func<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_10017E830;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_10017E830;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete();
}

void std::__function::__func<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,createDevice,reponse,%{public}d", v6, 8u);
  }

  return std::function<void ()(gnss::Result)>::operator()(a1 + 8, v3);
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceHandler::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_10017E8B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v3 + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN21GpsdGnssDeviceHandler14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v6[3] = &__block_descriptor_tmp_14;
  v6[4] = v3;
  v7 = v4;
  v8 = v2;
  dispatch_async(v5, v6);
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_1>,void ()(void)>::operator()()
{
  GnssHal::PlatformNvStore::PlatformNvStore(v5);
  GnssHal::PlatformNvStore::clearSessionStorage(v5);
  GnssHal::PlatformNvStore::clearPermanentStorage(v5);
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,hard clear done", __p, 2u);
  }

  v1 = std::string::basic_string[abi:ne200100]<0>(__p, "hard clear");
  v2 = GpsdRuntime::instance(v1);
  GpsdRuntime::bounceExit(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  GnssHal::PlatformNvStore::~PlatformNvStore(v5);
}

void sub_1001368FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  GnssHal::PlatformNvStore::~PlatformNvStore(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_2,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_2>,void ()(void)>::operator()(GpsdRuntime *a1)
{
  v1 = GpsdRuntime::instance(a1);

  GpsdRuntime::forceExit(v1, "Request::TERMINATION_IMMINENT");
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_2,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_3,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_3>,void ()(void)>::operator()()
{
  v0 = GpsdLogObjectGeneral;
  v1 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,Completed exit preparations", __p, 2u);
  }

  v2 = GpsdRuntime::instance(v1);
  std::string::basic_string[abi:ne200100]<0>(__p, "Request::Exit");
  GpsdRuntime::bounceExit(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100136BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_3,std::allocator<GpsdGnssDeviceHandler::handleRequest(proto::gpsd::Request const&)::$_3>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void handleNSDataHelper(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    std::vector<unsigned char>::vector[abi:ne200100](&__p, v4);
    [v3 getBytes:__p length:v8 - __p];
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &__p);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gem,sendRequestToDeviceCallback, received request of zero length", &__p, 2u);
    }
  }
}

uint64_t GnssEmergencyManager::GnssEmergencyManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](a1, a2);
  v6 = std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](v5 + 32, a3);
  *(a1 + 64) = *GpsdRuntime::instance(v6);
  *(a1 + 72) = 0;
  v31[4] = a1;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke;
  v32[3] = &__block_descriptor_40_e16_v16__0__NSData_8l;
  v32[4] = a1;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_3;
  v31[3] = &__block_descriptor_40_e16_v16__0__NSData_8l;
  v7 = [[CoreGnssEmergencyManager alloc] initForComm:v32 sendIndicationToRemoteCallback:v31 dispatch_queue_t:*(a1 + 64)];
  v8 = fExternGem;
  fExternGem = v7;

  if (!*(a1 + 24))
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#gem,fSendRequestToDevice,nullptr", buf, 2u);
      v10 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssEmergencyManager.mm";
      v35 = 1026;
      v36 = 44;
      v37 = 2082;
      v38 = "GnssEmergencyManager";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v30, "assert");
    std::string::basic_string[abi:ne200100]<0>(v28, "GnssEmergencyManager");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gem,fSendRequestToDevice,nullptr");
    gpsd::util::triggerDiagnosticReport(v30, v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v11 = "false && #gem,fSendRequestToDevice,nullptr";
    v12 = 44;
    if ((v30[23] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v13 = v30;
LABEL_35:
    operator delete(*v13);
    goto LABEL_36;
  }

  if (!*(a1 + 56))
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#gem,fSendIndicationToRemote,nullptr", buf, 2u);
      v14 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssEmergencyManager.mm";
      v35 = 1026;
      v36 = 45;
      v37 = 2082;
      v38 = "GnssEmergencyManager";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "assert");
    std::string::basic_string[abi:ne200100]<0>(v23, "GnssEmergencyManager");
    std::string::basic_string[abi:ne200100]<0>(v21, "#gem,fSendIndicationToRemote,nullptr");
    gpsd::util::triggerDiagnosticReport(v25, v23, v21);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v11 = "false && #gem,fSendIndicationToRemote,nullptr";
    v12 = 45;
    if ((v25[23] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v13 = v25;
    goto LABEL_35;
  }

  if (!fExternGem)
  {
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#gem,fExternGem,nullptr", buf, 2u);
      v15 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GnssEmergencyManager.mm";
      v35 = 1026;
      v36 = 46;
      v37 = 2082;
      v38 = "GnssEmergencyManager";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "assert");
    std::string::basic_string[abi:ne200100]<0>(v18, "GnssEmergencyManager");
    std::string::basic_string[abi:ne200100]<0>(v16, "#gem,fExternGem,nullptr");
    gpsd::util::triggerDiagnosticReport(v20, v18, v16);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v11 = "false && #gem,fExternGem,nullptr";
    v12 = 46;
    if ((v20[23] & 0x80000000) != 0)
    {
      v13 = v20;
      goto LABEL_35;
    }

LABEL_36:
    __assert_rtn("GnssEmergencyManager", "GnssEmergencyManager.mm", v12, v11);
  }

  return a1;
}

void ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_2;
  v7[3] = &unk_10017EAA8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](v3, *(a1 + 40));
  handleNSDataHelper(v1, v3);
  return std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v3);
}

void sub_10013744C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_4;
  v7[3] = &unk_10017EAA8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t ___ZN20GnssEmergencyManagerC2ENSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEES8__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](v3, *(a1 + 40) + 32);
  handleNSDataHelper(v1, v3);
  return std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v3);
}

void sub_100137578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdAssistanceSeeding::GpsdAssistanceSeeding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = a3;
    *(a1 + 40) = 0;
    goto LABEL_21;
  }

  if (v5 == a2)
  {
    *(a1 + 24) = a1;
    (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = (*(*v5 + 16))(v5);
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  if (!v6)
  {
LABEL_21:
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#gnssseeding,fRequestHandlerRemote,null", buf, 2u);
      v12 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdAssistanceSeeding.cpp";
      v25 = 1026;
      v26 = 23;
      v27 = 2082;
      v28 = "GpsdAssistanceSeeding";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "assert");
    std::string::basic_string[abi:ne200100]<0>(v20, "GpsdAssistanceSeeding");
    std::string::basic_string[abi:ne200100]<0>(v18, "#gnssseeding,fRequestHandlerRemote,null");
    gpsd::util::triggerDiagnosticReport(v22, v20, v18);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v9 = "false && #gnssseeding,fRequestHandlerRemote,null";
    v10 = 23;
    if (v22[23] < 0)
    {
      v11 = v22;
      goto LABEL_18;
    }

LABEL_19:
    __assert_rtn("GpsdAssistanceSeeding", "GpsdAssistanceSeeding.cpp", v10, v9);
  }

  if (!a3)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#gnssseeding,fGnssDeviceQ,null", buf, 2u);
      v8 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdAssistanceSeeding.cpp";
      v25 = 1026;
      v26 = 24;
      v27 = 2082;
      v28 = "GpsdAssistanceSeeding";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "assert");
    std::string::basic_string[abi:ne200100]<0>(v15, "GpsdAssistanceSeeding");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gnssseeding,fGnssDeviceQ,null");
    gpsd::util::triggerDiagnosticReport(v17, v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v9 = "false && #gnssseeding,fGnssDeviceQ,null";
    v10 = 24;
    if ((v17[23] & 0x80000000) != 0)
    {
      v11 = v17;
LABEL_18:
      operator delete(*v11);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  return a1;
}

void sub_100137914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  std::__function::__value_func<void ()(proto::gpsd::Request &&)>::~__value_func[abi:ne200100](v38);
  _Unwind_Resume(a1);
}

void GpsdAssistanceSeeding::handleRequest(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  v2 = *(a2 + 5);
  if (v2 > 23)
  {
    if (v2 == 24)
    {

      GpsdAssistanceSeeding::configureSimulatorMode(this, a2);
    }

    else
    {
      if (v2 != 39)
      {
LABEL_12:
        v3 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v4[0] = 67240192;
          v4[1] = v2;
          _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gnssseeding,handleRequest,invalid request type,%{public}d", v4, 8u);
        }

        return;
      }

      GpsdAssistanceSeeding::saveAndInjectRavenOrbitFile(this, a2);
    }
  }

  else
  {
    if (v2 != 10)
    {
      if (v2 == 11)
      {

        GpsdAssistanceSeeding::saveAndInjectRTI(this, a2);
        return;
      }

      goto LABEL_12;
    }

    GpsdAssistanceSeeding::saveAndInjectOrbitPredictions(this, a2);
  }
}

void GpsdAssistanceSeeding::saveAndInjectOrbitPredictions(NSObject **this, const proto::gpsd::Request *a2)
{
  v3 = GpsdAssistanceSeeding::saveAssistanceFile(this, a2);
  if (v3)
  {
    v4 = this[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
    v6[3] = &__block_descriptor_tmp_15;
    v6[4] = this;
    v7 = 10;
    v8 = v3;
    dispatch_async(v4, v6);
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gnssseeding,saveAndInjectOrbitPredictions,invalid svpos source", v6, 2u);
    }
  }
}

void GpsdAssistanceSeeding::saveAndInjectRTI(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  if (GpsdAssistanceSeeding::saveRtiFile(this, a2))
  {
    v3 = *(this + 4);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
    v4[3] = &__block_descriptor_tmp_15;
    v4[4] = this;
    v4[5] = 11;
    dispatch_async(v3, v4);
  }
}

void GpsdAssistanceSeeding::saveAndInjectRavenOrbitFile(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  if (GpsdAssistanceSeeding::saveRavenOrbitFile(this, a2))
  {
    v3 = *(this + 4);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
    v4[3] = &__block_descriptor_tmp_15;
    v4[4] = this;
    v4[5] = 39;
    dispatch_async(v3, v4);
  }
}

uint64_t GpsdAssistanceSeeding::configureSimulatorMode(uint64_t this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 398) & 0x20) != 0)
  {
    v2 = *(a2 + 21);
    if (!v2)
    {
      v2 = *(proto::gpsd::Request::default_instance_ + 168);
    }

    if (*(v2 + 20))
    {
      *(this + 40) = *(v2 + 8);
    }
  }

  return this;
}

void GpsdAssistanceSeeding::sendAssistanceFile(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
  v4[3] = &__block_descriptor_tmp_15;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

uint64_t GpsdAssistanceSeeding::saveAssistanceFile(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 397) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    v4 = *(proto::gpsd::Request::default_instance_ + 120);
  }

  v5 = *(v4 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "#gnssseeding,SAVING_ASSISTANCE_FILE missing arguments", &buf, 2u);
    }

    return 0;
  }

  v9 = *(v4 + 8);
  v43 = 0;
  v44 = 0;
  __p = 0;
  if ((v5 & 2) == 0 || (v10 = *(v4 + 16), v10 == 1))
  {
    v22 = *(v9 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v23 = v9;
      v9 = *v9;
      v22 = *(v23 + 8);
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, v9, (v9 + v22), v22);
    v24 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v43 - __p;
    v19 = "#gnssseeding,SAVING_ASSISTANCE_FILE,saving uncompressed assistance file,size,%{public}zu";
    v20 = v24;
    v21 = 12;
    goto LABEL_21;
  }

  if (v10 != 2)
  {
    v27 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67240192;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
    v28 = "#gnssseeding,SAVING_ASSISTANCE_FILE,file has unknown compression,%{public}d";
    v29 = v27;
    v30 = 8;
LABEL_57:
    _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, v28, &buf, v30);
    goto LABEL_48;
  }

  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  v12 = CompressionUtil::decode(v9, &__p, COMPRESSION_LZMA);
  v13 = GpsdLogObjectGeneral;
  if (!v12)
  {
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    v40 = *(v9 + 23);
    if ((v40 & 0x8000000000000000) != 0)
    {
      v40 = *(v9 + 8);
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v40;
    v28 = "#gnssseeding,SAVING_ASSISTANCE_FILE,failed to decompress assistance file,lzma,%{public}zu";
    v29 = v13;
    v30 = 12;
    goto LABEL_57;
  }

  v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    v15 = *(v9 + 23);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v15 = *(v9 + 8);
    }

    v17 = __p;
    v16 = v43;
    v18 = gpsd::util::getMachContinuousTimeNs(v14);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v15;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v16 - v17;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v47 = v18 * 0.000000001 - MachContinuousTimeNs * 0.000000001;
    v19 = "#gnssseeding,SAVING_ASSISTANCE_FILE,saving assistance file,lzma,%{public}zu,raw,%{public}zu,decodeTimeSec,%{public}.3f";
    v20 = v13;
    v21 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &buf, v21);
  }

LABEL_22:
  if (__p != v43)
  {
    v25 = *(a2 + 15);
    if (!v25)
    {
      v25 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    if ((*(v25 + 28) & 4) != 0)
    {
      v7 = *(v25 + 20);
    }

    else
    {
      v7 = 5;
      v26 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v26 <= 4 && ((1 << v26) & 0x19) != 0)
      {
        if ((v43 - __p) >> 4 >= 0xC35)
        {
          v7 = 5;
        }

        else
        {
          v7 = 6;
        }
      }
    }

    GpsdAssistanceSeeding::getAssistanceFilePath(v7, *(this + 40), &v45);
    buf = v45;
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v45.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v33 = gpsd::util::writeVectorToClassDFile(&__p, &buf);
      v34 = GpsdLogObjectGeneral;
      if (!v33)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v45.__r_.__value_.__l.__data_) = 136380675;
          *(v45.__r_.__value_.__r.__words + 4) = p_buf;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVING_ASSISTANCE_FILE,failed to save file,%{private}s", &v45, 0xCu);
        }

        goto LABEL_50;
      }

      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_52;
      }

      v35 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v45.__r_.__value_.__l.__data_) = 136380675;
      *(v45.__r_.__value_.__r.__words + 4) = v35;
      v36 = "#gnssseeding,SAVING_ASSISTANCE_FILE,success,%{private}s";
      v37 = v34;
      v38 = 12;
    }

    else
    {
      v39 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      LODWORD(v45.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v45.__r_.__value_.__r.__words[0]) = v7;
      v36 = "#gnssseeding,SAVING_ASSISTANCE_FILE,invalid file path,%{public}d";
      v37 = v39;
      v38 = 8;
    }

    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, &v45, v38);
    goto LABEL_50;
  }

  v31 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVING_ASSISTANCE_FILE,data blob empty", &buf, 2u);
  }

LABEL_48:
  v7 = 0;
LABEL_52:
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_100138354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL GpsdAssistanceSeeding::saveRtiFile(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 398) & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v3 = *(proto::gpsd::Request::default_instance_ + 128);
  }

  if (*(v3 + 20))
  {
    v7 = *(v3 + 8);
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      v7 = *v7;
      v8 = *(*(v3 + 8) + 8);
    }

    __p = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v7, v7 + v8, v8);
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = v15 - __p;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#gnssseeding,Saving RTI file,size,%{public}zu", &buf, 0xCu);
    }

    if (__p == v15)
    {
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RTI_FILE,data blob empty", &buf, 2u);
      }

      v5 = 0;
    }

    else
    {
      GpsdAssistanceSeeding::getRTIFilePath(this, &buf);
      v5 = gpsd::util::writeVectorToClassDFile(&__p, &buf);
      v10 = GpsdLogObjectGeneral;
      if (v5)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v17 = 136380675;
          v18 = p_buf;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#gnssseeding,SAVE_RTI_FILE,success,%{private}s", v17, 0xCu);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v13 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = buf.__r_.__value_.__r.__words[0];
        }

        *v17 = 136380675;
        v18 = v13;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RTI_FILE,saving failed,%{private}s", v17, 0xCu);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
LABEL_5:
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RTI_FILE,missing arguments", &__p, 2u);
    }

    return 0;
  }

  return v5;
}

void sub_10013863C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL GpsdAssistanceSeeding::saveRavenOrbitFile(GpsdAssistanceSeeding *this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 399) & 0x40) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(a2 + 30);
  if (!v3)
  {
    v3 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  if (*(v3 + 20))
  {
    v7 = *(v3 + 8);
    v16 = 0;
    v17 = 0;
    *v15 = 0;
    v8 = v7[23];
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = v7;
      v7 = *v7;
      v8 = *(v9 + 1);
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(v15, v7, &v7[v8], v8);
    if (*v15 == v16)
    {
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RAVEN_ORBIT_FILE,data blob empty", &__p, 2u);
      }

      v5 = 0;
    }

    else
    {
      GpsdAssistanceSeeding::getRavenOrbitFilePath(this, &__p);
      v5 = gpsd::util::writeVectorToClassDFile(v15, &__p);
      v10 = GpsdLogObjectGeneral;
      if (v5)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136380675;
          v19 = p_p;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#gnssseeding,SAVE_RAVEN_ORBIT_FILE,success,%{private}s", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v13 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136380675;
        v19 = v13;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RAVEN_ORBIT_FILE,saving failed,%{private}s", buf, 0xCu);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (*v15)
    {
      v16 = *v15;
      operator delete(*v15);
    }
  }

  else
  {
LABEL_5:
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gnssseeding,SAVE_RAVEN_ORBIT_FILE,missing arguments", v15, 2u);
    }

    return 0;
  }

  return v5;
}

void sub_1001388CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}