uint64_t GpsdProtobufHandler::GpsdProtobufHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_100171BA8;
  v7 = a1 + 96;
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100](v34, a3);
  GpsdIndicationHandler::GpsdIndicationHandler((a1 + 8), v7, v34, a4);
  v8 = std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v34);
  v9 = 0;
  *(a1 + 88) = a4;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 176) = _Q1;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 203) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 368) = -1082130432;
  *(a1 + 384) = -1;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xBFF0000000000000;
  *(a1 + 360) = 0;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  *(a1 + 440) = 0xBFF0000000000000;
  *(a1 + 448) = _Q1;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0xBFF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 496) = _Q1;
  *(a1 + 512) = xmmword_100142B80;
  *(a1 + 528) = _Q1;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 640) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 560) = 0u;
  do
  {
    v15 = a1 + v9;
    *(v15 + 720) = 0;
    *(v15 + 728) = 0;
    v9 += 16;
  }

  while (v9 != 112);
  *(a1 + 712) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  for (i = 720; i != 832; i += 16)
  {
    v17 = a1 + i;
    *v17 = 0;
    *(v17 + 8) = 0;
  }

  *(a1 + 896) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 280) = gpsd::util::getMachContinuousTimeNs(v8) * 0.000000001;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  for (j = 720; j != 832; j += 16)
  {
    v19 = a1 + j;
    *v19 = 0;
    *(v19 + 8) = 0;
  }

  *(a1 + 896) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 904) = 0xBFF0000000000000;
  *(a1 + 912) = 0xBFF0000000000000;
  *(a1 + 920) = 0;
  *(a1 + 928) = 850045863;
  *(a1 + 984) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  std::__function::__value_func<void ()(proto::gpsd::Response &&)>::__value_func[abi:ne200100](a1 + 992, a2);
  if (!*(a2 + 24))
  {
    v21 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "responseCallback,nullptr", buf, 2u);
      v21 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdProtobufHandler.cpp";
      v30 = 1026;
      v31 = 177;
      v32 = 2082;
      v33 = "GpsdProtobufHandler";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "assert");
    std::string::basic_string[abi:ne200100]<0>(v24, "GpsdProtobufHandler");
    std::string::basic_string[abi:ne200100]<0>(__p, "responseCallback,nullptr");
    gpsd::util::triggerDiagnosticReport(v26, v24, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    __assert_rtn("GpsdProtobufHandler", "GpsdProtobufHandler.cpp", 177, "false && responseCallback,nullptr");
  }

  return a1;
}

void sub_1000410D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  GpsdPerformanceSummary::~GpsdPerformanceSummary(v28);
  GpsdIndicationHandler::~GpsdIndicationHandler((v27 + 8));
  _Unwind_Resume(a1);
}

void GpsdIndicationHandler::~GpsdIndicationHandler(GpsdAbmUtil **this)
{
  *this = off_100171AF0;
  std::unique_ptr<GpsdAbmUtil>::reset[abi:ne200100](this + 8, 0);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100]((this + 3));
}

{
  *this = off_100171AF0;
  std::unique_ptr<GpsdAbmUtil>::reset[abi:ne200100](this + 8, 0);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100]((this + 3));

  operator delete();
}

{
  *this = off_100171AF0;
  std::unique_ptr<GpsdAbmUtil>::reset[abi:ne200100](this + 8, 0);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100]((this + 3));
}

void *std::function<void ()(proto::gpsd::Indication &&)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_10004157C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void GpsdPerformanceSummary::~GpsdPerformanceSummary(std::mutex *this)
{
  std::mutex::~mutex(this + 13);
  v2 = *&this[12].__m_.__opaque[48];
  *&this[12].__m_.__opaque[48] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

GpsdAbmUtil *std::unique_ptr<GpsdAbmUtil>::reset[abi:ne200100](GpsdAbmUtil **a1, GpsdAbmUtil *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GpsdAbmUtil::~GpsdAbmUtil(result);

    operator delete();
  }

  return result;
}

void GpsdAbmUtil::~GpsdAbmUtil(GpsdAbmUtil *this)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](this + 24);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__function::__value_func<void ()(proto::gpsd::Response &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void VendorLogger::Config::~Config(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s *>,void ()(std::basic_string<char,std::char_traits<char>,GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0<char>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100171C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0,std::allocator<dispatch_queue_s *>,void ()(std::basic_string<char,std::char_traits<char>,GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_0<char>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s *>,proto::gpsd::Indication &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100171C98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdIndicationHandler::GpsdIndicationHandler(GpsdPerformanceSummary &,std::function<void ()(proto::gpsd::Indication &&)>,dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s *>,proto::gpsd::Indication &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(proto::gpsd::Response &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GnssHal::ExtensionsCommon::ExtensionsCommon(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = off_100171D28;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#hal,ExtensionsCommon,extensionsUtil,%{public}p", &v7, 0xCu);
  }

  return a1;
}

{
  return GnssHal::ExtensionsCommon::ExtensionsCommon(a1, a2, a3);
}

char *GnssHal::ExtensionsCommon::getGpsWeekFromBuildDate(GnssHal::ExtensionsCommon *this)
{
  if (*(this + 8))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

void GnssHal::ExtensionsCommon::setGnssChipInfo(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = 136446467;
    v9 = v6;
    v10 = 2081;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#hal,chipVersion,%{public}s,serial,%{private}s", &v8, 0x16u);
  }
}

uint64_t GnssHal::ExtensionsCommon::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void GnssHal::ExtensionsCommon::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

id GnssHal::ExtensionsCommon::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

uint64_t GnssHal::ExtensionsCommon::isStandaloneBeiDouSupportRequired(GnssHal::ExtensionsCommon *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(**v2)(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 2);
    v7 = 134349312;
    v8 = v5;
    v9 = 1026;
    v10 = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "hal,#sbsr,%{public}p,%{public}d", &v7, 0x12u);
  }

  return v3 & 1;
}

id GnssHal::ExtensionsCommon::debugFeaturesBitmask(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsCommon::platformSpecificFeaturesBitmask(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsCommon::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

void GnssDeviceManager::GnssDeviceManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &off_100171EC0;
  GnssDeviceCommon::GnssDeviceCommon(a1 + 8, a2);
  *a1 = &off_100171DD0;
  *(a1 + 8) = off_100171E40;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a3;
  *(a1 + 336) = 0;
  *(a1 + 368) = 0;
  bzero((a1 + 376), 0x3D0uLL);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349568;
    v7 = a1 + 376;
    v8 = 2050;
    v9 = 120;
    v10 = 2050;
    v11 = 8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MessageQueue,%{public}p,size,%{public}zu,%{public}zu", &v6, 0x20u);
  }

  *(a1 + 1376) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  operator new();
}

void sub_1000423BC(_Unwind_Exception *a1)
{
  std::unique_ptr<GnssWatchdog>::reset[abi:ne200100]((v1 + 1488), 0);
  GnssDeviceManager::SidePayload::~SidePayload(v2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 1384);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v1 + 1352);
  if (*(v1 + 368) == 1)
  {
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 336);
  }

  v4 = *(v1 + 288);
  *(v1 + 288) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(v1 + 16);
  *(v1 + 8) = off_100172870;
  *(v1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1000425CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceManager::setPowerReport(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = off_100171F20;
  v5[1] = a1;
  v5[3] = v5;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a2);
  (*(*v2 + 216))(v2, v5, v4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v5);
}

void sub_1000426D8(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t GnssDeviceManager::setPvtmReport(uint64_t a1, uint64_t a2)
{
  v4 = GpsdPreferences::instance(0);
  v5 = GpsdPreferences::enableMeasurementApi(v4);
  v23[0] = off_100171FB0;
  v23[1] = a1;
  v23[3] = v23;
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241472;
    v12 = 1;
    v13 = 1026;
    v14 = v5;
    v15 = 1026;
    v16 = v5;
    v17 = 1026;
    v18 = v5;
    v19 = 1026;
    v20 = v5;
    v21 = 1026;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,configureDevice,enabled PVTM,pvt,%{public}d,meas,%{public}d,extmeas,%{public}d,svinfo,%{public}d,rxcorr,%{public}d,timeinfo,%{public}d", buf, 0x26u);
  }

  v7 = *(a1 + 16);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v10, v23);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a2);
  (*(*v7 + 64))(v7, 1, v5, v5, v5, v5, v5, v10, v9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v10);
  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v23);
}

void sub_100042890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceManager::sendDeviceStatus(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v8 = *(a1 + 16) != 0;
  v9 = *(a1 + 304);
  if (v4)
  {
    v7 = gpsd::util::getMachContinuousTimeNs(a1) - *(a1 + 24);
  }

  (*(**(a1 + 224) + 16))(*(a1 + 224), v6);
  return std::function<void ()(gnss::Result)>::operator()(a2, 1);
}

void GnssDeviceManager::createDevice(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v3, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
  v2[7] = 0;
  operator new();
}

void GnssDeviceManager::onNewGnssDevice(unint64_t *a1, int a2)
{
  if (a2 != 1)
  {
    v3 = gnss::Exception::instance(a1);
    gnss::Exception::set(v3, 9);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buf = 0u;
  v5 = 0u;
  *&buf[12] = 7;
  MessageQueue<cproto::gpsd::Request,8ul>::push(a1 + 47, buf);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buf = 0u;
  v5 = 0u;
  *&buf[12] = 23;
  MessageQueue<cproto::gpsd::Request,8ul>::push(a1 + 47, buf);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buf = 0u;
  v5 = 0u;
  *&buf[12] = 6;
  MessageQueue<cproto::gpsd::Request,8ul>::push(a1 + 47, buf);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buf = 0u;
  v5 = 0u;
  *&buf[12] = 25;
  MessageQueue<cproto::gpsd::Request,8ul>::push(a1 + 47, buf);
}

void sub_100042D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssDeviceManager::prepareForTermination(uint64_t a1, uint64_t a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,Preparing for termination", v11, 2u);
    v4 = GpsdLogObjectGeneral;
  }

  v5 = *(a1 + 16);
  v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v6)
    {
      if (*(a1 + 304) == 1)
      {
        v7 = *(a1 + 296);
      }

      else
      {
        v7 = 0;
      }

      if (*(a1 + 320) == 1)
      {
        v9 = *(a1 + 312);
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v11[0]) = 134349312;
      *(v11 + 4) = v7;
      WORD6(v11[0]) = 2050;
      *(v11 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,prepareForTermination,start,%{public}llu,ms,stop,%{public}llu,ms", v11, 0x16u);
    }

    if (*(a1 + 320) == 1)
    {
      std::function<void ()(void)>::operator=((a1 + 1352), a2);
      return;
    }

    if (*(a1 + 304) == 1)
    {
      std::function<void ()(void)>::operator=((a1 + 1352), a2);
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      HIDWORD(v11[0]) = 2;
      MessageQueue<cproto::gpsd::Request,8ul>::push((a1 + 376), v11);
      return;
    }
  }

  else if (v6)
  {
    v8 = *(a1 + 288);
    LODWORD(v11[0]) = 134349312;
    *(v11 + 4) = 0;
    WORD6(v11[0]) = 2050;
    *(v11 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,stopBlocking,initiated,device,%{public}p,helper,%{public}p,return", v11, 0x16u);
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
}

void GnssDeviceManager::noteInjectionOfAssistanceThatCanSpinUpChip(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 304) & 1) == 0 && a2 <= 0x1D && ((1 << a2) & 0x230C0F00) != 0)
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
  }
}

uint64_t GnssDeviceManager::deviceResponseCallback(_BOOL8 a1, int a2)
{
  v2 = a1;
  if (a2 != 1)
  {
    v4 = GpsdLogObjectGeneral;
    a1 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      v7 = atomic_load((v2 + 384));
      v8 = *(v2 + 120 * (v7 & 7) + 404);
      *buf = 67240448;
      v11 = a2;
      v12 = 1026;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,response,error,%{public}d,type,%{public}d", buf, 0xEu);
    }
  }

  v5 = GpsdRuntime::instance(a1);
  v9[0] = off_1001720C0;
  v9[1] = v2;
  v9[3] = v9;
  GpsdRuntime::asyncDevice(v5, v9);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

uint64_t GnssDeviceManager::sendIndication(gpsd::util *a1, unsigned int a2, int a3)
{
  v6 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5[0] = a2;
  LODWORD(v6) = a3;
  v5[1] = gpsd::util::getMachContinuousTimeNs(a1);
  return (*(**(a1 + 28) + 24))(*(a1 + 28), v5);
}

uint64_t GnssDeviceManager::pushResponse(uint8_t *a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 24))
  {
    v4 = a1 + 336;
    if (a1[368] == 1 && ((v5 = GpsdLogObjectGeneral, !os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR)) || (*buf = 0, _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gdm,newRequest when there is pending fPendingPushResponse", buf, 2u), (v2[368] & 1) != 0)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](buf, a2);
      if (buf != v4)
      {
        v6 = v14;
        v7 = *(v2 + 45);
        if (v14 == buf)
        {
          if (v7 == v4)
          {
            (*(*v14 + 24))();
            (*(*v14 + 32))(v14);
            v14 = 0;
            (*(**(v2 + 45) + 24))(*(v2 + 45), buf);
            (*(**(v2 + 45) + 32))(*(v2 + 45));
            *(v2 + 45) = 0;
            v14 = buf;
            (*(v15[0] + 24))(v15, v2 + 336);
            (*(v15[0] + 32))(v15);
          }

          else
          {
            (*(*v14 + 24))();
            (*(*v14 + 32))(v14);
            v14 = *(v2 + 45);
          }

          *(v2 + 45) = v4;
        }

        else if (v7 == v4)
        {
          (*(*v7 + 24))(*(v2 + 45), buf);
          (*(**(v2 + 45) + 32))(*(v2 + 45));
          *(v2 + 45) = v14;
          v14 = buf;
        }

        else
        {
          v14 = *(v2 + 45);
          *(v2 + 45) = v6;
        }
      }

      a1 = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](buf);
    }

    else
    {
      a1 = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((v2 + 336), a2);
      v2[368] = 1;
    }
  }

  v8 = GpsdRuntime::instance(a1);
  v12[0] = off_1001721C0;
  v12[1] = v2;
  v12[3] = v12;
  GpsdRuntime::asyncDevice(v8, v12);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
  if (v2[368])
  {
    v10 = atomic_load(v2 + 47);
    v11 = atomic_load(v2 + 48);
    if (v10 == v11)
    {
      if ((v2[368] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      result = std::function<void ()(gnss::Result)>::operator()((v2 + 336), 1);
      if (v2[368] == 1)
      {
        result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((v2 + 336));
        v2[368] = 0;
      }
    }
  }

  return result;
}

void sub_100043580(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssDeviceManager::pushRequest(uint64_t a1, int a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  HIDWORD(v6[0]) = a2;
  MessageQueue<cproto::gpsd::Request,8ul>::push((a1 + 376), v6);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
  GnssDeviceManager::pushResponse(a1, v8);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
}

uint64_t GnssDeviceManager::pushRequest(uint64_t a1, __int128 *a2, uint64_t a3)
{
  MessageQueue<cproto::gpsd::Request,8ul>::push((a1 + 376), a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
  GnssDeviceManager::pushResponse(a1, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
}

void sub_1000436E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MessageQueue<cproto::gpsd::Request,8ul>::push(unint64_t *a1, __int128 *a2)
{
  v4 = atomic_load(a1);
  v5 = atomic_load(a1 + 1);
  if (v4 >= v5 + 8)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a2 + 3);
      v16 = atomic_load(a1);
      v17 = atomic_load(a1 + 1);
      v18 = 134350080;
      v19 = a1;
      v20 = 1026;
      v21 = v15;
      v22 = 2050;
      v23 = v16;
      v24 = 2050;
      v25 = v17;
      v26 = 2050;
      v27 = 8;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "MessageQueue,%{public}p,overflow,t,%{public}d,w,%{public}zu,r,%{public}zu,%{public}zu", &v18, 0x30u);
    }
  }

  v7 = atomic_load(a1);
  v8 = &a1[15 * (v7 & 7)];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 3) = a2[2];
  *(v8 + 4) = v11;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v8[16] = *(a2 + 14);
  *(v8 + 6) = v13;
  *(v8 + 7) = v14;
  *(v8 + 5) = v12;
  atomic_fetch_add(a1, 1uLL);
}

