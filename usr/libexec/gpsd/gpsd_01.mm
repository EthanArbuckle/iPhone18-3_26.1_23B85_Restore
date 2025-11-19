void proto::gpsd::InjectAssistanceFile::~InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this)
{
  *this = off_100179E68;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179E68;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179E68;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::InjectAssistanceFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return this;
}

void GpsdPerformanceSummary::onStart(GpsdPerformanceSummary *this)
{
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  *(this + 23) = MachContinuousTimeNs * 0.000000001;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = 0;
  for (i = 624; i != 736; i += 16)
  {
    v4 = this + i;
    *v4 = 0;
    *(v4 + 1) = 0;
  }

  *(this + 100) = 0;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(this + 5) = _Q1;
  *(this + 48) = 0;
  *(this + 100) = 0;
  *(this + 107) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0xBFF0000000000000;
  if (*(this + 176) == 1)
  {
    *(this + 176) = 0;
  }

  *(this + 109) = 1;
  v10 = gpsd::util::getMachContinuousTimeNs(MachContinuousTimeNs);
  *this = v10;
  *(this + 19) = v10 - *(this + 101);
  v11 = GpsdPreferences::instance(0);
  v12 = GpsdPreferences::performanceReportIntervalSeconds(v11);
  v13 = v12;
  if (v12 < 1)
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GpsdPerformanceSummary,disabled due to invalid timer interval,%{public}.2f", buf, 0xCu);
    }
  }

  else if (!*(this + 103))
  {
    v14 = *(GpsdRuntime::instance(v12) + 16);
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v19 = v13;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "GpsdPerformanceSummary,timer interval,%{public}.2f", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN22GpsdPerformanceSummary7onStartEv_block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0l;
    v17[4] = this;
    objc_retainBlock(v17);
    operator new();
  }
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t gpsd::util::truncatedSha256(gpsd::util *this, const void *a2)
{
  if (CC_SHA256(this, a2, md))
  {
    return bswap32(*md);
  }

  v5 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 134349312;
    v7 = this;
    v8 = 2050;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#gpsdUtil,CC_SHA256 failed on,%{public}p,%{public}zu", &v6, 0x16u);
    return 0;
  }

  return result;
}

void GpsdPerformanceSummary::analyzeEe(GpsdPerformanceSummary *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  v4 = *(a2 + 1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = gpsd::util::truncatedSha256(v6, v7);
  *(this + 25) = v8;
  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 1);
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    v12[0] = 67240448;
    v12[1] = v8;
    v13 = 2050;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ee,sha,0x%{public}X,sz,%{public}zu", v12, 0x12u);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void GnssHal::PlatformNvStore::recall(std::mutex *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock(this + 3);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  GnssHal::PlatformNvStore::recallInternal(this, a2, a3);

  std::mutex::unlock(this + 3);
}

void sub_100010F10(_Unwind_Exception *a1)
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

char *GnssHal::ExtensionsFireImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsFireImpl *this)
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

char *gpsd::util::getGpsWeekFromBuildDate(gpsd::util *this)
{
  result = gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek;
  if (gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek <= 0)
  {
    memset(&v4, 0, sizeof(v4));
    result = strptime("Oct 10 2025 21:36:40", "%b %d %Y %H:%M:%S", &v4);
    if (result)
    {
      v2 = mktime(&v4);
      if (v2 < 0)
      {
        return 0;
      }

      else
      {
        v3 = (v2 + -315964800.0 + -259200.0) / 604800.0;
        result = v3;
        gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek = v3;
      }
    }
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

uint64_t GpsdPreferences::platformSpecificFeaturesBitmask(GpsdPreferences *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v1 = [fDefaults BOOLForKey:@"EnableCoexL5NotchFilter"];
    if ([fDefaults BOOLForKey:@"HasXtalFreqJumpRisk"])
    {
      return v1 | 2;
    }

    else
    {
      return v1;
    }
  }

  else if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"EnableReceivingFTA"];
  }
}

uint64_t GnssHal::ExtensionsFireImpl::platform(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::forceFireExtensionsPlatform(v1) + 1;
  if (v2 < 9 && ((0x199u >> v2) & 1) != 0)
  {
    return dword_100142A34[v2];
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 103)
  {
    return 2;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 106)
  {
    return 3;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    return 4;
  }

  v4 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "UnknownPlatformExtensionFire", v5, 2u);
    return 0;
  }

  return result;
}

char *std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::supportsL5(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::enableL5(v1);
  v3 = 0;
  if (v2)
  {
    v3 = *(GpsdPlatformInfo::instance(0) + 24);
  }

  return v3 & 1;
}

double GpsdPlatformInfo::getGpsCrossCorrelationMinThreshold_dBHz(GpsdPlatformInfo *this)
{
  if (qword_100180FF8 != -1)
  {
    dispatch_once(&qword_100180FF8, &__block_literal_global_4);
  }

  v2 = 24.0;
  if ((_MergedGlobals_5 & 1) == 0)
  {
    v3 = GpsdLogObjectGeneral;
    v2 = -1.0;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = *this;
      v6[0] = 67240192;
      v6[1] = v5;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "HalExtensions,Unexpected hardware,%{public}d", v6, 8u);
    }
  }

  return v2;
}

void GnssHal::ExtensionsFireImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

void GpsdPreferences::glonassPerFrequencyGroupDelayMeters(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = [fDefaults arrayForKey:@"GlonassPerFrequencyGroupDelayMeters"];
  v4 = v3;
  if (v3 && [v3 count] > 0xD)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = *v23;
      v9 = v4;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v22 + 1) + 8 * i) doubleValue];
          v13 = a1[1];
          v12 = a1[2];
          if (v13 >= v12)
          {
            v15 = *a1;
            v16 = v13 - *a1;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
            }

            v19 = v12 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v20);
            }

            *(8 * v17) = v11;
            v14 = 8 * v17 + 8;
            memcpy(0, v15, v16);
            v21 = *a1;
            *a1 = 0;
            a1[1] = v14;
            a1[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }

            v4 = v9;
          }

          else
          {
            *v13 = v11;
            v14 = (v13 + 8);
          }

          a1[1] = v14;
        }

        v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid glonassPerFrequencyGroupDelayMeters parameters", buf, 2u);
    }
  }
}

void sub_1000115BC(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *v5;
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = &v6[-*a3];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v6[-*a3];
        *v10 = v7;
        v6 = v10 + 1;
        memcpy(0, v9, v14);
        *a3 = 0;
        *(a3 + 8) = v10 + 1;
        *(a3 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

double GnssHal::ExtensionsFireImpl::getGpsCrossCorrelationMaxThreshold_dBHz(GnssHal::ExtensionsFireImpl *this)
{
  GpsdPlatformInfo::instance(0);
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134349056;
    v4 = 0x4042000000000000;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "HalExtensions,getGpsCrossCorrelationMaxThreshold_dBHz,%{public}f", &v3, 0xCu);
  }

  return 36.0;
}

double GnssHal::ExtensionsFireImpl::getGpsCrossCorrelationMinThreshold_dBHz(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPlatformInfo::instance(0);
  GpsCrossCorrelationMinThreshold_dBHz = GpsdPlatformInfo::getGpsCrossCorrelationMinThreshold_dBHz(v1);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = GpsCrossCorrelationMinThreshold_dBHz;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "HalExtensions,getGpsCrossCorrelationMinThreshold_dBHz,%{public}f", &v5, 0xCu);
  }

  return GpsCrossCorrelationMinThreshold_dBHz;
}

void GnssHal::PlatformNvStore::recallInternal(uint64_t a1, uint64_t a2, gpsd::util **a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6 < 1)
  {
LABEL_5:
    v9 = *(a1 + 128);
    if (v9 < 1)
    {
      goto LABEL_15;
    }

    v10 = *(a1 + 120);
    while (1)
    {
      v8 = *v10;
      if (*(*v10 + 16) == a2)
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    while (1)
    {
      v8 = *v7;
      if (*(*v7 + 16) == a2)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  v11 = *(v8 + 24);
  v12 = v11[23];
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(v11 + 1);
  }

  std::vector<unsigned char>::reserve(a3, v12);
  v13 = v11[23];
  if (v13 < 0)
  {
    v14 = v11;
    v11 = *v11;
    v13 = *(v14 + 1);
  }

  std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(v11, &v11[v13], a3);
LABEL_15:
  v15 = GpsdLogObjectGeneral;
  v16 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v4 > 0x7FFFFFFF)
    {
      LODWORD(v4) = v4 - 0x7FFFFFFF;
    }

    v17 = gpsd::util::getMachContinuousTimeNs(v16) * 0.000000001;
    v18 = *a3;
    v19 = (a3[1] - *a3);
    v20 = 134349824;
    v21 = v17;
    v22 = 1026;
    v23 = v4;
    v24 = 2050;
    v25 = v19;
    v26 = 1026;
    v27 = gpsd::util::truncatedSha256(v18, v19);
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "NvStore,recall,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v20, 0x22u);
  }

  GnssHal::PlatformNvStore::printState(a1, "recalled");
}

void GnssHal::PlatformNvStore::printState(GnssHal::PlatformNvStore *this, const char *a2)
{
  if ((atomic_load_explicit(&qword_100180F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100180F50))
  {
    v7 = GpsdPreferences::instance(0);
    _MergedGlobals_1 = GpsdPreferences::verboseNvStore(v7);
    __cxa_guard_release(&qword_100180F50);
  }

  if (_MergedGlobals_1 == 1)
  {
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      v8 = 136446210;
      v9 = a2;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "NvStore,printState,begin,%{public}s", &v8, 0xCu);
    }

    if (*(this + 12) >= 1)
    {
      GnssHal::PlatformNvStore::printState(v5, (this + 16));
    }

    GnssHal::PlatformNvStore::printState(v5, (this + 104));
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446210;
      v9 = a2;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "NvStore,printState,end,%{public}s", &v8, 0xCu);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t GnssHal::ExtensionsCommon::isBeiDouConsistencyRequired(GnssHal::ExtensionsCommon *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *((**v2)(v2) + 1);
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "hal,#bcr,%{public}p,%{public}d", &v7, 0x12u);
  }

  return v3 & 1;
}

void GnssHal::PlatformTimer::stop(GnssHal::PlatformTimer *this)
{
  v1 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal13PlatformTimer4stopEv_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = this;
  dispatch_async(v1, block);
}

void std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (*a2 == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 248);
      v6 = *(v3 + 249);
      *buf = 67174913;
      *&buf[4] = v5;
      LOWORD(v11) = 1025;
      *(&v11 + 2) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,start,onAccepted success,sbsr,%{private}d,bcr,%{private}d", buf, 0xEu);
    }

    v7 = *(v3 + 376);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZZN21GpsdGnssDeviceManager25handleRegularStartRequestERKN5proto4gpsd7RequestEENK3__0clEN4gnss6ResultE_block_invoke;
    block[3] = &__block_descriptor_tmp_132;
    block[4] = v3;
    dispatch_async(v7, block);
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,start,onAccepted failure,%{public}d", buf, 8u);
    }

    *(v3 + 1328) = 0;
  }

  v8 = *(v3 + 376);
  *buf = _NSConcreteStackBlock;
  v11 = 0x40000000;
  v12 = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v13 = &__block_descriptor_tmp_46;
  v14 = v3;
  v15 = 1;
  v16 = v2;
  dispatch_async(v8, buf);
}

