uint64_t GnssHal::PlatformNvStore::clear(std::mutex *this, int a2)
{
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v9 = 134349312;
    v10 = gpsd::util::getMachContinuousTimeNs(v5) * 0.000000001;
    v11 = 1026;
    v12 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "NvStore,clear,mach_cont_s,%{public}.3f,id,%{public}d", &v9, 0x12u);
  }

  std::mutex::lock(this + 3);
  v7 = GnssHal::PlatformNvStore::clearFromCache(v6, &this->__m_.__opaque[8], a2);
  GnssHal::PlatformNvStore::clearFromCache(v7, &this[1].__m_.__opaque[32], a2);
  std::mutex::unlock(this + 3);
  return 1;
}

uint64_t GnssHal::PlatformNvStore::clearInternal(GnssHal::PlatformNvStore *this, uint64_t a2)
{
  v4 = GnssHal::PlatformNvStore::clearFromCache(this, (this + 16), a2);
  GnssHal::PlatformNvStore::clearFromCache(v4, (this + 104), a2);
  return 1;
}

uint64_t GnssHal::PlatformNvStore::clear(uint64_t a1, int a2)
{
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    LODWORD(v16[0]) = 134349312;
    *(v16 + 4) = gpsd::util::getMachContinuousTimeNs(v5) * 0.000000001;
    WORD2(v16[1]) = 1026;
    *(&v16[1] + 6) = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "NvStore,clearNamed,mach_cont_s,%{public}.3f,id,%{public}d", v16, 0x12u);
  }

  std::mutex::lock((a1 + 192));
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_10;
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
    v13 = GpsdLogObjectGeneral;
    v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      v15 = (v7 + 40);
      if (*(v7 + 63) < 0)
      {
        v15 = *v15;
      }

      LODWORD(v16[0]) = 67240450;
      HIDWORD(v16[0]) = a2;
      LOWORD(v16[1]) = 2082;
      *(&v16[1] + 2) = v15;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "NvStore: Clearing NamedType=%{public}d from dedicated file %{public}s", v16, 0x12u);
    }

    memset(v16, 0, sizeof(v16));
    v11 = GnssHal::PlatformNvStore::writeBlobToDedicatedFile(v14, (v7 + 40), v16);
  }

  else
  {
LABEL_10:
    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      LODWORD(v16[0]) = 67240448;
      HIDWORD(v16[0]) = a2;
      LOWORD(v16[1]) = 2050;
      *(&v16[1] + 2) = a2 + 0x80000000;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NvStore: Did not find dedicated file for NamedType=%{public}d, converting it to id=%{public}lld", v16, 0x12u);
    }

    v10 = GnssHal::PlatformNvStore::clearFromCache(v9, (a1 + 16), a2 + 0x80000000);
    GnssHal::PlatformNvStore::clearFromCache(v10, (a1 + 104), a2 + 0x80000000);
    v11 = 1;
  }

  std::mutex::unlock((a1 + 192));
  return v11;
}

uint64_t GnssHal::PlatformNvStore::clearSessionStorage(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v6 = 134349056;
    v7 = gpsd::util::getMachContinuousTimeNs(v3) * 0.000000001;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "NvStore,clearSession,mach_cont_s,%{public}.3f", &v6, 0xCu);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::clearCache(v4, &this->__m_.__opaque[8]);
  std::mutex::unlock(this + 3);
  return 1;
}

void GnssHal::PlatformNvStore::clearCache(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  *(a2 + 10) = 0;
  v3 = proto::gnsshal::NvStore::Clear(a2);
  *(a2 + 12) |= 1u;
  *(a2 + 10) = 1;
  if ((GnssHal::PlatformNvStore::writeCacheToDisk(v3, a2) & 1) == 0)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NvStore,clearCache requested but not completed due to writeCacheToDisk failure", v5, 2u);
    }
  }
}

uint64_t GnssHal::PlatformNvStore::clearPermanentStorage(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v6 = 134349056;
    v7 = gpsd::util::getMachContinuousTimeNs(v3) * 0.000000001;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "NvStore,clearPermanent,mach_cont_s,%{public}.3f", &v6, 0xCu);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::clearCache(v4, &this[1].__m_.__opaque[32]);
  std::mutex::unlock(this + 3);
  return 1;
}

uint64_t GnssHal::PlatformNvStore::writeBlobToDedicatedFile(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 4);
  if (v34 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ".tmp");
  if (v34 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = fopen(v8, "wb+");
  if (!v9)
  {
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      *buf = 136446210;
      v36 = v19;
      v15 = "NvStore,Failed to open dedicated tmp file,%{public}s";
      v16 = v18;
      v17 = 12;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  __ptr = *(a3 + 8) - *a3;
  if (fwrite(&__ptr, 4uLL, 1uLL, v9) != 1 || (v10 = fwrite(*a3, 1uLL, __ptr, v9), v10 != __ptr))
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v31 = __p;
      if (v34 < 0)
      {
        v31 = __p[0];
      }

      *buf = 136446466;
      v36 = v31;
      v37 = 1026;
      v38 = __ptr;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NvStore,Failed to write to temp file,%{public}s,localNumByes,%{public}d", buf, 0x12u);
    }
  }

  if (fclose(v9))
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67240192;
      LODWORD(v36) = v14;
      v15 = "NvStore,Failed to close temp file,%{public}d";
      v16 = v13;
      v17 = 8;
LABEL_38:
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (v34 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  rename(v20, v21, v12);
  if (v22)
  {
    v23 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a2 + 23);
      v25 = *a2;
      v26 = __error();
      if (v24 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = v25;
      }

      v28 = *v26;
      *buf = 136446466;
      v36 = v27;
      v37 = 1026;
      v38 = v28;
      v15 = "NvStore,Failed to move temp file to primary dedicated,%{public}s,%{public}d";
      v16 = v23;
      v17 = 18;
      goto LABEL_38;
    }

LABEL_39:
    v29 = 0;
    goto LABEL_40;
  }

  v29 = 1;
LABEL_40:
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return v29;
}

void sub_100058FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL GnssHal::PlatformNvStore::existsInCache(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2, uint64_t a3)
{
  v3 = *(a2 + 6);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(a2 + 2) + 8 * v5);
    if (*(v6 + 16) == a3)
    {
      break;
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  if (v3 <= v5)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    v6 = *(*(a2 + 2) + 8 * v5);
  }

  v8 = *(v6 + 24);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  return v9 != 0;
}

void sub_1000590C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL GnssHal::PlatformNvStore::storeToCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  v8 = v7;
  if (v7 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(a2 + 16) + 8 * v9);
      if (*(v10 + 16) == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        goto LABEL_5;
      }
    }

    if (v7 <= v9)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
      v10 = *(*(a2 + 16) + 8 * v9);
    }

    v17 = *(v10 + 24);
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    v11 = *(a2 + 80) + *(a4 + 8) - *a4 - v18;
    if (v11 < 8000000)
    {
      *(a2 + 80) = v11;
      GnssHal::PlatformNvStore::storeToProtobuf(a1, v10, a3, a4);
      return 1;
    }

    v15 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_22:
    *buf = 134349312;
    v22 = v11;
    v23 = 2050;
    v24 = 8000000;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "NvStore,NV_LIMIT_TOTAL_SIZE reached,%{public}lld,%{public}lld", buf, 0x16u);
    return 0;
  }

LABEL_5:
  v11 = *(a4 + 8) - *a4 + *(a2 + 80);
  if (v11 < 8000000)
  {
    *(a2 + 80) = v11;
    v12 = *(a2 + 28);
    if (v8 >= v12)
    {
      if (v12 == *(a2 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), v12 + 1);
        v12 = *(a2 + 28);
      }

      *(a2 + 28) = v12 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
    }

    v13 = *(a2 + 16);
    *(a2 + 24) = v8 + 1;
    v14 = *(v13 + 8 * v8);
    *(v14 + 64) |= 8u;
    *(v14 + 32) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    *(v14 + 64) |= 0x10u;
    *(v14 + 40) = Current;
    GnssHal::PlatformNvStore::storeToProtobuf(v20, v14, a3, a4);
    return 1;
  }

  v15 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_100059380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2)
{
  v2 = *(a2 + 79);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 79);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    return 1;
  }

  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NvStore,writeCacheToDisk", buf, 2u);
    v2 = *(a2 + 79);
    v4 = *(a2 + 8);
    v3 = *(a2 + 79);
  }

  if (v3 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  v9 = v34;
  std::string::basic_string[abi:ne200100](v34, v8 + 4);
  if (v35 < 0)
  {
    v9 = v34[0];
  }

  if (v8)
  {
    if (*(a2 + 79) >= 0)
    {
      v10 = a2 + 56;
    }

    else
    {
      v10 = *(a2 + 7);
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, ".tmp");
  if (*(a2 + 79) >= 0)
  {
    v11 = *(a2 + 79);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 4);
  if (v33 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if (*(a2 + 79) >= 0)
    {
      v13 = a2 + 56;
    }

    else
    {
      v13 = *(a2 + 7);
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, ".bak");
  if (v35 >= 0)
  {
    v14 = v34;
  }

  else
  {
    v14 = v34[0];
  }

  unlink(v14);
  if (v35 >= 0)
  {
    v15 = v34;
  }

  else
  {
    v15 = v34[0];
  }

  v16 = fopen(v15, "wb+");
  v31 = v16;
  if (v16)
  {
    gpsd::util::changeFileToClassD(v16, v17);
    wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
    v20 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a2 + 10);
      v24 = *(a2 + 6);
      v25 = proto::gnsshal::NvStore::ByteSize(a2, v21);
      *buf = 134349824;
      v37 = 0;
      v38 = 1026;
      *v39 = v23;
      *&v39[4] = 1026;
      *&v39[6] = v24;
      v40 = 1026;
      v41 = v25;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NvStore,Could not serialize to string,stringSize,%{public}zu,cacheVer,%{public}d,cacheNum,%{public}d,cacheBytes,%{public}d", buf, 0x1Eu);
    }
  }

  else
  {
    v18 = __error();
    v19 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v26 = *v18;
      v27 = v35;
      v28 = v34[0];
      v29 = strerror(v26);
      v30 = v34;
      if (v27 < 0)
      {
        v30 = v28;
      }

      *buf = 136446466;
      v37 = v30;
      v38 = 2082;
      *v39 = v29;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "NvStore,Failed to open temp file,%{public}s,%{public}s", buf, 0x16u);
    }
  }

  std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](&v31);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  return 0;
}