uint64_t GnssDeviceManager::handleRequest(uint64_t this)
{
  if ((*(this + 1424) & 1) == 0)
  {
    v1 = this;
    v2 = atomic_load((this + 376));
    v3 = (this + 384);
    v4 = atomic_load((this + 384));
    if (v2 != v4)
    {
      v5 = this + 392;
      v6 = atomic_load(v3);
      v7 = *(this + 392 + 120 * (v6 & 7) + 12);
      this = gpsd::util::getMachContinuousTimeMs(this);
      *(v1 + 1416) = this;
      *(v1 + 1424) = 1;
      v8 = atomic_load(v3);
      switch(v7)
      {
        case 0:
        case 12:
        case 13:
        case 29:
        case 35:
        case 36:
        case 37:
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
          v9 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            v16[0] = 67240192;
            v16[1] = v7;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#gdm,handleRequest type %{public}d not supported!", v16, 8u);
          }

          return GnssDeviceManager::deviceResponseCallback(v1, 7);
        case 1:
          v35[0] = off_100172240;
          v35[1] = v1;
          v35[3] = v35;
          GnssDeviceManager::handleRegularStartRequest(v1);
          v11 = v35;
          goto LABEL_8;
        case 2:
          v34[0] = off_100172240;
          v34[1] = v1;
          v34[3] = v34;
          GnssDeviceManager::handleRegularStopRequest(v1, v34);
          v11 = v34;
          goto LABEL_8;
        case 3:
        case 4:
        case 5:
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
          v10 = *(v1 + 288);
          v25[0] = off_100172240;
          v25[1] = v1;
          v25[3] = v25;
          GnssDeviceHelper::handleRequest(v10, v5 + 120 * (v8 & 7), v25);
          v11 = v25;
          goto LABEL_8;
        case 6:
          v23[0] = off_100172240;
          v23[1] = v1;
          v23[3] = v23;
          GnssDeviceManager::setPvtmReport(v1, v23);
          v11 = v23;
          goto LABEL_8;
        case 7:
          v22[0] = off_100172240;
          v22[1] = v1;
          v22[3] = v22;
          GnssDeviceCommon::setNmeaHandlerHelper((v1 + 8), v22);
          v11 = v22;
          goto LABEL_8;
        case 8:
          v12 = atomic_load((v1 + 384));
          v33[0] = off_100172240;
          v33[1] = v1;
          v33[3] = v33;
          GnssDeviceCommon::injectAssistancePositionHelper((v1 + 8), v5 + 120 * (v12 & 7) + 16, v33);
          v11 = v33;
          goto LABEL_8;
        case 9:
          v14 = atomic_load((v1 + 384));
          v32[0] = off_100172240;
          v32[1] = v1;
          v32[3] = v32;
          GnssDeviceCommon::injectAssistanceTimeHelper(v1 + 8, (v5 + 120 * (v14 & 7) + 16), v32);
          v11 = v32;
          goto LABEL_8;
        case 10:
          v31[0] = off_100172240;
          v31[1] = v1;
          v31[3] = v31;
          GnssDeviceManager::injectAssistanceFile(v1, v31);
          v11 = v31;
          goto LABEL_8;
        case 11:
          v30[0] = off_100172240;
          v30[1] = v1;
          v30[3] = v30;
          GnssDeviceManager::injectRtiFile(v1, v30);
          v11 = v30;
          goto LABEL_8;
        case 14:
          v29[0] = off_100172240;
          v29[1] = v1;
          v29[3] = v29;
          GnssDeviceManager::setAssistanceAccel(v1, v29);
          v11 = v29;
          goto LABEL_8;
        case 15:
          v28[0] = off_100172240;
          v28[1] = v1;
          v28[3] = v28;
          GnssDeviceManager::setAssistanceGyro(v1, v28);
          v11 = v28;
          goto LABEL_8;
        case 23:
          v21[0] = off_100172240;
          v21[1] = v1;
          v21[3] = v21;
          GnssDeviceManager::setPowerReport(v1, v21);
          v11 = v21;
          goto LABEL_8;
        case 27:
          v27[0] = off_100172240;
          v27[1] = v1;
          v27[3] = v27;
          GnssDeviceCommon::setTimeTransferPulseHelper(v1 + 8, v27);
          v11 = v27;
          goto LABEL_8;
        case 28:
          v15 = *(v1 + 16);
          v26[0] = off_100172240;
          v26[1] = v1;
          v26[3] = v26;
          (*(*v15 + 128))(v15, v26);
          v11 = v26;
          goto LABEL_8;
        case 32:
          v20[0] = off_100172240;
          v20[1] = v1;
          v20[3] = v20;
          GnssDeviceManager::sendDeviceStatus(v1, v20);
          v11 = v20;
          goto LABEL_8;
        case 34:
          v19[0] = off_100172240;
          v19[1] = v1;
          v19[3] = v19;
          GnssDeviceManager::createDevice(v1, v19);
        case 38:
          v13 = atomic_load((v1 + 384));
          v24[0] = off_100172240;
          v24[1] = v1;
          v24[3] = v24;
          GnssDeviceCommon::setConfigRfBandEnableHelper(v1 + 8, (v5 + 120 * (v13 & 7) + 16), v24);
          v11 = v24;
          goto LABEL_8;
        case 39:
          v18[0] = off_100172240;
          v18[1] = v1;
          v18[3] = v18;
          GnssDeviceManager::injectRavenOrbitFile(v1, v18);
          v11 = v18;
          goto LABEL_8;
        case 67:
          v17[0] = off_100172240;
          v17[1] = v1;
          v17[3] = v17;
          GnssDeviceManager::setNwAssistanceGpsEphemeris(v1, v17);
          v11 = v17;
LABEL_8:
          this = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
          break;
        default:
          return this;
      }
    }
  }

  return this;
}

uint64_t GnssDeviceManager::handleRegularStartRequest(uint64_t a1)
{
  v2 = atomic_load((a1 + 384));
  v3 = a1 + 120 * (v2 & 7);
  *(a1 + 256) = *(v3 + 416);
  *(a1 + 248) = *(v3 + 410);
  *(a1 + 249) = *(v3 + 424);
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,start,initiated", buf, 2u);
  }

  if (*(a1 + 304) == 1)
  {
    v6 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,Device was already started,overlap", buf, 2u);
    }

    return GnssDeviceManager::deviceResponseCallback(a1, 1);
  }

  else
  {
    *(a1 + 296) = gpsd::util::getMachContinuousTimeMs(v5);
    *(a1 + 304) = 1;
    if (*(a1 + 272) == 1)
    {
      *(a1 + 272) = 0;
    }

    if (*(a1 + 320) == 1)
    {
      v8 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT) || (v9 = *(a1 + 312), *buf = 134349056, v16 = v9, _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#gdm,start,Overlap with previous stop timer,%{public}llu,ms", buf, 0xCu), (*(a1 + 320) & 1) != 0))
      {
        *(a1 + 320) = 0;
      }
    }

    v10 = GpsdPreferences::instance(0);
    GpsdPreferences::dumpSettingsToLog(v10);
    *(a1 + 184) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    v11 = *(a1 + 16);
    v12 = *(a1 + 256);
    v14[0] = off_1001723E0;
    v14[1] = a1;
    v14[3] = v14;
    v13[0] = off_1001724E0;
    v13[1] = a1;
    v13[3] = v13;
    (*(*v11 + 48))(v11, v12, v14, v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }
}

void sub_100044170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceManager::handleRegularStopRequest(uint64_t a1, uint64_t a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,stop,initiated", buf, 2u);
  }

  if (*(a1 + 304))
  {
    *(a1 + 304) = 0;
    GnssDeviceCommon::ActivityCheck::mute((a1 + 264));
    *(a1 + 312) = gpsd::util::getMachContinuousTimeMs(v5);
    *(a1 + 320) = 1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](buf, a2);
    v6 = *(a1 + 16);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, buf);
    v10 = 0;
    operator new();
  }

  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,Device was already stopped", buf, 2u);
  }

  return GnssDeviceManager::deviceResponseCallback(a1, 1);
}

void sub_100044380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a17);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17 - 80);
  _Unwind_Resume(a1);
}

void GnssDeviceManager::injectAssistanceFile(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1448);
  *(a1 + 1448) = 0;
  v17 = v3;
  if (v3)
  {
    v15 = 0;
    v16 = 0;
    __p = 0;
    v5 = v3;
    if (*(v3 + 23) < 0)
    {
      v5 = *v3;
    }

    if (gpsd::util::readFileIntoVector(v5, &__p))
    {
      if (__p != v15)
      {
        v6 = *(v3 + 28);
        v7 = *(a1 + 16);
        v19[0] = off_1001722C0;
        v19[1] = a1;
        v19[3] = v19;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a2);
        v8 = *v7 + 72;
        if (v6 == 3)
        {
          v9 = 3;
        }

        else
        {
          v9 = 4;
        }

        (*(*v7 + 72))(v7, &__p, v9, v19, v18);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
        std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v19);
LABEL_19:
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        goto LABEL_21;
      }

      v11 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        std::function<void ()(gnss::Result)>::operator()(a2, 4);
        goto LABEL_19;
      }

      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      v21 = v3;
      v12 = "#gdm,INJECT_ASSISTANCE_FILE,file is empty,%{public}s";
    }

    else
    {
      v11 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      v21 = v3;
      v12 = "#gdm,INJECT_ASSISTANCE_FILE,failed to read file,%{public}s";
    }

    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_18;
  }

  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#gdm,injectAssistanceFile,nullptr", &__p, 2u);
  }

  std::function<void ()(gnss::Result)>::operator()(a2, 4);
LABEL_21:
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    std::default_delete<cproto::gpsd::InjectAssistanceFile>::operator()[abi:ne200100](&v17, v13);
  }
}

void sub_100044624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](&a17);
  if (__p)
  {
    operator delete(__p);
  }

  v18 = a12;
  a12 = 0;
  if (v18)
  {
    std::default_delete<cproto::gpsd::InjectAssistanceFile>::operator()[abi:ne200100](&a12, v18);
  }

  _Unwind_Resume(a1);
}

void GnssDeviceManager::injectRtiFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1456);
  v14 = 0;
  v15 = 0;
  __p = 0;
  v5 = v4;
  if (*(v4 + 23) < 0)
  {
    v5 = *v4;
  }

  if (!gpsd::util::readFileIntoVector(v5, &__p))
  {
    v10 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      std::function<void ()(gnss::Result)>::operator()(a2, 4);
      goto LABEL_14;
    }

    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v19 = v4;
    v11 = "#gdm,INJECT_RTI_FILE,failed to read file,%{public}s";
    v12 = v10;
LABEL_20:
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    goto LABEL_13;
  }

  v6 = __p;
  v7 = v14;
  v8 = GpsdLogObjectGeneral;
  if (__p == v14)
  {
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v19 = v4;
    v11 = "#gdm,INJECT_RTI_FILE,file is empty,%{public}s";
    v12 = v8;
    goto LABEL_20;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v19 = v7 - v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#gdm,INJECT_RTI_FILE,Injecting RTI file,size,%{public}zu", buf, 0xCu);
  }

  v9 = *(a1 + 16);
  v17[0] = off_100172350;
  v17[1] = a1;
  v17[3] = v17;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a2);
  (*(*v9 + 80))(v9, &__p, v17, v16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v17);
LABEL_14:
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_1000448A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](&a17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GnssDeviceManager::setAssistanceAccel(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1432);
  std::vector<gnss::SensorSample3Axis>::vector[abi:ne200100](&__p, 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
  if (v11 != __p)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = __p + 16;
    v7 = (*v4 + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *(a1 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a2);
  (*(*v9 + 136))(v9, &__p, v12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100044A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GnssDeviceManager::setAssistanceGyro(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1440);
  std::vector<gnss::SensorSample3Axis>::vector[abi:ne200100](&__p, 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
  if (v11 != __p)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = __p + 16;
    v7 = (*v4 + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *(a1 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a2);
  (*(*v9 + 144))(v9, &__p, v12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100044B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GnssDeviceManager::injectRavenOrbitFile(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1464);
  v6 = off_100173DB0;
  v10 = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 0;
      v5 = "#gdm,INJECT_RAVEN_ORBIT_FILE, missing ionosphere corrections";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 0;
      v5 = "#gdm,INJECT_RAVEN_ORBIT_FILE, parsing rofContents from string failed.";
      goto LABEL_6;
    }
  }

  std::function<void ()(gnss::Result)>::operator()(a2, 4);
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(&v6);
}

void sub_100044E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va2);
  *(v2 - 96) = va;
  std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(va1);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceManager::setNwAssistanceGpsEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsNavigationModel", v8, 2u);
  }

  v5 = *(a1 + 1480);
  v6 = *(a1 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a2);
  (*(*v6 + 376))(v6, v5, v9);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
}

void sub_100044FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GnssDeviceManager::mutateRequest(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) == 5)
  {
    v3 = *(a2 + 16);
    v4 = *(GpsdPlatformInfo::instance(0) + 8);
    v6 = (v4 - 303) < 0xFFFFFFFE && (v4 - 203) < 0xFFFFFFFE || (v3 & 1) == 0;
    v7 = 1024;
    if (v6)
    {
      v7 = v3;
    }

    *(a2 + 16) = v7;
  }
}

uint64_t GnssDeviceManager::getVendorDeleteGnssFlag(GnssDeviceManager *this, uint64_t a2)
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

void GnssDeviceManager::onStopCompleted(uint64_t a1, int a2)
{
  if (*(a1 + 320) == 1)
  {
    *(a1 + 320) = 0;
  }

  if (*(a1 + 304) == 1)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,onStopCompleted,detected overlap with session", buf, 2u);
    }
  }

  else
  {
    *buf = 20;
    v10 = 0u;
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    LODWORD(v10) = a2;
    *&buf[8] = gpsd::util::getMachContinuousTimeNs(a1);
    v5 = (*(**(a1 + 224) + 24))(*(a1 + 224), buf);
    if (a2 != 1)
    {
      v6 = gnss::Exception::instance(v5);
      gnss::Exception::set(v6, 2);
    }

    v7 = *(a1 + 1376);
    if (v7)
    {
      (*(*v7 + 48))(v7);
      v8 = *(a1 + 1376);
      *(a1 + 1376) = 0;
      if (v8 == a1 + 1352)
      {
        (*(*v8 + 32))(v8);
      }

      else if (v8)
      {
        (*(*v8 + 40))(v8);
      }
    }
  }
}

void sub_100045374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssDeviceManager::~GnssDeviceManager(GnssDeviceManager *this)
{
  GnssDeviceManager::~GnssDeviceManager(this);

  operator delete();
}

{
  *this = &off_100171DD0;
  *(this + 1) = off_100171E40;
  std::unique_ptr<GnssWatchdog>::reset[abi:ne200100](this + 186, 0);
  GnssDeviceManager::SidePayload::~SidePayload((this + 1432));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 1384);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 1352);
  if (*(this + 368) == 1)
  {
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 336);
  }

  v2 = *(this + 36);
  *(this + 36) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(this + 2);
  *(this + 1) = off_100172870;
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }
}

void non-virtual thunk toGnssDeviceManager::~GnssDeviceManager(GnssDeviceManager *this)
{
  GnssDeviceManager::~GnssDeviceManager((this - 8));
}

{
  GnssDeviceManager::~GnssDeviceManager((this - 8));

  operator delete();
}

void GnssDeviceManager::SidePayload::~SidePayload(GnssDeviceManager::SidePayload *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](this + 32, v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](this + 24, v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    std::default_delete<cproto::gpsd::InjectAssistanceFile>::operator()[abi:ne200100](this + 16, v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](this + 8, v7);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](this, v8);
  }
}

void std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

void GnssDeviceCommon::~GnssDeviceCommon(GnssDeviceCommon *this)
{
  v2 = *(this + 1);
  *this = off_100172870;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = off_100172870;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  operator delete();
}

void std::default_delete<cproto::gpsd::InjectAssistanceFile>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

GnssWatchdog *std::unique_ptr<GnssWatchdog>::reset[abi:ne200100](GnssWatchdog **a1, GnssWatchdog *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GnssWatchdog::~GnssWatchdog(result);

    operator delete();
  }

  return result;
}

void GnssWatchdog::~GnssWatchdog(GnssWatchdog *this)
{
  v3 = (this + 8);
  std::vector<GnssWatchEvent>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void std::vector<GnssWatchEvent>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 48;
        std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100171F20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  GnssDeviceCommon::powerReportCallback(v2 + 8, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000459F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100171FB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *a2;
  *a2 = 0;
  v8 = *a3;
  *a3 = 0;
  v9 = *a6;
  *a6 = 0;
  v12 = v9;
  v13 = 0;
  v10 = *a7;
  *a7 = 0;
  v11 = *(a1 + 8);
  v15 = v7;
  v14 = v8;
  operator new();
}

void sub_100045D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::setPvtmReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_100172040;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_100172040;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 2));

  operator delete();
}

uint64_t std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_100172040;
  a2[1] = v2;
  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,newGnssDevice,callback,%{public}d", v7, 8u);
  }

  GnssDeviceManager::onNewGnssDevice(v4, v3);
  return std::function<void ()(gnss::Result)>::operator()(a1 + 16, v3);
}

uint64_t std::__function::__func<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::createDevice(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0,std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001720C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0,std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1424) == 1)
  {
    *(v1 + 1424) = 0;
  }

  v2 = atomic_load((v1 + 376));
  v3 = atomic_load((v1 + 384));
  if (v2 == v3)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = atomic_load((v1 + 384));
      v6 = *(v1 + 120 * (v5 & 7) + 404);
      v7 = atomic_load((v1 + 376));
      v8 = atomic_load((v1 + 384));
      *v12 = 134349824;
      *&v12[4] = v1 + 376;
      *&v12[12] = 1026;
      *&v12[14] = v6;
      v13 = 2050;
      *v14 = v7;
      *&v14[8] = 2050;
      *&v14[10] = v8;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MessageQueue,%{public}p,underflow,t,%{public}d,w,%{public}zu,r,%{public}zu", v12, 0x26u);
    }
  }

  else
  {
    atomic_fetch_add((v1 + 384), 1uLL);
  }

  v9 = GnssDeviceManager::handleRequest(v1);
  v10 = GpsdRuntime::instance(v9);
  *v12 = off_100172130;
  *&v12[8] = v1;
  *&v14[4] = v12;
  GpsdRuntime::asyncDevice(v10, v12);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0,std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172130;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  GnssDeviceManager::pushResponse(v1, v3);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v3);
}