void proto::gpsd::StartContext::~StartContext(proto::gpsd::StartContext *this)
{
  *this = off_10017AFC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017AFC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AFC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void GpsdAssistanceSeeding::getAssistanceFilePath(unsigned int a1@<W1>, int a2@<W2>, std::string *a3@<X8>)
{
  if (a2)
  {
    v5 = "_sim.bin";
  }

  else
  {
    v5 = ".bin";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v5);
  if (a1 >= 5)
  {
    if (a1 == 5)
    {
      GpsdPreferences::instance(0);
      GpsdPreferences::storeLongTermPredictionsFile(&v10);
      if ((v13 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = v12;
      }
    }

    else
    {
      GpsdPreferences::instance(0);
      GpsdPreferences::storeShortTermPredictionsFile(&v10);
      if ((v13 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = v12;
      }
    }

    v9 = std::string::append(&v10, p_p, v8);
    *a3 = *v9;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#gnssseeding,getAssistanceFilePath,unhandled source", &v10, 2u);
    }

    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_1000122B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void GpsdPreferences::storeShortTermPredictionsFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ShortTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t proto::gpsd::Request::ByteSize(proto::gpsd::Request *this, unint64_t a2)
{
  v3 = *(this + 99);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 99);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 99);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 99);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  v10 = proto::gpsd::InjectAssistancePosition::ByteSize(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
  }

  else
  {
    v12 = 1;
  }

  v4 += v11 + v12 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  v14 = proto::gpsd::InjectAssistanceTime::ByteSize(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  v18 = proto::gpsd::SetAssistancePressure::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 += v19 + v20 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v21 = *(this + 6);
  if (!v21)
  {
    v21 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  v22 = proto::gpsd::SetAssistanceAccel::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 += v23 + v24 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(this + 7);
    if (!v25)
    {
      v25 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    v26 = proto::gpsd::SetAssistanceGyro::ByteSize(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    }

    else
    {
      v28 = 1;
    }

    v4 += v27 + v28 + 1;
    v3 = *(this + 99);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(this + 8);
    if (!v29)
    {
      v29 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    v30 = proto::gpsd::SetAssistanceDem::ByteSize(v29, a2);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    }

    else
    {
      v32 = 1;
    }

    v4 += v31 + v32 + 1;
    v3 = *(this + 99);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(this + 9);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  v34 = proto::gpsd::SetAssistanceMapVector::ByteSize(v33, a2);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
  }

  else
  {
    v36 = 1;
  }

  v4 += v35 + v36 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v37 = *(this + 10);
  if (!v37)
  {
    v37 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  v38 = proto::gpsd::SetAssistanceMotionActivityContext::ByteSize(v37, a2);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
  }

  else
  {
    v40 = 1;
  }

  v4 += v39 + v40 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v41 = *(this + 11);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  v42 = proto::gpsd::SetAssistanceMountState::ByteSize(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 += v43 + v44 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v45 = *(this + 12);
  if (!v45)
  {
    v45 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  v46 = proto::gpsd::SetAssistanceSignalEnvironment::ByteSize(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
  }

  else
  {
    v48 = 1;
  }

  v4 += v47 + v48 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v49 = *(this + 13);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  v50 = proto::gpsd::SetAssistanceSpeedConstraint::ByteSize(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
  }

  else
  {
    v52 = 1;
  }

  v4 += v51 + v52 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x4000) == 0)
  {
LABEL_62:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v53 = *(this + 14);
  if (!v53)
  {
    v53 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  v54 = proto::gpsd::SetAssistanceAlongTrackVelocity::ByteSize(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 += v55 + v56 + 1;
  v3 = *(this + 99);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v57 = *(this + 15);
    if (!v57)
    {
      v57 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    v58 = proto::gpsd::InjectAssistanceFile::ByteSize(v57, a2);
    v59 = v58;
    if (v58 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
    }

    else
    {
      v60 = 1;
    }

    v4 += v59 + v60 + 2;
    v3 = *(this + 99);
  }

LABEL_112:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v3 & 0x10000) != 0)
  {
    v61 = *(this + 16);
    if (!v61)
    {
      v61 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    v62 = proto::gpsd::InjectRtiFile::ByteSize(v61, a2);
    v63 = v62;
    if (v62 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
    }

    else
    {
      v64 = 1;
    }

    v4 += v63 + v64 + 2;
    v3 = *(this + 99);
    if ((v3 & 0x20000) == 0)
    {
LABEL_115:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v65 = *(this + 17);
  if (!v65)
  {
    v65 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  v66 = proto::gpsd::InjectSvidBlocklist::ByteSize(v65, a2);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
  }

  else
  {
    v68 = 1;
  }

  v4 += v67 + v68 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x40000) == 0)
  {
LABEL_116:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v69 = *(this + 18);
  if (!v69)
  {
    v69 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  if ((*(v69 + 20) & 1) == 0)
  {
    v70 = 0;
    *(v69 + 16) = 0;
LABEL_139:
    v72 = 1;
    goto LABEL_141;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v69 + 8), a2);
  v70 = v71 + 1;
  *(v69 + 16) = v71 + 1;
  if ((v71 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v71 + 1), a2);
LABEL_141:
  v4 += v72 + v70 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x80000) == 0)
  {
LABEL_117:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_145;
  }

LABEL_142:
  v73 = *(this + 19);
  if (!v73)
  {
    v73 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  v4 += proto::gpsd::SetPvtmReport::ByteSize(v73) + 3;
  v3 = *(this + 99);
  if ((v3 & 0x100000) == 0)
  {
LABEL_118:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_145:
  v74 = *(this + 20);
  if (!v74)
  {
    v74 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  if ((*(v74 + 20) & 1) == 0)
  {
    v75 = 0;
    *(v74 + 16) = 0;
LABEL_150:
    v77 = 1;
    goto LABEL_152;
  }

  v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v74 + 8), a2);
  v75 = v76 + 1;
  *(v74 + 16) = v76 + 1;
  if ((v76 + 1) < 0x80)
  {
    goto LABEL_150;
  }

  v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v76 + 1), a2);
LABEL_152:
  v4 += v77 + v75 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x200000) == 0)
  {
LABEL_119:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_159;
  }

LABEL_153:
  v78 = *(this + 21);
  if (!v78)
  {
    v78 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  v79 = proto::gpsd::SetConfigSimulatorMode::ByteSize(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79, a2);
  }

  else
  {
    v81 = 1;
  }

  v4 += v80 + v81 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x400000) == 0)
  {
LABEL_120:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

LABEL_159:
  v82 = *(this + 22);
  if (!v82)
  {
    v82 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  v83 = proto::gpsd::SetConfigEnableGnssConstellations::ByteSize(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83, a2);
  }

  else
  {
    v85 = 1;
  }

  v4 += v84 + v85 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x800000) != 0)
  {
LABEL_165:
    v86 = *(this + 23);
    if (!v86)
    {
      v86 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    if (*(v86 + 16))
    {
      v87 = 2 * (*(v86 + 16) & 1);
    }

    else
    {
      v87 = 0;
    }

    *(v86 + 12) = v87;
    v4 += v87 + 3;
    v3 = *(this + 99);
  }

LABEL_171:
  if (!HIBYTE(v3))
  {
    goto LABEL_229;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v88 = *(this + 24);
    if (!v88)
    {
      v88 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    v89 = proto::gpsd::TerminationImminent::ByteSize(v88, a2);
    v90 = v89;
    if (v89 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89, a2);
    }

    else
    {
      v91 = 1;
    }

    v4 += v90 + v91 + 2;
    v3 = *(this + 99);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_174:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_174;
  }

  v92 = *(this + 25);
  if (!v92)
  {
    v92 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  v93 = proto::gpsd::ExitMessage::ByteSize(v92, a2);
  v94 = v93;
  if (v93 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93, a2);
  }

  else
  {
    v95 = 1;
  }

  v4 += v94 + v95 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_175:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_193:
  v96 = *(this + 26);
  if (!v96)
  {
    v96 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  v97 = proto::gpsd::LtlInfo::ByteSize(v96, a2);
  v98 = v97;
  if (v97 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97, a2);
  }

  else
  {
    v99 = 1;
  }

  v4 += v98 + v99 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_176:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_205;
  }

LABEL_199:
  v100 = *(this + 27);
  if (!v100)
  {
    v100 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  v101 = proto::gpsd::StartContext::ByteSize(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101, a2);
  }

  else
  {
    v103 = 1;
  }

  v4 += v102 + v103 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_177:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_211;
  }

LABEL_205:
  v104 = *(this + 28);
  if (!v104)
  {
    v104 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  v105 = proto::gpsd::SetThermalRiskState::ByteSize(v104, a2);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105, a2);
  }

  else
  {
    v107 = 1;
  }

  v4 += v106 + v107 + 2;
  v3 = *(this + 99);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_178:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_211:
  v108 = *(this + 29);
  if (!v108)
  {
    v108 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  if (*(v108 + 16))
  {
    v109 = 2 * (*(v108 + 16) & 1) + (*(v108 + 16) & 2);
  }

  else
  {
    v109 = 0;
  }

  *(v108 + 12) = v109;
  v4 += v109 + 3;
  v3 = *(this + 99);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_179:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v110 = *(this + 30);
  if (!v110)
  {
    v110 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  v111 = proto::gpsd::InjectRavenOrbitFile::ByteSize(v110, a2);
  v112 = v111;
  if (v111 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111, a2);
  }

  else
  {
    v113 = 1;
  }

  v4 += v112 + v113 + 2;
  if ((*(this + 99) & 0x80000000) != 0)
  {
LABEL_223:
    v114 = *(this + 31);
    if (!v114)
    {
      v114 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    v115 = proto::gnss::Emergency::EmergConfig::ByteSize(v114, a2);
    v116 = v115;
    if (v115 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115, a2);
    }

    else
    {
      v117 = 1;
    }

    v4 += v116 + v117 + 2;
  }

LABEL_229:
  v118 = *(this + 100);
  if (!v118)
  {
    goto LABEL_288;
  }

  if (v118)
  {
    v119 = *(this + 32);
    v120 = *(v119 + 23);
    v121 = v120;
    v122 = *(v119 + 8);
    if ((v120 & 0x80u) == 0)
    {
      v123 = *(v119 + 23);
    }

    else
    {
      v123 = v122;
    }

    if (v123 >= 0x80)
    {
      v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123, a2);
      v120 = *(v119 + 23);
      v122 = *(v119 + 8);
      v118 = *(this + 100);
      v121 = *(v119 + 23);
    }

    else
    {
      v124 = 1;
    }

    if (v121 < 0)
    {
      v120 = v122;
    }

    v4 += v124 + v120 + 2;
    if ((v118 & 2) == 0)
    {
LABEL_232:
      if ((v118 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_254;
    }
  }

  else if ((v118 & 2) == 0)
  {
    goto LABEL_232;
  }

  v125 = *(this + 33);
  if (!v125)
  {
    v125 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  v126 = proto::gnss::Emergency::PositionRequest::ByteSize(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2);
  }

  else
  {
    v128 = 1;
  }

  v4 += v127 + v128 + 2;
  v118 = *(this + 100);
  if ((v118 & 4) == 0)
  {
LABEL_233:
    if ((v118 & 8) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_258;
  }

LABEL_254:
  v129 = *(this + 76);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129, a2) + 2;
    v118 = *(this + 100);
  }

  else
  {
    v130 = 3;
  }

  v4 += v130;
  if ((v118 & 8) == 0)
  {
LABEL_234:
    if ((v118 & 0x10) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_264;
  }

LABEL_258:
  v131 = *(this + 34);
  if (!v131)
  {
    v131 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  v132 = proto::gnss::Emergency::GpsReferenceTime::ByteSize(v131, a2);
  v133 = v132;
  if (v132 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132, a2);
  }

  else
  {
    v134 = 1;
  }

  v4 += v133 + v134 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x10) == 0)
  {
LABEL_235:
    if ((v118 & 0x20) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_270;
  }

LABEL_264:
  v135 = *(this + 35);
  if (!v135)
  {
    v135 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  v136 = proto::gnss::Emergency::ReferenceLocation::ByteSize(v135, a2);
  v137 = v136;
  if (v136 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136, a2);
  }

  else
  {
    v138 = 1;
  }

  v4 += v137 + v138 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x20) == 0)
  {
LABEL_236:
    if ((v118 & 0x40) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_276;
  }

LABEL_270:
  v139 = *(this + 36);
  if (!v139)
  {
    v139 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  v140 = proto::gnss::Emergency::GpsNavigationModel::ByteSize(v139, a2);
  v141 = v140;
  if (v140 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140, a2);
  }

  else
  {
    v142 = 1;
  }

  v4 += v141 + v142 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x40) == 0)
  {
LABEL_237:
    if ((v118 & 0x80) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_282;
  }

LABEL_276:
  v143 = *(this + 37);
  if (!v143)
  {
    v143 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  v144 = proto::gnss::Emergency::GpsAcqAssistance::ByteSize(v143, a2);
  v145 = v144;
  if (v144 >= 0x80)
  {
    v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144, a2);
  }

  else
  {
    v146 = 1;
  }

  v4 += v145 + v146 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x80) != 0)
  {
LABEL_282:
    v147 = *(this + 39);
    if (!v147)
    {
      v147 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    v148 = proto::gnss::Emergency::CellFTAssistance::ByteSize(v147, a2);
    v149 = v148;
    if (v148 >= 0x80)
    {
      v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148, a2);
    }

    else
    {
      v150 = 1;
    }

    v4 += v149 + v150 + 2;
    v118 = *(this + 100);
  }

LABEL_288:
  if ((v118 & 0xFF00) == 0)
  {
    goto LABEL_323;
  }

  if ((v118 & 0x100) == 0)
  {
    if ((v118 & 0x400) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    v155 = *(this + 43);
    if (!v155)
    {
      v155 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    v156 = proto::gnss::Emergency::LocationId::ByteSize(v155, a2);
    v157 = v156;
    if (v156 >= 0x80)
    {
      v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156, a2);
    }

    else
    {
      v158 = 1;
    }

    v4 += v157 + v158 + 2;
    v118 = *(this + 100);
    if ((v118 & 0x800) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_305;
  }

  v151 = *(this + 40);
  if (!v151)
  {
    v151 = *(proto::gpsd::Request::default_instance_ + 320);
  }

  v152 = proto::gnss::Emergency::CplaneContext::ByteSize(v151);
  v153 = v152;
  if (v152 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152, a2);
  }

  else
  {
    v154 = 1;
  }

  v4 += v153 + v154 + 2;
  v118 = *(this + 100);
  if ((v118 & 0x400) != 0)
  {
    goto LABEL_299;
  }

LABEL_291:
  if ((v118 & 0x800) != 0)
  {
LABEL_305:
    v159 = *(this + 77);
    if (v159 >= 0x80)
    {
      v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159, a2) + 2;
      v118 = *(this + 100);
    }

    else
    {
      v160 = 3;
    }

    v4 += v160;
  }

LABEL_309:
  if ((v118 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v118 & 0x4000) != 0)
  {
    v161 = *(this + 93);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161, a2) + 2;
      v118 = *(this + 100);
    }

    else
    {
      v162 = 3;
    }

    v4 += v162;
  }

  if ((v118 & 0x8000) != 0)
  {
    v163 = *(this + 47);
    if (!v163)
    {
      v163 = *(proto::gpsd::Request::default_instance_ + 376);
    }

    v164 = proto::gnss::Emergency::SuplContext::ByteSize(v163, a2);
    v165 = v164;
    if (v164 >= 0x80)
    {
      v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164, a2);
    }

    else
    {
      v166 = 1;
    }

    v4 += v165 + v166 + 2;
    v118 = *(this + 100);
  }

LABEL_323:
  if ((v118 & 0x10000) != 0)
  {
    v167 = *(this + 48);
    if (!v167)
    {
      v167 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    v168 = proto::gnss::Emergency::WlanMeasurementList::ByteSize(v167, a2);
    v169 = v168;
    if (v168 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168, a2);
    }

    else
    {
      v170 = 1;
    }

    v4 += v169 + v170 + 2;
  }

  v171 = *(this + 84);
  if (v171 < 1)
  {
    v173 = 0;
  }

  else
  {
    v172 = 0;
    v173 = 0;
    do
    {
      v174 = *(*(this + 41) + 4 * v172);
      if (v174 >= 0x80)
      {
        v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174, a2);
        v171 = *(this + 84);
      }

      else
      {
        v175 = 1;
      }

      v173 += v175;
      ++v172;
    }

    while (v172 < v171);
  }

  v176 = *(this + 90);
  if (v176 < 1)
  {
    v178 = 0;
  }

  else
  {
    v177 = 0;
    v178 = 0;
    do
    {
      v179 = *(*(this + 44) + 4 * v177);
      if (v179 >= 0x80)
      {
        v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179, a2);
        v176 = *(this + 90);
      }

      else
      {
        v180 = 1;
      }

      v178 += v180;
      ++v177;
    }

    while (v177 < v176);
  }

  result = (v173 + v4 + v178 + 2 * (v176 + v171));
  *(this + 98) = result;
  return result;
}

uint64_t proto::gpsd::InjectAssistanceFile::ByteSize(proto::gpsd::InjectAssistanceFile *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 28))
  {
    v5 = *(this + 1);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(this + 7);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(this + 4);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 5);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_28:
  *(this + 6) = v4;
  return v4;
}