void sub_100059A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, FILE *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](&a15);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::printState(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v19 = a2 + 56;
    v20 = *(a2 + 10);
    if (*(a2 + 79) < 0)
    {
      v19 = *(a2 + 7);
    }

    *buf = 134349314;
    v22 = v20;
    v23 = 2082;
    v24 = v19;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "NvStore,printState,currentSize,%{public}lld,filePath,%{public}s", buf, 0x16u);
  }

  if (*(a2 + 6) < 1)
  {
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "NvStore,printState,empty", buf, 2u);
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(a2 + 6);
    if (v5 >= 1)
    {
      v6 = Current;
      v7 = 0;
      v8 = GpsdLogObjectGeneral;
      do
      {
        v9 = *(*(a2 + 2) + 8 * v7);
        v10 = *(v9 + 16);
        if (v10 <= 0x7FFFFFFF)
        {
          v11 = *(v9 + 16);
        }

        else
        {
          v11 = v10 - 0x7FFFFFFF;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(v9 + 24);
          v13 = *(v12 + 23);
          if ((v13 & 0x8000000000000000) != 0)
          {
            v13 = *(v12 + 8);
          }

          v14 = *(v9 + 56);
          v15 = v6 - *(v9 + 40);
          v16 = v6 - *(v9 + 48);
          v17 = *(v9 + 32);
          *buf = 134350336;
          v22 = v11;
          v23 = 2050;
          v24 = v13;
          v25 = 1026;
          v26 = v14;
          v27 = 2050;
          v28 = v15;
          v29 = 2050;
          v30 = v16;
          v31 = 2050;
          v32 = v17;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NvStore,printState,id,%{public}lld,size,%{public}zu,hash,%{public}x,createAgeSeconds,%{public}.1f,modAgeSeconds,%{public}.1f,modCount,%{public}lld", buf, 0x3Au);
          v8 = GpsdLogObjectGeneral;
          v5 = *(a2 + 6);
        }

        ++v7;
      }

      while (v7 < v5);
    }
  }
}

uint64_t GnssHal::PlatformNvStore::clearFromCache(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2, uint64_t a3)
{
  v3 = *(a2 + 6);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 2);
    while (1)
    {
      v8 = *(v7 + 8 * v6);
      if (*(v8 + 16) == a3)
      {
        break;
      }

      if (v3 == ++v6)
      {
        return 1;
      }
    }

    if (v3 <= v6)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
      v8 = *(*(a2 + 2) + 8 * v6);
    }

    v9 = *(v8 + 24);
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v10 = *(v9 + 8);
    }

    *(a2 + 10) -= v10;
    *buf = 0;
    v15 = 0;
    v16 = 0;
    GnssHal::PlatformNvStore::storeToProtobuf(this, v8, a3, buf);
    if ((GnssHal::PlatformNvStore::writeCacheToDisk(v11, a2) & 1) == 0)
    {
      v12 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NvStore,clearFromCache,writeCacheToDisk failed", buf, 2u);
      }
    }
  }

  return 1;
}

void sub_100059E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::storeToProtobuf(uint64_t a1, uint64_t a2, uint64_t a3, gpsd::util **a4)
{
  *(a2 + 64) |= 1u;
  *(a2 + 16) = a3;
  v6 = gpsd::util::truncatedSha256(*a4, (a4[1] - *a4));
  v7 = *(a2 + 64);
  *(a2 + 56) = v6;
  *(a2 + 64) = v7 | 6;
  v8 = *(a2 + 24);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
  }

  std::string::reserve(v8, a4[1] - *a4);
  v9 = *a4;
  v10 = a4[1];
  while (v9 != v10)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    std::string::push_back(v8, v11);
  }

  v12 = *(a2 + 32) + 1;
  *(a2 + 64) |= 8u;
  *(a2 + 32) = v12;
  Current = CFAbsoluteTimeGetCurrent();
  *(a2 + 64) |= 0x20u;
  *(a2 + 48) = Current;
  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v15 = a4[1] - *a4;
    v16 = *(a2 + 24);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      v17 = *(v16 + 8);
    }

    v18 = *(a2 + 56);
    v19 = *(a2 + 32);
    v20 = 134349824;
    v21 = v15;
    v22 = 2050;
    v23 = v17;
    v24 = 1026;
    v25 = v18;
    v26 = 2050;
    v27 = v19;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "NvStore,storeToProtobuf,source_size,%{public}zu,dest_size,%{public}zu,hash,%{public}x,count,%{public}lld", &v20, 0x26u);
  }
}

void std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](FILE **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2 && fclose(v2))
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "NvStore,Failed to close file,%{public}d", v5, 8u);
    }
  }
}

void sub_10005A10C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t GnssHal::PlatformNvStore::readCacheFromFile(GnssHal::PlatformNvStore *a1, uint64_t a2, uint64_t *a3)
{
  v73 = 0;
  *(v70 + *(v70[0] - 24)) = v6;
  v70[1] = 0;
  v7 = (v70 + *(v70[0] - 24));
  std::ios_base::init(v7, v71);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a3 + 23) < 0)
  {
    v8 = *a3;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((v70 + *(v70[0] - 24)), *&v71[*(v70[0] - 24) + 16] | 4);
  }

  if ((v71[*(v70[0] - 24) + 16] & 5) == 0)
  {
    std::istream::seekg();
    std::istream::tellg();
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v45 = a3;
      }

      else
      {
        v45 = *a3;
      }

      *v59 = 136446466;
      *v60 = v45;
      *&v60[8] = 1026;
      *&v60[10] = v69;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,filePath,%{public}s,size,%{public}d", v59, 0x12u);
    }

    std::istream::seekg();
    if (!v69)
    {
      v9 = GpsdLogObjectWarning;
      if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      if (*(a3 + 23) >= 0)
      {
        v35 = a3;
      }

      else
      {
        v35 = *a3;
      }

      *v59 = 136446210;
      *v60 = v35;
      v12 = "NvStore,readCacheFromFile,Empty file,%{public}s";
      v13 = v59;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, v13, 0xCu);
LABEL_60:
      v10 = 0;
      goto LABEL_61;
    }

    if (wireless_diagnostics::google::protobuf::Message::ParseFromIstream())
    {
      v15 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v46 = *(a2 + 24);
        *v59 = 67240192;
        *v60 = v46;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,items_size,%{public}d", v59, 8u);
      }

      GnssHal::PlatformNvStore::printState(a1, "post-parse of cache from file");
      v16 = *(a2 + 40);
      if (v16 == 1)
      {
        *(a2 + 80) = 0;
        if (*(a2 + 24) < 1)
        {
          v10 = 1;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = *(*(a2 + 16) + 8 * v17);
            v21 = *(v20 + 24);
            v22 = *(v21 + 23);
            if (v22 < 0)
            {
              v22 = *(v21 + 8);
            }

            *(a2 + 80) += v22;
            v18 = v18 || (*(v20 + 64) & 1) == 0;
            v23 = *(v20 + 56);
            v24 = *(v21 + 23);
            if (v24 >= 0)
            {
              v25 = v21;
            }

            else
            {
              v25 = *v21;
            }

            if (v24 >= 0)
            {
              v26 = *(v21 + 23);
            }

            else
            {
              v26 = *(v21 + 8);
            }

            v27 = gpsd::util::truncatedSha256(v25, v26);
            if (v23 != v27)
            {
              if (v17 >= *(a2 + 24))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v59);
              }

              v28 = *(*(a2 + 16) + 8 * v17);
              v29 = GpsdLogObjectGeneral;
              if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
              {
                v31 = *(v28 + 24);
                v32 = *(v31 + 23);
                if (v32 < 0)
                {
                  v32 = *(v31 + 8);
                }

                v33 = *(a2 + 24);
                v34 = *(v28 + 16);
                *v59 = 67241216;
                *v60 = v33;
                *&v60[4] = 2050;
                *&v60[6] = v34;
                *&v60[14] = 2050;
                *&v60[16] = v32;
                v61 = 1026;
                v62 = v23;
                v63 = 1026;
                v64 = v27;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NvStore,readCacheFromFile,hash does not match,items_size,%{public}d,itemId,%{public}lld,size,%{public}zu,storedHash,%{public}x,calculatedHash,%{public}x", v59, 0x28u);
              }

              *(v28 + 64) |= 2u;
              v30 = *(v28 + 24);
              if (v30 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              if (*(v30 + 23) < 0)
              {
                **v30 = 0;
                *(v30 + 8) = 0;
              }

              else
              {
                *v30 = 0;
                *(v30 + 23) = 0;
              }

              v19 = 1;
            }

            ++v17;
          }

          while (v17 < *(a2 + 24));
          v10 = v19 ^ 1;
          if (v18)
          {
            proto::gnsshal::NvStore::NvStore(v59, a2);
            if (*(a2 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(a2 + 56), *(a2 + 64));
            }

            else
            {
              __p = *(a2 + 56);
            }

            v66 = *(a2 + 80);
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(a2 + 16);
            if (*&v60[20] >= 1)
            {
              v47 = 0;
              do
              {
                v48 = *(*&v60[12] + 8 * v47);
                if (*(v48 + 64))
                {
                  v50 = *(a2 + 28);
                  v51 = *(a2 + 24);
                  if (v51 >= v50)
                  {
                    if (v50 == *(a2 + 32))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), v50 + 1);
                      v50 = *(a2 + 28);
                    }

                    *(a2 + 28) = v50 + 1;
                    wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
                  }

                  v52 = *(a2 + 16);
                  *(a2 + 24) = v51 + 1;
                  v53 = *(v52 + 8 * v51);
                  if (v48 != v53)
                  {
                    (*(*v53 + 32))(v53);
                    proto::gnsshal::NvStoreItem::MergeFrom(v53, v48);
                  }
                }

                else
                {
                  v49 = GpsdLogObjectWarning;
                  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
                  {
                    *v57 = 67240192;
                    v58 = v47;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "NvStore,readCacheFromFile,Missing item id for index,%{public}d", v57, 8u);
                  }
                }

                ++v47;
              }

              while (v47 < *&v60[20]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            proto::gnsshal::NvStore::~NvStore(v59);
          }
        }

        v54 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(a2 + 24);
          v56 = *(a2 + 80);
          *v59 = 67240448;
          *v60 = v55;
          *&v60[4] = 2050;
          *&v60[6] = v56;
          _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,numItems,%{public}d,totalSize,%{public}lld", v59, 0x12u);
        }

        goto LABEL_61;
      }

      v43 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 67240448;
        *v60 = v16;
        *&v60[4] = 1026;
        *&v60[6] = 1;
        v40 = "NvStore,readCacheFromFile,Unexpected version,%{public}d,Expected version,%{public}d";
        v41 = v43;
        v42 = 14;