void sub_1000465C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<GnssDeviceManager::deviceResponseCallback(gnss::Result)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::pushResponse(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::pushResponse(std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001721C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::pushResponse(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::pushResponse(std::function<void ()(gnss::Result)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::handleRequest(void)::$_0,std::allocator<GnssDeviceManager::handleRequest(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172240;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::handleRequest(void)::$_0,std::allocator<GnssDeviceManager::handleRequest(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001722C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7[0] = 67240192;
    v7[1] = v6;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#gdm,DecodedExtendedEphemeris callback,type,%{public}d", v7, 8u);
  }

  return GnssDeviceCommon::decodedEphemerisCallback(v3 + 8, a2);
}

uint64_t std::__function::__func<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectAssistanceFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172350;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gdm,DecodedRti callback", v6, 2u);
  }

  return GnssDeviceCommon::decodedRtiCallback((v3 + 8), a2);
}

uint64_t std::__function::__func<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::injectRtiFile(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedRti &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 9;
        std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001723E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(GpsdRuntime *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 1);
  v4 = GpsdRuntime::instance(a1);
  v6[0] = off_100172450;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  GpsdRuntime::asyncDevice(v4, v6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  return GnssDeviceManager::deviceResponseCallback(v3, v2);
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_100172450;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = GpsdLogObjectGeneral;
  if (v2 == 1)
  {
    v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v5 = *(v1 + 248);
      v6 = *(v1 + 249);
      v7 = 67174913;
      v8 = v5;
      v9 = 1025;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,start,onAccepted success,sbsr,%{private}d,bcr,%{private}d", &v7, 0xEu);
    }

    *(v1 + 296) = gpsd::util::getMachContinuousTimeMs(v4);
    *(v1 + 304) = 1;
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v7 = 67240192;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gdm,start,onAccepted failure,%{public}d", &v7, 8u);
    }

    if (*(v1 + 304) == 1)
    {
      *(v1 + 304) = 0;
    }
  }
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001724E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::operator()(gnss::Exception *a1, _DWORD *a2)
{
  v2 = *(a1 + 1);
  if (*a2 != 1)
  {
    v5 = gnss::Exception::instance(a1);
    gnss::Exception::set(v5, 1);
  }

  v3 = GpsdLogObjectGeneral;
  v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,start,onCompleted success", buf, 2u);
  }

  *buf = 0u;
  v8 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *buf = 22;
  LODWORD(v8) = 1;
  *&buf[8] = gpsd::util::getMachContinuousTimeNs(v4);
  return (*(**(v2 + 224) + 24))(*(v2 + 224), buf);
}

void sub_100047298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStartRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_100172560;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_100172560;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete();
}

void std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,stop,onAccepted,%{public}d", v6, 8u);
  }

  return std::function<void ()(gnss::Result)>::operator()(a1 + 8, v3);
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001725E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  v5 = 16 * (v2 != 1);
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, v5);
  if (v6)
  {
    LODWORD(v9) = 67240448;
    HIDWORD(v9) = v2;
    LOWORD(v10) = 1026;
    *(&v10 + 2) = 2000;
    _os_log_impl(&_mh_execute_header, v4, v5, "#gdm,stop,onCompleted,code,%{public}d,extraDelay,%{public}d,ms", &v9, 0xEu);
  }

  v7 = GpsdRuntime::instance(v6);
  v9 = off_100172650;
  v10 = v3;
  v11 = v2;
  v12 = &v9;
  GpsdRuntime::asyncDevice(v7, &v9, 2000);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v9);
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_100172650;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceManager::handleRegularStopRequest(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_0,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001726E0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_0,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::operator()(gnss::Exception *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 1);
  v4 = atomic_load((v3 + 376));
  v5 = atomic_load((v3 + 384));
  v6 = atomic_load((v3 + 384));
  v7 = (*(v3 + 392 + 120 * (v6 & 7) + 12) + 100 * (v4 - v5));
  v8 = gnss::Exception::instance(a1);
  gnss::Exception::set(v8, 10);
}

void sub_100047B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_0,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_1,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_1>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172770;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_1,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_1>,void ()(unsigned long long)>::operator()(gnss::Exception *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 1);
  v4 = gnss::Exception::instance(a1);
  gnss::Exception::set(v4, 6);
}

void sub_100047E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_1,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_1>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_2,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_2>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001727F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_2,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_2>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    if ((*(v3 + 320) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v5 = v2 - *(v3 + 312);
    v6 = 134349056;
    v7 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,watchdog,stopCompleted,timeout,%{public}llu,ms", &v6, 0xCu);
  }

  GnssDeviceManager::onStopCompleted(v3, 6);
}

uint64_t std::__function::__func<GnssDeviceManager::setupWatchdog(void)::$_2,std::allocator<GnssDeviceManager::setupWatchdog(void)::$_2>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t GnssHal::InterfacesImpl::InterfacesImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v13 = *a2;
  *a2 = 0;
  v14 = *(a1 + 8);
  *a1 = off_1001728C0;
  *(a1 + 8) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *a3;
  *a3 = 0;
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *a4;
  *a4 = 0;
  v18 = *(a1 + 24);
  *(a1 + 24) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *a5;
  *a5 = 0;
  v20 = *(a1 + 32);
  *(a1 + 32) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *a6;
  *a6 = 0;
  v22 = *(a1 + 40);
  *(a1 + 40) = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *a7;
  *a7 = 0;
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  return a1;
}

void GnssHal::InterfacesImpl::InterfacesImpl(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_1001728C0;
  if (a2)
  {
    (*(*a2 + 48))(a2);
    v2 = GpsdPreferences::instance(0);
    GpsdPreferences::getLogLevel(v2);
    v3 = GpsdPreferences::instance(0);
    GpsdPreferences::getSecondaryLogLevel(v3);
    v4 = GpsdPreferences::instance(0);
    GpsdPreferences::getLogMask(v4);
    operator new();
  }

  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#hal,InterfacesImpl,halInterfacesUtil,nullptr", &buf, 2u);
    v5 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    buf = 136446722;
    buf_4 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalImpl.cpp";
    v14 = 1026;
    v15 = 42;
    v16 = 2082;
    v17 = "InterfacesImpl";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "assert");
  std::string::basic_string[abi:ne200100]<0>(v8, "InterfacesImpl");
  std::string::basic_string[abi:ne200100]<0>(__p, "#hal,InterfacesImpl,halInterfacesUtil,nullptr");
  gpsd::util::triggerDiagnosticReport(v10, v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  __assert_rtn("InterfacesImpl", "GnssHalImpl.cpp", 42, "false && #hal,InterfacesImpl,halInterfacesUtil,nullptr");
}

void GnssHal::Interfaces::~Interfaces(GnssHal::Interfaces *this)
{
  *this = off_100172908;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

{
  GnssHal::Interfaces::~Interfaces(this);

  operator delete();
}

void GnssHal::InterfacesImpl::~InterfacesImpl(GnssHal::InterfacesImpl *this)
{
  GnssHal::Interfaces::~Interfaces(this);

  operator delete();
}

uint64_t std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0>,void ()(GnssHal::TimeTransferPulseMark)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172928;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0>,void ()(GnssHal::TimeTransferPulseMark)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1>,void ()(std::string)>::operator()(gnss::Exception *a1, uint64_t a2)
{
  *v3 = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = gnss::Exception::instance(a1);
  gnss::Exception::set(v2, 5);
}

void sub_1000499D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172A48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 24);
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v10 = v9;
      (*(*v5 + 24))(v5, v9);
      goto LABEL_7;
    }

    v10 = *(a3 + 24);
  }

  else
  {
    v6 = &v10;
  }

  *v6 = 0;
LABEL_7:
  v7 = *(a1 + 8);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](v11, v9);
  (*(*v7 + 56))(v7, a2, v11);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v11);
  return std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v9);
}

void sub_100049D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172AD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  (*(**(a1 + 8) + 64))(*(a1 + 8), 4);
  if (v4 < 0)
  {

    operator delete(v3);
  }
}

void sub_100049ED0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(int,std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::string ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GnssHal::CommUart::CommUart(uint64_t a1, uint64_t a2)
{
  *a1 = off_100172B68;
  v4 = GpsdPreferences::instance(0);
  *(a1 + 8) = GpsdPreferences::verboseCommDataSniffer(v4);
  *(a1 + 16) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 40) = *(a2 + 24);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 32);
  *(a1 + 56) = -1;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  if ((*(*a1 + 72))(a1))
  {
    operator new();
  }

  return a1;
}

void sub_10004A238()
{
  v1 = *(v0 + 8);
  *(v0 + 8) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void GnssHal::CommUart::~CommUart(GnssHal::CommUart *this)
{
  *this = off_100172B68;
  GnssHal::CommUart::close(this);
  std::unique_ptr<GnssHal::CommUart::AsyncReader>::reset[abi:ne200100](this + 8, 0);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  GnssHal::CommUart::~CommUart(this);

  operator delete();
}

uint64_t GnssHal::CommUart::open(GnssHal::CommUart *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#comm,already open", &__p, 2u);
    }

    v3 = *(this + 60);
    return v3 & 1;
  }

  if (*(this + 47) < 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 3), v4);
      goto LABEL_11;
    }
  }

  else if (*(this + 47))
  {
    __p = *(this + 1);
    goto LABEL_11;
  }

  GpsdPlatformInfo::instance(0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/dev/cu.gps");
LABEL_11:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = open(p_p, 131074, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  *(this + 14) = v6;
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v11 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v15 = v11;
    v16 = 1026;
    v17 = 131074;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "#comm,open,%{public}s,flag,0x%{public}X", buf, 0x12u);
    v6 = *(this + 14);
  }

  if (v6 == -1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      *buf = 67240192;
      LODWORD(v15) = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#comm,open,errno,%{public}d", buf, 8u);
    }
  }

  else if ((*(*this + 112))(this) && GnssHal::CommUart::configure(this))
  {
    v8 = *(this + 8);
    if (v8)
    {
      GnssHal::CommUart::AsyncReader::open(v8);
    }

    v3 = 1;
    goto LABEL_24;
  }

  v3 = 0;
LABEL_24:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3 & 1;
}

void sub_10004A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::CommUart::configure(GnssHal::CommUart *this)
{
  if (tcgetattr(*(this + 14), &v29) == -1)
  {
    v9 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v21 = *__error();
    *buf = 67240192;
    *v27 = v21;
    v6 = "#comm,configure,tcgetattr failed,%{public}d";
LABEL_27:
    v7 = v9;
    v8 = 8;
    goto LABEL_28;
  }

  cfmakeraw(&v29);
  v29.c_cc[16] = 0;
  v29.c_cc[17] = *(this + 17);
  if (v29.c_cc[17])
  {
    v24 = 115200;
    v25 = 115200;
    v2 = GnssHal::CommUart::Config::lookupBaudRate((this + 16), &v25, &v24);
    v3 = v25;
    if (cfsetspeed(&v29, v25))
    {
      v4 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        *buf = 134349312;
        *v27 = v3;
        *&v27[8] = 1026;
        LODWORD(v28[0]) = v5;
        v6 = "#comm,configure,cfsetspeed failed,%{public}lu,%{public}d";
        v7 = v4;
LABEL_6:
        v8 = 18;
LABEL_28:
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      }

LABEL_8:
      v10 = 0;
      *(this + 60) = 0;
      return v10;
    }

    v13 = v29.c_cflag | 0x30300;
    if (!*(this + 16))
    {
      v13 = v29.c_cflag & 0xFFFFFFFFFFFCFCFFLL | 0x300;
    }

    v29.c_cflag = v13;
    if (tcsetattr(*(this + 14), 0, &v29))
    {
      v9 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v14 = *__error();
      *buf = 67240192;
      *v27 = v14;
      v6 = "#comm,configure,tcsetattr failed,%{public}d";
      goto LABEL_27;
    }

    if (v2)
    {
      v15 = ioctl(*(this + 14), 0x80085402uLL, &v24);
      v16 = GpsdLogObjectGeneral;
      if (v15 == -1)
      {
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v22 = v24;
        v23 = *__error();
        *buf = 134349312;
        *v27 = v22;
        *&v27[8] = 1026;
        LODWORD(v28[0]) = v23;
        v6 = "#comm,configure,IOSSIOSPEED failed,%{public}lu,%{public}d";
        v7 = v16;
        goto LABEL_6;
      }

      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v27 = v24;
        *&v27[8] = 2050;
        v28[0] = v3;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#comm,configure,IOSSIOSPEED,%{public}lu,standardSpeed,%{public}lu", buf, 0x16u);
      }
    }

    v17 = GpsdLogObjectGeneral;
    v10 = 1;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v18 = *(this + 16);
      v19 = *(this + 17);
      v20 = v24;
      if (!v2)
      {
        v20 = v3;
      }

      *buf = 67240704;
      *v27 = v18;
      *&v27[4] = 1026;
      *&v27[6] = v19;
      LOWORD(v28[0]) = 2050;
      *(v28 + 2) = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#comm,configured,flowCtrl,%{public}d,timeoutTenths,%{public}d,baud,%{public}lu", buf, 0x18u);
    }
  }

  else
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#comm,configure,timeoutTenthsOfSeconds is 0", buf, 2u);
    }

    return 0;
  }

  return v10;
}

void GnssHal::CommUart::AsyncReader::open(GnssHal::CommUart::AsyncReader *this)
{
  (*(**this + 40))(*this);
  std::vector<unsigned char>::reserve(this + 8, 0x1000uLL);
  v2 = _NSConcreteStackBlock;
  v3 = 0x40000000;
  v4 = ___ZN7GnssHal8CommUart11AsyncReader4openEv_block_invoke;
  v5 = &__block_descriptor_tmp_1;
  v6 = this;
  operator new();
}

void GnssHal::CommUart::close(GnssHal::CommUart *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = *(this + 8);
    if (v2)
    {
      GnssHal::CommUart::AsyncReader::close(v2);
    }

    if (close(*(this + 14)) < 0)
    {
      v9 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *__error();
        v11[0] = 67240192;
        v11[1] = v10;
        v4 = "#comm,close,errno,%{public}d";
        v5 = v9;
        v6 = OS_LOG_TYPE_DEFAULT;
        v7 = 8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        v4 = "#comm,close,completed";
        v5 = v3;
        v6 = OS_LOG_TYPE_INFO;
        v7 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v5, v6, v4, v11, v7);
      }
    }

    *(this + 14) = -1;
    return;
  }

  v8 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#comm,close,not open", v11, 2u);
  }
}

void GnssHal::CommUart::AsyncReader::close(GnssHal::CommUart::AsyncReader *this)
{
  if (*(this + 1))
  {
    v2 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
    v3 = v2 > 4;
    v4 = (1 << v2) & 0x19;
    if (!v3 && v4 != 0)
    {
      (*(**(this + 1) + 16))(*(this + 1));
    }
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 8);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

BOOL GnssHal::CommUart::waitForDataAvailable(GnssHal::CommUart *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = *(this + 14);
    memset(&v16, 0, sizeof(v16));
    if (__darwin_check_fd_set_overflow(v2, &v16, 0))
    {
      *(v16.fds_bits + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
    }

    v3 = select(v2 + 1, &v16, 0, 0, 0);
    v4 = v3 >= 0;
    if (v3 < 0)
    {
      v11 = *__error();
      v12 = GpsdLogObjectGeneral;
      if (v11 == 9)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          v18 = v2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#comm,select,interrupted,fd,%{public}d", buf, 8u);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 67240706;
        v18 = v13;
        v19 = 2082;
        v20 = v15;
        v21 = 1026;
        v22 = v2;
        v6 = "#comm,select,errno,%{public}d,%{public}s,fd,%{public}d";
        v7 = v12;
        v8 = 24;
        goto LABEL_17;
      }
    }

    else if (*(this + 61) == 1)
    {
      v5 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "#comm,rx data while in sleep";
        v7 = v5;
        v8 = 2;
LABEL_17:
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      }
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16.fds_bits[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#comm,waitForDataAvailable,portNotOpen", &v16, 2u);
    }

    return 0;
  }

  return v4;
}

uint64_t GnssHal::CommUart::readTimeout(GnssHal::CommUart *this, unsigned __int8 *a2, size_t a3)
{
  if (*(this + 60) != 1 || ((*(*this + 32))(this) & 1) == 0)
  {
    v10 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 60);
      v12 = (*(*this + 32))(this);
      v14 = 67240448;
      v15 = v11;
      v16 = 1026;
      LODWORD(v17) = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#comm,read,unavailable,good,%{public}d,open,%{public}d", &v14, 0xEu);
    }

    return -1;
  }

  v7 = read(*(this + 14), a2, a3);
  if (*(this + 8) == 1)
  {
    gpsd::util::logBinaryBytes(a2, v7, "#comm,read", v6);
  }

  if (v7 == -1)
  {
    v8 = *__error();
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67240450;
      v15 = v8;
      v16 = 2082;
      v17 = strerror(v8);
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#comm,read,errno,%{public}d,%{public}s", &v14, 0x12u);
    }

    if (v8 == 35)
    {
      return 0;
    }

    *(this + 60) = 0;
    return -1;
  }

  return v7;
}