uint64_t proto::gpsd::Request::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 396);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Request::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(proto::gpsd::Request::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(proto::gpsd::Request::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(proto::gpsd::Request::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    v37 = *(v5 + 256);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v38 = *(v5 + 264);
  if (!v38)
  {
    v38 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v39 = *(v5 + 272);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v40 = *(v5 + 280);
  if (!v40)
  {
    v40 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v41 = *(v5 + 288);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v42 = *(v5 + 296);
  if (!v42)
  {
    v42 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v42, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v43 = *(v5 + 312);
  if (!v43)
  {
    v43 = *(proto::gpsd::Request::default_instance_ + 312);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v43, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v44 = *(v5 + 320);
    if (!v44)
    {
      v44 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v44, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v45 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 336));
  }

  v46 = *(v5 + 400);
  if ((v46 & 0x400) != 0)
  {
    v47 = *(v5 + 344);
    if (!v47)
    {
      v47 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v47, a2, a4);
    v46 = *(v5 + 400);
  }

  if ((v46 & 0x800) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v48 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v48++), a2, a4);
    }

    while (v48 < *(v5 + 360));
  }

  v49 = *(v5 + 400);
  if ((v49 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v49 = *(v5 + 400);
    if ((v49 & 0x4000) == 0)
    {
LABEL_171:
      if ((v49 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v49 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v49 = *(v5 + 400);
  if ((v49 & 0x8000) == 0)
  {
LABEL_172:
    if ((v49 & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_179;
  }

LABEL_176:
  v50 = *(v5 + 376);
  if (!v50)
  {
    v50 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v50, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v51 = *(v5 + 384);
    if (!v51)
    {
      v51 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v51, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistanceFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], v4, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v8 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v8, v4, a4);
}

void GpsdPreferences::storeLongTermPredictionsFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"LongTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::storeRTIFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"RTIFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdAssistanceSeeding::getRTIFilePath(GpsdAssistanceSeeding *this@<X0>, std::string *a2@<X8>)
{
  GpsdPreferences::instance(0);
  GpsdPreferences::storeRTIFile(&v6);
  if (*(this + 40))
  {
    v4 = "_sim.bin";
  }

  else
  {
    v4 = ".bin";
  }

  v5 = std::string::append(&v6, v4);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_100013CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t proto::gpsd::InjectRtiFile::ByteSize(proto::gpsd::InjectRtiFile *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

uint64_t proto::gpsd::InjectRtiFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

void proto::gpsd::InjectRtiFile::~InjectRtiFile(proto::gpsd::InjectRtiFile *this)
{
  *this = off_100179EE0;
  proto::gpsd::InjectRtiFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179EE0;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179EE0;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::InjectRtiFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return this;
}

void GpsdAssistanceSeeding::getRavenOrbitFilePath(GpsdAssistanceSeeding *this@<X0>, std::string *a2@<X8>)
{
  GpsdPreferences::instance(0);
  GpsdPreferences::storeRavenOrbitFile(&v6);
  if (*(this + 40))
  {
    v4 = "_sim.bin";
  }

  else
  {
    v4 = ".bin";
  }

  v5 = std::string::append(&v6, v4);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_100013EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GpsdPreferences::storeRavenOrbitFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"RavenOrbitFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t proto::gpsd::SetConfigRfBandEnable::MergePartialFromCodedStream(proto::gpsd::SetConfigRfBandEnable *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v16 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 9) = v12 != 0;
        *(this + 4) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t GnssDeviceCommon::setConfigRfBandEnableHelper(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = a2[1];
    *buf = 67240448;
    v15 = v7;
    v16 = 1026;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#gdm,setConfigRfBandEnableHelper,L1,%{public}d,L5,%{public}d", buf, 0xEu);
  }

  v9 = *a2;
  *(a1 + 242) = *a2;
  v10 = a2[1];
  *(a1 + 243) = v10;
  v11 = *(a1 + 8);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
  (*(*v11 + 240))(v11, v9 & 1, v10 & 1, v13);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
}

void proto::gpsd::SetConfigRfBandEnable::~SetConfigRfBandEnable(proto::gpsd::SetConfigRfBandEnable *this)
{
  *this = off_10017A840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A840;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMotionActivityContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            goto LABEL_39;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_49;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 8) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v25 = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v17 = v25;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v17 <= 9)
        {
          *(this + 8) |= 2u;
          *(this + 4) = v17;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v18 < v15 && *v18 == 24)
        {
          v16 = v18 + 1;
          *(a2 + 1) = v16;
LABEL_39:
          v24 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v19 = v24;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v19 <= 4)
          {
            *(this + 8) |= 4u;
            *(this + 5) = v19;
          }

          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v20 < v10 && *v20 == 32)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_49:
            v23 = 0;
            if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v21 = v23;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (proto::gnss::Reliability_IsValid(v21))
            {
              *(this + 8) |= 8u;
              *(this + 6) = v21;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

void GpsdGnssDeviceManager::setAssistanceMotionActivityContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 32) & 0xF) != 0)
  {

    std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v6 = gnss::Convert::fromProtobuf(*(a2 + 16));
    v7 = *(a2 + 20);
    v8 = *(a2 + 24);
    if (v7 - 1 >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (v8 - 25 <= 0x32 && ((1 << (v8 - 25)) & 0x4000002000001) != 0 || v8 == 10)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a3);
    (*(*v13 + 168))(v13, v14, v6, v9, v12, v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a2 + 8);
      v17 = 134349824;
      v18 = v16;
      v19 = 1026;
      v20 = v6;
      v21 = 1026;
      v22 = v9;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#gdm,injectAssistanceMotion,machNs,%{public}llu,context,%{public}d,movingState,%{public}d,reliability,%{public}d", &v17, 0x1Eu);
    }
  }
}

void sub_100014790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::Convert::fromProtobuf(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_100145DD8[a1 - 1];
  }
}

{
  if ((a1 - 1) < 9)
  {
    return dword_100145D90[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unhandled proto::gnss::Result enum %d", v4, 8u);
  }

  return 7;
}

{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 3);
  }
}

void proto::gpsd::SetAssistanceMotionActivityContext::~SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *this = off_10017A480;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A480;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A480;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::SetAssistanceMountState::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMountState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 1 <= 3)
        {
          *(this + 6) |= 2u;
          *(this + 4) = v12;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t GpsdGnssDeviceManager::setAssistanceMountState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 24) & 3) != 0)
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v6 = *(a1 + 16);
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v8 == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v8 == 3);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
    (*(*v6 + 176))(v6, v7, v9, v11);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }
}

void sub_100014AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMountState::~SetAssistanceMountState(proto::gpsd::SetAssistanceMountState *this)
{
  *this = off_10017A4F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A4F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A4F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::SetConfigDutyCycling::MergePartialFromCodedStream(proto::gpsd::SetConfigDutyCycling *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void proto::gpsd::SetConfigDutyCycling::~SetConfigDutyCycling(proto::gpsd::SetConfigDutyCycling *this)
{
  *this = off_10017A8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void GpsdPerformanceSummary::printNominalStartAssistanceStats(GpsdPerformanceSummary *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v2 = *this;
    if (*this)
    {
      v3 = *(this + 1);
      if (v3)
      {
        v4 = *(this + 2);
        if (v4)
        {
          v5 = *(this + 3);
          if (v5)
          {
            v6 = GpsdLogObjectGeneral;
            if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
            {
              if (v3 <= v4)
              {
                v7 = v4;
              }

              else
              {
                v7 = v3;
              }

              if (v7 <= v5)
              {
                v7 = v5;
              }

              v8 = v2 - 1;
              v9 = (v7 - v2) * 0.000001;
              v10 = v2 - 1 >= v7;
              v11 = -1.0;
              if (v10)
              {
                v9 = -1.0;
              }

              v12 = (v3 - v2) * 0.000001;
              if (v8 >= v3)
              {
                v12 = -1.0;
              }

              v13 = (v4 - v2) * 0.000001;
              if (v8 >= v4)
              {
                v13 = -1.0;
              }

              v14 = 134349824;
              v15 = v9;
              v16 = 2050;
              v17 = v12;
              v18 = 2050;
              v19 = v13;
              if (v8 < v5)
              {
                v11 = (v5 - v2) * 0.000001;
              }

              v20 = 2050;
              v21 = v11;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PerfNominalStart,Assistance timing,total_ms,%{public}.1f,time_ms,%{public}.1f,pos_ms,%{public}.1f,ephem_ms,%{public}.1f", &v14, 0x2Au);
            }

            *(this + 32) = 1;
          }
        }
      }
    }
  }
}

void GpsdGnssDeviceManager::injectRtiFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1328) & 1) != 0 || (v5 = *(a1 + 1312)) != 0 && ((*(v5 + 72) & 1) != 0 || (*(v5 + 73)))
  {
    if ((*(a2 + 398) & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(a2 + 128);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    if ((*(v6 + 20) & 1) == 0)
    {
LABEL_9:
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#gdm,INJECT_RTI_FILE,missing arguments", &buf, 2u);
      }

      std::function<void ()(gnss::Result)>::operator()(a3, 4);
      return;
    }

    v9 = *(v6 + 8);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      buf.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&buf.__r_.__value_.__l.__data_ = v10;
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (gpsd::util::readFileIntoVector(p_buf, &__p))
    {
      v12 = __p;
      v13 = v20;
      v14 = GpsdLogObjectGeneral;
      if (__p != v20)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 134349056;
          v26 = (v13 - v12);
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RTI_FILE,Injecting RTI file,size,%{public}zu", v25, 0xCu);
        }

        GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
        v15 = *(a1 + 16);
        v24[0] = off_10017D7E8;
        v24[1] = a1;
        v24[3] = v24;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a3);
        (*(*v15 + 80))(v15, &__p, v24, v23);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
        std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v24);
        goto LABEL_32;
      }

      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v18 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = buf.__r_.__value_.__r.__words[0];
        }

        *v25 = 136446210;
        v26 = v18;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#gdm,INJECT_RTI_FILE,file is empty,%{public}s", v25, 0xCu);
      }
    }

    else
    {
      v16 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = buf.__r_.__value_.__r.__words[0];
        }

        *v25 = 136446210;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RTI_FILE,failed to read file,%{public}s", v25, 0xCu);
      }
    }

    std::function<void ()(gnss::Result)>::operator()(a3, 4);
LABEL_32:
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    return;
  }

  v8 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_RTI_FILE,ignore update outside of session", &buf, 2u);
  }

  std::function<void ()(gnss::Result)>::operator()(a3, 1);
}

void sub_1000151C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a20);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](&a24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void GpsdPerformanceSummary::analyzeRti(GpsdPerformanceSummary *this, const proto::gpsd::InjectRtiFile *a2)
{
  v4 = *(a2 + 1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = gpsd::util::truncatedSha256(v6, v7);
  *(this + 26) = v8;
  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 1);
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    v12[0] = 67240448;
    v12[1] = v8;
    v13 = 2050;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#rti,sha,0x%{public}X,sz,%{public}zu", v12, 0x12u);
  }
}

uint64_t proto::gnss::Position::MergePartialFromCodedStream(proto::gnss::Position *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_85;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_95;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_76;
        }

        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v31;
        *(this + 24) |= 1u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 17)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_41;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v31;
      *(this + 24) |= 2u;
      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 25)
      {
        *(a2 + 1) = v15 + 1;
LABEL_45:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v31;
        *(this + 24) |= 4u;
        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 33)
        {
          *(a2 + 1) = v16 + 1;
LABEL_49:
          *v31 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v31;
          *(this + 24) |= 8u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 41)
          {
            *(a2 + 1) = v17 + 1;
LABEL_56:
            *v31 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v31;
            *(this + 24) |= 0x10u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 49)
            {
              *(a2 + 1) = v18 + 1;
LABEL_60:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = *v31;
              *(this + 24) |= 0x20u;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 57)
              {
                *(a2 + 1) = v19 + 1;
LABEL_64:
                *v31 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = *v31;
                *(this + 24) |= 0x40u;
                v20 = *(a2 + 1);
                if (v20 < *(a2 + 2) && *v20 == 65)
                {
                  *(a2 + 1) = v20 + 1;
LABEL_68:
                  *v31 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 8) = *v31;
                  *(this + 24) |= 0x80u;
                  v21 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v21 < v9 && *v21 == 72)
                  {
                    v10 = v21 + 1;
                    *(a2 + 1) = v10;
LABEL_72:
                    if (v10 >= v9 || (v22 = *v10, v22 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                      if (!result)
                      {
                        return result;
                      }

                      v23 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 18) = v22;
                      v23 = v10 + 1;
                      *(a2 + 1) = v23;
                    }

                    *(this + 24) |= 0x100u;
                    if (v23 < v9 && *v23 == 80)
                    {
                      v14 = v23 + 1;
                      *(a2 + 1) = v14;
LABEL_85:
                      v31[0] = 0;
                      if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
                        if (!result)
                        {
                          return result;
                        }

                        v26 = v31[0];
                      }

                      else
                      {
                        *(a2 + 1) = v14 + 1;
                      }

                      if (proto::gnss::Reliability_IsValid(v26))
                      {
                        *(this + 24) |= 0x200u;
                        *(this + 19) = v26;
                      }

                      v27 = *(a2 + 1);
                      v11 = *(a2 + 2);
                      if (v27 < v11 && *v27 == 88)
                      {
                        v24 = v27 + 1;
                        *(a2 + 1) = v24;
LABEL_95:
                        if (v24 >= v11 || (v28 = *v24, v28 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
                          if (!result)
                          {
                            return result;
                          }

                          v29 = *(a2 + 1);
                          v11 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 10) = v28;
                          v29 = v24 + 1;
                          *(a2 + 1) = v29;
                        }

                        *(this + 24) |= 0x400u;
                        if (v29 < v11 && *v29 == 96)
                        {
                          v12 = v29 + 1;
                          *(a2 + 1) = v12;
LABEL_103:
                          v31[0] = 0;
                          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
                            if (!result)
                            {
                              return result;
                            }

                            v30 = v31[0];
                          }

                          else
                          {
                            *(a2 + 1) = v12 + 1;
                          }

                          if (v30 <= 5)
                          {
                            *(this + 24) |= 0x800u;
                            *(this + 22) = v30;
                          }

                          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                          {
                            *(a2 + 8) = 0;
                            result = 1;
                            *(a2 + 36) = 1;
                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t GpsdGnssDeviceManager::injectAssistancePosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 36);
  if ((v4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    v7 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
  }

  if ((~v4 & 0xC) == 0 && (*(v7 + 96) & 0x2F7) == 0x2F7)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    ProtobufUtil::convert::cpbInjectAssistancePosition(a2, v8);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    GnssDeviceCommon::injectAssistancePositionHelper((a1 + 8), v8, v10);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
LABEL_2:

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t ProtobufUtil::convert::cpbInjectAssistancePosition(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    result = ProtobufUtil::convert::cpbPosition(v5, a2);
    v4 = *(v3 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  *(a2 + 88) = v7;
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_14:
  *(a2 + 92) = *(v3 + 20);
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(a2 + 96) = *(v3 + 24);
  return result;
}

void GpsdPerformanceSummary::analyzeCpi(GpsdPerformanceSummary *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (*(this + 58))
  {
    v4 = *(this + 44);
    v5 = *(this + 45);
    if (gnss::Fix::isValid((this + 264)) && *(this + 68) < 1000000000.0 && sqrt(v5 * v5 + v4 * v4) < 2000.0)
    {
      v6 = *(a2 + 3);
      v7 = *(this + 58);
      if ((*&v6 - *&v7) <= 0)
      {
        v8 = *&v6 - *&v7 > -2000000000;
      }

      else
      {
        v8 = *&v6 - *&v7 < 2000000000;
      }

      if (v8)
      {
        v9 = *(a2 + 1);
        v10 = v9;
        if (!v9)
        {
          v10 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
        }

        v11 = *(this + 43);
        v12 = *(this + 39);
        v13 = (*(v10 + 8) - v12) * 111000.0;
        *(this + 61) = v13;
        v14 = *(v10 + 16);
        v15 = cos(v12 * 0.0174532925) * 111321.0 * (v14 - *(this + 40));
        *(this + 62) = v15;
        v16 = v9;
        if (!v9)
        {
          v16 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
        }

        v17 = sqrt((v13 * v13 + v15 * v15) / (*(v16 + 56) * *(v16 + 56) + *(v16 + 48) * *(v16 + 48) + *(this + 45) * *(this + 45) + *(this + 44) * *(this + 44)));
        *(this + 64) = v17;
        v18 = 0.0;
        if (v11 < 1000.0)
        {
          if (!v9)
          {
            v9 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
          }

          v19 = *(v9 + 24) - *(this + 41);
          *(this + 63) = v19;
          v18 = sqrt(v19 * v19 / (v11 * v11 + *(v9 + 40) * *(v9 + 40)));
        }

        *(this + 65) = v18;
        v20 = *(a2 + 4);
        *(this + 132) = v20;
        v21 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(this + 63);
          v26 = 134350336;
          v27 = v13;
          v28 = 2050;
          v29 = v15;
          v30 = 2050;
          v31 = v22;
          v32 = 2050;
          v33 = v17;
          v34 = 2050;
          v35 = v18;
          v36 = 1026;
          v37 = v20;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "PerfCpi,deltaNorth,%{public}.1f,deltaEast,%{public}.1f,deltaVert,%{public}.1f,deltaHorizNorm,%{public}.2f,deltaVertNorm,%{public}.2f,type,%{public}d", &v26, 0x3Au);
        }
      }

      else
      {
        v23 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 134349312;
          v27 = v7;
          v28 = 2050;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PerfWarning,fix and CPI timestamp mismatch,%{public}llu,%{public}llu", &v26, 0x16u);
        }
      }
    }
  }

  v24 = *(a2 + 4);
  if (v24 > 3)
  {
    v25 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 67240192;
      LODWORD(v27) = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PerfWarning,bad_index,cpiType,%{public}d", &v26, 8u);
    }
  }

  else
  {
    ++*(this + v24 + 133);
  }
}

void proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this)
{
  *this = off_10017A048;
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(this);

  operator delete();
}

uint64_t proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(proto::gpsd::InjectRtiFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(proto::gpsd::InjectAssistancePosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_45;
          }
        }

        else if (v7 == 10 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_35;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 9) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v33 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v33);
    if (!proto::gnss::Position::MergePartialFromCodedStream(v13, a2, v19) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v18);
    v20 = *(a2 + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(a2 + 14) = v22;
    }

    v23 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v10 = v23 + 1;
      *(a2 + 1) = v10;
LABEL_35:
      v31 = 0;
      if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
        if (!result)
        {
          return result;
        }

        v24 = v31;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v24 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 4) = v24;
      }

      v26 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v26 < v11 && *v26 == 24)
      {
        v15 = v26 + 1;
        *(a2 + 1) = v15;
LABEL_45:
        v32 = 0;
        if (v15 >= v11 || (v27 = *v15, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
          if (!result)
          {
            return result;
          }

          v27 = v32;
          v28 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v28 = v15 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 20) = v27 != 0;
        *(this + 9) |= 4u;
        if (v28 < v11 && *v28 == 80)
        {
          v12 = v28 + 1;
          *(a2 + 1) = v12;
LABEL_53:
          if (v12 >= v11 || (v29 = *v12, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v29;
            v30 = v12 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 9) |= 8u;
          if (v30 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }
  }
}

uint64_t ProtobufUtil::convert::cpbPosition(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 24) = *(result + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 32) = *(result + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 40) = *(result + 48);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 48) = *(result + 56);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 56) = *(result + 64);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 64) = *(result + 72);
  v2 = *(result + 96);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    *(a2 + 72) = *(result + 80);
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_32;
  }

LABEL_23:
  v3 = 0;
  v4 = *(result + 76);
  if (v4 <= 49)
  {
    if (v4 != 10 && v4 != 25)
    {
      goto LABEL_30;
    }

LABEL_29:
    v3 = *(result + 76);
    goto LABEL_30;
  }

  if (v4 == 50 || v4 == 75)
  {
    goto LABEL_29;
  }

LABEL_30:
  *(a2 + 68) = v3;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if ((v2 & 0x800) == 0)
  {
    return result;
  }

LABEL_32:
  v5 = *(result + 88);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 4)
  {
    v7 = 0;
  }

  *(a2 + 80) = v7;
  return result;
}

void GnssDeviceCommon::injectAssistancePositionHelper(gpsd::util *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 68);
  v29 = 0;
  v7 = *(a2 + 88);
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(a1);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 32);
  v12 = *(GpsdPlatformInfo::instance(0) + 8);
  if (((v12 - 301) <= 1 || (v12 - 201) <= 1) && v7 == 0)
  {
    v15 = dbl_100144A70[(*(GpsdPlatformInfo::instance(0) + 8) - 201) < 2] / sqrt(v9 * v9 + v10 * v10);
    if (v15 >= 1.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *v31 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#gdm,injectAssistancePosition,inflating ref pos unc by factor,%{public}.2f", buf, 0xCu);
    }

    v10 = v10 * v16;
    v9 = v9 * v16;
    v11 = fmax(v11, 200.0);
  }

  v18 = *(a1 + 1);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 92);
  v22 = *(a2 + 16);
  v23 = *(a2 + 56);
  v24 = *(a2 + 96);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a3);
  (*(*v18 + 96))(v18, v21 & 1, v6, v24, v7, &v29, v42, v19, v20, v22, v11, v10, v9, v23);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
  v25 = GpsdLogObjectGeneral;
  if (v7 == 1)
  {
    v26 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v26 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, v26))
  {
    v27 = *(a2 + 92);
    v28 = (MachContinuousTimeNs - *(a2 + 96)) * 0.000001;
    *buf = 67241728;
    *v31 = v7;
    *&v31[4] = 1026;
    *&v31[6] = v27;
    v32 = 2050;
    v33 = v11;
    v34 = 2050;
    v35 = v10;
    v36 = 2050;
    v37 = v9;
    v38 = 1026;
    v39 = v6;
    v40 = 2050;
    v41 = v28;
    _os_log_impl(&_mh_execute_header, v25, v26, "#gdm,injectAssistancePosition,type,%{public}d,altValid,%{public}d,vertUncM,%{public}.1f,semiMajUncM,%{public}.1f,semiMinUncM,%{public}.1f,reliability,%{public}d,delayMachMs,%{public}.2f,", buf, 0x3Cu);
  }
}

void sub_100016730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::MergePartialFromCodedStream(proto::gpsd::SetAssistanceSignalEnvironment *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 < 7 || v8 == 15)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t gnss::Convert::fromProtobuf(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_100145DFC[a1];
  }
}

void proto::gpsd::SetAssistanceSignalEnvironment::~SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *this = off_10017A570;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A570;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A570;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 9) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t GpsdGnssDeviceManager::injectAssistanceTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 36) & 3) == 0)
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = *(a2 + 36);
    if (v6)
    {
      v8 = *(a2 + 8);
      if ((v6 & 2) == 0)
      {
LABEL_4:
        if ((v6 & 4) == 0)
        {
LABEL_6:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
          GnssDeviceCommon::injectAssistanceTimeHelper(a1 + 8, &v8, v11);
          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
        }

LABEL_5:
        v10 = *(a2 + 24);
        goto LABEL_6;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 16);
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_100016C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GnssDeviceCommon::injectAssistanceTimeHelper(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = GpsdPreferences::instance(0);
  v8 = GpsdPreferences::allowAssistanceTimeTo10Milliseconds(v7);
  v9 = 100000000;
  if (v6 > 0x5F5E100)
  {
    v9 = v6;
  }

  v10 = 12000000;
  v11 = 100000000;
  if (v6 > 0x5F5E100)
  {
    v11 = v6;
  }

  if (v6 < 0x2625A00)
  {
    v11 = 50000000;
  }

  if (v6 >= 0x989680)
  {
    v10 = v11;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = GpsdPlatformInfo::instance(0);
  v14 = *(v13 + 2) - 103;
  v15 = v14 > 4;
  v16 = (1 << v14) & 0x19;
  if (v15 || v16 == 0)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v13);
    v28 = MachContinuousTimeNs;
    if (*(a2 + 2))
    {
      v29 = *(a2 + 2);
    }

    else
    {
      v29 = MachContinuousTimeNs;
    }

    v30 = *(a1 + 8);
    v31 = *a2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a3);
    (*(*v30 + 104))(v30, COERCE_DOUBLE(*&v31), v12, v29, v33);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
    *(a1 + 224) = *a2 - v29;
    *(a1 + 232) = 1;
    v25 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v32 = *a2;
      *buf = 134350080;
      v35 = v32;
      v36 = 2050;
      v37 = v29;
      v38 = 2050;
      v39 = v28;
      v40 = 2050;
      v41 = 0;
      v42 = 2050;
      v43 = v12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "#gdm,injectAssistanceTime,gpsNs,%{public}llu,machNs,%{public}llu,nowNs,%{public}llu,propagationNs,%{public}llu,uncNs,%{public}llu", buf, 0x34u);
    }
  }

  else
  {
    v18 = gpsd::util::getMachContinuousTimeNs(v13);
    v19 = *(a2 + 2);
    if (v19)
    {
      v20 = v18 - v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 <= 0x12A05F1FFLL)
    {
      v21 = v18;
      v22 = *a2;
      v23 = *(a1 + 8);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a3);
      *&v24 = v22 + v20;
      (*(*v23 + 104))(v23, COERCE_DOUBLE(*&v24), v12, v21, v44);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
      *(a1 + 224) = *&v24 - v21;
      *(a1 + 232) = 1;
      v25 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 134350080;
      v35 = v24;
      v36 = 2050;
      v37 = v21;
      v38 = 2050;
      v39 = v21;
      v40 = 2050;
      v41 = v20;
      v42 = 2050;
      v43 = v12;
      goto LABEL_30;
    }

    v26 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v35 = v20 * 0.000001;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#gdm,injectAssistanceTime,Warning,Failed prop sanity check,propagation_ms,%{public}.3f", buf, 0xCu);
    }

    std::function<void ()(gnss::Result)>::operator()(a3, 2);
  }
}

void proto::gpsd::InjectAssistanceTime::~InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = off_10017A0C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A0C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A0C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t GpsdGnssDeviceManager::setAssistanceSignalEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a1 + 16);
    v6 = gnss::Convert::fromProtobuf(*(a2 + 8));
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    (*(*v5 + 184))(v5, v6, v7);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

void sub_10001712C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NmeaLogging::append(std::string **a1)
{
  if ((atomic_load_explicit(&qword_100180FC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100180FC8))
  {
    byte_100180FB9 = vendorMarkerCharacter();
    __cxa_guard_release(&qword_100180FC8);
  }

  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      removeTrailingCRLF(v2);
      __n = 0;
      NmeaType = getNmeaType(v2, &__n);
      v5 = logLevelForInternal(NmeaType);
      if (NmeaType > 0x474E5A4343)
      {
        if (NmeaType <= 0x5044504753)
        {
          if (NmeaType > 0x5041474343)
          {
            if ((NmeaType - 0x5044424741) <= 0x18)
            {
              if (((1 << (NmeaType - 65)) & 0x1AE5175) != 0)
              {
                goto LABEL_123;
              }

              if (NmeaType == 0x5044424744)
              {
                goto LABEL_108;
              }
            }

            if (NmeaType == 0x5041474344)
            {
              goto LABEL_123;
            }

            v7 = 1095975748;
            goto LABEL_121;
          }

          if (NmeaType > 0x4750484453)
          {
            if (NmeaType > 0x4751475355)
            {
              if (NmeaType == 0x4751475356 || NmeaType == 0x494D475341)
              {
                goto LABEL_108;
              }

              v7 = 1094796100;
              goto LABEL_121;
            }

            if (NmeaType == 0x4750484454)
            {
              goto LABEL_123;
            }

            v8 = 0x4750565447;
            goto LABEL_122;
          }

          if (NmeaType <= 0x4750474C4BLL)
          {
            if (NmeaType == 0x474E5A4344)
            {
              goto LABEL_108;
            }

            v9 = 1314538561;
          }

          else
          {
            if (NmeaType == 0x4750474C4CLL || NmeaType == 0x4750475341)
            {
              goto LABEL_108;
            }

            v9 = 1346851670;
          }

          goto LABEL_106;
        }

        if (NmeaType > 0x5051475340)
        {
          if (NmeaType > 0x5051504452)
          {
            if (NmeaType <= 0x5051504532)
            {
              if (NmeaType == 0x5051504453)
              {
                goto LABEL_123;
              }

              v7 = 1364215089;
              goto LABEL_121;
            }

            if (NmeaType == 0x5051504533)
            {
              goto LABEL_123;
            }

            if (NmeaType == 0x515A475341)
            {
              goto LABEL_108;
            }

            v6 = 0x515A475356;
          }

          else
          {
            if ((NmeaType - 0x50514D4531) < 5 || NmeaType == 0x5051475341)
            {
              goto LABEL_123;
            }

            v6 = 0x5051475356;
          }

          goto LABEL_107;
        }

        if (NmeaType <= 0x5044584340)
        {
          if (NmeaType <= 0x5044504D53)
          {
            if (NmeaType == 0x5044504754)
            {
              goto LABEL_123;
            }

            v12 = 19779;
          }

          else
          {
            if (NmeaType == 0x5044504D54)
            {
              goto LABEL_123;
            }

            if (NmeaType == 0x5044505353)
            {
              goto LABEL_108;
            }

            v12 = 21581;
          }

          v7 = v12 & 0xFFFFFFFF0000FFFFLL | 0x44500000;
LABEL_121:
          v8 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5000000000;
LABEL_122:
          if (NmeaType == v8)
          {
            goto LABEL_123;
          }

          goto LABEL_137;
        }

        if (NmeaType > 0x5044584942)
        {
          if (NmeaType == 0x5044584943 || NmeaType == 0x5044584C43)
          {
LABEL_123:
            v23 = GpsdLogObjectNmea;
            if (os_log_type_enabled(GpsdLogObjectNmea, v5))
            {
              v24 = byte_100180FB9;
              v25 = __n;
              std::string::basic_string(&v38, v2, 0, __n, &v37);
              v26 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
              v27 = v38.__r_.__value_.__r.__words[0];
              std::string::basic_string(&v37, v2, v25, 0xFFFFFFFFFFFFFFFFLL, &v40);
              v28 = &v38;
              if (v26 < 0)
              {
                v28 = v27;
              }

              v29 = &v37;
              if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v29 = v37.__r_.__value_.__r.__words[0];
              }

              *buf = 67240706;
              v42 = v24;
              v43 = 2082;
              v44 = v28;
              v45 = 2082;
              v46 = v29;
              v20 = v23;
              v21 = v5;
              v22 = "%{public}c,NMEA:%{public}s%{public}s";
              goto LABEL_129;
            }

            goto LABEL_133;
          }

          v7 = 1146637388;
          goto LABEL_121;
        }

        if ((NmeaType - 0x5044584341) <= 0xB)
        {
          v10 = 1 << (NmeaType - 65);
          v11 = 2057;
          goto LABEL_84;
        }
      }

      else
      {
        if (NmeaType <= 1095194416)
        {
          if (NmeaType <= 5133900)
          {
            if (NmeaType > 4672590)
            {
              if (NmeaType > 4933207)
              {
                if (NmeaType == 4933208 || NmeaType == 5062992)
                {
                  goto LABEL_123;
                }

                v8 = 5129559;
              }

              else
              {
                if (NmeaType == 4672591 || NmeaType == 4738113)
                {
                  goto LABEL_123;
                }

                v8 = 4933186;
              }
            }

            else if (NmeaType > 4542019)
            {
              if (NmeaType == 4542020 || NmeaType == 4606286)
              {
                goto LABEL_123;
              }

              v8 = 4606296;
            }

            else
            {
              if (NmeaType == 4278083 || NmeaType == 4412504)
              {
                goto LABEL_123;
              }

              v8 = 4474189;
            }

            goto LABEL_122;
          }

          if (NmeaType <= 5395522)
          {
            if (NmeaType > 5263186)
            {
              if (NmeaType == 5263187 || NmeaType == 5265234)
              {
                goto LABEL_123;
              }

              v8 = 5392708;
            }

            else
            {
              if (NmeaType == 5133901 || NmeaType == 5260865)
              {
                goto LABEL_123;
              }

              v8 = 5260877;
            }

            goto LABEL_122;
          }

          if (NmeaType <= 5461056)
          {
            if (NmeaType == 5395523)
            {
              goto LABEL_123;
            }

            if (NmeaType == 5456212)
            {
              goto LABEL_108;
            }

            v8 = 5458255;
            goto LABEL_122;
          }

          if (NmeaType > 5462349)
          {
            if (NmeaType == 5462350)
            {
              goto LABEL_123;
            }

            v8 = 5590595;
            goto LABEL_122;
          }

          if (NmeaType == 5461057)
          {
            goto LABEL_123;
          }

          v6 = 5461571;
          goto LABEL_107;
        }

        if (NmeaType > 1262900051)
        {
          if (NmeaType <= 0x4741475340)
          {
            if (NmeaType <= 1397705805)
            {
              if (NmeaType == 1262900052 || NmeaType == 1297044547)
              {
                goto LABEL_123;
              }

              v8 = 1347375959;
              goto LABEL_122;
            }

            if (NmeaType == 1397705806)
            {
              goto LABEL_123;
            }

            if (NmeaType == 0x4244475341)
            {
LABEL_108:
              v13 = GpsdLogObjectNmea;
              if (os_log_type_enabled(GpsdLogObjectNmea, v5))
              {
                v14 = byte_100180FB9;
                v15 = __n;
                std::string::basic_string(&v38, v2, 0, __n, &v37);
                v16 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
                v17 = v38.__r_.__value_.__r.__words[0];
                std::string::basic_string(&v37, v2, v15, 0xFFFFFFFFFFFFFFFFLL, &v40);
                v18 = &v38;
                if (v16 < 0)
                {
                  v18 = v17;
                }

                v19 = &v37;
                if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v19 = v37.__r_.__value_.__r.__words[0];
                }

                *buf = 67240707;
                v42 = v14;
                v43 = 2082;
                v44 = v18;
                v45 = 2081;
                v46 = v19;
                v20 = v13;
                v21 = v5;
                v22 = "%{public}c,NMEA:%{public}s%{private}s";
LABEL_129:
                _os_log_impl(&_mh_execute_header, v20, v21, v22, buf, 0x1Cu);
                if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v37.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v38.__r_.__value_.__l.__data_);
                }

                goto LABEL_133;
              }

              goto LABEL_133;
            }

            v6 = 0x4244475356;
            goto LABEL_107;
          }

          if (NmeaType > 0x474C475355)
          {
            if (NmeaType == 0x474C475356 || NmeaType == 0x474E475341)
            {
              goto LABEL_108;
            }

            v9 = 1313297236;
          }

          else
          {
            if (NmeaType == 0x4741475341 || NmeaType == 0x4741475356)
            {
              goto LABEL_108;
            }

            v9 = 1111970646;
          }