LABEL_58:
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, v59, v42);
      }
    }

    else
    {
      v36 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v37 = a3;
        }

        else
        {
          v37 = *a3;
        }

        v38 = *(a2 + 40);
        v39 = *(a2 + 24);
        *v59 = 136446722;
        *v60 = v37;
        *&v60[8] = 1026;
        *&v60[10] = v38;
        *&v60[14] = 1026;
        *&v60[16] = v39;
        v40 = "NvStore,readCacheFromFile,Could not parse message from file,%{public}s,parsed_ver,%{public}d,parsed_items_size,%{public}d";
        v41 = v36;
        v42 = 24;
        goto LABEL_58;
      }
    }

    proto::gnsshal::NvStore::Clear(a2);
    goto LABEL_60;
  }

  v9 = GpsdLogObjectGeneral;
  v10 = 0;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    *buf = 136446210;
    v68 = v11;
    v12 = "NvStore,readCacheFromFile,Could not open file,%{public}s";
    v13 = buf;
    goto LABEL_11;
  }

LABEL_61:
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v10 & 1;
}

void sub_10005AA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  proto::gnsshal::NvStore::~NvStore(&a13);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::protobuf_ShutdownFile_CLPRavenGnssAssistanceFile_2eproto(CLP::LogEntry::RavenGnssAssistanceFile *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_);
  }

  if (CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8))(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_);
  }

  result = CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_;
  if (CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_)
  {
    v2 = *(*CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(CLP::LogEntry::RavenGnssAssistanceFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(void)::already_here & 1) == 0)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Protobuf/Generated/CLPRavenGnssAssistanceFile.pb.cc", a4);
    operator new();
  }
}

void *CLP::LogEntry::RavenGnssAssistanceFile::SvId::SvId(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100173978;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100173978;
  return this;
}

void *CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::GpsTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001739F0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001739F0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SatellitePolynomialClock(uint64_t this)
{
  *this = off_100173A68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100173A68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SatelliteGroupDelay(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100173AE0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100173AE0;
  return this;
}

double CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SatelliteClockData(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  *this = off_100173B58;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100173B58;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::GnssToGpsTimeOffset(uint64_t this)
{
  *this = off_100173BD0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100173BD0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SpaceWeatherStatus(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, __n128 a2)
{
  *this = off_100173C48;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

{
  *this = off_100173C48;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

double CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::IonosphereVTECModel(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this)
{
  *this = off_100173CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = off_100173CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::IonosphereCorrections(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = off_100173D38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = off_100173D38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::AssistanceFileContents(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  *this = off_100173DB0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100173DB0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(this + 1) = v5;
}

CLP::LogEntry::RavenGnssAssistanceFile *CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile *this)
{
  v1 = this;
  v2 = CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_)
  {
    this = CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this);
    v2 = CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
  if (CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_)
  {
    *(v1 + 2) = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
  }

  else
  {
    this = CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this);
    v3 = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
    *(v1 + 2) = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
    if (!v3)
    {
      this = CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this);
      v3 = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
    }
  }

  *(v1 + 3) = v3;
  v4 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    this = CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this);
    v4 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(v1 + 7) = v4;
  return this;
}

void CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_;
  }

  *(this + 5) = v6;
}

void CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::InitAsDefaultInstance(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_;
  }

  *(this + 2) = v6;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::SvId *CLP::LogEntry::RavenGnssAssistanceFile::SvId::SvId(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100173978;
  CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 5)
      {
        __assert_rtn("set_constellation", "CLPRavenGnssAssistanceFile.pb.h", 1313, "::CLP::LogEntry::RavenGnssAssistanceFile::Constellation_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_10005B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SvId::~SvId(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this)
{
  *this = off_100173978;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100173978;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100173978;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v15 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 4)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_24:
        if (v10 >= v9 || (v12 = *v10, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
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

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SvId::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  *(this + 4) = v4;
  return v4;
}

void CLP::LogEntry::RavenGnssAssistanceFile::SvId::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SvId::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, a2);
  }
}

CLP::LogEntry::RavenGnssAssistanceFile::SvId *CLP::LogEntry::RavenGnssAssistanceFile::SvId::Swap(CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::GpsTime(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001739F0;
  CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 20);
  if (v5)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 5);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = result;
    }
  }

  return result;
}

void sub_10005BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::~GpsTime(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this)
{
  *this = off_1001739F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001739F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001739F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 5) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 5) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, v7, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::Swap(CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SatellitePolynomialClock(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  *this = off_100173A68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
      }

      result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = result;
  }

  return result;
}

void sub_10005C680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::~SatellitePolynomialClock(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this)
{
  *this = off_100173A68;
  if (CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ != this)
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
  CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::~SatellitePolynomialClock(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v22;
          *(this + 8) |= 4u;
          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 37)
          {
            *(a2 + 1) = v20 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v22;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
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

    *(this + 8) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
    if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    v18 = *(a2 + 1);
    if (v18 < *(a2 + 2) && *v18 == 21)
    {
      *(a2 + 1) = v18 + 1;
LABEL_34:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v22;
      *(this + 8) |= 2u;
      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 29)
      {
        *(a2 + 1) = v19 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v6 = *(this + 1);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
      }

      v7 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(this + 8);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Swap(CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SatelliteGroupDelay(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100173AE0;
  CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 20);
  if (v5)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 2);
      if (v6 >= 7)
      {
        __assert_rtn("set_signal_type", "CLPRavenGnssAssistanceFile.pb.h", 1522, "::CLP::LogEntry::RavenGnssAssistanceFile::SignalType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 5);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = result;
    }
  }

  return result;
}

void sub_10005CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::~SatelliteGroupDelay(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this)
{
  *this = off_100173AE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100173AE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100173AE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 6)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v9;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 5) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, v7, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::Swap(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SatelliteClockData(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  *this = off_100173B58;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, a2);
  return this;
}

void sub_10005D560(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), *(a2 + 10) + *(this + 10));
  LODWORD(v5) = *(a2 + 10);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
      }

      v7 = *(*(a2 + 4) + 8 * v6);
      v8 = *(this + 11);
      v9 = *(this + 10);
      if (v9 >= v8)
      {
        if (v8 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v8 + 1);
          v8 = *(this + 11);
        }

        *(this + 11) = v8 + 1;
        operator new();
      }

      v10 = *(this + 4);
      *(this + 10) = v9 + 1;
      result = CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 10);
    }

    while (v6 < v5);
  }

  LOBYTE(v11) = *(a2 + 72);
  if (!v11)
  {
    return result;
  }

  if (*(a2 + 72))
  {
    *(this + 18) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 1);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
    }

    CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(v12, v13);
    v11 = *(a2 + 18);
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_31:
      *(this + 18) |= 4u;
      v16 = *(this + 3);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 3);
      if (!v17)
      {
        v17 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
      }

      result = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(v16, v17);
      v11 = *(a2 + 18);
      if ((v11 & 0x10) == 0)
      {
LABEL_18:
        if ((v11 & 0x20) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_16;
  }

  *(this + 18) |= 2u;
  v14 = *(this + 2);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 2);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
  }

  result = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(v14, v15);
  v11 = *(a2 + 18);
  if ((v11 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(this + 18) |= 0x10u;
  v18 = *(this + 7);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 7);
  if (!v19)
  {
    v19 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
  }

  result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v18, v19);
  if ((*(a2 + 18) & 0x20) != 0)
  {
LABEL_19:
    result = *(a2 + 16);
    *(this + 18) |= 0x20u;
    *(this + 16) = result;
  }

  return result;
}