id GnssHal::CommUart::isReadCallbackSupported(GnssHal::CommUart *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::usesAsyncCommRead(v1);
}

BOOL GnssHal::CommUart::setReadCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](v4, a2);
    GnssHal::CommUart::AsyncReader::setReadCallback(v2, v4);
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v4);
  }

  return v2 != 0;
}

void sub_10004B534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::CommUart::AsyncReader::setReadCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#comm,setReadCallback,alreadySet", buf, 2u);
    }
  }

  std::function<void ()(unsigned char *,unsigned long)>::operator=((a1 + 24), a2);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#comm,setReadCallback", v7, 2u);
  }

  return 1;
}

BOOL GnssHal::CommUart::readComplete(GnssHal::CommUart *this, unsigned __int8 *a2, unint64_t a3)
{
  v6 = 0;
  do
  {
    v7 = v6;
    if (a3 <= v6)
    {
      break;
    }

    v8 = (*(*this + 56))(this, &a2[v6], a3 - v6);
    v6 = v8 + v7;
  }

  while ((v8 & 0x8000000000000000) == 0);
  return a3 == v7;
}

unint64_t GnssHal::CommUart::write(GnssHal::CommUart *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  if (*(this + 8) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#comm,write", a4);
  }

  if (*(this + 60) != 1 || ((*(*this + 32))(this) & 1) == 0)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(this + 60);
      v16 = (*(*this + 32))(this);
      v17 = 67240448;
      *v18 = v15;
      *&v18[4] = 1026;
      *&v18[6] = v16;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#comm,write,unavailable,good,%{public}d,open,%{public}d", &v17, 0xEu);
    }

    return -1;
  }

  v7 = write(*(this + 14), a2, a3);
  if (v7 != -1)
  {
    v8 = v7;
    if (v7 < a3)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134349312;
        *v18 = a3;
        *&v18[8] = 1026;
        v19 = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#comm,write,overflow,toWrite,%{public}zu,done,%{public}d,retry", &v17, 0x12u);
      }
    }

    return v8;
  }

  v12 = *__error();
  if (v12 != 35)
  {
    *(this + 60) = 0;
    v14 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67240192;
      *v18 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#comm,write,errno,%{public}d", &v17, 8u);
    }

    return -1;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v17 = 67240192;
    *v18 = 35;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#comm,write,errno,%{public}d", &v17, 8u);
  }

  return 0;
}

BOOL GnssHal::CommUart::writeComplete(GnssHal::CommUart *this, const unsigned __int8 *a2, unint64_t a3)
{
  v6 = 0;
  do
  {
    v7 = v6;
    if (a3 <= v6)
    {
      break;
    }

    v8 = (*(*this + 88))(this, &a2[v6], a3 - v6);
    v6 = v8 + v7;
  }

  while ((v8 & 0x8000000000000000) == 0);
  return a3 == v7;
}

BOOL GnssHal::CommUart::enterLowPowerMode(GnssHal::CommUart *this)
{
  v2 = GnssHal::CommUart::setRtsState(this, 0);
  v3 = GpsdLogObjectGeneral;
  if (v2)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#comm,enterLowPowerMode,success", buf, 2u);
    }

    *(this + 61) = 1;
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#comm,enterLowPowerMode,failure", v5, 2u);
  }

  return v2;
}

BOOL GnssHal::CommUart::setRtsState(uint64_t a1, int a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#comm,setRtsState,%{public}d", buf, 8u);
  }

  v9 = 4;
  if (a2 != 1)
  {
    if (!a2 && ioctl(*(a1 + 56), 0x8004746BuLL, &v9) < 0)
    {
      v5 = GpsdLogObjectGeneral;
      result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v7 = *__error();
        *buf = 67240448;
        v11 = 0;
        v12 = 1026;
        v13 = v7;
LABEL_13:
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#comm,setRtsState,%{public}d,ioctl error,%{public}d", buf, 0xEu);
        return 0;
      }

      return result;
    }

    return 1;
  }

  if ((ioctl(*(a1 + 56), 0x8004746CuLL, &v9) & 0x80000000) == 0)
  {
    return 1;
  }

  v5 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v8 = *__error();
    *buf = 67240448;
    v11 = 1;
    v12 = 1026;
    v13 = v8;
    goto LABEL_13;
  }

  return result;
}

BOOL GnssHal::CommUart::exitLowPowerMode(GnssHal::CommUart *this)
{
  v2 = GnssHal::CommUart::setRtsState(this, 1);
  v3 = GpsdLogObjectGeneral;
  if (v2)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#comm,exitLowPowerMode,success", buf, 2u);
    }

    *(this + 61) = 0;
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#comm,exitLowPowerMode,failure", v5, 2u);
  }

  return v2;
}

BOOL GnssHal::CommUart::readWriteFlush(GnssHal::CommUart *this)
{
  if ((*(*this + 32))(this))
  {
    if (tcflush(*(this + 14), 3))
    {
      v2 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *__error();
        v7[0] = 67240192;
        v7[1] = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#comm,readWriteFlush,TCIOFLUSH error,%{public}d", v7, 8u);
      }

      result = 0;
      *(this + 60) = 0;
    }

    else
    {
      v6 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7[0]) = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#comm,readWriteFlush,success", v7, 2u);
      }

      return 1;
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#comm,readWriteFlush,not open", v7, 2u);
      return 0;
    }
  }

  return result;
}

BOOL GnssHal::CommUart::readFlush(GnssHal::CommUart *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = tcflush(*(this + 14), 1);
    v3 = GpsdLogObjectGeneral;
    if (v2)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v4 = *__error();
        v7[0] = 67240192;
        v7[1] = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#comm,readFlush,TCIFLUSH error,%{public}d", v7, 8u);
      }

      result = 0;
      *(this + 60) = 0;
    }

    else
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7[0]) = 0;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#comm,readFlush,success", v7, 2u);
      }

      return 1;
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#comm,readFlush,not open", v7, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t GnssHal::CommUart::Config::lookupBaudRate(GnssHal::CommUart::Config *this, unint64_t *a2, unint64_t *a3)
{
  if (*(this + 36) == 1)
  {
    v5 = *(this + 8);
  }

  else
  {
    v5 = GnssHal::CommUart::Config::platformDefaultBaudRate(this);
  }

  result = 0;
  *a2 = 115200;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 0:
        result = 0;
        *a2 = 9600;
        return result;
      case 1:
        v7 = 921600;
        break;
      case 3:
        v7 = 1000000;
        break;
      default:
        return result;
    }
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      v7 = 3200000;
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      v7 = 4800000;
    }
  }

  else if (v5 == 4)
  {
    v7 = 2400000;
  }

  else
  {
    v7 = 3000000;
  }

  *a3 = v7;
  return 1;
}

uint64_t GnssHal::CommUart::Config::platformDefaultBaudRate(GnssHal::CommUart::Config *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v1 = GpsdPreferences::instance(0);
    if (GpsdPreferences::baudRate4M8(v1))
    {
      return 7;
    }

    else
    {
      return 4;
    }
  }

  else if (*(GpsdPlatformInfo::instance(0) + 8) == 103 || *(GpsdPlatformInfo::instance(0) + 8) == 106)
  {
    return 6;
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    v2 = 1;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v5[0] = 67240192;
      v5[1] = 1;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "UnsupportedHardware,defaultRate,%{public}d,used", v5, 8u);
    }
  }

  return v2;
}

void GnssHal::CommUart::pulseTimeMarkStrobe(GnssHal::CommUart *this@<X0>, uint64_t a2@<X8>)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#comm,CommUart::pulseTimeMarkStrobe", &v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    GnssHal::CommUart::AsyncReader::pulseTimeMarkStrobe(v5, &v7);
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#comm,fAsyncReader,null", &v7, 2u);
    }
  }
}

void GnssHal::CommUart::AsyncReader::pulseTimeMarkStrobe(GnssHal::CommUart::AsyncReader *this@<X0>, uint64_t a2@<X8>)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#comm,CommUart::AsyncReader::pulseTimeMarkStrobe", &v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 48))(&v7);
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#comm,fGpio,null", &v7, 2u);
    }
  }
}

dispatch_queue_t GnssHal::CommUart::AsyncReader::createDispatchQueue(GnssHal::CommUart::AsyncReader *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::maxSchedulerQos(v1);
  v3 = dispatch_queue_attr_make_with_qos_class(0, v2, 0);
  if (!v3)
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#comm,async,nullattr", buf, 2u);
    }
  }

  result = dispatch_queue_create("com.apple.gpsd.comm", v3);
  if (!result)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#comm,async,createQ,nullptr", buf, 2u);
      v6 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommUart.cpp";
      v12 = 1026;
      v13 = 437;
      v14 = 2082;
      v15 = "createDispatchQueue";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v8, "createDispatchQueue");
    std::string::basic_string[abi:ne200100]<0>(&v7, "#comm,async,createQ,nullptr");
    gpsd::util::triggerDiagnosticReport(&v9, &v8, &v7);
    std::string::~string(&v7);
    std::string::~string(&v8);
    std::string::~string(&v9);
    __assert_rtn("createDispatchQueue", "GnssHalCommUart.cpp", 437, "false && #comm,async,createQ,nullptr");
  }

  return result;
}

void sub_10004C604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void *std::function<void ()(unsigned char *,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t ___ZN7GnssHal8CommUart11AsyncReader4openEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(**v1 + 56))(*v1, v1[8], v1[10] - v1[8]);
  if (result >= 1 && v1[6])
  {
    v3 = v1[8];

    return std::function<void ()(unsigned char *,unsigned long)>::operator()((v1 + 3), v3, result);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

GnssHal::CommUart::AsyncReader **std::unique_ptr<GnssHal::CommUart::AsyncReader>::reset[abi:ne200100](GnssHal::CommUart::AsyncReader **result, GnssHal::CommUart::AsyncReader *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    GnssHal::CommUart::AsyncReader::close(v2);
    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 9) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 7);
    *(v2 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v2 + 24);
    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    operator delete();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned char *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_10004CBD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gpsd::util::DispatchSourceRead::~DispatchSourceRead(gpsd::util::DispatchSourceRead *this)
{
  gpsd::util::DispatchSource::~DispatchSource(this);

  operator delete();
}

uint64_t getGnssDeviceDylib(void)
{
  if (!gGnssDeviceDylibInstance)
  {
    v0 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "initGnssDeviceDylib", v2, 2u);
    }

    operator new();
  }

  return *gGnssDeviceDylibInstance;
}

uint64_t newGnssDevice(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  GnssDeviceDylib = getGnssDeviceDylib();
  v7 = dlsym(GnssDeviceDylib, "newGnssDevice");
  if (!v7)
  {
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#gdd,dlsym failed", buf, 2u);
      v15 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v24 = 1026;
      v25 = 30;
      v26 = 2082;
      v27 = "newGnssDevice";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v20, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v19, "newGnssDevice");
    std::string::basic_string[abi:ne200100]<0>(&v18, "#gdd,dlsym failed");
    gpsd::util::triggerDiagnosticReport(&v20, &v19, &v18);
    std::string::~string(&v18);
    std::string::~string(&v19);
    std::string::~string(&v20);
    __assert_rtn("newGnssDevice", "GpsdGnssDeviceDylib.cpp", 30, "false && #gdd,dlsym failed");
  }

  v8 = v7;
  v9 = *a1;
  *a1 = 0;
  v10 = *a2;
  *a2 = 0;
  v16 = v10;
  v17 = v9;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a3);
  v11 = v8(&v17, &v16, v21);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  v13 = v17;
  v17 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return v11;
}

void sub_10004CF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a30);
  if (a10)
  {
    (*(*a10 + 48))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t newGnssDeviceTest(uint64_t *a1, uint64_t a2)
{
  GnssDeviceDylib = getGnssDeviceDylib();
  v5 = dlsym(GnssDeviceDylib, "newGnssDeviceTest");
  if (!v5)
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#gdd,dlsym failed", buf, 2u);
      v11 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v19 = 1026;
      v20 = 37;
      v21 = 2082;
      v22 = "newGnssDeviceTest";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v15, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v14, "newGnssDeviceTest");
    std::string::basic_string[abi:ne200100]<0>(&v13, "#gdd,dlsym failed");
    gpsd::util::triggerDiagnosticReport(&v15, &v14, &v13);
    std::string::~string(&v13);
    std::string::~string(&v14);
    std::string::~string(&v15);
    __assert_rtn("newGnssDeviceTest", "GpsdGnssDeviceDylib.cpp", 37, "false && #gdd,dlsym failed");
  }

  v6 = v5;
  v7 = *a1;
  *a1 = 0;
  v12 = v7;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a2);
  v8 = v6(&v12, v16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return v8;
}

void sub_10004D218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a28);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t getVersionString()
{
  GnssDeviceDylib = getGnssDeviceDylib();
  v1 = dlsym(GnssDeviceDylib, "getVersionString");
  if (!v1)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gdd,Could not dlsym for version string", buf, 2u);
      v3 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v9 = 1026;
      v10 = 46;
      v11 = 2082;
      v12 = "getVersionString";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getVersionString");
    std::string::basic_string[abi:ne200100]<0>(&v4, "#gdd,Could not dlsym for version string");
    gpsd::util::triggerDiagnosticReport(&v6, &v5, &v4);
    std::string::~string(&v4);
    std::string::~string(&v5);
    std::string::~string(&v6);
    __assert_rtn("getVersionString", "GpsdGnssDeviceDylib.cpp", 46, "false && #gdd,Could not dlsym for version string");
  }

  return v1();
}

void sub_10004D464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t getGnssDeviceVersion()
{
  GnssDeviceDylib = getGnssDeviceDylib();
  v1 = dlsym(GnssDeviceDylib, "getGnssDeviceVersion");
  if (!v1)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gdd,Could not dlsym for version number", buf, 2u);
      v3 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v9 = 1026;
      v10 = 55;
      v11 = 2082;
      v12 = "getGnssDeviceVersion";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getGnssDeviceVersion");
    std::string::basic_string[abi:ne200100]<0>(&v4, "#gdd,Could not dlsym for version number");
    gpsd::util::triggerDiagnosticReport(&v6, &v5, &v4);
    std::string::~string(&v4);
    std::string::~string(&v5);
    std::string::~string(&v6);
    __assert_rtn("getGnssDeviceVersion", "GpsdGnssDeviceDylib.cpp", 55, "false && #gdd,Could not dlsym for version number");
  }

  return v1();
}

void sub_10004D664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void GpsdGnssDeviceDylib::GpsdGnssDeviceDylib(GpsdGnssDeviceDylib *this)
{
  *this = 0;
  v2 = GpsdPlatformInfo::instance(0);
  GpsdPlatformInfo::vendorDylibFullPathName(v2, &v26);
  GpsdPreferences::instance(0);
  GpsdPreferences::forceGnssDeviceLibraryName(&__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(&v26, &__str);
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdd,createDevice,forcing gnssDevLibName", buf, 2u);
    }
  }

  v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v26.__r_.__value_.__l.__size_;
  }

  v7 = GpsdLogObjectGeneral;
  if (!v5)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#gdd,createDevice,unsupported platform", buf, 2u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v29 = 1026;
      v30 = 71;
      v31 = 2082;
      v32 = "GpsdGnssDeviceDylib";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "assert");
    std::string::basic_string[abi:ne200100]<0>(v22, "GpsdGnssDeviceDylib");
    std::string::basic_string[abi:ne200100]<0>(v20, "#gdd,createDevice,unsupported platform");
    gpsd::util::triggerDiagnosticReport(v24, v22, v20);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v12 = "false && #gdd,createDevice,unsupported platform";
    v13 = 71;
    if ((v24[23] & 0x80000000) != 0)
    {
      v14 = v24;
      goto LABEL_32;
    }