LABEL_106:
          v6 = v9 & 0xFFFF0000FFFFFFFFLL | 0x4700000000;
LABEL_107:
          if (NmeaType == v6)
          {
            goto LABEL_108;
          }

          goto LABEL_137;
        }

        if (NmeaType <= 1262896196)
        {
          if (NmeaType > 1129073494)
          {
            if (NmeaType == 1129073495 || NmeaType == 1162891075)
            {
              goto LABEL_123;
            }

            v8 = 1179665742;
          }

          else
          {
            if ((NmeaType - 1095194417) < 2 || NmeaType == 1128482881)
            {
              goto LABEL_123;
            }

            v8 = 1128482911;
          }

          goto LABEL_122;
        }

        if (NmeaType <= 1262899248)
        {
          if (NmeaType == 1262896197 || NmeaType == 1262898497)
          {
            goto LABEL_123;
          }

          v8 = 1262898499;
          goto LABEL_122;
        }

        if ((NmeaType - 1262899249) <= 0x1E)
        {
          v10 = 1 << (NmeaType - 49);
          v11 = 1073741827;
LABEL_84:
          if ((v10 & v11) != 0)
          {
            goto LABEL_123;
          }
        }
      }

LABEL_137:
      v30 = GpsdLogObjectNmea;
      if (os_log_type_enabled(GpsdLogObjectNmea, v5))
      {
        v31 = byte_100180FB9;
        v32 = __n;
        std::string::basic_string(&v38, v2, 0, __n, &v37);
        v33 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
        v34 = v38.__r_.__value_.__r.__words[0];
        std::string::basic_string(&v37, v2, v32, 0xFFFFFFFFFFFFFFFFLL, &v40);
        v35 = &v38;
        if (v33 < 0)
        {
          v35 = v34;
        }

        v36 = &v37;
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v37.__r_.__value_.__r.__words[0];
        }

        *buf = 67240707;
        v42 = v31;
        v43 = 2082;
        v44 = v35;
        v45 = 2085;
        v46 = v36;
        v20 = v30;
        v21 = v5;
        v22 = "%{public}c,NMEA:%{public}s%{sensitive}s";
        goto LABEL_129;
      }

LABEL_133:
      ++v2;
    }

    while (v2 != v3);
  }
}

uint64_t GnssDeviceCommon::nmeaCallback(uint64_t a1, std::string **a2)
{
  NmeaLogging::append(a2);
  v4 = GpsdRuntime::instance(v3);
  v6[0] = off_1001732B8;
  v6[1] = a1;
  v6[3] = v6;
  GpsdRuntime::asyncDevice(v4, v6);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
}

void sub_100017CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *removeTrailingCRLF(uint64_t *result)
{
  v1 = 8;
  while (1)
  {
    v2 = *(result + 23);
    if (v2 < 0)
    {
      break;
    }

    if (!*(result + 23))
    {
      return result;
    }

    v3 = *(result + v2 - 1);
    if (v3 != 10 && v3 != 13)
    {
      return result;
    }

    v5 = v2 - 1;
    *(result + 23) = v2 - 1;
    v6 = result;
LABEL_17:
    *(v6 + v5) = 0;
    if (!--v1)
    {
      return result;
    }
  }

  v7 = result[1];
  if (v7)
  {
    v6 = *result;
    v8 = *(*result + v7 - 1);
    if (v8 == 10 || v8 == 13)
    {
      v5 = v7 - 1;
      result[1] = v5;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t logLevelForInternal(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_100180FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100180FC0))
  {
    _MergedGlobals_4 = os_variant_has_internal_diagnostics();
    __cxa_guard_release(&qword_100180FC0);
  }

  result = 1;
  if (a1 <= 0x4750475340)
  {
    if (a1 <= 1128482910)
    {
      if (a1 > 5263186)
      {
        if (a1 > 5461570)
        {
          if ((a1 - 1095194417) < 2 || a1 == 5461571)
          {
            return (_MergedGlobals_4 & 1) == 0;
          }

          v5 = 1128482881;
        }

        else if (a1 > 5456211)
        {
          if (a1 == 5456212)
          {
            return (_MergedGlobals_4 & 1) == 0;
          }

          v5 = 5461057;
        }

        else
        {
          if (a1 == 5263187)
          {
            return result;
          }

          v5 = 5392708;
        }

        goto LABEL_78;
      }

      if (a1 <= 4933185)
      {
        if (a1 <= 4474188)
        {
          if (a1 != 4278083)
          {
            v5 = 4412504;
            goto LABEL_78;
          }

          return (_MergedGlobals_4 & 1) == 0;
        }

        if (a1 == 4474189)
        {
          return result;
        }

        v5 = 4738113;
LABEL_78:
        if (a1 == v5)
        {
          return (_MergedGlobals_4 & 1) == 0;
        }

        return 2;
      }

      if (a1 > 5002064)
      {
        if (a1 == 5002065)
        {
          return (_MergedGlobals_4 & 1) == 0;
        }

        v6 = 5062992;
      }

      else
      {
        if (a1 == 4933186)
        {
          return result;
        }

        v6 = 4933208;
      }

LABEL_74:
      if (a1 == v6)
      {
        return result;
      }

      return 2;
    }

    if (a1 <= 1262899278)
    {
      if (a1 > 1262898496)
      {
        if ((a1 - 1262899249) < 2)
        {
          return result;
        }

        if (a1 == 1262898497)
        {
          return (_MergedGlobals_4 & 1) == 0;
        }

        v3 = 19779;
        goto LABEL_53;
      }

      if (a1 > 1162891074)
      {
        if (a1 != 1162891075)
        {
          if (a1 == 1179665742)
          {
            return result;
          }

          v3 = 17477;
LABEL_53:
          v5 = v3 | 0x4B460000u;
          goto LABEL_78;
        }

        return (_MergedGlobals_4 & 1) == 0;
      }

      if (a1 == 1128482911)
      {
        return result;
      }

      v5 = 1129073495;
      goto LABEL_78;
    }

    if (a1 <= 1397705805)
    {
      if (a1 > 1297044546)
      {
        if (a1 == 1297044547)
        {
          return result;
        }

        v5 = 1347375959;
        goto LABEL_78;
      }

      if (a1 == 1262899279)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      v6 = 1262900052;
      goto LABEL_74;
    }

    if (a1 > 0x474C475355)
    {
      if (a1 == 0x474C475356)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      v7 = 1313297217;
    }

    else
    {
      if (a1 == 1397705806)
      {
        return result;
      }

      v7 = 1095193430;
    }

LABEL_64:
    v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x4700000000;
    goto LABEL_78;
  }

  if (a1 <= 0x5044584340)
  {
    if (a1 <= 0x4751475355)
    {
      if (a1 == 0x4750475341 || a1 == 0x4750475356)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      v7 = 1347571011;
      goto LABEL_64;
    }

    if ((a1 - 0x5044424741) <= 0x18 && ((1 << (a1 - 65)) & 0x1AE5175) != 0 || a1 == 0x4751475356)
    {
      return (_MergedGlobals_4 & 1) == 0;
    }

    v4 = 1095975748;
LABEL_67:
    v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x5000000000;
    goto LABEL_78;
  }

  if (a1 > 0x50514D4530)
  {
    if (a1 <= 0x5051504452)
    {
      if ((a1 - 0x50514D4531) <= 3 && a1 != 0x50514D4533)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      return 2;
    }

    if (a1 > 0x5051504532)
    {
      if (a1 == 0x5051504533)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      v4 = 1364739657;
    }

    else
    {
      if (a1 == 0x5051504453)
      {
        return (_MergedGlobals_4 & 1) == 0;
      }

      v4 = 1364215089;
    }

    goto LABEL_67;
  }

  if (a1 > 0x5044584942)
  {
    if (a1 != 0x5044584943 && a1 != 0x5044584C43)
    {
      v6 = 0x5044584C4CLL;
      goto LABEL_74;
    }
  }

  else if ((a1 - 0x5044584341) > 0xB || ((1 << (a1 - 65)) & 0x809) == 0)
  {
    return 2;
  }

  return result;
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_7;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  dispatch_async(v2, block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<GnssDeviceCommon::nmeaCallback(std::vector<std::string> &&)::$_0,std::allocator<std::vector<std::string> &&>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001732B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GpsdPerformanceSummary::appendIndication(GpsdPerformanceSummary *this, const proto::gpsd::Indication *a2)
{
  v4 = *(a2 + 2);
  if (v4 == 3)
  {
    std::mutex::lock(this + 13);
    v5 = *(a2 + 5);
    if (!v5)
    {
      v5 = *(proto::gpsd::Indication::default_instance_ + 40);
    }

    v6 = v5[1];
    *(this + 49) = vaddq_f64(v6, *(this + 49));
    *(this + 100) = *(this + 100) + v6.f64[0] * v5[2].f64[0];
    std::mutex::unlock(this + 13);
    v4 = *(a2 + 2);
  }

  if (v4 == 9)
  {
    std::mutex::lock(this + 13);
    v7 = *(a2 + 7);
    if (!v7)
    {
      v7 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    GpsdPerformanceSummary::analyzeTimeTransferData(this, v7);

    std::mutex::unlock(this + 13);
  }
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void GnssDeviceCommon::ActivityCheck::checkWhetherActiveGnssIsExpected(GnssDeviceCommon::ActivityCheck *this)
{
  if (*(this + 8) == 1)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
    if ((*(this + 8) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v3 = MachContinuousTimeNs * 0.000000001;
    v4 = v3 - *this;
    if (v4 >= 0.2)
    {
      v5 = v3 - *(this + 2);
      if (v5 + -24.0 >= v4)
      {
        v6 = v3 - *this;
      }

      else
      {
        v6 = v5 + -24.0;
      }

      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *&buf[4] = v6;
        v13 = 2050;
        v14 = v4;
        v15 = 2050;
        v16 = *&v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,outside NMEA/PVTM,any,%{public}.3f,secondsSinceStop,%{public}.3f,secondsSinceSideSpinup,%{public}.3f", buf, 0x20u);
      }

      if (v6 > 1.5)
      {
        v8 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
        {
          *buf = 134349568;
          *&buf[4] = v6;
          v13 = 2050;
          v14 = v4;
          v15 = 2050;
          v16 = *&v5;
          _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "#gdm,outside NMEA/PVTM,severe,%{public}.3f,secondsSinceStop,%{public}.3f,secondsSinceSideSpinup,%{public}.3f", buf, 0x20u);
        }

        std::string::basic_string[abi:ne200100]<0>(&v11, "LessThan5Seconds");
        if (v6 <= 300.0)
        {
          if (v6 <= 5.0)
          {
LABEL_17:
            std::string::basic_string[abi:ne200100]<0>(buf, "Monitoring");
            std::string::basic_string[abi:ne200100]<0>(&v16, "OutsideActivity");
            if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v11;
            }

            v19 = 0;
            gpsd::util::triggerDiagnosticReport(buf, v10);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v17 < 0)
            {
              operator delete(v16);
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(*buf);
            }

            if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v11.__r_.__value_.__l.__data_);
            }

            return;
          }

          v9 = "Between5And300Seconds";
        }

        else
        {
          v9 = "MoreThan300Seconds";
        }

        std::string::assign(&v11, v9);
        goto LABEL_17;
      }
    }
  }
}