void sub_10005D92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::~SatelliteClockData(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  *this = off_100173B58;
  v2 = (this + 32);
  CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::~SatelliteClockData(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[7];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    if (*(this + 72))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }

    *(v1 + 64) = 0;
  }

  if (*(v1 + 40) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 32) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 40));
  }

  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_68:
            v37 = *(this + 11);
            v38 = *(this + 10);
            if (v38 >= v37)
            {
              if (v37 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v37 + 1);
                v37 = *(this + 11);
              }

              *(this + 11) = v37 + 1;
              operator new();
            }

            v39 = *(this + 4);
            *(this + 10) = v38 + 1;
            v40 = *(v39 + 8 * v38);
            v59 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
              {
                return 0;
              }
            }

            else
            {
              v59 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(a2 + 14);
            v43 = *(a2 + 15);
            *(a2 + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
            if (!CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergePartialFromCodedStream(v40, a2, v45) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
            v46 = *(a2 + 14);
            v16 = __OFSUB__(v46, 1);
            v47 = v46 - 1;
            if (v47 < 0 == v16)
            {
              *(a2 + 14) = v47;
            }

            v36 = *(a2 + 1);
            if (v36 < *(a2 + 2))
            {
              v48 = *v36;
              if (v48 == 34)
              {
                goto LABEL_67;
              }

              if (v48 == 42)
              {
                *(a2 + 1) = v36 + 1;
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (v7 != 5)
            {
              if (v7 == 6 && v8 == 5)
              {
                goto LABEL_100;
              }

              goto LABEL_28;
            }

            if (v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_86:
            *(this + 18) |= 0x10u;
            v49 = *(this + 7);
            if (!v49)
            {
              operator new();
            }

            v59 = 0;
            v50 = *(a2 + 1);
            if (v50 >= *(a2 + 2) || *v50 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
              {
                return 0;
              }
            }

            else
            {
              v59 = *v50;
              *(a2 + 1) = v50 + 1;
            }

            v51 = *(a2 + 14);
            v52 = *(a2 + 15);
            *(a2 + 14) = v51 + 1;
            if (v51 >= v52)
            {
              return 0;
            }

            v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
            if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v49, a2, v54) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v53);
            v55 = *(a2 + 14);
            v16 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v56 < 0 == v16)
            {
              *(a2 + 14) = v56;
            }

            v57 = *(a2 + 1);
            if (v57 < *(a2 + 2) && *v57 == 53)
            {
              *(a2 + 1) = v57 + 1;
LABEL_100:
              v59 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v59) & 1) == 0)
              {
                return 0;
              }

              *(this + 16) = v59;
              *(this + 18) |= 0x20u;
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

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_28;
        }

        *(this + 18) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v59 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
          {
            return 0;
          }
        }

        else
        {
          v59 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
        if (!CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_40;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(this + 18) |= 2u;
      v19 = *(this + 2);
      if (!v19)
      {
        operator new();
      }

      v59 = 0;
      v20 = *(a2 + 1);
      if (v20 >= *(a2 + 2) || *v20 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
        {
          return 0;
        }
      }

      else
      {
        v59 = *v20;
        *(a2 + 1) = v20 + 1;
      }

      v21 = *(a2 + 14);
      v22 = *(a2 + 15);
      *(a2 + 14) = v21 + 1;
      if (v21 >= v22)
      {
        return 0;
      }

      v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
      if (!CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
      v25 = *(a2 + 14);
      v16 = __OFSUB__(v25, 1);
      v26 = v25 - 1;
      if (v26 < 0 == v16)
      {
        *(a2 + 14) = v26;
      }

      v27 = *(a2 + 1);
      if (v27 < *(a2 + 2) && *v27 == 26)
      {
        *(a2 + 1) = v27 + 1;
LABEL_54:
        *(this + 18) |= 4u;
        v28 = *(this + 3);
        if (!v28)
        {
          operator new();
        }

        v59 = 0;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
          {
            return 0;
          }
        }

        else
        {
          v59 = *v29;
          *(a2 + 1) = v29 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
        if (!CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
        v34 = *(a2 + 14);
        v16 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v16)
        {
          *(a2 + 14) = v35;
        }

        v36 = *(a2 + 1);
        if (v36 < *(a2 + 2) && *v36 == 34)
        {
LABEL_67:
          *(a2 + 1) = v36 + 1;
          goto LABEL_68;
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_54;
    }

LABEL_28:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

LABEL_14:
  if (*(v5 + 40) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 32) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 40));
  }

  v11 = *(v5 + 72);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 56);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 72);
  }

  if ((v11 & 0x20) != 0)
  {
    v13 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, v13, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, unsigned int a2)
{
  v3 = *(this + 72);
  if (*(this + 72))
  {
    if (v3)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        v5 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
      }

      v6 = CLP::LogEntry::RavenGnssAssistanceFile::SvId::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      else
      {
        v8 = 1;
      }

      v4 = v7 + v8 + 1;
      v3 = *(this + 18);
      if ((v3 & 2) == 0)
      {
LABEL_17:
        if ((v3 & 4) != 0)
        {
          v13 = *(this + 3);
          if (!v13)
          {
            v13 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
          }

          v14 = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(v13, a2);
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
          v3 = *(this + 18);
          if ((v3 & 0x10) == 0)
          {
            goto LABEL_32;
          }
        }

        else if ((v3 & 0x10) == 0)
        {
LABEL_32:
          if ((v3 & 0x20) != 0)
          {
            v3 = v4 + 5;
          }

          else
          {
            v3 = v4;
          }

          goto LABEL_35;
        }

        v17 = *(this + 7);
        if (!v17)
        {
          v17 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
        }

        v18 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v17, a2);
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
        v3 = *(this + 18);
        goto LABEL_32;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(v9, a2);
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
    v3 = *(this + 18);
    goto LABEL_17;
  }

LABEL_35:
  v21 = *(this + 10);
  v22 = (v21 + v3);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::ByteSize(*(*(this + 4) + 8 * v23), a2);
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      }

      else
      {
        v26 = 1;
      }

      v22 = (v25 + v22 + v26);
      ++v23;
    }

    while (v23 < *(this + 10));
  }

  *(this + 17) = v22;
  return v22;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::Swap(CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 32), (a2 + 32));
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    result = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = result;
    LODWORD(v7) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    LODWORD(v7) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::GnssToGpsTimeOffset(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  *this = off_100173BD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
      }

      result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      if (v8 >= 5)
      {
        __assert_rtn("set_constellation", "CLPRavenGnssAssistanceFile.pb.h", 1832, "::CLP::LogEntry::RavenGnssAssistanceFile::Constellation_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      result = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = result;
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      result = *(a2 + 6);
      *(this + 8) |= 8u;
      *(this + 6) = result;
    }
  }

  return result;
}

void sub_10005EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::~GnssToGpsTimeOffset(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this)
{
  *this = off_100173BD0;
  if (CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ != this)
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
  CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::~GnssToGpsTimeOffset(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 24) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_44:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v25;
          *(this + 8) |= 4u;
          v24 = *(a2 + 1);
          if (v24 < *(a2 + 2) && *v24 == 37)
          {
            *(a2 + 1) = v24 + 1;
            goto LABEL_48;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_48:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v25;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_34;
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

    *(this + 8) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v25 = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v12;
      *(a2 + 1) = v12 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v25);
    if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v11, a2, v16) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
    }

    v20 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v20 < v9 && *v20 == 16)
    {
      v10 = v20 + 1;
      *(a2 + 1) = v10;
LABEL_34:
      v25 = 0;
      if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v21 = v25;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v21 <= 4)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v21;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 29)
      {
        *(a2 + 1) = v23 + 1;
        goto LABEL_44;
      }
    }
  }
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    result = 0;
    goto LABEL_23;
  }

  if (*(this + 32))
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v10 = *(this + 4);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
LABEL_18:
  v12 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    result = v12 + 5;
  }

  else
  {
    result = v12;
  }

LABEL_23:
  *(this + 7) = result;
  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::Swap(CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

double CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SharedCtor(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, __n128 a2)
{
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SpaceWeatherStatus(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2, __n128 a3)
{
  *this = off_100173C48;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a3.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a3;
  CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 48))
  {
    *(this + 12) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
    v5 = *(a2 + 12);
  }

  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 4);
    if ((v8 + 1) >= 7)
    {
      __assert_rtn("set_solar_radiation_storm_scale", "CLPRavenGnssAssistanceFile.pb.h", 1945, "::CLP::LogEntry::RavenGnssAssistanceFile::StormScale_IsValid(value)");
    }

    *(this + 12) |= 2u;
    *(this + 4) = v8;
    v5 = *(a2 + 12);
  }

  if ((v5 & 4) != 0)
  {
    result = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_15:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_15;
  }

  result = *(a2 + 6);
  *(this + 12) |= 8u;
  *(this + 6) = result;
  v5 = *(a2 + 12);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v10 = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = v10;
    v5 = *(a2 + 12);
    if ((v5 & 0x40) == 0)
    {
LABEL_18:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(a2 + 7);
  if ((v9 + 1) >= 7)
  {
    __assert_rtn("set_geomagnetic_storm_scale", "CLPRavenGnssAssistanceFile.pb.h", 2012, "::CLP::LogEntry::RavenGnssAssistanceFile::StormScale_IsValid(value)");
  }

  *(this + 12) |= 0x10u;
  *(this + 7) = v9;
  v5 = *(a2 + 12);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  result = *(a2 + 9);
  *(this + 12) |= 0x40u;
  *(this + 9) = result;
  if ((*(a2 + 12) & 0x80) != 0)
  {
LABEL_19:
    result = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = result;
  }

  return result;
}