LABEL_33:
    __assert_rtn("GpsdGnssDeviceDylib", "GpsdGnssDeviceDylib.cpp", v13, v12);
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v26.__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = &v26;
    }

    *buf = 136380675;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdd,createDevice,gnssDevLibName,%{private}s", buf, 0xCu);
    LOBYTE(v6) = *(&v26.__r_.__value_.__s + 23);
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  v10 = dlopen(v9, 4);
  *this = v10;
  if (!v10)
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#gdd,dlopen failed", buf, 2u);
      v11 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v29 = 1026;
      v30 = 77;
      v31 = 2082;
      v32 = "GpsdGnssDeviceDylib";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v19, "assert");
    std::string::basic_string[abi:ne200100]<0>(v17, "GpsdGnssDeviceDylib");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gdd,dlopen failed");
    gpsd::util::triggerDiagnosticReport(v19, v17, __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v12 = "false && #gdd,dlopen failed";
    v13 = 77;
    if ((v19[23] & 0x80000000) != 0)
    {
      v14 = v19;
LABEL_32:
      operator delete(*v14);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_10004DADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v50 - 97) < 0)
  {
    operator delete(*(v50 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::CommPcie::CommPcie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100172C90;
  *(a1 + 96) = 0;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](a1 + 104, a3);
  if (qword_100180F00)
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#pcie,sReadCallbackFunction collision", v8, 2u);
    }
  }

  std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100](v8, a2);
  v6 = v9;
  if (v9 == v8)
  {
    if (qword_100180F20 == &qword_100180F08)
    {
      (*(*v9 + 24))();
      (*(*v9 + 32))(v9);
      v9 = 0;
      (*(*qword_100180F20 + 24))(qword_100180F20, v8);
      (*(*qword_100180F20 + 32))(qword_100180F20);
      qword_100180F20 = 0;
      v9 = v8;
      (*(v10[0] + 24))(v10, &qword_100180F08);
      (*(v10[0] + 32))(v10);
    }

    else
    {
      (*(*v9 + 24))();
      (*(*v9 + 32))(v9);
      v9 = qword_100180F20;
    }

    qword_100180F20 = &qword_100180F08;
  }

  else if (qword_100180F20 == &qword_100180F08)
  {
    (*(qword_100180F08 + 24))(&qword_100180F08, v8);
    (*(*qword_100180F20 + 32))(qword_100180F20);
    qword_100180F20 = v9;
    v9 = v8;
  }

  else
  {
    v9 = qword_100180F20;
    qword_100180F20 = v6;
  }

  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_10004DEC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommPcie::~CommPcie(GnssHal::CommPcie *this)
{
  *this = off_100172C90;
  GnssHal::CommPcie::close(this);
  std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  if (*(this + 96) == 1)
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#pcie,freeInternal", buf, 2u);
    }

    v3 = TelephonyUtilTransportFree();
    v4 = GpsdLogObjectGeneral;
    if (v3)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#pcie,freeInternal,success", v6, 2u);
      }
    }

    else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#pcie,freeInternal,failure", v5, 2u);
    }

    *(this + 96) = 0;
  }

  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 104);
}

{
  GnssHal::CommPcie::~CommPcie(this);

  operator delete();
}

uint64_t GnssHal::CommPcie::setReadCallback(uint64_t a1, uint64_t a2)
{
  std::function<void ()(unsigned char *,unsigned long)>::operator=(&_MergedGlobals, a2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 24) != 0;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#pcie,setReadCallback,%{public}d", v6, 8u);
  }

  return 1;
}

BOOL GnssHal::CommPcie::openInternal(GnssHal::CommPcie *this, int a2)
{
  v2 = GpsdLogObjectGeneral;
  if (*(this + 96) == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#pcie,open,already open", buf, 2u);
    }

    return 1;
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#pcie,open,creating,timeout,%{public}d", buf, 8u);
    }

    TelephonyBasebandPCITransportInitParameters();
    *buf = 14;
    v13 = 1000 * a2;
    v14 |= 5u;
    v15 = 0x100000000004;
    v18 = 25;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke;
    v9[3] = &__block_descriptor_tmp_2;
    v9[4] = this;
    v12 = v9;
    v16 = &__block_literal_global;
    v17 = &__block_literal_global_10;
    v6 = TelephonyBasebandPCITransportCreate();
    v7 = GpsdLogObjectGeneral;
    if (v6)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#pcie,open,success", v8, 2u);
      }

      result = 1;
    }

    else
    {
      result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v8 = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#pcie,open,failure", v8, 2u);
        result = 0;
      }
    }

    *(this + 96) = result;
  }

  return result;
}

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  memset(&v14, 0, sizeof(v14));
  v8 = GpsdLogObjectGeneral;
  v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (a2 == 1)
    {
      if (v9)
      {
        *buf = 134283777;
        *v16 = a3;
        *&v16[8] = 2049;
        *&v16[10] = a4;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,PCITransportStatusError,%{private}p,%{private}p", buf, 0x16u);
      }

      v10 = "#pcie_TransportStatusError";
    }

    else
    {
      if (v9)
      {
        *buf = 67240705;
        *v16 = a2;
        *&v16[4] = 2049;
        *&v16[6] = a3;
        *&v16[14] = 2049;
        *&v16[16] = a4;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,Unrecognized status 0x%{public}08x,%{private}p,%{private}p", buf, 0x1Cu);
      }

      v10 = "#pcie_UnknownStatus";
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134283777;
      *v16 = a3;
      *&v16[8] = 2049;
      *&v16[10] = a4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,PCITransportStatusNotReady,%{private}p,%{private}p", buf, 0x16u);
    }

    v10 = "#pcie_TransportStatusNotReady";
  }

  std::string::assign(&v14, v10);
  (*(*v7 + 24))(v7);
  if (!qword_100180F20)
  {
    exit(-1);
  }

  v11 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &v14;
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v14.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    *v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#pcie,invoking exit callback,%{public}s", buf, 0xCu);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  if (!qword_100180F20)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*qword_100180F20 + 48))(qword_100180F20, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_10004E628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke_5(id a1, int a2, void *a3, unsigned int a4)
{
  v7 = qword_100180F00;
  if (!a2 && a4 && qword_100180F00)
  {

    std::function<void ()(unsigned char *,unsigned long)>::operator()(&_MergedGlobals, a3, a4);
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67241216;
      v9[1] = a2;
      v10 = 1026;
      v11 = a2 == -536870165;
      v12 = 1026;
      v13 = a2 == -536870168;
      v14 = 1026;
      v15 = a4;
      v16 = 1026;
      v17 = v7 != 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#pcie,async read failure,0x%{public}08x,is_aborted,%{public}d,is_overrun,%{public}d,sz,%{public}u,callback,%{public}d", v9, 0x20u);
    }

    free(a3);
  }
}

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke_2(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v12 = a2;
      v13 = 1026;
      v14 = a4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#pcie,write error,0x%{public}08x,sz,%{public}u", buf, 0xEu);
    }

    v7 = qword_100180F20;
    if (!qword_100180F20)
    {
      exit(-2);
    }

    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#pcie,invoking exit callback,#pcie_writeError", buf, 2u);
      v7 = qword_100180F20;
      v10 = 16;
      strcpy(__p, "#pcie_writeError");
      if (!qword_100180F20)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      v10 = 16;
      strcpy(__p, "#pcie_writeError");
    }

    (*(*v7 + 48))(v7, __p);
    if (v10 < 0)
    {
      operator delete(*__p);
    }

    std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  }
}

uint64_t *GnssHal::CommPcie::close(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#pcie,ignoring close", v3, 2u);
  }

  result = qword_100180F00;
  qword_100180F00 = 0;
  if (result == &_MergedGlobals)
  {
    return (*(_MergedGlobals + 32))(&_MergedGlobals);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t GnssHal::CommPcie::openWithRetries(GnssHal::CommPcie *this, int a2)
{
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  v5 = MachContinuousTimeNs * 0.000000001;
  v6 = a2;
  v7 = gpsd::util::getMachContinuousTimeNs(MachContinuousTimeNs) * 0.000000001;
  v8 = v5 - v7 + a2;
  v9 = llround(v8);
  if (v9 >= 1)
  {
    if (v9 >= 0x1E)
    {
      v10 = 30;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 67240448;
        v27 = v10;
        v28 = 2050;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#pcie,thisOpen,start,thisTimeoutSec,%{public}d,timeLeftSec,%{public}.3f", buf, 0x12u);
      }

      v12 = GnssHal::CommPcie::openInternal(this, v10);
      v13 = v12;
      v14 = gpsd::util::getMachContinuousTimeNs(v12) * 0.000000001;
      v15 = v14 - v7;
      v16 = v5 - v14 + v6;
      v17 = GpsdLogObjectGeneral;
      v18 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 67240704;
        v27 = v13;
        v28 = 2050;
        v29 = v15;
        v30 = 2050;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#pcie,thisOpen,success,%{public}d,durationSec,%{public}.3f,timeLeftSec,%{public}.3f", buf, 0x1Cu);
      }

      v19 = v16 < 5.0 || v13;
      if (v19)
      {
        break;
      }

      if (v15 < 5.0)
      {
        v18 = sleep(5u);
      }

      v7 = gpsd::util::getMachContinuousTimeNs(v18) * 0.000000001;
      v8 = v5 - v7 + v6;
      v20 = llround(v8);
      v10 = v20 >= 0x1E ? 30 : v20;
    }

    while (v20 > 0);
  }

  v21 = (*(*this + 32))(this);
  v22 = GpsdLogObjectGeneral;
  v23 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v24 = gpsd::util::getMachContinuousTimeNs(v23);
    *buf = 67240448;
    v27 = v21;
    v28 = 2050;
    v29 = v24 * 0.000000001 - v5;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#pcie,overallOpen,success,%{public}d,durationSeconds,%{public}.3f", buf, 0x12u);
  }

  return v21;
}

uint64_t GnssHal::CommPcie::write(GnssHal::CommPcie *this, const unsigned __int8 *a2, uint64_t a3)
{
  v10 = 0;
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (!v5 || (v6 = a3, (v4(v3, a2, a3, &v10, 1, 1000, 0) & 1) == 0))
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#pcie, TelephonyUtilTransportWrite failure", v9, 2u);
    }

    return -1;
  }

  return v6;
}

uint64_t GnssHal::CommPcie::enterLowPowerMode(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "enterLowPowerMode";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#pcie, %s, interface not available on PCIe platform", &v3, 0xCu);
  }

  return 0;
}

uint64_t GnssHal::CommPcie::exitLowPowerMode(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "exitLowPowerMode";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#pcie, %s, interface not available on PCIe platform", &v3, 0xCu);
  }

  return 1;
}

uint64_t GnssHal::CommPcie::readWriteFlush(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "#pcie,readWriteFlush not available on PCIe", v3, 2u);
  }

  return 1;
}

uint64_t GnssHal::CommPcie::readFlush(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "#pcie,readFlush not available on PCIe", v3, 2u);
  }

  return 1;
}

void GnssHal::CommPcie::pulseTimeMarkStrobe(GnssHal::CommPcie *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v3 - 301) < 2 || v3 == 107 || v3 == 202)
  {
    if (*(this + 96) == 1)
    {
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x3002000000;
      v5[3] = __Block_byref_object_copy__0;
      v5[4] = __Block_byref_object_dispose__0;
      operator new();
    }
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#pcie,#tt,pulseTimemarkStrobe not supported", &__lk, 2u);
    }
  }
}

void sub_10004F934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::exception_ptr a26, std::mutex *a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~promise((v28 + 40));
  _Unwind_Resume(a1);
}

void ___ZN7GnssHal8CommPcie19pulseTimeMarkStrobeEv_block_invoke(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  if (a2 || !a4)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 67240192;
      DWORD1(v11) = a2;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#pcie,#tt,completion failure,0x%{public}08x", &v11, 8u);
    }

    v9 = *(*(a1 + 32) + 8);
    LOBYTE(v11) = 0;
    v13 = 2;
    std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v9 + 40), &v11);
  }

  else if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *a4;
    v12 = *(a4 + 2);
    v13 = 0;
    std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v10 + 40), &v11);
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#pcie,#tt,completion success", &v11, 2u);
    }
  }
}

void std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 160) = v5;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void ___ZN7GnssHal8CommPcie19pulseTimeMarkStrobeEv_block_invoke_14(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    *v6 = *a2;
    v4 = 1;
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#pcie,#tt-ptm,completion failure", v6, 2u);
    }

    v3 = *(*(a1 + 32) + 8);
    v6[0] = 0;
    v4 = 2;
  }

  v7 = v4;
  std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v3 + 40), v6);
}

void GnssHal::CommPcie::getPortString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]()
{
  result = qword_100180F20;
  qword_100180F20 = 0;
  if (result == &qword_100180F08)
  {
    return (*(qword_100180F08 + 32))(&qword_100180F08);
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__assoc_state<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~__assoc_state(uint64_t a1)
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

uint64_t *std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~promise(uint64_t *a1)
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

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception[1] = a1[1];

  return std::exception_ptr::__from_native_exception_pointer(v3, v4);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3.__cat_ = std::future_category();
  *&v3.__val_ = a1;
  std::future_error::future_error(exception, v3);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

uint64_t _GLOBAL__sub_I_GnssHalCommPcie_cpp()
{
  qword_100180F00 = 0;
  __cxa_atexit(std::function<void ()(unsigned char *,unsigned long)>::~function, &_MergedGlobals, &_mh_execute_header);
  qword_100180F20 = 0;

  return __cxa_atexit(std::function<void ()(std::string)>::~function, &qword_100180F08, &_mh_execute_header);
}

uint64_t GnssHal::PlatformLog::PlatformLog(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *a1 = off_100172E90;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  v6 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogAllToOsLog(v7))
  {
    *(a1 + 50) = 0x101010001100111;
    *(a1 + 58) = 16908545;
    v8 = 258;
    v9 = 64;
  }

  else
  {
    if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) < 2)
    {
      goto LABEL_5;
    }

    *(a1 + 50) = 17826065;
    v16 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
    if (v16 > 4)
    {
      v8 = 256;
      v9 = 54;
    }

    else
    {
      v9 = *&a8[8 * v16];
      v8 = 256;
    }
  }

  *(a1 + v9) = v8;
LABEL_5:
  *v6 &= 0xFFFFFFFFFFFFFE00;
  v10 = GpsdPreferences::instance(0);
  LogLevel = GpsdPreferences::getLogLevel(v10);
  v12 = 0;
  if (LogLevel >= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = LogLevel;
  }

  v14 = (v13 + 1);
  do
  {
    if (v12)
    {
      *v6 |= 1 << v12;
    }

    ++v12;
  }

  while (v14 != v12);
  return a1;
}

void GnssHal::PlatformLog::log(uint64_t a1, unsigned int a2, const void *a3, size_t a4)
{
  v11 = 0;
  GnssHal::PlatformLog::outOfLevelWarning(a1, a2, v10);
  std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](v10);
  if (*(a1 + 32))
  {
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    v9 = a4;
    p_p = &__p;
    if (a4)
    {
      memcpy(&__p, a3, a4);
      p_p = (&__p + a4);
    }

    *p_p = 0;
    (*(**(a1 + 32) + 16))(*(a1 + 32), &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100050428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::PlatformLog::logSystemException(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v8 > 0x20)
  {
    if (v8 <= 0x40)
    {
      v12 = v7 + v8;
      v13 = *(v7 + v8 - 16);
      v14 = *(v7 + v8 - 8);
      v15 = *v7 - 0x3C5A37A36834CED9 * (v13 + v8);
      v17 = v7[2];
      v16 = v7[3];
      v18 = __ROR8__(v15 + v16, 52);
      v19 = __ROR8__(v15, 37);
      v20 = v15 + v7[1];
      v21 = __ROR8__(v20, 7);
      v22 = v20 + v17;
      v23 = v21 + v19;
      v24 = *(v12 - 4) + v17;
      v25 = v14 + v16;
      v26 = __ROR8__(v25 + v24, 52);
      v27 = v23 + v18;
      v28 = __ROR8__(v24, 37);
      v29 = *(v12 - 3) + v24;
      v30 = __ROR8__(v29, 7);
      v31 = v27 + __ROR8__(v22, 31);
      v32 = v29 + v13;
      v33 = v32 + v25;
      v34 = v22 + v16 + v28 + v30 + v26 + __ROR8__(v32, 31);
      v35 = 0x9AE16A3B2F90404FLL;
      v36 = v31 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v33 + v31) - 0x651E95C4D06FBFB1 * v34) ^ ((0xC3A5C85C97CB3127 * (v33 + v31) - 0x651E95C4D06FBFB1 * v34) >> 47));
LABEL_15:
      v11 = (v36 ^ (v36 >> 47)) * v35;
      goto LABEL_19;
    }

    v44 = *(v7 + v8 - 48);
    v43 = *(v7 + v8 - 40);
    v45 = *(v7 + v8 - 24);
    v46 = *(v7 + v8 - 56);
    v47 = *(v7 + v8 - 16);
    v48 = *(v7 + v8 - 8);
    v49 = v46 + v47;
    v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v8))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v8))));
    v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
    v52 = *(v7 + v8 - 64) + v8;
    v53 = v44 + v46 + v52;
    v54 = __ROR8__(v53, 44) + v52;
    v55 = __ROR8__(v52 + v43 + v51, 21);
    v56 = v53 + v43;
    v57 = v54 + v55;
    v58 = v49 + *(v7 + v8 - 32) - 0x4B6D499041670D8DLL;
    v59 = v45 + v47 + v58;
    v60 = v59 + v48;
    v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
    v62 = v7 + 4;
    v63 = *v7 - 0x4B6D499041670D8DLL * v43;
    v64 = -((v8 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v65 = *(v62 - 3);
      v66 = v63 + v56 + v49 + v65;
      v67 = v62[2];
      v68 = v62[3];
      v69 = v62[1];
      v49 = v69 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v67, 42);
      v70 = v51 + v60;
      v71 = *(v62 - 2);
      v72 = *(v62 - 1);
      v73 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
      v74 = v73 + v60 + v72;
      v75 = v73 + v65 + v71;
      v56 = v75 + v72;
      v76 = __ROR8__(v75, 44) + v73;
      v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v61;
      v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
      v57 = v76 + __ROR8__(v74 + v77, 21);
      v78 = v63 + v61 + *v62;
      v60 = v69 + v67 + v78 + v68;
      v61 = __ROR8__(v69 + v67 + v78, 44) + v78 + __ROR8__(v49 + v71 + v78 + v68, 21);
      v62 += 8;
      v51 = v77;
      v64 += 64;
    }

    while (v64);
    v79 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
    v80 = 0x9DDFEA08EB382D69 * (v79 ^ (v77 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47))));
    v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) ^ ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) >> 47));
  }

  else
  {
    if (v8 > 0x10)
    {
      v37 = v7[1];
      v38 = 0xB492B66FBE98F273 * *v7;
      v39 = __ROR8__(0x9AE16A3B2F90404FLL * *(v7 + v8 - 8), 30) + __ROR8__(v38 - v37, 43);
      v40 = v38 + v8 + __ROR8__(v37 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v7 + v8 - 8);
      v41 = (v39 - 0x3C5A37A36834CED9 * *(v7 + v8 - 16)) ^ v40;
      v35 = 0x9DDFEA08EB382D69;
      v42 = v40 ^ ((0x9DDFEA08EB382D69 * v41) >> 47) ^ (0x9DDFEA08EB382D69 * v41);
LABEL_14:
      v36 = 0x9DDFEA08EB382D69 * v42;
      goto LABEL_15;
    }

    if (v8 >= 9)
    {
      v9 = *(v7 + v8 - 8);
      v10 = __ROR8__(v9 + v8, v8);
      v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ *v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ *v7)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ *v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ *v7)))) >> 47))) ^ v9;
      goto LABEL_19;
    }

    if (v8 >= 4)
    {
      v93 = *(v7 + v8 - 4);
      v94 = (v8 + (8 * *v7)) ^ v93;
      v35 = 0x9DDFEA08EB382D69;
      v42 = v93 ^ ((0x9DDFEA08EB382D69 * v94) >> 47) ^ (0x9DDFEA08EB382D69 * v94);
      goto LABEL_14;
    }

    v11 = 0x9AE16A3B2F90404FLL;
    if (v8)
    {
      v95 = v8 | (4 * *(v7 + v8 - 1));
      v96 = 0x9AE16A3B2F90404FLL * (*v7 | (*(v7 + (v8 >> 1)) << 8));
      v11 = 0x9AE16A3B2F90404FLL * ((0xC949D7C7509E6557 * v95) ^ v96 ^ (((0xC949D7C7509E6557 * v95) ^ v96) >> 47));
    }
  }