void sub_100018810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
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

BOOL ReceiverClockConversion::isRxClockValid(ReceiverClockConversion *this, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rxClockConv,missing rx clock,%{public}llu", &v6, 0xCu);
    }
  }

  return v2 < 0xFFFFFFFFFFFFFFFELL;
}

void GpsdIndicationHandler::send(uint64_t a1, uint64_t a2)
{
  GpsdPerformanceSummary::appendPvtmCallbackContents(*(a1 + 16), a2, 0);
  v2 = off_100179D00;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  LODWORD(v3) = 1;
  v16 = 0x900000000;
  operator new();
}

void GpsdPerformanceSummary::appendPvtmCallbackContents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 824))
  {
    v5 = a1;
    std::mutex::lock((a1 + 832));
    if (a2)
    {
      *(v5 + 464) = gpsd::util::getMachContinuousTimeNs(v6);
      *(v5 + 264) = *a2;
      v7 = *(a2 + 16);
      v8 = *(a2 + 32);
      v9 = *(a2 + 64);
      *(v5 + 312) = *(a2 + 48);
      *(v5 + 328) = v9;
      *(v5 + 280) = v7;
      *(v5 + 296) = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      v12 = *(a2 + 128);
      *(v5 + 376) = *(a2 + 112);
      *(v5 + 392) = v12;
      *(v5 + 344) = v10;
      *(v5 + 360) = v11;
      v13 = *(a2 + 144);
      v14 = *(a2 + 160);
      v15 = *(a2 + 176);
      *(v5 + 456) = *(a2 + 192);
      *(v5 + 424) = v14;
      *(v5 + 440) = v15;
      *(v5 + 408) = v13;
      v16 = *(a2 + 120);
      *(v5 + 552) |= v16;
      if ((v16 & 1) == 0)
      {
        ++*(v5 + 560);
      }

      v17 = *(a2 + 128);
      if (v17 > 4)
      {
        v18 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          v117 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PerfWarning,bad_index,gnssContentIndex,%{public}d", buf, 8u);
        }
      }

      else
      {
        ++*(v5 + 4 * v17 + 564);
      }

      v19 = *(a2 + 192);
      if (v19 > 3)
      {
        v20 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          v117 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PerfWarning,bad_index,gnssContentIndex,%{public}d", buf, 8u);
        }
      }

      else
      {
        ++*(v5 + 4 * v19 + 604);
      }

      v21 = *(a2 + 116);
      switch(v21)
      {
        case 10:
          v22 = 1;
          break;
        case 25:
          v22 = 2;
          break;
        case 50:
          v22 = 3;
          break;
        default:
          v22 = 4 * (v21 == 75);
          break;
      }

      ++*(v5 + 584 + 4 * v22);
    }

    if (a3)
    {
      v23 = 0;
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = v5;
      do
      {
        *(&v105 + v23 + 8) = *(&v105 + v23);
        std::vector<float>::reserve((&v105 + v23), 5uLL);
        v23 += 24;
      }

      while (v23 != 168);
      v25 = *(a3 + 112);
      v26 = *(a3 + 120);
      v99 = a3;
      if (v25 != v26)
      {
        v102 = 0;
        v104 = 0;
        v27 = v5;
        v28 = v5 + 736;
        v29 = v27 + 760;
        v30 = v25 + 168;
        while (1)
        {
          v31 = *(v30 - 168);
          if (v31 > 7)
          {
            switch(v31)
            {
              case 8:
                v32 = &v108;
                v33 = 2;
                goto LABEL_39;
              case 32:
                v32 = &v112 + 1;
                v33 = 5;
LABEL_39:
                if (*(v30 + 5) == 1)
                {
                  ++*(v28 + 4 * v33);
                  if (hasPhaseLock(v30 - 168))
                  {
                    ++v102;
                    ++*(v29 + 4 * v33);
                  }

                  std::vector<float>::push_back[abi:ne200100](v32, v30);
                  std::vector<float>::push_back[abi:ne200100](&v114, v30);
                  ++v104;
                  if ((*(v103 + 110) & 1) == 0 && *(v30 - 160) == 8)
                  {
                    LODWORD(v24) = *v30;
                    if (*v30 > 25.0)
                    {
                      *(v103 + 110) = 1;
                    }
                  }
                }

                break;
              case 16:
                v32 = &v106 + 1;
                v33 = 1;
                goto LABEL_39;
            }
          }

          else
          {
            switch(v31)
            {
              case 1:
                v33 = 0;
                v32 = &v105;
                goto LABEL_39;
              case 2:
                v32 = &v109 + 1;
                v33 = 3;
                goto LABEL_39;
              case 4:
                v32 = &v111;
                v33 = 4;
                goto LABEL_39;
            }
          }

          v34 = v30 + 8;
          v30 += 176;
          if (v34 == v26)
          {
            goto LABEL_49;
          }
        }
      }

      v104 = 0;
      v102 = 0;
LABEL_49:
      v35 = 0;
      while (1)
      {
        v36 = &v105 + 3 * v35;
        v37 = v36[1];
        v38 = 126 - 2 * __clz((v37 - *v36) >> 2);
        if (v37 == *v36)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,float *,true>(*v36, v37, v39, 1, v24);
        v40 = *v36;
        v41 = v36[1];
        v42 = &v41[-*v36] >> 2;
        if (v42 >= 5)
        {
          v43 = 5;
        }

        else
        {
          v43 = &v41[-*v36] >> 2;
        }

        v44 = &v41[-v40];
        if (v41 != v40)
        {
          if (v43 <= 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = v43;
          }

          v46 = 0.0;
          v47 = *v36;
          do
          {
            v48 = *v47++;
            v46 = v46 + v48;
            --v45;
          }

          while (v45);
          v49 = v103 + 624 + 16 * v35;
          ++*v49;
          v24 = v46 / v43 + *(v49 + 8);
          *(v49 + 8) = v24;
        }

        if (v42 <= 4)
        {
          break;
        }

        if (v44 != 20)
        {
          v55 = (v40 + 20);
LABEL_74:
          v36[1] = v55;
        }

        if (++v35 == 7)
        {
          v56 = GpsdLogObjectGeneral;
          v5 = v103;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = *(&v114 + 1) - v114;
            if (*(&v114 + 1) == v114 || (v57 >> 2) < 2 || v57 == 8 || (v57 >> 2) < 4 || v57 == 16 || (v58 = *(&v105 + 1) - v105, *(&v105 + 1) == v105) || (v58 >> 2) < 2 || v58 == 8 || (v58 >> 2) < 4 || v58 == 16 || (v59 = v107 - *(&v106 + 1), v107 == *(&v106 + 1)) || (v59 >> 2) < 2 || v59 == 8 || (v59 >> 2) < 4 || v59 == 16 || (v60 = *(&v108 + 1) - v108, *(&v108 + 1) == v108) || (v60 >> 2) < 2 || v60 == 8 || (v60 >> 2) < 4 || v60 == 16 || (v61 = v110 - *(&v109 + 1), v110 == *(&v109 + 1)) || (v61 >> 2) < 2 || v61 == 8 || (v61 >> 2) < 4 || v61 == 16 || (v62 = *(&v111 + 1) - v111, *(&v111 + 1) == v111) || (v62 >> 2) < 2 || v62 == 8 || (v62 >> 2) < 4 || v62 == 16 || (v63 = v113 - *(&v112 + 1), v113 == *(&v112 + 1)) || (v63 >> 2) < 2 || v63 == 8 || v63 == 16 || (v63 >> 2) <= 3)
            {
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v64 = *(v114 + 4);
            v65 = *v114;
            v66 = *(v114 + 8);
            v67 = *(v114 + 12);
            v68 = *(v114 + 16);
            v70 = *v105;
            v69 = *(v105 + 4);
            v72 = *(v105 + 8);
            v71 = *(v105 + 12);
            v73 = *(v105 + 16);
            v74 = **(&v106 + 1);
            v75 = *(*(&v106 + 1) + 4);
            v77 = *(*(&v106 + 1) + 8);
            v76 = *(*(&v106 + 1) + 12);
            v78 = *(*(&v106 + 1) + 16);
            v80 = *v108;
            v79 = *(v108 + 4);
            v82 = *(v108 + 8);
            v81 = *(v108 + 12);
            v83 = *(v108 + 16);
            v85 = **(&v109 + 1);
            v84 = *(*(&v109 + 1) + 4);
            v87 = *(*(&v109 + 1) + 8);
            v86 = *(*(&v109 + 1) + 12);
            v88 = *(*(&v109 + 1) + 16);
            v90 = *v111;
            v89 = *(v111 + 4);
            v91 = *(v111 + 8);
            v98 = *(v111 + 12);
            v100 = **(&v112 + 1);
            v101 = *(*(&v112 + 1) + 4);
            *buf = 67249408;
            v92 = *(v111 + 16);
            v94 = *(*(&v112 + 1) + 8);
            v93 = *(*(&v112 + 1) + 12);
            v95 = *(*(&v112 + 1) + 16);
            v121 = v65;
            v123 = v64;
            v125 = v66;
            v127 = v67;
            v129 = v68;
            v131 = v70;
            v133 = v69;
            v135 = v72;
            v137 = v71;
            v139 = v73;
            v141 = v74;
            v143 = v75;
            v145 = v77;
            v147 = v76;
            v149 = v78;
            v151 = v80;
            v153 = v79;
            v155 = v82;
            v157 = v81;
            v159 = v83;
            v161 = v85;
            v163 = v84;
            v165 = v87;
            v167 = v86;
            v169 = v88;
            v171 = v90;
            v173 = v89;
            v175 = v91;
            v177 = v98;
            v179 = v92;
            v181 = v100;
            v183 = v101;
            v185 = v94;
            v187 = v93;
            v189 = v95;
            v117 = v104;
            v118 = 1026;
            v119 = v102;
            v120 = 2050;
            v122 = 2050;
            v124 = 2050;
            v126 = 2050;
            v128 = 2050;
            v130 = 2050;
            v132 = 2050;
            v134 = 2050;
            v136 = 2050;
            v138 = 2050;
            v140 = 2050;
            v142 = 2050;
            v144 = 2050;
            v146 = 2050;
            v148 = 2050;
            v150 = 2050;
            v152 = 2050;
            v154 = 2050;
            v156 = 2050;
            v158 = 2050;
            v160 = 2050;
            v162 = 2050;
            v164 = 2050;
            v166 = 2050;
            v168 = 2050;
            v170 = 2050;
            v172 = 2050;
            v174 = 2050;
            v176 = 2050;
            v178 = 2050;
            v180 = 2050;
            v182 = 2050;
            v184 = 2050;
            v186 = 2050;
            v188 = 2050;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "PerfSinglePvtm,nCodeLock,%{public}d,nPhaseLock,%{public}d,any_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,gps_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,qzs_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,gal_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,glo_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,bds_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,nic_cn0,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f", buf, 0x16Cu);
          }

          GpsdPerformanceSummary::Session::recordClockFrequency(v103, v99);
          for (i = 0; i != -168; i -= 24)
          {
            v97 = *(&v114 + i);
            if (v97)
            {
              *(&v114 + i + 8) = v97;
              operator delete(v97);
            }
          }

          goto LABEL_117;
        }
      }

      v50 = 5 - v42;
      v51 = v36[2];
      if (v50 > (v51 - v41) >> 2)
      {
        v52 = v51 - v40;
        v53 = v52 >> 1;
        if ((v52 >> 1) <= 5)
        {
          v53 = 5;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v54 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v53;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v105 + 24 * v35, v54);
      }

      memset_pattern16(v41, &unk_1001494B0, ((16 - v44) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v55 = &v41[4 * v50];
      goto LABEL_74;
    }

LABEL_117:
    std::mutex::unlock((v5 + 832));
  }
}

BOOL gnss::Convert::toProtobuf(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 48) | 2;
    *(a3 + 48) = v5;
    v6 = *(a3 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = v5 | 4;
    *(a3 + 48) = v7;
    v8 = *(a3 + 24);
    if (!v8)
    {
      operator new();
    }

    *(a3 + 48) = v7 | 1;
    v9 = *(a3 + 8);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 8) = *a1;
    *(v9 + 16) = *(a1 + 8);
    *(v9 + 24) = *(a1 + 24);
    *(v9 + 32) = *a2;
    v10 = *(a1 + 48);
    *(v9 + 48) = *(a1 + 32);
    v11 = *(v9 + 72);
    v12 = *(a1 + 12);
    *(v9 + 72) = v11 | 7;
    *(v9 + 20) = v12;
    *(v9 + 64) = *(a1 + 16);
    *(v9 + 72) = v11 | 0x1FF;
    v13 = *(v6 + 96);
    *(v6 + 8) = v10;
    *(v6 + 24) = *(a1 + 64);
    *(v6 + 40) = *(a1 + 80);
    *(v6 + 96) = v13 | 0xFF;
    *(v6 + 56) = *(a1 + 96);
    v14 = *(a1 + 116);
    v15 = *(a1 + 112) & 0x1F | (((*(a1 + 112) >> 5) & 1) << 6);
    *(v6 + 96) = v13 | 0x1FF;
    *(v6 + 72) = v15;
    if (((v14 - 25) > 0x32 || ((1 << (v14 - 25)) & 0x4000002000001) == 0) && v14 != 10)
    {
      v14 = 1;
    }

    if (!proto::gnss::Reliability_IsValid(v14))
    {
      __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
    }

    *(v6 + 76) = v14;
    *(v6 + 80) = *(a1 + 120);
    v16 = *(a1 + 128);
    if (v16 < 5)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }

    *(v6 + 96) = v13 | 0xFFF;
    *(v6 + 88) = v17;
    v18 = *(v8 + 60);
    *(v8 + 8) = *(a1 + 136);
    *(v8 + 24) = *(a1 + 152);
    *(v8 + 60) = v18 | 0x3F;
    *(v8 + 40) = *(a1 + 168);
    v19 = *(a3 + 48);
    *(a3 + 32) = *(a1 + 184);
    v20 = *(a1 + 192);
    if (v20 < 4)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 0;
    }

    *(a3 + 48) = v19 | 0x18;
    *(a3 + 40) = v21;
  }

  return a3 != 0;
}

void std::__function::__func<GpsdGnssDeviceManager::configureDevice(void)::$_2,std::allocator<GpsdGnssDeviceManager::configureDevice(void)::$_2>,void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
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