void sub_10005F508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::~SpaceWeatherStatus(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this)
{
  *this = off_100173C48;
  if (CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ != this)
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
  CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::~SpaceWeatherStatus(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = -1;
    *(this + 20) = 0;
    *(this + 28) = 0xFFFFFFFFLL;
    *(this + 36) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_66;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_76;
          }

          goto LABEL_36;
        }

        if (v7 == 7)
        {
          if (v8 != 5)
          {
            goto LABEL_36;
          }

LABEL_84:
          v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v35) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = v35;
          *(this + 12) |= 0x40u;
          v34 = *(a2 + 1);
          if (v34 < *(a2 + 2) && *v34 == 69)
          {
            *(a2 + 1) = v34 + 1;
            goto LABEL_88;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 5)
          {
            goto LABEL_36;
          }

LABEL_88:
          v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v35) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v35;
          *(this + 12) |= 0x80u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_58;
          }
        }

        else if (v7 == 4 && v8 == 5)
        {
          goto LABEL_62;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_48;
      }

LABEL_36:
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
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v35 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v17 = *(a2 + 14);
    v18 = *(a2 + 15);
    *(a2 + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v35);
    if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v13, a2, v20) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
    v21 = *(a2 + 14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v23 < 0 == v22)
    {
      *(a2 + 14) = v23;
    }

    v24 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v24 < v9 && *v24 == 16)
    {
      v10 = v24 + 1;
      *(a2 + 1) = v10;
LABEL_48:
      v35 = 0;
      if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
        if (!result)
        {
          return result;
        }

        v25 = v35;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v25 + 1 <= 6)
      {
        *(this + 12) |= 2u;
        *(this + 4) = v25;
      }

      v27 = *(a2 + 1);
      if (v27 < *(a2 + 2) && *v27 == 29)
      {
        *(a2 + 1) = v27 + 1;
LABEL_58:
        v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v35;
        *(this + 12) |= 4u;
        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 37)
        {
          *(a2 + 1) = v28 + 1;
LABEL_62:
          v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v35) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v35;
          *(this + 12) |= 8u;
          v29 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v29 < v15 && *v29 == 40)
          {
            v16 = v29 + 1;
            *(a2 + 1) = v16;
LABEL_66:
            v35 = 0;
            if (v16 >= v15 || (v30 = *v16, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
              if (!result)
              {
                return result;
              }

              v30 = v35;
            }

            else
            {
              *(a2 + 1) = v16 + 1;
            }

            if (v30 + 1 <= 6)
            {
              *(this + 12) |= 0x10u;
              *(this + 7) = v30;
            }

            v31 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v31 < v11 && *v31 == 48)
            {
              v12 = v31 + 1;
              *(a2 + 1) = v12;
LABEL_76:
              if (v12 >= v11 || (v32 = *v12, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v32;
                v33 = v12 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 12) |= 0x20u;
              if (v33 < v11 && *v33 == 61)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_84;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v8, a3);
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    result = 0;
    goto LABEL_40;
  }

  if (*(this + 48))
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(this + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(this + 48) & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 4);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v12 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v13 = v12 + 5;
  }

  else
  {
    v13 = v12;
  }

  if ((v3 & 0x10) != 0)
  {
    v14 = *(this + 7);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v15 = 2;
    }

    v13 += v15;
  }

  if ((v3 & 0x20) != 0)
  {
    v16 = *(this + 8);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v17 = 2;
    }

    v13 += v17;
  }

  v18 = v13 + 5;
  if ((v3 & 0x40) == 0)
  {
    v18 = v13;
  }

  if ((v3 & 0x80) != 0)
  {
    result = v18 + 5;
  }

  else
  {
    result = v18;
  }

LABEL_40:
  *(this + 11) = result;
  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Swap(CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::SharedCtor(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::IonosphereVTECModel(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  *this = off_100173CC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, a2);
  return this;
}

void sub_1000600BC(_Unwind_Exception *a1)
{
  if (*(v1 + 5))
  {
    operator delete[]();
  }

  if (*(v1 + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v6) = *(a2 + 64);
  if (!v6)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v7 = *(a2 + 2);
    if (v7 >= 3)
    {
      __assert_rtn("set_layer_number", "CLPRavenGnssAssistanceFile.pb.h", 2105, "::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereLayer_IsValid(value)");
    }

    *(this + 16) |= 1u;
    *(this + 2) = v7;
    v6 = *(a2 + 16);
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    v10 = *(a2 + 4);
    *(this + 16) |= 4u;
    *(this + 4) = v10;
    v6 = *(a2 + 16);
    if ((v6 & 8) == 0)
    {
LABEL_14:
      if ((v6 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v9 = *(a2 + 3);
  *(this + 16) |= 2u;
  *(this + 3) = v9;
  v6 = *(a2 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v6 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_19:
  v11 = *(a2 + 5);
  *(this + 16) |= 8u;
  *(this + 5) = v11;
  if ((*(a2 + 16) & 0x40) != 0)
  {
LABEL_15:
    v8 = *(a2 + 14);
    *(this + 16) |= 0x40u;
    *(this + 14) = v8;
  }
}

void sub_1000602C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::~IonosphereVTECModel(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this)
{
  *this = off_100173CC0;
  if (*(this + 5))
  {
    operator delete[]();
  }

  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::~IonosphereVTECModel(this);

  operator delete();
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::Clear(uint64_t this)
{
  if (*(this + 64))
  {
    *(this + 56) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v45[0] = 0;
            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v45);
              if (!result)
              {
                return result;
              }

              v12 = v45[0];
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (v12 <= 2)
            {
              *(this + 16) |= 1u;
              *(this + 2) = v12;
            }

            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v16 < v9 && *v16 == 16)
            {
              v14 = v16 + 1;
              *(a2 + 1) = v14;
              goto LABEL_47;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_32;
              }

              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_55;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_47:
            if (v14 >= v9 || (v17 = *v14, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v17;
              v18 = v14 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 16) |= 2u;
            if (v18 < v9 && *v18 == 24)
            {
              v10 = v18 + 1;
              *(a2 + 1) = v10;
LABEL_55:
              if (v10 >= v9 || (v19 = *v10, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v19;
                v20 = v10 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 16) |= 4u;
              if (v20 < v9 && *v20 == 32)
              {
                v13 = v20 + 1;
                *(a2 + 1) = v13;
                goto LABEL_63;
              }
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_63:
          if (v13 >= v9 || (v21 = *v13, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v13 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 16) |= 8u;
          if (v22 < v9 && *v22 == 45)
          {
LABEL_70:
            *(a2 + 1) = v22 + 1;
LABEL_71:
            v45[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v45) & 1) == 0)
            {
              return 0;
            }

            v23 = v45[0];
            v24 = *(this + 8);
            if (v24 == *(this + 9))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, v24 + 1);
              v24 = *(this + 8);
            }

            v25 = *(this + 3);
            v26 = v24 + 1;
            *(this + 8) = v24 + 1;
            *(v25 + 4 * v24) = v23;
            v27 = *(a2 + 1);
            v28 = *(a2 + 4) - v27;
            if (v28 >= 1)
            {
              v29 = v28 / 5u;
              v30 = v29 >= *(this + 9) - v26 ? *(this + 9) - v26 : v29;
              if (v30 >= 1)
              {
                v31 = 0;
                while (*v27 == 45)
                {
                  v32 = *(v27 + 1);
                  if (v26 >= *(this + 9))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                    v26 = *(this + 8);
                    v25 = *(this + 3);
                  }

                  *(this + 8) = v26 + 1;
                  *(v25 + 4 * v26) = v32;
                  ++v31;
                  v27 += 5;
                  ++v26;
                  if (v30 == v31)
                  {
                    v31 = v30;
                    goto LABEL_86;
                  }
                }

                if (!v31)
                {
                  goto LABEL_87;
                }

LABEL_86:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2, 5 * v31);
              }
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_32;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 24);
            if (!result)
            {
              return result;
            }

LABEL_87:
            v22 = *(a2 + 1);
            if (v22 < *(a2 + 2))
            {
              v33 = *v22;
              if (v33 == 45)
              {
                goto LABEL_70;
              }

              if (v33 == 53)
              {
                goto LABEL_90;
              }
            }
          }

          else
          {
            if (v8 == 5)
            {
              goto LABEL_71;
            }

LABEL_32:
            if (v8 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      if (v7 != 6)
      {
        break;
      }

      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_107;
      }

      if (v8 != 5)
      {
        goto LABEL_32;
      }

      while (2)
      {
        v45[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v45) & 1) == 0)
        {
          return 0;
        }

        v34 = v45[0];
        v35 = *(this + 12);
        if (v35 == *(this + 13))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 5, v35 + 1);
          v35 = *(this + 12);
        }

        v36 = *(this + 5);
        v37 = v35 + 1;
        *(this + 12) = v35 + 1;
        *(v36 + 4 * v35) = v34;
        v38 = *(a2 + 1);
        v39 = *(a2 + 4) - v38;
        if (v39 >= 1)
        {
          v40 = v39 / 5u;
          v41 = v40 >= *(this + 13) - v37 ? *(this + 13) - v37 : v40;
          if (v41 >= 1)
          {
            v42 = 0;
            while (*v38 == 53)
            {
              v43 = *(v38 + 1);
              if (v37 >= *(this + 13))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                v37 = *(this + 12);
                v36 = *(this + 5);
              }

              *(this + 12) = v37 + 1;
              *(v36 + 4 * v37) = v43;
              ++v42;
              v38 += 5;
              ++v37;
              if (v41 == v42)
              {
                v42 = v41;
                goto LABEL_106;
              }
            }

            if (!v42)
            {
              goto LABEL_107;
            }

LABEL_106:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2, 5 * v42);
          }
        }

LABEL_107:
        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2))
        {
          v44 = *v22;
          if (v44 == 53)
          {
LABEL_90:
            *(a2 + 1) = v22 + 1;
            continue;
          }

          if (v44 == 61)
          {
            *(a2 + 1) = v22 + 1;
            goto LABEL_111;
          }
        }

        break;
      }
    }

    if (v7 != 7 || v8 != 5)
    {
      goto LABEL_32;
    }