LABEL_19:
  if (*(a1 + 24) == 1)
  {
    v81 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v82 = a3[1] - *a3;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v108 = v82;
      _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "logSystemException,%{private}s,%{public}zu,size,%{public}zu", &buf, 0x20u);
    }
  }

  else
  {
    v83 = GpsdPreferences::instance(0);
    GpsdPreferences::vendorLogDirectory(v83, &buf);
    v84 = std::string::append(&buf, "/gnss_hw_exception.bin");
    v85 = *&v84->__r_.__value_.__l.__data_;
    v100 = v84->__r_.__value_.__r.__words[2];
    *__p = v85;
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    std::ofstream::basic_ofstream(&buf, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "logSystemException(", 19);
    v86 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, ",", 1);
    v88 = *a3;
    v87 = a3[1];
    v89 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ")\n", 2);
    v90 = *a3;
    v91 = a3[1];
    std::ostream::write();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&buf + *(buf.__r_.__value_.__r.__words[0] - 24)), *&v109[*(buf.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v92 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v97 = a2;
      }

      else
      {
        v97 = *a2;
      }

      v98 = a3[1] - *a3;
      *v101 = 136381187;
      v102 = v97;
      v103 = 2050;
      v104 = v11;
      v105 = 2050;
      v106 = v98;
      _os_log_fault_impl(&_mh_execute_header, v92, OS_LOG_TYPE_FAULT, "logSystemException,%{private}s,%{public}zu,size,%{public}zu", v101, 0x20u);
    }

    *(a1 + 24) = 1;
    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100050BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***std::ofstream::basic_ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100050DB8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformLog::flush(GnssHal::PlatformLog *this)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100172F18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000511C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000511A4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000513F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsIndusImpl::requestBasebandReset(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v6[0] = 67240451;
    v6[1] = a2;
    v7 = 2081;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#bbReset,extensionsIndus,%{public}d,%{private}s", v6, 0x12u);
  }
}

char *GnssHal::ExtensionsIndusImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsIndusImpl *this)
{
  if (*(this + 16))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

uint64_t GnssHal::ExtensionsIndusImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

id GnssHal::ExtensionsIndusImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

void GnssHal::ExtensionsIndusImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

id GnssHal::ExtensionsIndusImpl::debugFeaturesBitmask(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsIndusImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsIndusImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

double GnssHal::ExtensionsIndusImpl::crossCorrelationSettings(GnssHal::ExtensionsIndusImpl *this)
{
  result = *(this + 4);
  v2 = *(this + 5);
  v3 = *(this + 6);
  v4 = *(this + 7);
  return result;
}

uint64_t GnssDeviceCommon::GnssDeviceCommon(uint64_t a1, uint64_t a2)
{
  *a1 = off_100172870;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x10000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  if (!a2)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "GnssDeviceCommon,ctor,fDeviceCallback,nullptr", buf, 2u);
      v9 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GnssDeviceCommon.cpp";
      v18 = 1026;
      v19 = 23;
      v20 = 2082;
      v21 = "GnssDeviceCommon";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v14, "assert");
    std::string::basic_string[abi:ne200100]<0>(v12, "GnssDeviceCommon");
    std::string::basic_string[abi:ne200100]<0>(__p, "GnssDeviceCommon,ctor,fDeviceCallback,nullptr");
    gpsd::util::triggerDiagnosticReport(v14, v12, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    __assert_rtn("GnssDeviceCommon", "GnssDeviceCommon.cpp", 23, "false && GnssDeviceCommon,ctor,fDeviceCallback,nullptr");
  }

  v3 = GpsdPlatformInfo::instance(0);
  *(a1 + 184) = GpsdPlatformInfo::getNonAsicPowerParameters(v3);
  *(a1 + 192) = v4;
  *(a1 + 200) = v5;
  *(a1 + 208) = v6;
  v7 = GpsdPreferences::instance(0);
  *(a1 + 243) = GpsdPreferences::enableL5(v7);
  return a1;
}

void sub_100051968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *v27;
  *v27 = 0;
  if (v29)
  {
    (*(*v29 + 16))(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssDeviceCommon::setNmeaHandlerHelper(NmeaLogging *a1, uint64_t a2)
{
  NmeaMask = NmeaLogging::getNmeaMask(a1);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v11 = NmeaMask;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,configureDevice,enable NMEA,success,%{public}llx", buf, 0xCu);
  }

  v6 = *(a1 + 1);
  v9[0] = off_100173128;
  v9[1] = a1;
  v9[3] = v9;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a2);
  (*(*v6 + 112))(v6, NmeaMask, v9, v8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v9);
}

void sub_100051B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void GnssDeviceCommon::createDeviceHelper()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#gdm,createDevice", buf, 2u);
  }

  gnss::deviceVersionCheck(0);
  operator new();
}

void sub_100051D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 + 8);
  if (a3)
  {
    (*(*a3 + 48))(a3);
  }

  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9 + 8);
  _Unwind_Resume(a1);
}

void GnssDeviceCommon::deviceVersionCheck(GnssDeviceCommon *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gpsd,configureDevice,fDevice,nullptr", buf, 2u);
      v5 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136446722;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GnssDeviceCommon.cpp";
      v10 = 1026;
      v11 = 55;
      v12 = 2082;
      v13 = "deviceVersionCheck";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v8, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v7, "deviceVersionCheck");
    std::string::basic_string[abi:ne200100]<0>(&v6, "#gpsd,configureDevice,fDevice,nullptr");
    gpsd::util::triggerDiagnosticReport(&v8, &v7, &v6);
    std::string::~string(&v6);
    std::string::~string(&v7);
    std::string::~string(&v8);
    __assert_rtn("deviceVersionCheck", "GnssDeviceCommon.cpp", 55, "false && #gpsd,configureDevice,fDevice,nullptr");
  }

  v2 = (**v1)(v1);
  if (v2 != 2507)
  {
    v3 = gnss::Exception::instance(v2);
    gnss::Exception::set(v3, 9);
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 67240192;
    buf[1] = 2507;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,Device remote interface version,%{public}d", buf, 8u);
  }
}

void sub_1000521B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void GnssDeviceCommon::ActivityCheck::mute(GnssDeviceCommon::ActivityCheck *this)
{
  v2 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
  *this = v2;
  *(this + 8) = 1;
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134349056;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,activityCheck,mute,%{public}.2f", &v4, 0xCu);
  }
}

uint64_t GnssDeviceCommon::recoveryStatisticsCallback(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v3 = *a2;
    std::operator+<char>();
    v4 = std::string::append(&v14, ":");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v13, *(*a2 + 24));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v17, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    *v15 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v10 = gnss::Exception::instance(v8);
    v11 = *(*a2 + 24);
    gnss::Exception::set(v10, 4);
  }

  return (*(**(a1 + 216) + 80))(*(a1 + 216), a2);
}

void sub_1000525EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
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

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssDeviceCommon::decodedRtiCallback(GnssDeviceCommon *a1, uint64_t a2)
{
  v10 = 0;
  PossiblyAccurateGpsTimeSeconds = GnssDeviceCommon::getPossiblyAccurateGpsTimeSeconds(a1, &v10);
  v5 = *a2;
  v6 = PossiblyAccurateGpsTimeSeconds - *a2;
  v7 = *(a2 + 8);
  v8 = GpsdLogObjectGeneral;
  if (v7 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241216;
      v12 = 1;
      v13 = 2050;
      v14 = v5;
      v15 = 2050;
      v16 = v6;
      v17 = 2050;
      v18 = v6 * 0.0000115740741;
      v19 = 1026;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#gdm,decodedRti,integrityValid,%{public}d,fileTimeGpsSec,%{public}llu,ageSecs,%{public}.1f,ageDays,%{public}.2f,isAgeAccurate,%{public}d", buf, 0x2Cu);
    }
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 67241216;
    v12 = v7;
    v13 = 2050;
    v14 = v5;
    v15 = 2050;
    v16 = v6;
    v17 = 2050;
    v18 = v6 * 0.0000115740741;
    v19 = 1026;
    v20 = v10;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#gdm,decodedRti,integrityValid,%{public}d,fileTimeGpsSec,%{public}llu,ageSecs,%{public}.1f,ageDays,%{public}.2f,isAgeAccurate,%{public}d", buf, 0x2Cu);
  }

  return (*(**(a1 + 27) + 64))(*(a1 + 27), a2, v6 * 0.0000115740741);
}

void gpsd::util::DiagnosticReportParameters::~DiagnosticReportParameters(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<GnssDeviceCommon::setNmeaHandlerHelper(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::setNmeaHandlerHelper(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::vector<std::string> &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100173128;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssDeviceCommon::setNmeaHandlerHelper(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::setNmeaHandlerHelper(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::vector<std::string> &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_1001731B8;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = off_1001731B8;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 2));

  operator delete();
}

uint64_t std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_1001731B8;
  a2[1] = v2;
  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(GpsdRuntime *a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 1);
  v5 = GpsdRuntime::instance(a1);
  v7[0] = off_100173228;
  v7[1] = v4;
  v7[3] = v7;
  GpsdRuntime::asyncDevice(v5, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  return std::function<void ()(gnss::Result)>::operator()(a1 + 16, v3);
}

uint64_t std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100173228;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 16) = 0;
  GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((v1 + 256));
}

uint64_t std::__function::__func<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1},std::allocator<GnssDeviceCommon::createDeviceHelper(GnssHal::InterfacesUtil *,std::unique_ptr<gnss::Emergency::Supl::ConnectionManager>,std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceCommon::nmeaCallback(std::vector<std::string> &&)::$_0,std::allocator<std::vector<std::string> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0,std::allocator<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_100173338;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0,std::allocator<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result,gnss::TimeTransferData)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1},std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_100173438;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1},std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_1,std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *GnssHal::GpioEmbedded::GpioEmbedded(void *a1, uint64_t a2)
{
  *a1 = off_100173548;
  a1[4] = 0;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100]((a1 + 5), a2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#gpio,frontend,ctor,start", buf, 2u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v5 = GnssHal::GpioEmbedded::GpioBackend::instance(v4);
  GnssHal::GpioEmbedded::GpioBackend::setFrontend(v5, a1);
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#gpio,frontend,ctor,end", v8, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
  return a1;
}

void sub_100053264(_Unwind_Exception *a1)
{
  std::mutex::unlock(&GnssHal::sMutex);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::instance(GnssHal::GpioEmbedded::GpioBackend *this)
{
  if (GnssHal::GpioEmbedded::GpioBackend::instance(void)::pred != -1)
  {
    dispatch_once(&GnssHal::GpioEmbedded::GpioBackend::instance(void)::pred, &__block_literal_global_0);
  }

  result = GnssHal::GpioEmbedded::GpioBackend::fInstance;
  if (!GnssHal::GpioEmbedded::GpioBackend::fInstance)
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "null GpioBackend", buf, 2u);
      v2 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalGpioImpl.cpp";
      v8 = 1026;
      v9 = 299;
      v10 = 2082;
      v11 = "instance";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v4, "instance");
    std::string::basic_string[abi:ne200100]<0>(&v3, "null GpioBackend");
    gpsd::util::triggerDiagnosticReport(&v5, &v4, &v3);
    std::string::~string(&v3);
    std::string::~string(&v4);
    std::string::~string(&v5);
    __assert_rtn("instance", "GnssHalGpioImpl.cpp", 299, "false && null GpioBackend");
  }

  return result;
}

void sub_100053454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void GnssHal::GpioEmbedded::GpioBackend::setFrontend(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = a2 == 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#gpio,set frontend,isNull,%{public}d", v4, 8u);
  }
}

void GnssHal::GpioEmbedded::~GpioEmbedded(GnssHal::GpioEmbedded *this)
{
  *this = off_100173548;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#gpio,frontend,dtor,start", buf, 2u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
  GnssHal::GpioEmbedded::GpioBackend::setFrontend(v4, 0);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#gpio,frontend,dtor,end", v6, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 40);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](this + 8);
}

{
  GnssHal::GpioEmbedded::~GpioEmbedded(this);

  operator delete();
}

void GnssHal::GpioEmbedded::setResetLow(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 103 || v1 == 201 || v1 == 106)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setResetLow", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 1u, 0);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::GpioBackend::setGpioState(uint64_t a1, uint32_t a2, uint64_t a3)
{
  v3 = a3;
  input = a3;
  std::mutex::lock(&GnssHal::sMutex);
  if (*(a1 + 8) == 1)
  {
    IOConnectCallScalarMethod(*(a1 + 12), a2, &input, 1u, 0, 0);
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v9 = a2;
      v10 = 1026;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gpio,setGpioState failed,selector,%{public}d,input,%{public}d", buf, 0xEu);
    }
  }

  std::mutex::unlock(&GnssHal::sMutex);
}

void GnssHal::GpioEmbedded::setResetHigh(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 103 || v1 == 201 || v1 == 106)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setResetHigh", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 1u, 1uLL);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::setDeviceWakeLow(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 106 || v1 == 103)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setDeviceWakeLow", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 3u, 1uLL);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::setDeviceWakeHigh(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 106 || v1 == 103)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setDeviceWakeHigh", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 3u, 0);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::pulseTimeMarkStrobe(GnssHal::GpioEmbedded *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = GpsdPlatformInfo::instance(0);
  v5 = *(v4 + 2);
  if (v5 != 103 && v5 != 106 && v5 != 201)
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v21 = "#gpio,pulseTimeMarkStrobe not supported";
    goto LABEL_17;
  }

  connection = 0;
  v6 = GnssHal::GpioEmbedded::GpioBackend::instance(v4);
  if (!GnssHal::GpioEmbedded::GpioBackend::controlConnect(v6, &connection))
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v21 = "#gpio,#tt,GPSControlConnect failed";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    return;
  }

  outputCnt = 2;
  v8 = IOConnectCallScalarMethod(connection, 5u, 0, 0, output, &outputCnt);
  if (v8 || outputCnt != 2)
  {
    v22 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#gpio,#tt,TogglePIN,failed,Result,%{public}08x", buf, 8u);
    }
  }

  else
  {
    v24 = 0;
    CurrentMachContinuousMinusMachAbsoluteNanoseconds = gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(&v24, v7);
    if (CurrentMachContinuousMinusMachAbsoluteNanoseconds)
    {
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(CurrentMachContinuousMinusMachAbsoluteNanoseconds);
      *(a2 + 16) = 1;
      v11 = gpsd::util::convertMachTimeInTicksToNs(output[0]);
      v12 = v24;
      v13 = v24 + v11;
      *a2 = v24 + v11;
      v14 = gpsd::util::convertMachTimeInTicksToNs(output[1]);
      v15 = v14 + v12;
      *(a2 + 8) = v14 + v12;
      v16 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v17 = gpsd::util::convertMachTimeInTicksToNs(output[0]);
        v18 = gpsd::util::convertMachTimeInTicksToNs(output[1]);
        *buf = 134350336;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        v31 = 2050;
        v32 = (v14 - v11);
        v33 = 2050;
        v34 = MachContinuousTimeNs;
        v35 = 2050;
        v36 = v17;
        v37 = 2050;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#gpio,#tt,TogglePIN,beforeContNs,%{public}llu,afterContNs,%{public}llu,widthNs,%{public}llu,nowContNs,%{public}llu,beforeMachNs,%{public}llu,afterMachNs,%{public}llu", buf, 0x3Eu);
      }

      v29 = 0;
      std::mutex::lock(&GnssHal::sMutex);
      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](buf, this + 40);
      v19 = v32;
      if (v32 == buf)
      {
        if (v29 == v28)
        {
          (*(*v32 + 24))();
          (*(*v32 + 32))(v32);
          v32 = 0;
          (*(*v29 + 24))(v29, buf);
          (*(*v29 + 32))(v29);
          v29 = 0;
          v32 = buf;
          (*(v39[0] + 24))(v39, v28);
          (*(v39[0] + 32))(v39);
        }

        else
        {
          (*(*v32 + 24))();
          (*(*v32 + 32))(v32);
          v32 = v29;
        }

        v29 = v28;
      }

      else if (v29 == v28)
      {
        (*(*v29 + 24))(v29, buf);
        (*(*v29 + 32))(v29);
        v29 = v32;
        v32 = buf;
      }

      else
      {
        v32 = v29;
        v29 = v19;
      }

      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](buf);
      std::mutex::unlock(&GnssHal::sMutex);
      if (v29)
      {
        *buf = *output;
        (*(*v29 + 48))(v29, buf);
      }

      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v28);
    }

    else
    {
      v23 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#gpio,#tt,machCont timestamping failed", buf, 2u);
      }
    }
  }

  IOServiceClose(connection);
}