void sub_100019AF8(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[4];
    v1[4] = 0;
    if (v2)
    {
      operator delete();
    }

    v3 = v1[3];
    v1[3] = 0;
    if (v3)
    {
      operator delete();
    }

    v4 = v1[2];
    v1[2] = 0;
    if (v4)
    {
      operator delete();
    }

    v5 = v1[1];
    v1[1] = 0;
    if (v5)
    {
      operator delete();
    }

    v6 = *v1;
    *v1 = 0;
    if (v6)
    {
      operator delete();
    }

    operator delete();
  }

  return result;
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 112);
    std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](&v2);
    operator delete();
  }

  return result;
}

void ***std::unique_ptr<std::vector<gnss::SvInfo>>::~unique_ptr[abi:ne200100](void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
    operator delete();
  }

  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::setPowerReport(std::function<void ()(gnss::Result)>)::$_0>,void ()(std::unique_ptr<gnss::PwrMeasurement>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3002000000;
  v7[3] = __Block_byref_object_copy__128;
  v7[4] = __Block_byref_object_dispose__129;
  v8 = v2;
  v4 = *(v3 + 376);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZZN21GpsdGnssDeviceManager14setPowerReportENSt3__18functionIFvN4gnss6ResultEEEEENK3__0clENS0_10unique_ptrINS2_14PwrMeasurementENS0_14default_deleteIS8_EEEE_block_invoke;
  v6[3] = &unk_10017DA20;
  v6[4] = v7;
  v6[5] = v3;
  dispatch_async(v4, v6);
  _Block_object_dispose(v7, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void GnssDeviceCommon::pvtmCallback(void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7)
{
  v14 = gpsd::util::getMachContinuousTimeNs(a1) * 0.000000001;
  GnssDeviceCommon::ActivityCheck::checkWhetherActiveGnssIsExpected((a1 + 32));
  if (!*a2)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v97 = a5;
  v98 = 0.0;
  v15 = a4;
  v99 = 0.0;
  v16 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
  v17 = v16 > 4;
  v18 = (1 << v16) & 0x19;
  _ZF = v17 || v18 == 0;
  if (!_ZF || gnss::Fix::isValid(*a2))
  {
    v20 = a6;
    GnssDeviceCommon::performSpoofingChecks(a1, *a2);
    isRxClockValid = ReceiverClockConversion::isRxClockValid((a1 + 18), *(*a2 + 24));
    v22 = 1.0;
    v23 = v14;
    if (isRxClockValid)
    {
      v23 = ReceiverClockConversion::feedPvtmCallback((a1 + 18), *(*a2 + 24), v14);
    }

    v24 = a7;
    v98 = v23;
    v99 = v22;
    (*(*a1[27] + 32))(a1[27], *a2, &v98);
    v25 = 1;
    goto LABEL_9;
  }

  v20 = a6;
  v24 = a7;
  v82 = GpsdLogObjectWarning;
  v25 = 0;
  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    isValid = gnss::Position::isValid((*a2 + 48));
    v84 = gnss::Velocity::isValid((*a2 + 136));
    v85 = *a2;
    v86 = *(*a2 + 8);
    if (v86 >= 1.0e11)
    {
      if (v86 > 0.0)
      {
LABEL_77:
        v88 = *(v85 + 24) != -1;
        goto LABEL_78;
      }
    }

    else if (v86 > 0.0 && *v85 != 0)
    {
      goto LABEL_77;
    }

    v88 = 0;
LABEL_78:
    v94 = *(v85 + 168);
    if (v94 == -1.0)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0;
      if (v94 >= 0.0 && v94 < 360.0)
      {
        v95 = *(v85 + 176) > 0.0;
      }
    }

    *buf = 67240960;
    *&buf[4] = isValid;
    *&buf[8] = 1026;
    *&buf[10] = v84;
    *&buf[14] = 1026;
    *&buf[16] = v88;
    *&buf[20] = 1026;
    *&buf[22] = v95;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#gdm,pvtmCallback,dropping fix as it failed sanity check,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x1Au);
    v25 = 0;
  }

LABEL_9:
  v26 = *a2;
  v27 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *v26;
    v29 = *(v26 + 8);
    v30 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = *(v26 + 184);
    *buf = 134350848;
    *&buf[4] = v28;
    *&buf[12] = 2050;
    *&buf[14] = v29;
    *&buf[22] = 2050;
    *&buf[24] = v30;
    *v101 = 2050;
    *&v101[2] = v31;
    *&v101[10] = 2050;
    *&v101[12] = v98;
    *&v101[20] = 2050;
    *&v101[22] = v99;
    *&v101[30] = 2050;
    *&v101[32] = v14 - v98;
    *&v101[40] = 2050;
    *&v101[42] = v32;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#gdm,Time,gpsNs,%{public}llu,gpsUncNs,%{public}.1f,clockNs,%{public}llu,basebandTimeNs,%{public}llu,convMctSec,%{public}.3f,convMctUncSec,%{public}.3f,age,%{public}.3f,iflags,%{public}llx", buf, 0x52u);
    v27 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(v26 + 48);
    v34 = *(v26 + 56);
    v35 = *(v26 + 64);
    v36 = *(v26 + 72);
    v37 = *(v26 + 80);
    v38 = *(v26 + 88);
    v39 = *(v26 + 96);
    v40 = *(v26 + 104);
    v41 = *(v26 + 112);
    v42 = *(v26 + 116);
    v43 = *(v26 + 128);
    v44 = *(*a2 + 192);
    v45 = *(v26 + 120);
    *buf = 134548737;
    *&buf[4] = v33;
    *&buf[12] = 2053;
    *&buf[14] = v34;
    *&buf[22] = 2049;
    *&buf[24] = v35;
    *v101 = 2049;
    *&v101[2] = v36;
    *&v101[10] = 2050;
    *&v101[12] = v37;
    *&v101[20] = 2050;
    *&v101[22] = v38;
    *&v101[30] = 2050;
    *&v101[32] = v39;
    *&v101[40] = 2050;
    *&v101[42] = v40;
    *&v101[50] = 1026;
    *&v101[52] = v41;
    *v102 = 1026;
    *&v102[2] = v42;
    *&v102[6] = 1026;
    *&v102[8] = v43;
    *&v102[12] = 1026;
    *&v102[14] = v44;
    *&v102[18] = 2050;
    *&v102[20] = v45;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#gdm,Position,latitude,%{sensitive}.6f,longitude,%{sensitive}.6f,altWgs84,%{private}.2f,undulation,%{private}.2f,vertUnc,%{public}.2f,semiMajorHorizUnc,%{public}.2f,semiMinorHorizUnc,%{public}.2f,semiMajorAzimuthHorizUnc,%{public}.2f,source,%{public}x,reliability,%{public}d,gnssContent,%{public}d,estTech,%{public}d,assistanceUsed,%{public}llx", buf, 0x74u);
    v27 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(v26 + 136);
    v47 = *(v26 + 144);
    v48 = *(v26 + 152);
    v49 = *(v26 + 160);
    v50 = *(v26 + 168);
    v51 = *(v26 + 176);
    *buf = 134350336;
    *&buf[4] = v46;
    *&buf[12] = 2050;
    *&buf[14] = v47;
    *&buf[22] = 2050;
    *&buf[24] = v48;
    *v101 = 2050;
    *&v101[2] = v49;
    *&v101[10] = 2050;
    *&v101[12] = v50;
    *&v101[20] = 2050;
    *&v101[22] = v51;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#gdm,Velocity,horizSpeed,%{public}.2f,horizSpeedUnc,%{public}.2f,vertVel,%{public}.2f,vertVelUnc,%{public}.2f,course,%{public}.2f,courseUnc,%{public}.2f", buf, 0x3Eu);
  }

  a7 = v24;
  a6 = v20;
  a4 = v15;
  a5 = v97;
LABEL_17:
  v52 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if (*a3)
    {
      v89 = -1171354717 * ((*(*a3 + 120) - *(*a3 + 112)) >> 4);
    }

    else
    {
      v89 = -1;
    }

    if (*a4)
    {
      v90 = -252645135 * ((*(*a4 + 8) - **a4) >> 3);
    }

    else
    {
      v90 = -1;
    }

    if (*a5)
    {
      v91 = -1431655765 * ((*(*a5 + 8) - **a5) >> 3);
    }

    else
    {
      v91 = -1;
    }

    v92 = *a6 != 0;
    v93 = *a7 != 0;
    *buf = 67241472;
    *&buf[4] = v25;
    *&buf[8] = 1026;
    *&buf[10] = v89;
    *&buf[14] = 1026;
    *&buf[16] = v90;
    *&buf[20] = 1026;
    *&buf[22] = v91;
    *&buf[26] = 1026;
    *&buf[28] = v92;
    *v101 = 1026;
    *&v101[2] = v93;
    _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "#gdm,pvtmCallback,hasFix,%{public}d,nMeas,%{public}d,nSvInfo,%{public}d,nBand,%{public}d,hasTimeInfo,%{public}d,hasKlob,%{public}d", buf, 0x26u);
  }

  if ((atomic_load_explicit(&qword_100180F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100180F38))
  {
    v96 = GpsdPreferences::instance(0);
    _MergedGlobals_0 = GpsdPreferences::enableMeasurementApi(v96);
    __cxa_guard_release(&qword_100180F38);
  }

  if (_MergedGlobals_0 == 1)
  {
    v53 = *a4;
    if (*a4)
    {
      LOBYTE(v53) = *v53 != v53[1];
    }

    v54 = *a5;
    if (*a5)
    {
      LOBYTE(v54) = *v54 != v54[1];
    }

    if ((*a3 != 0) | v53 & 1 || (v54 & 1) != 0 || *a6 || *a7)
    {
      memset(buf, 0, sizeof(buf));
      *v101 = 0;
      *&v101[8] = -1;
      *&v101[16] = vdupq_n_s64(0x7FF8000000000000uLL);
      *&v101[32] = *&v101[16];
      *&v101[48] = 0;
      *v102 = *&v101[16];
      *&v102[16] = vneg_f32(0x3F0000003FLL);
      *&v102[24] = 2143289344;
      *&v103 = 0x8000000000000000;
      __asm { FMOV            V1.2S, #-1.0 }

      *(&v103 + 1) = _D1;
      *&v104 = 0x7FF8000000000000;
      DWORD2(v104) = -1082130432;
      memset(__p, 0, sizeof(__p));
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0;
      *buf = CFAbsoluteTimeGetCurrent();
      *&buf[16] = v14;
      *&buf[8] = gpsd::util::getMachAbsoluteTimeNs(v59) / 1000000000.0;
      v60 = *a3;
      if (*a3)
      {
        v61 = *v60;
        v62 = v60[1];
        *&v101[40] = v60[2];
        *&v101[24] = v62;
        *&v101[8] = v61;
        v63 = v60[3];
        v64 = v60[4];
        v65 = v60[5];
        v104 = v60[6];
        v103 = v65;
        *&v102[16] = v64;
        *v102 = v63;
        if (*&__p[0])
        {
          std::vector<gnss::Measurement>::clear[abi:ne200100](__p);
          operator delete(*&__p[0]);
          memset(__p, 0, 24);
        }

        __p[0] = v60[7];
        *&__p[1] = *(v60 + 16);
        *(v60 + 14) = 0;
        *(v60 + 15) = 0;
        *(v60 + 16) = 0;
        if (!ReceiverClockConversion::isRxClockValid((a1 + 18), *&v101[8]))
        {
          goto LABEL_55;
        }

        *&buf[24] = ReceiverClockConversion::feedPvtmCallback((a1 + 18), *&v101[8], *&buf[16]);
        *v101 = v66;
      }

      v67 = *a6;
      if (*a6)
      {
        v68 = *v67;
        *v67 = 0;
        v69 = *(&v107 + 1);
        *(&v107 + 1) = v68;
        if (v69)
        {
          operator delete();
        }

        v70 = v67[1];
        v67[1] = 0;
        v71 = v108;
        *&v108 = v70;
        if (v71)
        {
          operator delete();
        }

        v72 = v67[2];
        v67[2] = 0;
        v73 = *(&v108 + 1);
        *(&v108 + 1) = v72;
        if (v73)
        {
          operator delete();
        }

        v74 = v67[3];
        v67[3] = 0;
        v75 = v109;
        *&v109 = v74;
        if (v75)
        {
          operator delete();
        }

        v76 = v67[4];
        v67[4] = 0;
        v77 = *(&v109 + 1);
        *(&v109 + 1) = v76;
        if (v77)
        {
          operator delete();
        }
      }

      v78 = *a5;
      if (*a5)
      {
        if (v106)
        {
          *(&v106 + 1) = v106;
          operator delete(v106);
          v106 = 0uLL;
          *&v107 = 0;
        }

        v106 = *v78;
        *&v107 = *(v78 + 2);
        *v78 = 0;
        *(v78 + 1) = 0;
        *(v78 + 2) = 0;
      }

      v79 = *a4;
      if (*a4)
      {
        if (*(&__p[1] + 1))
        {
          std::vector<gnss::SvInfo>::clear[abi:ne200100](&__p[1] + 1);
          operator delete(*(&__p[1] + 1));
          memset(&__p[1] + 8, 0, 24);
        }

        *(&__p[1] + 8) = *v79;
        *(&__p[2] + 1) = *(v79 + 16);
        *v79 = 0;
        *(v79 + 8) = 0;
        *(v79 + 16) = 0;
      }

      v80 = *a7;
      *a7 = 0;
      v81 = v110;
      v110 = v80;
      if (v81)
      {
        operator delete();
      }

      gnss::MeasurementData::fillIsUsableFlag(buf);
      (*(*a1[27] + 40))(a1[27], buf);
LABEL_55:
      gnss::MeasurementData::~MeasurementData(buf);
    }
  }
}

uint64_t ___ZZN21GpsdGnssDeviceManager15configureDeviceEvENK3__2clENSt3__110unique_ptrIN4gnss3FixENS1_14default_deleteIS4_EEEENS2_INS3_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS3_6SvInfoENS1_9allocatorISC_EEEEONSB_INS3_23ReceiverBandCorrectionsENSD_ISH_EEEENS2_INS3_18TimeConversionInfoENS5_ISL_EEEENS2_INS3_24KlobucharModelParametersENS5_ISO_EEEE_block_invoke(void *a1)
{
  v1 = a1[10];
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
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

  *(v1 + 1345) = 1;
  return result;
}

void sub_10001A8A0(_Unwind_Exception *a1, uint64_t a2, ...)
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

void GnssDeviceCommon::performSpoofingChecks(gpsd::util *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == -1.0 || v2 > 2000000000.0)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#imag,fix time too uncertain to crosscheck", &v20, 2u);
    }
  }

  else
  {
    v4 = *a2;
    if (*a2 <= 0x2260FF928FFFFuLL)
    {
      v5 = GpsdLogObjectWarning;
      if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v20 = 134349312;
      v21 = v4 * 0.000000001;
      v22 = 2050;
      v23 = v2 * 0.000000001;
      v6 = "#imag,fix is in week 0 with low uncertainty,%{public}f,%{public}f";
      v7 = v5;
      goto LABEL_24;
    }

    v10 = v4 * 0.000000001;
    v11 = *&GnssDeviceCommon::performSpoofingChecks(gnss::Fix &)::buildTimeGpsSeconds;
    if (*&GnssDeviceCommon::performSpoofingChecks(gnss::Fix &)::buildTimeGpsSeconds < 0.0)
    {
      GpsWeekFromBuildDate = gpsd::util::getGpsWeekFromBuildDate(a1);
      v11 = GpsWeekFromBuildDate * 604800.0;
      *&GnssDeviceCommon::performSpoofingChecks(gnss::Fix &)::buildTimeGpsSeconds = v11;
      v13 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v20 = 67240192;
        LODWORD(v21) = GpsWeekFromBuildDate;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#imag,set build week,%{public}d", &v20, 8u);
        v11 = *&GnssDeviceCommon::performSpoofingChecks(gnss::Fix &)::buildTimeGpsSeconds;
      }
    }

    if (v10 < v11)
    {
      v14 = *(a2 + 184);
      v15 = GpsdLogObjectWarning;
      if ((v14 & 1) == 0 && os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#imag,build time,device missed detection", &v20, 2u);
        v14 = *(a2 + 184);
        v15 = GpsdLogObjectWarning;
      }

      *(a2 + 184) = v14 | 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134349312;
        v21 = v10;
        v22 = 2050;
        v23 = *&GnssDeviceCommon::performSpoofingChecks(gnss::Fix &)::buildTimeGpsSeconds;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#imag,build time,detection,fix,%{public}.1f,build,%{public}.1f", &v20, 0x16u);
      }
    }

    v16 = *(a1 + 3);
    if (v16)
    {
      v17 = v16;
      if (v10 - v16 < -2.0)
      {
        v18 = *(a2 + 184);
        v19 = GpsdLogObjectWarning;
        if ((v18 & 2) == 0 && os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#imag,EE time,device missed detection", &v20, 2u);
          v18 = *(a2 + 184);
          v19 = GpsdLogObjectWarning;
        }

        *(a2 + 184) = v18 | 2;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134349312;
          v21 = v10;
          v22 = 2050;
          v23 = v17;
          v6 = "#imag,EE time,detection,fix,%{public}.1f,ee,%{public}.1f";
          v7 = v19;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v20, 0x16u);
        }
      }
    }
  }
}