LABEL_111:
    v45[0] = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v45) & 1) == 0)
    {
      return 0;
    }

    *(this + 14) = v45[0];
    *(this + 16) |= 0x40u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

void sub_100060A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }

    v5 = v11;
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_11:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
    return 1;
  }

  else
  {
    while (1)
    {
      v12 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12);
      if (!result)
      {
        break;
      }

      v8 = v12;
      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v10 + 4 * v9) = v8;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), v4, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), v4, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), v4, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, v4, *(*(v5 + 24) + 4 * v7++), a3);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, v4, *(*(v5 + 40) + 4 * v8++), a3);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 64) & 0x40) != 0)
  {
    v9 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, v4, v9, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, unsigned int a2)
{
  v3 = *(this + 64);
  if (*(this + 64))
  {
    if (v3)
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(this + 16);
        if ((v3 & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
LABEL_16:
    if ((v3 & 4) != 0)
    {
      v8 = *(this + 4);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(this + 16);
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
      if ((v3 & 8) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v3 & 8) == 0)
    {
LABEL_27:
      if ((v3 & 0x40) != 0)
      {
        v3 = v4 + 5;
      }

      else
      {
        v3 = v4;
      }

      goto LABEL_30;
    }

    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
    goto LABEL_27;
  }

LABEL_30:
  result = (5 * (*(this + 12) + *(this + 8)) + v3);
  *(this + 15) = result;
  return result;
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, a2);
  }
}

float CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::Swap(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v7 = *(a2 + 4);
    *(a2 + 3) = v6;
    v8 = *(this + 4);
    *(this + 4) = v7;
    *(a2 + 4) = v8;
    v9 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v10 = *(a2 + 6);
    *(a2 + 5) = v9;
    v11 = *(this + 6);
    *(this + 6) = v10;
    *(a2 + 6) = v11;
    result = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = result;
    LODWORD(v9) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v9;
    LODWORD(v9) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
  }

  return result;
}

void *CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedCtor(void *this)
{
  this[1] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::IonosphereCorrections(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = off_100173D38;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, a2);
  return this;
}

void sub_100061004(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), *(a2 + 6) + *(this + 6));
  LODWORD(v5) = *(a2 + 6);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v8 + 1);
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        operator new();
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 6);
    }

    while (v6 < v5);
  }

  LOBYTE(v11) = *(a2 + 52);
  if (v11)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v12 = *(this + 1);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 1);
      if (!v13)
      {
        v13 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
      }

      result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v12, v13);
      v11 = *(a2 + 13);
    }

    if ((v11 & 4) != 0)
    {
      *(this + 13) |= 4u;
      v14 = *(this + 5);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 5);
      if (!v15)
      {
        v15 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
      }

      return CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(v14, v15);
    }
  }

  return result;
}

void sub_1000612E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::~IonosphereCorrections(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this)
{
  *this = off_100173D38;
  v2 = (this + 16);
  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::~IonosphereCorrections(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[5];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Clear(this);
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 16) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_18;
        }

LABEL_30:
        v19 = *(this + 7);
        v20 = *(this + 6);
        if (v20 >= v19)
        {
          if (v19 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v19 + 1);
            v19 = *(this + 7);
          }

          *(this + 7) = v19 + 1;
          operator new();
        }

        v21 = *(this + 2);
        *(this + 6) = v20 + 1;
        v22 = *(v21 + 8 * v20);
        v41 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
          {
            return 0;
          }
        }

        else
        {
          v41 = *v23;
          *(a2 + 1) = v23 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v41);
        if (!CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
        v28 = *(a2 + 14);
        v16 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v16)
        {
          *(a2 + 14) = v29;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2))
        {
          v30 = *v18;
          if (v30 == 18)
          {
            goto LABEL_53;
          }

          if (v30 == 26)
          {
            *(a2 + 1) = v18 + 1;
LABEL_48:
            *(this + 13) |= 4u;
            v31 = *(this + 5);
            if (!v31)
            {
              operator new();
            }

            v42 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v33 = *(a2 + 14);
            v34 = *(a2 + 15);
            *(a2 + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v42);
            if (!CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
            v37 = *(a2 + 14);
            v16 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v16)
            {
              *(a2 + 14) = v38;
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

      else
      {
        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_18;
        }

        *(this + 13) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v40 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v40);
        if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 18)
        {
LABEL_53:
          *(a2 + 1) = v18 + 1;
          goto LABEL_30;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if ((*(v5 + 52) & 4) != 0)
  {
    v8 = *(v5 + 40);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, unsigned int a2)
{
  if (!*(this + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
  }

  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(this + 13) & 4) != 0)
  {
LABEL_12:
    v8 = *(this + 5);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
    }

    v9 = CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(this + 6);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::ByteSize(*(*(this + 2) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(this + 6));
  }

  *(this + 12) = v13;
  return v13;
}

float CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Swap(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 16), (a2 + 16));
    v5 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

void *CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::AssistanceFileContents(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  *this = off_100173DB0;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, a2);
  return this;
}

void sub_100061E6C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), *(a2 + 8) + *(this + 8));
  LODWORD(v4) = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  LODWORD(v11) = *(a2 + 14);
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if (v12 >= v11)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v13 = *(*(a2 + 6) + 8 * v12);
      v14 = *(this + 15);
      v15 = *(this + 14);
      if (v15 >= v14)
      {
        if (v14 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v14 + 1);
          v14 = *(this + 15);
        }

        *(this + 15) = v14 + 1;
        operator new();
      }

      v16 = *(this + 6);
      *(this + 14) = v15 + 1;
      result = CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(*(v16 + 8 * v15), v13);
      ++v12;
      v11 = *(a2 + 14);
    }

    while (v12 < v11);
  }

  LOBYTE(v17) = *(a2 + 76);
  if (v17)
  {
    if (*(a2 + 76))
    {
      *(this + 19) |= 1u;
      v18 = *(this + 1);
      if (!v18)
      {
        operator new();
      }

      v19 = *(a2 + 1);
      if (!v19)
      {
        v19 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
      }

      result = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v18, v19);
      v17 = *(a2 + 19);
    }

    if ((v17 & 2) != 0)
    {
      *(this + 19) |= 2u;
      v20 = *(this + 2);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 2);
      if (!v21)
      {
        v21 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
      }

      return CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(v20, v21);
    }
  }

  return result;
}

void sub_100062274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  *this = off_100173DB0;
  v2 = (this + 48);
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(this);

  operator delete();
}