void sub_1000540CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL GnssHal::GpioEmbedded::GpioBackend::controlConnect(GnssHal::GpioEmbedded::GpioBackend *this, unsigned int *a2)
{
  mainPort = 0;
  v4 = IOMainPort(0, &mainPort);
  if (v4)
  {
    v5 = v4;
    v6 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 67240192;
    LODWORD(v22) = v5;
    v11 = "#gpio,IOMasterPort failed,%{public}d";
    goto LABEL_15;
  }

  v8 = IOServiceMatching("AppleEmbeddedGPSControl");
  if (v8)
  {
    existing = 0;
    MatchingServices = IOServiceGetMatchingServices(mainPort, v8, &existing);
    if (MatchingServices)
    {
      v10 = MatchingServices;
      v6 = GpsdLogObjectGeneral;
      result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 67240192;
        LODWORD(v22) = v10;
        v11 = "#gpio,IOServiceGetMatchingServices failed,%{public}d";
LABEL_15:
        v13 = v6;
        v14 = 8;
        goto LABEL_16;
      }
    }

    else
    {
      *(this + 4) = IOIteratorNext(existing);
      IOObjectRelease(existing);
      v15 = *(this + 4);
      if (v15)
      {
        v16 = IOServiceOpen(v15, mach_task_self_, 0, a2);
        if (!v16)
        {
          return 1;
        }

        v17 = v16;
        v6 = GpsdLogObjectGeneral;
        result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 67240192;
          LODWORD(v22) = v17;
          v11 = "#gpio,IOServiceOpen failed,%{public}d";
          goto LABEL_15;
        }
      }

      else
      {
        v18 = GpsdLogObjectGeneral;
        result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v11 = "#gpio,No fServiceObject";
          v13 = v18;
          v14 = 2;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v12 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315138;
      v22 = "AppleEmbeddedGPSControl";
      v11 = "#gpio,IOServiceMatching failed,%s";
      v13 = v12;
      v14 = 12;
LABEL_16:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
      return 0;
    }
  }

  return result;
}

void GnssHal::GpioEmbedded::GpioBackend::callback(GnssHal::GpioEmbedded::GpioBackend *this, uint64_t a2)
{
  if (*this)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gpio,callback,locked", &v7, 2u);
    }

    if (a2)
    {
      if (a2 == 1)
      {
        GnssHal::GpioEmbedded::notifyDevice(*this, 0);
        ++*(this + 6);
      }

      else
      {
        v6 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v7 = 134349056;
          v8 = a2;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gpio,Unrecognized messageArg,%{public}llu", &v7, 0xCu);
        }
      }
    }

    else
    {
      GnssHal::GpioEmbedded::notifyDevice(*this, 1);
      ++*(this + 5);
    }
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134349056;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gpio,pGpioObject null,%{public}llu", &v7, 0xCu);
    }
  }
}

void GnssHal::GpioEmbedded::notifyDevice(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = GpsdLogObjectGeneral;
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v8 = 67240192;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,int,sending,%{public}d,", &v8, 8u);
      v4 = *(a1 + 32);
      v8 = a2;
      if (!v4)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      v8 = a2;
    }

    (*(*v4 + 48))(v4, &v8);
  }

  else if (v6)
  {
    v8 = 67240192;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,int,no callback,%{public}d,", &v8, 8u);
  }

  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,done", &v8, 2u);
  }
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::incrementApGpioTransitionCount(uint64_t this, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return this;
    }

LABEL_5:
    ++*(this + 24);
    return this;
  }

  ++*(this + 20);
  if (a3)
  {
    goto LABEL_5;
  }

  return this;
}

BOOL GnssHal::GpioEmbedded::GpioBackend::registerForNotifications(GnssHal::GpioEmbedded::GpioBackend *this)
{
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  if (v2)
  {
    v3 = v2;
    global_queue = dispatch_get_global_queue(2, 0);
    IONotificationPortSetDispatchQueue(v3, global_queue);
    notification = 0;
    v5 = IOServiceAddInterestNotification(v3, *(this + 4), "IOGeneralInterest", GnssHal::GPSControlInterestCallback, 0, &notification);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5;
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#gpio,failed to register interest in notification,%{public}d", buf, 8u);
      }
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#gpio,failed to create notification port", buf, 2u);
    }

    return 0;
  }

  return v6;
}

void GnssHal::GPSControlInterestCallback(GnssHal *this, void *a2, int a3, uint64_t a4, void *a5)
{
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67240448;
    v11[1] = a3;
    v12 = 2050;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#gpio,callback,begin,%{public}u,%{public}llu", v11, 0x12u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v9 = GnssHal::GpioEmbedded::GpioBackend::instance(v8);
  GnssHal::GpioEmbedded::GpioBackend::callback(v9, a4);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#gpio,callback,end", v11, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
}

void GnssHal::GpioEmbedded::setGpioNotifier(uint64_t a1, uint64_t a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 24) == 0;
    v10[0] = 67240192;
    v10[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gpio,setGpioNotifier,int,isNull,%{public}d", v10, 8u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a2)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v11 = v6;
    goto LABEL_8;
  }

  v11 = v10;
  (*(*v6 + 24))(v6, v10);
LABEL_8:
  v7 = a1 + 8;
  if (v10 != (a1 + 8))
  {
    v8 = v11;
    v9 = *(a1 + 32);
    if (v11 == v10)
    {
      if (v9 == v7)
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = 0;
        (*(**(a1 + 32) + 24))(*(a1 + 32), v10);
        (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(a1 + 32) = 0;
        v11 = v10;
        (*(v12[0] + 24))(v12, a1 + 8);
        (*(v12[0] + 32))(v12);
      }

      else
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = *(a1 + 32);
      }

      *(a1 + 32) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(a1 + 32), v10);
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(a1 + 32) = v11;
      v11 = v10;
    }

    else
    {
      v11 = *(a1 + 32);
      *(a1 + 32) = v8;
    }
  }

  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v10);
  std::mutex::unlock(&GnssHal::sMutex);
}

void sub_100054CA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::getApGpioZeroTransitionCount(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  v2 = *(this + 5);
  std::mutex::unlock(&GnssHal::sMutex);
  return v2;
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::getApGpioOneTransitionCount(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  v2 = *(this + 6);
  std::mutex::unlock(&GnssHal::sMutex);
  return v2;
}

void GnssHal::GpioEmbedded::GpioBackend::clearApGpioTransitionCounts(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  *(this + 5) = 0;
  *(this + 6) = 0;

  std::mutex::unlock(&GnssHal::sMutex);
}

GnssHal::GpioEmbedded::GpioBackend *GnssHal::GpioEmbedded::GpioBackend::GpioBackend(GnssHal::GpioEmbedded::GpioBackend *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#gpio,backend,ctor,start", buf, 2u);
  }

  v3 = GnssHal::GpioEmbedded::GpioBackend::controlConnect(this, this + 3);
  *(this + 8) = v3;
  if (v3)
  {
    GnssHal::GpioEmbedded::GpioBackend::registerForNotifications(this);
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gpio,controlConnect,success", v10, 2u);
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gpio,controlConnect,failure", v9, 2u);
    }
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#gpio,backend,ctor,end", v8, 2u);
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GnssHal::CommSpi::CommSpi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100173600;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](a1 + 8, a2);
  v5 = GpsdPreferences::instance(0);
  *(a1 + 40) = GpsdPreferences::verboseCommDataSize(v5);
  v6 = GpsdPreferences::instance(0);
  v7 = GpsdPreferences::verboseCommDataSniffer(v6);
  *(a1 + 96) = 0u;
  *(a1 + 41) = v7;
  *(a1 + 42) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  v8 = GpsdPreferences::instance(0);
  v9 = GpsdPreferences::maxSchedulerQos(v8);
  *(a1 + 96) = GpsdRuntime::dispatchQueueInit(v9, "commTx", v10);
  v12 = GpsdRuntime::dispatchQueueInit(0x19, "commRx", v11);
  *(a1 + 104) = v12;
  if (!*(a1 + 88))
  {
    *(a1 + 88) = v12;
  }

  operator new();
}

uint64_t GnssHal::CommSpi::setReadCallback(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (v4)
  {
    if (a1[10])
    {
      v5 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#spi,setReadCallback,overwrite", buf, 2u);
      }
    }

    std::function<void ()(unsigned char *,unsigned long)>::operator=(a1 + 7, a2);
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v7 = "#spi,setReadCallback";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, v10, v7, v8, 2u);
    }
  }

  else
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v7 = "#spi,setReadCallback,notSupported";
      v8 = v15;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

  return v4;
}

void GnssHal::CommSpi::createIoPlugin(GnssHal::CommSpi *this)
{
  v2 = (this + 48);
  if (!*(this + 6))
  {
    v3 = IOServiceNameMatching("gnss");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    if (!MatchingService)
    {
      v25 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#spi,fail,IOServiceGetMatchingService", buf, 2u);
        v25 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 128;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v61, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v60, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v59, "#spi,fail,IOServiceGetMatchingService");
      gpsd::util::triggerDiagnosticReport(&v61, &v60, &v59);
      std::string::~string(&v59);
      std::string::~string(&v60);
      std::string::~string(&v61);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 128, "false && #spi,fail,IOServiceGetMatchingService");
    }

    child = 0;
    ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", &child);
    if (ChildEntry)
    {
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v27 = mach_error_string(ChildEntry);
        *buf = 67240450;
        *v63 = ChildEntry;
        *&v63[4] = 2082;
        *&v63[6] = v27;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#spi,fail,kern,IORegistryEntryGetChildEntry,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v26 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 132;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v57, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v56, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v55, "#spi,fail,kern,IORegistryEntryGetChildEntry,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v57, &v56, &v55);
      std::string::~string(&v55);
      std::string::~string(&v56);
      std::string::~string(&v57);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 132, "false && #spi,fail, kern, IORegistryEntryGetChildEntry ,errCode,0x%{public}X,%{public}s");
    }

    theScore = 0;
    v6 = child;
    v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x31u, 0x68u, 0xB0u, 0x8Eu, 0xE5u, 0x7Du, 0x4Eu, 4u, 0x92u, 0xC9u, 0xC0u, 0x15u, 0xB8u, 0xB0u, 0xE9u, 0xABu);
    v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v9 = IOCreatePlugInInterfaceForService(v6, v7, v8, v2, &theScore);
    if (v9)
    {
      v30 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v31 = mach_error_string(v9);
        *buf = 67240450;
        *v63 = v9;
        *&v63[4] = 2082;
        *&v63[6] = v31;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#spi,fail,kern,IOCreatePlugInInterfaceForService,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v30 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 136;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v53, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v52, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v51, "#spi,fail,kern,IOCreatePlugInInterfaceForService,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v53, &v52, &v51);
      std::string::~string(&v51);
      std::string::~string(&v52);
      std::string::~string(&v53);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 136, "false && #spi,fail, kern, IOCreatePlugInInterfaceForService ,errCode,0x%{public}X,%{public}s");
    }

    v10 = *v2;
    if (!*v2 || !*v10)
    {
      v24 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#spi,fIOCFPluginInterface,nullptr", buf, 2u);
        v24 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 137;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v50, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v49, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v48, "#spi,fIOCFPluginInterface,nullptr");
      gpsd::util::triggerDiagnosticReport(&v50, &v49, &v48);
      std::string::~string(&v48);
      std::string::~string(&v49);
      std::string::~string(&v50);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 137, "false && #spi,fIOCFPluginInterface,nullptr");
    }

    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *v63 = v10;
      *&v63[8] = 1026;
      *&v63[10] = theScore;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#spi,opened,plugin,%{public}p,score,%{public}d", buf, 0x12u);
    }
  }

  v13 = (this + 112);
  v12 = *(this + 14);
  if (!v12)
  {
    v14 = *v2;
    QueryInterface = (**v2)->QueryInterface;
    v16 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xE8u, 0x77u, 0xCDu, 0x61u, 0x8Du, 0x30u, 0x46u, 0x2Du, 0xA3u, 0xB7u, 0xB0u, 0x11u, 0x5Au, 0x2Cu, 0xF8u, 0xA8u);
    v17 = CFUUIDGetUUIDBytes(v16);
    (QueryInterface)(v14, *&v17.byte0, *&v17.byte8, this + 112);
    ((**v2)->Release)(*v2);
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v13;
      *buf = 134349056;
      *v63 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#spi,opened,ifc,%{public}p", buf, 0xCu);
    }

    v20 = (*(**(this + 14) + 64))(*(this + 14), *(this + 13));
    if (v20)
    {
      v28 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v29 = mach_error_string(v20);
        *buf = 67240450;
        *v63 = v20;
        *&v63[4] = 2082;
        *&v63[6] = v29;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,SetDispatchQueue,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v28 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 145;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v47, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v46, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v45, "#spi,fail,gpti,SetDispatchQueue,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v47, &v46, &v45);
      std::string::~string(&v45);
      std::string::~string(&v46);
      std::string::~string(&v47);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 145, "false && #spi,fail, gpti, SetDispatchQueue ,errCode,0x%{public}X,%{public}s");
    }

    v21 = (*(**(this + 14) + 72))(*(this + 14), GnssHal::CommSpi::readCallback, this);
    if (v21)
    {
      v32 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v33 = mach_error_string(v21);
        *buf = 67240450;
        *v63 = v21;
        *&v63[4] = 2082;
        *&v63[6] = v33;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,RegisterDataHandler,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v32 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 146;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v44, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v43, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v42, "#spi,fail,gpti,RegisterDataHandler,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v44, &v43, &v42);
      std::string::~string(&v42);
      std::string::~string(&v43);
      std::string::~string(&v44);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 146, "false && #spi,fail, gpti, RegisterDataHandler ,errCode,0x%{public}X,%{public}s");
    }

    v22 = (*(**(this + 14) + 88))(*(this + 14), GnssHal::CommSpi::eventCallback, this);
    if (v22)
    {
      v34 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v35 = mach_error_string(v22);
        *buf = 67240450;
        *v63 = v22;
        *&v63[4] = 2082;
        *&v63[6] = v35;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,RegisterEventHandler,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v34 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v63[8] = 1026;
        *&v63[10] = 147;
        v64 = 2082;
        v65 = "createIoPlugin";
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v41, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v40, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v39, "#spi,fail,gpti,RegisterEventHandler,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v41, &v40, &v39);
      std::string::~string(&v39);
      std::string::~string(&v40);
      std::string::~string(&v41);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 147, "false && #spi,fail, gpti, RegisterEventHandler ,errCode,0x%{public}X,%{public}s");
    }

    v12 = *v13;
    if (!*v13)
    {
      goto LABEL_17;
    }
  }

  if (!*v12)
  {
LABEL_17:
    v23 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#spi,open,failed,fGNSSPassthroughInterface,nullptr", buf, 2u);
      v23 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v63 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v63[8] = 1026;
      *&v63[10] = 150;
      v64 = 2082;
      v65 = "createIoPlugin";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v37, "createIoPlugin");
    std::string::basic_string[abi:ne200100]<0>(&v36, "#spi,open,failed,fGNSSPassthroughInterface,nullptr");
    gpsd::util::triggerDiagnosticReport(&v38, &v37, &v36);
    std::string::~string(&v36);
    std::string::~string(&v37);
    std::string::~string(&v38);
    __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 150, "false && #spi,open,failed,fGNSSPassthroughInterface,nullptr");
  }
}