void std::__function::__func<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::operator()(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    *buf = 67240192;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gdm,DecodedExtendedEphemeris callback,type,%{public}d", buf, 8u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x4802000000;
  v12 = __Block_byref_object_copy__100;
  v6 = a2[1];
  v14 = *a2;
  v13 = __Block_byref_object_dispose__101;
  v15 = v6;
  v7 = *(v3 + 376);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZZN21GpsdGnssDeviceManager20injectAssistanceFileERKN5proto4gpsd7RequestENSt3__18functionIFvN4gnss6ResultEEEEENK3__0clEONS7_24DecodedExtendedEphemerisE_block_invoke;
  v8[3] = &unk_10017D7A8;
  v8[4] = buf;
  v8[5] = v3;
  dispatch_async(v7, v8);
  _Block_object_dispose(buf, 8);
}

uint64_t ___ZN21GpsdIndicationHandler14sendIndicationEON5proto4gpsd10IndicationE_block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 40) + 48);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(*v3 + 48);

  return v5();
}

void GpsdProtobufRouter::handleIndication(ProtobufLogger **this, const proto::gpsd::Indication *a2)
{
  GpsdProtobufRouter::loggingIndication(this, a2);
  if (*(a2 + 216))
  {
    v5 = (*(*a2 + 72))(a2);
    std::vector<unsigned char>::vector[abi:ne200100](buf, v5);
    wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(a2, *buf);
    v6 = this[25];
    if (v6)
    {
      ProtobufLogger::logGpsdEntry(v6, buf, 7);
    }

    v7 = *(a2 + 2);
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      ProtobufUtil::stringify(v7, v15);
      v13 = v16 >= 0 ? v15 : *v15;
      *v19 = 136446466;
      v20 = v13;
      v21 = 1026;
      v22 = v5;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#router,handleIndication,type,%{public}s,size,%{public}d", v19, 0x12u);
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    if (v7 == 20)
    {
      v9 = this[15];
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___ZN18GpsdProtobufRouter16handleIndicationERKN5proto4gpsd10IndicationE_block_invoke;
      block[3] = &__block_descriptor_tmp_20_0;
      block[4] = this;
      dispatch_async(v9, block);
    }

    else
    {
      GpsdSessionMonitor::update(this[27]);
    }

    if (*(a2 + 2) == 1 && (*(a2 + 216) & 8) != 0 && (v10 = this[14]) != 0)
    {
      GnssEmergencyManager::handlePvtmIndication(v10, buf);
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#router,handleIndication,pvtm,movedToGem", v15, 2u);
      }
    }

    else
    {
      v12 = this[24];
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, buf);
    }

    if (*buf)
    {
      v18 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#router,handleIndication,noType", buf, 2u);
    }
  }
}

void sub_10001B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GpsdProtobufRouter::loggingIndication(ProtobufLogger **this, const proto::gpsd::Indication *a2)
{
  if (this[25])
  {
    v4 = CLP::LogEntry::LogEntry::LogEntry(v16);
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v4);
    v6 = MachContinuousTimeNs;
    v19 |= 1u;
    v7 = v17;
    if (!v17)
    {
      operator new();
    }

    *(v17 + 44) |= 4u;
    *(v7 + 24) = MachContinuousTimeNs * 0.000000001;
    v19 |= 1u;
    MachAbsoluteTimeNs = gpsd::util::getMachAbsoluteTimeNs(MachContinuousTimeNs);
    *(v7 + 44) |= 2u;
    *(v7 + 16) = MachAbsoluteTimeNs * 0.000000001;
    v19 |= 1u;
    v9 = v17;
    if (!v17)
    {
      operator new();
    }

    Current = CFAbsoluteTimeGetCurrent();
    *(v9 + 44) |= 1u;
    *(v9 + 8) = Current;
    v19 |= 2u;
    if (!v18)
    {
      operator new();
    }

    v11 = *(v18 + 8);
    *(v18 + 20) |= 1u;
    if (!v11)
    {
      operator new();
    }

    v12 = *(v11 + 52) | 0x11;
    *(v11 + 8) = v6;
    *(v11 + 52) = v12;
    v13 = *(v11 + 40);
    if (!v13)
    {
      operator new();
    }

    if (v13 != a2)
    {
      (*(*v13 + 32))(v13);
      proto::gpsd::Indication::MergeFrom(v13, a2);
    }

    ProtobufLogger::log(this[25], v16);
    CLP::LogEntry::LogEntry::~LogEntry(v16);
  }

  v14 = (*(*a2 + 72))(a2);
  v15 = this[26];
  if (v15)
  {
    GpsdInterfaceTelemeter::appendIndication(v15, *(a2 + 2), v14);
  }
}

void sub_10001B4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::Indication::ByteSize(proto::gpsd::Indication *this, unint64_t a2)
{
  v3 = *(this + 54);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 54);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 54);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  v9 = proto::gnss::Fix::ByteSize(v8, a2);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
  }

  else
  {
    v11 = 1;
  }

  v4 = (v4 + v10 + v11 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v12 = *(this + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  v13 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
  }

  else
  {
    v15 = 1;
  }

  v4 = (v4 + v14 + v15 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_39:
  v16 = *(this + 5);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  v17 = proto::gnss::PwrMeasurement::ByteSize(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  v20 = *(this + 6);
  if (!v20)
  {
    v20 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  v21 = proto::gpsd::Status::ByteSize(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 = (v4 + v22 + v23 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v24 = *(this + 7);
    if (!v24)
    {
      v24 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    v25 = proto::gnss::TimeTransferDataExtend::ByteSize(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    }

    else
    {
      v27 = 1;
    }

    v4 = (v4 + v26 + v27 + 1);
    v3 = *(this + 54);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x100) != 0)
  {
    v28 = *(this + 8);
    if (!v28)
    {
      v28 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    v29 = proto::gpsd::RecoveryStatistics::ByteSize(v28, a2);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
    }

    else
    {
      v31 = 1;
    }

    v4 = (v4 + v30 + v31 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x200) == 0)
    {
LABEL_60:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v32 = *(this + 9);
  if (!v32)
  {
    v32 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  v33 = proto::gpsd::LtlInfoRequest::ByteSize(v32, a2);
  v34 = v33;
  if (v33 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2);
  }

  else
  {
    v35 = 1;
  }

  v4 = (v4 + v34 + v35 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x400) == 0)
  {
LABEL_61:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

LABEL_79:
  v36 = *(this + 10);
  if (!v36)
  {
    v36 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  v37 = proto::gnss::DecodedExtendedEphemeris::ByteSize(v36, a2);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
  }

  else
  {
    v39 = 1;
  }

  v4 = (v4 + v38 + v39 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x800) == 0)
  {
LABEL_62:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_85:
  v40 = *(this + 11);
  if (!v40)
  {
    v40 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  v41 = proto::gnss::DecodedRti::ByteSize(v40, a2);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
  }

  else
  {
    v43 = 1;
  }

  v4 = (v4 + v42 + v43 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x1000) == 0)
  {
LABEL_63:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_97;
  }

LABEL_91:
  v44 = *(this + 24);
  if ((v44 & 0x80000000) != 0)
  {
    v45 = 12;
  }

  else if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v45 = 3;
  }

  v4 = (v45 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_64:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_103;
  }

LABEL_97:
  v46 = *(this + 25);
  if ((v46 & 0x80000000) != 0)
  {
    v47 = 12;
  }

  else if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v47 = 3;
  }

  v4 = (v47 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_65:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_109;
  }

LABEL_103:
  v48 = *(this + 13);
  if (!v48)
  {
    v48 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  v49 = proto::gpsd::Exception::ByteSize(v48, a2);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
  }

  else
  {
    v51 = 1;
  }

  v4 = (v4 + v50 + v51 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x8000) != 0)
  {
LABEL_109:
    v52 = *(this + 14);
    if (!v52)
    {
      v52 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    v53 = proto::gpsd::AskBasebandReset::ByteSize(v52, a2);
    v54 = v53;
    if (v53 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53, a2);
    }

    else
    {
      v55 = 1;
    }

    v4 = (v4 + v54 + v55 + 2);
    v3 = *(this + 54);
  }

LABEL_115:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_176;
  }

  if ((v3 & 0x10000) != 0)
  {
    v56 = *(this + 15);
    if (!v56)
    {
      v56 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    v57 = proto::gnss::Emergency::SummaryReport::ByteSize(v56, a2);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2);
    }

    else
    {
      v59 = 1;
    }

    v4 = (v4 + v58 + v59 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x20000) == 0)
    {
LABEL_118:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_140;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_118;
  }

  v60 = *(this + 16);
  v61 = *(v60 + 23);
  v62 = v61;
  v63 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v64 = *(v60 + 23);
  }

  else
  {
    v64 = v63;
  }

  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2);
    v61 = *(v60 + 23);
    v63 = *(v60 + 8);
    v3 = *(this + 54);
    v62 = *(v60 + 23);
  }

  else
  {
    v65 = 1;
  }

  if (v62 < 0)
  {
    v61 = v63;
  }

  v4 = (v4 + v65 + v61 + 2);
  if ((v3 & 0x40000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_146;
  }

LABEL_140:
  v66 = *(this + 17);
  if (!v66)
  {
    v66 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  v67 = proto::gnss::Emergency::PositionReport::ByteSize(v66, a2);
  v68 = v67;
  if (v67 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67, a2);
  }

  else
  {
    v69 = 1;
  }

  v4 = (v4 + v68 + v69 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x80000) == 0)
  {
LABEL_120:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_152;
  }

LABEL_146:
  v70 = *(this + 18);
  if (!v70)
  {
    v70 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  v71 = proto::gnss::Emergency::MeasurementReport::ByteSize(v70, a2);
  v72 = v71;
  if (v71 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71, a2);
  }

  else
  {
    v73 = 1;
  }

  v4 = (v4 + v72 + v73 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x100000) == 0)
  {
LABEL_121:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_158;
  }

LABEL_152:
  v74 = *(this + 19);
  if (!v74)
  {
    v74 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  v75 = proto::gnss::Emergency::AssistanceNeededReport::ByteSize(v74, a2);
  v76 = v75;
  if (v75 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75, a2);
  }

  else
  {
    v77 = 1;
  }

  v4 = (v4 + v76 + v77 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x200000) == 0)
  {
LABEL_122:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_164;
  }

LABEL_158:
  v78 = *(this + 20);
  if (!v78)
  {
    v78 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  v79 = proto::gnss::Emergency::CellFTAssistanceRequest::ByteSize(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79, a2);
  }

  else
  {
    v81 = 1;
  }

  v4 = (v4 + v80 + v81 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x400000) == 0)
  {
LABEL_123:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_170;
  }

LABEL_164:
  v82 = *(this + 21);
  if (!v82)
  {
    v82 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  v83 = proto::gnss::Emergency::MeasurementReportWithEstimate::ByteSize(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83, a2);
  }

  else
  {
    v85 = 1;
  }

  v4 = (v4 + v84 + v85 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x800000) != 0)
  {
LABEL_170:
    v86 = *(this + 22);
    if (!v86)
    {
      v86 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    v87 = proto::gnss::Emergency::SessionStatus::ByteSize(v86, a2);
    v88 = v87;
    if (v87 >= 0x80)
    {
      v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87, a2);
    }

    else
    {
      v89 = 1;
    }

    v4 = (v4 + v88 + v89 + 2);
    v3 = *(this + 54);
  }

LABEL_176:
  if (!HIBYTE(v3))
  {
    goto LABEL_209;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v90 = *(this + 23);
    if (!v90)
    {
      v90 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    v91 = proto::gnss::Emergency::Init::ByteSize(v90, a2);
    v92 = v91;
    if (v91 >= 0x80)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91, a2);
    }

    else
    {
      v93 = 1;
    }

    v4 = (v4 + v92 + v93 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_179:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_179;
  }

  v94 = *(this + 48);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94, a2) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v95 = 3;
  }

  v4 = (v95 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_180:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_199:
    v98 = *(this + 52);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98, a2) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v99 = 3;
    }

    v4 = (v99 + v4);
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_203;
  }

LABEL_193:
  v96 = *(this + 49);
  if ((v96 & 0x80000000) != 0)
  {
    v97 = 12;
  }

  else if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96, a2) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v97 = 3;
  }

  v4 = (v97 + v4);
  if ((v3 & 0x8000000) != 0)
  {
    goto LABEL_199;
  }

LABEL_181:
  if ((v3 & 0x10000000) == 0)
  {
    goto LABEL_209;
  }

LABEL_203:
  v100 = *(this + 25);
  if (!v100)
  {
    v100 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  v101 = proto::gnss::Emergency::WlanMeasurementRequest::ByteSize(v100, a2);
  v103 = v101;
  if (v101 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101, v102);
  }

  else
  {
    v104 = 1;
  }

  v4 = (v4 + v103 + v104 + 2);
LABEL_209:
  *(this + 53) = v4;
  return v4;
}