void *CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedDtor(void *this)
{
  if (CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[2];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_;
  if (!CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_)
  {
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 76);
  if (v2)
  {
    if (*(this + 76))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 76);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Clear(this);
      }
    }
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 48) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 56));
  }

  *(v1 + 56) = 0;
  *(v1 + 76) = 0;
  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergePartialFromCodedStream(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_22;
        }

        while (2)
        {
          v40 = *(this + 15);
          v41 = *(this + 14);
          if (v41 >= v40)
          {
            if (v40 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v40 + 1);
              v40 = *(this + 15);
            }

            *(this + 15) = v40 + 1;
            operator new();
          }

          v42 = *(this + 6);
          *(this + 14) = v41 + 1;
          v43 = *(v42 + 8 * v41);
          v53 = 0;
          v44 = *(a2 + 1);
          if (v44 >= *(a2 + 2) || *v44 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
            {
              return 0;
            }
          }

          else
          {
            v53 = *v44;
            *(a2 + 1) = v44 + 1;
          }

          v45 = *(a2 + 14);
          v46 = *(a2 + 15);
          *(a2 + 14) = v45 + 1;
          if (v45 >= v46)
          {
            return 0;
          }

          v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
          if (!CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergePartialFromCodedStream(v43, a2, v48) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v47);
          v49 = *(a2 + 14);
          v16 = __OFSUB__(v49, 1);
          v50 = v49 - 1;
          if (v50 < 0 == v16)
          {
            *(a2 + 14) = v50;
          }

          v27 = *(a2 + 1);
          v51 = *(a2 + 2);
          if (v27 < v51 && *v27 == 34)
          {
LABEL_65:
            *(a2 + 1) = v27 + 1;
            continue;
          }

          break;
        }

        if (v27 == v51 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(this + 19) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v53 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
        {
          return 0;
        }
      }

      else
      {
        v53 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
      if (!CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_34:
        *(this + 19) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v53 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
          {
            return 0;
          }
        }

        else
        {
          v53 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
        if (!CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v25 = *(a2 + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(a2 + 14) = v26;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2) && *v27 == 26)
        {
          while (1)
          {
            *(a2 + 1) = v27 + 1;
LABEL_48:
            v28 = *(this + 9);
            v29 = *(this + 8);
            if (v29 >= v28)
            {
              if (v28 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v28 + 1);
                v28 = *(this + 9);
              }

              *(this + 9) = v28 + 1;
              operator new();
            }

            v30 = *(this + 3);
            *(this + 8) = v29 + 1;
            v31 = *(v30 + 8 * v29);
            v53 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
              {
                return 0;
              }
            }

            else
            {
              v53 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v33 = *(a2 + 14);
            v34 = *(a2 + 15);
            *(a2 + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
            if (!CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
            v37 = *(a2 + 14);
            v16 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v16)
            {
              *(a2 + 14) = v38;
            }

            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2))
            {
              break;
            }

            v39 = *v27;
            if (v39 != 26)
            {
              if (v39 == 34)
              {
                goto LABEL_65;
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_34;
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
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 76);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  return this;
}

uint64_t CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::ByteSize(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, unsigned int a2)
{
  if (!*(this + 76))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 76) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
  }

  v5 = CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(this + 19) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
    }

    v9 = CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(this + 8);
  v13 = v12 + v3;
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::ByteSize(*(*(this + 3) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 += v16 + v17;
      ++v14;
    }

    while (v14 < *(this + 8));
  }

  v18 = *(this + 14);
  v19 = (v18 + v13);
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::ByteSize(*(*(this + 6) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      }

      else
      {
        v23 = 1;
      }

      v19 = (v22 + v19 + v23);
      ++v20;
    }

    while (v20 < *(this + 14));
  }

  *(this + 18) = v19;
  return v19;
}

float CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::CheckTypeAndMergeFrom(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::CopyFrom(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::Swap(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 24), (a2 + 24));
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((v3 + 48), (a2 + 48));
    v6 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    v7 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

BOOL ProtobufUtil::convert::cpbInjectAssistancePosition(ProtobufUtil::convert *this, uint64_t a2, proto::gnss::Position *a3)
{
  *(a2 + 36) |= 1u;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  result = ProtobufUtil::convert::cpbPosition(this, v5, a3);
  v7 = *(this + 22);
  if (v7 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == 2)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 36);
  *(a2 + 16) = v9;
  *(a2 + 20) = *(this + 92);
  v11 = *(this + 12);
  *(a2 + 36) = v10 | 0xE;
  *(a2 + 24) = v11;
  return result;
}

uint64_t ProtobufUtil::convert::cpbInjectAssistanceTime(uint64_t result, void *a2)
{
  v2 = *(result + 36);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      a2[2] = *(result + 24);
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 16);
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbInjectAssistanceTime(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  result = *a1;
  *(a2 + 8) = *a1;
  v4 = a1[1].n128_u64[0];
  *(a2 + 36) = v2 | 7;
  *(a2 + 24) = v4;
  return result;
}

void ProtobufUtil::convert::cpbSetAssistancePressure(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = &v6[-*a2] >> 4;
  if (v4 <= v7)
  {
    if (v4 >= v7)
    {
      goto LABEL_15;
    }

    v6 = &v5[16 * v4];
  }

  else
  {
    v8 = v4 - v7;
    v9 = a2[2];
    if (v8 > (v9 - v6) >> 4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        v10 = v9 - v5;
        if (v10 >> 3 > v4)
        {
          v4 = v10 >> 3;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v4;
        }

        if (!(v11 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(v6, 16 * v8);
    v6 += 16 * v8;
  }

  a2[1] = v6;
LABEL_15:
  v12 = *a2;
  if (v6 != *a2)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
        v12 = *a2;
      }

      v15 = *(*(a1 + 8) + 8 * v14);
      v16 = *(v15 + 24);
      if (v16)
      {
        *&v12[v13] = *(v15 + 8);
      }

      if ((v16 & 2) != 0)
      {
        *&v12[v13 + 8] = *(v15 + 16);
      }

      ++v14;
      v13 += 16;
    }

    while (v14 < (a2[1] - v12) >> 4);
  }
}

void sub_1000633A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float ProtobufUtil::convert::cpbSetAssistancePressure(uint64_t *a1, int *a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), (a1[1] - *a1) >> 4);
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a2[5];
      v10 = a2[4];
      if (v10 >= v9)
      {
        if (v9 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v9 + 1);
          v9 = a2[5];
        }

        a2[5] = v9 + 1;
        operator new();
      }

      v11 = *(a2 + 1);
      a2[4] = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 24);
      *(v12 + 8) = *(v6 + v7);
      result = *(v6 + v7 + 8);
      *(v12 + 24) = v13 | 3;
      *(v12 + 16) = result;
      ++v8;
      v7 += 16;
    }

    while (v8 < (v5 - v6) >> 4);
  }

  return result;
}

void ProtobufUtil::convert::cpbSetAssistanceAccel(uint64_t a1, uint64_t *a2)
{
  std::vector<cproto::gnss::SensorSample3Axis>::resize(a2, *(a1 + 16));
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
        v4 = *a2;
      }

      ProtobufUtil::convert::cpbSensorSample3Axis(*(*(a1 + 8) + 8 * v6++), v4 + v5);
      v4 = *a2;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v6);
  }
}

void sub_1000635E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<cproto::gnss::SensorSample3Axis>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cproto::gnss::SensorSample3Axis>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

float ProtobufUtil::convert::cpbSetAssistanceAccel(uint64_t *a1, int *a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), -1431655765 * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a2[5];
      v10 = a2[4];
      if (v10 >= v9)
      {
        if (v9 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v9 + 1);
          v9 = a2[5];
        }

        a2[5] = v9 + 1;
        operator new();
      }

      v11 = *(a2 + 1);
      a2[4] = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 32);
      *(v12 + 8) = *(v6 + v7);
      *(v12 + 16) = *(v6 + v7 + 8);
      result = *(v6 + v7 + 16);
      *(v12 + 32) = v13 | 0xF;
      *(v12 + 24) = result;
      ++v8;
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) > v8);
  }

  return result;
}

void ProtobufUtil::convert::cpbSetAssistanceGyro(uint64_t a1, uint64_t *a2)
{
  std::vector<cproto::gnss::SensorSample3Axis>::resize(a2, *(a1 + 16));
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
        v4 = *a2;
      }

      ProtobufUtil::convert::cpbSensorSample3Axis(*(*(a1 + 8) + 8 * v6++), v4 + v5);
      v4 = *a2;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v6);
  }
}

void sub_100063888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float ProtobufUtil::convert::cpbSetAssistanceGyro(uint64_t *a1, int *a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), -1431655765 * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a2[5];
      v10 = a2[4];
      if (v10 >= v9)
      {
        if (v9 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v9 + 1);
          v9 = a2[5];
        }

        a2[5] = v9 + 1;
        operator new();
      }

      v11 = *(a2 + 1);
      a2[4] = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 32);
      *(v12 + 8) = *(v6 + v7);
      *(v12 + 16) = *(v6 + v7 + 8);
      result = *(v6 + v7 + 16);
      *(v12 + 32) = v13 | 0xF;
      *(v12 + 24) = result;
      ++v8;
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) > v8);
  }

  return result;
}

double ProtobufUtil::convert::cpbSetAssistanceDem(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      *(a2 + 16) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbSetAssistanceDem(uint64_t a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[1];
  a2->n128_u64[1] = *a1;
  a2[2].n128_u32[1] = v2 | 7;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetAssistanceMapVector(uint64_t result, uint64_t a2)
{
  v2 = *(result + 76);
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

      goto LABEL_17;
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

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 24) = *(result + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 32) = *(result + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 40) = *(result + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 48) = *(result + 48);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 56) = *(result + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 64) = *(result + 65);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 65) = *(result + 66);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 66) = *(result + 67);
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_27:
    *(a2 + 68) = *(result + 69);
    return result;
  }

LABEL_26:
  *(a2 + 67) = *(result + 68);
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_27;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbSetAssistanceMapVector(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 76);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 64) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 65) = *(a1 + 64);
  v4 = *(a1 + 68);
  *(a2 + 76) = v2 | 0x1FFF;
  *(a2 + 69) = v4;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetAssistanceMotionActivityContext(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    *a2 = *(result + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = ProtobufUtil::convert::cpbMotionActivityContext(*(result + 16));
  *(a2 + 8) = result;
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_22:
  v9 = *(v3 + 20);
  if ((v9 - 1) >= 3)
  {
    v9 = 0;
  }

  *(a2 + 12) = v9;
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v5 = *(v3 + 24);
    if (v5 == 75)
    {
      v6 = 75;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 50)
    {
      v6 = 50;
    }

    if (v5 == 25)
    {
      v7 = 25;
    }

    else
    {
      v7 = 0;
    }

    if (v5 == 10)
    {
      v7 = 10;
    }

    if (v5 <= 49)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *(a2 + 16) = v8;
  }

  return result;
}