void sub_100056468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void GnssHal::CommSpi::close(GnssHal::CommSpi *this)
{
  if ((*(*this + 32))(this))
  {
    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 0);
    *(this + 42) = 0;
  }

  else
  {
    v2 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#spi,close,notOpen", v3, 2u);
    }
  }
}

void GnssHal::CommSpi::eventCallback(GnssHal::CommSpi *this, void *a2, gpsd::util *a3, const unsigned __int8 *a4)
{
  v4 = GpsdLogObjectGeneral;
  if (!this)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#spi,eventCallback,commSpiObj,null", buf, 2u);
      v4 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v15 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v15[8] = 1026;
      *&v15[10] = 195;
      v16 = 2082;
      v17 = "eventCallback";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v13, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v12, "eventCallback");
    std::string::basic_string[abi:ne200100]<0>(&v11, "#spi,eventCallback,commSpiObj,null");
    gpsd::util::triggerDiagnosticReport(&v13, &v12, &v11);
    std::string::~string(&v11);
    std::string::~string(&v12);
    std::string::~string(&v13);
    __assert_rtn("eventCallback", "GnssHalCommSpi.cpp", 195, "false && #spi,eventCallback,commSpiObj,null");
  }

  v7 = a2;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    gpsd::util::charToHex(a3, a4, 0, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 67241218;
    *v15 = v7;
    *&v15[4] = 2082;
    *&v15[6] = p_p;
    v16 = 2050;
    v17 = this;
    v18 = 2050;
    v19 = a3;
    v20 = 2050;
    v21 = a4;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "#spi,eventCallback,type,%{public}d,data,hex,%{public}s,context,%{public}p,eventp,%{public}p,size,%{public}zu", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100056994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommSpi::destroyIoPlugin(IOCFPlugInInterface ***this)
{
  IODestroyPlugInInterface(this[6]);
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = this[6];
    v4 = this[14];
    v5 = 134349312;
    v6 = v3;
    v7 = 2050;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#spi,closed,plugin,%{public}p,ifc,%{public}p", &v5, 0x16u);
  }

  this[6] = 0;
  this[14] = 0;
}

void GnssHal::CommSpi::AsyncBuffering::flush(NSObject **this)
{
  v1 = *this;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  block[4] = this;
  dispatch_async(v1, block);
}

uint64_t GnssHal::CommSpi::readFlush(GnssHal::CommSpi *this)
{
  v1 = *(this + 16);
  v2 = *v1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  block[4] = v1;
  dispatch_async(v2, block);
  return 1;
}

uint64_t GnssHal::CommSpi::AsyncBuffering::AsyncBuffering(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = a2;
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](a1 + 8, a3);
  *(a1 + 40) = 850045863;
  *(a1 + 128) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  if (!*a1)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#spi,ab,queue,null", buf, 2u);
      v8 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      v25 = 1026;
      v26 = 306;
      v27 = 2082;
      v28 = "AsyncBuffering";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "assert");
    std::string::basic_string[abi:ne200100]<0>(v20, "AsyncBuffering");
    std::string::basic_string[abi:ne200100]<0>(__p, "#spi,ab,queue,null");
    gpsd::util::triggerDiagnosticReport(v22, v20, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v9 = "false && #spi,ab,queue,null";
    v10 = 306;
    if (v22[23] < 0)
    {
      v11 = v22;
LABEL_24:
      operator delete(*v11);
    }

LABEL_25:
    __assert_rtn("AsyncBuffering", "GnssHalCommSpi.cpp", v10, v9);
  }

  if (!*(a3 + 24))
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#spi,ab,cb,null", buf, 2u);
      v12 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      v25 = 1026;
      v26 = 307;
      v27 = 2082;
      v28 = "AsyncBuffering";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "assert");
    std::string::basic_string[abi:ne200100]<0>(v15, "AsyncBuffering");
    std::string::basic_string[abi:ne200100]<0>(v13, "#spi,ab,cb,null");
    gpsd::util::triggerDiagnosticReport(v17, v15, v13);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v9 = "false && #spi,ab,cb,null";
    v10 = 307;
    if ((v17[23] & 0x80000000) != 0)
    {
      v11 = v17;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  std::vector<unsigned char>::reserve((a1 + 104), a4);
  std::vector<unsigned char>::reserve((a1 + 128), a4);
  return a1;
}

void sub_100056F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  v48 = *v46;
  if (*v46)
  {
    v44[17] = v48;
    operator delete(v48);
  }

  v49 = v44[13];
  if (v49)
  {
    v44[14] = v49;
    operator delete(v49);
  }

  std::mutex::~mutex(v45);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100]((v44 + 1));
  _Unwind_Resume(a1);
}

void GnssHal::CommSpi::~CommSpi(GnssHal::CommSpi *this)
{
  GnssHal::CommSpi::~CommSpi(this);

  operator delete();
}

{
  *this = off_100173600;
  GnssHal::CommSpi::close(this);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](this + 16, 0);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](this + 15, 0);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](this + 56);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t *std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      *(v2 + 112) = v4;
      operator delete(v4);
    }

    std::mutex::~mutex((v2 + 40));
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v2 + 8);

    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001736E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100173770;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

GnssHal::PlatformNvStore *GnssHal::PlatformNvStore::PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  *this = &off_1001738F8;
  v2 = (this + 8);
  *(this + 1) = off_10017B5F8;
  v3 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v3, v2);
  *this = off_1001737F0;
  *(this + 1) = off_100173880;
  proto::gnsshal::NvStore::NvStore((this + 16));
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  proto::gnsshal::NvStore::NvStore((this + 104));
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = this + 264;
  *(this + 184) = xmmword_100145770;
  proto::gnsshal::NvStore::Clear((this + 104));
  *(this + 38) |= 1u;
  *(this + 36) = 1;
  *(this + 12) = 0;
  proto::gnsshal::NvStore::Clear((this + 16));
  *(this + 16) |= 1u;
  *(this + 14) = 1;
  GnssHal::PlatformNvStore::configure(this);
  GnssHal::PlatformNvStore::readCacheFromDisk(this, (this + 104));
  GnssHal::PlatformNvStore::readCacheFromDisk(this, (this + 16));
  return this;
}

void sub_100057470(_Unwind_Exception *a1)
{
  GnssHal::PlatformNvStore::Cache::~Cache((v2 + 16));
  GpsdSessionHandler::~GpsdSessionHandler(v1);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformNvStore::Cache::reset(GnssHal::PlatformNvStore::Cache *this)
{
  *(this + 10) = 0;
  result = proto::gnsshal::NvStore::Clear(this);
  *(this + 12) |= 1u;
  *(this + 10) = 1;
  return result;
}

std::string *GnssHal::PlatformNvStore::configure(GnssHal::PlatformNvStore *this)
{
  v2 = GpsdPreferences::instance(0);
  GpsdPreferences::nvStoreFile(v2, &v4);
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  *(this + 10) = v4;
  *(this + 22) = v5;
  return std::string::assign(this + 3, &str);
}

uint64_t GnssHal::PlatformNvStore::readCacheFromDisk(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  v2 = *(a2 + 79);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v5 = a2 + 56;
    if ((GnssHal::PlatformNvStore::readCacheFromFile(this, a2, a2 + 7) & 1) == 0)
    {
      if (*(a2 + 79) >= 0)
      {
        v6 = *(a2 + 79);
      }

      else
      {
        v6 = *(a2 + 8);
      }

      v7 = __p;
      std::string::basic_string[abi:ne200100](__p, v6 + 4);
      if (v16 < 0)
      {
        v7 = *__p;
      }

      if (v6)
      {
        if (*(a2 + 79) >= 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = *(a2 + 7);
        }

        memmove(v7, v8, v6);
      }

      strcpy(&v7[v6], ".bak");
      CacheFromFile = GnssHal::PlatformNvStore::readCacheFromFile(this, a2, __p);
      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v10 = GpsdLogObjectGeneral;
      if (CacheFromFile)
      {
        v11 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (*(a2 + 79) >= 0)
          {
            v12 = v5;
          }

          else
          {
            v12 = *(a2 + 7);
          }

          *__p = 136446210;
          *&__p[4] = v12;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NvStore,Needed to read from backup file, %{public}s, is corrupt", __p, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 79) >= 0)
          {
            v13 = v5;
          }

          else
          {
            v13 = *(a2 + 7);
          }

          *__p = 136446210;
          *&__p[4] = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NvStore,Failed to read from primary and backup files for,%{public}s, using an empty cache", __p, 0xCu);
        }

        *(a2 + 10) = 0;
        v11 = proto::gnsshal::NvStore::Clear(a2);
        *(a2 + 12) |= 1u;
        *(a2 + 10) = 1;
      }

      GnssHal::PlatformNvStore::writeCacheToDisk(v11, a2);
    }
  }

  return 1;
}

void sub_100057768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::PlatformNvStore::Cache::~Cache(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  proto::gnsshal::NvStore::~NvStore(this);
}

void GnssHal::PlatformNvStore::~PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  *this = off_1001737F0;
  v2 = (this + 8);
  *(this + 1) = off_100173880;
  GnssHal::PlatformNvStore::flushSession(this);
  (*(*this + 56))(this);
  std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(this + 256, *(this + 33));
  std::mutex::~mutex(this + 3);
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  proto::gnsshal::NvStore::~NvStore((this + 104));
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  proto::gnsshal::NvStore::~NvStore((this + 16));
  *(this + 1) = off_10017B5F8;
  v4 = GpsdSessionHandlerManager::instance(v3);
  GpsdSessionHandlerManager::removeEventHandler(v4, v2);
}

{
  GnssHal::PlatformNvStore::~PlatformNvStore(this);

  operator delete();
}

void non-virtual thunk toGnssHal::PlatformNvStore::~PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  GnssHal::PlatformNvStore::~PlatformNvStore((this - 8));
}

{
  GnssHal::PlatformNvStore::~PlatformNvStore((this - 8));

  operator delete();
}

uint64_t GnssHal::PlatformNvStore::notifyStop(GnssHal::PlatformNvStore *this)
{
  (*(*this + 48))(this);
  v2 = *(*this + 56);

  return v2(this);
}

uint64_t non-virtual thunk toGnssHal::PlatformNvStore::notifyStop(GnssHal::PlatformNvStore *this)
{
  v1 = this - 8;
  (*(*(this - 1) + 48))(this - 8);
  v2 = *(*v1 + 56);

  return v2(v1);
}

BOOL GnssHal::PlatformNvStore::storeSession(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1->__m_.__opaque[8], &a1[1].__m_.__opaque[32]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1->__m_.__opaque[8], &a1[1].__m_.__opaque[32]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

BOOL GnssHal::PlatformNvStore::storeInternal(GnssHal::PlatformNvStore *a1, uint64_t a2, uint64_t a3, uint64_t a4, GnssHal::PlatformNvStore::Cache *a5)
{
  if (GnssHal::PlatformNvStore::existsInCache(a1, a5, a2))
  {
    v9 = GpsdLogObjectWarning;
    v10 = 0;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NvStore,Item already in alternate cache", &v19, 2u);
      return 0;
    }
  }

  else
  {
    GnssHal::PlatformNvStore::printState(a1, "pre-store");
    v11 = GpsdLogObjectGeneral;
    v12 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v15 = a2;
      }

      else
      {
        v15 = a2 - 0x7FFFFFFF;
      }

      v16 = gpsd::util::getMachContinuousTimeNs(v12) * 0.000000001;
      v17 = (*(a3 + 8) - *a3);
      v18 = gpsd::util::truncatedSha256(*a3, v17);
      v19 = 134349824;
      v20 = v16;
      v21 = 1026;
      v22 = v15;
      v23 = 2050;
      v24 = v17;
      v25 = 1026;
      v26 = v18;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "NvStore,store,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v19, 0x22u);
    }

    v10 = GnssHal::PlatformNvStore::storeToCache(v12, a4, a2, a3);
    if (!v10)
    {
      v13 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NvStore,storeToCache failed", &v19, 2u);
      }
    }

    GnssHal::PlatformNvStore::printState(a1, "post-store");
  }

  return v10;
}

BOOL GnssHal::PlatformNvStore::storeInternal(GnssHal::PlatformNvStore *this, int a2, uint64_t a3, uint64_t a4, GnssHal::PlatformNvStore::Cache *a5)
{
  v10 = *(this + 33);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = (this + 264);
  do
  {
    if (*(v10 + 8) >= a2)
    {
      v11 = v10;
    }

    v10 = v10[*(v10 + 8) < a2];
  }

  while (v10);
  if (v11 != (this + 264) && *(v11 + 8) <= a2)
  {
    GnssHal::PlatformNvStore::printState(this, "pre-storeNamed");
    v15 = GpsdLogObjectGeneral;
    v16 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      v18 = gpsd::util::getMachContinuousTimeNs(v16) * 0.000000001;
      v19 = (*(a3 + 8) - *a3);
      v20 = gpsd::util::truncatedSha256(*a3, v19);
      v21 = 134349824;
      *v22 = v18;
      *&v22[8] = 1026;
      *&v22[10] = a2;
      v23 = 2050;
      v24 = v19;
      v25 = 1026;
      v26 = v20;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "NvStore,storeNamed,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v21, 0x22u);
    }

    v13 = GnssHal::PlatformNvStore::writeBlobToDedicatedFile(v16, v11 + 5, a3);
    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v21 = 67240192;
      *v22 = v13;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "NvStore,storeReturn,%{public}d", &v21, 8u);
    }

    GnssHal::PlatformNvStore::printState(this, "post-storeNamed");
  }

  else
  {
LABEL_8:
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v21 = 67240448;
      *v22 = a2;
      *&v22[4] = 2050;
      *&v22[6] = a2 + 0x80000000;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "NvStore,Did not find dedicated file for NamedType,%{public}d,Converting to id,%{public}lld", &v21, 0x12u);
    }

    return GnssHal::PlatformNvStore::storeInternal(this, a2 + 0x80000000, a3, a4, a5);
  }

  return v13;
}

BOOL GnssHal::PlatformNvStore::storePermanent(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1[1].__m_.__opaque[32], &a1->__m_.__opaque[8]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1[1].__m_.__opaque[32], &a1->__m_.__opaque[8]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

void GnssHal::PlatformNvStore::flushSession(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flushSession", v4, 2u);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::flushInternal(v3, &this->__m_.__opaque[8]);
  std::mutex::unlock(this + 3);
}

void GnssHal::PlatformNvStore::flushInternal(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  if ((GnssHal::PlatformNvStore::writeCacheToDisk(this, a2) & 1) == 0)
  {
    v2 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flush,writeCacheToDisk failed", v3, 2u);
    }
  }
}

void GnssHal::PlatformNvStore::flushPermanent(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flushPermanent", v4, 2u);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::flushInternal(v3, &this[1].__m_.__opaque[32]);
  std::mutex::unlock(this + 3);
}

void GnssHal::PlatformNvStore::recall(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 192));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 264;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 != a1 + 264 && *(v7 + 32) <= a2)
  {
    v9 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      v11 = (v7 + 40);
      if (*(v7 + 63) < 0)
      {
        v11 = *v11;
      }

      v12 = 67240450;
      v13 = a2;
      v14 = 2082;
      v15 = v11;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "NvStore: Reading NamedType=%{public}d from dedicated file %{public}s", &v12, 0x12u);
    }

    GnssHal::PlatformNvStore::readBlobFromDedicatedFile(v10, v7 + 40, a3);
  }

  else
  {
LABEL_8:
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v12 = 67240448;
      v13 = a2;
      v14 = 2050;
      v15 = a2 + 0x80000000;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NvStore: Did not find dedicated file for NamedType=%{public}d, converting it to id=%{public}lld", &v12, 0x12u);
    }

    GnssHal::PlatformNvStore::recallInternal(a1, a2 + 0x80000000, a3);
  }

  std::mutex::unlock((a1 + 192));
}

void sub_1000583DC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::mutex::unlock(v1 + 3);
  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::readBlobFromDedicatedFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = fopen(v4, "rb");
  if (!v5)
  {
    v10 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = *__error();
    *buf = 67240192;
    v23 = v12;
    v11 = "NvStore,Failed to open file for reading,%{public}d";
    goto LABEL_14;
  }

  v6 = v5;
  __ptr = 0;
  v7 = fread(&__ptr, 4uLL, 1uLL, v5);
  v8 = __ptr;
  if (v7 != 1 || __ptr >= 0x7A1201)
  {
    fclose(v6);
    v10 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67240192;
    v23 = v8;
    v11 = "NvStore,Failed to read itemId/numBytes or out of range,numBytes,%{public}d";
LABEL_14:
    v13 = v10;
    v14 = 8;
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
    return;
  }

  v15 = *a3;
  v16 = *(a3 + 8) - *a3;
  if (__ptr <= v16)
  {
    if (__ptr < v16)
    {
      *(a3 + 8) = &v15[__ptr];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, __ptr - v16);
    v15 = *a3;
  }

  v17 = fread(v15, 1uLL, v8, v6);
  v18 = fclose(v6);
  if (v17 == v8)
  {
    if (v18)
    {
      v19 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = "NvStore,Failed to close file after reading";
        v13 = v19;
        v14 = 2;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v20 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NvStore,Failed to read payload", buf, 2u);
    }

    *(a3 + 8) = *a3;
  }
}