BOOL ProtobufUtil::convert::cpbSetAssistanceMotionActivityContext(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  *(a2 + 32) = v5 | 1;
  *(a2 + 8) = v4;
  v6 = ProtobufUtil::convert::cpbMotionActivityContext(*(a1 + 2));
  if (v6 >= 0xA)
  {
    __assert_rtn("set_context", "GpsdProtocol.pb.h", 10092, "::proto::gnss::MotionActivityContext_IsValid(value)");
  }

  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  *(a2 + 32) = v5 | 7;
  if ((v7 - 1) >= 3)
  {
    v7 = 0;
  }

  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  if (v8 == 75)
  {
    v9 = 75;
  }

  else
  {
    v9 = 1;
  }

  if (v8 == 50)
  {
    v9 = 50;
  }

  if (v8 == 25)
  {
    v10 = 25;
  }

  else
  {
    v10 = 1;
  }

  if (v8 == 10)
  {
    v10 = 10;
  }

  if (v8 <= 49)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  result = proto::gnss::Reliability_IsValid(v11);
  if (!result)
  {
    __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10138, "::proto::gnss::Reliability_IsValid(value)");
  }

  *(a2 + 32) = v5 | 0xF;
  *(a2 + 24) = v11;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetAssistanceMountState(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    return result;
  }

  v3 = *(result + 16);
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  *(a2 + 8) = v4;
  return result;
}

{
  v2 = *(a2 + 24);
  *(a2 + 8) = *result;
  v3 = *(result + 8);
  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v3 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 24) = v2 | 3;
  *(a2 + 16) = v5;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetAssistanceSignalEnvironment(uint64_t result, _DWORD *a2)
{
  if (*(result + 16))
  {
    result = ProtobufUtil::convert::cpbSignalEnvironmentType(*(result + 8));
    *a2 = result;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbSetAssistanceSignalEnvironment(unsigned int *a1, uint64_t a2)
{
  result = ProtobufUtil::convert::cpbSignalEnvironmentType(*a1);
  if (result >= 7 && result != 15)
  {
    __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
  }

  *(a2 + 16) |= 1u;
  *(a2 + 8) = result;
  return result;
}

double ProtobufUtil::convert::cpbSetAssistanceSpeedConstraint(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a1 + 32);
    *(a2 + 24) = result;
    return result;
  }

LABEL_8:
  result = *(a1 + 24);
  *(a2 + 16) = result;
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = *(a2 + 44);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 44) = v2 | 0xF;
  *(a2 + 32) = result;
  return result;
}

double ProtobufUtil::convert::cpbSetAssistanceAlongTrackVelocity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      *(a2 + 16) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbSetAssistanceAlongTrackVelocity(uint64_t a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[1];
  a2->n128_u64[1] = *a1;
  a2[2].n128_u32[1] = v2 | 7;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbCompressionType(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

std::string *ProtobufUtil::convert::cpbInjectAssistanceFile(std::string *result, std::string *this)
{
  v3 = result;
  v4 = HIDWORD(result[1].__r_.__value_.__r.__words[0]);
  if (v4)
  {
    result = std::string::operator=(this, result->__r_.__value_.__l.__size_);
    v4 = HIDWORD(v3[1].__r_.__value_.__r.__words[0]);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = v3->__r_.__value_.__r.__words[2];
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v8;
  if ((v4 & 4) != 0)
  {
LABEL_4:
    v5 = HIDWORD(v3->__r_.__value_.__r.__words[2]);
    if (v5 >= 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x3040002010000uLL >> (8 * v5);
    }

    this[1].__r_.__value_.__s.__data_[4] = v6;
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbInjectAssistanceFile(std::string *__str, uint64_t a2)
{
  *(a2 + 28) |= 1u;
  v4 = *(a2 + 8);
  if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  result = std::string::operator=(v4, __str);
  data = __str[1].__r_.__value_.__l.__data_;
  v7 = data == 1;
  if (data == 2)
  {
    v7 = 2;
  }

  v8 = *(a2 + 28);
  *(a2 + 16) = v7;
  if ((__str[1].__r_.__value_.__s.__data_[4] - 1) > 3u)
  {
    v9 = 1;
  }

  else
  {
    v9 = dword_100145AC0[(__str[1].__r_.__value_.__s.__data_[4] - 1)];
  }

  *(a2 + 28) = v8 | 6;
  *(a2 + 20) = v9;
  return result;
}

std::string *ProtobufUtil::convert::cpbInjectRtiFile(std::string *result, std::string *this)
{
  if (result->__r_.__value_.__s.__data_[20])
  {
    return std::string::operator=(this, result->__r_.__value_.__l.__size_);
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbInjectRtiFile(std::string *__str, uint64_t a2)
{
  *(a2 + 20) |= 1u;
  v3 = *(a2 + 8);
  if (v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

void ProtobufUtil::convert::cpbInjectSvidBlocklist(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a2) >> 2);
  v8 = v4 - v7;
  if (v4 <= v7)
  {
    if (v4 >= v7)
    {
      goto LABEL_14;
    }

    v6 = v5 + 20 * v4;
  }

  else
  {
    v9 = a2[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v6) >> 2) < v8)
    {
      if ((v4 & 0x80000000) == 0)
      {
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v5) >> 2);
        if (2 * v10 > v4)
        {
          v4 = 2 * v10;
        }

        if (v10 >= 0x666666666666666)
        {
          v4 = 0xCCCCCCCCCCCCCCCLL;
        }

        if (v4 <= 0xCCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(a2[1], 20 * ((20 * v8 - 20) / 0x14) + 20);
    v6 += 20 * ((20 * v8 - 20) / 0x14) + 20;
  }

  a2[1] = v6;
LABEL_14:
  v11 = *a2;
  if (v6 != *a2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v13 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
        v11 = *a2;
      }

      ProtobufUtil::convert::cpbSvId(*(*(a1 + 8) + 8 * v13++), (v11 + v12));
      v11 = *a2;
      v12 += 20;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2) > v13);
  }
}

void sub_100064338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

__n128 ProtobufUtil::convert::cpbInjectSvidBlocklist(uint64_t *a1, int *a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), -858993459 * ((a1[1] - *a1) >> 2));
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a2[5];
      v10 = a2[4];
      if (v10 >= v9)
      {
        if (v9 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v9 + 1);
          v9 = a2[5];
        }

        a2[5] = v9 + 1;
        operator new();
      }

      v11 = *(a2 + 1);
      a2[4] = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 32);
      result.n128_u32[0] = *(v6 + v7);
      *(v12 + 32) = v13 | 1;
      result.n128_u32[1] = *(v6 + v7 + 4);
      *(v12 + 32) = v13 | 3;
      result.n128_u32[2] = *(v6 + v7 + 8);
      *(v12 + 32) = v13 | 7;
      result.n128_u32[3] = *(v6 + v7 + 12);
      *(v12 + 32) = v13 | 0xF;
      *(v12 + 8) = result;
      v14 = *(v6 + v7 + 16);
      *(v12 + 32) = v13 | 0x1F;
      *(v12 + 24) = v14;
      ++v8;
      v7 += 20;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2) > v8);
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbDeleteGnssData(uint64_t result, void *a2)
{
  if (*(result + 20))
  {
    *a2 = *(result + 8);
  }

  return result;
}

uint64_t *ProtobufUtil::convert::cpbDeleteGnssData(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 20) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetPvtmReport(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 20);
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

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  a2[2] = *(result + 10);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  a2[3] = *(result + 11);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_13:
    a2[5] = *(result + 13);
    return result;
  }

LABEL_12:
  a2[4] = *(result + 12);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbSetPvtmReport(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 20);
  *(a2 + 8) = *result;
  *(a2 + 12) = *(result + 4);
  *(a2 + 20) = v2 | 0x3F;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetNmeaHandler(uint64_t result, void *a2)
{
  if (*(result + 20))
  {
    *a2 = *(result + 8);
  }

  return result;
}

uint64_t *ProtobufUtil::convert::cpbSetNmeaHandler(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 20) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetConfigSimulatorMode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 4) = *(result + 12);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

char *ProtobufUtil::convert::cpbSetConfigSimulatorMode(char *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 20);
  *(a2 + 20) = v3 | 1;
  *(a2 + 8) = v2;
  v4 = *(result + 1);
  *(a2 + 20) = v3 | 3;
  *(a2 + 12) = v4;
  return result;
}

_DWORD *ProtobufUtil::convert::cpbSetConfigEnableGnssConstellations(_DWORD *result, _DWORD *a2)
{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

int *ProtobufUtil::convert::cpbSetConfigEnableGnssConstellations(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = result[1];
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetConfigDutyCycling(uint64_t result, _BYTE *a2)
{
  if (*(result + 16))
  {
    *a2 = *(result + 8);
  }

  return result;
}

char *ProtobufUtil::convert::cpbSetConfigDutyCycling(char *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 16) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

std::string *ProtobufUtil::convert::cpbTerminationImminent(std::string *result, std::string *this)
{
  if (result->__r_.__value_.__s.__data_[20])
  {
    return std::string::operator=(this, result->__r_.__value_.__l.__size_);
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbTerminationImminent(std::string *__str, uint64_t a2)
{
  *(a2 + 20) |= 1u;
  v3 = *(a2 + 8);
  if (v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

std::string *ProtobufUtil::convert::cpbExitMessage(std::string *result, std::string *this)
{
  if (result->__r_.__value_.__s.__data_[20])
  {
    return std::string::operator=(this, result->__r_.__value_.__l.__size_);
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbExitMessage(std::string *__str, uint64_t a2)
{
  *(a2 + 20) |= 1u;
  v3 = *(a2 + 8);
  if (v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

uint64_t ProtobufUtil::convert::cpbLtlInfoType(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}